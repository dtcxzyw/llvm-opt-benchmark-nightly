inline.NumInlined: 2626
inline.NumDeleted: 1307
begin_hunk_0_@_ZN12_GLOBAL__N_118StringTableBuilder15packIntoStorageEPSt6vectorIhSaIhEEPS1_IDsSaIDsEEb:bb.a
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #19, !noalias !85 ; 2 uses
  store ptr %i.ai, ptr %13, align 8, !tbaa !86, !alias.scope !79, !noalias !76
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %i.aj, align 8, !tbaa !87, !alias.scope !79, !noalias !76
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !88, !alias.scope !79, !noalias !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ai, i8 -1, i64 %i.ah, i1 false), !tbaa !3, !noalias !85
  br label %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 20, i1 false), !alias.scope !79, !noalias !76
  br label %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i

_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i: ; preds = %bb.c, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.not16.i.i = icmp eq ptr %.val8, %.val7
  br i1 %.not16.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i, label %.lr.ph.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i: ; preds = %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i
  tail call void @_ZdlPv(ptr noundef null) #15, !noalias !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false), !alias.scope !76
  br label %_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit

.lr.ph.i.i:                                       ; preds = %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i, %bb.e
  %.017.i.i = phi ptr [ %i.az, %bb.e ], [ %.val7, %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i ] ; 3 uses
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 16
  %.sroa.412.0.copyload.i.i = load i64, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !tbaa !92, !noalias !85
  %i.al = icmp ugt i64 %.sroa.412.0.copyload.i.i, 2
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 8
  %.sroa.011.0.copyload.i.i = load ptr, ptr %i.am, align 8, !tbaa !54, !noalias !85 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15, !noalias !85
  %i.an = load i8, ptr %.sroa.011.0.copyload.i.i, align 1, !tbaa !55, !noalias !76
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !55, !noalias !76
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = or disjoint i32 %i.at, %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !55, !noalias !76
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.f, align 4, !tbaa !3, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15, !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !93
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E11try_emplaceIJRS3_EEESt4pairINS_16DenseMapIteratorIjS3_S5_S7_Lb0EEEbEOjDpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.52") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %11), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15, !noalias !85
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, %.val8
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i, label %.lr.ph.i.i

_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i: ; preds = %bb.e
  %.tr.i.i = trunc i64 %i.l to i32                ; 2 uses
  %.mask.i.i = and i32 %.tr.i.i, 536870911
  %i.ba = icmp eq i32 %.mask.i.i, 0
  br i1 %i.ba, label %.lr.ph179.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i
  %i.bb = shl i32 %.tr.i.i, 5
  %i.bc = udiv i32 %i.bb, 3
  %i.bd = add nuw nsw i32 %i.bc, 1
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = lshr i64 %i.be, 1
  %i.bg = or i64 %i.bf, %i.be                     ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = or i64 %i.bh, %i.bg                     ; 2 uses
  %i.bj = lshr i64 %i.bi, 4
  %i.bk = or i64 %i.bj, %i.bi                     ; 2 uses
  %i.bl = lshr i64 %i.bk, 8
  %i.bm = or i64 %i.bl, %i.bk                     ; 2 uses
  %i.bn = lshr i64 %i.bm, 16
  %i.bo = or i64 %i.bn, %i.bm                     ; 2 uses
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = add nuw i32 %i.bp, 1                    ; 3 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, 48               ; 2 uses
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #19, !noalias !89 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  %i.bv = and i64 %i.bo, 4294967295
  %xtraiter = and i64 %i.br, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.prol ], [ %i.bt, %bb.f ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %bb.f ]
  store ptr inttoptr (i64 -1 to ptr), ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !3, !noalias !89
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !97

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %bb.f
  %.08.i.i.i.i.i.unr = phi ptr [ %i.bt, %bb.f ], [ %i.bw, %.lr.ph.i.i.i.i.i.prol ]
  %i.bx = icmp samesign ult i64 %i.bv, 7
  br i1 %i.bx, label %.lr.ph179.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 25 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.08.i.i.i.i.i, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !3, !noalias !89
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  store ptr inttoptr (i64 -1 to ptr), ptr %i.by, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.1, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.1, align 8, !tbaa !3, !noalias !89
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bz, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.2, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.2, align 8, !tbaa !3, !noalias !89
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ca, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.3, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 160
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.3, align 8, !tbaa !3, !noalias !89
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cb, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 200
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.4, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.4, align 8, !tbaa !3, !noalias !89
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 240
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cc, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 248
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.5, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 256
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.5, align 8, !tbaa !3, !noalias !89
  %i.cd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 288
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cd, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 296
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.6, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 304
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.6, align 8, !tbaa !3, !noalias !89
  %i.ce = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 336
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ce, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 344
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.7, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 352
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.7, align 8, !tbaa !3, !noalias !89
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq ptr %i.cf, %i.bu
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph179.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !99

