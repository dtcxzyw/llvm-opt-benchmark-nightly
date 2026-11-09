Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOpenMP?download=true
inline.NumInlined: 65082
inline.NumDeleted: 21278
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN12_GLOBAL__N_110DSAStackTy6addDSAEPKN5clang9ValueDeclEPKNS1_4ExprEN4llvm3omp6ClauseEPNS1_11DeclRefExprEjb:bb.a
  %i.d = tail call fastcc noundef nonnull align 8 dereferenceable(25) ptr @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_EixERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.c) ; 4 uses
  store i32 119, ptr %i.d, align 8, !tbaa !277
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.0.copyload.i.i.i = load i64, ptr %i.e, align 8
  %i.f = ptrtoint ptr %2 to i64
  %i.g = and i64 %.0.copyload.i.i.i, 3
  %i.h = or i64 %i.g, %i.f
  store i64 %i.h, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.i, align 8, !tbaa !1049
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %5, ptr %i.j, align 4, !tbaa !1044
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.l = tail call fastcc noundef nonnull align 8 dereferenceable(25) ptr @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_EixERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr %i.c) ; 4 uses
  store i32 50, ptr %i.l, align 8, !tbaa !277
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.0.copyload.i.i.i49 = load i64, ptr %i.m, align 8
  %i.n = ptrtoint ptr %2 to i64
  %i.o = and i64 %.0.copyload.i.i.i49, 3
  %i.p = or i64 %i.o, %i.n
  store i64 %i.p, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr null, ptr %i.q, align 8, !tbaa !1049
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %5, ptr %i.r, align 4, !tbaa !1044
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !154  ; 2 uses
  %.not.i.i.i.i.i = icmp ne i32 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %.val2.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !153
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -6960
  %i.y = load i32, ptr %i.x, align 8, !tbaa !154  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28616 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.y, %i.aa
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %narrow.i.i.i = sub nuw i32 %i.y, %i.aa
  %i.ab = zext i32 %narrow.i.i.i to i64
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 -6968
  %.val5.i.i = load ptr, ptr %i.ac, align 8, !tbaa !153
  %i.ad = getelementptr [1736 x i8], ptr %.val5.i.i, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1736
  %i.af = tail call fastcc noundef nonnull align 8 dereferenceable(25) ptr @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_EixERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr %i.c) ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %5, ptr %i.ag, align 4, !tbaa !1044
  %i.ah = icmp eq i32 %3, 66                      ; 2 uses
  %i.ai = load i32, ptr %i.af, align 8            ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 43
  %or.cond = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %.0.copyload.i.i.i50 = load i64, ptr %i.ak, align 8
  %i.al = or i64 %.0.copyload.i.i.i50, 2
  store i64 %i.al, ptr %i.ak, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.am = icmp eq i32 %i.ai, 66
  %i.an = select i1 %i.ah, i1 true, i1 %i.am
  store i32 %3, ptr %i.af, align 8, !tbaa !277
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ap = ptrtoint ptr %2 to i64
  %i.aq = and i64 %i.ap, -3
  %i.ar = select i1 %i.an, i64 2, i64 0           ; 2 uses
  %i.as = or disjoint i64 %i.ar, %i.aq
  store i64 %i.as, ptr %i.ao, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %4, ptr %i.at, align 8, !tbaa !1049
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i8 %i.b, ptr %i.au, align 8, !tbaa !278
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load i32, ptr %i.s, align 8, !tbaa !154 ; 2 uses
  %.not.i.i.i.i.i51 = icmp ne i32 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i51)
  %.val2.i.i.i.i52 = load ptr, ptr %i.u, align 8, !tbaa !153
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i52, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -6960
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !154 ; 2 uses
  %i.ba = load i32, ptr %i.z, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i54 = icmp ugt i32 %i.az, %i.ba
  tail call void @llvm.assume(i1 %.not.i.i.i54)
  %narrow.i.i.i55 = sub nuw i32 %i.az, %i.ba
  %i.bb = zext i32 %narrow.i.i.i55 to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 -6968
  %.val5.i.i56 = load ptr, ptr %i.bc, align 8, !tbaa !153
  %i.bd = getelementptr [1736 x i8], ptr %.val5.i.i56, i64 %i.bb ; 5 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -1736  ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !386 ; 4 uses
  %i.bh = load i32, ptr %i.be, align 8, !noalias !3797 ; 2 uses
  %i.bi = and i32 %i.bh, 1                        ; 2 uses
  %.not.i.i.i.i.i57 = icmp eq i32 %i.bi, 0        ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bd, i64 -1728  ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !3797 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bd, i64 -1720  ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !3797 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bd, i64 -1712
  %i.bo = load i32, ptr %i.bn, align 8, !noalias !3797
  %i.bp = getelementptr i8, ptr %i.bd, i64 -1408  ; 2 uses
  %.sink2.i.i.i.i.i = select i1 %.not.i.i.i.i.i57, ptr %i.bk, ptr %i.bj ; 2 uses
  %.sink1.i.i.i.i.i = select i1 %.not.i.i.i.i.i57, ptr %i.bm, ptr %i.bp ; 2 uses
  %.sink.i.i.i.i.i = select i1 %.not.i.i.i.i.i57, i32 %i.bo, i32 8 ; 4 uses
  %i.bq = icmp eq i32 %.sink.i.i.i.i.i, 0
  br i1 %i.bq, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = add i32 %.sink.i.i.i.i.i, -1            ; 2 uses
  %i.bs = ptrtoint ptr %i.bg to i64
  %i.bt = mul i64 %i.bs, -4658895280553007687     ; 2 uses
  %i.bu = lshr i64 %i.bt, 31
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = and i32 %i.br, %i.bw                    ; 3 uses
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.by ; 2 uses
  %i.ca = lshr i64 %i.by, 5
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !268
  %i.cd = and i32 %i.bx, 31
  %i.ce = lshr i32 %i.cc, %i.cd
  %i.cf = trunc i32 %i.ce to i1
  br i1 %i.cf, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !269

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  %i.cg = phi ptr [ %i.cm, %bb.i ], [ %i.bz, %bb.h ] ; 2 uses
  %.05.i.i.i = phi i32 [ %i.ck, %bb.i ], [ %i.bx, %bb.h ]
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !270
  %i.ci = icmp eq ptr %i.bg, %i.ch
  br i1 %i.ci, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_EixEOS5_.exit, label %bb.i, !prof !271

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.cj = add nuw i32 %.05.i.i.i, 1
  %i.ck = and i32 %i.cj, %i.br                    ; 3 uses
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.cl ; 2 uses
  %i.cn = lshr i64 %i.cl, 5
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !268
  %i.cq = and i32 %i.ck, 31
  %i.cr = lshr i32 %i.cp, %i.cq
  %i.cs = trunc i32 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !272, !llvm.loop !23

