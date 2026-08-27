Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-color?download=true
inline.NumInlined: 12641
inline.NumDeleted: 5098
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNK5graph20LigatureSubstFormat111clone_rangeERNS_24gsubgpos_graph_context_tEj11hb_vector_tIjLb0EEjj:bb.a
  %.sroa.422.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i.i, 32
  %.sroa.422.0.extract.trunc = trunc nuw nsw i64 %.sroa.422.0.extract.shift to i32
  %i.ew = add i32 %.0135326, %.sroa.021.0.extract.trunc
  %.sroa.speculated248 = call i32 @llvm.umax.i32(i32 %i.ew, i32 %.0135326) ; 2 uses
  %i.ex = add i32 %.0135326, %.sroa.422.0.extract.trunc
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.ex, i32 %i.cp) ; 2 uses
  %.not149 = icmp ult i32 %.sroa.speculated248, %4
  %.not150 = icmp ugt i32 %.sroa.speculated, %5
  %or.cond308 = select i1 %.not149, i1 true, i1 %.not150
  br i1 %or.cond308, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %_ZNK5graph20LigatureSubstFormat123current_liga_set_boundsERNS_24gsubgpos_graph_context_tEjRKN22hb_serialize_context_t8object_tE.exit
  %i.ey = trunc nuw i64 %indvars.iv to i32
  %spec.select = call i32 @llvm.umin.i32(i32 %i.ey, i32 %.0119328) ; 2 uses
  %i.ez = load ptr, ptr %i.l, align 8, !tbaa !438, !nonnull !211, !align !443
  %i.fa = load i16, ptr %i.d, align 1, !tbaa !231
  %i.fb = call noundef i16 @llvm.bswap.i16(i16 %i.fa)
  %i.fc = zext i16 %i.fb to i64
  %.not.i169 = icmp samesign ult i64 %indvars.iv, %i.fc
  br i1 %.not.i169, label %bb.x, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171, !prof !137

bb.x:                                             ; preds = %bb.w
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171: ; preds = %bb.w, %bb.x
  %.0.i170 = phi ptr [ %i.fd, %bb.x ], [ @_hb_NullPool, %bb.w ]
  %i.fe = load i16, ptr %i.v, align 1, !tbaa !231
  %i.ff = call noundef i16 @llvm.bswap.i16(i16 %i.fe)
  %i.fg = zext i16 %i.ff to i32
  %.not.i172 = icmp ult i32 %.0128327, %i.fg
  br i1 %.not.i172, label %bb.z, label %bb.y, !prof !137

bb.y:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171
  store i16 %i.cj, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

bb.z:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %i.fh = zext nneg i32 %.0128327 to i64
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.fh
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit: ; preds = %bb.y, %bb.z
  %.0.i173 = phi ptr [ @_hb_CrapPool, %bb.y ], [ %i.fi, %bb.z ]
  %i.fj = call noundef i32 @_ZN5graph7graph_t10move_childIN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEEEjjPKT_jSE_(ptr noundef nonnull align 8 dereferenceable(88) %i.ez, i32 noundef %2, ptr noundef nonnull %.0.i170, i32 noundef %i.j, ptr noundef nonnull %.0.i173) ; 2 uses
  %i.fk = load i16, ptr %i.dc, align 1, !tbaa !231
  %i.fl = call noundef i16 @llvm.bswap.i16(i16 %i.fk)
  %i.fm = zext i16 %i.fl to i32                   ; 2 uses
  %i.fn = load i32, ptr %i.dq, align 4, !tbaa !293 ; 5 uses
  %.not.i174 = icmp ult i32 %i.fn, %i.fm
  br i1 %.not.i174, label %bb.aa, label %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit

bb.aa:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit
  %i.fo = sub nuw nsw i32 %i.fm, %i.fn
  %i.fp = load ptr, ptr %i.do, align 8, !tbaa !261 ; 4 uses
  %.not.i.i.i.i.i175 = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i.i.i.i175, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i, label %bb.ab, !prof !21