.lr.ph179.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i
  %.sroa.29.3.i.i = phi i32 [ 0, %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i ], [ %i.bq, %.lr.ph.i.i.i.i.i ], [ %i.bq, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sroa.092.3.i.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i ], [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.g

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i
  %i.ck = icmp eq i32 %.sroa.12.2.i.i, 0
  br i1 %i.ck, label %._crit_edge.thread.i.i, label %bb.ae

bb.g:                                             ; preds = %.loopexit.i.i, %.lr.ph179.i.i
  %.0176.i.i = phi ptr [ %.val7, %.lr.ph179.i.i ], [ %i.in, %.loopexit.i.i ] ; 5 uses
  %.sroa.092.0175.i.i = phi ptr [ %.sroa.092.3.i.i, %.lr.ph179.i.i ], [ %.sroa.092.2.i.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.12.0174.i.i = phi i32 [ 0, %.lr.ph179.i.i ], [ %.sroa.12.2.i.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.23.0173.i.i = phi i32 [ 0, %.lr.ph179.i.i ], [ %.sroa.23.2.i.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.29.0172.i.i = phi i32 [ %.sroa.29.3.i.i, %.lr.ph179.i.i ], [ %.sroa.29.2.i.i, %.loopexit.i.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0176.i.i, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !100, !noalias !89 ; 5 uses
  %i.cn = icmp ugt i64 %i.cm, 24576
  br i1 %i.cn, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %.0176.i.i, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !102, !noalias !89 ; 2 uses
  %.not36145155.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not36145155.i.i, label %.loopexit.i.i, label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %bb.h, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i
  %.033.ph166.i.i = phi i32 [ %i.db, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ 0, %bb.h ]
  %.034.ph165.i.i = phi i64 [ %i.cu, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %i.cm, %bb.h ]
  %.sroa.092.1.ph162.i.i = phi ptr [ %.sroa.092.5.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.092.0175.i.i, %bb.h ] ; 9 uses
  %.sroa.12.1.ph160.i.i = phi i32 [ %.sroa.12.4.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.12.0174.i.i, %bb.h ] ; 5 uses
  %.sroa.23.1.ph158.i.i = phi i32 [ %.sroa.23.6.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.23.0173.i.i, %bb.h ] ; 4 uses
  %.sroa.29.1.ph156.i.i = phi i32 [ %.sroa.29.5.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.29.0172.i.i, %bb.h ] ; 11 uses
  %i.cq = load ptr, ptr %13, align 8, !noalias !76 ; 2 uses
  %i.cr = load i32, ptr %i.cg, align 8, !noalias !76 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  %i.ct = add i32 %i.cr, -1                       ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i, %.lr.ph.i17.i
  %.033147.i.i = phi i32 [ %.033.ph166.i.i, %.lr.ph.i17.i ], [ %i.db, %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i ]
  %.034146.i.i = phi i64 [ %.034.ph165.i.i, %.lr.ph.i17.i ], [ %i.cu, %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i ] ; 3 uses
  %i.cu = add nsw i64 %.034146.i.i, -1            ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cu ; 4 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !55, !noalias !89
  %i.cx = zext i8 %i.cw to i32                    ; 2 uses
  %i.cy = add i32 %.033147.i.i, %i.cx
  %i.cz = mul i32 %i.cy, 1025                     ; 2 uses
  %i.da = lshr i32 %i.cz, 6
  %i.db = xor i32 %i.da, %i.cz                    ; 7 uses
  %i.dc = add nuw nsw i64 %.034146.i.i, 2
  %.not37.i.i = icmp ugt i64 %i.dc, %i.cm
  br i1 %.not37.i.i, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dd = shl nuw nsw i32 %i.cx, 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.034146.i.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !55, !noalias !89
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 8
  %i.di = or disjoint i32 %i.dh, %i.dd
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !55, !noalias !89
  %i.dl = zext i8 %i.dk to i32
  %i.dm = or disjoint i32 %i.di, %i.dl            ; 3 uses
  br i1 %i.cs, label %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = mul nuw nsw i32 %i.dm, 37
  %.02744.i.i.i.i.i = and i32 %i.dn, %i.ct        ; 2 uses
  %i.do = zext nneg i32 %.02744.i.i.i.i.i to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3, !noalias !89 ; 2 uses
  %i.dr = icmp eq i32 %i.dm, %i.dq
  br i1 %i.dr, label %.critedge.i.i, label %.lr.ph.i.i.i52.i.i, !prof !103

.lr.ph.i.i.i52.i.i:                               ; preds = %bb.k, %bb.l
  %i.ds = phi i32 [ %i.dy, %bb.l ], [ %i.dq, %bb.k ]
  %.02747.i.i.i.i.i = phi i32 [ %.027.i.i.i.i.i, %bb.l ], [ %.02744.i.i.i.i.i, %bb.k ]
  %.02546.i.i.i.i.i = phi i32 [ %i.du, %bb.l ], [ 1, %bb.k ] ; 2 uses
  %i.dt = icmp eq i32 %i.ds, -1
  br i1 %i.dt, label %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i, label %bb.l, !prof !56

bb.l:                                             ; preds = %.lr.ph.i.i.i52.i.i
  %i.du = add i32 %.02546.i.i.i.i.i, 1
  %i.dv = add i32 %.02546.i.i.i.i.i, %.02747.i.i.i.i.i
  %.027.i.i.i.i.i = and i32 %i.dv, %i.ct          ; 2 uses
  %i.dw = zext i32 %.027.i.i.i.i.i to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3, !noalias !89 ; 2 uses
  %i.dz = icmp eq i32 %i.dm, %i.dy
  br i1 %i.dz, label %.critedge.i.i, label %.lr.ph.i.i.i52.i.i, !prof !104, !llvm.loop !105

_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i: ; preds = %.lr.ph.i.i.i52.i.i, %bb.j
  %.not36.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not36.i.i, label %.loopexit.i.i, label %bb.i, !llvm.loop !106

.critedge.i.i:                                    ; preds = %bb.k, %bb.i, %bb.l
  %i.ea = sub nsw i64 %i.cm, %i.cu
  %.sroa.22.0.copyload.i.fr.i.i.i.i = freeze i64 %i.ea ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15, !noalias !89
  store ptr %i.cv, ptr %10, align 8, !tbaa !54, !noalias !89
  store i64 %.sroa.22.0.copyload.i.fr.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !92, !noalias !89
  store i32 %i.db, ptr %i.ch, align 8, !tbaa !107, !noalias !89
  %i.eb = icmp eq i32 %.sroa.29.1.ph156.i.i, 0    ; 2 uses
  br i1 %i.eb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15, !noalias !89
  store ptr inttoptr (i64 -2 to ptr), ptr %9, align 8, !alias.scope !109, !noalias !89
  store i64 0, ptr %i.ci, align 8, !alias.scope !109, !noalias !89
  store i32 0, ptr %i.cj, align 8, !tbaa !107, !alias.scope !109, !noalias !89
  %i.ec = add i32 %.sroa.29.1.ph156.i.i, -1       ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i, label %.split.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.m, %bb.p
  %.029.us.i.i.i.i = phi ptr [ %spec.select.us.i.i.i.i, %bb.p ], [ null, %bb.m ] ; 3 uses
  %.val36.pn.us.i.i.i.i = phi i32 [ %i.em, %bb.p ], [ %i.db, %bb.m ]
  %.025.us.i.i.i.i = phi i32 [ %i.el, %bb.p ], [ 1, %bb.m ] ; 2 uses
  %.027.us.i.i.i.i = and i32 %.val36.pn.us.i.i.i.i, %i.ec ; 2 uses
  %i.ed = zext i32 %.027.us.i.i.i.i to i64
  %i.ee = getelementptr inbounds nuw [48 x i8], ptr %.sroa.092.1.ph162.i.i, i64 %i.ed ; 7 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !107, !noalias !89 ; 2 uses
  %i.eh = icmp eq i32 %i.db, %i.eg
  br i1 %i.eh, label %bb.n, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i, !prof !114

bb.n:                                             ; preds = %.split.us.i.i.i.i
  %.sroa.2.0..sroa_idx.i.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.2.0.copyload.i.us.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.us.i.i.i.i, align 8, !tbaa !92, !noalias !89
  %.not.i.i.i.us.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload.i.us.i.i.i.i, 0
  br i1 %.not.i.i.i.us.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread119.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i, !prof !114

_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i: ; preds = %bb.n, %.split.us.i.i.i.i
  %i.ei = icmp eq i32 %i.eg, 0
  br i1 %i.ei, label %bb.o, label %bb.p, !prof !114

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i
  %.sroa.22.0..sroa_idx.i82.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.22.0.copyload.i83.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i82.i.i, align 8, !tbaa !92, !noalias !89
  %.not.i.i.i87.i.i = icmp eq i64 %.sroa.22.0.copyload.i83.i.i, 0
  br i1 %.not.i.i.i87.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i, label %bb.p, !prof !114

bb.p:                                             ; preds = %bb.o, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i
  %i.ej = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(20) %i.ee, ptr noundef nonnull align 8 dereferenceable(20) %9), !noalias !89
  %i.ek = icmp eq ptr %.029.us.i.i.i.i, null
  %or.cond.not.us.i.i.i.i = select i1 %i.ej, i1 %i.ek, i1 false
  %spec.select.us.i.i.i.i = select i1 %or.cond.not.us.i.i.i.i, ptr %i.ee, ptr %.029.us.i.i.i.i
  %i.el = add i32 %.025.us.i.i.i.i, 1
  %i.em = add i32 %.027.us.i.i.i.i, %.025.us.i.i.i.i
  br label %.split.us.i.i.i.i, !llvm.loop !115

.split.i.i.i.i:                                   ; preds = %bb.m, %bb.s
  %.029.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.s ], [ null, %bb.m ] ; 3 uses
  %.val36.pn.i.i.i.i = phi i32 [ %i.ew, %bb.s ], [ %i.db, %bb.m ]
  %.025.i.i.i.i = phi i32 [ %i.ev, %bb.s ], [ 1, %bb.m ] ; 2 uses
  %.027.i.i.i.i = and i32 %.val36.pn.i.i.i.i, %i.ec ; 2 uses
  %i.en = zext i32 %.027.i.i.i.i to i64
  %i.eo = getelementptr inbounds nuw [48 x i8], ptr %.sroa.092.1.ph162.i.i, i64 %i.en ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !107, !noalias !89 ; 2 uses
  %i.er = icmp eq i32 %i.db, %i.eq
  br i1 %i.er, label %bb.q, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i, !prof !114

bb.q:                                             ; preds = %.split.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !92, !noalias !89
  %.not.i.i.i.i.i78.i.i = icmp eq i64 %.sroa.22.0.copyload.i.fr.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i78.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i79.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i, !prof !114

_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i79.i.i: ; preds = %bb.q
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.eo, align 8, !tbaa !54, !noalias !89
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.cv, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.22.0.copyload.i.fr.i.i.i.i), !noalias !89
  %.not9.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread119.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i, !prof !116

_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i79.i.i, %bb.q, %.split.i.i.i.i
  %i.es = icmp eq i32 %i.eq, 0
  br i1 %i.es, label %bb.r, label %bb.s, !prof !114

bb.r:                                             ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !92, !noalias !89
  %.not.i.i.i80.i.i = icmp eq i64 %.sroa.22.0.copyload.i.i.i, 0
  br i1 %.not.i.i.i80.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i, label %bb.s, !prof !114

bb.s:                                             ; preds = %bb.r, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i
  %i.et = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(20) %i.eo, ptr noundef nonnull align 8 dereferenceable(20) %9), !noalias !89
  %i.eu = icmp eq ptr %.029.i.i.i.i, null
  %or.cond.not.i.i.i.i = select i1 %i.et, i1 %i.eu, i1 false
  %spec.select.i.i.i.i = select i1 %or.cond.not.i.i.i.i, ptr %i.eo, ptr %.029.i.i.i.i
  %i.ev = add i32 %.025.i.i.i.i, 1
  %i.ew = add i32 %.027.i.i.i.i, %.025.i.i.i.i
  br label %.split.i.i.i.i, !llvm.loop !115

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread119.i.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i79.i.i, %bb.n
  %storemerge.i.i.ph.i.i = phi ptr [ %i.ee, %bb.n ], [ %i.eo, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i79.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !89
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_EixEOS5_.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i: ; preds = %bb.r, %bb.o
  %.us-phi12.i.i.i.i = phi ptr [ %.029.us.i.i.i.i, %bb.o ], [ %.029.i.i.i.i, %bb.r ] ; 2 uses
  %.us-phi13.i.i.i.i = phi ptr [ %i.ee, %bb.o ], [ %i.eo, %bb.r ]
  %.not.i.i77.i.i = icmp eq ptr %.us-phi12.i.i.i.i, null
  %i.ex = select i1 %.not.i.i77.i.i, ptr %.us-phi13.i.i.i.i, ptr %.us-phi12.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !89
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i, %.critedge.i.i
  %.0.i118.i.i = phi ptr [ %i.ex, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i ], [ null, %.critedge.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !89
  store ptr %.0.i118.i.i, ptr %i.e, align 8, !tbaa !117, !noalias !89
  %i.ey = shl i32 %.sroa.12.1.ph160.i.i, 2
  %i.ez = add i32 %i.ey, 4
  %i.fa = mul i32 %.sroa.29.1.ph156.i.i, 3
  %.not.i.i.i.i.i.i = icmp ult i32 %i.ez, %i.fa
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.t, !prof !56

bb.t:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i
  %i.fb = shl i32 %.sroa.29.1.ph156.i.i, 1
  br label %.sink.split.i.i.i.i.i.i

bb.u:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i
  %.neg.i.i.i.i.i.i = xor i32 %.sroa.12.1.ph160.i.i, -1
  %.neg1.i.i.i.i.i.i = sub i32 %.neg.i.i.i.i.i.i, %.sroa.23.1.ph158.i.i
  %i.fc = add i32 %.neg1.i.i.i.i.i.i, %.sroa.29.1.ph156.i.i
  %i.fd = lshr i32 %.sroa.29.1.ph156.i.i, 3
  %.not9.i.i.i.i.i.i = icmp ugt i32 %i.fc, %i.fd
  br i1 %.not9.i.i.i.i.i.i, label %bb.w, label %.sink.split.i.i.i.i.i.i, !prof !56

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.u, %bb.t
  %.val10.sink.i.i.i.i.i.i = phi i32 [ %i.fb, %bb.t ], [ %.sroa.29.1.ph156.i.i, %bb.u ]
  %i.fe = add i32 %.val10.sink.i.i.i.i.i.i, -1
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_118StringTableBuilder15packIntoStorageEPSt6vectorIhSaIhEEPS1_IDsSaIDsEEb:bb.a
  %i.zi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zh) #19, !noalias !223 ; 2 uses
  store ptr %i.zi, ptr %8, align 8, !tbaa !224, !alias.scope !217, !noalias !214
  %i.zj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.zj, align 8, !tbaa !225, !alias.scope !217, !noalias !214
  %i.zk = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.zk, align 4, !tbaa !226, !alias.scope !217, !noalias !214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.zi, i8 -1, i64 %i.zh, i1 false), !tbaa !92, !noalias !223
  br label %_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i

bb.cr:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 20, i1 false), !alias.scope !217, !noalias !214
  br label %_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i