.loopexit.i.i:                                    ; preds = %bb.i, %bb.h, %bb.g
  %.lcssa9.sink.i.ph.i.i = phi ptr [ %i.bz, %bb.h ], [ null, %bb.g ], [ %i.cm, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa9.sink.i.ph.i.i, ptr %i.a, align 8, !tbaa !1723
  %i.ct = shl i32 %i.bh, 1
  %i.cu = and i32 %i.ct, -4
  %i.cv = add i32 %i.cu, 4
  %i.cw = mul i32 %.sink.i.i.i.i.i, 3
  %.not.i.i.i58 = icmp ult i32 %i.cv, %i.cw
  br i1 %.not.i.i.i58, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i.i, label %bb.j, !prof !271

bb.j:                                             ; preds = %.loopexit.i.i
  %i.cx = shl i32 %.sink.i.i.i.i.i, 1
  tail call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.be, i32 noundef %i.cx)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %i.be, ptr %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i.i = load i32, ptr %i.be, align 8
  %.pre8.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !1723
  %.pre9.i.i.i = and i32 %.pre.i.i.i, 1
  %.pre.i.i = load ptr, ptr %i.bl, align 8
  %.pre17.i.i = load ptr, ptr %i.bj, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i.i: ; preds = %bb.j, %.loopexit.i.i
  %i.cy = phi ptr [ %.pre17.i.i, %bb.j ], [ %i.bk, %.loopexit.i.i ]
  %i.cz = phi ptr [ %.pre.i.i, %bb.j ], [ %i.bm, %.loopexit.i.i ]
  %.pre-phi.i.i.i = phi i32 [ %.pre9.i.i.i, %bb.j ], [ %i.bi, %.loopexit.i.i ]
  %i.da = phi ptr [ %.pre8.i.i.i, %bb.j ], [ %.lcssa9.sink.i.ph.i.i, %.loopexit.i.i ] ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre-phi.i.i.i, 0 ; 2 uses
  %i.db = select i1 %.not.i.i.i.i.i.i, ptr %i.cz, ptr %i.bp
  %i.dc = select i1 %.not.i.i.i.i.i.i, ptr %i.cy, ptr %i.bj
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = sdiv exact i64 %i.df, 40                ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = and i32 %i.dh, 31
  %i.dj = shl nuw i32 1, %i.di
  %i.dk = lshr i64 %i.dg, 5
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !268
  %i.dn = or i32 %i.dj, %i.dm
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !268
  %.val.i.i.i.i = load i32, ptr %i.be, align 8
  %i.do = add i32 %.val.i.i.i.i, 2
  store i32 %i.do, ptr %i.be, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.bg, ptr %i.da, align 8, !tbaa !270
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store i64 0, ptr %i.dq, align 8
  store i32 127, ptr %i.dp, align 8, !tbaa !277
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.dr, i8 0, i64 21, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_EixEOS5_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_EixEOS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.da, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i.i ], [ %i.cg, %.lr.ph.i.i.i ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 12
  store i32 %5, ptr %i.dt, align 4, !tbaa !1044
  store i32 %3, ptr %i.ds, align 8, !tbaa !277
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %i.dv = ptrtoint ptr %4 to i64
  %i.dw = or disjoint i64 %i.ar, %i.dv
  store i64 %i.dw, ptr %i.du, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  store ptr null, ptr %i.dx, align 8, !tbaa !1049
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  store i8 %i.b, ptr %i.dy, align 8, !tbaa !278
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_EixEOS5_.exit, %bb.f, %bb.c, %bb.b
  ret void
}

declare noundef ptr @_ZN5clang24OMPThreadPrivateDeclAttr14CreateImplicitERNS_10ASTContextENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #4

declare noundef ptr @_ZN5clang20OMPThreadPrivateDecl6CreateERNS_10ASTContextEPNS_11DeclContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, i32, ptr, i64) local_unnamed_addr #4

declare noundef ptr @_ZN5clang23OMPGroupPrivateDeclAttr14CreateImplicitERNS_10ASTContextENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #4

declare noundef ptr @_ZN5clang19OMPGroupPrivateDecl6CreateERNS_10ASTContextEPNS_11DeclContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, i32, ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPAllocateDirectiveENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEENS3_IPNS_9OMPClauseEEEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(552) %0, i32 %1, ptr nofree readonly captures(address) %2, i64 %3, ptr %4, i64 %5, ptr noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %8 = alloca %"class.llvm::SmallVector.1290", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 12 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %10 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %11 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %12 = alloca %"class.llvm::ArrayRef.1276", align 8 ; 3 uses
  %i.b = icmp eq i64 %5, 0
  br i1 %i.b, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(1136) ptr @_ZNK5clang8SemaBase11getLangOptsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 34359738368
  %.not58 = icmp eq i64 %i.f, 0
  br i1 %.not58, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !181  ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 28624
  %.val = load ptr, ptr %i.i, align 8, !tbaa !153
  %i.j = getelementptr i8, ptr %i.h, i64 28632
  %.val63 = load i32, ptr %i.j, align 8, !tbaa !154
  %i.k = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_110DSAStackTy25hasRequiresDeclWithClauseIN5clang26OMPDynamicAllocatorsClauseEEEbv(ptr %.val, i32 %.val63)
  br i1 %i.k, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  call void @_ZN5clang4Sema10targetDiagENS_14SourceLocationEjPKNS_12FunctionDeclE(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(18640) %i.l, i32 %1, i32 noundef 3793, ptr noundef null) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #36
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %.idx = shl nuw nsw i64 %5, 3                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %i.n = add nsw i64 %.idx, -8                    ; 2 uses
  %i.o = and i64 %i.n, 8
  %lcmp.mod.not.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.p = load ptr, ptr %4, align 8, !tbaa !1638   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1640
  %i.s = icmp ne i32 %i.r, 8
  %.not5793.prol = icmp eq ptr %i.p, null
  %.not57.prol = or i1 %.not5793.prol, %i.s       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1724 ; 2 uses
  %.049102..prol = select i1 %.not57.prol, ptr null, ptr %i.u ; 2 uses
  %..048103.prol = select i1 %.not57.prol, ptr %i.u, ptr null ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.049102..lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.049102..prol, %.lr.ph.prol ]
  %..048103.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %..048103.prol, %.lr.ph.prol ]
  %.048103.unr = phi ptr [ null, %.lr.ph.preheader ], [ %..048103.prol, %.lr.ph.prol ]
  %.049102.unr = phi ptr [ null, %.lr.ph.preheader ], [ %.049102..prol, %.lr.ph.prol ]
  %.052101.unr = phi ptr [ %4, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %i.w = icmp eq i64 %i.n, 0
  br i1 %i.w, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.048103 = phi ptr [ %..048103.1, %.lr.ph ], [ %.048103.unr, %.lr.ph.prol.loopexit ]
  %.049102 = phi ptr [ %.049102..1, %.lr.ph ], [ %.049102.unr, %.lr.ph.prol.loopexit ]
  %.052101 = phi ptr [ %i.ak, %.lr.ph ], [ %.052101.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.x = load ptr, ptr %.052101, align 8, !tbaa !1638 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1640
  %i.aa = icmp ne i32 %i.z, 8
  %.not5793 = icmp eq ptr %i.x, null
  %.not57 = or i1 %.not5793, %i.aa                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1724 ; 2 uses
  %.049102. = select i1 %.not57, ptr %.049102, ptr %i.ac
  %..048103 = select i1 %.not57, ptr %i.ac, ptr %.048103
  %i.ad = getelementptr inbounds nuw i8, ptr %.052101, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1638 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1640
  %i.ah = icmp ne i32 %i.ag, 8
  %.not5793.1 = icmp eq ptr %i.ae, null
  %.not57.1 = or i1 %.not5793.1, %i.ah            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1724 ; 2 uses
  %.049102..1 = select i1 %.not57.1, ptr %.049102., ptr %i.aj ; 2 uses
  %..048103.1 = select i1 %.not57.1, ptr %i.aj, ptr %..048103 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.052101, i64 16 ; 2 uses
  %.not.1 = icmp eq ptr %i.ak, %i.m
  br i1 %.not.1, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b, %bb.c, %bb.d
  %.251 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.b ], [ %.049102..lcssa.unr, %.lr.ph.prol.loopexit ], [ %.049102..1, %.lr.ph ] ; 7 uses
  %.2 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.b ], [ %..048103.lcssa.unr, %.lr.ph.prol.loopexit ], [ %..048103.1, %.lr.ph ] ; 3 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !181
  %i.ao = call fastcc noundef i32 @_ZL16getAllocatorKindRN5clang4SemaEPN12_GLOBAL__N_110DSAStackTyEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.al, ptr noundef %i.an, ptr noundef %.251) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ap, ptr %8, align 8, !tbaa !153
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !154
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 8, ptr %i.ar, align 4, !tbaa !155
  %.idx108 = shl nuw nsw i64 %3, 3
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %.idx108
  %.not59105 = icmp eq i64 %3, 0
  br i1 %.not59105, label %._crit_edge.thread, label %.lr.ph107