bb.ab:                                            ; preds = %bb.aa
  %.sroa.2.8.insert.ext.i.i.i.i = zext nneg i32 %i.fn to i64 ; 2 uses
  call fastcc void @_ZL13hb_qsort_loopIN22hb_serialize_context_t8object_t6link_tEZN10hb_array_tIS2_E6_qsortIS2_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS2_E11hb_priorityILj1EEEUlRKS2_SH_E_EvPS7_mT0_(ptr noundef %i.fp, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i.i.i)
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.idx.i.i.i.i.i.i
  %.not1.i.i.i.i.i = icmp eq i32 %i.fn, 1
  br i1 %.not1.i.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i, label %.preheader.preheader.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i:                 ; preds = %bb.ab
  %.01518.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.critedge.i.loopexit.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i
  %.01519.i.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i.i, %.critedge.i.loopexit.i.i.i.i.i ], [ %.01518.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i ] ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ac, %.preheader.i.i.i.i.i.i
  %.016.i.i.i.i.i.i = phi ptr [ %i.gd, %bb.ac ], [ %.01519.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 7 uses
  %i.fr = getelementptr inbounds i8, ptr %.016.i.i.i.i.i.i, i64 -8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !312 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !312 ; 2 uses
  %i.fv = sub i32 %i.fs, %i.fu
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.fs, %i.fu
  %i.fw = getelementptr inbounds i8, ptr %.016.i.i.i.i.i.i, i64 -4
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 8
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = sub i32 %i.fx, %i.fz
  %.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 %i.ga, i32 %i.fv
  %i.gb = icmp sgt i32 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.gb, label %bb.ac, label %.critedge.i.loopexit.i.i.i.i.i

.critedge.i.loopexit.i.i.i.i.i:                   ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01519.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.gc = icmp ult ptr %.015.i.i.i.i.i.i, %i.fq
  br i1 %i.gc, label %.preheader.i.i.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i, !llvm.loop !741

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gd = getelementptr inbounds i8, ptr %.016.i.i.i.i.i.i, i64 -12 ; 4 uses
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.gd, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gd, ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !319
  store <3 x i32> %.sroa.0.0.copyload, ptr %.016.i.i.i.i.i.i, align 4
  %i.ge = icmp ugt ptr %i.gd, %i.fp
  br i1 %i.ge, label %.lr.ph.i.i.i.i.i.i, label %.critedge.i.loopexit.i.i.i.i.i, !llvm.loop !742

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i: ; preds = %.critedge.i.loopexit.i.i.i.i.i, %bb.ab, %bb.aa
  %i.gf = load ptr, ptr %i.do, align 8, !tbaa !261 ; 2 uses
  %i.gg = load i32, ptr %i.dq, align 4, !tbaa !260 ; 3 uses
  %.not1920.i = icmp eq i32 %i.gg, 0
  br i1 %.not1920.i, label %._crit_edge.i, label %.lr.ph.i177.preheader

.lr.ph.i177.preheader:                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i
  %i.gh = zext i32 %i.gg to i64
  %.idx.i176 = mul nuw nsw i64 %i.gh, 12
  %i.gi = add nsw i64 %.idx.i176, -12             ; 2 uses
  %i.gj = udiv i64 %i.gi, 12
  %i.gk = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %xtraiter443 = and i64 %i.gk, 7                 ; 3 uses
  %i.gl = icmp ult i64 %i.gi, 84
  br i1 %i.gl, label %.lr.ph.i177.epil.preheader, label %.lr.ph.i177.preheader.new

.lr.ph.i177.preheader.new:                        ; preds = %.lr.ph.i177.preheader
  %unroll_iter446 = and i64 %i.gk, 4611686018427387896
  br label %.lr.ph.i177

._crit_edge.loopexit.i178.unr-lcssa:              ; preds = %.lr.ph.i177
  %lcmp.mod444.not = icmp eq i64 %xtraiter443, 0
  br i1 %lcmp.mod444.not, label %._crit_edge.loopexit.i178, label %.lr.ph.i177.epil.preheader

.lr.ph.i177.epil.preheader:                       ; preds = %._crit_edge.loopexit.i178.unr-lcssa, %.lr.ph.i177.preheader
  %.022.i.epil.init = phi ptr [ %i.gf, %.lr.ph.i177.preheader ], [ %i.hn, %._crit_edge.loopexit.i178.unr-lcssa ]
  %.01821.i.epil.init = phi i32 [ 2, %.lr.ph.i177.preheader ], [ %i.hm, %._crit_edge.loopexit.i178.unr-lcssa ]
  %lcmp.mod445 = icmp ne i64 %xtraiter443, 0
  call void @llvm.assume(i1 %lcmp.mod445)
  br label %.lr.ph.i177.epil

.lr.ph.i177.epil:                                 ; preds = %.lr.ph.i177.epil, %.lr.ph.i177.epil.preheader
  %.022.i.epil = phi ptr [ %i.go, %.lr.ph.i177.epil ], [ %.022.i.epil.init, %.lr.ph.i177.epil.preheader ] ; 2 uses
  %.01821.i.epil = phi i32 [ %i.gn, %.lr.ph.i177.epil ], [ %.01821.i.epil.init, %.lr.ph.i177.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i177.epil ], [ 0, %.lr.ph.i177.epil.preheader ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.022.i.epil, i64 4
  store i32 %.01821.i.epil, ptr %i.gm, align 4, !tbaa !312
  %i.gn = add i32 %.01821.i.epil, 2
  %i.go = getelementptr inbounds nuw i8, ptr %.022.i.epil, i64 12
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter443
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i178, label %.lr.ph.i177.epil, !llvm.loop !1764

._crit_edge.loopexit.i178:                        ; preds = %.lr.ph.i177.epil, %._crit_edge.loopexit.i178.unr-lcssa
  %i.gp = trunc i32 %i.gg to i16
  %i.gq = call i16 @llvm.bswap.i16(i16 %i.gp)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i178, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i
  %i.gr = phi i16 [ %i.gq, %._crit_edge.loopexit.i178 ], [ 0, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i ]
  store i16 %i.gr, ptr %i.dc, align 1, !tbaa !289
  %i.gs = shl nuw nsw i32 %i.fo, 1
  %i.gt = load ptr, ptr %i.dd, align 8, !tbaa !314
  %i.gu = zext nneg i32 %i.gs to i64
  %i.gv = sub nsw i64 0, %i.gu
  %i.gw = getelementptr inbounds i8, ptr %i.gt, i64 %i.gv
  store ptr %i.gw, ptr %i.dd, align 8, !tbaa !314
  br label %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit

.lr.ph.i177:                                      ; preds = %.lr.ph.i177, %.lr.ph.i177.preheader.new
  %.022.i = phi ptr [ %i.gf, %.lr.ph.i177.preheader.new ], [ %i.hn, %.lr.ph.i177 ] ; 9 uses
  %.01821.i = phi i32 [ 2, %.lr.ph.i177.preheader.new ], [ %i.hm, %.lr.ph.i177 ] ; 9 uses
  %niter447 = phi i64 [ 0, %.lr.ph.i177.preheader.new ], [ %niter447.next.7, %.lr.ph.i177 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  store i32 %.01821.i, ptr %i.gx, align 4, !tbaa !312
  %i.gy = add nuw nsw i32 %.01821.i, 2
  %i.gz = getelementptr inbounds nuw i8, ptr %.022.i, i64 16
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !312
  %i.ha = add nuw nsw i32 %.01821.i, 4
  %i.hb = getelementptr inbounds nuw i8, ptr %.022.i, i64 28
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !312
  %i.hc = add nuw nsw i32 %.01821.i, 6
  %i.hd = getelementptr inbounds nuw i8, ptr %.022.i, i64 40
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !312
  %i.he = add nuw nsw i32 %.01821.i, 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.022.i, i64 52
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !312
  %i.hg = add nuw nsw i32 %.01821.i, 10
  %i.hh = getelementptr inbounds nuw i8, ptr %.022.i, i64 64
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !312
  %i.hi = add nuw nsw i32 %.01821.i, 12
  %i.hj = getelementptr inbounds nuw i8, ptr %.022.i, i64 76
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !312
  %i.hk = add i32 %.01821.i, 14
  %i.hl = getelementptr inbounds nuw i8, ptr %.022.i, i64 88
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !312
  %i.hm = add i32 %.01821.i, 16                   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.022.i, i64 96 ; 2 uses
  %niter447.next.7 = add i64 %niter447, 8         ; 2 uses
  %niter447.ncmp.7 = icmp eq i64 %niter447.next.7, %unroll_iter446
  br i1 %niter447.ncmp.7, label %._crit_edge.loopexit.i178.unr-lcssa, label %.lr.ph.i177

bb.ad:                                            ; preds = %_ZNK5graph20LigatureSubstFormat123current_liga_set_boundsERNS_24gsubgpos_graph_context_tEjRKN22hb_serialize_context_t8object_tE.exit
  %.sroa.speculated266 = call i32 @llvm.umax.i32(i32 %4, i32 %.sroa.speculated248)
  %i.ho = sub nuw i32 %.sroa.speculated266, %.0135326 ; 2 uses
  %.sroa.speculated257 = call i32 @llvm.umin.i32(i32 %5, i32 %.sroa.speculated)
  %i.hp = sub i32 %.sroa.speculated257, %.0135326 ; 2 uses
  %i.hq = sub i32 %i.hp, %i.ho                    ; 2 uses
  %i.hr = shl i32 %i.hq, 1
  %i.hs = add i32 %i.hr, 2
  %i.ht = call noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef %i.hs) #20 ; 8 uses
  %i.hu = icmp eq i32 %i.ht, -1
  br i1 %i.hu, label %.thread307, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hv = load ptr, ptr %i.l, align 8, !tbaa !438, !nonnull !211, !align !443 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !369
  %.not.i.i.i181 = icmp ult i32 %i.ht, %i.hx
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = zext i32 %i.ht to i64
  %i.ib = getelementptr inbounds nuw [216 x i8], ptr %i.hz, i64 %i.ia
  %.0.i.i.i182 = select i1 %.not.i.i.i181, ptr %i.ib, ptr @_hb_NullPool, !prof !137
  %i.ic = load ptr, ptr %.0.i.i.i182, align 8, !tbaa !311
  %i.id = trunc i32 %i.hq to i16
  %i.ie = call i16 @llvm.bswap.i16(i16 %i.id)
  store i16 %i.ie, ptr %i.ic, align 1, !tbaa !289
  %i.if = load ptr, ptr %i.l, align 8, !tbaa !438, !nonnull !211, !align !443
  %i.ig = shl i32 %i.ho, 1
  %i.ih = add i32 %i.ig, 2
  %i.ii = shl i32 %i.hp, 1
  %i.ij = add i32 %i.ii, 2
  call void @_ZN5graph7graph_t13move_childrenIN2OT6OffsetINS2_7NumTypeILb1EtLj2EEELb1EEEEEvjjjjj(ptr noundef nonnull align 8 dereferenceable(88) %i.if, i32 noundef %i.cv, i32 noundef %i.ih, i32 noundef %i.ij, i32 noundef %i.ht, i32 noundef 2)
  %i.ik = trunc nuw i64 %indvars.iv to i32
  %spec.select154 = call i32 @llvm.umin.i32(i32 %i.ik, i32 %.0119328)
  %i.il = load ptr, ptr %i.l, align 8, !tbaa !438, !nonnull !211, !align !443 ; 3 uses
  %i.im = load i16, ptr %i.v, align 1, !tbaa !231
  %i.in = call noundef i16 @llvm.bswap.i16(i16 %i.im)
  %i.io = zext i16 %i.in to i32
  %.not.i183 = icmp ult i32 %.0128327, %i.io
  br i1 %.not.i183, label %bb.ag, label %bb.af, !prof !137

bb.af:                                            ; preds = %bb.ae
  store i16 %i.cj, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185

bb.ag:                                            ; preds = %bb.ae
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %i.ip = zext nneg i32 %.0128327 to i64
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.ip
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185

_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185: ; preds = %bb.af, %bb.ag
  %.0.i184 = phi ptr [ @_hb_CrapPool, %bb.af ], [ %i.iq, %bb.ag ]
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !369
  %.not.i.i186 = icmp ult i32 %i.j, %i.is
  br i1 %.not.i.i186, label %bb.ai, label %bb.ah, !prof !137

bb.ah:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.ai:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !377
  %i.iv = getelementptr inbounds nuw [216 x i8], ptr %i.iu, i64 %i.r
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i187 = phi ptr [ @_hb_CrapPool, %bb.ah ], [ %i.iv, %bb.ai ] ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 20 ; 3 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !260 ; 2 uses
  %i.iy = add i32 %i.ix, 1                        ; 5 uses
  %i.iz = icmp slt i32 %i.iy, 0
  br i1 %i.iz, label %bb.an, label %bb.aj, !prof !21

bb.aj:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 16
  %i.jb = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, i32 noundef %i.iy, i1 noundef zeroext false)
  br i1 %i.jb, label %bb.ak, label %bb.an, !prof !308

bb.ak:                                            ; preds = %bb.aj
  %i.jc = load i32, ptr %i.iw, align 4, !tbaa !260 ; 3 uses
  %i.jd = icmp ugt i32 %i.iy, %i.jc
  br i1 %i.jd, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.je = sub nuw nsw i32 %i.iy, %i.jc
  %i.jf = mul i32 %i.je, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.am, !prof !21

bb.am:                                            ; preds = %bb.al
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !261
  %i.ji = zext nneg i32 %i.jc to i64
  %i.jj = getelementptr inbounds nuw [12 x i8], ptr %i.jh, i64 %i.ji
  %i.jk = zext i32 %i.jf to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.jj, i8 0, i64 %i.jk, i1 false)
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !260
  %i.jl = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !261
  %i.jn = zext i32 %i.ix to i64
  %i.jo = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %i.jn
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.ao, %bb.an
  %.0.i10.i = phi ptr [ @_hb_CrapPool, %bb.an ], [ %i.jo, %bb.ao ] ; 4 uses
  %i.jp = load i32, ptr %.0.i10.i, align 4
  %i.jq = and i32 %i.jp, -8
  %i.jr = or disjoint i32 %i.jq, 2
  store i32 %i.jr, ptr %.0.i10.i, align 4
  %i.js = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 8
  store i32 %i.ht, ptr %i.js, align 4, !tbaa !309
  %i.jt = load ptr, ptr %.0.i.i187, align 8, !tbaa !446
  %i.ju = ptrtoint ptr %.0.i184 to i64
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 4
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !312
  %i.jz = load i32, ptr %i.ir, align 4, !tbaa !369
  %.not.i11.i = icmp ult i32 %i.ht, %i.jz
  br i1 %.not.i11.i, label %bb.aq, label %bb.ap, !prof !137