_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i: ; preds = %bb.cr, %.lr.ph.preheader.i.i.i.i.i.i.i16
  %.not16.i.i18 = icmp eq ptr %.val12, %.val11
  br i1 %.not16.i.i18, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i, label %.lr.ph.i.i19

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i: ; preds = %_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i
  call void @_ZdlPv(ptr noundef null) #15, !noalias !227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, i8 0, i64 24, i1 false), !alias.scope !214
  br label %_ZN12_GLOBAL__N_112StringPackerIDsE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit

.lr.ph.i.i19:                                     ; preds = %_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i, %bb.ct
  %.017.i.i20 = phi ptr [ %i.zz, %bb.ct ], [ %.val11, %_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i ] ; 3 uses
  %.sroa.412.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %.017.i.i20, i64 16
  %.sroa.412.0.copyload.i.i22 = load i64, ptr %.sroa.412.0..sroa_idx.i.i21, align 8, !tbaa !92, !noalias !223
  %i.zl = icmp ugt i64 %.sroa.412.0.copyload.i.i22, 2
  br i1 %i.zl, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.lr.ph.i.i19
  %i.zm = getelementptr inbounds nuw i8, ptr %.017.i.i20, i64 8
  %.sroa.011.0.copyload.i.i415 = load ptr, ptr %i.zm, align 8, !tbaa !230, !noalias !223 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15, !noalias !223
  %i.zn = load i16, ptr %.sroa.011.0.copyload.i.i415, align 2, !tbaa !61, !noalias !214
  %i.zo = zext i16 %i.zn to i64
  %i.zp = shl nuw nsw i64 %i.zo, 32
  %i.zq = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i415, i64 2
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !61, !noalias !214
  %i.zs = zext i16 %i.zr to i64
  %i.zt = shl nuw nsw i64 %i.zs, 16
  %i.zu = or disjoint i64 %i.zt, %i.zp
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i415, i64 4
  %i.zw = load i16, ptr %i.zv, align 2, !tbaa !61, !noalias !214
  %i.zx = zext i16 %i.zw to i64
  %i.zy = or disjoint i64 %i.zu, %i.zx
  store i64 %i.zy, ptr %i.c, align 8, !tbaa !92, !noalias !223
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !231
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E11try_emplaceIJRS3_EEESt4pairINS_16DenseMapIteratorImS3_S5_S7_Lb0EEEbEOmDpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.113") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %6), !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15, !noalias !223
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.lr.ph.i.i19
  %i.zz = getelementptr inbounds nuw i8, ptr %.017.i.i20, i64 96 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.zz, %.val12
  br i1 %.not.i.i23, label %_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i, label %.lr.ph.i.i19