.lr.ph107:                                        ; preds = %.loopexit
  %.not62 = icmp eq ptr %.251, null               ; 2 uses
  %i.at = icmp ne i32 %i.ao, 9
  %.not.i76 = icmp eq ptr %.2, null
  br label %bb.e

._crit_edge:                                      ; preds = %_ZL25applyOMPAllocateAttributeRN5clang4SemaEPNS_7VarDeclENS_19OMPAllocateDeclAttr15AllocatorTypeTyEPNS_4ExprES7_NS_11SourceRangeE.exit
  %.pre = load i32, ptr %i.aq, align 8, !tbaa !154
  %i.au = icmp eq i32 %.pre, 0
  br i1 %i.au, label %._crit_edge.thread, label %bb.ad

bb.e:                                             ; preds = %.lr.ph107, %_ZL25applyOMPAllocateAttributeRN5clang4SemaEPNS_7VarDeclENS_19OMPAllocateDeclAttr15AllocatorTypeTyEPNS_4ExprES7_NS_11SourceRangeE.exit
  %.054106 = phi ptr [ %2, %.lr.ph107 ], [ %i.fb, %_ZL25applyOMPAllocateAttributeRN5clang4SemaEPNS_7VarDeclENS_19OMPAllocateDeclAttr15AllocatorTypeTyEPNS_4ExprES7_NS_11SourceRangeE.exit ] ; 2 uses
  %i.av = load ptr, ptr %.054106, align 8, !tbaa !1046 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !386 ; 2 uses
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !1482
  %i.ay = call noundef i32 @_ZNK5clang7VarDecl10getTLSKindEv(ptr noundef nonnull align 8 dereferenceable(100) %i.ax) #36
  %.not61 = icmp eq i32 %i.ay, 0
  br i1 %.not61, label %bb.f, label %_ZL25applyOMPAllocateAttributeRN5clang4SemaEPNS_7VarDeclENS_19OMPAllocateDeclAttr15AllocatorTypeTyEPNS_4ExprES7_NS_11SourceRangeE.exit

bb.f:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !1482 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.bb, 256
  %.not.i65 = icmp eq i32 %i.bc, 0
  br i1 %.not.i65, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread85, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.az) #36 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !153 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !154 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %.idx.i.i = shl nuw nsw i64 %i.bh, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread85, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.bn, %bb.h ], [ %i.be, %bb.g ] ; 3 uses
  %i.bj = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !286
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %i.bl = load i16, ptr %i.bk, align 4
end_hunk_0
begin_hunk_1_@_ZN5clang17DiagnosticStorageD2Ev:bb.a
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  %.ptr1.4 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ao = load ptr, ptr %.ptr1.4, align 8, !tbaa !1570 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !196
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  %.ptr1.5 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.at = load ptr, ptr %.ptr1.5, align 8, !tbaa !1570 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !196
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5
  %.ptr1.6 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ay = load ptr, ptr %.ptr1.6, align 8, !tbaa !1570 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !196
  %i.bc = add i64 %i.bb, 1
  tail call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6
  %.ptr1.7 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bd = load ptr, ptr %.ptr1.7, align 8, !tbaa !1570 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !196
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.7
  %.ptr1.8 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bi = load ptr, ptr %.ptr1.8, align 8, !tbaa !1570 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !196
  %i.bm = add i64 %i.bl, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.8
  %.ptr1.9 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = load ptr, ptr %.ptr1.9, align 8, !tbaa !1570 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !196
  %i.br = add i64 %i.bq, 1
  tail call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.9
  ret void
}

declare noundef ptr @_ZN5clang11DeclContext17getPrimaryContextEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef ptr @_ZN5clang11DeclContext40getEnclosingNonExpansionStatementContextEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef) local_unnamed_addr #4

declare void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

declare void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang4Sema19RequireCompleteTypeENS_14SourceLocationENS_8QualTypeENS0_16CompleteTypeKindEj(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64, i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK5clang7VarDecl17getAnyInitializerERPKS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(25) ptr @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_EixERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.0.val) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !5746 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.c, 0             ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !5746 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !5746 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !5746
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.i, i32 8 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.k, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i.i, -1               ; 2 uses
  %i.m = ptrtoint ptr %.0.val to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.l, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !268
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph.i.i, label %.loopexit.i, !prof !269

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.05.i.i = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !270
  %i.ac = icmp eq ptr %.0.val, %i.ab
  br i1 %i.ac, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSD_bEOT_DpOT0_.exit, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ad = add nuw i32 %.05.i.i, 1
  %i.ae = and i32 %i.ad, %i.l                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !268
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph.i.i, label %.loopexit.i, !prof !272, !llvm.loop !23