bb.ap:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !377
  %i.kc = zext i32 %i.ht to i64
  %i.kd = getelementptr inbounds nuw [216 x i8], ptr %i.kb, i64 %i.kc
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0.i12.i = phi ptr [ @_hb_CrapPool, %bb.ap ], [ %i.kd, %bb.aq ]
  call void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i12.i, i32 noundef %i.j, i1 noundef zeroext false)
  br label %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit

_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit: ; preds = %bb.ar, %._crit_edge.i, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit
  %.4123 = phi i32 [ %spec.select154, %bb.ar ], [ %spec.select, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit ], [ %spec.select, %._crit_edge.i ] ; 2 uses
  %.0110 = phi i32 [ %i.ht, %bb.ar ], [ %i.fj, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit ], [ %i.fj, %._crit_edge.i ] ; 8 uses
  %.2130 = add i32 %.0128327, 1                   ; 2 uses
  %i.ke = load ptr, ptr %i.l, align 8, !tbaa !438, !nonnull !211, !align !443 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !369
  %.not.i188 = icmp ult i32 %.0110, %i.kg
  br i1 %.not.i188, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190, !prof !137

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread: ; preds = %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !377
  %i.kj = zext i32 %.0110 to i64
  %i.kk = getelementptr inbounds nuw [216 x i8], ptr %i.ki, i64 %i.kj
  br label %bb.as

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190: ; preds = %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  %.pre346 = load ptr, ptr %i.l, align 8, !tbaa !438 ; 2 uses
  %.phi.trans.insert347 = getelementptr inbounds nuw i8, ptr %.pre346, i64 4
  %.pre348 = load i32, ptr %.phi.trans.insert347, align 4, !tbaa !369
  %i.kl = icmp ult i32 %.0110, %.pre348
  br i1 %i.kl, label %bb.as, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192, !prof !132