_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i: ; preds = %bb.ct
  %.tr.i.i24 = trunc i64 %i.yl to i32             ; 2 uses
  %.mask.i.i25 = and i32 %.tr.i.i24, 536870911
  %i.aaa = icmp eq i32 %.mask.i.i25, 0
  br i1 %i.aaa, label %.lr.ph181.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i
  %i.aab = shl i32 %.tr.i.i24, 5
  %i.aac = udiv i32 %i.aab, 3
  %i.aad = add nuw nsw i32 %i.aac, 1
  %i.aae = zext nneg i32 %i.aad to i64            ; 2 uses
  %i.aaf = lshr i64 %i.aae, 1
  %i.aag = or i64 %i.aaf, %i.aae                  ; 2 uses
  %i.aah = lshr i64 %i.aag, 2
  %i.aai = or i64 %i.aah, %i.aag                  ; 2 uses
  %i.aaj = lshr i64 %i.aai, 4
  %i.aak = or i64 %i.aaj, %i.aai                  ; 2 uses
  %i.aal = lshr i64 %i.aak, 8
  %i.aam = or i64 %i.aal, %i.aak                  ; 2 uses
  %i.aan = lshr i64 %i.aam, 16
  %i.aao = or i64 %i.aan, %i.aam                  ; 2 uses
  %i.aap = trunc nuw nsw i64 %i.aao to i32
  %i.aaq = add nuw i32 %i.aap, 1                  ; 3 uses
  %i.aar = zext i32 %i.aaq to i64                 ; 2 uses
  %i.aas = mul nuw nsw i64 %i.aar, 48             ; 2 uses
  %i.aat = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aas) #19, !noalias !227 ; 5 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.aas
  %i.aav = and i64 %i.aao, 4294967295
  %xtraiter1169 = and i64 %i.aar, 7               ; 2 uses
  %lcmp.mod1170.not = icmp eq i64 %xtraiter1169, 0
  br i1 %lcmp.mod1170.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i26.prol:                          ; preds = %bb.cu, %.lr.ph.i.i.i.i.i26.prol
  %.08.i.i.i.i.i27.prol = phi ptr [ %i.aaw, %.lr.ph.i.i.i.i.i26.prol ], [ %i.aat, %bb.cu ] ; 4 uses
  %prol.iter1171 = phi i64 [ %prol.iter1171.next, %.lr.ph.i.i.i.i.i26.prol ], [ 0, %bb.cu ]
  store ptr inttoptr (i64 -1 to ptr), ptr %.08.i.i.i.i.i27.prol, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.prol = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27.prol, i64 8
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.prol, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.prol = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27.prol, i64 16
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.prol, align 8, !tbaa !3, !noalias !227
  %i.aaw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27.prol, i64 48 ; 2 uses
  %prol.iter1171.next = add i64 %prol.iter1171, 1 ; 2 uses
  %prol.iter1171.cmp.not = icmp eq i64 %prol.iter1171.next, %xtraiter1169
  br i1 %prol.iter1171.cmp.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol, !llvm.loop !235

.lr.ph.i.i.i.i.i26.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i26.prol, %bb.cu
  %.08.i.i.i.i.i27.unr = phi ptr [ %i.aat, %bb.cu ], [ %i.aaw, %.lr.ph.i.i.i.i.i26.prol ]
  %i.aax = icmp samesign ult i64 %i.aav, 7
  br i1 %i.aax, label %.lr.ph181.i.i, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26
  %.08.i.i.i.i.i27 = phi ptr [ %i.abf, %.lr.ph.i.i.i.i.i26 ], [ %.08.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 25 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.08.i.i.i.i.i27, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 8
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 16
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29, align 8, !tbaa !3, !noalias !227
  %i.aay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 48
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aay, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.1 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 56
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.1, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.1 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 64
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.1, align 8, !tbaa !3, !noalias !227
  %i.aaz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 96
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aaz, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.2 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 104
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.2, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.2 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 112
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.2, align 8, !tbaa !3, !noalias !227
  %i.aba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 144
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aba, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.3 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 152
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.3, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.3 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 160
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.3, align 8, !tbaa !3, !noalias !227
  %i.abb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 192
  store ptr inttoptr (i64 -1 to ptr), ptr %i.abb, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.4 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 200
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.4, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.4 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 208
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.4, align 8, !tbaa !3, !noalias !227
  %i.abc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 240
  store ptr inttoptr (i64 -1 to ptr), ptr %i.abc, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.5 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 248
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.5, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.5 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 256
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.5, align 8, !tbaa !3, !noalias !227
  %i.abd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 288
  store ptr inttoptr (i64 -1 to ptr), ptr %i.abd, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.6 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 296
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.6, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.6 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 304
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.6, align 8, !tbaa !3, !noalias !227
  %i.abe = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 336
  store ptr inttoptr (i64 -1 to ptr), ptr %i.abe, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.7 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 344
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.7, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.7 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 352
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.7, align 8, !tbaa !3, !noalias !227
  %i.abf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 384 ; 2 uses
  %.not.i.i.i.i.i30.7 = icmp eq ptr %i.abf, %i.aau
  br i1 %.not.i.i.i.i.i30.7, label %.lr.ph181.i.i, label %.lr.ph.i.i.i.i.i26, !llvm.loop !236

.lr.ph181.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26, %_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i
  %.sroa.29.3.i.i31 = phi i32 [ 0, %_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i ], [ %i.aaq, %.lr.ph.i.i.i.i.i26 ], [ %i.aaq, %.lr.ph.i.i.i.i.i26.prol.loopexit ]
  %.sroa.094.3.i.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i ], [ %i.aat, %.lr.ph.i.i.i.i.i26 ], [ %i.aat, %.lr.ph.i.i.i.i.i26.prol.loopexit ]
  %i.abg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.4.0..sroa_idx.i.i32 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.abh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.abi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.abj = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.cv