.loopexit.i:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa9.sink.i.ph.i = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa9.sink.i.ph.i, ptr %i.a, align 8, !tbaa !1723
  %i.an = shl i32 %i.b, 1
  %i.ao = and i32 %i.an, -4
  %i.ap = add i32 %i.ao, 4
  %i.aq = mul i32 %.sink.i.i.i.i, 3
  %.not.i.i = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i, label %bb.d, !prof !271

bb.d:                                             ; preds = %.loopexit.i
  %i.ar = shl i32 %.sink.i.i.i.i, 1
  tail call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ar)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.0.val, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i = load i32, ptr %0, align 8
  %.pre8.i.i = load ptr, ptr %i.a, align 8, !tbaa !1723
  %.pre9.i.i = and i32 %.pre.i.i, 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre17.i = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i: ; preds = %bb.d, %.loopexit.i
  %i.as = phi ptr [ %.pre17.i, %bb.d ], [ %i.e, %.loopexit.i ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %i.g, %.loopexit.i ]
  %.pre-phi.i.i = phi i32 [ %.pre9.i.i, %bb.d ], [ %i.c, %.loopexit.i ]
  %i.au = phi ptr [ %.pre8.i.i, %bb.d ], [ %.lcssa9.sink.i.ph.i, %.loopexit.i ] ; 6 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre-phi.i.i, 0  ; 2 uses
  %i.av = select i1 %.not.i.i.i.i.i, ptr %i.at, ptr %i.j
  %i.aw = select i1 %.not.i.i.i.i.i, ptr %i.as, ptr %i.d
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 40                ; 2 uses
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 31
  %i.bd = shl nuw i32 1, %i.bc
  %i.be = lshr i64 %i.ba, 5
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !268
  %i.bh = or i32 %i.bd, %i.bg
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !268
  %.val.i.i.i = load i32, ptr %0, align 8
  %i.bi = add i32 %.val.i.i.i, 2
  store i32 %i.bi, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.0.val, ptr %i.au, align 8, !tbaa !270
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 0, ptr %i.bk, align 8
  store i32 127, ptr %i.bj, align 8, !tbaa !277
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.bl, i8 0, i64 21, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSD_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSD_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i
  %.sroa.0.0.i = phi ptr [ %i.au, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i ], [ %i.aa, %.lr.ph.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  ret ptr %i.bm
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #24 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !5751
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !5751
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !5751
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !5751
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 8 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = ptrtoint ptr %.0.val to i64
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = xor i64 %i.n, %i.m
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.k, %i.p                       ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i, i64 %i.r ; 2 uses
  %i.t = lshr i64 %i.r, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !268
  %i.w = and i32 %i.q, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph, label %.thread, !prof !269

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.af, %bb.c ], [ %i.s, %bb.b ] ; 2 uses
  %.05 = phi i32 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !270
  %i.ab = icmp eq ptr %.0.val, %i.aa
  br i1 %i.ab, label %.thread, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph
  %i.ac = add nuw i32 %.05, 1
  %i.ad = and i32 %i.ac, %i.k                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !268
  %i.aj = and i32 %i.ad, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph, label %.thread, !prof !272, !llvm.loop !23

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ], [ %i.af, %bb.c ], [ %i.z, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !1723
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 9                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 328
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 40                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !196
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !196
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !196
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 8, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(336) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !2457
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !196
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 328
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 40               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !196
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !196
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !196
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 328
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(336) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_112_GLOBAL__N_121LoopCounterRefChecker9checkDeclEPKN5clang4ExprEPKNS2_9ValueDeclE:bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 232
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 224
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1743, !nonnull !116, !align !117
  %i.fk = call { i64, ptr } @_ZN5clang4Sema17getPrintingPolicyERKNS_10ASTContextERKNS_12PreprocessorE(ptr noundef nonnull align 8 dereferenceable(23904) %i.fh, ptr noundef nonnull align 8 dereferenceable(3344) %i.fj) #36 ; 2 uses
  %i.fl = extractvalue { i64, ptr } %i.fk, 0
  store i64 %i.fl, ptr %14, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fn = extractvalue { i64, ptr } %i.fk, 1
  store ptr %i.fn, ptr %i.fm, align 8
  %i.fo = load ptr, ptr %i.fe, align 8, !tbaa !195
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 96
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(48) %i.fe, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, i1 noundef zeroext true) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  %i.fr = load ptr, ptr %0, align 8, !tbaa !6699, !nonnull !116, !align !117
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.fs, i32 %i.ft, i32 noundef 4628) #36
  %i.fu = load ptr, ptr %i.fd, align 8, !tbaa !1746, !nonnull !116, !align !117 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !1732 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !1733 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 120
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !1590, !range !258, !noundef !116
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread
  %i.gb = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.gb, ptr %i.fv, i64 %i.fx)
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit45

bb.u:                                             ; preds = %.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.gd = getelementptr inbounds nuw i8, ptr %15, i64 132
  %i.ge = load i8, ptr %i.gd, align 4, !tbaa !1591, !range !258, !noundef !116
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.v, label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit45

bb.v:                                             ; preds = %bb.u
  %i.gg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %15) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.gh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !1597 ; 3 uses
  %.not.i.i36 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i36, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !195
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call noundef ptr %i.gl(ptr noundef nonnull align 8 dereferenceable(168) %i.gi) #36, !inline_history !21
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i37

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i37: ; preds = %bb.w, %bb.v
  %i.gn = phi ptr [ %i.gm, %bb.w ], [ null, %bb.v ]
  store ptr %i.gn, ptr %3, align 8, !tbaa !1599
  %i.go = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.gg, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.fca.0.extract.i.i38 = extractvalue { ptr, i8 } %i.go, 0
  %i.gp = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i38, i64 8
  %i.gq = load i32, ptr %i.gc, align 8, !tbaa !268
  %i.gr = zext i32 %i.gq to i64
  %i.gs = load ptr, ptr %i.gp, align 8, !tbaa !1602
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %i.gr
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.gu, ptr %i.fv, i64 %i.fx)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit45

_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit45: ; preds = %bb.t, %bb.u, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i37
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %15) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %13) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %i.gv = load ptr, ptr %12, align 8, !tbaa !1732 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.ew
  br i1 %i.gw, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit46, label %bb.x

bb.x:                                             ; preds = %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit45
  call void @free(ptr noundef %i.gv) #36
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit46

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit46:        ; preds = %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit45, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %.critedge30

.critedge29:                                      ; preds = %bb.o, %bb.p
  store ptr %2, ptr %i.eo, align 8, !tbaa !3327
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.010.0.copyload.i, ptr %i.gx, align 4, !tbaa !3331
  br label %.critedge30