bb.as:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190
  %.0.i189406 = phi ptr [ %i.kk, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ]
  %i.km = phi ptr [ %i.ke, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread ], [ %.pre346, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ]
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !377
  %i.kp = zext i32 %.0110 to i64
  %i.kq = getelementptr inbounds nuw [216 x i8], ptr %i.ko, i64 %i.kp
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190, %bb.as
  %.0.i189405 = phi ptr [ %.0.i189406, %bb.as ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ] ; 2 uses
  %.0.i.i193 = phi ptr [ %i.kq, %bb.as ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ] ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.i.i193, i64 40
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !261 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i.i193, i64 36 ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !260 ; 2 uses
  %i.kv = zext i32 %i.ku to i64
  %.idx.i194 = mul nuw nsw i64 %i.kv, 12
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx.i194
  %.not16.i = icmp eq i32 %i.ku, 0
  br i1 %.not16.i, label %_ZNK5graph20LigatureSubstFormat119clear_virtual_linksERNS_24gsubgpos_graph_context_tEj.exit, label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit15.i
  %.017.i = phi ptr [ %i.lg, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit15.i ], [ %i.ks, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192 ] ; 2 uses
  %i.kx = load ptr, ptr %i.l, align 8, !tbaa !438, !nonnull !211, !align !443 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !309 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !369
  %.not.i13.i = icmp ult i32 %i.kz, %i.lb