._crit_edge.i.i88:                                ; preds = %.loopexit.i.i83
  %i.abk = icmp eq i32 %.sroa.12.2.i.i86, 0
  br i1 %i.abk, label %._crit_edge.thread.i.i111, label %bb.dt

bb.cv:                                            ; preds = %.loopexit.i.i83, %.lr.ph181.i.i
  %.0178.i.i = phi ptr [ %.val11, %.lr.ph181.i.i ], [ %i.ahp, %.loopexit.i.i83 ] ; 5 uses
  %.sroa.094.0177.i.i = phi ptr [ %.sroa.094.3.i.i, %.lr.ph181.i.i ], [ %.sroa.094.2.i.i, %.loopexit.i.i83 ] ; 3 uses
  %.sroa.12.0176.i.i = phi i32 [ 0, %.lr.ph181.i.i ], [ %.sroa.12.2.i.i86, %.loopexit.i.i83 ] ; 3 uses
  %.sroa.23.0175.i.i = phi i32 [ 0, %.lr.ph181.i.i ], [ %.sroa.23.2.i.i85, %.loopexit.i.i83 ] ; 3 uses
  %.sroa.29.0174.i.i = phi i32 [ %.sroa.29.3.i.i31, %.lr.ph181.i.i ], [ %.sroa.29.2.i.i84, %.loopexit.i.i83 ] ; 3 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %.0178.i.i, i64 16
  %i.abm = load i64, ptr %i.abl, align 8, !tbaa !237, !noalias !227 ; 5 uses
  %i.abn = icmp ugt i64 %i.abm, 24576
  br i1 %i.abn, label %.loopexit.i.i83, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.abo = getelementptr inbounds nuw i8, ptr %.0178.i.i, i64 8
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !239, !noalias !227
  %.not36147157.i.i = icmp eq i64 %i.abm, 0
  br i1 %.not36147157.i.i, label %.loopexit.i.i83, label %.lr.ph.i17.i33

.lr.ph.i17.i33:                                   ; preds = %bb.cw, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i
  %.033.ph168.i.i = phi i32 [ %i.acb, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ 0, %bb.cw ]
  %.034.ph167.i.i = phi i64 [ %i.abu, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %i.abm, %bb.cw ]
  %.sroa.094.1.ph164.i.i = phi ptr [ %.sroa.094.5.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.094.0177.i.i, %bb.cw ] ; 9 uses
  %.sroa.12.1.ph162.i.i = phi i32 [ %.sroa.12.4.i.i80, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.12.0176.i.i, %bb.cw ] ; 5 uses
  %.sroa.23.1.ph160.i.i = phi i32 [ %.sroa.23.6.i.i79, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.23.0175.i.i, %bb.cw ] ; 4 uses
  %.sroa.29.1.ph158.i.i = phi i32 [ %.sroa.29.5.i.i78, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.29.0174.i.i, %bb.cw ] ; 11 uses
  %i.abq = load ptr, ptr %8, align 8, !noalias !214 ; 2 uses
  %i.abr = load i32, ptr %i.abg, align 8, !noalias !214 ; 2 uses
  %i.abs = icmp eq i32 %i.abr, 0
  %i.abt = add i32 %i.abr, -1                     ; 2 uses
  br label %bb.cx

bb.cx:                                            ; preds = %_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i, %.lr.ph.i17.i33
  %.033149.i.i = phi i32 [ %.033.ph168.i.i, %.lr.ph.i17.i33 ], [ %i.acb, %_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i ]
  %.034148.i.i = phi i64 [ %.034.ph167.i.i, %.lr.ph.i17.i33 ], [ %i.abu, %_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i ] ; 2 uses
  %i.abu = add nsw i64 %.034148.i.i, -1           ; 6 uses
  %i.abv = getelementptr inbounds nuw [2 x i8], ptr %i.abp, i64 %i.abu ; 5 uses
  %i.abw = load i16, ptr %i.abv, align 2, !tbaa !61, !noalias !227 ; 2 uses
  %i.abx = zext i16 %i.abw to i32
  %i.aby = add i32 %.033149.i.i, %i.abx
  %i.abz = mul i32 %i.aby, 1025                   ; 2 uses
  %i.aca = lshr i32 %i.abz, 6
  %i.acb = xor i32 %i.aca, %i.abz                 ; 7 uses
  %i.acc = add nuw nsw i64 %.034148.i.i, 2
  %.not37.i.i34 = icmp ugt i64 %i.acc, %i.abm
  br i1 %.not37.i.i34, label %.critedge.i.i40, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.acd = zext i16 %i.abw to i64
  %i.ace = shl nuw nsw i64 %i.acd, 32
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abv, i64 2
  %i.acg = load i16, ptr %i.acf, align 2, !tbaa !61, !noalias !227
  %i.ach = zext i16 %i.acg to i64
  %i.aci = shl nuw nsw i64 %i.ach, 16
  %i.acj = or disjoint i64 %i.aci, %i.ace
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abv, i64 4
  %i.acl = load i16, ptr %i.ack, align 2, !tbaa !61, !noalias !227
  %i.acm = zext i16 %i.acl to i64
  %i.acn = or disjoint i64 %i.acj, %i.acm         ; 3 uses
  br i1 %i.abs, label %_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aco = trunc i64 %i.acn to i32
  %i.acp = mul i32 %i.aco, 37
  %.02744.i.i.i.i.i35 = and i32 %i.acp, %i.abt    ; 2 uses
  %i.acq = zext i32 %.02744.i.i.i.i.i35 to i64
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.abq, i64 %i.acq
  %i.acs = load i64, ptr %i.acr, align 8, !tbaa !92, !noalias !227 ; 2 uses
  %i.act = icmp eq i64 %i.acn, %i.acs
  br i1 %i.act, label %.critedge.i.i40, label %.lr.ph.i.i.i52.i.i36, !prof !103

.lr.ph.i.i.i52.i.i36:                             ; preds = %bb.cz, %bb.da
  %i.acu = phi i64 [ %i.ada, %bb.da ], [ %i.acs, %bb.cz ]
  %.02747.i.i.i.i.i37 = phi i32 [ %.027.i.i.i.i.i39, %bb.da ], [ %.02744.i.i.i.i.i35, %bb.cz ]
  %.02546.i.i.i.i.i38 = phi i32 [ %i.acw, %bb.da ], [ 1, %bb.cz ] ; 2 uses
  %i.acv = icmp eq i64 %i.acu, -1
  br i1 %i.acv, label %_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i, label %bb.da, !prof !56

bb.da:                                            ; preds = %.lr.ph.i.i.i52.i.i36
  %i.acw = add i32 %.02546.i.i.i.i.i38, 1
  %i.acx = add i32 %.02546.i.i.i.i.i38, %.02747.i.i.i.i.i37
  %.027.i.i.i.i.i39 = and i32 %i.acx, %i.abt      ; 2 uses
  %i.acy = zext i32 %.027.i.i.i.i.i39 to i64
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.abq, i64 %i.acy
  %i.ada = load i64, ptr %i.acz, align 8, !tbaa !92, !noalias !227 ; 2 uses
  %i.adb = icmp eq i64 %i.acn, %i.ada
  br i1 %i.adb, label %.critedge.i.i40, label %.lr.ph.i.i.i52.i.i36, !prof !104, !llvm.loop !240