.critedge30:                                      ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i, %_ZNK12_GLOBAL__N_110DSAStackTy21isLoopControlVariableEPKN5clang9ValueDeclE.exit, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, %bb.m, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit46, %.critedge29, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit ], [ false, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit46 ], [ false, %bb.m ], [ true, %.critedge29 ], [ false, %_ZNK12_GLOBAL__N_110DSAStackTy21isLoopControlVariableEPKN5clang9ValueDeclE.exit ], [ false, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS5_JS9_EEES6_IPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !6707 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !6707 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !6707 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !6707
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 8 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !270    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !268
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !269

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !270
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E15LookupBucketForIS5_EEbRKT_RPSE_.exit, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !268
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !272, !llvm.loop !81

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2465
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E22findBucketForInsertionIS5_EEPSE_RKT_SI_.exit, label %bb.d, !prof !271

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E15LookupBucketForIS5_EEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !2465
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre17 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E22findBucketForInsertionIS5_EEPSE_RKT_SI_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E22findBucketForInsertionIS5_EEPSE_RKT_SI_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre17, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 24                ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !268
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !268
  %i.bk = load i32, ptr %0, align 8
  %i.bl = add i32 %i.bk, 2
  store i32 %i.bl, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !270
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !270
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E15LookupBucketForIS5_EEbRKT_RPSE_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E15LookupBucketForIS5_EEbRKT_RPSE_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E22findBucketForInsertionIS5_EEPSE_RKT_SI_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E22findBucketForInsertionIS5_EEPSE_RKT_SI_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E22findBucketForInsertionIS5_EEPSE_RKT_SI_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E15LookupBucketForIS5_EEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !6712
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !6712
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !6712
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !6712
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 8 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !270    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !268
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !269

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !270
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !268
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !272, !llvm.loop !81

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2465
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.2390", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 9                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 200
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEC2EjNS_12DenseMapBaseISE_S4_S8_SA_SD_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 24                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !196
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !196
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !196
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEC2EjNS_12DenseMapBaseISE_S4_S8_SA_SD_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEC2EjNS_12DenseMapBaseISE_S4_S8_SA_SD_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 8, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEC2EjNS_12DenseMapBaseISE_S4_S8_SA_SD_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !2466
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !196
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEC2EjNS_12DenseMapBaseISE_S4_S8_SA_SD_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !196
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !196
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !196
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEED2Ev.exit
end_hunk_2
begin_hunk_3_@_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26RebuildCXXOperatorCallExprENS_22OverloadedOperatorKindENS_14SourceLocationES5_bRKNS_17UnresolvedSetImplEPNS_4ExprESA_:bb.a
  ]

_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155: ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit120, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v
  %i.df = tail call noundef i32 @_ZN5clang14BinaryOperator19getOverloadedOpcodeENS_22OverloadedOperatorKindE(i32 noundef %1) #36
  %i.dg = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.dh = tail call i64 @_ZN5clang4Sema18CreateBuiltinBinOpENS_14SourceLocationENS_18BinaryOperatorKindEPNS_4ExprES4_b(ptr noundef nonnull align 8 dereferenceable(18640) %i.dg, i32 %2, i32 noundef %i.df, ptr noundef nonnull %.2, ptr noundef nonnull %.182, i1 noundef zeroext false) #36
  br label %.thread139

.critedge:                                        ; preds = %_ZNK5clang4Type18isOverloadableTypeEv.exit120, %_ZNK5clang4Type18isOverloadableTypeEv.exit120, %_ZNK5clang4Type18isOverloadableTypeEv.exit113, %_ZNK5clang4Type18isOverloadableTypeEv.exit113, %_ZNK5clang4Type18isOverloadableTypeEv.exit97, %_ZNK5clang4Type18isOverloadableTypeEv.exit97, %_ZNK5clang4Type18isOverloadableTypeEv.exit, %_ZNK5clang4Type18isOverloadableTypeEv.exit, %bb.v, %bb.u, %bb.k, %bb.j, %bb.s, %bb.r, %_ZNK5clang4Type18isOverloadableTypeEv.exit106.thread, %bb.q
  %i.di = icmp eq ptr %.182, null
  %or.cond10 = or i1 %i.c, %i.di
  br i1 %or.cond10, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.critedge
  %i.dj = tail call noundef i32 @_ZN5clang13UnaryOperator19getOverloadedOpcodeENS_22OverloadedOperatorKindEb(i32 noundef %1, i1 noundef zeroext %i.c) #36
  %i.dk = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.dl = tail call i64 @_ZN5clang4Sema23CreateOverloadedUnaryOpENS_14SourceLocationENS_17UnaryOperatorKindERKNS_17UnresolvedSetImplEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.dk, i32 %2, i32 noundef %i.dj, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %.2, i1 noundef zeroext %4) #36
  br label %.thread139

bb.x:                                             ; preds = %.critedge
  %i.dm = tail call noundef i32 @_ZN5clang14BinaryOperator19getOverloadedOpcodeENS_22OverloadedOperatorKindE(i32 noundef %1) #36
  %i.dn = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.do = tail call i64 @_ZN5clang4Sema21CreateOverloadedBinOpENS_14SourceLocationENS_18BinaryOperatorKindERKNS_17UnresolvedSetImplEPNS_4ExprES7_bbPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %i.dn, i32 %2, i32 noundef %i.dm, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %.2, ptr noundef nonnull %.182, i1 noundef zeroext %4, i1 noundef zeroext true, ptr noundef null) #36
  br label %.thread139

.thread139:                                       ; preds = %bb.x, %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155, %bb.f, %bb.l, %bb.c, %.thread, %bb.w, %.critedge4, %bb.m, %_ZNK5clang4Type18isOverloadableTypeEv.exit97.thread146
  %.sroa.079.6 = phi i64 [ %i.dl, %bb.w ], [ %i.dh, %_ZNK5clang4Type18isOverloadableTypeEv.exit120.thread155 ], [ %i.az, %_ZNK5clang4Type18isOverloadableTypeEv.exit97.thread146 ], [ 1, %bb.c ], [ %i.bi, %bb.m ], [ %i.ca, %.critedge4 ], [ 1, %bb.l ], [ %i.do, %bb.x ], [ %i.m, %.thread ], [ 1, %bb.f ]
  ret i64 %.sroa.079.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE18growAndEmplaceBackIJPNS1_9ValueDeclEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !270    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !271

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.a)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !153
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  store ptr %i.a, ptr %i.h, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !154
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !153
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE18growAndEmplaceBackIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1046   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !271

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.a)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !153
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  store ptr %i.a, ptr %i.h, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !154
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !153
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_EixERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.0.val) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !7704 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.c, 0             ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !7704 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !7704 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !7704
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.k, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i.i, -1               ; 2 uses
  %i.m = ptrtoint ptr %.0.val to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.l, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !268
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph.i.i, label %.loopexit.i, !prof !269

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.05.i.i = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !270
  %i.ac = icmp eq ptr %.0.val, %i.ab
  br i1 %i.ac, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSD_bEOT_DpOT0_.exit, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ad = add nuw i32 %.05.i.i, 1
  %i.ae = and i32 %i.ad, %i.l                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !268
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph.i.i, label %.loopexit.i, !prof !272, !llvm.loop !88