end_hunk_0
begin_hunk_1_@_ZNK2OT18IndexSubtableArray6subsetEP19hb_subset_context_tPNS_33cblc_bitmap_size_subset_context_tE:bb.a

bb.x:                                             ; preds = %bb.w, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.dj = load i32, ptr %.0.i.i43, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i43, i64 8
  store i32 %i.cd, ptr %i.dk, align 4, !tbaa !309
  %i.dl = and i32 %i.dj, -64
  %i.dm = or disjoint i32 %i.dl, 4
  store i32 %i.dm, ptr %.0.i.i43, align 4
  %i.dn = load ptr, ptr %i.ci, align 8, !tbaa !143
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !311
  %i.dp = ptrtoint ptr %i.bw to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i43, i64 4
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !312
  store i32 4, ptr %.0.i.i43, align 4
  %.pre107 = load i32, ptr %i.n, align 4, !tbaa !3382
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_13IndexSubtableENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_13IndexSubtableENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit, %bb.x
  %i.du = phi i32 [ %i.bx, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ %.pre107, %bb.x ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dv = zext i32 %i.du to i64
  %.not35.not = icmp samesign ult i64 %indvars.iv.next, %i.dv
  br i1 %.not35.not, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EEixEi.exit, label %.thread80, !llvm.loop !3400

.thread80:                                        ; preds = %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_13IndexSubtableENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT19IndexSubtableRecordEEEPT_mb.exit.i.i, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EEixEi.exit, %.preheader82
  %.not3584 = phi i1 [ true, %.preheader82 ], [ false, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EEixEi.exit ], [ true, %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_13IndexSubtableENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT19IndexSubtableRecordEEEPT_mb.exit.i.i ] ; 2 uses
  br i1 %i.ae, label %bb.y, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.y:                                             ; preds = %.critedge.i.i.i, %.thread80
  %.not3584133 = phi i1 [ false, %.critedge.i.i.i ], [ %.not3584, %.thread80 ]
  call void @hb_free(ptr noundef %.sroa.14.2) #20
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %.thread, %.critedge.i.i.i, %._crit_edge, %bb.y, %.thread80
  %.5 = phi i1 [ false, %._crit_edge ], [ %.not3584, %.thread80 ], [ %.not3584133, %bb.y ], [ false, %.critedge.i.i.i ], [ true, %.thread ]
  %i.dw = load i32, ptr %4, align 8, !tbaa !3401
  %i.dx = add i32 %i.dw, -1
  %spec.select.i.i.i44 = icmp ult i32 %i.dx, -2
  br i1 %spec.select.i.i.i44, label %bb.z, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EED2Ev.exit

bb.z:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.dy, align 4, !tbaa !3382
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !3395
  call void @hb_free(ptr noundef %i.ea) #20
  br label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EED2Ev.exit

_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EED2Ev.exit: ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.pre108 = load i32, ptr %3, align 8, !tbaa !3378
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EEEEbOT_.exit.thread, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EEEEbOT_.exit, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EED2Ev.exit
  %i.eb = phi i32 [ %.pre108, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EED2Ev.exit ], [ %i.d, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EEEEbOT_.exit ], [ %i.d, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EEEEbOT_.exit.thread ]
  %.6 = phi i1 [ %.5, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EED2Ev.exit ], [ false, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EEEEbOT_.exit ], [ false, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EEEEbOT_.exit.thread ]
  %i.ec = add i32 %i.eb, -1
  %spec.select.i.i.i45 = icmp ult i32 %i.ec, -2
  br i1 %spec.select.i.i.i45, label %bb.ab, label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ed, align 4, !tbaa !3381
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !3385
  call void @hb_free(ptr noundef %i.ef) #20
  br label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EED2Ev.exit

_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT18IndexSubtableArray12build_lookupEP19hb_subset_context_tPNS_33cblc_bitmap_size_subset_context_tEP11hb_vector_tI9hb_pair_tIjPKNS_19IndexSubtableRecordEELb0EE(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !320  ; 2 uses
  %.not32 = icmp eq i32 %i.d, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit.thread
  %.030 = phi i32 [ 0, %.lr.ph ], [ %i.cc, %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit.thread ] ; 7 uses
  %.01729 = phi i1 [ false, %.lr.ph ], [ %.4, %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit.thread ] ; 7 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !325  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !326  ; 4 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = mul i32 %.030, 506952113
  %i.p = and i32 %i.o, 1073741823
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !327
  %i.s = urem i32 %i.p, %i.r                      ; 2 uses
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = and i32 %i.w, 2
  %.not15.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not15.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = load i32, ptr %i.u, align 4, !tbaa !147
  %i.ab = icmp eq i32 %i.aa, %.030
  br i1 %i.ab, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = load i32, ptr %i.am, align 4, !tbaa !147
  %i.ad = icmp eq i32 %i.ac, %.030
  br i1 %i.ad, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !328

._crit_edge.i.i.i:                                ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.lcssa10.i.i.i = phi i32 [ %i.w, %.lr.ph.i.i.i.i ], [ %i.ao, %bb.d ]
  %i.ae = phi i64 [ %i.t, %.lr.ph.i.i.i.i ], [ %i.al, %bb.d ]
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %i.ae
  %i.ag = trunc i32 %.lcssa10.i.i.i to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %spec.select.i.i.i = select i1 %i.ag, ptr %i.ah, ptr @minus_1
  br label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.01016.i13.i.i.i = phi i32 [ %i.ak, %bb.d ], [ %i.s, %.lr.ph.i.i.i.i ]
  %.017.i12.i.i.i = phi i32 [ %i.ai, %bb.d ], [ 0, %.lr.ph.i.i.i.i ]
  %i.ai = add i32 %.017.i12.i.i.i, 1              ; 2 uses
  %i.aj = add i32 %i.ai, %.01016.i13.i.i.i
  %i.ak = and i32 %i.aj, %i.z                     ; 2 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = and i32 %i.ao, 2
  %.not.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %bb.d, !llvm.loop !328

_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i:        ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i, %bb.c, %bb.b
  %.0.i.i = phi ptr [ @minus_1, %bb.b ], [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ @minus_1, %bb.c ], [ @minus_1, %.lr.ph.i.i.i ]
  %i.aq = load i32, ptr %.0.i.i, align 4, !tbaa !147 ; 4 uses
  %.not = icmp eq i32 %i.aq, -1
  br i1 %.not, label %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit.thread, label %bb.e, !prof !21

bb.e:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i
  %i.ar = load i32, ptr %i.e, align 4, !tbaa !3373 ; 2 uses
  %.not27.i = icmp eq i32 %i.ar, 0
  br i1 %.not27.i, label %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext i32 %i.ar to i64
  br label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit.thread, label %.lr.ph.i, !llvm.loop !3402

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i ; 4 uses
  %i.at = load i16, ptr %i.as, align 1, !tbaa !231
  %i.au = tail call noundef i16 @llvm.bswap.i16(i16 %i.at)
  %i.av = zext i16 %i.au to i32                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !231
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.az = zext i16 %i.ay to i32
  %.not.i = icmp ult i32 %i.aq, %i.av
  %.not17.i = icmp ugt i32 %i.aq, %i.az
  %or.cond.i = or i1 %.not.i, %.not17.i
  br i1 %or.cond.i, label %bb.f, label %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit

_ZNK2OT18IndexSubtableArray10find_tableEjj.exit:  ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.bb = load i32, ptr %i.ba, align 1, !tbaa !234 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  %.0.i.i.i = select i1 %i.bc, ptr @_hb_NullPool, ptr %i.bf, !prof !21 ; 3 uses
  %i.bg = sub nuw nsw i32 %i.aq, %i.av            ; 2 uses
  %i.bh = load i16, ptr %.0.i.i.i, align 1, !tbaa !231
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %i.bh)
  switch i16 %i.bi, label %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit.thread [
    i16 1, label %bb.g
    i16 3, label %bb.h
  ]

bb.g:                                             ; preds = %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.bk = zext nneg i32 %i.bg to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %5 = load i32, ptr %4, align 1, !tbaa !234
  %6 = tail call noundef i32 @llvm.bswap.i32(i32 %5)
  %i.bm = load i32, ptr %i.bl, align 1, !tbaa !234
  %i.bn = tail call noundef i32 @llvm.bswap.i32(i32 %i.bm)
  %.not.i.i.i = icmp ugt i32 %6, %i.bn
  br i1 %.not.i.i.i, label %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit, label %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit.thread, !prof !137

bb.h:                                             ; preds = %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.bp = zext nneg i32 %i.bg to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %8 = load i16, ptr %7, align 1, !tbaa !231
  %9 = tail call noundef i16 @llvm.bswap.i16(i16 %8)
  %i.br = load i16, ptr %i.bq, align 1, !tbaa !231
  %i.bs = tail call noundef i16 @llvm.bswap.i16(i16 %i.br)
  %.not.i8.i.i = icmp ugt i16 %9, %i.bs
  br i1 %.not.i8.i.i, label %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit, label %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit.thread, !prof !137

_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit: ; preds = %bb.h, %bb.g
  %i.bt = load i32, ptr %i.f, align 4, !tbaa !3381 ; 3 uses
  %i.bu = load i32, ptr %3, align 8, !tbaa !3378
  %.not.i18 = icmp slt i32 %i.bt, %i.bu
  br i1 %.not.i18, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit
  %i.bv = add i32 %i.bt, 1
  %i.bw = tail call noundef zeroext i1 @_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.bv, i1 noundef zeroext false)
  br i1 %i.bw, label %..critedge_crit_edge.i, label %bb.j, !prof !137