_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i: ; preds = %.lr.ph.i.i.i52.i.i36, %bb.cy
  %.not36.i.i414 = icmp eq i64 %i.abu, 0
  br i1 %.not36.i.i414, label %.loopexit.i.i83, label %bb.cx, !llvm.loop !241

.critedge.i.i40:                                  ; preds = %bb.cz, %bb.cx, %bb.da
  %i.adc = sub nsw i64 %i.abm, %i.abu
  %.sroa.22.0.copyload.i.fr.i.i.i.i41 = freeze i64 %i.adc ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !227
  store ptr %i.abv, ptr %5, align 8, !tbaa !230, !noalias !227
  store i64 %.sroa.22.0.copyload.i.fr.i.i.i.i41, ptr %.sroa.4.0..sroa_idx.i.i32, align 8, !tbaa !92, !noalias !227
  store i32 %i.acb, ptr %i.abh, align 8, !tbaa !242, !noalias !227
  %i.add = icmp eq i32 %.sroa.29.1.ph158.i.i, 0   ; 2 uses
  br i1 %i.add, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i, label %bb.db

bb.db:                                            ; preds = %.critedge.i.i40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !227
  store ptr inttoptr (i64 -2 to ptr), ptr %4, align 8, !alias.scope !244, !noalias !227
  store i64 0, ptr %i.abi, align 8, !alias.scope !244, !noalias !227
  store i32 0, ptr %i.abj, align 8, !tbaa !242, !alias.scope !244, !noalias !227
  %i.ade = add i32 %.sroa.29.1.ph158.i.i, -1      ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i42 = icmp eq i64 %.sroa.22.0.copyload.i.fr.i.i.i.i41, 0
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.22.0.copyload.i.fr.i.i.i.i41, 1
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i42, label %.split.us.i.i.i.i404, label %.split.i.i.i.i43

.split.us.i.i.i.i404:                             ; preds = %bb.db, %bb.de
  %.029.us.i.i.i.i405 = phi ptr [ %spec.select.us.i.i.i.i410, %bb.de ], [ null, %bb.db ] ; 3 uses
  %.val36.pn.us.i.i.i.i406 = phi i32 [ %i.ado, %bb.de ], [ %i.acb, %bb.db ]
  %.025.us.i.i.i.i407 = phi i32 [ %i.adn, %bb.de ], [ 1, %bb.db ] ; 2 uses
  %.027.us.i.i.i.i408 = and i32 %.val36.pn.us.i.i.i.i406, %i.ade ; 2 uses
  %i.adf = zext i32 %.027.us.i.i.i.i408 to i64
  %i.adg = getelementptr inbounds nuw [48 x i8], ptr %.sroa.094.1.ph164.i.i, i64 %i.adf ; 7 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 16
  %i.adi = load i32, ptr %i.adh, align 8, !tbaa !242, !noalias !227 ; 2 uses
  %i.adj = icmp eq i32 %i.acb, %i.adi
  br i1 %i.adj, label %bb.dc, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i, !prof !114

bb.dc:                                            ; preds = %.split.us.i.i.i.i404
  %.sroa.2.0..sroa_idx.i.us.i.i.i.i411 = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  %.sroa.2.0.copyload.i.us.i.i.i.i412 = load i64, ptr %.sroa.2.0..sroa_idx.i.us.i.i.i.i411, align 8, !tbaa !92, !noalias !227
  %.not.i.i.i.us.i.i.i.i413 = icmp eq i64 %.sroa.2.0.copyload.i.us.i.i.i.i412, 0
  br i1 %.not.i.i.i.us.i.i.i.i413, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread121.i.i, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i, !prof !114

_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i: ; preds = %bb.dc, %.split.us.i.i.i.i404
  %i.adk = icmp eq i32 %i.adi, 0
  br i1 %i.adk, label %bb.dd, label %bb.de, !prof !114

bb.dd:                                            ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i
  %.sroa.22.0..sroa_idx.i83.i.i = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  %.sroa.22.0.copyload.i84.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i83.i.i, align 8, !tbaa !92, !noalias !227
  %.not.i.i.i88.i.i = icmp eq i64 %.sroa.22.0.copyload.i84.i.i, 0
  br i1 %.not.i.i.i88.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i, label %bb.de, !prof !114

bb.de:                                            ; preds = %bb.dd, %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i
  %i.adl = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(20) %i.adg, ptr noundef nonnull align 8 dereferenceable(20) %4), !noalias !227
  %i.adm = icmp eq ptr %.029.us.i.i.i.i405, null
  %or.cond.not.us.i.i.i.i409 = select i1 %i.adl, i1 %i.adm, i1 false
  %spec.select.us.i.i.i.i410 = select i1 %or.cond.not.us.i.i.i.i409, ptr %i.adg, ptr %.029.us.i.i.i.i405
  %i.adn = add i32 %.025.us.i.i.i.i407, 1
  %i.ado = add i32 %.027.us.i.i.i.i408, %.025.us.i.i.i.i407
  br label %.split.us.i.i.i.i404, !llvm.loop !249

.split.i.i.i.i43:                                 ; preds = %bb.db, %bb.dh
  %.029.i.i.i.i44 = phi ptr [ %spec.select.i.i.i.i49, %bb.dh ], [ null, %bb.db ] ; 3 uses
  %.val36.pn.i.i.i.i45 = phi i32 [ %i.ady, %bb.dh ], [ %i.acb, %bb.db ]
  %.025.i.i.i.i46 = phi i32 [ %i.adx, %bb.dh ], [ 1, %bb.db ] ; 2 uses
  %.027.i.i.i.i47 = and i32 %.val36.pn.i.i.i.i45, %i.ade ; 2 uses
  %i.adp = zext i32 %.027.i.i.i.i47 to i64
  %i.adq = getelementptr inbounds nuw [48 x i8], ptr %.sroa.094.1.ph164.i.i, i64 %i.adp ; 8 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 16
  %i.ads = load i32, ptr %i.adr, align 8, !tbaa !242, !noalias !227 ; 2 uses
  %i.adt = icmp eq i32 %i.acb, %i.ads
  br i1 %i.adt, label %bb.df, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i, !prof !114

bb.df:                                            ; preds = %.split.i.i.i.i43
  %.sroa.2.0..sroa_idx.i.i.i.i.i397 = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i398 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i397, align 8, !tbaa !92, !noalias !227
  %.not.i.i.i.i.i78.i.i399 = icmp eq i64 %.sroa.22.0.copyload.i.fr.i.i.i.i41, %.sroa.2.0.copyload.i.i.i.i.i398
  br i1 %.not.i.i.i.i.i78.i.i399, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i79.i.i, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i, !prof !114

_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i79.i.i: ; preds = %bb.df
  %.sroa.0.0.copyload.i.i.i.i.i400 = load ptr, ptr %i.adq, align 8, !tbaa !230, !noalias !227
  %bcmp.i.i.i.i.i.i.i.i.i.i.i401 = call i32 @bcmp(ptr nonnull %i.abv, ptr %.sroa.0.0.copyload.i.i.i.i.i400, i64 %.idx.i.i.i.i.i.i.i), !noalias !227
  %.not9.i.i.i.i.i.i.i.i.i.i.i402 = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i401, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i.i402, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread121.i.i, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i, !prof !116