.loopexit.i:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa9.sink.i.ph.i = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa9.sink.i.ph.i, ptr %i.a, align 8, !tbaa !2459
  %i.an = shl i32 %i.b, 1
  %i.ao = and i32 %i.an, -4
  %i.ap = add i32 %i.ao, 4
  %i.aq = mul i32 %.sink.i.i.i.i, 3
  %.not.i.i = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i, label %bb.d, !prof !271

bb.d:                                             ; preds = %.loopexit.i
  %i.ar = shl i32 %.sink.i.i.i.i, 1
  tail call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ar)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.0.val, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i = load i32, ptr %0, align 8
  %.pre8.i.i = load ptr, ptr %i.a, align 8, !tbaa !2459
  %.pre9.i.i = and i32 %.pre.i.i, 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre17.i = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i: ; preds = %bb.d, %.loopexit.i
  %i.as = phi ptr [ %.pre17.i, %bb.d ], [ %i.e, %.loopexit.i ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %i.g, %.loopexit.i ]
  %.pre-phi.i.i = phi i32 [ %.pre9.i.i, %bb.d ], [ %i.c, %.loopexit.i ]
  %i.au = phi ptr [ %.pre8.i.i, %bb.d ], [ %.lcssa9.sink.i.ph.i, %.loopexit.i ] ; 4 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre-phi.i.i, 0  ; 2 uses
  %i.av = select i1 %.not.i.i.i.i.i, ptr %i.at, ptr %i.j
  %i.aw = select i1 %.not.i.i.i.i.i, ptr %i.as, ptr %i.d
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 24                ; 2 uses
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 31
  %i.bd = shl nuw i32 1, %i.bc
  %i.be = lshr i64 %i.ba, 5
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !268
  %i.bh = or i32 %i.bd, %i.bg
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !268
  %.val.i.i.i = load i32, ptr %0, align 8
  %i.bi = add i32 %.val.i.i.i, 2
  store i32 %i.bi, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.0.val, ptr %i.au, align 8, !tbaa !270
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSD_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSD_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i
  %.sroa.0.0.i = phi ptr [ %i.au, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i ], [ %i.aa, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  ret ptr %i.bk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #24 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !7709
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !7709
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !7709
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !7709
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = ptrtoint ptr %.0.val to i64
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = xor i64 %i.n, %i.m
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.k, %i.p                       ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.r ; 2 uses
  %i.t = lshr i64 %i.r, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !268
  %i.w = and i32 %i.q, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph, label %.thread, !prof !269

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.af, %bb.c ], [ %i.s, %bb.b ] ; 2 uses
  %.05 = phi i32 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !270
  %i.ab = icmp eq ptr %.0.val, %i.aa
  br i1 %i.ab, label %.thread, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph
  %i.ac = add nuw i32 %.05, 1
  %i.ad = and i32 %i.ac, %i.k                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !268
  %i.aj = and i32 %i.ad, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph, label %.thread, !prof !272, !llvm.loop !88

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ], [ %i.af, %bb.c ], [ %i.z, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !2459
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.2382", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 24                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !196
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !196
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !196
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !2460
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !196
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !196
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !196
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !196
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(112) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !196 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_:bb.a
  %.lcssa12.i = phi i64 [ %i.ao, %bb.b ], [ %i.ax, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.as, %bb.b ], [ %i.bb, %.lr.ph.i ]
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.lcssa12.i ; 2 uses
  store ptr %i.ah, ptr %i.be, align 8, !tbaa !270
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false)
  %i.bh = shl nuw i32 1, %.lcssa.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.lcssa11.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !268
  %i.bk = or i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !268
  %i.bl = add i32 %.0.i25, -1
  %i.bm = and i32 %i.bl, %.0.i25                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bm, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7711

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph29, !llvm.loop !7712

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.val10.pre = load i32, ptr %1, align 8
  %.pre = load i32, ptr %0, align 8
  %.pre34 = and i32 %.pre, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre34, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.m, %bb.a ]
  %.val10 = phi i32 [ %.val10.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bn = and i32 %.val10, -2
  %i.bo = or disjoint i32 %.pre-phi, %i.bn
  store i32 %i.bo, ptr %0, align 8
  %i.bp = load i32, ptr %1, align 8               ; 3 uses
  %i.bq = and i32 %i.bp, 1
  %.not.i.i15 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i15, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.br = load i32, ptr %i.j, align 8, !tbaa !196 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !196
  %i.bu = zext i32 %i.br to i64                   ; 2 uses
  %i.bv = mul nuw nsw i64 %i.bu, 24
  %i.bw = add nuw nsw i64 %i.bu, 31
  %i.bx = lshr i64 %i.bw, 3
  %i.by = and i64 %i.bx, 1073741820
  %i.bz = add nuw nsw i64 %i.by, %i.bv
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bt, i64 noundef %i.bz, i64 noundef 8) #36
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.ca = phi i32 [ %i.bp, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit ], [ %i.bp, %bb.c ], [ %.pre.i, %bb.d ]
  %i.cb = and i32 %i.ca, -2
  store i32 %i.cb, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN4llvm23SmallVectorTemplateBaseIbLb1EE18growAndEmplaceBackIJRbEEES3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !197, !range !258, !noundef !116 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1733 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1734
  %.not.i = icmp ult i64 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !271

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i8 %i.a to i1
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIbLb1EE15growAndPushBackEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %i.f)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !1733
  br label %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE9push_backEb.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !1732
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  store i8 %i.a, ptr %i.h, align 1
  %i.i = load i64, ptr %i.b, align 8, !tbaa !1733
  %i.j = add i64 %i.i, 1                          ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !1733
  br label %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE9push_backEb.exit

_ZN4llvm23SmallVectorTemplateBaseIbLb1EE9push_backEb.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i64 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !1732
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -1
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JRS8_EEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !7717 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !7717 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !7717 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !7717
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 8 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !270    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !268
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !269

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !270
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !268
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !272, !llvm.loop !89

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2462
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit, label %bb.d, !prof !271

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !2462
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre17 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre17, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !268
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !268
  %i.bk = load i32, ptr %0, align 8
  %i.bl = add i32 %i.bk, 2
  store i32 %i.bl, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !270
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !270
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bo = load ptr, ptr %2, align 8, !tbaa !1046
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !1046
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !7722
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !7722
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !7722
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !7722
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 8 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !270    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !268
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !269

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !270
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !268
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !272, !llvm.loop !89

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2462
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.2385", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 9                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 136
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !196
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !196
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !196
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 8, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !2463
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !196
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !196
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !196
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !196
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
end_hunk_4
begin_hunk_5_@_ZN5clang15StmtVisitorBaseISt11add_pointer20GlobalDeclRefCheckervJEE5VisitEPNS_4StmtE:bb.a
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fe:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.ff:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fg:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fh:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fi:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fj:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fk:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fl:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fm:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fn:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fo:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fp:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fq:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fr:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fs:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.ft:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fu:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fv:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fw:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fx:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fy:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.fz:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.ga:                                            ; preds = %.critedge
  tail call void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.ay, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !7818 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !7818 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !7818 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !7818
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !1665   ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !268
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !269

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1665
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !268
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !272, !llvm.loop !94

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3363
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !271

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !3363
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !268
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !268
  %i.bk = load i32, ptr %0, align 8
  %i.bl = add i32 %i.bk, 2
  store i32 %i.bl, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !1665
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !1665
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !7823
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !7823
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !7823
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !7823
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !1665   ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !268
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !269

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1665
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !268
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !272, !llvm.loop !94

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3363
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.4398", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEC2EjNS_12DenseMapBaseISA_S3_S5_S7_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !196
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !196
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !196
  br label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEC2EjNS_12DenseMapBaseISA_S3_S5_S7_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEC2EjNS_12DenseMapBaseISA_S3_S5_S7_S9_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit.thread, label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit

_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEC2EjNS_12DenseMapBaseISA_S3_S5_S7_S9_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !7824
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !196
  br label %bb.b

_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEC2EjNS_12DenseMapBaseISA_S3_S5_S7_S9_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !196
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !196
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !196
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
end_hunk_5
begin_hunk_6_@_ZNK12_GLOBAL__N_110DSAStackTy23isClassPreviouslyMappedEN5clang8QualTypeE:bb.a
  %narrow.i.i.i.i = sub nuw i32 %i.g, %i.i
  %i.j = zext i32 %narrow.i.i.i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 -6968
  %.val5.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !153
  %i.l = getelementptr [1736 x i8], ptr %.val5.i.i.i, i64 %i.j ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -552
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2446, !noalias !7889
  %i.o = getelementptr i8, ptr %i.l, i64 -544
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3357, !noalias !7889 ; 2 uses
  %i.q = getelementptr i8, ptr %i.l, i64 -532
  %i.r = load i32, ptr %i.q, align 4, !tbaa !2445, !noalias !7889 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZNK4llvm6detail12DenseSetImplIN5clang8QualTypeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE8containsERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = add i32 %i.r, -1                         ; 2 uses
  %i.u = lshr i64 %1, 9
  %i.v = xor i64 %i.u, %1
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.t, %i.w                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = lshr i64 %i.y, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !268
  %i.ac = and i32 %i.x, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i.i.i, label %_ZNK4llvm6detail12DenseSetImplIN5clang8QualTypeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE8containsERKS3_.exit, !prof !269

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.af = phi i64 [ %i.ak, %bb.c ], [ %i.y, %bb.b ]
  %.01421.i.i.i = phi i32 [ %i.aj, %bb.c ], [ %i.x, %bb.b ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.af
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !196
  %i.ah = icmp eq i64 %1, %.sroa.0.0.copyload.i.i.i ; 3 uses
  br i1 %i.ah, label %_ZNK4llvm6detail12DenseSetImplIN5clang8QualTypeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE8containsERKS3_.exit, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = add nuw i32 %.01421.i.i.i, 1
  %i.aj = and i32 %i.ai, %i.t                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !268
  %i.ao = and i32 %i.aj, 31
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i.i.i, label %_ZNK4llvm6detail12DenseSetImplIN5clang8QualTypeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE8containsERKS3_.exit, !prof !272

_ZNK4llvm6detail12DenseSetImplIN5clang8QualTypeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE8containsERKS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.c, %bb.a, %bb.b
  %.3.i.i.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.ah, %bb.c ], [ %i.ah, %.lr.ph.i.i.i ]
  ret i1 %.3.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZNK12_GLOBAL__N_110DSAStackTy21getDefaultmapModifierEN5clang26OpenMPDefaultmapClauseKindE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28840) %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load i32, ptr %i.a, align 8, !tbaa !154  ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.val2.i = load ptr, ptr %i.c, align 8, !tbaa !153
  %i.d = zext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !190
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !152
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.thread

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -6960
  %i.k = load i32, ptr %i.j, align 8, !tbaa !154  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28616
  %i.m = load i32, ptr %i.l, align 8, !tbaa !160  ; 2 uses
  %.not = icmp ugt i32 %i.k, %i.m
  br i1 %.not, label %bb.c, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.thread

bb.c:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit
  %narrow.i.i.i.i = sub nuw i32 %i.k, %i.m
  %i.n = zext i32 %narrow.i.i.i.i to i64
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 -6968
  %.val5.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !153
  %i.p = getelementptr [1736 x i8], ptr %.val5.i.i.i, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 -752
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 8, !tbaa !267
  br label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.thread

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit, %bb.c
  %i.u = phi i32 [ %i.t, %bb.c ], [ 4, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit ], [ 4, %bb.b ], [ 4, %bb.a ]
  ret i32 %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !7894 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !7894 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !7894 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !7894
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !270    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !268
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !269

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !270
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !268
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !272, !llvm.loop !96

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3387
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !271

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !3387
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !268
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !268
  %i.bk = load i32, ptr %0, align 8
  %i.bl = add i32 %i.bk, 2
  store i32 %i.bl, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !270
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !270
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !7899
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !7899
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !7899
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !7899
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !270    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !268
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !269

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !270
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !268
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !272, !llvm.loop !96

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3387
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.1404", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEC2EjNS_12DenseMapBaseISB_S4_S6_S8_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !196
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !196
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !196
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEC2EjNS_12DenseMapBaseISB_S4_S6_S8_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEC2EjNS_12DenseMapBaseISB_S4_S6_S8_SA_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEC2EjNS_12DenseMapBaseISB_S4_S6_S8_SA_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !7900
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !196
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEC2EjNS_12DenseMapBaseISB_S4_S6_S8_SA_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !196
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !196
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !196
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
end_hunk_6
begin_hunk_7_@_ZNK12_GLOBAL__N_110DSAStackTy18mustBeFirstprivateEN5clang26OpenMPDefaultmapClauseKindE:bb.a
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 8, !tbaa !267
  br label %_ZNK12_GLOBAL__N_110DSAStackTy21getDefaultmapModifierEN5clang26OpenMPDefaultmapClauseKindE.exit

_ZNK12_GLOBAL__N_110DSAStackTy21getDefaultmapModifierEN5clang26OpenMPDefaultmapClauseKindE.exit: ; preds = %bb.a, %bb.b, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i, %bb.c
  %i.u = phi i32 [ %i.t, %bb.c ], [ 4, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i ], [ 4, %bb.b ], [ 4, %bb.a ] ; 3 uses
  %i.v = icmp eq i32 %1, 1
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy21getDefaultmapModifierEN5clang26OpenMPDefaultmapClauseKindE.exit
  %i.w = icmp ult i32 %i.u, 12
  br i1 %i.w, label %switch.lookup, label %_ZN12_GLOBAL__N_110DSAStackTy22mustBeFirstprivateBaseEN5clang30OpenMPDefaultmapClauseModifierENS1_26OpenMPDefaultmapClauseKindE.exit