..critedge_crit_edge.i:                           ; preds = %bb.i
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !3381
  br label %.critedge.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE4pushIJS5_EEEPS5_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit
  %i.bx = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.bt, %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit ] ; 2 uses
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !3385
  %i.bz = add i32 %i.bx, 1
  store i32 %i.bz, ptr %i.f, align 4, !tbaa !3381
  %i.ca = zext i32 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  store i32 %.030, ptr %i.cb, align 8, !tbaa !147
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.as, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !3403
  br label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE4pushIJS5_EEEPS5_DpOT_.exit

_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE4pushIJS5_EEEPS5_DpOT_.exit: ; preds = %bb.j, %.critedge.i
  br i1 %.01729, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE4pushIJS5_EEEPS5_DpOT_.exit
  store i32 %.030, ptr %i.h, align 8, !tbaa !3374
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE4pushIJS5_EEEPS5_DpOT_.exit
  store i32 %.030, ptr %i.i, align 4, !tbaa !3375
  br label %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit.thread

_ZNK2OT18IndexSubtableArray10find_tableEjj.exit.thread: ; preds = %bb.f, %bb.g, %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit, %bb.h, %bb.e, %bb.l, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i
  %.4 = phi i1 [ %.01729, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i ], [ %.01729, %bb.g ], [ true, %bb.l ], [ %.01729, %bb.e ], [ %.01729, %bb.h ], [ %.01729, %_ZNK2OT18IndexSubtableArray10find_tableEjj.exit ], [ %.01729, %bb.f ]
  %i.cc = add nuw i32 %.030, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.cc, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !3404
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT19IndexSubtableRecord14add_new_recordEP19hb_subset_context_tPNS_33cblc_bitmap_size_subset_context_tEPK11hb_vector_tI9hb_pair_tIjPKS0_ELb0EEPKvPjPS5_IS0_Lb0EE(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"struct.hb_serialize_context_t::snapshot_t", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !tbaa !283, !noalias !3405
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143, !noalias !3405 ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN22hb_serialize_context_t8snapshotEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !293, !noalias !3405
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !294, !noalias !3405
  br label %_ZN22hb_serialize_context_t8snapshotEv.exit

_ZN22hb_serialize_context_t8snapshotEv.exit:      ; preds = %bb.a, %bb.b
  %.sink.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !105, !noalias !3405 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !3372
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3371
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !83
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 6 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3382 ; 2 uses
  %i.v = add i32 %i.u, 1                          ; 6 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE6resizeEi.exit, label %bb.c, !prof !21

bb.c:                                             ; preds = %_ZN22hb_serialize_context_t8snapshotEv.exit
  %i.x = tail call noundef zeroext i1 @_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.v, i1 noundef zeroext false)
  br i1 %i.x, label %bb.d, label %._ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE6resizeEi.exit_crit_edge

._ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE6resizeEi.exit_crit_edge: ; preds = %bb.c
  %.pre = load i32, ptr %i.l, align 4, !tbaa !105
  br label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE6resizeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.t, align 4, !tbaa !3382 ; 3 uses
  %i.z = icmp ugt i32 %i.v, %i.y
  br i1 %i.z, label %bb.e, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE6resizeEi.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = sub nuw nsw i32 %i.v, %i.y
  %i.ab = shl i32 %i.aa, 3                        ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE6resizeEi.exit.thread, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !3395
  %i.ae = zext nneg i32 %i.y to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = zext i32 %i.ab to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.af, i8 0, i64 %i.ag, i1 false)
  br label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE6resizeEi.exit.thread: ; preds = %bb.d, %bb.e, %bb.f
  store i32 %i.v, ptr %i.t, align 4, !tbaa !3382
  %i.ah = load i32, ptr %i.l, align 4, !tbaa !105
  %.not.i.i36.not = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i36.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !3408

_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE6resizeEi.exit: ; preds = %._ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE6resizeEi.exit_crit_edge, %_ZN22hb_serialize_context_t8snapshotEv.exit
  %i.ai = phi i32 [ %.pre, %._ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE6resizeEi.exit_crit_edge ], [ %i.m, %_ZN22hb_serialize_context_t8snapshotEv.exit ]
  %.not.i.i.not = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.not, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit.thread, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !233

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit.thread: ; preds = %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE6resizeEi.exit
  store i32 1, ptr %i.l, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE6resizeEi.exit.thread
  %.not.i.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.not.i, label %bb.h, label %bb.i, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.aj = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.aj, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE4tailEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !3395
  %i.am = zext nneg i32 %i.u to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  br label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE4tailEv.exit