_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i79.i.i, %bb.df, %.split.i.i.i.i43
  %i.adu = icmp eq i32 %i.ads, 0
  br i1 %i.adu, label %bb.dg, label %bb.dh, !prof !114

bb.dg:                                            ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i50 = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %.sroa.22.0.copyload.i.i.i51 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i50, align 8, !tbaa !92, !noalias !227
  %.not.i.i.i80.i.i52 = icmp eq i64 %.sroa.22.0.copyload.i.i.i51, 0
  br i1 %.not.i.i.i80.i.i52, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i, label %bb.dh, !prof !114

bb.dh:                                            ; preds = %bb.dg, %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i
  %i.adv = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(20) %i.adq, ptr noundef nonnull align 8 dereferenceable(20) %4), !noalias !227
  %i.adw = icmp eq ptr %.029.i.i.i.i44, null
  %or.cond.not.i.i.i.i48 = select i1 %i.adv, i1 %i.adw, i1 false
  %spec.select.i.i.i.i49 = select i1 %or.cond.not.i.i.i.i48, ptr %i.adq, ptr %.029.i.i.i.i44
  %i.adx = add i32 %.025.i.i.i.i46, 1
  %i.ady = add i32 %.027.i.i.i.i47, %.025.i.i.i.i46
  br label %.split.i.i.i.i43, !llvm.loop !249

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread121.i.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i79.i.i, %bb.dc
  %storemerge.i.i.ph.i.i403 = phi ptr [ %i.adg, %bb.dc ], [ %i.adq, %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i79.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !227
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_EixEOS5_.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i: ; preds = %bb.dg, %bb.dd
  %.us-phi12.i.i.i.i53 = phi ptr [ %.029.us.i.i.i.i405, %bb.dd ], [ %.029.i.i.i.i44, %bb.dg ] ; 2 uses
  %.us-phi13.i.i.i.i54 = phi ptr [ %i.adg, %bb.dd ], [ %i.adq, %bb.dg ]
  %.not.i.i77.i.i55 = icmp eq ptr %.us-phi12.i.i.i.i53, null
  %i.adz = select i1 %.not.i.i77.i.i55, ptr %.us-phi13.i.i.i.i54, ptr %.us-phi12.i.i.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !227
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i, %.critedge.i.i40
  %.0.i120.i.i = phi ptr [ %i.adz, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i ], [ null, %.critedge.i.i40 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !227
  store ptr %.0.i120.i.i, ptr %i.b, align 8, !tbaa !250, !noalias !227
  %i.aea = shl i32 %.sroa.12.1.ph162.i.i, 2
  %i.aeb = add i32 %i.aea, 4
  %i.aec = mul i32 %.sroa.29.1.ph158.i.i, 3
  %.not.i.i.i.i.i.i56 = icmp ult i32 %i.aeb, %i.aec
  br i1 %.not.i.i.i.i.i.i56, label %bb.dj, label %bb.di, !prof !56

bb.di:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i
  %i.aed = shl i32 %.sroa.29.1.ph158.i.i, 1
  br label %.sink.split.i.i.i.i.i.i57

bb.dj:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i
  %.neg.i.i.i.i.i.i394 = xor i32 %.sroa.12.1.ph162.i.i, -1
  %.neg1.i.i.i.i.i.i395 = sub i32 %.neg.i.i.i.i.i.i394, %.sroa.23.1.ph160.i.i
  %i.aee = add i32 %.neg1.i.i.i.i.i.i395, %.sroa.29.1.ph158.i.i
  %i.aef = lshr i32 %.sroa.29.1.ph158.i.i, 3
  %.not9.i.i.i.i.i.i396 = icmp ugt i32 %i.aee, %i.aef
  br i1 %.not9.i.i.i.i.i.i396, label %bb.dl, label %.sink.split.i.i.i.i.i.i57, !prof !56

.sink.split.i.i.i.i.i.i57:                        ; preds = %bb.dj, %bb.di
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EE12emplace_backIJRjRN4llvh8ArrayRefIhEEEEERS3_DpOT_:bb.a
.lr.ph.i.i.i:                                     ; preds = %_ZSt10_ConstructIN12_GLOBAL__N_112StringPackerIhE11StringEntryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.val.i, %_ZSt10_ConstructIN12_GLOBAL__N_112StringPackerIhE11StringEntryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.at = getelementptr i8, ptr %.06.i.i.i, i64 72
  %.0.val.i.i.i = load ptr, ptr %i.at, align 8
  tail call void @_ZdlPv(ptr noundef %.0.val.i.i.i) #15
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i.loopexit, label %.lr.ph.i.i.i, !llvm.loop !356

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i.loopexit: ; preds = %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 192
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_112StringPackerIhE11StringEntryES4_SaIS3_EET0_T_S7_S6_RT1_.exit36.i.thread
  %i.aw = phi ptr [ %i.ad, %_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_112StringPackerIhE11StringEntryES4_SaIS3_EET0_T_S7_S6_RT1_.exit36.i.thread ], [ %i.av, %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i.loopexit ]
  %.not.i37.i = icmp eq ptr %.val.i, null
  br i1 %.not.i37.i, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EE17_M_realloc_insertIJRjRN4llvh8ArrayRefIhEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !357
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.az) #18
  br label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EE17_M_realloc_insertIJRjRN4llvh8ArrayRefIhEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EE17_M_realloc_insertIJRjRN4llvh8ArrayRefIhEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i, %bb.g
  store ptr %i.w, ptr %0, align 8, !tbaa !72
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !75
  %i.ba = getelementptr inbounds nuw [96 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ba, ptr %i.c, align 8, !tbaa !357
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EE17_M_realloc_insertIJRjRN4llvh8ArrayRefIhEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EE12emplace_backIJRjRS_IDsSaIDsEEEEERS3_DpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 %.0.val, ptr %.0.val1, ptr %.8.val) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !355
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %.8.val to i64
  %i.f = ptrtoint ptr %.0.val1 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  store i32 %.0.val, ptr %i.b, align 8, !tbaa !309
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.0.val1, ptr %i.i, align 8, !tbaa !230
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.h, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 -1, ptr %i.j, align 8, !tbaa !348
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.k, align 8, !tbaa !303
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 -1, ptr %i.l, align 8, !tbaa !310
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.m, i8 0, i64 44, i1 false)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !213
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %i.o, ptr %i.a, align 8, !tbaa !213
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %0, align 8, !tbaa !210 ; 6 uses
  %i.p = ptrtoint ptr %i.b to i64
  %i.q = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775776
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.t = sdiv exact i64 %i.r, 96                  ; 3 uses
  %i.u = icmp eq ptr %i.b, %.val.i                ; 2 uses
  %.sroa.speculated.i.i = select i1 %i.u, i64 1, i64 %i.t
  %i.v = add nsw i64 %.sroa.speculated.i.i, %i.t  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.t
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 96076792050570581)
  %i.y = select i1 %i.w, i64 96076792050570581, i64 %i.x ; 3 uses
  %.not.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.z = mul nuw nsw i64 %i.y, 96
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #16 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.r ; 7 uses
  %i.ac = ptrtoint ptr %.8.val to i64
  %i.ad = ptrtoint ptr %.0.val1 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 1
  store i32 %.0.val, ptr %i.ab, align 8, !tbaa !309
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.0.val1, ptr %i.ag, align 8, !tbaa !230
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.af, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !92
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 -1, ptr %i.ah, align 8, !tbaa !348
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr null, ptr %i.ai, align 8, !tbaa !303
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 -1, ptr %i.aj, align 8, !tbaa !310
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.ak, i8 0, i64 44, i1 false)
  br i1 %i.u, label %_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryES4_SaIS3_EET0_T_S7_S6_RT1_.exit35.i.thread, label %.lr.ph.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryES4_SaIS3_EET0_T_S7_S6_RT1_.exit35.i.thread: ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EE12_M_check_lenEmPKc.exit.i, %_ZSt10_ConstructIN12_GLOBAL__N_112StringPackerIDsE11StringEntryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.ba, %_ZSt10_ConstructIN12_GLOBAL__N_112StringPackerIDsE11StringEntryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.aa, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.az, %_ZSt10_ConstructIN12_GLOBAL__N_112StringPackerIDsE11StringEntryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %.val.i, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.011.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %.0810.i.i.i.i.i.i, i64 72, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 20, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 88 ; 2 uses
  tail call void @_ZdlPv(ptr noundef null) #15
  %i.ao = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 88
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !321 ; 3 uses
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !321
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 72
  %i.ar = zext i32 %i.ap to i64
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #19 ; 2 uses
  store ptr %i.at, ptr %i.am, align 8, !tbaa !320
  %i.au = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 80
  %i.aw = load <2 x i32>, ptr %i.au, align 8, !tbaa !3
  store <2 x i32> %i.aw, ptr %i.av, align 8, !tbaa !3
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !320
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.an, align 8, !tbaa !321
  %i.ax = zext i32 %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr align 8 %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ay, i1 false)
  br label %_ZSt10_ConstructIN12_GLOBAL__N_112StringPackerIDsE11StringEntryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 16, i1 false)
  br label %_ZSt10_ConstructIN12_GLOBAL__N_112StringPackerIDsE11StringEntryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN12_GLOBAL__N_112StringPackerIDsE11StringEntryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 96
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, %i.b
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !438