bb.e:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy21getDefaultmapModifierEN5clang26OpenMPDefaultmapClauseKindE.exit
  %i.x = icmp eq i32 %i.u, 9
  br label %_ZN12_GLOBAL__N_110DSAStackTy22mustBeFirstprivateBaseEN5clang30OpenMPDefaultmapClauseModifierENS1_26OpenMPDefaultmapClauseKindE.exit

switch.lookup:                                    ; preds = %bb.d
  %switch.cast = trunc nuw i32 %i.u to i12
  %switch.downshift = lshr i12 -1520, %switch.cast
  %switch.masked = trunc i12 %switch.downshift to i1
  br label %_ZN12_GLOBAL__N_110DSAStackTy22mustBeFirstprivateBaseEN5clang30OpenMPDefaultmapClauseModifierENS1_26OpenMPDefaultmapClauseKindE.exit

_ZN12_GLOBAL__N_110DSAStackTy22mustBeFirstprivateBaseEN5clang30OpenMPDefaultmapClauseModifierENS1_26OpenMPDefaultmapClauseKindE.exit: ; preds = %bb.d, %switch.lookup, %bb.e
  %.0.i = phi i1 [ %i.x, %bb.e ], [ %switch.masked, %switch.lookup ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_110DSAStackTy34addToParentTargetRegionLinkGlobalsEPN5clang11DeclRefExprE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28840) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load i32, ptr %i.a, align 8, !tbaa !154, !noalias !7923 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_110DSAStackTy3endEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !153, !noalias !7923
  %i.d = zext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [6968 x i8], ptr %.val.i, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -6968
  %.val2.i = load ptr, ptr %i.f, align 8, !tbaa !153, !noalias !7923 ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 -6960
  %.val3.i = load i32, ptr %i.g, align 8, !tbaa !154, !noalias !7923
  %i.h = zext i32 %.val3.i to i64
  %i.i = getelementptr inbounds nuw [1736 x i8], ptr %.val2.i, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28616
  %i.k = load i32, ptr %i.j, align 8, !tbaa !160, !noalias !7923
  %i.l = zext i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds [1736 x i8], ptr %i.i, i64 %i.m
  br label %_ZN12_GLOBAL__N_110DSAStackTy3endEv.exit

_ZN12_GLOBAL__N_110DSAStackTy3endEv.exit:         ; preds = %bb.a, %bb.b
  %storemerge.i16 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %storemerge.i12 = phi ptr [ %.val2.i, %bb.b ], [ null, %bb.a ]
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZN12_GLOBAL__N_110DSAStackTy3endEv.exit
  %.sroa.013.0 = phi ptr [ %storemerge.i16, %_ZN12_GLOBAL__N_110DSAStackTy3endEv.exit ], [ %i.o, %bb.c ] ; 6 uses
  %.not = icmp eq ptr %.sroa.013.0, %storemerge.i12
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11DeclRefExprELb1EE9push_backES3_.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds i8, ptr %.sroa.013.0, i64 -1736
  %i.p = getelementptr inbounds i8, ptr %.sroa.013.0, i64 -712
  %i.q = load i32, ptr %i.p, align 8, !tbaa !249
  %i.r = tail call noundef zeroext i1 @_ZN5clang32isOpenMPTargetExecutionDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.q) #36
  br i1 %i.r, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %.sroa.013.0, i64 -456 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.013.0, i64 -448 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !154  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.sroa.013.0, i64 -444
  %i.w = load i32, ptr %i.v, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.u, %i.w
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !271

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang11DeclRefExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef %1)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11DeclRefExprELb1EE9push_backES3_.exit

bb.f:                                             ; preds = %bb.d
  %i.x = zext i32 %i.u to i64
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !153
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  store ptr %1, ptr %i.z, align 1
  %i.aa = load i32, ptr %i.t, align 8, !tbaa !154
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.t, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11DeclRefExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang11DeclRefExprELb1EE9push_backES3_.exit: ; preds = %.critedge, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !7928 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !7928 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !7928 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !7928
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !270    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !268
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !269

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !270
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !268
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !272, !llvm.loop !97

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2462
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit, label %bb.d, !prof !271

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !2462
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !268
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !268
  %i.bk = load i32, ptr %0, align 8
  %i.bl = add i32 %i.bk, 2
  store i32 %i.bl, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !270
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !270
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !1046
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !7933
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !7933
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !7933
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !7933
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !270    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !268
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !269

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !270
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !268
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !272, !llvm.loop !97

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2462
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.1391", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !196
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !196
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !196
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !2463
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !196
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !196
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !196
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !196
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8copyFromERKSE_:bb.a
  %i.ak = and i32 %i.aj, -2
  %i.al = or disjoint i32 %i.ai, %i.ak
  store i32 %i.al, ptr %0, align 8
  %.not.i.i.i = icmp eq i32 %i.ai, 0              ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = select i1 %.not.i.i.i, ptr %i.ah, ptr %i.am
  %i.ao = load i32, ptr %1, align 8
  %i.ap = and i32 %i.ao, 1
  %.not.i11 = icmp eq i32 %i.ap, 0                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = select i1 %.not.i11, ptr %i.ar, ptr %i.aq
  %i.at = select i1 %.not.i.i.i, i32 %i.ag, i32 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = select i1 %.not.i.i.i, ptr %i.af, ptr %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = select i1 %.not.i11, ptr %i.ay, ptr %i.aw
  %i.ba = zext i32 %i.at to i64                   ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.av, ptr align 4 %i.az, i64 %i.bd, i1 false)
  %i.be = shl nuw nsw i64 %i.ba, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 8 %i.as, i64 %i.be, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1046   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !271

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.a)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !153
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  store ptr %i.a, ptr %i.h, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !154
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !153
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1638   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !271

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.a)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !153
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  store ptr %i.a, ptr %i.h, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !154
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !153
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !7966 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !7966 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !7966 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !7966
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !270    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !268
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !269

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !270
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !268
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !272, !llvm.loop !97

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2462
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit, label %bb.d, !prof !271

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !2462
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !268
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !268
  %i.bk = load i32, ptr %0, align 8
  %i.bl = add i32 %i.bk, 2
  store i32 %i.bl, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !270
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !270
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !1046
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_3omp9DirectiveELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !154
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !153
  %i.g = load i32, ptr %i.a, align 8, !tbaa !154
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !154
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIS5_JRS8_EEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2106, !noalias !7971 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2107, !noalias !7971 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !2108, !noalias !7971 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1665   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !268
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !269

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1665
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !268
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !272, !llvm.loop !99

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3389
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3390
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit, label %bb.d, !prof !271

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3389
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2107
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !2106
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !268
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !268
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3390
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1665
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1665
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load ptr, ptr %2, align 8, !tbaa !1046
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !1046
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2106, !noalias !7976 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2107, !noalias !7976 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2108, !noalias !7976 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1665   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !268
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !269

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1665
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !268
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !272, !llvm.loop !99

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3389
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
end_hunk_8