_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE4tailEv.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.an, %bb.i ]
  store i16 256, ptr %.0.i.i, align 1, !tbaa !289
  %i.ao = load i32, ptr %i.t, align 4, !tbaa !3382 ; 2 uses
  %.not.i.not.i26 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.not.i26, label %bb.j, label %bb.k, !prof !21

bb.j:                                             ; preds = %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE4tailEv.exit
  %i.ap = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.ap, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE4tailEv.exit28

bb.k:                                             ; preds = %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE4tailEv.exit
  %i.aq = add i32 %i.ao, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !3395
  %i.at = zext i32 %i.aq to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  br label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE4tailEv.exit28

_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE4tailEv.exit28: ; preds = %bb.j, %bb.k
  %.0.i.i27 = phi ptr [ @_hb_CrapPool, %bb.j ], [ %i.au, %bb.k ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i27, i64 2
  store i16 0, ptr %i.av, align 1, !tbaa !289
  %i.aw = load i32, ptr %i.n, align 8, !tbaa !3372
  %i.ax = add i32 %i.aw, 8
  store i32 %i.ax, ptr %i.n, align 8, !tbaa !3372
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.az = tail call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %i.ay) ; 0 uses
  %i.ba = load i32, ptr %i.t, align 4, !tbaa !3382 ; 2 uses
  %.not.i.not.i29 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.not.i29, label %bb.l, label %bb.m, !prof !21

bb.l:                                             ; preds = %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE4tailEv.exit28
  %i.bb = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.bb, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE4tailEv.exit31

bb.m:                                             ; preds = %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE4tailEv.exit28
  %i.bc = add i32 %i.ba, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !3395
  %i.bf = zext i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  br label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE4tailEv.exit31

_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE4tailEv.exit31: ; preds = %bb.l, %bb.m
  %.0.i.i30 = phi ptr [ @_hb_CrapPool, %bb.l ], [ %i.bg, %bb.m ]
  %i.bh = tail call noundef zeroext i1 @_ZNK2OT19IndexSubtableRecord16add_new_subtableEP19hb_subset_context_tPNS_33cblc_bitmap_size_subset_context_tEPS0_PK11hb_vector_tI9hb_pair_tIjPKS0_ELb0EEPKvPj(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %.0.i.i30, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br i1 %i.bh, label %bb.o, label %bb.n, !prof !137

bb.n:                                             ; preds = %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE4tailEv.exit31
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !129
end_hunk_1