.lr.ph.i.i.i:                                     ; preds = %_ZSt10_ConstructIN12_GLOBAL__N_112StringPackerIDsE11StringEntryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %.val.i, %_ZSt10_ConstructIN12_GLOBAL__N_112StringPackerIDsE11StringEntryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.06.i.i.i, i64 72
  %.0.val.i.i.i = load ptr, ptr %i.bb, align 8
  tail call void @_ZdlPv(ptr noundef %.0.val.i.i.i) #15
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i.loopexit, label %.lr.ph.i.i.i, !llvm.loop !354

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i.loopexit: ; preds = %.lr.ph.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 192
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryES4_SaIS3_EET0_T_S7_S6_RT1_.exit35.i.thread
  %i.be = phi ptr [ %i.al, %_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryES4_SaIS3_EET0_T_S7_S6_RT1_.exit35.i.thread ], [ %i.bd, %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i.loopexit ]
  %.not.i36.i = icmp eq ptr %.val.i, null
  br i1 %.not.i36.i, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EE17_M_realloc_insertIJRjRS_IDsSaIDsEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !355
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.bh) #18
  br label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EE17_M_realloc_insertIJRjRS_IDsSaIDsEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EE17_M_realloc_insertIJRjRS_IDsSaIDsEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i, %bb.g
  store ptr %i.aa, ptr %0, align 8, !tbaa !210
  store ptr %i.be, ptr %i.a, align 8, !tbaa !213
  %i.bi = getelementptr inbounds nuw [96 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.bi, ptr %i.c, align 8, !tbaa !355
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EE17_M_realloc_insertIJRjRS_IDsSaIDsEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE16_M_push_back_auxIJEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 21
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 384307168202282325
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !29
  %i.ag = load ptr, ptr %0, align 8, !tbaa !35
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %1 = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #16
  %2 = load ptr, ptr %i.c, align 8, !tbaa !366
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.am, align 8, !tbaa !36
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !366
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !37
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !36 ; 3 uses
  store ptr %i.aq, ptr %i.o, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 504
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !39
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !366  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !365  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29   ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !35
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !56

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPSt6vectorIDsSaIDsEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPSt6vectorIDsSaIDsEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !36
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !36
  br label %_ZSt4copyIPPSt6vectorIDsSaIDsEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !56

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPSt6vectorIDsSaIDsEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPSt6vectorIDsSaIDsEES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !36
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !36
  br label %_ZSt4copyIPPSt6vectorIDsSaIDsEES4_ET0_T_S6_S5_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseISt6vectorIDsSaIDsEESaIS2_EE15_M_allocate_mapEm.exit, !prof !439

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt11_Deque_baseISt6vectorIDsSaIDsEESaIS2_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #16 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.o, label %bb.p, !prof !56

bb.o:                                             ; preds = %_ZNSt11_Deque_baseISt6vectorIDsSaIDsEESaIS2_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPSt6vectorIDsSaIDsEES4_ET0_T_S6_S5_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseISt6vectorIDsSaIDsEESaIS2_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.q, label %_ZSt4copyIPPSt6vectorIDsSaIDsEES4_ET0_T_S6_S5_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !36
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !36
  br label %_ZSt4copyIPPSt6vectorIDsSaIDsEES4_ET0_T_S6_S5_.exit24

_ZSt4copyIPPSt6vectorIDsSaIDsEES4_ET0_T_S6_S5_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bc = load ptr, ptr %0, align 8, !tbaa !35
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #18
  store ptr %i.aq, ptr %0, align 8, !tbaa !35
  store i64 %i.am, ptr %i.k, align 8, !tbaa !29
  br label %_ZSt4copyIPPSt6vectorIDsSaIDsEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPPSt6vectorIDsSaIDsEES4_ET0_T_S6_S5_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPSt6vectorIDsSaIDsEES4_ET0_T_S6_S5_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPSt6vectorIDsSaIDsEES4_ET0_T_S6_S5_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !37
  %i.be = load ptr, ptr %.0, align 8, !tbaa !36   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 504
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !39
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !37
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !36 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 504
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorISt6vectorIDsSaIDsEEEEET_S7_PKcS9_EUlRKN4llvh5TwineEE_EEjRS9_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 2 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 5 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 2 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 5 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !54     ; 10 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !55    ; 2 uses
  %i.e = sext i8 %i.d to i32                      ; 6 uses
  %i.f = and i32 %i.e, 224
  %i.g = icmp eq i32 %i.f, 192
  br i1 %i.g, label %bb.b, label %bb.c, !prof !56

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !55
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 192
  %.not77 = icmp eq i32 %i.k, 128
  tail call void @llvm.assume(i1 %.not77)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store ptr %i.l, ptr %0, align 8, !tbaa !54
  %i.m = shl nsw i32 %i.e, 6
  %i.n = and i32 %i.m, 1984
  %i.o = and i32 %i.j, 63
  %i.p = or disjoint i32 %i.o, %i.n
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.e, 240
  %i.r = icmp eq i32 %i.q, 224
  br i1 %i.r, label %bb.d, label %bb.e, !prof !56

end_hunk_2
