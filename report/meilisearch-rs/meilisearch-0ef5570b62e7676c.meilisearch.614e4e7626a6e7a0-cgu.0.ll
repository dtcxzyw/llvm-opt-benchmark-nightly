Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h7faecb0869e1adccE":bb.a
.lr.ph26.i22:                                     ; preds = %.preheader.i20
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13.i23 = load i64, ptr %i.bb, align 8, !alias.scope !10000, !noalias !10001 ; 2 uses
  %.val.i24 = load ptr, ptr %i.aw, align 8, !alias.scope !10000, !noalias !10001, !nonnull !45, !align !70
  %i.bc = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 7)
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val15.i15 = load i64, ptr %i.bd, align 8, !alias.scope !10000, !noalias !10001, !noundef !45 ; 2 uses
  %i.be = icmp eq i64 %.val15.i15, 0
  br i1 %i.be, label %.loopexit17.i19, label %.lr.ph.preheader.i16

.lr.ph.preheader.i16:                             ; preds = %bb.u
  %.idx.i17 = shl i64 %.val15.i15, 2
  %.val14.i18 = load ptr, ptr %i.aw, align 8, !alias.scope !10000, !noalias !10001, !nonnull !45, !align !70, !noundef !45
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %.val14.i18, i8 0, i64 %.idx.i17, i1 false), !noalias !10002
  br label %.loopexit17.i19

.loopexit17.i19:                                  ; preds = %.loopexit.i29, %.lr.ph.preheader.i16, %bb.u, %.preheader.i20
  store i32 1, ptr %i.ax, align 8, !alias.scope !10000, !noalias !10001
  br label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit"

bb.v:                                             ; preds = %.loopexit.i29, %.lr.ph26.i22
  %.sroa.05.025.i25 = phi i64 [ 0, %.lr.ph26.i22 ], [ %i.bf, %.loopexit.i29 ] ; 5 uses
  %i.bf = add nuw nsw i64 %.sroa.05.025.i25, 1    ; 2 uses
  %i.bg = icmp ugt i64 %.sroa.05.025.i25, %4
  br i1 %i.bg, label %bb.y, label %bb.w, !prof !47

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10003)
  %exitcond.not.i26 = icmp eq i64 %.sroa.05.025.i25, %i.bc
  br i1 %exitcond.not.i26, label %bb.x, label %"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i", !prof !47

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10004
  store ptr @186, ptr %i.e, align 8, !noalias !10004
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.bh, align 8, !noalias !10004
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.bi, align 8, !noalias !10004
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bj, align 8, !noalias !10004
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.bk, align 8, !noalias !10004
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !10004
  unreachable

"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i": ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.05.025.i25
  %.sroa.0.0.copyload.i.i27 = load i64, ptr %i.bl, align 1, !alias.scope !10005, !noalias !10006
  %i.bm = mul i64 %.sroa.0.0.copyload.i.i27, -4819355556693147648
  %i.bn = lshr i64 %i.bm, 47                      ; 3 uses
  %i.bo = add nuw nsw i64 %i.bn, 4                ; 2 uses
  %.not12.i28 = icmp ugt i64 %i.bo, %.val13.i23
  br i1 %.not12.i28, label %bb.z, label %.loopexit.i29, !prof !47

bb.y:                                             ; preds = %bb.v
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.05.025.i25, i64 noundef %4, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #43, !noalias !10002
  unreachable

.loopexit.i29:                                    ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i"
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.val.i24, i64 %i.bn
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false), !noalias !10002
  %exitcond34.not.i30 = icmp eq i64 %i.bf, %2
  br i1 %exitcond34.not.i30, label %.loopexit17.i19, label %bb.v

bb.z:                                             ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.bn, i64 noundef %i.bo, i64 noundef %.val13.i23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #43, !noalias !10002
  unreachable

bb.aa:                                            ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10008)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !alias.scope !10007, !noalias !10008, !noundef !45
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.ab, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit"

bb.ab:                                            ; preds = %bb.aa
  %i.bu = icmp samesign ult i64 %2, 32769
  %or.cond.i31 = select i1 %1, i1 %i.bu, i1 false
  br i1 %or.cond.i31, label %.preheader.i37, label %bb.ac

.preheader.i37:                                   ; preds = %bb.ab
  %.not.i38 = icmp eq i64 %2, 0
  br i1 %.not.i38, label %.loopexit17.i36, label %.lr.ph26.i39

.lr.ph26.i39:                                     ; preds = %.preheader.i37
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13.i40 = load i64, ptr %i.bv, align 8, !alias.scope !10007, !noalias !10008 ; 2 uses
  %.val.i41 = load ptr, ptr %i.bq, align 8, !alias.scope !10007, !noalias !10008, !nonnull !45, !align !70
  %i.bw = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 7)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val15.i32 = load i64, ptr %i.bx, align 8, !alias.scope !10007, !noalias !10008, !noundef !45 ; 2 uses
  %i.by = icmp eq i64 %.val15.i32, 0
  br i1 %i.by, label %.loopexit17.i36, label %.lr.ph.preheader.i33

.lr.ph.preheader.i33:                             ; preds = %bb.ac
  %.idx.i34 = shl i64 %.val15.i32, 2
  %.val14.i35 = load ptr, ptr %i.bq, align 8, !alias.scope !10007, !noalias !10008, !nonnull !45, !align !70, !noundef !45
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %.val14.i35, i8 0, i64 %.idx.i34, i1 false), !noalias !10009
  br label %.loopexit17.i36

.loopexit17.i36:                                  ; preds = %.loopexit.i46, %.lr.ph.preheader.i33, %bb.ac, %.preheader.i37
  store i32 1, ptr %i.br, align 8, !alias.scope !10007, !noalias !10008
  br label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit"

bb.ad:                                            ; preds = %.loopexit.i46, %.lr.ph26.i39
  %.sroa.05.025.i42 = phi i64 [ 0, %.lr.ph26.i39 ], [ %i.bz, %.loopexit.i46 ] ; 5 uses
  %i.bz = add nuw nsw i64 %.sroa.05.025.i42, 1    ; 2 uses
  %i.ca = icmp ugt i64 %.sroa.05.025.i42, %4
  br i1 %i.ca, label %bb.ag, label %bb.ae, !prof !47

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10010)
  %exitcond.not.i43 = icmp eq i64 %.sroa.05.025.i42, %i.bw
  br i1 %exitcond.not.i43, label %bb.af, label %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i", !prof !47

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10011
  store ptr @186, ptr %i.d, align 8, !noalias !10011
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.cb, align 8, !noalias !10011
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.cc, align 8, !noalias !10011
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cd, align 8, !noalias !10011
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.ce, align 8, !noalias !10011
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !10011
  unreachable

"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i": ; preds = %bb.ae
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.05.025.i42
  %.sroa.0.0.copyload.i.i44 = load i64, ptr %i.cf, align 1, !alias.scope !10012, !noalias !10013
  %i.cg = mul i64 %.sroa.0.0.copyload.i.i44, 3866266742567714048
  %i.ch = lshr i64 %i.cg, 44                      ; 3 uses
  %i.ci = add nuw nsw i64 %i.ch, 4                ; 2 uses
  %.not12.i45 = icmp ugt i64 %i.ci, %.val13.i40
  br i1 %.not12.i45, label %bb.ah, label %.loopexit.i46, !prof !47

bb.ag:                                            ; preds = %bb.ad
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.05.025.i42, i64 noundef %4, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #43, !noalias !10009
  unreachable

.loopexit.i46:                                    ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i"
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.val.i41, i64 %i.ch
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false), !noalias !10009
  %exitcond34.not.i47 = icmp eq i64 %i.bz, %2
  br i1 %exitcond34.not.i47, label %.loopexit17.i36, label %bb.ad

bb.ah:                                            ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ch, i64 noundef %i.ci, i64 noundef %.val13.i40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #43, !noalias !10009
  unreachable

bb.ai:                                            ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10014)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !alias.scope !10014, !noalias !10015, !noundef !45
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.aj, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit"

bb.aj:                                            ; preds = %bb.ai
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.val18.i = load i32, ptr %i.cp, align 4, !alias.scope !10014, !noalias !10015, !noundef !45 ; 3 uses
  %i.cq = lshr i32 %.val18.i, 6
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = icmp samesign ule i64 %2, %i.cr
  %or.cond.i48 = and i1 %1, %i.cs
  br i1 %or.cond.i48, label %.preheader.i54, label %bb.ak

.preheader.i54:                                   ; preds = %bb.aj
  %.not25.i = icmp eq i64 %2, 0
  br i1 %.not25.i, label %.loopexit.i53, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.preheader.i54
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val16.i = load i64, ptr %i.cu, align 8, !alias.scope !10014, !noalias !10015, !noundef !45 ; 2 uses
  %i.cv = zext i32 %.val18.i to i64               ; 3 uses
  %.not.i49 = icmp ult i64 %.val16.i, %i.cv
  br i1 %.not.i49, label %bb.am, label %bb.al, !prof !87

bb.al:                                            ; preds = %bb.ak
  %i.cw = icmp eq i32 %.val18.i, 0
  br i1 %i.cw, label %.loopexit.i53, label %.lr.ph.preheader.i50

.lr.ph.preheader.i50:                             ; preds = %bb.al
  %.idx.i51 = shl nuw nsw i64 %i.cv, 1
  %.val15.i52 = load ptr, ptr %i.ck, align 8, !alias.scope !10014, !noalias !10015, !nonnull !45, !align !69, !noundef !45
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %.val15.i52, i8 0, i64 range(i64 0, 8589934591) %.idx.i51, i1 false), !noalias !10016
  br label %.loopexit.i53

bb.am:                                            ; preds = %bb.ak
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.cv, i64 noundef %.val16.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @612) #43, !noalias !10016
  unreachable

.loopexit.i53:                                    ; preds = %bb.aq, %.lr.ph.preheader.i50, %bb.al, %.preheader.i54
  store i32 1, ptr %i.cl, align 8, !alias.scope !10014, !noalias !10015
  br label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit"

bb.an:                                            ; preds = %bb.aq, %.lr.ph24.i
  %.sroa.04.023.i = phi i64 [ 0, %.lr.ph24.i ], [ %i.cx, %bb.aq ] ; 5 uses
  %i.cx = add nuw nsw i64 %.sroa.04.023.i, 1      ; 2 uses
  %i.cy = icmp ugt i64 %.sroa.04.023.i, %4
  br i1 %i.cy, label %bb.ap, label %bb.ao, !prof !47

bb.ao:                                            ; preds = %bb.an
  %i.cz = sub nuw i64 %4, %.sroa.04.023.i
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.04.023.i
  %i.db = load i32, ptr %i.co, align 8, !alias.scope !10017, !noalias !10018, !noundef !45
  %i.dc = tail call noundef i64 @"_ZN115_$LT$brotli..enc..backward_references..H5Sub$u20$as$u20$brotli..enc..backward_references..AdvHashSpecialization$GT$17load_and_mix_word17h3a8c76734b6d3d47E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.co, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.da, i64 noundef %i.cz)
  %i.dd = and i32 %i.db, 63
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = lshr i64 %i.dc, %i.de
  %i.dg = and i64 %i.df, 4294967295               ; 3 uses
  %.val14.i55 = load i64, ptr %i.ct, align 8, !alias.scope !10014, !noalias !10015, !noundef !45 ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %.val14.i55
  br i1 %i.dh, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.023.i, i64 noundef %4, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #43
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %.val.i56 = load ptr, ptr %i.ck, align 8, !alias.scope !10014, !noalias !10015, !nonnull !45, !align !69, !noundef !45
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %.val.i56, i64 %i.dg
  store i16 0, ptr %i.di, align 2
  %exitcond.not.i57 = icmp eq i64 %i.cx, %2
  br i1 %exitcond.not.i57, label %.loopexit.i53, label %bb.an

bb.ar:                                            ; preds = %bb.ao
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dg, i64 noundef %.val14.i55, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @613) #43
  unreachable

bb.as:                                            ; preds = %bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10020)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !alias.scope !10019, !noalias !10020, !noundef !45
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.at, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit"

bb.at:                                            ; preds = %bb.as
  %i.dn = icmp samesign ult i64 %2, 513
  %or.cond.i58 = and i1 %1, %i.dn
  br i1 %or.cond.i58, label %.preheader.i62, label %bb.au

.preheader.i62:                                   ; preds = %bb.at
  %.not.i63 = icmp eq i64 %2, 0
  br i1 %.not.i63, label %.loopexit.i61, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i62
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val14.i64 = load i64, ptr %i.do, align 8, !alias.scope !10019, !noalias !10020 ; 2 uses
  %.val.i65 = load ptr, ptr %i.dj, align 8, !alias.scope !10019, !noalias !10020, !nonnull !45, !align !69
  %i.dp = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 3)
  br label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val16.i59 = load i64, ptr %i.dq, align 8, !alias.scope !10019, !noalias !10020, !noundef !45 ; 2 uses
  %i.dr = icmp ugt i64 %.val16.i59, 32767
  br i1 %i.dr, label %.preheader17.preheader.i, label %bb.av, !prof !54

.preheader17.preheader.i:                         ; preds = %bb.au
  %.val15.i60 = load ptr, ptr %i.dj, align 8, !alias.scope !10019, !noalias !10020, !nonnull !45, !align !69, !noundef !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %.val15.i60, i8 0, i64 65536, i1 false), !noalias !10021
  br label %.loopexit.i61

bb.av:                                            ; preds = %bb.au
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 32768, i64 noundef %.val16.i59, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @612) #43, !noalias !10021
  unreachable

.loopexit.i61:                                    ; preds = %bb.ba, %.preheader17.preheader.i, %.preheader.i62
  store i32 1, ptr %i.dk, align 8, !alias.scope !10019, !noalias !10020
  br label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit"

bb.aw:                                            ; preds = %bb.ba, %.lr.ph.i
  %.sroa.04.023.i66 = phi i64 [ 0, %.lr.ph.i ], [ %i.ds, %bb.ba ] ; 5 uses
  %i.ds = add nuw nsw i64 %.sroa.04.023.i66, 1    ; 2 uses
  %i.dt = icmp ugt i64 %.sroa.04.023.i66, %4
  br i1 %i.dt, label %bb.az, label %bb.ax, !prof !47

bb.ax:                                            ; preds = %bb.aw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10022)
  %exitcond.not.i67 = icmp eq i64 %.sroa.04.023.i66, %i.dp
  br i1 %exitcond.not.i67, label %bb.ay, label %"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$9HashBytes17h600baaa650cfebdcE.exit.i", !prof !47

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10023
  store ptr @186, ptr %i.c, align 8, !noalias !10023
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.du, align 8, !noalias !10023
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.dv, align 8, !noalias !10023
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dw, align 8, !noalias !10023
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.dx, align 8, !noalias !10023
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1521) #43, !noalias !10023
  unreachable

"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$9HashBytes17h600baaa650cfebdcE.exit.i": ; preds = %bb.ax
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.04.023.i66
  %.sroa.0.0.copyload.i.i68 = load i32, ptr %i.dy, align 1, !alias.scope !10024, !noalias !10025
  %i.dz = zext i32 %.sroa.0.0.copyload.i.i68 to i64
  %i.ea = mul nuw nsw i64 %i.dz, 506832829
  %i.eb = lshr i64 %i.ea, 17
  %i.ec = and i64 %i.eb, 32767                    ; 3 uses
  %i.ed = icmp ult i64 %i.ec, %.val14.i64
  br i1 %i.ed, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.aw
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.023.i66, i64 noundef %4, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #43, !noalias !10021
  unreachable

bb.ba:                                            ; preds = %"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$9HashBytes17h600baaa650cfebdcE.exit.i"
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %.val.i65, i64 %i.ec
  store i16 0, ptr %i.ee, align 2, !noalias !10021
  %exitcond29.not.i = icmp eq i64 %i.ds, %2
  br i1 %exitcond29.not.i, label %.loopexit.i61, label %bb.aw

bb.bb:                                            ; preds = %"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$9HashBytes17h600baaa650cfebdcE.exit.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ec, i64 noundef %.val14.i64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @613) #43, !noalias !10021
  unreachable

bb.bc:                                            ; preds = %bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10027)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !alias.scope !10026, !noalias !10027, !noundef !45
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.bd, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit"

bb.bd:                                            ; preds = %bb.bc
  %i.ej = icmp samesign ult i64 %2, 257
  %or.cond.i69 = and i1 %1, %i.ej
  br i1 %or.cond.i69, label %.preheader.i74, label %bb.be

.preheader.i74:                                   ; preds = %bb.bd
  %.not.i75 = icmp eq i64 %2, 0
  br i1 %.not.i75, label %.loopexit.i73, label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %.preheader.i74
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val14.i77 = load i64, ptr %i.ek, align 8, !alias.scope !10026, !noalias !10027 ; 2 uses
  %.val.i78 = load ptr, ptr %i.ef, align 8, !alias.scope !10026, !noalias !10027, !nonnull !45, !align !69
  %i.el = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 3)
  br label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val16.i70 = load i64, ptr %i.em, align 8, !alias.scope !10026, !noalias !10027, !noundef !45 ; 2 uses
  %i.en = icmp ugt i64 %.val16.i70, 16383
  br i1 %i.en, label %.preheader17.preheader.i71, label %bb.bf, !prof !54

.preheader17.preheader.i71:                       ; preds = %bb.be
  %.val15.i72 = load ptr, ptr %i.ef, align 8, !alias.scope !10026, !noalias !10027, !nonnull !45, !align !69, !noundef !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32768) %.val15.i72, i8 0, i64 32768, i1 false), !noalias !10028
  br label %.loopexit.i73

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 16384, i64 noundef %.val16.i70, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @612) #43, !noalias !10028
  unreachable

.loopexit.i73:                                    ; preds = %bb.bk, %.preheader17.preheader.i71, %.preheader.i74
  store i32 1, ptr %i.eg, align 8, !alias.scope !10026, !noalias !10027
  br label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit"

bb.bg:                                            ; preds = %bb.bk, %.lr.ph.i76
  %.sroa.04.023.i79 = phi i64 [ 0, %.lr.ph.i76 ], [ %i.eo, %bb.bk ] ; 5 uses
  %i.eo = add nuw nsw i64 %.sroa.04.023.i79, 1    ; 2 uses
  %i.ep = icmp ugt i64 %.sroa.04.023.i79, %4
  br i1 %i.ep, label %bb.bj, label %bb.bh, !prof !47

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10029)
  %exitcond.not.i80 = icmp eq i64 %.sroa.04.023.i79, %i.el
  br i1 %exitcond.not.i80, label %bb.bi, label %"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$9HashBytes17h8c5815b35ef739b7E.exit.i", !prof !47

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10030
  store ptr @186, ptr %i.b, align 8, !noalias !10030
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.eq, align 8, !noalias !10030
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.er, align 8, !noalias !10030
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.es, align 8, !noalias !10030
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.et, align 8, !noalias !10030
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1521) #43, !noalias !10030
  unreachable

"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$9HashBytes17h8c5815b35ef739b7E.exit.i": ; preds = %bb.bh
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.04.023.i79
  %.sroa.0.0.copyload.i.i81 = load i32, ptr %i.eu, align 1, !alias.scope !10031, !noalias !10032
  %i.ev = zext i32 %.sroa.0.0.copyload.i.i81 to i64
  %i.ew = mul nuw nsw i64 %i.ev, 506832829
  %i.ex = lshr i64 %i.ew, 18
  %i.ey = and i64 %i.ex, 16383                    ; 3 uses
  %i.ez = icmp ult i64 %i.ey, %.val14.i77
  br i1 %i.ez, label %bb.bk, label %bb.bl

bb.bj:                                            ; preds = %bb.bg
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.023.i79, i64 noundef %4, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #43, !noalias !10028
  unreachable

bb.bk:                                            ; preds = %"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$9HashBytes17h8c5815b35ef739b7E.exit.i"
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %.val.i78, i64 %i.ey
  store i16 0, ptr %i.fa, align 2, !noalias !10028
  %exitcond29.not.i82 = icmp eq i64 %i.eo, %2
  br i1 %exitcond29.not.i82, label %.loopexit.i73, label %bb.bg

bb.bl:                                            ; preds = %"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$9HashBytes17h8c5815b35ef739b7E.exit.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ey, i64 noundef %.val14.i77, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @613) #43, !noalias !10028
  unreachable

bb.bm:                                            ; preds = %bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10034)
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !alias.scope !10033, !noalias !10034, !noundef !45
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.bn, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit"

bb.bn:                                            ; preds = %bb.bm
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.fh = load i32, ptr %i.fg, align 4, !alias.scope !10035, !noalias !10034, !noundef !45 ; 3 uses
  %i.fi = lshr i32 %i.fh, 6
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = icmp samesign ule i64 %2, %i.fj
  %or.cond.i83 = and i1 %1, %i.fk
  br i1 %or.cond.i83, label %.preheader.i90, label %bb.bo

.preheader.i90:                                   ; preds = %bb.bn
  %.not26.i = icmp eq i64 %2, 0
  br i1 %.not26.i, label %.loopexit.i89, label %.lr.ph25.i91

.lr.ph25.i91:                                     ; preds = %.preheader.i90
  %.val17.i = load i64, ptr %i.ff, align 8, !alias.scope !10033, !noalias !10034
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val18.i92 = load i32, ptr %i.fl, align 8, !alias.scope !10036, !noalias !10034, !noundef !45
  %i.fm = and i32 %.val18.i92, 63
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val14.i93 = load i64, ptr %i.fo, align 8, !alias.scope !10033, !noalias !10034 ; 2 uses
  %.val.i94 = load ptr, ptr %i.fb, align 8, !alias.scope !10033, !noalias !10034, !nonnull !45, !align !69
  %i.fp = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 7)
  br label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val16.i84 = load i64, ptr %i.fq, align 8, !alias.scope !10033, !noalias !10034, !noundef !45 ; 2 uses
  %i.fr = zext i32 %i.fh to i64                   ; 3 uses
  %.not.i85 = icmp ult i64 %.val16.i84, %i.fr
  br i1 %.not.i85, label %bb.bq, label %bb.bp, !prof !87

bb.bp:                                            ; preds = %bb.bo
  %i.fs = icmp eq i32 %i.fh, 0
  br i1 %i.fs, label %.loopexit.i89, label %.lr.ph.preheader.i86

.lr.ph.preheader.i86:                             ; preds = %bb.bp
  %.idx.i87 = shl nuw nsw i64 %i.fr, 1
  %.val15.i88 = load ptr, ptr %i.fb, align 8, !alias.scope !10033, !noalias !10034, !nonnull !45, !align !69, !noundef !45
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %.val15.i88, i8 0, i64 range(i64 0, 8589934591) %.idx.i87, i1 false), !noalias !10037
  br label %.loopexit.i89

bb.bq:                                            ; preds = %bb.bo
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.fr, i64 noundef %.val16.i84, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @612) #43, !noalias !10037
  unreachable

.loopexit.i89:                                    ; preds = %bb.bv, %.lr.ph.preheader.i86, %bb.bp, %.preheader.i90
  store i32 1, ptr %i.fc, align 8, !alias.scope !10033, !noalias !10034
  br label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit"

bb.br:                                            ; preds = %bb.bv, %.lr.ph25.i91
  %.sroa.04.024.i = phi i64 [ 0, %.lr.ph25.i91 ], [ %i.ft, %bb.bv ] ; 5 uses
  %i.ft = add nuw nsw i64 %.sroa.04.024.i, 1      ; 2 uses
  %i.fu = icmp ugt i64 %.sroa.04.024.i, %4
  br i1 %i.fu, label %bb.bu, label %bb.bs, !prof !47

bb.bs:                                            ; preds = %bb.br
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10038)
  %exitcond.not.i95 = icmp eq i64 %.sroa.04.024.i, %i.fp
  br i1 %exitcond.not.i95, label %bb.bt, label %"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$9HashBytes17h898390d8d6ac3ce5E.exit.i", !prof !47

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10039
  store ptr @186, ptr %i.a, align 8, !noalias !10039
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.fv, align 8, !noalias !10039
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.fw, align 8, !noalias !10039
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fx, align 8, !noalias !10039
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.fy, align 8, !noalias !10039
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !10039
  unreachable

"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$9HashBytes17h898390d8d6ac3ce5E.exit.i": ; preds = %bb.bs
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.04.024.i
  %.sroa.0.0.copyload.i.i96 = load i64, ptr %i.fz, align 1, !alias.scope !10040, !noalias !10041
  %i.ga = and i64 %.sroa.0.0.copyload.i.i96, %.val17.i
  %i.gb = mul i64 %i.ga, 2297779722762296275
  %i.gc = lshr i64 %i.gb, %i.fn
  %i.gd = and i64 %i.gc, 4294967295               ; 3 uses
  %i.ge = icmp ult i64 %i.gd, %.val14.i93
  br i1 %i.ge, label %bb.bv, label %bb.bw

bb.bu:                                            ; preds = %bb.br
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.024.i, i64 noundef %4, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #43, !noalias !10037
  unreachable

bb.bv:                                            ; preds = %"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$9HashBytes17h898390d8d6ac3ce5E.exit.i"
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %.val.i94, i64 %i.gd
  store i16 0, ptr %i.gf, align 2, !noalias !10037
  %exitcond32.not.i = icmp eq i64 %i.ft, %2
  br i1 %exitcond32.not.i, label %.loopexit.i89, label %bb.br

bb.bw:                                            ; preds = %"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$9HashBytes17h898390d8d6ac3ce5E.exit.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.gd, i64 noundef %.val14.i93, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @613) #43, !noalias !10037
  unreachable

bb.bx:                                            ; preds = %bb.a
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10042)
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 8, !alias.scope !10042, !noundef !45
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.by, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit"

bb.by:                                            ; preds = %bb.bx
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load i64, ptr %i.gk, align 8, !alias.scope !10042, !noundef !45 ; 2 uses
  %i.gl = icmp eq i64 %.val3.i, 0
  br i1 %i.gl, label %._crit_edge.i, label %.lr.ph.preheader.i97

.lr.ph.preheader.i97:                             ; preds = %bb.by
  %.idx.i98 = shl i64 %.val3.i, 1
  %.val.i99 = load ptr, ptr %i.gg, align 8, !alias.scope !10042, !nonnull !45, !align !69, !noundef !45
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %.val.i99, i8 0, i64 %.idx.i98, i1 false), !noalias !10042
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i97, %bb.by
  store i32 1, ptr %i.gh, align 8, !alias.scope !10042
  br label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit"

bb.bz:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10043)
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 8, !alias.scope !10043, !noundef !45
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.ca, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit"

bb.ca:                                            ; preds = %bb.bz
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gr = load i32, ptr %i.gq, align 8, !alias.scope !10043, !noundef !45 ; 2 uses
  %.val.i100 = load ptr, ptr %i.gp, align 8, !alias.scope !10043, !nonnull !45, !align !70, !noundef !45 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i101 = load i64, ptr %i.gs, align 8, !alias.scope !10043, !noundef !45 ; 2 uses
  %.idx.i102 = shl i64 %.val3.i101, 2             ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.val.i100, i64 %.idx.i102
  %i.gu = icmp eq i64 %.val3.i101, 0
  br i1 %i.gu, label %._crit_edge.i104, label %.lr.ph.i103.preheader

.lr.ph.i103.preheader:                            ; preds = %bb.ca
  %i.gv = add i64 %.idx.i102, -4                  ; 2 uses
  %i.gw = lshr exact i64 %i.gv, 2
  %i.gx = add nuw nsw i64 %i.gw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gv, 28
  br i1 %min.iters.check, label %.lr.ph.i103.preheader361, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i103.preheader
  %n.vec = and i64 %i.gx, 9223372036854775800     ; 3 uses
  %i.gy = shl i64 %n.vec, 2
  %i.gz = getelementptr i8, ptr %.val.i100, i64 %i.gy
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.gr, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ha = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.val.i100, i64 %i.ha ; 2 uses
  %i.hb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !noalias !10043
  store <4 x i32> %broadcast.splat, ptr %i.hb, align 4, !noalias !10043
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !9984

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gx, %n.vec
  br i1 %cmp.n, label %._crit_edge.i104, label %.lr.ph.i103.preheader361

.lr.ph.i103.preheader361:                         ; preds = %.lr.ph.i103.preheader, %middle.block
  %.sroa.02.01.i.ph = phi ptr [ %.val.i100, %.lr.ph.i103.preheader ], [ %i.gz, %middle.block ]
  br label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %.lr.ph.i103.preheader361, %.lr.ph.i103
  %.sroa.02.01.i = phi ptr [ %i.hd, %.lr.ph.i103 ], [ %.sroa.02.01.i.ph, %.lr.ph.i103.preheader361 ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 4 ; 2 uses
  store i32 %i.gr, ptr %.sroa.02.01.i, align 4, !noalias !10043
  %i.he = icmp eq ptr %i.hd, %i.gt
  br i1 %i.he, label %._crit_edge.i104, label %.lr.ph.i103, !llvm.loop !9985

._crit_edge.i104:                                 ; preds = %.lr.ph.i103, %middle.block, %bb.ca
  store i32 1, ptr %i.gm, align 8, !alias.scope !10043
  br label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit"

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h29bcfc6bb858042eE.exit": ; preds = %._crit_edge.i104, %bb.bz, %._crit_edge.i, %bb.bx, %.loopexit.i89, %bb.bm, %.loopexit.i73, %bb.bc, %.loopexit.i61, %bb.as, %.loopexit.i53, %bb.ai, %.loopexit17.i36, %bb.aa, %.loopexit17.i19, %bb.s, %.loopexit17.i6, %bb.k, %.loopexit17.i, %bb.c
  %.sroa.0.0.in = phi i1 [ true, %._crit_edge.i ], [ true, %.loopexit17.i ], [ true, %.loopexit17.i6 ], [ true, %.loopexit17.i19 ], [ true, %.loopexit17.i36 ], [ true, %.loopexit.i53 ], [ true, %.loopexit.i61 ], [ true, %.loopexit.i73 ], [ true, %.loopexit.i89 ], [ false, %bb.c ], [ false, %bb.k ], [ false, %bb.s ], [ false, %bb.aa ], [ false, %bb.ai ], [ false, %bb.as ], [ false, %bb.bc ], [ false, %bb.bm ], [ false, %bb.bx ], [ false, %bb.bz ], [ true, %._crit_edge.i104 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN123_$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h8893202b247cce19E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !45, !noundef !45 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !45 ; 3 uses
  %.idx = mul nuw nsw i64 %i.d, 104
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = load i8, ptr %1, align 8, !range !52
  %.fr23 = freeze i8 %i.f
  %i.g = trunc i8 %.fr23 to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !45, !align !48 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %.promoted = load i8, ptr %i.j, align 1
  %i.k = icmp eq i64 %i.d, 0                      ; 2 uses
  br i1 %i.g, label %.split.us, label %.split.preheader, !prof !47

.split.preheader:                                 ; preds = %bb.a
  br i1 %i.k, label %.split20.us, label %bb.b

bb.b:                                             ; preds = %.split.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = getelementptr i8, ptr %i.b, i64 8
  %.val12.peel = load ptr, ptr %i.m, align 8      ; 2 uses
  %i.n = getelementptr i8, ptr %i.b, i64 16
  %.val13.peel = load i64, ptr %i.n, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10095)
  %i.o = icmp eq i8 %.promoted, 1
  %.val.i.i.i.peel = load ptr, ptr %i.i, align 8, !noalias !10096 ; 6 uses
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.peel) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10100)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i.peel, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !10101, !noalias !10102, !noundef !45 ; 3 uses
  %i.r = load i64, ptr %.val.i.i.i.peel, align 8, !range !46, !alias.scope !10101, !noalias !10102, !noundef !45
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d779240624d29c3E.exit.i.i.i.i.peel", !prof !47

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hef594eaabfc18d82E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.peel, i64 noundef %i.q, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !10102, !inline_history !10065
end_hunk_0
begin_hunk_1_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
bb.l:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %.sroa.07.019.i.i ; 3 uses
  %i.df = sub nuw nsw i64 %i.aq, %spec.select.i.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %spec.select.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35119)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 1024 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !35120, !noalias !35121, !noundef !45
  %i.dj = add i64 %i.di, 70
  store i64 %i.dj, ptr %i.dh, align 8, !alias.scope !35122, !noalias !35121
  %i.dk = icmp ugt i64 %i.df, 69
  br i1 %i.dk, label %.preheader.i.i.i, label %.split24.us.i.invoke.i, !prof !54

.split24.us.i.invoke.i:                           ; preds = %bb.l, %bb.j
  %.ph220 = phi i64 [ 0, %bb.l ], [ %spec.select.i.i, %bb.j ]
  %.ph221 = phi i64 [ 70, %bb.l ], [ %i.aq, %bb.j ]
  %.ph222 = phi i64 [ %i.df, %bb.l ], [ %i.aq, %bb.j ]
  %.ph223 = phi ptr [ @1931, %bb.l ], [ @1571, %bb.j ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.ph220, i64 noundef %.ph221, i64 noundef %.ph222, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph223) #43
          to label %.split24.us.i.cont.i unwind label %.thread.i, !noalias !35111

.split24.us.i.cont.i:                             ; preds = %.split24.us.i.invoke.i
  unreachable

.preheader.i.i.i:                                 ; preds = %bb.l, %.preheader.i.i.i
  %.sroa.02.0.idx7.i.i.i = phi i64 [ %.sroa.02.0.add.i.i.i.1, %.preheader.i.i.i ], [ 0, %bb.l ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.02.0.idx7.i.i.i
  %i.dl = load i8, ptr %.sroa.02.0.ptr.i.i.i, align 1, !alias.scope !35123, !noalias !35124, !noundef !45
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !alias.scope !35125, !noalias !35121, !noundef !45
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !alias.scope !35125, !noalias !35121
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.02.0.idx7.i.i.i
  %.sroa.02.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dr = load i8, ptr %.sroa.02.0.ptr.i.i.i.1, align 1, !alias.scope !35123, !noalias !35124, !noundef !45
  %i.ds = zext i8 %i.dr to i64
  %.sroa.02.0.add.i.i.i.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !alias.scope !35125, !noalias !35121, !noundef !45
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !alias.scope !35125, !noalias !35121
  %i.dw = icmp eq i64 %.sroa.02.0.add.i.i.i.1, 70
  br i1 %i.dw, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i, label %.preheader.i.i.i

.split:                                           ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35127)
  %i.dx = udiv i64 %i.aq, 35
  %i.dy = add nuw nsw i64 %i.dx, 99
  %i.dz = add nuw nsw i64 %i.dy, %spec.store.select.i ; 2 uses
  %i.ea = urem i64 %i.dz, %spec.store.select.i
  %i.eb = sub nuw nsw i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ap, i64 1024
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ap, i64 1032
  %i.ee = add nsw i64 %i.aq, -69
  br label %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i, %.split
  %.sroa.03.018.i.i = phi i64 [ 0, %.split ], [ %i.fo, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i ] ; 2 uses
  %.sroa.0.017.i.i = phi i32 [ 7, %.split ], [ %spec.store.select.i.i.i, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !35128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ap, i8 0, i64 1024, i1 false), !noalias !35128
  store float 3.402000e+38, ptr %i.ed, align 8, !alias.scope !35129, !noalias !35128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35131)
  %i.ef = mul i32 %.sroa.0.017.i.i, 16807
  %i.eg = icmp eq i32 %.sroa.0.017.i.i, 0
  %spec.store.select.i.i.i = select i1 %i.eg, i32 1, i32 %i.ef ; 2 uses
  %i.eh = zext i32 %spec.store.select.i.i.i to i64
  %i.ei = urem i64 %i.eh, %i.ee
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ei ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35133)
  store i64 70, ptr %i.ec, align 8, !alias.scope !35134, !noalias !35135
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i
  %.sroa.02.0.idx7.i.i.i.i = phi i64 [ 0, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i ], [ %.sroa.02.0.add.i.i.i.i.1, %.preheader.i.i.i.i ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.02.0.idx7.i.i.i.i
  %i.ek = load i8, ptr %.sroa.02.0.ptr.i.i.i.i, align 1, !alias.scope !35136, !noalias !35137, !noundef !45
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !alias.scope !35138, !noalias !35135, !noundef !45
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !alias.scope !35138, !noalias !35135
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.02.0.idx7.i.i.i.i
  %.sroa.02.0.ptr.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.eq = load i8, ptr %.sroa.02.0.ptr.i.i.i.i.1, align 1, !alias.scope !35136, !noalias !35137, !noundef !45
  %i.er = zext i8 %i.eq to i64
  %.sroa.02.0.add.i.i.i.i.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i.i, 2 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !alias.scope !35138, !noalias !35135, !noundef !45
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 4, !alias.scope !35138, !noalias !35135
  %i.ev = icmp eq i64 %.sroa.02.0.add.i.i.i.i.1, 70
  br i1 %i.ev, label %vector.ph, label %.preheader.i.i.i.i

vector.ph:                                        ; preds = %.preheader.i.i.i.i
  %i.ew = urem i64 %.sroa.03.018.i.i, %spec.store.select.i
  %i.ex = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %i.ew ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1024 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !35139, !noalias !35140, !noundef !45
  %i.fa = add i64 %i.ez, 70
  store i64 %i.fa, ptr %i.ey, align 8, !alias.scope !35141, !noalias !35142
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fb, align 4, !alias.scope !35127, !noalias !35142
  %wide.load3597 = load <4 x i32>, ptr %i.fc, align 4, !alias.scope !35127, !noalias !35142
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load3598 = load <4 x i32>, ptr %i.fd, align 8, !noalias !35128
  %wide.load3599 = load <4 x i32>, ptr %i.fe, align 8, !noalias !35128
  %i.ff = add <4 x i32> %wide.load3598, %wide.load
  %i.fg = add <4 x i32> %wide.load3599, %wide.load3597
  store <4 x i32> %i.ff, ptr %i.fb, align 4, !alias.scope !35127, !noalias !35142
  store <4 x i32> %i.fg, ptr %i.fc, align 4, !alias.scope !35127, !noalias !35142
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index.next ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.fh, align 4, !alias.scope !35127, !noalias !35142
  %wide.load3597.1 = load <4 x i32>, ptr %i.fi, align 4, !alias.scope !35127, !noalias !35142
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index.next ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load3598.1 = load <4 x i32>, ptr %i.fj, align 8, !noalias !35128
  %wide.load3599.1 = load <4 x i32>, ptr %i.fk, align 8, !noalias !35128
  %i.fl = add <4 x i32> %wide.load3598.1, %wide.load.1
  %i.fm = add <4 x i32> %wide.load3599.1, %wide.load3597.1
  store <4 x i32> %i.fl, ptr %i.fh, align 4, !alias.scope !35127, !noalias !35142
  store <4 x i32> %i.fm, ptr %i.fi, align 4, !alias.scope !35127, !noalias !35142
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.fn = icmp eq i64 %index.next.1, 256
  br i1 %i.fn, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i, label %vector.body, !llvm.loop !34267

_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i: ; preds = %vector.body
  %i.fo = add nuw i64 %.sroa.03.018.i.i, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !35128
  %exitcond27.not.i.i = icmp eq i64 %i.fo, %i.eb
  br i1 %exitcond27.not.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, label %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35143
  %i.fp = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35143 ; 15 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i142.i

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc141.i unwind label %.thread.i, !noalias !35111

.noexc141.i:                                      ; preds = %bb.m
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i142.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.fr = add nuw nsw i64 %i.az, 8
  %i.fs = lshr i64 %i.fr, 3                       ; 19 uses
  %i.ft = shl nuw nsw i64 %spec.store.select.i, 8 ; 9 uses
  %i.fu = shl nuw nsw i64 %spec.store.select.i, 10 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35144
  %i.fv = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.fu, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35144 ; 9 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i142.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.fu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc145.i unwind label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit216.thread.i", !noalias !35111

.noexc145.i:                                      ; preds = %bb.n
  unreachable

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit216.thread.i": ; preds = %bb.n
  %i.fx = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.fp) #38, !noalias !35111
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i"

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i142.i
  %i.fy = shl nuw nsw i64 %i.fs, 5                ; 4 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35145
  %i.fz = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.fy, i64 noundef range(i64 1, 9) 4) #38, !noalias !35145 ; 24 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i"

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.fy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc148.i unwind label %.thread39.i, !noalias !35111

.noexc148.i:                                      ; preds = %bb.p
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i": ; preds = %bb.o
  %i.gb = icmp samesign ugt i64 %i.aq, 4351
  br i1 %i.gb, label %.lr.ph.i.i.i146.preheader.i, label %.loopexit114.i

.lr.ph.i.i.i146.preheader.i:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i"
  %i.gc = add nsw i64 %i.fy, -32                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fz, i8 0, i64 range(i64 0, 385) %i.gc, i1 false), !noalias !35111
  %scevgep.i = getelementptr i8, ptr %i.fz, i64 %i.gc
  br label %.loopexit114.i

.thread39.i:                                      ; preds = %bb.p
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i"

.loopexit114.i:                                   ; preds = %.lr.ph.i.i.i146.preheader.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i"
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %i.fz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i" ], [ %scevgep.i, %.lr.ph.i.i.i146.preheader.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.0.lcssa.i.i.i.i, i8 0, i64 32, i1 false), !noalias !35111
  %i.ge = mul i64 %i.fs, %i.aq                    ; 11 uses
  %i.gf = icmp slt i64 %i.ge, 0
  br i1 %i.gf, label %bb.s, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i149.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i149.i: ; preds = %.loopexit114.i
  %i.gg = icmp eq i64 %i.ge, 0                    ; 3 uses
  br i1 %i.gg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i155.i, label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i149.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35146
  %i.gh = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ge, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35146 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gj = ptrtoint ptr %i.gh to i64
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i155.i

bb.s:                                             ; preds = %bb.q, %.loopexit114.i
  %.sroa.4.0.ph.i.i151.i = phi i64 [ 1, %bb.q ], [ 0, %.loopexit114.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i151.i, i64 %i.ge, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc152.i unwind label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i", !noalias !35111

.noexc152.i:                                      ; preds = %bb.s
  unreachable

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i": ; preds = %bb.s
  %i.gk = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.fz) #38, !noalias !35111
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i155.i: ; preds = %bb.r, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i149.i
  %.sroa.10.0.i.i150.i = phi i64 [ %i.gj, %bb.r ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i149.i ]
  %i.gl = inttoptr i64 %.sroa.10.0.i.i150.i to ptr ; 8 uses
  %i.gm = shl nuw nsw i64 %spec.store.select.i, 1 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35147
  %i.gn = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.gm, i64 noundef range(i64 1, -9223372036854775807) 2) #38, !noalias !35147 ; 4 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.t, label %.split.i

bb.t:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i155.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.gm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc158.i unwind label %.thread55.i, !noalias !35111

.noexc158.i:                                      ; preds = %bb.t
  unreachable

.thread55.i:                                      ; preds = %bb.t
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

.split.i:                                         ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i155.i
  %i.gq = icmp slt i32 %.72.val, 12
  %..i = select i1 %i.gq, i64 3, i64 10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  %i.gr = add nuw nsw i64 %i.az, 2                ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aq
  %i.gt = add nsw i64 %i.aq, -1                   ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.gt
  %i.gv = add nuw i64 %i.aq, 1
  %i.gw = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.gt) ; 2 uses
  %min.iters.check = icmp ult i64 %i.gw, 32
  %i.gx = add nuw i64 %i.gw, 1                    ; 2 uses
  %i.gy = and i64 %i.gx, 31                       ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 0
  %i.ha = select i1 %i.gz, i64 32, i64 %i.gy
  %n.vec = sub i64 %i.gx, %i.ha                   ; 3 uses
  %i.hb = add i64 %n.vec, 1
  br label %bb.di

_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i: ; preds = %bb.fx
  %i.hc = icmp samesign ult i64 %.sroa.032.1412.i, %..i ; 2 uses
  %i.hd = zext i1 %i.hc to i64
  %.sroa.032.1.i = add nuw nsw i64 %.sroa.032.1412.i, %i.hd
  br i1 %i.hc, label %bb.di, label %bb.u

.body.i:                                          ; preds = %bb.x
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit216.i"

bb.u:                                             ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i
  tail call void @mi_free(ptr noundef nonnull align 4 %i.fv) #38, !noalias !35111
  tail call void @mi_free(ptr noundef nonnull align 4 %i.fz) #38, !noalias !35111
  br i1 %i.gg, label %bb.v, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i160.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i160.i": ; preds = %bb.u
  tail call void @mi_free(ptr noundef nonnull align 1 %i.gl) #38, !noalias !35111
  br label %bb.v

bb.v:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i160.i", %bb.u
  tail call void @mi_free(ptr noundef nonnull align 2 %i.gn) #38, !noalias !35111
  tail call void @mi_free(ptr noundef nonnull align 8 %i.bd) #38, !noalias !35111
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35150)
  %i.he = shl i64 %.sroa.0.0.i.i, 2               ; 6 uses
  %i.hf = icmp ugt i64 %.sroa.0.0.i.i, 4611686018427387903
  %i.hg = icmp ugt i64 %i.he, 9223372036854775804
  %or.cond.i.i.i.i.i163.i = or i1 %i.hf, %i.hg
  br i1 %or.cond.i.i.i.i.i163.i, label %bb.x, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i164.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i164.i: ; preds = %bb.v
  %i.hh = icmp eq i64 %i.he, 0
  br i1 %i.hh, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i, label %bb.w

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i164.i
  %i.hi = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.hi)
  br label %bb.aa

bb.w:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i164.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35151
  %i.hj = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.he, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35151 ; 3 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.4.0.ph.i.i.i168.i = phi i64 [ 4, %bb.w ], [ 0, %bb.v ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i168.i, i64 %i.he, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc169.i unwind label %.body.i, !noalias !35111

.noexc169.i:                                      ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.hl = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.hl)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35152
  %i.hm = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.he, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35152 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.he, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc413.i.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i", !noalias !35153

.noexc413.i.i:                                    ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i
  %i.ho = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i ], [ %i.hj, %bb.y ] ; 10 uses
  %.sroa.10.0.i.i411.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i ], [ %i.hm, %bb.y ] ; 6 uses
  %i.hp = shl i64 %.sroa.0.0.i.i, 4
  %i.hq = add i64 %i.hp, 1008                     ; 3 uses
  %i.hr = lshr i64 %i.hq, 6                       ; 17 uses
  %i.hs = mul i64 %i.hr, 1040                     ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.hq, 567592125344909311
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ac, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35154
  %i.hu = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.hs, i64 noundef range(i64 1, 9) 8) #38, !noalias !35154 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %bb.ac, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i"

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.ab ], [ 0, %bb.aa ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc415.i.i unwind label %.thread86.i.i, !noalias !35153

.noexc415.i.i:                                    ; preds = %bb.ac
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i": ; preds = %bb.ab, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.hu, %bb.ab ] ; 8 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.hr, %bb.ab ]
  %i.hw = icmp samesign ule i64 %i.hr, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.hw)
  %i.hx = icmp samesign ugt i64 %i.hq, 127
  br i1 %i.hx, label %.lr.ph.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i"
  %i.hy = add nsw i64 %i.hr, -1                   ; 2 uses
  %i.hz = add nsw i64 %i.hr, -2
  %xtraiter4530 = and i64 %i.hy, 7                ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 7
  br i1 %i.ia, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter4535 = and i64 %i.hy, -8
  br label %.lr.ph.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
.lr.ph.i.i.i434.i.i:                              ; preds = %.lr.ph.i.i.i434.i.i, %.lr.ph.i.i.i434.i.i.preheader.new
  %.sroa.0.08.i.i.i435.i.i = phi ptr [ %i.iw, %.lr.ph.i.i.i434.i.i.preheader.new ], [ %i.jj, %.lr.ph.i.i.i434.i.i ] ; 17 uses
  %niter4543 = phi i64 [ 0, %.lr.ph.i.i.i434.i.i.preheader.new ], [ %niter4543.next.7, %.lr.ph.i.i.i434.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i435.i.i, i8 0, i64 1032, i1 false), !noalias !35153
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i, align 8, !noalias !35158
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jc, i8 0, i64 1032, i1 false), !noalias !35153
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1, align 8, !noalias !35158
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jd, i8 0, i64 1032, i1 false), !noalias !35153
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2, align 8, !noalias !35158
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.je, i8 0, i64 1032, i1 false), !noalias !35153
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3, align 8, !noalias !35158
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jf, i8 0, i64 1032, i1 false), !noalias !35153
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4, align 8, !noalias !35158
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jg, i8 0, i64 1032, i1 false), !noalias !35153
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5, align 8, !noalias !35158
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jh, i8 0, i64 1032, i1 false), !noalias !35153
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6, align 8, !noalias !35158
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ji, i8 0, i64 1032, i1 false), !noalias !35153
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7, align 8, !noalias !35158
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 8320 ; 3 uses
  %niter4543.next.7 = add i64 %niter4543, 8       ; 2 uses
  %niter4543.ncmp.7 = icmp eq i64 %niter4543.next.7, %unroll_iter4542
  br i1 %niter4543.ncmp.7, label %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i434.i.i

._crit_edge.i.i.i429.thread.i.i:                  ; preds = %._crit_edge.thread.i.i.i431.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i
  %.sroa.10.0.i.i.i427895.i.i = phi ptr [ %i.iw, %._crit_edge.thread.i.i.i431.i.i ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i ] ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35159
  %i.jk = tail call noundef ptr @mi_malloc_aligned(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #38, !noalias !35159 ; 16 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc444.i.i unwind label %bb.ak, !noalias !35153

.noexc444.i.i:                                    ; preds = %bb.aj
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i", %bb.ak
  %.sroa.1335.0.i.i = phi i64 [ %.sroa.0.0.i422.i.i, %bb.ak ], [ %.sroa.1335.1123199.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ]
  %.sroa.034.0.i.i = phi ptr [ %.sroa.10.0.i.i.i427895.i.i, %bb.ak ], [ %.sroa.034.1124197.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.12.1.i.i = phi i64 [ %i.hr, %bb.ak ], [ %.sroa.12.3125195.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.026.1.i.i = phi ptr [ %i.it, %bb.ak ], [ %.sroa.026.3126193.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.14.2.i.i = phi i64 [ %i.hr, %bb.ak ], [ %.sroa.14.4127191.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.016.2.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %bb.ak ], [ %.sroa.016.4128189.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.pn230.pn.pn.i.i = phi { ptr, i32 } [ %i.jn, %bb.ak ], [ %.pn230.pn202.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %i.jm = icmp eq i64 %.sroa.1335.0.i.i, 0
  br i1 %i.jm, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.034.0.i.i) #38, !noalias !35153
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i"

bb.ak:                                            ; preds = %bb.aj
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i"

bb.al:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.jk, i8 0, i64 32784, i1 false), !noalias !35153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !35153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.ao, i8 0, i64 256, i1 false), !noalias !35153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !35153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.an, i8 0, i64 256, i1 false), !noalias !35153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !35153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.am, i8 0, i64 256, i1 false), !noalias !35153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !35153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.al, i8 0, i64 256, i1 false), !noalias !35153
  br label %bb.dc

.split.i.i:                                       ; preds = %bb.df, %._crit_edge568.i.loopexit.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge568.i.loopexit.i ], [ %.sroa.0.0.i.i, %bb.df ] ; 2 uses
  %.sroa.0.0579.i.i = phi i64 [ %.sroa.0.1.lcssa.i.i, %._crit_edge568.i.loopexit.i ], [ 0, %bb.df ] ; 4 uses
  %.sroa.012.0578.i.i = phi i64 [ %.sroa.012.1.i.i, %._crit_edge568.i.loopexit.i ], [ %i.hr, %bb.df ] ; 7 uses
  %.sroa.018.0577.i.i = phi i64 [ %.sroa.018.1.lcssa.i.i, %._crit_edge568.i.loopexit.i ], [ 0, %bb.df ] ; 4 uses
  %.sroa.023.0576.i.i = phi i64 [ %.sroa.023.1.i.i, %._crit_edge568.i.loopexit.i ], [ %i.hr, %bb.df ] ; 7 uses
  %.sroa.029.0575.i.i = phi i64 [ %i.uc, %._crit_edge568.i.loopexit.i ], [ 0, %bb.df ] ; 2 uses
  %.sroa.043.0574.i.i = phi i64 [ %.sroa.043.4.lcssa.i.i, %._crit_edge568.i.loopexit.i ], [ 0, %bb.df ]
  %.sroa.047.1573.i.i = phi i64 [ %i.ud, %._crit_edge568.i.loopexit.i ], [ 0, %bb.df ] ; 4 uses
  %.sroa.016.3572.i.i = phi ptr [ %.sroa.016.7.i.i, %._crit_edge568.i.loopexit.i ], [ %.sroa.10.0.i.i.i.i.i, %bb.df ] ; 9 uses
  %.sroa.14.3571.i.i = phi i64 [ %.sroa.14.7.i.i, %._crit_edge568.i.loopexit.i ], [ %i.hr, %bb.df ] ; 9 uses
  %.sroa.026.2570.i.i = phi ptr [ %.sroa.026.5.i.i, %._crit_edge568.i.loopexit.i ], [ %i.it, %bb.df ] ; 11 uses
  %.sroa.12.2569.i.i = phi i64 [ %.sroa.12.5.i.i, %._crit_edge568.i.loopexit.i ], [ %i.hr, %bb.df ] ; 11 uses
  %i.jo = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umax818.i.i = tail call i64 @llvm.umin.i64(i64 %i.jo, i64 64)
  %i.jp = sub nuw nsw i64 %.sroa.0.0.i.i, %.sroa.047.1573.i.i
  %.sroa.0.0.i447.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.jp, i64 64) ; 3 uses
  br label %.lr.ph557.i.i

.thread163.loopexit.i.i:                          ; preds = %._crit_edge.i.i
  %lpad.loopexit255.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

.thread163.loopexit.split-lp.loopexit.i.i:        ; preds = %._crit_edge558.i.loopexit.i
  %lpad.loopexit258.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

.thread163.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.invoke3844, %.invoke3842, %.invoke.i.i, %bb.cn, %bb.cg, %bb.at, %bb.ap
  %.sroa.044.1.ph.ph.ph.i.i = phi ptr [ %i.jk, %bb.ap ], [ %.sroa.044.2.i.i, %bb.at ], [ %i.jk, %.invoke.i.i ], [ %i.jk, %.invoke3842 ], [ %i.jk, %bb.cg ], [ %i.jk, %bb.cn ], [ %i.jk, %.invoke3844 ]
  %.sroa.1335.2.ph.ph.ph.i.i = phi i64 [ 0, %bb.ap ], [ 0, %bb.at ], [ %.sroa.0.0.i422.i.i, %.invoke.i.i ], [ %.sroa.0.0.i422.i.i, %.invoke3842 ], [ %.sroa.0.0.i422.i.i, %bb.cg ], [ %.sroa.0.0.i422.i.i, %bb.cn ], [ %.sroa.0.0.i422.i.i, %.invoke3844 ]
  %.sroa.034.2.ph.ph.ph.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ap ], [ inttoptr (i64 8 to ptr), %bb.at ], [ %.sroa.10.0.i.i.i427895.i.i, %.invoke.i.i ], [ %.sroa.10.0.i.i.i427895.i.i, %.invoke3842 ], [ %.sroa.10.0.i.i.i427895.i.i, %bb.cg ], [ %.sroa.10.0.i.i.i427895.i.i, %bb.cn ], [ %.sroa.10.0.i.i.i427895.i.i, %.invoke3844 ]
  %.sroa.12.4.ph.ph.ph.i.i = phi i64 [ %.sroa.12.5.i.i, %bb.ap ], [ %.sroa.12.5.i.i, %bb.at ], [ %i.hr, %.invoke.i.i ], [ %.sroa.12.2569.i.i, %.invoke3842 ], [ %.sroa.12.2569.i.i, %bb.cg ], [ %.sroa.12.2569.i.i, %bb.cn ], [ %.sroa.12.5.i.i, %.invoke3844 ]
  %.sroa.026.4.ph.ph.ph.i.i = phi ptr [ %.sroa.026.5.i.i, %bb.ap ], [ %.sroa.026.5.i.i, %bb.at ], [ %i.it, %.invoke.i.i ], [ %.sroa.026.2570.i.i, %.invoke3842 ], [ %.sroa.026.2570.i.i, %bb.cg ], [ %.sroa.026.2570.i.i, %bb.cn ], [ %.sroa.026.5.i.i, %.invoke3844 ]
  %.sroa.14.5.ph.ph.ph.i.i = phi i64 [ %.sroa.14.7.i.i, %bb.ap ], [ %.sroa.14.7.i.i, %bb.at ], [ %i.hr, %.invoke.i.i ], [ %.sroa.14.3571.i.i, %.invoke3842 ], [ %.sroa.14.3571.i.i, %bb.cg ], [ %.sroa.14.7.i.i, %bb.cn ], [ %.sroa.14.7.i.i, %.invoke3844 ]
  %.sroa.016.5.ph.ph.ph.i.i = phi ptr [ %.sroa.016.7.i.i, %bb.ap ], [ %.sroa.016.7.i.i, %bb.at ], [ %.sroa.10.0.i.i.i.i.i, %.invoke.i.i ], [ %.sroa.016.3572.i.i, %.invoke3842 ], [ %.sroa.016.3572.i.i, %bb.cg ], [ %.sroa.016.7.i.i, %bb.cn ], [ %.sroa.016.7.i.i, %.invoke3844 ]
  %lpad.loopexit.split-lp259.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

bb.am:                                            ; preds = %bb.ay, %._crit_edge584.i.i
  %.sroa.11.1.ph159.i.i = phi i1 [ false, %._crit_edge584.i.i ], [ true, %bb.ay ]
  %.sroa.044.1.ph160.i.i = phi ptr [ %.sroa.044.2.i.i, %._crit_edge584.i.i ], [ inttoptr (i64 4 to ptr), %bb.ay ]
  %.sroa.12.4.ph161.i.i = phi i64 [ %.sroa.12.5.i.i, %._crit_edge584.i.i ], [ 0, %bb.ay ]
  %.sroa.026.4.ph162.i.i = phi ptr [ %.sroa.026.5.i.i, %._crit_edge584.i.i ], [ inttoptr (i64 4 to ptr), %bb.ay ]
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread130.i.i

bb.an:                                            ; preds = %._crit_edge568.i.loopexit.i
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i427895.i.i) #38, !noalias !35153
  %i.jq = shl i64 %i.uc, 6
  %i.jr = lshr i64 %i.uc, 1
  %i.js = mul i64 %i.jr, %i.uc
  %.sroa.0.0.i448.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.js, i64 %i.jq) ; 5 uses
  %i.jt = add nuw i64 %.sroa.0.0.i448.i.i, 1      ; 2 uses
  %i.ju = icmp ugt i64 %.sroa.0.0.i448.i.i, 2048
  br i1 %i.ju, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.jv = shl i64 %i.jt, 4                        ; 5 uses
  %i.jw = icmp ugt i64 %.sroa.0.0.i448.i.i, 1152921504606846974
  %i.jx = icmp ugt i64 %i.jv, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i = or i1 %i.jw, %i.jx
  br i1 %or.cond.i.i.i.i.i449.i.i, label %bb.ap, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i: ; preds = %bb.ao
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35160
  %i.jy = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.jv, i64 noundef range(i64 1, 9) 4) #38, !noalias !35160 ; 5 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.ap, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i"

bb.ap:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i, %bb.ao
  %.sroa.4.0.ph.i.i.i455.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i ], [ 0, %bb.ao ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i, i64 %i.jv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc456.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !35153

.noexc456.i.i:                                    ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i", %bb.an
  %.sroa.11.2.i.i = phi i64 [ %i.jt, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i" ], [ 2049, %bb.an ]
  %.sroa.044.2.i.i = phi ptr [ %i.jy, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i" ], [ %i.jk, %bb.an ] ; 4 uses
  %i.ka = shl i64 %i.uc, 2                        ; 9 uses
  %i.kb = icmp ugt i64 %i.uc, 4611686018427387903
  %i.kc = icmp ugt i64 %i.ka, 9223372036854775804
  %or.cond.i.i.i.i458.i.i = or i1 %i.kb, %i.kc
  br i1 %or.cond.i.i.i.i458.i.i, label %bb.at, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i: ; preds = %bb.aq
  %i.kd = icmp eq i64 %i.ka, 0                    ; 2 uses
  br i1 %i.kd, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35161
  %i.ke = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ka, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35161 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kg = ptrtoint ptr %i.ke to i64
  br label %bb.au

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.4.0.ph.i.i461.i.i = phi i64 [ 4, %bb.ar ], [ 0, %bb.aq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i, i64 %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc462.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !35153

.noexc462.i.i:                                    ; preds = %bb.at
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i
  %i.kh = add nsw i64 %i.jv, -16                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jy, i8 0, i64 range(i64 0, -31) %i.kh, i1 false), !noalias !35162
  %i.ki = getelementptr i8, ptr %i.jy, i64 %i.jv  ; 2 uses
  %scevgep11.i451.i.i = getelementptr i8, ptr %i.jy, i64 %i.kh
  store i32 0, ptr %scevgep11.i451.i.i, align 4, !noalias !35162
  %.sroa.55.0..sroa_idx.i452.i.i = getelementptr i8, ptr %i.ki, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i, align 4, !noalias !35162
  %.sroa.67.0..sroa_idx.i453.i.i = getelementptr i8, ptr %i.ki, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i, align 4, !noalias !35162
  %i.kj = icmp samesign ult i64 %.sroa.0.0.i448.i.i, 576460752303423487
  tail call void @llvm.assume(i1 %i.kj)
  tail call void @mi_free(ptr noundef nonnull align 4 %i.jk) #38, !noalias !35153
  br label %bb.aq

bb.au:                                            ; preds = %bb.as, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i
  %.sroa.10.0.i.i460.i.i = phi i64 [ %i.kg, %bb.as ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i ]
  %i.kk = inttoptr i64 %.sroa.10.0.i.i460.i.i to ptr ; 13 uses
  %i.kl = icmp samesign ult i64 %i.uc, 2305843009213693952
  tail call void @llvm.assume(i1 %i.kl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kk) ]
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.ka
  %i.kn = icmp eq i64 %i.uc, 0                    ; 3 uses
  br i1 %i.kn, label %._crit_edge584.i.i, label %.lr.ph583.i.i.preheader

.lr.ph583.i.i.preheader:                          ; preds = %bb.au
  %i.ko = add nsw i64 %i.ka, -4                   ; 2 uses
  %i.kp = lshr exact i64 %i.ko, 2
  %i.kq = add nuw nsw i64 %i.kp, 1                ; 2 uses
  %min.iters.check3623 = icmp ult i64 %i.ko, 28
  br i1 %min.iters.check3623, label %.lr.ph583.i.i.preheader4334, label %vector.ph3624

vector.ph3624:                                    ; preds = %.lr.ph583.i.i.preheader
  %n.vec3625 = and i64 %i.kq, 9223372036854775800 ; 4 uses
  %i.kr = trunc i64 %n.vec3625 to i32
  %i.ks = shl i64 %n.vec3625, 2
  %i.kt = getelementptr i8, ptr %i.kk, i64 %i.ks
  br label %vector.body3626

vector.body3626:                                  ; preds = %vector.body3626, %vector.ph3624
  %index3627 = phi i64 [ 0, %vector.ph3624 ], [ %index.next3629, %vector.body3626 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3624 ], [ %vec.ind.next, %vector.body3626 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ku = shl i64 %index3627, 2
  %next.gep3628 = getelementptr i8, ptr %i.kk, i64 %i.ku ; 2 uses
  %i.kv = getelementptr i8, ptr %next.gep3628, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep3628, align 4, !noalias !35153
  store <4 x i32> %step.add, ptr %i.kv, align 4, !noalias !35153
  %index.next3629 = add nuw i64 %index3627, 8     ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.kw = icmp eq i64 %index.next3629, %n.vec3625
  br i1 %i.kw, label %middle.block3630, label %vector.body3626, !llvm.loop !34347

middle.block3630:                                 ; preds = %vector.body3626
  %cmp.n = icmp eq i64 %i.kq, %n.vec3625
  br i1 %cmp.n, label %._crit_edge584.i.i, label %.lr.ph583.i.i.preheader4334

.lr.ph583.i.i.preheader4334:                      ; preds = %.lr.ph583.i.i.preheader, %middle.block3630
  %.sroa.047.2581.i.i.ph = phi i32 [ 0, %.lr.ph583.i.i.preheader ], [ %i.kr, %middle.block3630 ]
  %.sroa.0135.0580.i.i.ph = phi ptr [ %i.kk, %.lr.ph583.i.i.preheader ], [ %i.kt, %middle.block3630 ]
  br label %.lr.ph583.i.i

.lr.ph583.i.i:                                    ; preds = %.lr.ph583.i.i.preheader4334, %.lr.ph583.i.i
  %.sroa.047.2581.i.i = phi i32 [ %i.kx, %.lr.ph583.i.i ], [ %.sroa.047.2581.i.i.ph, %.lr.ph583.i.i.preheader4334 ] ; 2 uses
  %.sroa.0135.0580.i.i = phi ptr [ %.sroa.0135.1.i.i, %.lr.ph583.i.i ], [ %.sroa.0135.0580.i.i.ph, %.lr.ph583.i.i.preheader4334 ] ; 2 uses
  %.sroa.0135.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0135.0580.i.i, i64 4 ; 2 uses
  store i32 %.sroa.047.2581.i.i, ptr %.sroa.0135.0580.i.i, align 4, !noalias !35153
  %i.kx = add i32 %.sroa.047.2581.i.i, 1
  %i.ky = icmp eq ptr %.sroa.0135.1.i.i, %i.km
  br i1 %i.ky, label %._crit_edge584.i.i, label %.lr.ph583.i.i, !llvm.loop !34348

._crit_edge584.i.i:                               ; preds = %.lr.ph583.i.i, %middle.block3630, %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i) ]
  %i.kz = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h927b250c66d009c4E(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i, i64 noundef %.sroa.14.7.i.i, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i, i64 noundef %.sroa.12.5.i.i, ptr noalias noundef nonnull align 4 %i.ho, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 4 %i.kk, i64 noundef %i.uc, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i, i64 noundef %.sroa.11.2.i.i, i64 noundef %i.uc, i64 noundef %.sroa.0.0.i.i, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i)
          to label %bb.av unwind label %bb.am, !noalias !35153 ; 3 uses

bb.av:                                            ; preds = %._crit_edge584.i.i
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.044.2.i.i) #38, !noalias !35153
  %i.la = icmp eq i64 %.sroa.12.5.i.i, 0
  br i1 %i.la, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i": ; preds = %bb.av
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.5.i.i) #38, !noalias !35153
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i", %bb.av
  br i1 %i.kd, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35163
  %i.lb = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ka, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35163 ; 2 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ld = ptrtoint ptr %i.lb to i64
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc472.i.i unwind label %bb.am, !noalias !35153

.noexc472.i.i:                                    ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %.invoke1096.i.i, %.invoke1094.i.i
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.ba:                                            ; preds = %bb.ax, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i
  %.sroa.10.0.i.i470.i.i = phi i64 [ %i.ld, %bb.ax ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i ]
  %i.lf = inttoptr i64 %.sroa.10.0.i.i470.i.i to ptr ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lf) ]
  br i1 %i.kn, label %.preheader.split.i.i, label %.lr.ph587.preheader.i.i

.lr.ph587.preheader.i.i:                          ; preds = %bb.ba
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lf, i8 -1, i64 range(i64 0, 9223372036854775805) %i.ka, i1 false), !noalias !35153
  br label %.preheader.split.i.i

.preheader.split.i.i:                             ; preds = %.lr.ph587.preheader.i.i, %bb.ba
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ak, i64 1024
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ak, i64 1032
  %i.li = getelementptr inbounds nuw i8, ptr %i.ai, i64 1024 ; 3 uses
  %.not1101.i.i = icmp eq i64 %i.kz, 0            ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.aj, i64 1024 ; 3 uses
  br label %bb.bt

bb.bb:                                            ; preds = %bb.bx
  tail call void @mi_free(ptr noundef nonnull align 4 %i.kk) #38, !noalias !35153
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.016.7.i.i) #38, !noalias !35153
  %.val365.i.i = load ptr, ptr %7, align 8, !alias.scope !35164, !noalias !35165, !nonnull !45, !align !55, !noundef !45 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.val366.i.i = load i64, ptr %i.lk, align 8, !alias.scope !35164, !noalias !35165, !noundef !45 ; 5 uses
  %i.ll = icmp ult i64 %.val366.i.i, %.sroa.0.0.i.i
  br i1 %i.ll, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.lm = icmp eq i64 %.val366.i.i, 0             ; 2 uses
  %spec.select.i167.i = select i1 %i.lm, i64 %.sroa.0.0.i.i, i64 %.val366.i.i
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.0101.1.i.i = phi i64 [ %spec.select.i167.i, %bb.bc ], [ %i.lo, %bb.bd ] ; 9 uses
  %i.ln = icmp ult i64 %.sroa.0101.1.i.i, %.sroa.0.0.i.i
  %i.lo = shl nuw nsw i64 %.sroa.0101.1.i.i, 1
  br i1 %i.ln, label %bb.bd, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lp = icmp slt i64 %.sroa.0101.1.i.i, 0
  br i1 %i.lp, label %.invoke1094.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i: ; preds = %bb.be
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35166
  %i.lq = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.0101.1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35166 ; 5 uses
  %i.lr = icmp eq ptr %i.lq, null
  br i1 %i.lr, label %.invoke1094.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lq, ptr nonnull readonly align 1 %.val365.i.i, i64 %.val366.i.i, i1 false), !alias.scope !35167, !noalias !35168
  store ptr %i.lq, ptr %7, align 8, !alias.scope !35164, !noalias !35165
  store i64 %.sroa.0101.1.i.i, ptr %i.lk, align 8, !alias.scope !35164, !noalias !35165
  br i1 %i.lm, label %bb.bg, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i": ; preds = %bb.bf
  tail call void @mi_free(ptr noundef nonnull align 1 %.val365.i.i) #38, !noalias !35153
  br label %bb.bg

bb.bg:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i", %bb.bf, %bb.bb
  %.val.i.i = phi ptr [ %.val365.i.i, %bb.bb ], [ %i.lq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i" ], [ %i.lq, %bb.bf ]
  %.val270.i.i = phi i64 [ %.val366.i.i, %bb.bb ], [ %.sroa.0101.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i" ], [ %.sroa.0101.1.i.i, %bb.bf ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.val309.i.i = load ptr, ptr %i.ls, align 8, !alias.scope !35164, !noalias !35165, !nonnull !45, !align !70, !noundef !45 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.val310.i.i = load i64, ptr %i.lt, align 8, !alias.scope !35164, !noalias !35165, !noundef !45 ; 5 uses
  %i.lu = icmp ult i64 %.val310.i.i, %.sroa.0.0.i.i
  br i1 %i.lu, label %bb.bh, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i", %bb.bk, %bb.bg
  %.val339.i.i = phi ptr [ %.val309.i.i, %bb.bg ], [ %i.mb, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i" ], [ %i.mb, %bb.bk ]
  %.val340.i.i = phi i64 [ %.val310.i.i, %bb.bg ], [ %.sroa.0104.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i" ], [ %.sroa.0104.1.i.i, %bb.bk ] ; 2 uses
  br label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %i.lv = icmp eq i64 %.val310.i.i, 0             ; 2 uses
  %spec.select247.i.i = select i1 %i.lv, i64 %.sroa.0.0.i.i, i64 %.val310.i.i
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %bb.bh
  %.sroa.0104.1.i.i = phi i64 [ %spec.select247.i.i, %bb.bh ], [ %i.lx, %bb.bi ] ; 8 uses
  %i.lw = icmp ult i64 %.sroa.0104.1.i.i, %.sroa.0.0.i.i
  %i.lx = shl nuw nsw i64 %.sroa.0104.1.i.i, 1
  br i1 %i.lw, label %bb.bi, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ly = shl i64 %.sroa.0104.1.i.i, 2            ; 4 uses
  %i.lz = icmp ugt i64 %.sroa.0104.1.i.i, 4611686018427387903
  %i.ma = icmp ugt i64 %i.ly, 9223372036854775804
  %or.cond.i.i.i.i484.i.i = or i1 %i.lz, %i.ma
  br i1 %or.cond.i.i.i.i484.i.i, label %.invoke1094.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i: ; preds = %bb.bj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35169
  %i.mb = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ly, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35169 ; 5 uses
  %i.mc = icmp eq ptr %i.mb, null
  br i1 %i.mc, label %.invoke1094.i.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i
  %i.md = icmp samesign ult i64 %.sroa.0104.1.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.md)
  %i.me = shl nuw nsw i64 %.val310.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mb, ptr nonnull readonly align 4 %.val309.i.i, i64 %i.me, i1 false), !alias.scope !35170, !noalias !35171
  store ptr %i.mb, ptr %i.ls, align 8, !alias.scope !35164, !noalias !35165
  store i64 %.sroa.0104.1.i.i, ptr %i.lt, align 8, !alias.scope !35164, !noalias !35165
  br i1 %i.lv, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i"

.invoke1094.i.i:                                  ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i, %bb.bj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i, %bb.be
  %i.mf = phi i64 [ 0, %bb.be ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i ], [ 0, %bb.bj ]
  %i.mg = phi i64 [ %.sroa.0101.1.i.i, %bb.be ], [ %.sroa.0101.1.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i ], [ %i.ly, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i ], [ %i.ly, %bb.bj ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.mf, i64 %i.mg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont1095.i.i unwind label %bb.az, !noalias !35153

.cont1095.i.i:                                    ; preds = %.invoke1094.i.i
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i": ; preds = %bb.bk
  tail call void @mi_free(ptr noundef nonnull align 4 %.val309.i.i) #38, !noalias !35153
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i"

bb.bl:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i551.i.i", %.thread130.i.i
  br i1 %.sroa.11.0147.i.i, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i", %bb.ct, %bb.bl, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, %.thread163.loopexit.split-lp.loopexit.i.i, %.thread163.loopexit.i.i
  %.pn230.pn202.i.i = phi { ptr, i32 } [ %.pn230155.i.i, %bb.bl ], [ %i.vk, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %i.ut, %bb.ct ], [ %i.vl, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %lpad.loopexit255.i.i, %.thread163.loopexit.i.i ], [ %lpad.loopexit258.i.i, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp259.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.044.0122201.i.i = phi ptr [ %.sroa.044.0148.i.i, %bb.bl ], [ %i.jk, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %i.jk, %bb.ct ], [ %i.jk, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %i.jk, %.thread163.loopexit.i.i ], [ %i.jk, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %.sroa.044.1.ph.ph.ph.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  %.sroa.1335.1123199.i.i = phi i64 [ 0, %bb.bl ], [ %.sroa.0.0.i422.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %.sroa.0.0.i422.i.i, %bb.ct ], [ %.sroa.0.0.i422.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %.sroa.0.0.i422.i.i, %.thread163.loopexit.i.i ], [ %.sroa.0.0.i422.i.i, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %.sroa.1335.2.ph.ph.ph.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.034.1124197.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bl ], [ %.sroa.10.0.i.i.i427895.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %.sroa.10.0.i.i.i427895.i.i, %bb.ct ], [ %.sroa.10.0.i.i.i427895.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %.sroa.10.0.i.i.i427895.i.i, %.thread163.loopexit.i.i ], [ %.sroa.10.0.i.i.i427895.i.i, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %.sroa.034.2.ph.ph.ph.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.12.3125195.i.i = phi i64 [ %.sroa.12.3151.i.i, %bb.bl ], [ %.sroa.12.2569.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %.sroa.12.5.i.i, %bb.ct ], [ %.sroa.12.2569.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %.sroa.12.2569.i.i, %.thread163.loopexit.i.i ], [ %.sroa.12.2569.i.i, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %.sroa.12.4.ph.ph.ph.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.026.3126193.i.i = phi ptr [ %.sroa.026.3152.i.i, %bb.bl ], [ %.sroa.026.2570.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %.sroa.026.5.i.i, %bb.ct ], [ %.sroa.026.2570.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %.sroa.026.2570.i.i, %.thread163.loopexit.i.i ], [ %.sroa.026.2570.i.i, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %.sroa.026.4.ph.ph.ph.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.14.4127191.i.i = phi i64 [ %.sroa.14.4153.i.i, %bb.bl ], [ %.sroa.14.7.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %.sroa.14.7.i.i, %bb.ct ], [ %.sroa.14.3571.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %.sroa.14.3571.i.i, %.thread163.loopexit.i.i ], [ %.sroa.14.3571.i.i, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %.sroa.14.5.ph.ph.ph.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.016.4128189.i.i = phi ptr [ %.sroa.016.4154.i.i, %bb.bl ], [ %.sroa.016.7.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %.sroa.016.7.i.i, %bb.ct ], [ %.sroa.016.3572.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %.sroa.016.3572.i.i, %.thread163.loopexit.i.i ], [ %.sroa.016.3572.i.i, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %.sroa.016.5.ph.ph.ph.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.0122201.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.044.0122201.i.i) #38, !noalias !35153
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i"

bb.bm:                                            ; preds = %bb.bp, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i"
  %i.mh = phi i64 [ 1, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i" ], [ %i.mo, %bb.bp ] ; 4 uses
  %.sroa.0107.0614.i.i = phi i32 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i" ], [ %.sroa.0107.1.i.i, %bb.bp ]
  %.sroa.0109.0613.i.i = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i" ], [ %.sroa.0109.1.i.i, %bb.bp ] ; 8 uses
  %.sroa.0113.0612.i.i = phi i8 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i" ], [ %.sroa.0113.1.i.i, %bb.bp ] ; 2 uses
  %.sroa.0143.0611.i.i = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i" ], [ %i.mh, %bb.bp ] ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %.sroa.0143.0611.i.i
  %i.mj = load i32, ptr %i.mi, align 4, !noalias !35153, !noundef !45
  %i.mk = add i32 %i.mj, %.sroa.0107.0614.i.i     ; 2 uses
  %i.ml = icmp eq i64 %i.mh, %.sroa.0.0.i.i       ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %.sroa.0143.0611.i.i
  %.pre835.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !noalias !35153 ; 2 uses
  br i1 %i.ml, label %._crit_edge834.i.i, label %bb.bo

bb.bn:                                            ; preds = %bb.cv, %bb.co, %bb.ci
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.mh
  %i.mn = load i32, ptr %i.mm, align 4, !noalias !35153, !noundef !45
  %.not223.i.i = icmp eq i32 %.pre835.i.i, %i.mn
  br i1 %.not223.i.i, label %bb.bp, label %._crit_edge834.i.i

bb.bp:                                            ; preds = %bb.bs, %bb.bo
  %.sroa.0113.1.i.i = phi i8 [ %.sroa.0.0.i511.i.i, %bb.bs ], [ %.sroa.0113.0612.i.i, %bb.bo ] ; 2 uses
  %.sroa.0109.1.i.i = phi i64 [ %i.nb, %bb.bs ], [ %.sroa.0109.0613.i.i, %bb.bo ] ; 2 uses
  %.sroa.0107.1.i.i = phi i32 [ 0, %bb.bs ], [ %i.mk, %bb.bo ]
  %i.mo = add nuw i64 %i.mh, 1
  br i1 %i.ml, label %_ZN6brotli3enc14block_splitter15SplitByteVector17hd353c100c5629803E.exit, label %bb.bm

._crit_edge834.i.i:                               ; preds = %bb.bo, %bb.bm
  %i.mp = zext i32 %.pre835.i.i to i64            ; 3 uses
  %i.mq = icmp samesign ugt i64 %i.uc, %i.mp
  br i1 %i.mq, label %bb.bq, label %.invoke1096.i.i

bb.bq:                                            ; preds = %._crit_edge834.i.i
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.mp
  %i.ms = load i32, ptr %i.mr, align 4, !noalias !35153, !noundef !45
  %i.mt = trunc i32 %i.ms to i8                   ; 2 uses
  %i.mu = icmp ult i64 %.sroa.0109.0613.i.i, %.val270.i.i
  br i1 %i.mu, label %bb.br, label %.invoke1096.i.i

bb.br:                                            ; preds = %bb.bq
  %i.mv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0109.0613.i.i
  store i8 %i.mt, ptr %i.mv, align 1, !noalias !35153
  %i.mw = icmp ult i64 %.sroa.0109.0613.i.i, %.val340.i.i
  br i1 %i.mw, label %bb.bs, label %.invoke1096.i.i

.invoke1096.i.i:                                  ; preds = %bb.br, %bb.bq, %._crit_edge834.i.i
  %i.mx = phi i64 [ %.sroa.0109.0613.i.i, %bb.bq ], [ %i.mp, %._crit_edge834.i.i ], [ %.sroa.0109.0613.i.i, %bb.br ]
  %i.my = phi i64 [ %.val270.i.i, %bb.bq ], [ %i.uc, %._crit_edge834.i.i ], [ %.val340.i.i, %bb.br ]
  %i.mz = phi ptr [ @1549, %bb.bq ], [ @1548, %._crit_edge834.i.i ], [ @1550, %bb.br ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.mx, i64 noundef %i.my, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mz) #43
          to label %.cont1097.i.i unwind label %bb.az, !noalias !35153

.cont1097.i.i:                                    ; preds = %.invoke1096.i.i
  unreachable

bb.bs:                                            ; preds = %bb.br
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.val339.i.i, i64 %.sroa.0109.0613.i.i
  store i32 %i.mk, ptr %i.na, align 4, !noalias !35153
  %.sroa.0.0.i511.i.i = tail call noundef i8 @llvm.umax.i8(i8 %i.mt, i8 %.sroa.0113.0612.i.i)
  %i.nb = add nuw i64 %.sroa.0109.0613.i.i, 1
  br label %bb.bp

bb.bt:                                            ; preds = %bb.bx, %.preheader.split.i.i
  %.sroa.0137.1610.i.i = phi i64 [ 1, %.preheader.split.i.i ], [ %.sroa.0137.1.i.i, %bb.bx ] ; 3 uses
  %.sroa.043.1609.i.i = phi i64 [ 0, %.preheader.split.i.i ], [ %.sroa.043.2.lcssa.i8590819.i, %bb.bx ] ; 4 uses
  %.sroa.084.0608.i.i = phi i32 [ 0, %.preheader.split.i.i ], [ %.sroa.084.1.i.i, %bb.bx ] ; 3 uses
  %.sroa.0137.0607.i.i = phi i64 [ 0, %.preheader.split.i.i ], [ %.sroa.0137.1610.i.i, %bb.bx ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !35153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ak, i8 0, i64 1032, i1 false), !noalias !35153
  store float 3.402000e+38, ptr %i.lh, align 8, !alias.scope !35172, !noalias !35153
end_hunk_2
begin_hunk_3_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.vt = zext i32 %i.vs to i64
  %reass.sub.i = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %.sroa.043.3555.i.i)
  %i.vu = add nuw i64 %reass.sub.i, 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.db, %bb.cz
  %.sroa.043.4.lcssa.i.i = phi i64 [ %.sroa.043.3555.i.i, %bb.cz ], [ %i.wo, %bb.db ] ; 2 uses
  %i.vv = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h56fd6c289f2ade0fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.vm)
          to label %bb.da unwind label %.thread163.loopexit.i.i, !noalias !35153

bb.da:                                            ; preds = %._crit_edge.i.i
  store float %i.vv, ptr %i.vo, align 8, !alias.scope !35201, !noalias !35153
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.0127.0554.i.i
  %i.vx = trunc nuw nsw i64 %.sroa.0127.0554.i.i to i32 ; 2 uses
  store i32 %i.vx, ptr %i.vw, align 4, !noalias !35153
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.0127.0554.i.i
  store i32 %i.vx, ptr %i.vy, align 4, !noalias !35153
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.0127.0554.i.i
  store i32 1, ptr %i.vz, align 4, !noalias !35153
  %i.wa = icmp samesign ult i64 %.sroa.0127.1556.i.i, %.sroa.0.0.i447.i.i ; 2 uses
  %i.wb = zext i1 %i.wa to i64
  %.sroa.0127.1.i.i = add nuw i64 %.sroa.0127.1556.i.i, %i.wb
  br i1 %i.wa, label %.lr.ph557.i.i, label %._crit_edge558.i.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.db, %.lr.ph.preheader.i.i
  %i.wc = phi i64 [ %i.wn, %bb.db ], [ 0, %.lr.ph.preheader.i.i ]
  %i.wd = phi i64 [ %i.wp, %bb.db ], [ 1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.043.4553.i.i = phi i64 [ %i.wo, %bb.db ], [ %.sroa.043.3555.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %exitcond810.not.i.i = icmp eq i64 %i.wd, %i.vu
  br i1 %exitcond810.not.i.i, label %.invoke3842, label %bb.db

.invoke3842:                                      ; preds = %.lr.ph557.i.i, %.lr.ph.i.i
  %i.we = phi i64 [ %.sroa.043.4553.i.i, %.lr.ph.i.i ], [ %i.vp, %.lr.ph557.i.i ]
  %i.wf = phi i64 [ %i.aq, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %.lr.ph557.i.i ]
  %i.wg = phi ptr [ @1565, %.lr.ph.i.i ], [ @1564, %.lr.ph557.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.we, i64 noundef %i.wf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wg) #43
          to label %.cont3843 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !35153

.cont3843:                                        ; preds = %.invoke3842
  unreachable

bb.db:                                            ; preds = %.lr.ph.i.i
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.043.4553.i.i
  %i.wi = load i8, ptr %i.wh, align 1, !alias.scope !35202, !noalias !35192, !noundef !45
  %i.wj = zext i8 %i.wi to i64
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %i.wj ; 2 uses
  %i.wl = load i32, ptr %i.wk, align 4, !alias.scope !35203, !noalias !35153, !noundef !45
  %i.wm = add i32 %i.wl, 1
  store i32 %i.wm, ptr %i.wk, align 4, !alias.scope !35203, !noalias !35153
  %i.wn = add nuw nsw i64 %i.wc, 1                ; 2 uses
  store i64 %i.wn, ptr %i.vn, align 8, !alias.scope !35204, !noalias !35153
  %i.wo = add nuw i64 %.sroa.043.4553.i.i, 1      ; 2 uses
  %i.wp = add nuw nsw i64 %i.wd, 1
  %exitcond811.not.i.i = icmp eq i64 %i.wd, %i.vt
  br i1 %exitcond811.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.dc:                                            ; preds = %bb.df, %bb.al
  %.sroa.047.0551.i.i = phi i64 [ 0, %bb.al ], [ %i.wu, %bb.df ] ; 2 uses
  %.sroa.059.0550.i.i = phi i64 [ 0, %bb.al ], [ %.sroa.059.1.i.i, %bb.df ] ; 5 uses
  %i.wq = icmp ult i64 %.sroa.059.0550.i.i, %.sroa.0.0.i.i
  br i1 %i.wq, label %bb.dd, label %.invoke.i.i

bb.dd:                                            ; preds = %bb.dc
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %.sroa.059.0550.i.i ; 2 uses
  %i.ws = load i32, ptr %i.wr, align 4, !noalias !35153, !noundef !45
  %i.wt = add i32 %i.ws, 1
  store i32 %i.wt, ptr %i.wr, align 4, !noalias !35153
  %i.wu = add nuw i64 %.sroa.047.0551.i.i, 1      ; 3 uses
  %.not889.i.i = icmp eq i64 %i.wu, %i.aq         ; 2 uses
  br i1 %.not889.i.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wv = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.047.0551.i.i
  %i.ww = load i8, ptr %i.wv, align 1, !alias.scope !35149, !noalias !35205, !noundef !45
  %i.wx = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.wu
  %i.wy = load i8, ptr %i.wx, align 1, !alias.scope !35149, !noalias !35205, !noundef !45
  %.not238.i.i = icmp eq i8 %i.ww, %i.wy
  br i1 %.not238.i.i, label %bb.df, label %bb.dg

.invoke.i.i:                                      ; preds = %bb.dc
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0550.i.i, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1566) #43
          to label %.cont.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !35153

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.df:                                            ; preds = %bb.dg, %bb.de
  %.sroa.059.1.i.i = phi i64 [ %i.wz, %bb.dg ], [ %.sroa.059.0550.i.i, %bb.de ]
  br i1 %.not889.i.i, label %.split.i.i, label %bb.dc

bb.dg:                                            ; preds = %bb.de, %bb.dd
  %i.wz = add nuw nsw i64 %.sroa.059.0550.i.i, 1
  br label %bb.df

.thread130.i.i:                                   ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i", %.loopexit.split-lp.i.i, %bb.am
  %.pn230155.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.am ], [ %.pn.i.i, %.loopexit.split-lp.i.i ], [ %.pn906.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.016.4154.i.i = phi ptr [ %.sroa.016.7.i.i, %bb.am ], [ %.sroa.016.6.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.016.6905.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.14.4153.i.i = phi i64 [ %.sroa.14.7.i.i, %bb.am ], [ %.sroa.14.6.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.14.6904.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.026.3152.i.i = phi ptr [ %.sroa.026.4.ph162.i.i, %bb.am ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.12.3151.i.i = phi i64 [ %.sroa.12.4.ph161.i.i, %bb.am ], [ 0, %.loopexit.split-lp.i.i ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.044.0148.i.i = phi ptr [ %.sroa.044.1.ph160.i.i, %bb.am ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ]
  %.sroa.11.0147.i.i = phi i1 [ %.sroa.11.1.ph159.i.i, %bb.am ], [ true, %.loopexit.split-lp.i.i ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ]
  %.sroa.051.0146.i.i = phi ptr [ %i.kk, %bb.am ], [ %.sroa.051.2.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.051.2903.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.1152.0145.i.i = phi i64 [ %i.uc, %bb.am ], [ %.sroa.1152.2.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.1152.2902.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ]
  %i.xa = icmp eq i64 %.sroa.1152.0145.i.i, 0
  br i1 %i.xa, label %bb.bl, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i551.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i551.i.i": ; preds = %.thread130.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0146.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.051.0146.i.i) #38, !noalias !35153
  br label %bb.bl

bb.dh:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i", %bb.af, %.thread86.i.i
  %.pn230.pn.pn.pn.pn.pn90.i.i = phi { ptr, i32 } [ %i.ij, %.thread86.i.i ], [ %.pn230.pn.pn.pn.pn100.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i" ], [ %.pn230.pn.pn.pn.i.i, %bb.af ] ; 2 uses
  %i.xb = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.xb, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit216.i", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread909.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread909.i.i": ; preds = %bb.dh
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i) #38, !noalias !35153
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i": ; preds = %bb.z
  %i.xc = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread909.i.i"
  %i.xd = phi ptr [ %i.ho, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread909.i.i" ], [ %i.hj, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85911.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread909.i.i" ], [ %i.xc, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xd) ]
  tail call void @mi_free(ptr noundef nonnull %i.xd) #38, !noalias !35153
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit216.i"

bb.di:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i, %.split.i
  %.sroa.032.1412.i = phi i64 [ 1, %.split.i ], [ %.sroa.032.1.i, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0411.i = phi i64 [ %spec.store.select.i, %.split.i ], [ %i.anc, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i ] ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35211)
  %i.xe = icmp eq i64 %.sroa.0.0411.i, 0
  br i1 %i.xe, label %.loopexit.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.xf = add i64 %.sroa.0.0411.i, 7
  %i.xg = lshr i64 %i.xf, 3                       ; 8 uses
  %i.xh = icmp eq i64 %.sroa.0.0411.i, 1
  br i1 %i.xh, label %.preheader.i.i.preheader, label %bb.dk

.preheader.i.i.preheader:                         ; preds = %bb.dj
  br i1 %min.iters.check, label %.preheader.i.i.preheader4462, label %vector.body3601

.preheader.i.i.preheader4462:                     ; preds = %vector.body3601, %.preheader.i.i.preheader
  %.ph4463 = phi i64 [ 1, %.preheader.i.i.preheader ], [ %i.hb, %vector.body3601 ]
  %.sroa.066.0449.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %n.vec, %vector.body3601 ]
  br label %.preheader.i.i

vector.body3601:                                  ; preds = %.preheader.i.i.preheader, %vector.body3601
  %index3602 = phi i64 [ %index.next3603, %vector.body3601 ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.fp, i64 %index3602 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  store <16 x i8> zeroinitializer, ptr %i.xi, align 1, !alias.scope !35211, !noalias !35212
  store <16 x i8> zeroinitializer, ptr %i.xj, align 1, !alias.scope !35211, !noalias !35212
  %index.next3603 = add nuw i64 %index3602, 32    ; 2 uses
  %i.xk = icmp eq i64 %index.next3603, %n.vec
  br i1 %i.xk, label %.preheader.i.i.preheader4462, label %vector.body3601, !llvm.loop !34456

bb.dk:                                            ; preds = %bb.dj
  %i.xl = shl nuw nsw i64 %.sroa.0.0411.i, 8      ; 2 uses
  %.not121.i.i = icmp samesign ugt i64 %i.xl, %i.ft
  br i1 %.not121.i.i, label %.invoke1108.i, label %.preheader360.i.i, !prof !87

.invoke1108.i:                                    ; preds = %bb.fv, %.lr.ph403.i.preheader.i, %bb.dk, %bb.dw
  %i.xm = phi i64 [ %i.xg, %bb.dw ], [ %i.xr, %.lr.ph403.i.preheader.i ], [ %i.xl, %bb.dk ], [ %i.anc, %bb.fv ]
  %i.xn = phi i64 [ %i.fs, %bb.dw ], [ %i.ge, %.lr.ph403.i.preheader.i ], [ %i.ft, %bb.dk ], [ %spec.store.select.i, %bb.fv ]
  %i.xo = phi ptr [ @1575, %bb.dw ], [ @1541, %.lr.ph403.i.preheader.i ], [ @1545, %bb.dk ], [ @1928, %bb.fv ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.xm, i64 noundef %i.xn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xo) #43
          to label %.cont1109.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i", !noalias !35111

.cont1109.i:                                      ; preds = %.invoke1108.i
  unreachable

.preheader360.i.i:                                ; preds = %bb.dk
  %.idx.i.i = shl nuw nsw i64 %.sroa.0.0411.i, 10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fv, i8 0, i64 %.idx.i.i, i1 false), !alias.scope !35208, !noalias !35213
  br label %bb.dl

bb.dl:                                            ; preds = %bb.fs, %.preheader360.i.i
  %i.xp = phi i64 [ 1, %.preheader360.i.i ], [ %i.amw, %bb.fs ] ; 4 uses
  %.sroa.069.0399.i.i = phi i64 [ 0, %.preheader360.i.i ], [ %i.xp, %bb.fs ] ; 3 uses
  %exitcond.not.i174.i = icmp eq i64 %i.xp, %i.gr
  br i1 %exitcond.not.i174.i, label %.invoke.i, label %bb.fq

.loopexit358.i.i:                                 ; preds = %bb.fp
  %i.xq = icmp eq i64 %i.xs, 0
  br i1 %i.xq, label %.lr.ph403.i.preheader.i, label %.split.i175.i

.lr.ph403.i.preheader.i:                          ; preds = %.loopexit358.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fz, i8 0, i64 range(i64 0, 417) %i.fy, i1 false), !alias.scope !35209, !noalias !35214
  %i.xr = mul i64 %i.xg, %i.aq                    ; 4 uses
  %.not124.i.i = icmp ugt i64 %i.xr, %i.ge
  br i1 %.not124.i.i, label %.invoke1108.i, label %bb.dm, !prof !87

.split.i175.i:                                    ; preds = %bb.fs, %.loopexit358.i.i
  %.sroa.05.0401.i.i = phi i64 [ %i.xs, %.loopexit358.i.i ], [ 256, %bb.fs ]
  %i.xs = add nsw i64 %.sroa.05.0401.i.i, -1      ; 4 uses
  %invariant.gep.i176.i = getelementptr [4 x i8], ptr %i.bd, i64 %i.xs
  %i.xt = mul i64 %i.xs, %.sroa.0.0411.i
  br label %bb.fn

bb.dm:                                            ; preds = %.lr.ph403.i.preheader.i
  %.not355404.i.i = icmp samesign eq i64 %i.xr, 0
  br i1 %.not355404.i.i, label %.lr.ph434.i.i, label %.lr.ph407.preheader.i.i

.lr.ph407.preheader.i.i:                          ; preds = %bb.dm
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gl, i8 0, i64 %i.xr, i1 false), !alias.scope !35210, !noalias !35215
  br label %.lr.ph434.i.i

.lr.ph434.i.i:                                    ; preds = %bb.dm, %.lr.ph407.preheader.i.i
  %i.xu = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %.not131.i.i = icmp samesign ugt i64 %i.xu, %i.fs
  %.idx451.i.i = shl nuw nsw i64 %i.xu, 5
  %i.xv = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx451.i.i
  %i.xw = icmp eq i64 %i.xu, 0
  %i.xx = and i64 %.sroa.0.0411.i, -8             ; 8 uses
  %i.xy = and i64 %.sroa.0.0411.i, 7              ; 4 uses
  %.not.i.i179.i = icmp samesign ugt i64 %i.xg, %i.fs
  %.idx452.i.i = shl i64 %i.xg, 5                 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx452.i.i
  br i1 %.not131.i.i, label %.lr.ph434.split.us.i.i, label %.lr.ph434.split.preheader.i.i, !prof !47

.lr.ph434.split.preheader.i.i:                    ; preds = %.lr.ph434.i.i
  %.idx453.i.i = shl nuw nsw i64 %i.xy, 2         ; 3 uses
  %i.ya = icmp eq i64 %i.xy, 0
  %i.yb = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %i.yc = icmp samesign ult i64 %i.yb, %i.fs
  %i.yd = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.yb ; 2 uses
  %i.ye = trunc i64 %i.xx to i8
  %i.yf = icmp eq i64 %i.xy, 1                    ; 2 uses
  %.sroa.077.1.idx.i.i = select i1 %i.yf, i64 0, i64 4 ; 3 uses
  %i.yg = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %i.yh = icmp samesign ult i64 %i.yg, %i.fs
  %i.yi = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.yg
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 4 ; 2 uses
  %i.yk = trunc i64 %i.xx to i8
  %i.yl = or disjoint i8 %i.yk, 1
  %i.ym = add nuw nsw i64 %.sroa.077.1.idx.i.i, 4
  %i.yn = icmp samesign eq i64 %i.ym, %.idx453.i.i ; 2 uses
  %.sroa.077.1.idx.i.i.1 = select i1 %i.yn, i64 0, i64 4 ; 2 uses
  %i.yo = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %i.yp = icmp samesign ult i64 %i.yo, %i.fs
  %i.yq = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.yo
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 8 ; 2 uses
  %i.ys = trunc i64 %i.xx to i8
  %i.yt = or disjoint i8 %i.ys, 2
  %i.yu = add nuw nsw i64 %.sroa.077.1.idx.i.i, 4
  %i.yv = add nuw nsw i64 %i.yu, %.sroa.077.1.idx.i.i.1
  %i.yw = icmp samesign eq i64 %i.yv, %.idx453.i.i ; 2 uses
  %.sroa.077.1.idx.i.i.2 = select i1 %i.yw, i64 0, i64 4
  %i.yx = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %i.yy = icmp samesign ult i64 %i.yx, %i.fs
  %i.yz = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.yx
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 12 ; 2 uses
  %i.zb = trunc i64 %i.xx to i8
  %i.zc = or disjoint i8 %i.zb, 3
  %i.zd = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %i.ze = icmp samesign ult i64 %i.zd, %i.fs
  %i.zf = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.zd
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 16 ; 2 uses
  %i.zh = trunc i64 %i.xx to i8
  %i.zi = or disjoint i8 %i.zh, 4
  %i.zj = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %i.zk = icmp samesign ult i64 %i.zj, %i.fs
  %i.zl = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.zj
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 20 ; 2 uses
  %i.zn = trunc i64 %i.xx to i8
  %i.zo = or disjoint i8 %i.zn, 5
  %i.zp = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %i.zq = icmp samesign ult i64 %i.zp, %i.fs
  %i.zr = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.zp
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 24 ; 2 uses
  %i.zt = trunc i64 %i.xx to i8
  %i.zu = or disjoint i8 %i.zt, 6
  %i.zv = add i64 %.idx452.i.i, -32
  %i.zw = lshr exact i64 %i.zv, 5
  br label %.lr.ph434.split.i.i

.lr.ph434.split.us.i.i:                           ; preds = %.lr.ph434.i.i
  %i.zx = load i8, ptr %i.ax, align 1, !alias.scope !35216, !noalias !35217, !noundef !45
  %i.zy = zext i8 %i.zx to i64
  %i.zz = mul nuw nsw i64 %.sroa.0.0411.i, %i.zy
  %.not130.us.i.i = icmp ugt i64 %i.zz, %i.ft
  br i1 %.not130.us.i.i, label %.split438.us.i.i, label %.split440.us.i.i, !prof !47

.split440.us.i.i:                                 ; preds = %.lr.ph434.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !35218
  br label %.split440.us.i.invoke.i

.split440.us.i.invoke.i:                          ; preds = %bb.ev, %bb.et, %bb.du, %bb.ds, %.split438.us.i.i, %.split440.us.i.i
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.ev ], [ %.sink.i.sroa.gep14, %bb.et ], [ %.sink.i.sroa.gep15, %bb.du ], [ %.sink.i.sroa.gep16, %bb.ds ], [ %.sink.i.sroa.gep17, %.split438.us.i.i ], [ %.sink.i.sroa.gep18, %.split440.us.i.i ]
  %.sink.i.sroa.phi19 = phi ptr [ %.sink.i.sroa.gep20, %bb.ev ], [ %.sink.i.sroa.gep21, %bb.et ], [ %.sink.i.sroa.gep22, %bb.du ], [ %.sink.i.sroa.gep23, %bb.ds ], [ %.sink.i.sroa.gep24, %.split438.us.i.i ], [ %.sink.i.sroa.gep25, %.split440.us.i.i ]
  %.sink.i.sroa.phi26 = phi ptr [ %.sink.i.sroa.gep27, %bb.ev ], [ %.sink.i.sroa.gep28, %bb.et ], [ %.sink.i.sroa.gep29, %bb.du ], [ %.sink.i.sroa.gep30, %bb.ds ], [ %.sink.i.sroa.gep31, %.split438.us.i.i ], [ %.sink.i.sroa.gep32, %.split440.us.i.i ]
  %.sink.i.sroa.phi33 = phi ptr [ %.sink.i.sroa.gep34, %bb.ev ], [ %.sink.i.sroa.gep35, %bb.et ], [ %.sink.i.sroa.gep36, %bb.du ], [ %.sink.i.sroa.gep37, %bb.ds ], [ %.sink.i.sroa.gep38, %.split438.us.i.i ], [ %.sink.i.sroa.gep39, %.split440.us.i.i ]
  %.sink.i = phi ptr [ %i.ad, %bb.ev ], [ %i.af, %bb.et ], [ %i.ac, %bb.du ], [ %i.ae, %bb.ds ], [ %i.ah, %.split438.us.i.i ], [ %i.ag, %.split440.us.i.i ] ; 2 uses
  %i.aaa = phi ptr [ @1539, %bb.ev ], [ @1538, %bb.et ], [ @1536, %bb.du ], [ @1535, %bb.ds ], [ @1533, %.split438.us.i.i ], [ @1534, %.split440.us.i.i ]
  store ptr @186, ptr %.sink.i, align 8, !noalias !35218
  store i64 1, ptr %.sink.i.sroa.phi, align 8, !noalias !35218
  store ptr null, ptr %.sink.i.sroa.phi19, align 8, !noalias !35218
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i.sroa.phi26, align 8, !noalias !35218
  store i64 0, ptr %.sink.i.sroa.phi33, align 8, !noalias !35218
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aaa) #43
          to label %.split440.us.i.cont.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i", !noalias !35111

.split440.us.i.cont.i:                            ; preds = %.split440.us.i.invoke.i
  unreachable

_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i: ; preds = %bb.dx
  %i.aab = icmp eq ptr %i.aad, %i.gs
  br i1 %i.aab, label %.lr.ph447.preheader.i.i, label %.lr.ph434.split.i.i

.lr.ph434.split.i.i:                              ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i, %.lr.ph434.split.preheader.i.i
  %.sroa.0.0336432.i.i = phi ptr [ %i.aad, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i ], [ %i.ax, %.lr.ph434.split.preheader.i.i ] ; 2 uses
  %.sroa.7.0431.i.i = phi i64 [ %i.aae, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i ], [ 0, %.lr.ph434.split.preheader.i.i ] ; 7 uses
  %i.aac = mul i64 %i.xg, %.sroa.7.0431.i.i
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.0.0336432.i.i, i64 1 ; 2 uses
  %i.aae = add nuw i64 %.sroa.7.0431.i.i, 1
  %exitcond486.not.i.i = icmp eq i64 %.sroa.7.0431.i.i, %i.aq
  br i1 %exitcond486.not.i.i, label %.invoke.i, label %bb.dq

.lr.ph447.preheader.i.i:                          ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i
  %i.aaf = load i8, ptr %i.gu, align 1, !alias.scope !35211, !noalias !35212, !noundef !45
  %i.aag = mul i64 %i.xg, %i.gt
  br label %.lr.ph447.i.i

.lr.ph447.i.i:                                    ; preds = %bb.dp, %.lr.ph447.preheader.i.i
  %.sroa.03.0446.i.i = phi i64 [ %.sroa.03.1.i.i, %bb.dp ], [ 1, %.lr.ph447.preheader.i.i ] ; 2 uses
  %.sroa.052.0445.i.i = phi i64 [ %i.aah, %bb.dp ], [ %i.gt, %.lr.ph447.preheader.i.i ]
  %.sroa.059.0444.i.i = phi i64 [ %i.aai, %bb.dp ], [ %i.aag, %.lr.ph447.preheader.i.i ]
  %.sroa.061.0443.i.i = phi i8 [ %.sroa.061.1.i.i, %bb.dp ], [ %i.aaf, %.lr.ph447.preheader.i.i ] ; 4 uses
  %i.aah = add nsw i64 %.sroa.052.0445.i.i, -1    ; 4 uses
  %i.aai = sub i64 %.sroa.059.0444.i.i, %i.xg     ; 2 uses
  %i.aaj = lshr i8 %.sroa.061.0443.i.i, 3
  %i.aak = zext nneg i8 %i.aaj to i64
  %i.aal = add i64 %i.aai, %i.aak                 ; 3 uses
  %i.aam = icmp ult i64 %i.aal, %i.ge
  br i1 %i.aam, label %bb.dn, label %.invoke.i

bb.dn:                                            ; preds = %.lr.ph447.i.i
  %i.aan = and i8 %.sroa.061.0443.i.i, 7
  %i.aao = shl nuw i8 1, %i.aan
  %i.aap = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.aal
  %i.aaq = load i8, ptr %i.aap, align 1, !alias.scope !35210, !noalias !35215, !noundef !45
  %i.aar = and i8 %i.aaq, %i.aao
  %i.aas = icmp eq i8 %i.aar, 0
  br i1 %i.aas, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aat = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.aah
  %i.aau = load i8, ptr %i.aat, align 1, !alias.scope !35211, !noalias !35212, !noundef !45 ; 2 uses
  %.not129.i.i = icmp ne i8 %.sroa.061.0443.i.i, %i.aau
  %i.aav = zext i1 %.not129.i.i to i64
  %spec.select137.i.i = add i64 %.sroa.03.0446.i.i, %i.aav
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.sroa.061.1.i.i = phi i8 [ %.sroa.061.0443.i.i, %bb.dn ], [ %i.aau, %bb.do ] ; 2 uses
  %.sroa.03.1.i.i = phi i64 [ %.sroa.03.0446.i.i, %bb.dn ], [ %spec.select137.i.i, %bb.do ] ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.aah
  store i8 %.sroa.061.1.i.i, ptr %i.aaw, align 1, !alias.scope !35211, !noalias !35212
  %.not128.i.i = icmp eq i64 %i.aah, 0
  br i1 %.not128.i.i, label %.loopexit.i, label %.lr.ph447.i.i

bb.dq:                                            ; preds = %.lr.ph434.split.i.i
  %i.aax = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.7.0431.i.i ; 15 uses
  %i.aay = mul i64 %.sroa.7.0431.i.i, %i.xg       ; 3 uses
  %i.aaz = load i8, ptr %.sroa.0.0336432.i.i, align 1, !alias.scope !35216, !noalias !35217, !noundef !45
  %i.aba = zext i8 %i.aaz to i64
  %i.abb = mul nuw nsw i64 %.sroa.0.0411.i, %i.aba ; 4 uses
  %.not130.i.i = icmp ugt i64 %i.abb, %i.ft
  br i1 %.not130.i.i, label %.split438.us.i.i, label %bb.dr, !prof !47

.split438.us.i.i:                                 ; preds = %bb.dq, %.lr.ph434.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !35218
  br label %.split440.us.i.invoke.i

bb.dr:                                            ; preds = %bb.dq
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.abb
  %i.abd = sub nuw nsw i64 %i.ft, %i.abb          ; 2 uses
  br i1 %i.xw, label %._crit_edge416.i.i, label %.lr.ph415.i.i

.lr.ph415.i.i:                                    ; preds = %bb.dr, %bb.fm
  %.sroa.029.0413.i.i = phi float [ %.sroa.029.4.7.i.i, %bb.fm ], [ f0x7E967699, %bb.dr ] ; 2 uses
  %.sroa.0164.0412.i.i = phi ptr [ %i.abe, %bb.fm ], [ %i.fz, %bb.dr ] ; 10 uses
  %.sroa.7166.0411.i.i = phi i64 [ %i.abf, %bb.fm ], [ 0, %bb.dr ] ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 32 ; 2 uses
  %i.abf = add nuw nsw i64 %.sroa.7166.0411.i.i, 1
  %i.abg = shl nuw nsw i64 %.sroa.7166.0411.i.i, 3 ; 11 uses
  %.not136.i.i = icmp samesign ugt i64 %i.abg, %i.abd
  br i1 %.not136.i.i, label %bb.et, label %bb.eu, !prof !47
end_hunk_3
begin_hunk_4_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %.sroa.02.0.idx7.i.i.i64 = phi i64 [ %.sroa.02.0.add.i.i.i66.1, %bb.gq ], [ 0, %bb.gp ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i65 = getelementptr inbounds nuw i8, ptr %i.aua, i64 %.sroa.02.0.idx7.i.i.i64
  %i.auf = load i16, ptr %.sroa.02.0.ptr.i.i.i65, align 2, !alias.scope !35263, !noalias !35264, !noundef !45 ; 2 uses
  %i.aug = zext i16 %i.auf to i64                 ; 2 uses
  %i.auh = icmp ult i16 %i.auf, 704
  br i1 %i.auh, label %.preheader.i.i.i63.1, label %.split32.us.i.invoke.i

.preheader.i.i.i63.1:                             ; preds = %.preheader.i.i.i63
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %i.aty, i64 %i.aug ; 2 uses
  %i.auj = load i32, ptr %i.aui, align 4, !alias.scope !35265, !noalias !35261, !noundef !45
  %i.auk = add i32 %i.auj, 1
  store i32 %i.auk, ptr %i.aui, align 4, !alias.scope !35265, !noalias !35261
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aua, i64 %.sroa.02.0.idx7.i.i.i64
  %.sroa.02.0.ptr.i.i.i65.1 = getelementptr inbounds nuw i8, ptr %i.aul, i64 2
  %i.aum = load i16, ptr %.sroa.02.0.ptr.i.i.i65.1, align 2, !alias.scope !35263, !noalias !35264, !noundef !45 ; 2 uses
  %i.aun = zext i16 %i.aum to i64                 ; 2 uses
  %i.auo = icmp ult i16 %i.aum, 704
  br i1 %i.auo, label %bb.gq, label %.split32.us.i.invoke.i

bb.gq:                                            ; preds = %.preheader.i.i.i63.1
  %.sroa.02.0.add.i.i.i66.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i64, 4 ; 2 uses
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %i.aty, i64 %i.aun ; 2 uses
  %i.auq = load i32, ptr %i.aup, align 4, !alias.scope !35265, !noalias !35261, !noundef !45
  %i.aur = add i32 %i.auq, 1
  store i32 %i.aur, ptr %i.aup, align 4, !alias.scope !35265, !noalias !35261
  %i.aus = icmp eq i64 %.sroa.02.0.add.i.i.i66.1, 80
  br i1 %i.aus, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i, label %.preheader.i.i.i63

.split32.us.i.invoke.i:                           ; preds = %.preheader.i.i.i63, %.preheader.i.i.i63.1, %.preheader.i.i.i.i69, %.preheader.i.i.i.i69.1
  %i.aut = phi i64 [ %i.avq, %.preheader.i.i.i.i69.1 ], [ %i.avj, %.preheader.i.i.i.i69 ], [ %i.aug, %.preheader.i.i.i63 ], [ %i.aun, %.preheader.i.i.i63.1 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aut, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1930) #43
          to label %.split32.us.i.cont.i unwind label %.thread.i60, !noalias !35251

.split32.us.i.cont.i:                             ; preds = %.split32.us.i.invoke.i
  unreachable

.split896:                                        ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35267)
  %i.auu = udiv i64 %i.apg, 40
  %i.auv = add nuw nsw i64 %i.auu, 99
  %i.auw = add nuw nsw i64 %i.auv, %spec.store.select.i44 ; 2 uses
  %i.aux = urem i64 %i.auw, %spec.store.select.i44
  %i.auy = sub nuw nsw i64 %i.auw, %i.aux
  %i.auz = getelementptr inbounds nuw i8, ptr %i.ab, i64 2816 ; 2 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %i.ab, i64 2824
  %i.avb = add nsw i64 %2, -39
  br label %_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i, %.split896
  %.sroa.03.022.i.i = phi i64 [ 0, %.split896 ], [ %i.avc, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i ] ; 2 uses
  %.sroa.0.021.i.i = phi i32 [ 7, %.split896 ], [ %spec.store.select.i.i.i68, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !35268
  %i.avc = add nuw i64 %.sroa.03.022.i.i, 1       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2816) %i.ab, i8 0, i64 2816, i1 false), !noalias !35268
  store float 3.402000e+38, ptr %i.ava, align 8, !alias.scope !35269, !noalias !35268
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35271)
  %i.avd = mul i32 %.sroa.0.021.i.i, 16807
  %i.ave = icmp eq i32 %.sroa.0.021.i.i, 0
  %spec.store.select.i.i.i68 = select i1 %i.ave, i32 1, i32 %i.avd ; 2 uses
  %i.avf = zext i32 %spec.store.select.i.i.i68 to i64
  %i.avg = urem i64 %i.avf, %i.avb
  %i.avh = getelementptr inbounds nuw [2 x i8], ptr %i.apn, i64 %i.avg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35273)
  store i64 40, ptr %i.auz, align 8, !alias.scope !35274, !noalias !35275
  br label %.preheader.i.i.i.i69

.preheader.i.i.i.i69:                             ; preds = %bb.gr, %_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i
  %.sroa.02.0.idx7.i.i.i.i70 = phi i64 [ 0, %_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i ], [ %.sroa.02.0.add.i.i.i.i72.1, %bb.gr ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i71 = getelementptr inbounds nuw i8, ptr %i.avh, i64 %.sroa.02.0.idx7.i.i.i.i70
  %i.avi = load i16, ptr %.sroa.02.0.ptr.i.i.i.i71, align 2, !alias.scope !35276, !noalias !35277, !noundef !45 ; 2 uses
  %i.avj = zext i16 %i.avi to i64                 ; 2 uses
  %i.avk = icmp ult i16 %i.avi, 704
  br i1 %i.avk, label %.preheader.i.i.i.i69.1, label %.split32.us.i.invoke.i

.preheader.i.i.i.i69.1:                           ; preds = %.preheader.i.i.i.i69
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.avj ; 2 uses
  %i.avm = load i32, ptr %i.avl, align 4, !alias.scope !35278, !noalias !35275, !noundef !45
  %i.avn = add i32 %i.avm, 1
  store i32 %i.avn, ptr %i.avl, align 4, !alias.scope !35278, !noalias !35275
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avh, i64 %.sroa.02.0.idx7.i.i.i.i70
  %.sroa.02.0.ptr.i.i.i.i71.1 = getelementptr inbounds nuw i8, ptr %i.avo, i64 2
  %i.avp = load i16, ptr %.sroa.02.0.ptr.i.i.i.i71.1, align 2, !alias.scope !35276, !noalias !35277, !noundef !45 ; 2 uses
  %i.avq = zext i16 %i.avp to i64                 ; 2 uses
  %i.avr = icmp ult i16 %i.avp, 704
  br i1 %i.avr, label %bb.gr, label %.split32.us.i.invoke.i

bb.gr:                                            ; preds = %.preheader.i.i.i.i69.1
  %.sroa.02.0.add.i.i.i.i72.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i.i70, 4 ; 2 uses
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.avq ; 2 uses
  %i.avt = load i32, ptr %i.avs, align 4, !alias.scope !35278, !noalias !35275, !noundef !45
  %i.avu = add i32 %i.avt, 1
  store i32 %i.avu, ptr %i.avs, align 4, !alias.scope !35278, !noalias !35275
  %i.avv = icmp eq i64 %.sroa.02.0.add.i.i.i.i72.1, 80
  br i1 %i.avv, label %vector.ph3677, label %.preheader.i.i.i.i69

vector.ph3677:                                    ; preds = %bb.gr
  %i.avw = urem i64 %.sroa.03.022.i.i, %spec.store.select.i44
  %i.avx = getelementptr inbounds nuw [2832 x i8], ptr %i.arv, i64 %i.avw ; 3 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 2816 ; 2 uses
  %i.avz = load i64, ptr %i.avy, align 8, !alias.scope !35279, !noalias !35280, !noundef !45
  %i.awa = load i64, ptr %i.auz, align 8, !alias.scope !35281, !noalias !35268, !noundef !45
  %i.awb = add i64 %i.awa, %i.avz
  store i64 %i.awb, ptr %i.avy, align 8, !alias.scope !35282, !noalias !35283
  br label %vector.body3678

vector.body3678:                                  ; preds = %vector.body3678, %vector.ph3677
  %index3679 = phi i64 [ 0, %vector.ph3677 ], [ %index.next3684.1, %vector.body3678 ] ; 4 uses
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %i.avx, i64 %index3679 ; 3 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 16 ; 2 uses
  %wide.load3680 = load <4 x i32>, ptr %i.awc, align 4, !alias.scope !35267, !noalias !35283
  %wide.load3681 = load <4 x i32>, ptr %i.awd, align 4, !alias.scope !35267, !noalias !35283
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index3679 ; 2 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 16
  %wide.load3682 = load <4 x i32>, ptr %i.awe, align 8, !noalias !35268
  %wide.load3683 = load <4 x i32>, ptr %i.awf, align 8, !noalias !35268
  %i.awg = add <4 x i32> %wide.load3682, %wide.load3680
  %i.awh = add <4 x i32> %wide.load3683, %wide.load3681
  store <4 x i32> %i.awg, ptr %i.awc, align 4, !alias.scope !35267, !noalias !35283
  store <4 x i32> %i.awh, ptr %i.awd, align 4, !alias.scope !35267, !noalias !35283
  %index.next3684 = or disjoint i64 %index3679, 8 ; 2 uses
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.avx, i64 %index.next3684 ; 3 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 16 ; 2 uses
  %wide.load3680.1 = load <4 x i32>, ptr %i.awi, align 4, !alias.scope !35267, !noalias !35283
  %wide.load3681.1 = load <4 x i32>, ptr %i.awj, align 4, !alias.scope !35267, !noalias !35283
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index.next3684 ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 16
  %wide.load3682.1 = load <4 x i32>, ptr %i.awk, align 8, !noalias !35268
  %wide.load3683.1 = load <4 x i32>, ptr %i.awl, align 8, !noalias !35268
  %i.awm = add <4 x i32> %wide.load3682.1, %wide.load3680.1
  %i.awn = add <4 x i32> %wide.load3683.1, %wide.load3681.1
  store <4 x i32> %i.awm, ptr %i.awi, align 4, !alias.scope !35267, !noalias !35283
  store <4 x i32> %i.awn, ptr %i.awj, align 4, !alias.scope !35267, !noalias !35283
  %index.next3684.1 = add nuw nsw i64 %index3679, 16 ; 2 uses
  %i.awo = icmp eq i64 %index.next3684.1, 704
  br i1 %i.awo, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i, label %vector.body3678, !llvm.loop !34565

_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i: ; preds = %vector.body3678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !35268
  %exitcond35.not.i.i = icmp eq i64 %i.avc, %i.auy
  br i1 %exitcond35.not.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i73, label %_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i73: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35284
  %i.awp = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35284 ; 15 uses
  %i.awq = icmp eq ptr %i.awp, null
  br i1 %i.awq, label %bb.gs, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i

bb.gs:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i73
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc143.i unwind label %.thread.i60, !noalias !35251

.noexc143.i:                                      ; preds = %bb.gs
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i73
  %i.awr = add nuw nsw i64 %i.arq, 8
  %i.aws = lshr i64 %i.awr, 3                     ; 19 uses
  %i.awt = mul nuw nsw i64 %spec.store.select.i44, 704 ; 8 uses
  %i.awu = mul nuw nsw i64 %spec.store.select.i44, 2816 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35285
  %i.awv = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.awu, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35285 ; 9 uses
  %i.aww = icmp eq ptr %i.awv, null
  br i1 %i.aww, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.awu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc147.i unwind label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.thread.i", !noalias !35251

.noexc147.i:                                      ; preds = %bb.gt
  unreachable

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.thread.i": ; preds = %bb.gt
  %i.awx = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.awp) #38, !noalias !35251
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit.i"

bb.gu:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i
  %i.awy = shl nuw nsw i64 %i.aws, 5              ; 4 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35286
  %i.awz = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.awy, i64 noundef range(i64 1, 9) 4) #38, !noalias !35286 ; 24 uses
  %i.axa = icmp eq ptr %i.awz, null
  br i1 %i.axa, label %bb.gv, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i74"

bb.gv:                                            ; preds = %bb.gu
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.awy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc150.i unwind label %.thread39.i417, !noalias !35251

.noexc150.i:                                      ; preds = %bb.gv
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i74": ; preds = %bb.gu
  %i.axb = icmp samesign ugt i64 %2, 4239
  br i1 %i.axb, label %.lr.ph.i.i.i148.preheader.i, label %.loopexit108.i

.lr.ph.i.i.i148.preheader.i:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i74"
  %i.axc = add nsw i64 %i.awy, -32                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.awz, i8 0, i64 range(i64 0, 193) %i.axc, i1 false), !noalias !35251
  %scevgep.i416 = getelementptr i8, ptr %i.awz, i64 %i.axc
  br label %.loopexit108.i

.thread39.i417:                                   ; preds = %bb.gv
  %i.axd = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i93"

.loopexit108.i:                                   ; preds = %.lr.ph.i.i.i148.preheader.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i74"
  %.sroa.0.0.lcssa.i.i.i.i75 = phi ptr [ %i.awz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i74" ], [ %scevgep.i416, %.lr.ph.i.i.i148.preheader.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.0.lcssa.i.i.i.i75, i8 0, i64 32, i1 false), !noalias !35251
  %i.axe = mul i64 %i.aws, %2                     ; 11 uses
  %i.axf = icmp slt i64 %i.axe, 0
  br i1 %i.axf, label %bb.gy, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i: ; preds = %.loopexit108.i
  %i.axg = icmp eq i64 %i.axe, 0                  ; 3 uses
  br i1 %i.axg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i, label %bb.gw

bb.gw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35287
  %i.axh = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.axe, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35287 ; 2 uses
  %i.axi = icmp eq ptr %i.axh, null
  br i1 %i.axi, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.axj = ptrtoint ptr %i.axh to i64
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i

bb.gy:                                            ; preds = %bb.gw, %.loopexit108.i
  %.sroa.4.0.ph.i.i153.i = phi i64 [ 1, %bb.gw ], [ 0, %.loopexit108.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i153.i, i64 %i.axe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc154.i unwind label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i415", !noalias !35251

.noexc154.i:                                      ; preds = %bb.gy
  unreachable

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i415": ; preds = %bb.gy
  %i.axk = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.awz) #38, !noalias !35251
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i93"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i: ; preds = %bb.gx, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i
  %.sroa.10.0.i.i152.i = phi i64 [ %i.axj, %bb.gx ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i ]
  %i.axl = inttoptr i64 %.sroa.10.0.i.i152.i to ptr ; 8 uses
  %i.axm = shl nuw nsw i64 %spec.store.select.i44, 1 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35288
  %i.axn = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.axm, i64 noundef range(i64 1, -9223372036854775807) 2) #38, !noalias !35288 ; 4 uses
  %i.axo = icmp eq ptr %i.axn, null
  br i1 %i.axo, label %bb.gz, label %.split.i76

bb.gz:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.axm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc160.i unwind label %.thread55.i414, !noalias !35251

.noexc160.i:                                      ; preds = %bb.gz
  unreachable

.thread55.i414:                                   ; preds = %bb.gz
  %i.axp = landingpad { ptr, i32 }
          cleanup
  br label %bb.nh

.split.i76:                                       ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i
  %i.axq = icmp slt i32 %.72.val, 12
  %..i77 = select i1 %i.axq, i64 3, i64 10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.axl) ]
  %i.axr = add nuw nsw i64 %i.arq, 2              ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.apn, i64 %i.apg
  %i.axt = add nsw i64 %2, -1                     ; 4 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %i.awp, i64 %i.axt
  %i.axv = add nuw nsw i64 %2, 1
  %i.axw = call i64 @llvm.umin.i64(i64 %2, i64 %i.axt) ; 2 uses
  %min.iters.check3687 = icmp samesign ult i64 %i.axw, 32
  %i.axx = add nuw nsw i64 %i.axw, 1              ; 2 uses
  %i.axy = and i64 %i.axx, 31                     ; 2 uses
  %i.axz = icmp eq i64 %i.axy, 0
  %i.aya = select i1 %i.axz, i64 32, i64 %i.axy
  %n.vec3689 = sub nsw i64 %i.axx, %i.aya         ; 3 uses
  %i.ayb = add i64 %n.vec3689, 1
  br label %bb.kq

_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i: ; preds = %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i
  %i.ayc = icmp samesign ult i64 %.sroa.032.1430.i, %..i77 ; 2 uses
  %i.ayd = zext i1 %i.ayc to i64
  %.sroa.032.1.i204 = add nuw nsw i64 %.sroa.032.1430.i, %i.ayd
  br i1 %i.ayc, label %bb.kq, label %bb.ha

.body.i404:                                       ; preds = %bb.hd
  %lpad.thr_comm.split-lp.i405 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.i"

bb.ha:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i
  tail call void @mi_free(ptr noundef nonnull align 4 %i.awv) #38, !noalias !35251
  tail call void @mi_free(ptr noundef nonnull align 4 %i.awz) #38, !noalias !35251
  br i1 %i.axg, label %bb.hb, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i162.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i162.i": ; preds = %bb.ha
  tail call void @mi_free(ptr noundef nonnull align 1 %i.axl) #38, !noalias !35251
  br label %bb.hb

bb.hb:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i162.i", %bb.ha
  tail call void @mi_free(ptr noundef nonnull align 2 %i.axn) #38, !noalias !35251
  tail call void @mi_free(ptr noundef nonnull align 8 %i.arv) #38, !noalias !35251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35291)
  %i.aye = shl i64 %.sroa.0.0.i.i202, 2           ; 6 uses
  %i.ayf = icmp ugt i64 %.sroa.0.0.i.i202, 4611686018427387903
  %i.ayg = icmp ugt i64 %i.aye, 9223372036854775804
  %or.cond.i.i.i.i.i165.i = or i1 %i.ayf, %i.ayg
  br i1 %or.cond.i.i.i.i.i165.i, label %bb.hd, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i: ; preds = %bb.hb
  %i.ayh = icmp eq i64 %i.aye, 0
  br i1 %i.ayh, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i406, label %bb.hc

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i406: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i
  %i.ayi = icmp samesign ult i64 %.sroa.0.0.i.i202, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ayi)
  br label %bb.hg

bb.hc:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35292
  %i.ayj = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aye, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35292 ; 3 uses
  %i.ayk = icmp eq ptr %i.ayj, null
  br i1 %i.ayk, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.sroa.4.0.ph.i.i.i170.i = phi i64 [ 4, %bb.hc ], [ 0, %bb.hb ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i170.i, i64 %i.aye, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc171.i unwind label %.body.i404, !noalias !35251

.noexc171.i:                                      ; preds = %bb.hd
  unreachable

bb.he:                                            ; preds = %bb.hc
  %i.ayl = icmp samesign ult i64 %.sroa.0.0.i.i202, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ayl)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35293
  %i.aym = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aye, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35293 ; 2 uses
  %i.ayn = icmp eq ptr %i.aym, null
  br i1 %i.ayn, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.aye, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc413.i.i403 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i", !noalias !35294

.noexc413.i.i403:                                 ; preds = %bb.hf
  unreachable

bb.hg:                                            ; preds = %bb.he, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i406
  %i.ayo = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i406 ], [ %i.ayj, %bb.he ] ; 10 uses
  %.sroa.10.0.i.i411.i.i205 = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i406 ], [ %i.aym, %bb.he ] ; 6 uses
  %i.ayp = shl i64 %.sroa.0.0.i.i202, 4
  %i.ayq = add i64 %i.ayp, 1008                   ; 3 uses
  %i.ayr = lshr i64 %i.ayq, 6                     ; 17 uses
  %i.ays = mul i64 %i.ayr, 2832                   ; 3 uses
  %or.cond.i.i.i.i.i.i.i206 = icmp ugt i64 %i.ayq, 208437786143610815
  br i1 %or.cond.i.i.i.i.i.i.i206, label %bb.hi, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i207, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i207: ; preds = %bb.hg
  %i.ayt = icmp eq i64 %i.ays, 0
  br i1 %i.ayt, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i.i", label %bb.hh

bb.hh:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i207
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35295
  %i.ayu = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ays, i64 noundef range(i64 1, 9) 8) #38, !noalias !35295 ; 2 uses
  %i.ayv = icmp eq ptr %i.ayu, null
  br i1 %i.ayv, label %bb.hi, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i.i"

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %.sroa.4.0.ph.i.i.i.i.i400 = phi i64 [ 8, %bb.hh ], [ 0, %bb.hg ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i400, i64 %i.ays, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc415.i.i402 unwind label %.thread86.i.i401, !noalias !35294

.noexc415.i.i402:                                 ; preds = %bb.hi
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i.i": ; preds = %bb.hh, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i207
  %.sroa.10.0.i.i.i.i.i208 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i207 ], [ %i.ayu, %bb.hh ] ; 8 uses
  %.sroa.4.0.i.i.i.i.i209 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i207 ], [ %i.ayr, %bb.hh ]
  %i.ayw = icmp samesign ule i64 %i.ayr, %.sroa.4.0.i.i.i.i.i209
  tail call void @llvm.assume(i1 %i.ayw)
  %i.ayx = icmp samesign ugt i64 %i.ayq, 127
  br i1 %i.ayx, label %.lr.ph.i.i.i.i.i395.preheader, label %._crit_edge.i.i.i.i.i210

.lr.ph.i.i.i.i.i395.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i.i"
  %i.ayy = add nsw i64 %i.ayr, -1                 ; 2 uses
  %i.ayz = add nsw i64 %i.ayr, -2
  %xtraiter4565 = and i64 %i.ayy, 7               ; 3 uses
  %i.aza = icmp ult i64 %i.ayz, 7
  br i1 %i.aza, label %.lr.ph.i.i.i.i.i395.epil.preheader, label %.lr.ph.i.i.i.i.i395.preheader.new

.lr.ph.i.i.i.i.i395.preheader.new:                ; preds = %.lr.ph.i.i.i.i.i395.preheader
  %unroll_iter4570 = and i64 %i.ayy, -8
  br label %.lr.ph.i.i.i.i.i395

end_hunk_4
begin_hunk_5_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
.lr.ph.i.i.i434.i.i218:                           ; preds = %.lr.ph.i.i.i434.i.i218, %.lr.ph.i.i.i434.i.i218.preheader.new
  %.sroa.0.08.i.i.i435.i.i219 = phi ptr [ %i.azw, %.lr.ph.i.i.i434.i.i218.preheader.new ], [ %i.baj, %.lr.ph.i.i.i434.i.i218 ] ; 17 uses
  %niter4578 = phi i64 [ 0, %.lr.ph.i.i.i434.i.i218.preheader.new ], [ %niter4578.next.7, %.lr.ph.i.i.i434.i.i218 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i435.i.i219, i8 0, i64 2824, i1 false), !noalias !35294
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221, align 8, !noalias !35299
  %i.bac = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bac, i8 0, i64 2824, i1 false), !noalias !35294
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.1, align 8, !noalias !35299
  %i.bad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bad, i8 0, i64 2824, i1 false), !noalias !35294
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.2, align 8, !noalias !35299
  %i.bae = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bae, i8 0, i64 2824, i1 false), !noalias !35294
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.3, align 8, !noalias !35299
  %i.baf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.baf, i8 0, i64 2824, i1 false), !noalias !35294
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.4, align 8, !noalias !35299
  %i.bag = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bag, i8 0, i64 2824, i1 false), !noalias !35294
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.5, align 8, !noalias !35299
  %i.bah = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bah, i8 0, i64 2824, i1 false), !noalias !35294
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.6, align 8, !noalias !35299
  %i.bai = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bai, i8 0, i64 2824, i1 false), !noalias !35294
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.7, align 8, !noalias !35299
  %i.baj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 22656 ; 3 uses
  %niter4578.next.7 = add i64 %niter4578, 8       ; 2 uses
  %niter4578.ncmp.7 = icmp eq i64 %niter4578.next.7, %unroll_iter4577
  br i1 %niter4578.ncmp.7, label %._crit_edge.thread.i.i.i431.i.i223.loopexit.unr-lcssa, label %.lr.ph.i.i.i434.i.i218

._crit_edge.i.i.i429.thread.i.i226:               ; preds = %._crit_edge.thread.i.i.i431.i.i223, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i215
  %.sroa.10.0.i.i.i427913.i.i = phi ptr [ %i.azw, %._crit_edge.thread.i.i.i431.i.i223 ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i215 ] ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35300
  %i.bak = tail call noundef ptr @mi_malloc_aligned(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #38, !noalias !35300 ; 16 uses
  %i.bal = icmp eq ptr %i.bak, null
  br i1 %i.bal, label %bb.hp, label %bb.hr

bb.hp:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i226
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc444.i.i391 unwind label %bb.hq, !noalias !35294

.noexc444.i.i391:                                 ; preds = %bb.hp
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i246": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i237", %bb.hq
  %.sroa.1335.0.i.i247 = phi i64 [ %.sroa.0.0.i422.i.i217, %bb.hq ], [ %.sroa.1335.1123199.i.i240, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i237" ]
  %.sroa.034.0.i.i248 = phi ptr [ %.sroa.10.0.i.i.i427913.i.i, %bb.hq ], [ %.sroa.034.1124197.i.i241, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i237" ] ; 2 uses
  %.sroa.12.1.i.i249 = phi i64 [ %i.ayr, %bb.hq ], [ %.sroa.12.3125195.i.i242, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i237" ] ; 2 uses
  %.sroa.026.1.i.i250 = phi ptr [ %i.azt, %bb.hq ], [ %.sroa.026.3126193.i.i243, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i237" ] ; 2 uses
  %.sroa.14.2.i.i251 = phi i64 [ %i.ayr, %bb.hq ], [ %.sroa.14.4127191.i.i244, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i237" ] ; 2 uses
  %.sroa.016.2.i.i252 = phi ptr [ %.sroa.10.0.i.i.i.i.i208, %bb.hq ], [ %.sroa.016.4128189.i.i245, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i237" ] ; 2 uses
  %.pn230.pn.pn.i.i253 = phi { ptr, i32 } [ %i.ban, %bb.hq ], [ %.pn230.pn202.i.i238, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i237" ] ; 2 uses
  %i.bam = icmp eq i64 %.sroa.1335.0.i.i247, 0
  br i1 %i.bam, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i254"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i254": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i246"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.i.i248) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.034.0.i.i248) #38, !noalias !35294
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i"

bb.hq:                                            ; preds = %bb.hp
  %i.ban = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i246"

bb.hr:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.bak, i8 0, i64 32784, i1 false), !noalias !35294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !35294
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.aa, i8 0, i64 256, i1 false), !noalias !35294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !35294
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.z, i8 0, i64 256, i1 false), !noalias !35294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !35294
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.y, i8 0, i64 256, i1 false), !noalias !35294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !35294
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.x, i8 0, i64 256, i1 false), !noalias !35294
  br label %bb.kk

.split.i.i268:                                    ; preds = %bb.kn, %._crit_edge582.i.loopexit.i
  %indvars.iv.i.i269 = phi i64 [ %indvars.iv.next.i.i292, %._crit_edge582.i.loopexit.i ], [ %.sroa.0.0.i.i202, %bb.kn ] ; 2 uses
  %.sroa.0.0593.i.i = phi i64 [ %.sroa.0.1.lcssa.i.i289, %._crit_edge582.i.loopexit.i ], [ 0, %bb.kn ] ; 4 uses
  %.sroa.012.0592.i.i = phi i64 [ %.sroa.012.1.i.i283, %._crit_edge582.i.loopexit.i ], [ %i.ayr, %bb.kn ] ; 7 uses
  %.sroa.018.0591.i.i = phi i64 [ %.sroa.018.1.lcssa.i.i288, %._crit_edge582.i.loopexit.i ], [ 0, %bb.kn ] ; 4 uses
  %.sroa.023.0590.i.i = phi i64 [ %.sroa.023.1.i.i286, %._crit_edge582.i.loopexit.i ], [ %i.ayr, %bb.kn ] ; 7 uses
  %.sroa.029.0589.i.i = phi i64 [ %i.blj, %._crit_edge582.i.loopexit.i ], [ 0, %bb.kn ] ; 2 uses
  %.sroa.043.0588.i.i = phi i64 [ %.sroa.043.4.lcssa.i.i275, %._crit_edge582.i.loopexit.i ], [ 0, %bb.kn ]
  %.sroa.047.1587.i.i = phi i64 [ %i.blk, %._crit_edge582.i.loopexit.i ], [ 0, %bb.kn ] ; 4 uses
  %.sroa.016.3586.i.i = phi ptr [ %.sroa.016.7.i.i282, %._crit_edge582.i.loopexit.i ], [ %.sroa.10.0.i.i.i.i.i208, %bb.kn ] ; 9 uses
  %.sroa.14.3585.i.i = phi i64 [ %.sroa.14.7.i.i281, %._crit_edge582.i.loopexit.i ], [ %i.ayr, %bb.kn ] ; 9 uses
  %.sroa.026.2584.i.i = phi ptr [ %.sroa.026.5.i.i285, %._crit_edge582.i.loopexit.i ], [ %i.azt, %bb.kn ] ; 11 uses
  %.sroa.12.2583.i.i = phi i64 [ %.sroa.12.5.i.i284, %._crit_edge582.i.loopexit.i ], [ %i.ayr, %bb.kn ] ; 11 uses
  %i.bao = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i269, i64 1)
  %umax838.i.i = tail call i64 @llvm.umin.i64(i64 %i.bao, i64 64)
  %i.bap = sub nuw nsw i64 %.sroa.0.0.i.i202, %.sroa.047.1587.i.i
  %.sroa.0.0.i447.i.i270 = tail call noundef i64 @llvm.umin.i64(i64 %i.bap, i64 64) ; 3 uses
  br label %.lr.ph571.i.i

.thread163.loopexit.i.i276:                       ; preds = %._crit_edge.i.i274
  %lpad.loopexit255.i.i277 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i237"

.thread163.loopexit.split-lp.loopexit.i.i279:     ; preds = %._crit_edge572.i.loopexit.i
  %lpad.loopexit258.i.i280 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i237"

.thread163.loopexit.split-lp.loopexit.split-lp.i.i228: ; preds = %.invoke3848, %.invoke3846, %.invoke.i.i227, %bb.ju, %bb.jn, %bb.hz, %bb.hv
  %.sroa.044.1.ph.ph.ph.i.i229 = phi ptr [ %i.bak, %bb.hv ], [ %.sroa.044.2.i.i295, %bb.hz ], [ %i.bak, %.invoke.i.i227 ], [ %i.bak, %bb.jn ], [ %i.bak, %.invoke3846 ], [ %i.bak, %bb.ju ], [ %i.bak, %.invoke3848 ]
  %.sroa.1335.2.ph.ph.ph.i.i230 = phi i64 [ 0, %bb.hv ], [ 0, %bb.hz ], [ %.sroa.0.0.i422.i.i217, %.invoke.i.i227 ], [ %.sroa.0.0.i422.i.i217, %bb.jn ], [ %.sroa.0.0.i422.i.i217, %.invoke3846 ], [ %.sroa.0.0.i422.i.i217, %bb.ju ], [ %.sroa.0.0.i422.i.i217, %.invoke3848 ]
  %.sroa.034.2.ph.ph.ph.i.i231 = phi ptr [ inttoptr (i64 8 to ptr), %bb.hv ], [ inttoptr (i64 8 to ptr), %bb.hz ], [ %.sroa.10.0.i.i.i427913.i.i, %.invoke.i.i227 ], [ %.sroa.10.0.i.i.i427913.i.i, %bb.jn ], [ %.sroa.10.0.i.i.i427913.i.i, %.invoke3846 ], [ %.sroa.10.0.i.i.i427913.i.i, %bb.ju ], [ %.sroa.10.0.i.i.i427913.i.i, %.invoke3848 ]
  %.sroa.12.4.ph.ph.ph.i.i232 = phi i64 [ %.sroa.12.5.i.i284, %bb.hv ], [ %.sroa.12.5.i.i284, %bb.hz ], [ %i.ayr, %.invoke.i.i227 ], [ %.sroa.12.2583.i.i, %bb.jn ], [ %.sroa.12.2583.i.i, %.invoke3846 ], [ %.sroa.12.2583.i.i, %bb.ju ], [ %.sroa.12.5.i.i284, %.invoke3848 ]
  %.sroa.026.4.ph.ph.ph.i.i233 = phi ptr [ %.sroa.026.5.i.i285, %bb.hv ], [ %.sroa.026.5.i.i285, %bb.hz ], [ %i.azt, %.invoke.i.i227 ], [ %.sroa.026.2584.i.i, %bb.jn ], [ %.sroa.026.2584.i.i, %.invoke3846 ], [ %.sroa.026.2584.i.i, %bb.ju ], [ %.sroa.026.5.i.i285, %.invoke3848 ]
  %.sroa.14.5.ph.ph.ph.i.i234 = phi i64 [ %.sroa.14.7.i.i281, %bb.hv ], [ %.sroa.14.7.i.i281, %bb.hz ], [ %i.ayr, %.invoke.i.i227 ], [ %.sroa.14.3585.i.i, %bb.jn ], [ %.sroa.14.3585.i.i, %.invoke3846 ], [ %.sroa.14.7.i.i281, %bb.ju ], [ %.sroa.14.7.i.i281, %.invoke3848 ]
  %.sroa.016.5.ph.ph.ph.i.i235 = phi ptr [ %.sroa.016.7.i.i282, %bb.hv ], [ %.sroa.016.7.i.i282, %bb.hz ], [ %.sroa.10.0.i.i.i.i.i208, %.invoke.i.i227 ], [ %.sroa.016.3586.i.i, %bb.jn ], [ %.sroa.016.3586.i.i, %.invoke3846 ], [ %.sroa.016.7.i.i282, %bb.ju ], [ %.sroa.016.7.i.i282, %.invoke3848 ]
  %lpad.loopexit.split-lp259.i.i236 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i237"

bb.hs:                                            ; preds = %bb.ie, %._crit_edge598.i.i
  %.sroa.11.1.ph159.i.i300 = phi i1 [ true, %bb.ie ], [ false, %._crit_edge598.i.i ]
  %.sroa.044.1.ph160.i.i301 = phi ptr [ inttoptr (i64 4 to ptr), %bb.ie ], [ %.sroa.044.2.i.i295, %._crit_edge598.i.i ]
  %.sroa.12.4.ph161.i.i302 = phi i64 [ 0, %bb.ie ], [ %.sroa.12.5.i.i284, %._crit_edge598.i.i ]
  %.sroa.026.4.ph162.i.i303 = phi ptr [ inttoptr (i64 4 to ptr), %bb.ie ], [ %.sroa.026.5.i.i285, %._crit_edge598.i.i ]
  %lpad.thr_comm.split-lp.i.i304 = landingpad { ptr, i32 }
          cleanup
  br label %.thread130.i.i305

bb.ht:                                            ; preds = %._crit_edge582.i.loopexit.i
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i427913.i.i) #38, !noalias !35294
  %i.baq = shl i64 %i.blj, 6
  %i.bar = lshr i64 %i.blj, 1
  %i.bas = mul i64 %i.bar, %i.blj
  %.sroa.0.0.i448.i.i293 = tail call noundef i64 @llvm.umin.i64(i64 %i.bas, i64 %i.baq) ; 5 uses
  %i.bat = add nuw i64 %.sroa.0.0.i448.i.i293, 1  ; 2 uses
  %i.bau = icmp ugt i64 %.sroa.0.0.i448.i.i293, 2048
  br i1 %i.bau, label %bb.hu, label %bb.hw

bb.hu:                                            ; preds = %bb.ht
  %i.bav = shl i64 %i.bat, 4                      ; 5 uses
  %i.baw = icmp ugt i64 %.sroa.0.0.i448.i.i293, 1152921504606846974
  %i.bax = icmp ugt i64 %i.bav, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i374 = or i1 %i.baw, %i.bax
  br i1 %or.cond.i.i.i.i.i449.i.i374, label %bb.hv, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i375, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i375: ; preds = %bb.hu
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35301
  %i.bay = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.bav, i64 noundef range(i64 1, 9) 4) #38, !noalias !35301 ; 5 uses
  %i.baz = icmp eq ptr %i.bay, null
  br i1 %i.baz, label %bb.hv, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i376"

bb.hv:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i375, %bb.hu
  %.sroa.4.0.ph.i.i.i455.i.i381 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i375 ], [ 0, %bb.hu ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i381, i64 %i.bav, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc456.i.i382 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i228, !noalias !35294

.noexc456.i.i382:                                 ; preds = %bb.hv
  unreachable

bb.hw:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i376", %bb.ht
  %.sroa.11.2.i.i294 = phi i64 [ %i.bat, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i376" ], [ 2049, %bb.ht ]
  %.sroa.044.2.i.i295 = phi ptr [ %i.bay, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i376" ], [ %i.bak, %bb.ht ] ; 4 uses
  %i.bba = shl i64 %i.blj, 2                      ; 9 uses
  %i.bbb = icmp ugt i64 %i.blj, 4611686018427387903
  %i.bbc = icmp ugt i64 %i.bba, 9223372036854775804
  %or.cond.i.i.i.i458.i.i296 = or i1 %i.bbb, %i.bbc
  br i1 %or.cond.i.i.i.i458.i.i296, label %bb.hz, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i297, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i297: ; preds = %bb.hw
  %i.bbd = icmp eq i64 %i.bba, 0                  ; 2 uses
  br i1 %i.bbd, label %bb.ia, label %bb.hx

bb.hx:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i297
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35302
  %i.bbe = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.bba, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35302 ; 2 uses
  %i.bbf = icmp eq ptr %i.bbe, null
  br i1 %i.bbf, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.bbg = ptrtoint ptr %i.bbe to i64
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hx, %bb.hw
  %.sroa.4.0.ph.i.i461.i.i372 = phi i64 [ 4, %bb.hx ], [ 0, %bb.hw ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i372, i64 %i.bba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc462.i.i373 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i228, !noalias !35294

.noexc462.i.i373:                                 ; preds = %bb.hz
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i376": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i375
  %i.bbh = add nsw i64 %i.bav, -16                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bay, i8 0, i64 range(i64 0, -31) %i.bbh, i1 false), !noalias !35303
  %i.bbi = getelementptr i8, ptr %i.bay, i64 %i.bav ; 2 uses
  %scevgep11.i451.i.i377 = getelementptr i8, ptr %i.bay, i64 %i.bbh
  store i32 0, ptr %scevgep11.i451.i.i377, align 4, !noalias !35303
  %.sroa.55.0..sroa_idx.i452.i.i378 = getelementptr i8, ptr %i.bbi, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i378, align 4, !noalias !35303
  %.sroa.67.0..sroa_idx.i453.i.i379 = getelementptr i8, ptr %i.bbi, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i379, align 4, !noalias !35303
  %i.bbj = icmp samesign ult i64 %.sroa.0.0.i448.i.i293, 576460752303423487
  tail call void @llvm.assume(i1 %i.bbj)
  tail call void @mi_free(ptr noundef nonnull align 4 %i.bak) #38, !noalias !35294
  br label %bb.hw

bb.ia:                                            ; preds = %bb.hy, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i297
  %.sroa.10.0.i.i460.i.i298 = phi i64 [ %i.bbg, %bb.hy ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i297 ]
  %i.bbk = inttoptr i64 %.sroa.10.0.i.i460.i.i298 to ptr ; 13 uses
  %i.bbl = icmp samesign ult i64 %i.blj, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bbl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bbk) ]
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbk, i64 %i.bba
  %i.bbn = icmp eq i64 %i.blj, 0                  ; 3 uses
  br i1 %i.bbn, label %._crit_edge598.i.i, label %.lr.ph597.i.i.preheader

.lr.ph597.i.i.preheader:                          ; preds = %bb.ia
  %i.bbo = add nsw i64 %i.bba, -4                 ; 2 uses
  %i.bbp = lshr exact i64 %i.bbo, 2
  %i.bbq = add nuw nsw i64 %i.bbp, 1              ; 2 uses
  %min.iters.check3717 = icmp ult i64 %i.bbo, 28
  br i1 %min.iters.check3717, label %.lr.ph597.i.i.preheader4115, label %vector.ph3718

vector.ph3718:                                    ; preds = %.lr.ph597.i.i.preheader
  %n.vec3719 = and i64 %i.bbq, 9223372036854775800 ; 4 uses
  %i.bbr = trunc i64 %n.vec3719 to i32
  %i.bbs = shl i64 %n.vec3719, 2
  %i.bbt = getelementptr i8, ptr %i.bbk, i64 %i.bbs
  br label %vector.body3720

vector.body3720:                                  ; preds = %vector.body3720, %vector.ph3718
  %index3721 = phi i64 [ 0, %vector.ph3718 ], [ %index.next3725, %vector.body3720 ] ; 2 uses
  %vec.ind3722 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3718 ], [ %vec.ind.next3726, %vector.body3720 ] ; 3 uses
  %step.add3723 = add <4 x i32> %vec.ind3722, splat (i32 4)
  %i.bbu = shl i64 %index3721, 2
  %next.gep3724 = getelementptr i8, ptr %i.bbk, i64 %i.bbu ; 2 uses
  %i.bbv = getelementptr i8, ptr %next.gep3724, i64 16
  store <4 x i32> %vec.ind3722, ptr %next.gep3724, align 4, !noalias !35294
  store <4 x i32> %step.add3723, ptr %i.bbv, align 4, !noalias !35294
  %index.next3725 = add nuw i64 %index3721, 8     ; 2 uses
  %vec.ind.next3726 = add <4 x i32> %vec.ind3722, splat (i32 8)
  %i.bbw = icmp eq i64 %index.next3725, %n.vec3719
  br i1 %i.bbw, label %middle.block3727, label %vector.body3720, !llvm.loop !34645

middle.block3727:                                 ; preds = %vector.body3720
  %cmp.n3728 = icmp eq i64 %i.bbq, %n.vec3719
  br i1 %cmp.n3728, label %._crit_edge598.i.i, label %.lr.ph597.i.i.preheader4115

.lr.ph597.i.i.preheader4115:                      ; preds = %.lr.ph597.i.i.preheader, %middle.block3727
  %.sroa.047.2595.i.i.ph = phi i32 [ 0, %.lr.ph597.i.i.preheader ], [ %i.bbr, %middle.block3727 ]
  %.sroa.0135.0594.i.i.ph = phi ptr [ %i.bbk, %.lr.ph597.i.i.preheader ], [ %i.bbt, %middle.block3727 ]
  br label %.lr.ph597.i.i

.lr.ph597.i.i:                                    ; preds = %.lr.ph597.i.i.preheader4115, %.lr.ph597.i.i
  %.sroa.047.2595.i.i = phi i32 [ %i.bbx, %.lr.ph597.i.i ], [ %.sroa.047.2595.i.i.ph, %.lr.ph597.i.i.preheader4115 ] ; 2 uses
  %.sroa.0135.0594.i.i = phi ptr [ %.sroa.0135.1.i.i299, %.lr.ph597.i.i ], [ %.sroa.0135.0594.i.i.ph, %.lr.ph597.i.i.preheader4115 ] ; 2 uses
  %.sroa.0135.1.i.i299 = getelementptr inbounds nuw i8, ptr %.sroa.0135.0594.i.i, i64 4 ; 2 uses
  store i32 %.sroa.047.2595.i.i, ptr %.sroa.0135.0594.i.i, align 4, !noalias !35294
  %i.bbx = add i32 %.sroa.047.2595.i.i, 1
  %i.bby = icmp eq ptr %.sroa.0135.1.i.i299, %i.bbm
  br i1 %i.bby, label %._crit_edge598.i.i, label %.lr.ph597.i.i, !llvm.loop !34646

._crit_edge598.i.i:                               ; preds = %.lr.ph597.i.i, %middle.block3727, %bb.ia
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i282) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i285) ]
  %i.bbz = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h357bcc83faeb8dfbE(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i282, i64 noundef %.sroa.14.7.i.i281, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i285, i64 noundef %.sroa.12.5.i.i284, ptr noalias noundef nonnull align 4 %i.ayo, i64 noundef %.sroa.0.0.i.i202, ptr noalias noundef nonnull align 4 %i.bbk, i64 noundef %i.blj, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i295, i64 noundef %.sroa.11.2.i.i294, i64 noundef %i.blj, i64 noundef %.sroa.0.0.i.i202, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i293)
          to label %bb.ib unwind label %bb.hs, !noalias !35294 ; 3 uses

bb.ib:                                            ; preds = %._crit_edge598.i.i
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.044.2.i.i295) #38, !noalias !35294
  %i.bca = icmp eq i64 %.sroa.12.5.i.i284, 0
  br i1 %i.bca, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i316, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i315"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i315": ; preds = %bb.ib
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.5.i.i285) #38, !noalias !35294
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i316

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i316: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i315", %bb.ib
  br i1 %i.bbd, label %bb.ig, label %bb.ic

bb.ic:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i316
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35304
  %i.bcb = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.bba, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35304 ; 2 uses
  %i.bcc = icmp eq ptr %i.bcb, null
  br i1 %i.bcc, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.bcd = ptrtoint ptr %i.bcb to i64
  br label %bb.ig

bb.ie:                                            ; preds = %bb.ic
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.bba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc472.i.i371 unwind label %bb.hs, !noalias !35294

.noexc472.i.i371:                                 ; preds = %bb.ie
  unreachable

bb.if:                                            ; preds = %.invoke1132.i.i, %.invoke1130.i.i
  %i.bce = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i321

bb.ig:                                            ; preds = %bb.id, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i316
  %.sroa.10.0.i.i470.i.i317 = phi i64 [ %i.bcd, %bb.id ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i316 ]
  %i.bcf = inttoptr i64 %.sroa.10.0.i.i470.i.i317 to ptr ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bcf) ]
  br i1 %i.bbn, label %.preheader.split.i.i318, label %.lr.ph601.preheader.i.i

.lr.ph601.preheader.i.i:                          ; preds = %bb.ig
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bcf, i8 -1, i64 range(i64 0, 9223372036854775805) %i.bba, i1 false), !noalias !35294
  br label %.preheader.split.i.i318

.preheader.split.i.i318:                          ; preds = %.lr.ph601.preheader.i.i, %bb.ig
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.w, i64 2816 ; 2 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %i.w, i64 2824
  %i.bci = getelementptr inbounds nuw i8, ptr %i.u, i64 2816 ; 3 uses
  %.not1137.i.i = icmp eq i64 %i.bbz, 0           ; 2 uses
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.v, i64 2816 ; 3 uses
  br label %bb.iz

bb.ih:                                            ; preds = %bb.jd
  tail call void @mi_free(ptr noundef nonnull align 4 %i.bbk) #38, !noalias !35294
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.016.7.i.i282) #38, !noalias !35294
  %.val365.i.i346 = load ptr, ptr %8, align 8, !alias.scope !35305, !noalias !35306, !nonnull !45, !align !55, !noundef !45 ; 3 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.val366.i.i347 = load i64, ptr %i.bck, align 8, !alias.scope !35305, !noalias !35306, !noundef !45 ; 5 uses
  %i.bcl = icmp ult i64 %.val366.i.i347, %.sroa.0.0.i.i202
  br i1 %i.bcl, label %bb.ii, label %bb.im

bb.ii:                                            ; preds = %bb.ih
  %i.bcm = icmp eq i64 %.val366.i.i347, 0         ; 2 uses
  %spec.select.i169.i = select i1 %i.bcm, i64 %.sroa.0.0.i.i202, i64 %.val366.i.i347
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ij, %bb.ii
  %.sroa.0101.1.i.i366 = phi i64 [ %spec.select.i169.i, %bb.ii ], [ %i.bco, %bb.ij ] ; 9 uses
  %i.bcn = icmp ult i64 %.sroa.0101.1.i.i366, %.sroa.0.0.i.i202
  %i.bco = shl nuw nsw i64 %.sroa.0101.1.i.i366, 1
  br i1 %i.bcn, label %bb.ij, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.bcp = icmp slt i64 %.sroa.0101.1.i.i366, 0
  br i1 %i.bcp, label %.invoke1130.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i367, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i367: ; preds = %bb.ik
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35307
  %i.bcq = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.0101.1.i.i366, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35307 ; 5 uses
  %i.bcr = icmp eq ptr %i.bcq, null
  br i1 %i.bcr, label %.invoke1130.i.i, label %bb.il

bb.il:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i367
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bcq, ptr nonnull readonly align 1 %.val365.i.i346, i64 %.val366.i.i347, i1 false), !alias.scope !35308, !noalias !35309
  store ptr %i.bcq, ptr %8, align 8, !alias.scope !35305, !noalias !35306
  store i64 %.sroa.0101.1.i.i366, ptr %i.bck, align 8, !alias.scope !35305, !noalias !35306
  br i1 %i.bcm, label %bb.im, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i368"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i368": ; preds = %bb.il
  tail call void @mi_free(ptr noundef nonnull align 1 %.val365.i.i346) #38, !noalias !35294
  br label %bb.im

bb.im:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i368", %bb.il, %bb.ih
  %.val.i.i348 = phi ptr [ %.val365.i.i346, %bb.ih ], [ %i.bcq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i368" ], [ %i.bcq, %bb.il ]
  %.val270.i.i349 = phi i64 [ %.val366.i.i347, %bb.ih ], [ %.sroa.0101.1.i.i366, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i368" ], [ %.sroa.0101.1.i.i366, %bb.il ] ; 2 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.val309.i.i350 = load ptr, ptr %i.bcs, align 8, !alias.scope !35305, !noalias !35306, !nonnull !45, !align !70, !noundef !45 ; 3 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.val310.i.i351 = load i64, ptr %i.bct, align 8, !alias.scope !35305, !noalias !35306, !noundef !45 ; 5 uses
  %i.bcu = icmp ult i64 %.val310.i.i351, %.sroa.0.0.i.i202
  br i1 %i.bcu, label %bb.in, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i352"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i352": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i365", %bb.iq, %bb.im
  %.val339.i.i353 = phi ptr [ %.val309.i.i350, %bb.im ], [ %i.bdb, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i365" ], [ %i.bdb, %bb.iq ]
  %.val340.i.i354 = phi i64 [ %.val310.i.i351, %bb.im ], [ %.sroa.0104.1.i.i362, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i365" ], [ %.sroa.0104.1.i.i362, %bb.iq ] ; 2 uses
  br label %bb.is

bb.in:                                            ; preds = %bb.im
  %i.bcv = icmp eq i64 %.val310.i.i351, 0         ; 2 uses
  %spec.select247.i.i361 = select i1 %i.bcv, i64 %.sroa.0.0.i.i202, i64 %.val310.i.i351
  br label %bb.io

bb.io:                                            ; preds = %bb.io, %bb.in
  %.sroa.0104.1.i.i362 = phi i64 [ %spec.select247.i.i361, %bb.in ], [ %i.bcx, %bb.io ] ; 8 uses
  %i.bcw = icmp ult i64 %.sroa.0104.1.i.i362, %.sroa.0.0.i.i202
  %i.bcx = shl nuw nsw i64 %.sroa.0104.1.i.i362, 1
  br i1 %i.bcw, label %bb.io, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.bcy = shl i64 %.sroa.0104.1.i.i362, 2        ; 4 uses
  %i.bcz = icmp ugt i64 %.sroa.0104.1.i.i362, 4611686018427387903
  %i.bda = icmp ugt i64 %i.bcy, 9223372036854775804
  %or.cond.i.i.i.i484.i.i363 = or i1 %i.bcz, %i.bda
  br i1 %or.cond.i.i.i.i484.i.i363, label %.invoke1130.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i364, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i364: ; preds = %bb.ip
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35310
  %i.bdb = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.bcy, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35310 ; 5 uses
  %i.bdc = icmp eq ptr %i.bdb, null
  br i1 %i.bdc, label %.invoke1130.i.i, label %bb.iq

bb.iq:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i364
  %i.bdd = icmp samesign ult i64 %.sroa.0104.1.i.i362, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bdd)
  %i.bde = shl nuw nsw i64 %.val310.i.i351, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bdb, ptr nonnull readonly align 4 %.val309.i.i350, i64 %i.bde, i1 false), !alias.scope !35311, !noalias !35312
  store ptr %i.bdb, ptr %i.bcs, align 8, !alias.scope !35305, !noalias !35306
  store i64 %.sroa.0104.1.i.i362, ptr %i.bct, align 8, !alias.scope !35305, !noalias !35306
  br i1 %i.bcv, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i352", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i365"

.invoke1130.i.i:                                  ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i364, %bb.ip, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i367, %bb.ik
  %i.bdf = phi i64 [ 0, %bb.ik ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i367 ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i364 ], [ 0, %bb.ip ]
  %i.bdg = phi i64 [ %.sroa.0101.1.i.i366, %bb.ik ], [ %.sroa.0101.1.i.i366, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i367 ], [ %i.bcy, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i364 ], [ %i.bcy, %bb.ip ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.bdf, i64 %i.bdg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont1131.i.i unwind label %bb.if, !noalias !35294

.cont1131.i.i:                                    ; preds = %.invoke1130.i.i
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i365": ; preds = %bb.iq
  tail call void @mi_free(ptr noundef nonnull align 4 %.val309.i.i350) #38, !noalias !35294
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i352"

bb.ir:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i", %.thread130.i.i305
  br i1 %.sroa.11.0147.i.i312, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i237"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i237": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i", %bb.ka, %bb.ir, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i228, %.thread163.loopexit.split-lp.loopexit.i.i279, %.thread163.loopexit.i.i276
  %.pn230.pn202.i.i238 = phi { ptr, i32 } [ %.pn230155.i.i306, %bb.ir ], [ %i.bmr, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %i.bma, %bb.ka ], [ %i.bms, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %lpad.loopexit255.i.i277, %.thread163.loopexit.i.i276 ], [ %lpad.loopexit258.i.i280, %.thread163.loopexit.split-lp.loopexit.i.i279 ], [ %lpad.loopexit.split-lp259.i.i236, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i228 ]
  %.sroa.044.0122201.i.i239 = phi ptr [ %.sroa.044.0148.i.i311, %bb.ir ], [ %i.bak, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %i.bak, %bb.ka ], [ %i.bak, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %i.bak, %.thread163.loopexit.i.i276 ], [ %i.bak, %.thread163.loopexit.split-lp.loopexit.i.i279 ], [ %.sroa.044.1.ph.ph.ph.i.i229, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i228 ] ; 2 uses
  %.sroa.1335.1123199.i.i240 = phi i64 [ 0, %bb.ir ], [ %.sroa.0.0.i422.i.i217, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %.sroa.0.0.i422.i.i217, %bb.ka ], [ %.sroa.0.0.i422.i.i217, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %.sroa.0.0.i422.i.i217, %.thread163.loopexit.i.i276 ], [ %.sroa.0.0.i422.i.i217, %.thread163.loopexit.split-lp.loopexit.i.i279 ], [ %.sroa.1335.2.ph.ph.ph.i.i230, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i228 ]
  %.sroa.034.1124197.i.i241 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ir ], [ %.sroa.10.0.i.i.i427913.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %.sroa.10.0.i.i.i427913.i.i, %bb.ka ], [ %.sroa.10.0.i.i.i427913.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %.sroa.10.0.i.i.i427913.i.i, %.thread163.loopexit.i.i276 ], [ %.sroa.10.0.i.i.i427913.i.i, %.thread163.loopexit.split-lp.loopexit.i.i279 ], [ %.sroa.034.2.ph.ph.ph.i.i231, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i228 ]
  %.sroa.12.3125195.i.i242 = phi i64 [ %.sroa.12.3151.i.i310, %bb.ir ], [ %.sroa.12.2583.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %.sroa.12.5.i.i284, %bb.ka ], [ %.sroa.12.2583.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %.sroa.12.2583.i.i, %.thread163.loopexit.i.i276 ], [ %.sroa.12.2583.i.i, %.thread163.loopexit.split-lp.loopexit.i.i279 ], [ %.sroa.12.4.ph.ph.ph.i.i232, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i228 ]
  %.sroa.026.3126193.i.i243 = phi ptr [ %.sroa.026.3152.i.i309, %bb.ir ], [ %.sroa.026.2584.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %.sroa.026.5.i.i285, %bb.ka ], [ %.sroa.026.2584.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %.sroa.026.2584.i.i, %.thread163.loopexit.i.i276 ], [ %.sroa.026.2584.i.i, %.thread163.loopexit.split-lp.loopexit.i.i279 ], [ %.sroa.026.4.ph.ph.ph.i.i233, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i228 ]
  %.sroa.14.4127191.i.i244 = phi i64 [ %.sroa.14.4153.i.i308, %bb.ir ], [ %.sroa.14.7.i.i281, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %.sroa.14.7.i.i281, %bb.ka ], [ %.sroa.14.3585.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %.sroa.14.3585.i.i, %.thread163.loopexit.i.i276 ], [ %.sroa.14.3585.i.i, %.thread163.loopexit.split-lp.loopexit.i.i279 ], [ %.sroa.14.5.ph.ph.ph.i.i234, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i228 ]
  %.sroa.016.4128189.i.i245 = phi ptr [ %.sroa.016.4154.i.i307, %bb.ir ], [ %.sroa.016.7.i.i282, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %.sroa.016.7.i.i282, %bb.ka ], [ %.sroa.016.3586.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %.sroa.016.3586.i.i, %.thread163.loopexit.i.i276 ], [ %.sroa.016.3586.i.i, %.thread163.loopexit.split-lp.loopexit.i.i279 ], [ %.sroa.016.5.ph.ph.ph.i.i235, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i228 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.0122201.i.i239) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.044.0122201.i.i239) #38, !noalias !35294
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i246"

bb.is:                                            ; preds = %bb.iv, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i352"
  %i.bdh = phi i64 [ 1, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i352" ], [ %i.bdo, %bb.iv ] ; 4 uses
  %.sroa.0107.0624.i.i = phi i32 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i352" ], [ %.sroa.0107.1.i.i360, %bb.iv ]
  %.sroa.0109.0623.i.i = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i352" ], [ %.sroa.0109.1.i.i359, %bb.iv ] ; 8 uses
  %.sroa.0113.0622.i.i = phi i8 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i352" ], [ %.sroa.0113.1.i.i358, %bb.iv ] ; 2 uses
  %.sroa.0143.0621.i.i = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i352" ], [ %i.bdh, %bb.iv ] ; 2 uses
  %i.bdi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i205, i64 %.sroa.0143.0621.i.i
  %i.bdj = load i32, ptr %i.bdi, align 4, !noalias !35294, !noundef !45
  %i.bdk = add i32 %i.bdj, %.sroa.0107.0624.i.i   ; 2 uses
  %i.bdl = icmp eq i64 %i.bdh, %.sroa.0.0.i.i202  ; 2 uses
  %.phi.trans.insert.i.i355 = getelementptr inbounds nuw [4 x i8], ptr %i.ayo, i64 %.sroa.0143.0621.i.i
  %.pre855.i.i = load i32, ptr %.phi.trans.insert.i.i355, align 4, !noalias !35294 ; 2 uses
  br i1 %i.bdl, label %._crit_edge854.i.i, label %bb.iu

bb.it:                                            ; preds = %bb.kc, %bb.jv, %bb.jp
  unreachable

bb.iu:                                            ; preds = %bb.is
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %i.ayo, i64 %i.bdh
  %i.bdn = load i32, ptr %i.bdm, align 4, !noalias !35294, !noundef !45
  %.not223.i.i356 = icmp eq i32 %.pre855.i.i, %i.bdn
  br i1 %.not223.i.i356, label %bb.iv, label %._crit_edge854.i.i

bb.iv:                                            ; preds = %bb.iy, %bb.iu
  %.sroa.0113.1.i.i358 = phi i8 [ %.sroa.0.0.i511.i.i357, %bb.iy ], [ %.sroa.0113.0622.i.i, %bb.iu ] ; 2 uses
  %.sroa.0109.1.i.i359 = phi i64 [ %i.beb, %bb.iy ], [ %.sroa.0109.0623.i.i, %bb.iu ] ; 2 uses
  %.sroa.0107.1.i.i360 = phi i32 [ 0, %bb.iy ], [ %i.bdk, %bb.iu ]
  %i.bdo = add nuw i64 %i.bdh, 1
  br i1 %i.bdl, label %_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit, label %bb.is

._crit_edge854.i.i:                               ; preds = %bb.iu, %bb.is
  %i.bdp = zext i32 %.pre855.i.i to i64           ; 3 uses
  %i.bdq = icmp samesign ugt i64 %i.blj, %i.bdp
  br i1 %i.bdq, label %bb.iw, label %.invoke1132.i.i

bb.iw:                                            ; preds = %._crit_edge854.i.i
  %i.bdr = getelementptr inbounds nuw [4 x i8], ptr %i.bcf, i64 %i.bdp
  %i.bds = load i32, ptr %i.bdr, align 4, !noalias !35294, !noundef !45
  %i.bdt = trunc i32 %i.bds to i8                 ; 2 uses
  %i.bdu = icmp ult i64 %.sroa.0109.0623.i.i, %.val270.i.i349
  br i1 %i.bdu, label %bb.ix, label %.invoke1132.i.i

bb.ix:                                            ; preds = %bb.iw
  %i.bdv = getelementptr inbounds nuw i8, ptr %.val.i.i348, i64 %.sroa.0109.0623.i.i
  store i8 %i.bdt, ptr %i.bdv, align 1, !noalias !35294
  %i.bdw = icmp ult i64 %.sroa.0109.0623.i.i, %.val340.i.i354
  br i1 %i.bdw, label %bb.iy, label %.invoke1132.i.i

.invoke1132.i.i:                                  ; preds = %bb.ix, %bb.iw, %._crit_edge854.i.i
  %i.bdx = phi i64 [ %.sroa.0109.0623.i.i, %bb.iw ], [ %i.bdp, %._crit_edge854.i.i ], [ %.sroa.0109.0623.i.i, %bb.ix ]
  %i.bdy = phi i64 [ %.val270.i.i349, %bb.iw ], [ %i.blj, %._crit_edge854.i.i ], [ %.val340.i.i354, %bb.ix ]
  %i.bdz = phi ptr [ @1549, %bb.iw ], [ @1548, %._crit_edge854.i.i ], [ @1550, %bb.ix ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bdx, i64 noundef %i.bdy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bdz) #43
          to label %.cont1133.i.i unwind label %bb.if, !noalias !35294

.cont1133.i.i:                                    ; preds = %.invoke1132.i.i
  unreachable

bb.iy:                                            ; preds = %bb.ix
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %.val339.i.i353, i64 %.sroa.0109.0623.i.i
  store i32 %i.bdk, ptr %i.bea, align 4, !noalias !35294
  %.sroa.0.0.i511.i.i357 = tail call noundef i8 @llvm.umax.i8(i8 %i.bdt, i8 %.sroa.0113.0622.i.i)
  %i.beb = add nuw i64 %.sroa.0109.0623.i.i, 1
  br label %bb.iv

bb.iz:                                            ; preds = %bb.jd, %.preheader.split.i.i318
  %.sroa.0137.1620.i.i = phi i64 [ 1, %.preheader.split.i.i318 ], [ %.sroa.0137.1.i.i345, %bb.jd ] ; 3 uses
  %.sroa.043.1619.i.i = phi i64 [ 0, %.preheader.split.i.i318 ], [ %.sroa.043.2.lcssa918923.i864.i, %bb.jd ] ; 3 uses
  %.sroa.084.0618.i.i = phi i32 [ 0, %.preheader.split.i.i318 ], [ %.sroa.084.1.i.i344, %bb.jd ] ; 3 uses
  %.sroa.0137.0617.i.i = phi i64 [ 0, %.preheader.split.i.i318 ], [ %.sroa.0137.1620.i.i, %bb.jd ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !35294
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.w, i8 0, i64 2824, i1 false), !noalias !35294
  store float 3.402000e+38, ptr %i.bch, align 8, !alias.scope !35313, !noalias !35294
end_hunk_5
begin_hunk_6_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.bnc = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17ha8491ed593501ad1E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2832) %i.bmt)
          to label %bb.kh unwind label %.thread163.loopexit.i.i276, !noalias !35294

bb.kh:                                            ; preds = %._crit_edge.i.i274
  store float %i.bnc, ptr %i.bmv, align 8, !alias.scope !35344, !noalias !35294
  %i.bnd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.0127.0568.i.i
  %i.bne = trunc nuw nsw i64 %.sroa.0127.0568.i.i to i32 ; 2 uses
  store i32 %i.bne, ptr %i.bnd, align 4, !noalias !35294
  %i.bnf = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.0127.0568.i.i
  store i32 %i.bne, ptr %i.bnf, align 4, !noalias !35294
  %i.bng = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.sroa.0127.0568.i.i
  store i32 1, ptr %i.bng, align 4, !noalias !35294
  %i.bnh = icmp samesign ult i64 %.sroa.0127.1570.i.i, %.sroa.0.0.i447.i.i270 ; 2 uses
  %i.bni = zext i1 %i.bnh to i64
  %.sroa.0127.1.i.i278 = add nuw i64 %.sroa.0127.1570.i.i, %i.bni
  br i1 %i.bnh, label %.lr.ph571.i.i, label %._crit_edge572.i.loopexit.i

.lr.ph.i.i273:                                    ; preds = %bb.kj, %.lr.ph.preheader.i.i271
  %i.bnj = phi i64 [ %i.bnx, %bb.kj ], [ 1, %.lr.ph.preheader.i.i271 ] ; 3 uses
  %.sroa.043.4567.i.i = phi i64 [ %i.bnw, %bb.kj ], [ %.sroa.043.3569.i.i, %.lr.ph.preheader.i.i271 ] ; 3 uses
  %exitcond830.not.i.i = icmp eq i64 %i.bnj, %i.bnb
  br i1 %exitcond830.not.i.i, label %.invoke3846, label %bb.ki

bb.ki:                                            ; preds = %.lr.ph.i.i273
  %i.bnk = getelementptr inbounds nuw [2 x i8], ptr %i.apn, i64 %.sroa.043.4567.i.i
  %i.bnl = load i16, ptr %i.bnk, align 2, !alias.scope !35345, !noalias !35333, !noundef !45 ; 2 uses
  %i.bnm = zext i16 %i.bnl to i64                 ; 2 uses
  %i.bnn = icmp ult i16 %i.bnl, 704
  br i1 %i.bnn, label %bb.kj, label %.invoke3846

.invoke3846:                                      ; preds = %.lr.ph571.i.i, %bb.ki, %.lr.ph.i.i273
  %i.bno = phi i64 [ %.sroa.043.4567.i.i, %.lr.ph.i.i273 ], [ %i.bnm, %bb.ki ], [ %i.bmw, %.lr.ph571.i.i ]
  %i.bnp = phi i64 [ %2, %.lr.ph.i.i273 ], [ 704, %bb.ki ], [ %.sroa.0.0.i.i202, %.lr.ph571.i.i ]
  %i.bnq = phi ptr [ @1565, %.lr.ph.i.i273 ], [ @1929, %bb.ki ], [ @1564, %.lr.ph571.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bno, i64 noundef %i.bnp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bnq) #43
          to label %.cont3847 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i228, !noalias !35294

.cont3847:                                        ; preds = %.invoke3846
  unreachable

bb.kj:                                            ; preds = %bb.ki
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %i.bmt, i64 %i.bnm ; 2 uses
  %i.bns = load i32, ptr %i.bnr, align 4, !alias.scope !35346, !noalias !35294, !noundef !45
  %i.bnt = add i32 %i.bns, 1
  store i32 %i.bnt, ptr %i.bnr, align 4, !alias.scope !35346, !noalias !35294
  %i.bnu = load i64, ptr %i.bmu, align 8, !alias.scope !35347, !noalias !35294, !noundef !45
  %i.bnv = add i64 %i.bnu, 1
  store i64 %i.bnv, ptr %i.bmu, align 8, !alias.scope !35348, !noalias !35294
  %i.bnw = add nuw i64 %.sroa.043.4567.i.i, 1     ; 2 uses
  %i.bnx = add nuw nsw i64 %i.bnj, 1
  %exitcond831.not.i.i = icmp eq i64 %i.bnj, %i.bna
  br i1 %exitcond831.not.i.i, label %._crit_edge.i.i274, label %.lr.ph.i.i273

bb.kk:                                            ; preds = %bb.kn, %bb.hr
  %.sroa.047.0565.i.i = phi i64 [ 0, %bb.hr ], [ %i.boc, %bb.kn ] ; 2 uses
  %.sroa.059.0564.i.i = phi i64 [ 0, %bb.hr ], [ %.sroa.059.1.i.i267, %bb.kn ] ; 5 uses
  %i.bny = icmp ult i64 %.sroa.059.0564.i.i, %.sroa.0.0.i.i202
  br i1 %i.bny, label %bb.kl, label %.invoke.i.i227

bb.kl:                                            ; preds = %bb.kk
  %i.bnz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i205, i64 %.sroa.059.0564.i.i ; 2 uses
  %i.boa = load i32, ptr %i.bnz, align 4, !noalias !35294, !noundef !45
  %i.bob = add i32 %i.boa, 1
  store i32 %i.bob, ptr %i.bnz, align 4, !noalias !35294
  %i.boc = add nuw nsw i64 %.sroa.047.0565.i.i, 1 ; 3 uses
  %.not907.i.i = icmp eq i64 %i.boc, %2           ; 2 uses
  br i1 %.not907.i.i, label %bb.ko, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.bod = getelementptr inbounds nuw i8, ptr %i.awp, i64 %.sroa.047.0565.i.i
  %i.boe = load i8, ptr %i.bod, align 1, !alias.scope !35290, !noalias !35349, !noundef !45
  %i.bof = getelementptr inbounds nuw i8, ptr %i.awp, i64 %i.boc
  %i.bog = load i8, ptr %i.bof, align 1, !alias.scope !35290, !noalias !35349, !noundef !45
  %.not238.i.i266 = icmp eq i8 %i.boe, %i.bog
  br i1 %.not238.i.i266, label %bb.kn, label %bb.ko

.invoke.i.i227:                                   ; preds = %bb.kk
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0564.i.i, i64 noundef %.sroa.0.0.i.i202, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1566) #43
          to label %.cont.i.i265 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i228, !noalias !35294

.cont.i.i265:                                     ; preds = %.invoke.i.i227
  unreachable

bb.kn:                                            ; preds = %bb.ko, %bb.km
  %.sroa.059.1.i.i267 = phi i64 [ %i.boh, %bb.ko ], [ %.sroa.059.0564.i.i, %bb.km ]
  br i1 %.not907.i.i, label %.split.i.i268, label %bb.kk

bb.ko:                                            ; preds = %bb.km, %bb.kl
  %i.boh = add nuw nsw i64 %.sroa.059.0564.i.i, 1
  br label %bb.kn

.thread130.i.i305:                                ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i", %.loopexit.split-lp.i.i321, %bb.hs
  %.pn230155.i.i306 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i304, %bb.hs ], [ %.pn.i.i326, %.loopexit.split-lp.i.i321 ], [ %.pn933.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.016.4154.i.i307 = phi ptr [ %.sroa.016.7.i.i282, %bb.hs ], [ %.sroa.016.6.i.i325, %.loopexit.split-lp.i.i321 ], [ %.sroa.016.6932.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.14.4153.i.i308 = phi i64 [ %.sroa.14.7.i.i281, %bb.hs ], [ %.sroa.14.6.i.i324, %.loopexit.split-lp.i.i321 ], [ %.sroa.14.6931.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.026.3152.i.i309 = phi ptr [ %.sroa.026.4.ph162.i.i303, %bb.hs ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i321 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.12.3151.i.i310 = phi i64 [ %.sroa.12.4.ph161.i.i302, %bb.hs ], [ 0, %.loopexit.split-lp.i.i321 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.044.0148.i.i311 = phi ptr [ %.sroa.044.1.ph160.i.i301, %bb.hs ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i321 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %.sroa.11.0147.i.i312 = phi i1 [ %.sroa.11.1.ph159.i.i300, %bb.hs ], [ true, %.loopexit.split-lp.i.i321 ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %.sroa.051.0146.i.i313 = phi ptr [ %i.bbk, %bb.hs ], [ %.sroa.051.2.i.i323, %.loopexit.split-lp.i.i321 ], [ %.sroa.051.2930.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.1152.0145.i.i314 = phi i64 [ %i.blj, %bb.hs ], [ %.sroa.1152.2.i.i322, %.loopexit.split-lp.i.i321 ], [ %.sroa.1152.2929.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %i.boi = icmp eq i64 %.sroa.1152.0145.i.i314, 0
  br i1 %i.boi, label %bb.ir, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i": ; preds = %.thread130.i.i305
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0146.i.i313) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.051.0146.i.i313) #38, !noalias !35294
  br label %bb.ir

bb.kp:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i", %bb.hl, %.thread86.i.i401
  %.pn230.pn.pn.pn.pn.pn90.i.i263 = phi { ptr, i32 } [ %i.azj, %.thread86.i.i401 ], [ %.pn230.pn.pn.pn.pn100.i.i261, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i" ], [ %.pn230.pn.pn.pn.i.i259, %bb.hl ] ; 2 uses
  %i.boj = icmp eq i64 %.sroa.0.0.i.i202, 0
  br i1 %i.boj, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.i", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread936.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread936.i.i": ; preds = %bb.kp
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i205) #38, !noalias !35294
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i": ; preds = %bb.hf
  %i.bok = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread936.i.i"
  %i.bol = phi ptr [ %i.ayo, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread936.i.i" ], [ %i.ayj, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85938.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i263, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread936.i.i" ], [ %i.bok, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bol) ]
  tail call void @mi_free(ptr noundef nonnull %i.bol) #38, !noalias !35294
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.i"

bb.kq:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i, %.split.i76
  %.sroa.032.1430.i = phi i64 [ 1, %.split.i76 ], [ %.sroa.032.1.i204, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0429.i = phi i64 [ %spec.store.select.i44, %.split.i76 ], [ %i.cek, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35355)
  %i.bom = icmp eq i64 %.sroa.0.0429.i, 0
  br i1 %i.bom, label %.loopexit.i201, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bon = add i64 %.sroa.0.0429.i, 7
  %i.boo = lshr i64 %i.bon, 3                     ; 8 uses
  %i.bop = icmp eq i64 %.sroa.0.0429.i, 1
  br i1 %i.bop, label %.preheader.i.i411.preheader, label %bb.ks

.preheader.i.i411.preheader:                      ; preds = %bb.kr
  br i1 %min.iters.check3687, label %.preheader.i.i411.preheader4248, label %vector.body3690

.preheader.i.i411.preheader4248:                  ; preds = %vector.body3690, %.preheader.i.i411.preheader
  %.ph4249 = phi i64 [ 1, %.preheader.i.i411.preheader ], [ %i.ayb, %vector.body3690 ]
  %.sroa.066.0449.i.i412.ph = phi i64 [ 0, %.preheader.i.i411.preheader ], [ %n.vec3689, %vector.body3690 ]
  br label %.preheader.i.i411

vector.body3690:                                  ; preds = %.preheader.i.i411.preheader, %vector.body3690
  %index3691 = phi i64 [ %index.next3692, %vector.body3690 ], [ 0, %.preheader.i.i411.preheader ] ; 2 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %i.awp, i64 %index3691 ; 2 uses
  %i.bor = getelementptr inbounds nuw i8, ptr %i.boq, i64 16
  store <16 x i8> zeroinitializer, ptr %i.boq, align 1, !alias.scope !35355, !noalias !35356
  store <16 x i8> zeroinitializer, ptr %i.bor, align 1, !alias.scope !35355, !noalias !35356
  %index.next3692 = add nuw i64 %index3691, 32    ; 2 uses
  %i.bos = icmp eq i64 %index.next3692, %n.vec3689
  br i1 %i.bos, label %.preheader.i.i411.preheader4248, label %vector.body3690, !llvm.loop !34760

bb.ks:                                            ; preds = %bb.kr
  %.not121.i.i79 = icmp ugt i64 %.sroa.0.0429.i, %spec.store.select.i44
  br i1 %.not121.i.i79, label %bb.kt, label %.preheader360.i.i80, !prof !87

bb.kt:                                            ; preds = %bb.ks
  %i.bot = mul nuw nsw i64 %.sroa.0.0429.i, 704
  br label %.invoke1162.i

.invoke1162.i:                                    ; preds = %bb.ne, %.lr.ph403.i.preheader.i99, %bb.lf, %bb.kt
  %i.bou = phi i64 [ %i.bot, %bb.kt ], [ %i.boo, %bb.lf ], [ %i.boz, %.lr.ph403.i.preheader.i99 ], [ %i.cek, %bb.ne ]
  %i.bov = phi i64 [ %i.awt, %bb.kt ], [ %i.aws, %bb.lf ], [ %i.axe, %.lr.ph403.i.preheader.i99 ], [ %spec.store.select.i44, %bb.ne ]
  %i.bow = phi ptr [ @1545, %bb.kt ], [ @1575, %bb.lf ], [ @1541, %.lr.ph403.i.preheader.i99 ], [ @1928, %bb.ne ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.bou, i64 noundef %i.bov, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bow) #43
          to label %.cont1163.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i96", !noalias !35251

.cont1163.i:                                      ; preds = %.invoke1162.i
  unreachable

.preheader360.i.i80:                              ; preds = %bb.ks
  %.idx.i.i81 = mul nuw nsw i64 %.sroa.0.0429.i, 2816
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.awv, i8 0, i64 %.idx.i.i81, i1 false), !alias.scope !35352, !noalias !35357
  br label %bb.ku

bb.ku:                                            ; preds = %bb.nb, %.preheader360.i.i80
  %i.box = phi i64 [ 1, %.preheader360.i.i80 ], [ %i.cee, %bb.nb ] ; 4 uses
  %.sroa.069.0399.i.i82 = phi i64 [ 0, %.preheader360.i.i80 ], [ %i.box, %bb.nb ] ; 3 uses
  %exitcond.not.i176.i = icmp eq i64 %i.box, %i.axr
  br i1 %exitcond.not.i176.i, label %.invoke.i95, label %bb.mz

.loopexit358.i.i98:                               ; preds = %bb.my
  %i.boy = icmp eq i64 %i.bpa, 0
  br i1 %i.boy, label %.lr.ph403.i.preheader.i99, label %.split.i177.i

.lr.ph403.i.preheader.i99:                        ; preds = %.loopexit358.i.i98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.awz, i8 0, i64 range(i64 0, 225) %i.awy, i1 false), !alias.scope !35353, !noalias !35358
  %i.boz = mul i64 %i.boo, %2                     ; 4 uses
  %.not124.i.i100 = icmp ugt i64 %i.boz, %i.axe
  br i1 %.not124.i.i100, label %.invoke1162.i, label %bb.kv, !prof !87

.split.i177.i:                                    ; preds = %bb.nb, %.loopexit358.i.i98
  %.sroa.05.0401.i.i84 = phi i64 [ %i.bpa, %.loopexit358.i.i98 ], [ 704, %bb.nb ]
  %i.bpa = add nsw i64 %.sroa.05.0401.i.i84, -1   ; 4 uses
  %invariant.gep.i178.i = getelementptr [4 x i8], ptr %i.arv, i64 %i.bpa
  %i.bpb = mul i64 %i.bpa, %.sroa.0.0429.i
  br label %bb.mw

bb.kv:                                            ; preds = %.lr.ph403.i.preheader.i99
  %.not355404.i.i101 = icmp samesign eq i64 %i.boz, 0
  br i1 %.not355404.i.i101, label %.lr.ph434.i.i104, label %.lr.ph407.preheader.i.i102

.lr.ph407.preheader.i.i102:                       ; preds = %bb.kv
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.axl, i8 0, i64 %i.boz, i1 false), !alias.scope !35354, !noalias !35359
  br label %.lr.ph434.i.i104

.lr.ph434.i.i104:                                 ; preds = %bb.kv, %.lr.ph407.preheader.i.i102
  %i.bpc = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %.not131.i.i105 = icmp samesign ugt i64 %i.bpc, %i.aws
  %.idx452.i.i106 = shl nuw nsw i64 %i.bpc, 5
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.awz, i64 %.idx452.i.i106
  %i.bpe = icmp eq i64 %i.bpc, 0
  %i.bpf = and i64 %.sroa.0.0429.i, -8            ; 8 uses
  %i.bpg = and i64 %.sroa.0.0429.i, 7             ; 4 uses
  %.not.i.i181.i = icmp samesign ugt i64 %i.boo, %i.aws
  %.idx453.i.i107 = shl i64 %i.boo, 5             ; 2 uses
  %i.bph = getelementptr inbounds nuw i8, ptr %i.awz, i64 %.idx453.i.i107
  br i1 %.not131.i.i105, label %.lr.ph434.split.us.i.i408, label %.lr.ph434.split.preheader.i.i108, !prof !47

.lr.ph434.split.preheader.i.i108:                 ; preds = %.lr.ph434.i.i104
  %.idx454.i.i = shl nuw nsw i64 %i.bpg, 2        ; 3 uses
  %i.bpi = icmp eq i64 %i.bpg, 0
  %i.bpj = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %i.bpk = icmp samesign ult i64 %i.bpj, %i.aws
  %i.bpl = getelementptr inbounds nuw [32 x i8], ptr %i.awz, i64 %i.bpj ; 2 uses
  %i.bpm = trunc i64 %i.bpf to i8
  %i.bpn = icmp eq i64 %i.bpg, 1                  ; 2 uses
  %.sroa.077.1.idx.i.i157 = select i1 %i.bpn, i64 0, i64 4 ; 3 uses
  %i.bpo = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %i.bpp = icmp samesign ult i64 %i.bpo, %i.aws
  %i.bpq = getelementptr inbounds nuw [32 x i8], ptr %i.awz, i64 %i.bpo
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpq, i64 4 ; 2 uses
  %i.bps = trunc i64 %i.bpf to i8
  %i.bpt = or disjoint i8 %i.bps, 1
  %i.bpu = add nuw nsw i64 %.sroa.077.1.idx.i.i157, 4
  %i.bpv = icmp samesign eq i64 %i.bpu, %.idx454.i.i ; 2 uses
  %.sroa.077.1.idx.i.i157.1 = select i1 %i.bpv, i64 0, i64 4 ; 2 uses
  %i.bpw = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %i.bpx = icmp samesign ult i64 %i.bpw, %i.aws
  %i.bpy = getelementptr inbounds nuw [32 x i8], ptr %i.awz, i64 %i.bpw
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpy, i64 8 ; 2 uses
  %i.bqa = trunc i64 %i.bpf to i8
  %i.bqb = or disjoint i8 %i.bqa, 2
  %i.bqc = add nuw nsw i64 %.sroa.077.1.idx.i.i157, 4
  %i.bqd = add nuw nsw i64 %i.bqc, %.sroa.077.1.idx.i.i157.1
  %i.bqe = icmp samesign eq i64 %i.bqd, %.idx454.i.i ; 2 uses
  %.sroa.077.1.idx.i.i157.2 = select i1 %i.bqe, i64 0, i64 4
  %i.bqf = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %i.bqg = icmp samesign ult i64 %i.bqf, %i.aws
  %i.bqh = getelementptr inbounds nuw [32 x i8], ptr %i.awz, i64 %i.bqf
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqh, i64 12 ; 2 uses
  %i.bqj = trunc i64 %i.bpf to i8
  %i.bqk = or disjoint i8 %i.bqj, 3
  %i.bql = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %i.bqm = icmp samesign ult i64 %i.bql, %i.aws
  %i.bqn = getelementptr inbounds nuw [32 x i8], ptr %i.awz, i64 %i.bql
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqn, i64 16 ; 2 uses
  %i.bqp = trunc i64 %i.bpf to i8
  %i.bqq = or disjoint i8 %i.bqp, 4
  %i.bqr = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %i.bqs = icmp samesign ult i64 %i.bqr, %i.aws
  %i.bqt = getelementptr inbounds nuw [32 x i8], ptr %i.awz, i64 %i.bqr
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 20 ; 2 uses
  %i.bqv = trunc i64 %i.bpf to i8
  %i.bqw = or disjoint i8 %i.bqv, 5
  %i.bqx = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %i.bqy = icmp samesign ult i64 %i.bqx, %i.aws
  %i.bqz = getelementptr inbounds nuw [32 x i8], ptr %i.awz, i64 %i.bqx
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 24 ; 2 uses
  %i.brb = trunc i64 %i.bpf to i8
  %i.brc = or disjoint i8 %i.brb, 6
  %i.brd = add i64 %.idx453.i.i107, -32
  %i.bre = lshr exact i64 %i.brd, 5
  br label %.lr.ph434.split.i.i109

.lr.ph434.split.us.i.i408:                        ; preds = %.lr.ph434.i.i104
  %i.brf = load i16, ptr %i.apn, align 2, !alias.scope !35360, !noalias !35361, !noundef !45
  %i.brg = zext i16 %i.brf to i64
  %i.brh = mul nuw nsw i64 %.sroa.0.0429.i, %i.brg
  %.not130.us.i.i409 = icmp ugt i64 %i.brh, %i.awt
  br i1 %.not130.us.i.i409, label %.split438.us.i.i407, label %.split440.us.i.i410, !prof !47

.split440.us.i.i410:                              ; preds = %.lr.ph434.split.us.i.i408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !35362
  br label %.split440.us.i.invoke.i119

.split440.us.i.invoke.i119:                       ; preds = %bb.me, %bb.mc, %bb.ld, %bb.lb, %.split438.us.i.i407, %.split440.us.i.i410
  %.sink.i120.sroa.phi = phi ptr [ %.sink.i120.sroa.gep, %bb.me ], [ %.sink.i120.sroa.gep40, %bb.mc ], [ %.sink.i120.sroa.gep41, %bb.ld ], [ %.sink.i120.sroa.gep42, %bb.lb ], [ %.sink.i120.sroa.gep43, %.split438.us.i.i407 ], [ %.sink.i120.sroa.gep44, %.split440.us.i.i410 ]
  %.sink.i120.sroa.phi45 = phi ptr [ %.sink.i120.sroa.gep46, %bb.me ], [ %.sink.i120.sroa.gep47, %bb.mc ], [ %.sink.i120.sroa.gep48, %bb.ld ], [ %.sink.i120.sroa.gep49, %bb.lb ], [ %.sink.i120.sroa.gep50, %.split438.us.i.i407 ], [ %.sink.i120.sroa.gep51, %.split440.us.i.i410 ]
  %.sink.i120.sroa.phi52 = phi ptr [ %.sink.i120.sroa.gep53, %bb.me ], [ %.sink.i120.sroa.gep54, %bb.mc ], [ %.sink.i120.sroa.gep55, %bb.ld ], [ %.sink.i120.sroa.gep56, %bb.lb ], [ %.sink.i120.sroa.gep57, %.split438.us.i.i407 ], [ %.sink.i120.sroa.gep58, %.split440.us.i.i410 ]
  %.sink.i120.sroa.phi59 = phi ptr [ %.sink.i120.sroa.gep60, %bb.me ], [ %.sink.i120.sroa.gep61, %bb.mc ], [ %.sink.i120.sroa.gep62, %bb.ld ], [ %.sink.i120.sroa.gep63, %bb.lb ], [ %.sink.i120.sroa.gep64, %.split438.us.i.i407 ], [ %.sink.i120.sroa.gep65, %.split440.us.i.i410 ]
  %.sink.i120 = phi ptr [ %i.p, %bb.me ], [ %i.r, %bb.mc ], [ %i.o, %bb.ld ], [ %i.q, %bb.lb ], [ %i.t, %.split438.us.i.i407 ], [ %i.s, %.split440.us.i.i410 ] ; 2 uses
  %i.bri = phi ptr [ @1539, %bb.me ], [ @1538, %bb.mc ], [ @1536, %bb.ld ], [ @1535, %bb.lb ], [ @1533, %.split438.us.i.i407 ], [ @1534, %.split440.us.i.i410 ]
  store ptr @186, ptr %.sink.i120, align 8, !noalias !35362
  store i64 1, ptr %.sink.i120.sroa.phi, align 8, !noalias !35362
  store ptr null, ptr %.sink.i120.sroa.phi45, align 8, !noalias !35362
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i120.sroa.phi52, align 8, !noalias !35362
  store i64 0, ptr %.sink.i120.sroa.phi59, align 8, !noalias !35362
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i120, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bri) #43
          to label %.split440.us.i.cont.i121 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i96", !noalias !35251

.split440.us.i.cont.i121:                         ; preds = %.split440.us.i.invoke.i119
  unreachable

_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i189: ; preds = %bb.lg
  %i.brj = icmp eq ptr %i.brl, %i.axs
  br i1 %i.brj, label %.lr.ph447.preheader.i.i190, label %.lr.ph434.split.i.i109

.lr.ph434.split.i.i109:                           ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i189, %.lr.ph434.split.preheader.i.i108
  %.sroa.0.0336432.i.i110 = phi ptr [ %i.brl, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i189 ], [ %i.apn, %.lr.ph434.split.preheader.i.i108 ] ; 2 uses
  %.sroa.7.0431.i.i111 = phi i64 [ %i.brm, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i189 ], [ 0, %.lr.ph434.split.preheader.i.i108 ] ; 7 uses
  %i.brk = mul i64 %i.boo, %.sroa.7.0431.i.i111
  %i.brl = getelementptr inbounds nuw i8, ptr %.sroa.0.0336432.i.i110, i64 2 ; 2 uses
  %i.brm = add nuw nsw i64 %.sroa.7.0431.i.i111, 1
  %exitcond487.not.i.i112 = icmp eq i64 %.sroa.7.0431.i.i111, %2
  br i1 %exitcond487.not.i.i112, label %.invoke.i95, label %bb.kz

.lr.ph447.preheader.i.i190:                       ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i189
  %i.brn = load i8, ptr %i.axu, align 1, !alias.scope !35355, !noalias !35356, !noundef !45
  %i.bro = mul i64 %i.boo, %i.axt
  br label %.lr.ph447.i.i191

.lr.ph447.i.i191:                                 ; preds = %bb.ky, %.lr.ph447.preheader.i.i190
  %.sroa.03.0446.i.i192 = phi i64 [ %.sroa.03.1.i.i199, %bb.ky ], [ 1, %.lr.ph447.preheader.i.i190 ] ; 2 uses
  %.sroa.052.0445.i.i193 = phi i64 [ %i.brp, %bb.ky ], [ %i.axt, %.lr.ph447.preheader.i.i190 ]
  %.sroa.059.0444.i.i194 = phi i64 [ %i.brq, %bb.ky ], [ %i.bro, %.lr.ph447.preheader.i.i190 ]
  %.sroa.061.0443.i.i195 = phi i8 [ %.sroa.061.1.i.i198, %bb.ky ], [ %i.brn, %.lr.ph447.preheader.i.i190 ] ; 4 uses
  %i.brp = add nsw i64 %.sroa.052.0445.i.i193, -1 ; 4 uses
  %i.brq = sub i64 %.sroa.059.0444.i.i194, %i.boo ; 2 uses
  %i.brr = lshr i8 %.sroa.061.0443.i.i195, 3
  %i.brs = zext nneg i8 %i.brr to i64
  %i.brt = add i64 %i.brq, %i.brs                 ; 3 uses
  %i.bru = icmp ult i64 %i.brt, %i.axe
  br i1 %i.bru, label %bb.kw, label %.invoke.i95

bb.kw:                                            ; preds = %.lr.ph447.i.i191
  %i.brv = and i8 %.sroa.061.0443.i.i195, 7
  %i.brw = shl nuw i8 1, %i.brv
  %i.brx = getelementptr inbounds nuw i8, ptr %i.axl, i64 %i.brt
  %i.bry = load i8, ptr %i.brx, align 1, !alias.scope !35354, !noalias !35359, !noundef !45
  %i.brz = and i8 %i.bry, %i.brw
  %i.bsa = icmp eq i8 %i.brz, 0
  br i1 %i.bsa, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.awp, i64 %i.brp
  %i.bsc = load i8, ptr %i.bsb, align 1, !alias.scope !35355, !noalias !35356, !noundef !45 ; 2 uses
  %.not129.i.i196 = icmp ne i8 %.sroa.061.0443.i.i195, %i.bsc
  %i.bsd = zext i1 %.not129.i.i196 to i64
  %spec.select137.i.i197 = add i64 %.sroa.03.0446.i.i192, %i.bsd
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  %.sroa.061.1.i.i198 = phi i8 [ %.sroa.061.0443.i.i195, %bb.kw ], [ %i.bsc, %bb.kx ] ; 2 uses
  %.sroa.03.1.i.i199 = phi i64 [ %.sroa.03.0446.i.i192, %bb.kw ], [ %spec.select137.i.i197, %bb.kx ] ; 2 uses
  %i.bse = getelementptr inbounds nuw i8, ptr %i.awp, i64 %i.brp
  store i8 %.sroa.061.1.i.i198, ptr %i.bse, align 1, !alias.scope !35355, !noalias !35356
  %.not128.i.i200 = icmp eq i64 %i.brp, 0
  br i1 %.not128.i.i200, label %.loopexit.i201, label %.lr.ph447.i.i191

bb.kz:                                            ; preds = %.lr.ph434.split.i.i109
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.awp, i64 %.sroa.7.0431.i.i111 ; 15 uses
  %i.bsg = mul i64 %.sroa.7.0431.i.i111, %i.boo   ; 3 uses
  %i.bsh = load i16, ptr %.sroa.0.0336432.i.i110, align 2, !alias.scope !35360, !noalias !35361, !noundef !45
  %i.bsi = zext i16 %i.bsh to i64
  %i.bsj = mul nuw nsw i64 %.sroa.0.0429.i, %i.bsi ; 4 uses
  %.not130.i.i113 = icmp ugt i64 %i.bsj, %i.awt
  br i1 %.not130.i.i113, label %.split438.us.i.i407, label %bb.la, !prof !47

.split438.us.i.i407:                              ; preds = %bb.kz, %.lr.ph434.split.us.i.i408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !35362
  br label %.split440.us.i.invoke.i119

bb.la:                                            ; preds = %bb.kz
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %i.bsj
  %i.bsl = sub nuw nsw i64 %i.awt, %i.bsj         ; 2 uses
  br i1 %i.bpe, label %._crit_edge416.i.i145, label %.lr.ph415.i.i114

.lr.ph415.i.i114:                                 ; preds = %bb.la, %bb.mv
  %.sroa.029.0413.i.i115 = phi float [ %.sroa.029.4.7.i.i144, %bb.mv ], [ f0x7E967699, %bb.la ] ; 2 uses
  %.sroa.0164.0412.i.i116 = phi ptr [ %i.bsm, %bb.mv ], [ %i.awz, %bb.la ] ; 10 uses
  %.sroa.7166.0411.i.i117 = phi i64 [ %i.bsn, %bb.mv ], [ 0, %bb.la ] ; 2 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i116, i64 32 ; 2 uses
  %i.bsn = add nuw nsw i64 %.sroa.7166.0411.i.i117, 1
  %i.bso = shl nuw nsw i64 %.sroa.7166.0411.i.i117, 3 ; 11 uses
  %.not136.i.i118 = icmp samesign ugt i64 %i.bso, %i.bsl
  br i1 %.not136.i.i118, label %bb.mc, label %bb.md, !prof !47
end_hunk_6
begin_hunk_7_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cja, i64 %.sroa.02.0.idx7.i.i.i469
  %.sroa.02.0.ptr.i.i.i470.1 = getelementptr inbounds nuw i8, ptr %i.cjp, i64 2
  %i.cjq = load i16, ptr %.sroa.02.0.ptr.i.i.i470.1, align 2, !alias.scope !35405, !noalias !35406, !noundef !45 ; 2 uses
  %i.cjr = zext i16 %i.cjq to i64                 ; 2 uses
  %i.cjs = icmp ult i16 %i.cjq, 544
  br i1 %i.cjs, label %bb.nz, label %.split32.us.i.invoke.i471

bb.nz:                                            ; preds = %.preheader.i.i.i468.1
  %.sroa.02.0.add.i.i.i473.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i469, 4 ; 2 uses
  %i.cjt = getelementptr inbounds nuw [4 x i8], ptr %i.ciy, i64 %i.cjr ; 2 uses
  %i.cju = load i32, ptr %i.cjt, align 4, !alias.scope !35407, !noalias !35403, !noundef !45
  %i.cjv = add i32 %i.cju, 1
  store i32 %i.cjv, ptr %i.cjt, align 4, !alias.scope !35407, !noalias !35403
  %i.cjw = icmp eq i64 %.sroa.02.0.add.i.i.i473.1, 80
  br i1 %i.cjw, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i, label %.preheader.i.i.i468

.split32.us.i.invoke.i471:                        ; preds = %.preheader.i.i.i468, %.preheader.i.i.i468.1, %.preheader.i.i.i.i478, %.preheader.i.i.i.i478.1
  %i.cjx = phi i64 [ %i.cky, %.preheader.i.i.i.i478.1 ], [ %i.ckr, %.preheader.i.i.i.i478 ], [ %i.cjk, %.preheader.i.i.i468 ], [ %i.cjr, %.preheader.i.i.i468.1 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cjx, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1930) #43
          to label %.split32.us.i.cont.i472 unwind label %.thread.i464, !noalias !35393

.split32.us.i.cont.i472:                          ; preds = %.split32.us.i.invoke.i471
  unreachable

bb.oa:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35409)
  %i.cjy = shl i64 %.sroa.01.1, 1                 ; 2 uses
  %i.cjz = udiv i64 %i.cjy, 40
  %i.cka = add nuw nsw i64 %i.cjz, 99
  %i.ckb = add nuw nsw i64 %i.cka, %spec.store.select.i445 ; 2 uses
  %i.ckc = urem i64 %i.ckb, %spec.store.select.i445
  %i.ckd = sub nuw nsw i64 %i.ckb, %i.ckc
  %i.cke = getelementptr inbounds nuw i8, ptr %i.n, i64 2184
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.n, i64 2176 ; 2 uses
  %i.ckg = add i64 %.sroa.01.1, -39
  br label %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i, %bb.oa
  %.sroa.03.022.i.i475 = phi i64 [ 0, %bb.oa ], [ %i.ckh, %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i ] ; 2 uses
  %.sroa.0.021.i.i476 = phi i32 [ 7, %bb.oa ], [ %spec.store.select.i.i.i477, %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !35410
  %i.ckh = add nuw i64 %.sroa.03.022.i.i475, 1    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2176) %i.n, i8 0, i64 2176, i1 false), !noalias !35410
  store float 3.402000e+38, ptr %i.cke, align 8, !alias.scope !35411, !noalias !35410
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35413)
  %i.cki = mul i32 %.sroa.0.021.i.i476, 16807
  %i.ckj = icmp eq i32 %.sroa.0.021.i.i476, 0
  %spec.store.select.i.i.i477 = select i1 %i.ckj, i32 1, i32 %i.cki ; 2 uses
  %i.ckk = zext i32 %spec.store.select.i.i.i477 to i64
  %i.ckl = urem i64 %i.ckk, %i.ckg                ; 4 uses
  %i.ckm = icmp samesign ugt i64 %i.ckl, %2
  br i1 %i.ckm, label %.split29.us.i.invoke.i463, label %bb.ob, !prof !47

bb.ob:                                            ; preds = %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i
  %i.ckn = sub nuw nsw i64 %2, %i.ckl             ; 2 uses
  %i.cko = getelementptr inbounds nuw [2 x i8], ptr %i.cgn, i64 %i.ckl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35415)
  store i64 40, ptr %i.ckf, align 8, !alias.scope !35416, !noalias !35417
  %i.ckp = icmp samesign ugt i64 %i.ckn, 39
  br i1 %i.ckp, label %.preheader.i.i.i.i478, label %.split29.us.i.invoke.i463, !prof !54

.preheader.i.i.i.i478:                            ; preds = %bb.ob, %bb.oc
  %.sroa.02.0.idx7.i.i.i.i479 = phi i64 [ %.sroa.02.0.add.i.i.i.i481.1, %bb.oc ], [ 0, %bb.ob ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i480 = getelementptr inbounds nuw i8, ptr %i.cko, i64 %.sroa.02.0.idx7.i.i.i.i479
  %i.ckq = load i16, ptr %.sroa.02.0.ptr.i.i.i.i480, align 2, !alias.scope !35418, !noalias !35419, !noundef !45 ; 2 uses
  %i.ckr = zext i16 %i.ckq to i64                 ; 2 uses
  %i.cks = icmp ult i16 %i.ckq, 544
  br i1 %i.cks, label %.preheader.i.i.i.i478.1, label %.split32.us.i.invoke.i471

.preheader.i.i.i.i478.1:                          ; preds = %.preheader.i.i.i.i478
  %i.ckt = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ckr ; 2 uses
  %i.cku = load i32, ptr %i.ckt, align 4, !alias.scope !35420, !noalias !35417, !noundef !45
  %i.ckv = add i32 %i.cku, 1
  store i32 %i.ckv, ptr %i.ckt, align 4, !alias.scope !35420, !noalias !35417
  %i.ckw = getelementptr inbounds nuw i8, ptr %i.cko, i64 %.sroa.02.0.idx7.i.i.i.i479
  %.sroa.02.0.ptr.i.i.i.i480.1 = getelementptr inbounds nuw i8, ptr %i.ckw, i64 2
  %i.ckx = load i16, ptr %.sroa.02.0.ptr.i.i.i.i480.1, align 2, !alias.scope !35418, !noalias !35419, !noundef !45 ; 2 uses
  %i.cky = zext i16 %i.ckx to i64                 ; 2 uses
  %i.ckz = icmp ult i16 %i.ckx, 544
  br i1 %i.ckz, label %bb.oc, label %.split32.us.i.invoke.i471

bb.oc:                                            ; preds = %.preheader.i.i.i.i478.1
  %.sroa.02.0.add.i.i.i.i481.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i.i479, 4 ; 2 uses
  %i.cla = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.cky ; 2 uses
  %i.clb = load i32, ptr %i.cla, align 4, !alias.scope !35420, !noalias !35417, !noundef !45
  %i.clc = add i32 %i.clb, 1
  store i32 %i.clc, ptr %i.cla, align 4, !alias.scope !35420, !noalias !35417
  %i.cld = icmp eq i64 %.sroa.02.0.add.i.i.i.i481.1, 80
  br i1 %i.cld, label %vector.ph3760, label %.preheader.i.i.i.i478

vector.ph3760:                                    ; preds = %bb.oc
  %i.cle = urem i64 %.sroa.03.022.i.i475, %spec.store.select.i445
  %i.clf = getelementptr inbounds nuw [2192 x i8], ptr %i.cgx, i64 %i.cle ; 3 uses
  %i.clg = getelementptr inbounds nuw i8, ptr %i.clf, i64 2176 ; 2 uses
  %i.clh = load i64, ptr %i.clg, align 8, !alias.scope !35421, !noalias !35422, !noundef !45
  %i.cli = load i64, ptr %i.ckf, align 8, !alias.scope !35423, !noalias !35410, !noundef !45
  %i.clj = add i64 %i.cli, %i.clh
  store i64 %i.clj, ptr %i.clg, align 8, !alias.scope !35424, !noalias !35425
  br label %vector.body3761

vector.body3761:                                  ; preds = %vector.body3761, %vector.ph3760
  %index3762 = phi i64 [ 0, %vector.ph3760 ], [ %index.next3767.1, %vector.body3761 ] ; 4 uses
  %i.clk = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %index3762 ; 3 uses
  %i.cll = getelementptr inbounds nuw i8, ptr %i.clk, i64 16 ; 2 uses
  %wide.load3763 = load <4 x i32>, ptr %i.clk, align 4, !alias.scope !35409, !noalias !35425
  %wide.load3764 = load <4 x i32>, ptr %i.cll, align 4, !alias.scope !35409, !noalias !35425
  %i.clm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index3762 ; 2 uses
  %i.cln = getelementptr inbounds nuw i8, ptr %i.clm, i64 16
  %wide.load3765 = load <4 x i32>, ptr %i.clm, align 8, !noalias !35410
  %wide.load3766 = load <4 x i32>, ptr %i.cln, align 8, !noalias !35410
  %i.clo = add <4 x i32> %wide.load3765, %wide.load3763
  %i.clp = add <4 x i32> %wide.load3766, %wide.load3764
  store <4 x i32> %i.clo, ptr %i.clk, align 4, !alias.scope !35409, !noalias !35425
  store <4 x i32> %i.clp, ptr %i.cll, align 4, !alias.scope !35409, !noalias !35425
  %index.next3767 = or disjoint i64 %index3762, 8 ; 2 uses
  %i.clq = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %index.next3767 ; 3 uses
  %i.clr = getelementptr inbounds nuw i8, ptr %i.clq, i64 16 ; 2 uses
  %wide.load3763.1 = load <4 x i32>, ptr %i.clq, align 4, !alias.scope !35409, !noalias !35425
  %wide.load3764.1 = load <4 x i32>, ptr %i.clr, align 4, !alias.scope !35409, !noalias !35425
  %i.cls = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index.next3767 ; 2 uses
  %i.clt = getelementptr inbounds nuw i8, ptr %i.cls, i64 16
  %wide.load3765.1 = load <4 x i32>, ptr %i.cls, align 8, !noalias !35410
  %wide.load3766.1 = load <4 x i32>, ptr %i.clt, align 8, !noalias !35410
  %i.clu = add <4 x i32> %wide.load3765.1, %wide.load3763.1
  %i.clv = add <4 x i32> %wide.load3766.1, %wide.load3764.1
  store <4 x i32> %i.clu, ptr %i.clq, align 4, !alias.scope !35409, !noalias !35425
  store <4 x i32> %i.clv, ptr %i.clr, align 4, !alias.scope !35409, !noalias !35425
  %index.next3767.1 = add nuw nsw i64 %index3762, 16 ; 2 uses
  %i.clw = icmp eq i64 %index.next3767.1, 544
  br i1 %i.clw, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i, label %vector.body3761, !llvm.loop !34864

_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i: ; preds = %vector.body3761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !35410
  %exitcond35.not.i.i484 = icmp eq i64 %i.ckh, %i.ckd
  br i1 %exitcond35.not.i.i484, label %_ZN6brotli3enc14block_splitter18RefineEntropyCodes17h0a5533a9561da59cE.exit.i, label %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i

_ZN6brotli3enc14block_splitter18RefineEntropyCodes17h0a5533a9561da59cE.exit.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i
  %i.clx = icmp slt i64 %.sroa.01.1, 0
  br i1 %i.clx, label %bb.od, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i485, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i485: ; preds = %_ZN6brotli3enc14block_splitter18RefineEntropyCodes17h0a5533a9561da59cE.exit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35426
  %i.cly = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.01.1, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35426 ; 15 uses
  %i.clz = icmp eq ptr %i.cly, null
  br i1 %i.clz, label %bb.od, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i486

bb.od:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i485, %_ZN6brotli3enc14block_splitter18RefineEntropyCodes17h0a5533a9561da59cE.exit.i
  %.sroa.4.0.ph.i.i.i994 = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i485 ], [ 0, %_ZN6brotli3enc14block_splitter18RefineEntropyCodes17h0a5533a9561da59cE.exit.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i994, i64 %.sroa.01.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc143.i995 unwind label %.thread.i464, !noalias !35393

.noexc143.i995:                                   ; preds = %bb.od
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i486: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i485
  %i.cma = add nuw nsw i64 %i.cgs, 8
  %i.cmb = lshr i64 %i.cma, 3                     ; 19 uses
  %i.cmc = mul nuw nsw i64 %spec.store.select.i445, 544 ; 8 uses
  %i.cmd = mul nuw nsw i64 %spec.store.select.i445, 2176 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35427
  %i.cme = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cmd, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35427 ; 9 uses
  %i.cmf = icmp eq ptr %i.cme, null
  br i1 %i.cmf, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i486
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.cmd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc147.i993 unwind label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.thread.i992", !noalias !35393

.noexc147.i993:                                   ; preds = %bb.oe
  unreachable

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.thread.i992": ; preds = %bb.oe
  %i.cmg = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.cly) #38, !noalias !35393
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit.i"

bb.of:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i486
  %i.cmh = shl nuw nsw i64 %i.cmb, 5              ; 4 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35428
  %i.cmi = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.cmh, i64 noundef range(i64 1, 9) 4) #38, !noalias !35428 ; 24 uses
  %i.cmj = icmp eq ptr %i.cmi, null
  br i1 %i.cmj, label %bb.og, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i487"

bb.og:                                            ; preds = %bb.of
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.cmh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc150.i991 unwind label %.thread39.i990, !noalias !35393

.noexc150.i991:                                   ; preds = %bb.og
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i487": ; preds = %bb.of
  %i.cmk = icmp samesign ugt i64 %.sroa.01.1, 4351
  br i1 %i.cmk, label %.lr.ph.i.i.i148.preheader.i988, label %.loopexit108.i488

.lr.ph.i.i.i148.preheader.i988:                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i487"
  %i.cml = add nsw i64 %i.cmh, -32                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cmi, i8 0, i64 range(i64 0, 193) %i.cml, i1 false), !noalias !35393
  %scevgep.i989 = getelementptr i8, ptr %i.cmi, i64 %i.cml
  br label %.loopexit108.i488

.thread39.i990:                                   ; preds = %bb.og
  %i.cmm = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i518"

.loopexit108.i488:                                ; preds = %.lr.ph.i.i.i148.preheader.i988, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i487"
  %.sroa.0.0.lcssa.i.i.i.i489 = phi ptr [ %i.cmi, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i487" ], [ %scevgep.i989, %.lr.ph.i.i.i148.preheader.i988 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.0.lcssa.i.i.i.i489, i8 0, i64 32, i1 false), !noalias !35393
  %i.cmn = mul i64 %i.cmb, %.sroa.01.1            ; 11 uses
  %i.cmo = icmp slt i64 %i.cmn, 0
  br i1 %i.cmo, label %bb.oj, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i490, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i490: ; preds = %.loopexit108.i488
  %i.cmp = icmp eq i64 %i.cmn, 0                  ; 3 uses
  br i1 %i.cmp, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i491, label %bb.oh

bb.oh:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i490
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35429
  %i.cmq = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cmn, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35429 ; 2 uses
  %i.cmr = icmp eq ptr %i.cmq, null
  br i1 %i.cmr, label %bb.oj, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.cms = ptrtoint ptr %i.cmq to i64
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i491

bb.oj:                                            ; preds = %bb.oh, %.loopexit108.i488
  %.sroa.4.0.ph.i.i153.i985 = phi i64 [ 1, %bb.oh ], [ 0, %.loopexit108.i488 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i153.i985, i64 %i.cmn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc154.i987 unwind label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i986", !noalias !35393

.noexc154.i987:                                   ; preds = %bb.oj
  unreachable

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i986": ; preds = %bb.oj
  %i.cmt = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.cmi) #38, !noalias !35393
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i518"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i491: ; preds = %bb.oi, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i490
  %.sroa.10.0.i.i152.i492 = phi i64 [ %i.cms, %bb.oi ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i490 ]
  %i.cmu = inttoptr i64 %.sroa.10.0.i.i152.i492 to ptr ; 8 uses
  %i.cmv = shl nuw nsw i64 %spec.store.select.i445, 1 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35430
  %i.cmw = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cmv, i64 noundef range(i64 1, -9223372036854775807) 2) #38, !noalias !35430 ; 4 uses
  %i.cmx = icmp eq ptr %i.cmw, null
  br i1 %i.cmx, label %bb.ok, label %.split.i493

bb.ok:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i491
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.cmv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc160.i984 unwind label %.thread55.i983, !noalias !35393

.noexc160.i984:                                   ; preds = %bb.ok
  unreachable

.thread55.i983:                                   ; preds = %bb.ok
  %i.cmy = landingpad { ptr, i32 }
          cleanup
  br label %bb.uu

.split.i493:                                      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i491
  %i.cmz = icmp slt i32 %.72.val, 12
  %..i494 = select i1 %i.cmz, i64 3, i64 10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cmu) ]
  %i.cna = add nuw nsw i64 %i.cgs, 2              ; 2 uses
  %.not126.i.i495 = icmp ugt i64 %.sroa.01.1, %2
  %i.cnb = getelementptr inbounds nuw i8, ptr %i.cgn, i64 %i.cjy
  %i.cnc = add nsw i64 %.sroa.01.1, -1            ; 4 uses
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.cly, i64 %i.cnc
  %i.cne = add nuw i64 %.sroa.01.1, 1
  %i.cnf = call i64 @llvm.umin.i64(i64 %.sroa.01.1, i64 %i.cnc) ; 2 uses
  %min.iters.check3770 = icmp ult i64 %i.cnf, 32
  %i.cng = add nuw i64 %i.cnf, 1                  ; 2 uses
  %i.cnh = and i64 %i.cng, 31                     ; 2 uses
  %i.cni = icmp eq i64 %i.cnh, 0
  %i.cnj = select i1 %i.cni, i64 32, i64 %i.cnh
  %n.vec3772 = sub i64 %i.cng, %i.cnj             ; 3 uses
  %i.cnk = add i64 %n.vec3772, 1
  br label %bb.sc

_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i: ; preds = %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i.i
  %i.cnl = icmp samesign ult i64 %.sroa.032.1430.i496, %..i494 ; 2 uses
  %i.cnm = zext i1 %i.cnl to i64
  %.sroa.032.1.i643 = add nuw nsw i64 %.sroa.032.1430.i496, %i.cnm
  br i1 %i.cnl, label %bb.sc, label %bb.ol

.body.i969:                                       ; preds = %bb.oo
  %lpad.thr_comm.split-lp.i970 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.i711"

bb.ol:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cme) #38, !noalias !35393
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cmi) #38, !noalias !35393
  br i1 %i.cmp, label %bb.om, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i162.i644"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i162.i644": ; preds = %bb.ol
  tail call void @mi_free(ptr noundef nonnull align 1 %i.cmu) #38, !noalias !35393
  br label %bb.om

bb.om:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i162.i644", %bb.ol
  tail call void @mi_free(ptr noundef nonnull align 2 %i.cmw) #38, !noalias !35393
  tail call void @mi_free(ptr noundef nonnull align 8 %i.cgx) #38, !noalias !35393
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35433)
  %i.cnn = shl i64 %.sroa.0.0.i.i632, 2           ; 6 uses
  %i.cno = icmp ugt i64 %.sroa.0.0.i.i632, 4611686018427387903
  %i.cnp = icmp ugt i64 %i.cnn, 9223372036854775804
  %or.cond.i.i.i.i.i165.i645 = or i1 %i.cno, %i.cnp
  br i1 %or.cond.i.i.i.i.i165.i645, label %bb.oo, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i646, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i646: ; preds = %bb.om
  %i.cnq = icmp eq i64 %i.cnn, 0
  br i1 %i.cnq, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i972, label %bb.on

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i972: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i646
  %i.cnr = icmp samesign ult i64 %.sroa.0.0.i.i632, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cnr)
  br label %bb.or

bb.on:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i646
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35434
  %i.cns = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cnn, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35434 ; 3 uses
  %i.cnt = icmp eq ptr %i.cns, null
  br i1 %i.cnt, label %bb.oo, label %bb.op

bb.oo:                                            ; preds = %bb.on, %bb.om
  %.sroa.4.0.ph.i.i.i170.i968 = phi i64 [ 4, %bb.on ], [ 0, %bb.om ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i170.i968, i64 %i.cnn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc171.i971 unwind label %.body.i969, !noalias !35393

.noexc171.i971:                                   ; preds = %bb.oo
  unreachable

bb.op:                                            ; preds = %bb.on
  %i.cnu = icmp samesign ult i64 %.sroa.0.0.i.i632, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cnu)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35435
  %i.cnv = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cnn, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35435 ; 2 uses
  %i.cnw = icmp eq ptr %i.cnv, null
  br i1 %i.cnw, label %bb.oq, label %bb.or

bb.oq:                                            ; preds = %bb.op
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.cnn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc413.i.i967 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i966", !noalias !35436

.noexc413.i.i967:                                 ; preds = %bb.oq
  unreachable

bb.or:                                            ; preds = %bb.op, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i972
  %i.cnx = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i972 ], [ %i.cns, %bb.op ] ; 10 uses
  %.sroa.10.0.i.i411.i.i647 = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i972 ], [ %i.cnv, %bb.op ] ; 6 uses
  %i.cny = shl i64 %.sroa.0.0.i.i632, 4
  %i.cnz = add i64 %i.cny, 1008                   ; 3 uses
  %i.coa = lshr i64 %i.cnz, 6                     ; 17 uses
  %i.cob = mul i64 %i.coa, 2192                   ; 3 uses
  %or.cond.i.i.i.i.i.i.i648 = icmp ugt i64 %i.cnz, 269295533922767231
  br i1 %or.cond.i.i.i.i.i.i.i648, label %bb.ot, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i649, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i649: ; preds = %bb.or
  %i.coc = icmp eq i64 %i.cob, 0
  br i1 %i.coc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i", label %bb.os

bb.os:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i649
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35437
  %i.cod = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.cob, i64 noundef range(i64 1, 9) 8) #38, !noalias !35437 ; 2 uses
  %i.coe = icmp eq ptr %i.cod, null
  br i1 %i.coe, label %bb.ot, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i"

bb.ot:                                            ; preds = %bb.os, %bb.or
  %.sroa.4.0.ph.i.i.i.i.i963 = phi i64 [ 8, %bb.os ], [ 0, %bb.or ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i963, i64 %i.cob, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc415.i.i965 unwind label %.thread86.i.i964, !noalias !35436

.noexc415.i.i965:                                 ; preds = %bb.ot
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i": ; preds = %bb.os, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i649
  %.sroa.10.0.i.i.i.i.i650 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i649 ], [ %i.cod, %bb.os ] ; 8 uses
  %.sroa.4.0.i.i.i.i.i651 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i649 ], [ %i.coa, %bb.os ]
  %i.cof = icmp samesign ule i64 %i.coa, %.sroa.4.0.i.i.i.i.i651
  tail call void @llvm.assume(i1 %i.cof)
  %i.cog = icmp samesign ugt i64 %i.cnz, 127
  br i1 %i.cog, label %.lr.ph.i.i.i.i.i959.preheader, label %._crit_edge.i.i.i.i.i652

.lr.ph.i.i.i.i.i959.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i"
  %i.coh = add nsw i64 %i.coa, -1                 ; 2 uses
  %i.coi = add nsw i64 %i.coa, -2
  %xtraiter4597 = and i64 %i.coh, 7               ; 3 uses
  %i.coj = icmp ult i64 %i.coi, 7
  br i1 %i.coj, label %.lr.ph.i.i.i.i.i959.epil.preheader, label %.lr.ph.i.i.i.i.i959.preheader.new

.lr.ph.i.i.i.i.i959.preheader.new:                ; preds = %.lr.ph.i.i.i.i.i959.preheader
  %unroll_iter4602 = and i64 %i.coh, -8
  br label %.lr.ph.i.i.i.i.i959
end_hunk_7
begin_hunk_8_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
.lr.ph.i.i.i434.i.i660:                           ; preds = %.lr.ph.i.i.i434.i.i660, %.lr.ph.i.i.i434.i.i660.preheader.new
  %.sroa.0.08.i.i.i435.i.i661 = phi ptr [ %i.cpf, %.lr.ph.i.i.i434.i.i660.preheader.new ], [ %i.cps, %.lr.ph.i.i.i434.i.i660 ] ; 17 uses
  %niter4610 = phi i64 [ 0, %.lr.ph.i.i.i434.i.i660.preheader.new ], [ %niter4610.next.7, %.lr.ph.i.i.i434.i.i660 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i435.i.i661, i8 0, i64 2184, i1 false), !noalias !35436
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i, align 8, !noalias !35441
  %i.cpl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cpl, i8 0, i64 2184, i1 false), !noalias !35436
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1, align 8, !noalias !35441
  %i.cpm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cpm, i8 0, i64 2184, i1 false), !noalias !35436
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2, align 8, !noalias !35441
  %i.cpn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cpn, i8 0, i64 2184, i1 false), !noalias !35436
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3, align 8, !noalias !35441
  %i.cpo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cpo, i8 0, i64 2184, i1 false), !noalias !35436
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4, align 8, !noalias !35441
  %i.cpp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cpp, i8 0, i64 2184, i1 false), !noalias !35436
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5, align 8, !noalias !35441
  %i.cpq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cpq, i8 0, i64 2184, i1 false), !noalias !35436
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6, align 8, !noalias !35441
  %i.cpr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cpr, i8 0, i64 2184, i1 false), !noalias !35436
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7, align 8, !noalias !35441
  %i.cps = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i661, i64 17536 ; 3 uses
  %niter4610.next.7 = add i64 %niter4610, 8       ; 2 uses
  %niter4610.ncmp.7 = icmp eq i64 %niter4610.next.7, %unroll_iter4609
  br i1 %niter4610.ncmp.7, label %._crit_edge.thread.i.i.i431.i.i664.loopexit.unr-lcssa, label %.lr.ph.i.i.i434.i.i660

._crit_edge.i.i.i429.thread.i.i666:               ; preds = %._crit_edge.thread.i.i.i431.i.i664, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i656
  %.sroa.10.0.i.i.i427913.i.i667 = phi ptr [ %i.cpf, %._crit_edge.thread.i.i.i431.i.i664 ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i656 ] ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35442
  %i.cpt = tail call noundef ptr @mi_malloc_aligned(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #38, !noalias !35442 ; 16 uses
  %i.cpu = icmp eq ptr %i.cpt, null
  br i1 %i.cpu, label %bb.pa, label %bb.pc

bb.pa:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i666
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc444.i.i955 unwind label %bb.pb, !noalias !35436

.noexc444.i.i955:                                 ; preds = %bb.pa
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i689": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i680", %bb.pb
  %.sroa.1335.0.i.i690 = phi i64 [ %.sroa.0.0.i422.i.i658, %bb.pb ], [ %.sroa.1335.1123199.i.i683, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i680" ]
  %.sroa.034.0.i.i691 = phi ptr [ %.sroa.10.0.i.i.i427913.i.i667, %bb.pb ], [ %.sroa.034.1124197.i.i684, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i680" ] ; 2 uses
  %.sroa.12.1.i.i692 = phi i64 [ %i.coa, %bb.pb ], [ %.sroa.12.3125195.i.i685, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i680" ] ; 2 uses
  %.sroa.026.1.i.i693 = phi ptr [ %i.cpc, %bb.pb ], [ %.sroa.026.3126193.i.i686, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i680" ] ; 2 uses
  %.sroa.14.2.i.i694 = phi i64 [ %i.coa, %bb.pb ], [ %.sroa.14.4127191.i.i687, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i680" ] ; 2 uses
  %.sroa.016.2.i.i695 = phi ptr [ %.sroa.10.0.i.i.i.i.i650, %bb.pb ], [ %.sroa.016.4128189.i.i688, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i680" ] ; 2 uses
  %.pn230.pn.pn.i.i696 = phi { ptr, i32 } [ %i.cpw, %bb.pb ], [ %.pn230.pn202.i.i681, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i680" ] ; 2 uses
  %i.cpv = icmp eq i64 %.sroa.1335.0.i.i690, 0
  br i1 %i.cpv, label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i697"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i697": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i689"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.i.i691) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.034.0.i.i691) #38, !noalias !35436
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i"

bb.pb:                                            ; preds = %bb.pa
  %i.cpw = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i689"

bb.pc:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i666
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.cpt, i8 0, i64 32784, i1 false), !noalias !35436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !35436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.m, i8 0, i64 256, i1 false), !noalias !35436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !35436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.l, i8 0, i64 256, i1 false), !noalias !35436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !35436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.k, i8 0, i64 256, i1 false), !noalias !35436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.j, i8 0, i64 256, i1 false), !noalias !35436
  br label %bb.rv

.split.i.i717:                                    ; preds = %bb.ry, %._crit_edge582.i.loopexit.i778
  %indvars.iv.i.i718 = phi i64 [ %indvars.iv.next.i.i779, %._crit_edge582.i.loopexit.i778 ], [ %.sroa.0.0.i.i632, %bb.ry ] ; 2 uses
  %.sroa.0.0593.i.i719 = phi i64 [ %.sroa.0.1.lcssa.i.i773, %._crit_edge582.i.loopexit.i778 ], [ 0, %bb.ry ] ; 4 uses
  %.sroa.012.0592.i.i720 = phi i64 [ %.sroa.012.1.i.i754, %._crit_edge582.i.loopexit.i778 ], [ %i.coa, %bb.ry ] ; 7 uses
  %.sroa.018.0591.i.i721 = phi i64 [ %.sroa.018.1.lcssa.i.i772, %._crit_edge582.i.loopexit.i778 ], [ 0, %bb.ry ] ; 4 uses
  %.sroa.023.0590.i.i722 = phi i64 [ %.sroa.023.1.i.i758, %._crit_edge582.i.loopexit.i778 ], [ %i.coa, %bb.ry ] ; 7 uses
  %.sroa.029.0589.i.i723 = phi i64 [ %i.das, %._crit_edge582.i.loopexit.i778 ], [ 0, %bb.ry ] ; 2 uses
  %.sroa.043.0588.i.i724 = phi i64 [ %.sroa.043.4.lcssa.i.i745, %._crit_edge582.i.loopexit.i778 ], [ 0, %bb.ry ]
  %.sroa.047.1587.i.i725 = phi i64 [ %i.dat, %._crit_edge582.i.loopexit.i778 ], [ 0, %bb.ry ] ; 4 uses
  %.sroa.016.3586.i.i726 = phi ptr [ %.sroa.016.7.i.i753, %._crit_edge582.i.loopexit.i778 ], [ %.sroa.10.0.i.i.i.i.i650, %bb.ry ] ; 9 uses
  %.sroa.14.3585.i.i727 = phi i64 [ %.sroa.14.7.i.i752, %._crit_edge582.i.loopexit.i778 ], [ %i.coa, %bb.ry ] ; 9 uses
  %.sroa.026.2584.i.i728 = phi ptr [ %.sroa.026.5.i.i757, %._crit_edge582.i.loopexit.i778 ], [ %i.cpc, %bb.ry ] ; 11 uses
  %.sroa.12.2583.i.i729 = phi i64 [ %.sroa.12.5.i.i756, %._crit_edge582.i.loopexit.i778 ], [ %i.coa, %bb.ry ] ; 11 uses
  %i.cpx = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i718, i64 1)
  %umax838.i.i730 = tail call i64 @llvm.umin.i64(i64 %i.cpx, i64 64)
  %i.cpy = sub nuw nsw i64 %.sroa.0.0.i.i632, %.sroa.047.1587.i.i725
  %.sroa.0.0.i447.i.i731 = tail call noundef i64 @llvm.umin.i64(i64 %i.cpy, i64 64) ; 3 uses
  br label %.lr.ph571.i.i732

.thread163.loopexit.i.i746:                       ; preds = %._crit_edge.i.i744
  %lpad.loopexit255.i.i747 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i680"

.thread163.loopexit.split-lp.loopexit.i.i750:     ; preds = %._crit_edge572.i.loopexit.i749
  %lpad.loopexit258.i.i751 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i680"

.thread163.loopexit.split-lp.loopexit.split-lp.i.i671: ; preds = %.invoke3852, %.invoke3850, %.invoke.i.i670, %bb.rf, %bb.qy, %bb.pk, %bb.pg
  %.sroa.044.1.ph.ph.ph.i.i672 = phi ptr [ %i.cpt, %bb.pg ], [ %.sroa.044.2.i.i782, %bb.pk ], [ %i.cpt, %.invoke.i.i670 ], [ %i.cpt, %bb.qy ], [ %i.cpt, %.invoke3850 ], [ %i.cpt, %bb.rf ], [ %i.cpt, %.invoke3852 ]
  %.sroa.1335.2.ph.ph.ph.i.i673 = phi i64 [ 0, %bb.pg ], [ 0, %bb.pk ], [ %.sroa.0.0.i422.i.i658, %.invoke.i.i670 ], [ %.sroa.0.0.i422.i.i658, %bb.qy ], [ %.sroa.0.0.i422.i.i658, %.invoke3850 ], [ %.sroa.0.0.i422.i.i658, %bb.rf ], [ %.sroa.0.0.i422.i.i658, %.invoke3852 ]
  %.sroa.034.2.ph.ph.ph.i.i674 = phi ptr [ inttoptr (i64 8 to ptr), %bb.pg ], [ inttoptr (i64 8 to ptr), %bb.pk ], [ %.sroa.10.0.i.i.i427913.i.i667, %.invoke.i.i670 ], [ %.sroa.10.0.i.i.i427913.i.i667, %bb.qy ], [ %.sroa.10.0.i.i.i427913.i.i667, %.invoke3850 ], [ %.sroa.10.0.i.i.i427913.i.i667, %bb.rf ], [ %.sroa.10.0.i.i.i427913.i.i667, %.invoke3852 ]
  %.sroa.12.4.ph.ph.ph.i.i675 = phi i64 [ %.sroa.12.5.i.i756, %bb.pg ], [ %.sroa.12.5.i.i756, %bb.pk ], [ %i.coa, %.invoke.i.i670 ], [ %.sroa.12.2583.i.i729, %bb.qy ], [ %.sroa.12.2583.i.i729, %.invoke3850 ], [ %.sroa.12.2583.i.i729, %bb.rf ], [ %.sroa.12.5.i.i756, %.invoke3852 ]
  %.sroa.026.4.ph.ph.ph.i.i676 = phi ptr [ %.sroa.026.5.i.i757, %bb.pg ], [ %.sroa.026.5.i.i757, %bb.pk ], [ %i.cpc, %.invoke.i.i670 ], [ %.sroa.026.2584.i.i728, %bb.qy ], [ %.sroa.026.2584.i.i728, %.invoke3850 ], [ %.sroa.026.2584.i.i728, %bb.rf ], [ %.sroa.026.5.i.i757, %.invoke3852 ]
  %.sroa.14.5.ph.ph.ph.i.i677 = phi i64 [ %.sroa.14.7.i.i752, %bb.pg ], [ %.sroa.14.7.i.i752, %bb.pk ], [ %i.coa, %.invoke.i.i670 ], [ %.sroa.14.3585.i.i727, %bb.qy ], [ %.sroa.14.3585.i.i727, %.invoke3850 ], [ %.sroa.14.7.i.i752, %bb.rf ], [ %.sroa.14.7.i.i752, %.invoke3852 ]
  %.sroa.016.5.ph.ph.ph.i.i678 = phi ptr [ %.sroa.016.7.i.i753, %bb.pg ], [ %.sroa.016.7.i.i753, %bb.pk ], [ %.sroa.10.0.i.i.i.i.i650, %.invoke.i.i670 ], [ %.sroa.016.3586.i.i726, %bb.qy ], [ %.sroa.016.3586.i.i726, %.invoke3850 ], [ %.sroa.016.7.i.i753, %bb.rf ], [ %.sroa.016.7.i.i753, %.invoke3852 ]
  %lpad.loopexit.split-lp259.i.i679 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i680"

bb.pd:                                            ; preds = %bb.pp, %._crit_edge598.i.i790
  %.sroa.11.1.ph159.i.i791 = phi i1 [ true, %bb.pp ], [ false, %._crit_edge598.i.i790 ]
  %.sroa.044.1.ph160.i.i792 = phi ptr [ inttoptr (i64 4 to ptr), %bb.pp ], [ %.sroa.044.2.i.i782, %._crit_edge598.i.i790 ]
  %.sroa.12.4.ph161.i.i793 = phi i64 [ 0, %bb.pp ], [ %.sroa.12.5.i.i756, %._crit_edge598.i.i790 ]
  %.sroa.026.4.ph162.i.i794 = phi ptr [ inttoptr (i64 4 to ptr), %bb.pp ], [ %.sroa.026.5.i.i757, %._crit_edge598.i.i790 ]
  %lpad.thr_comm.split-lp.i.i795 = landingpad { ptr, i32 }
          cleanup
  br label %.thread130.i.i796

bb.pe:                                            ; preds = %._crit_edge582.i.loopexit.i778
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i427913.i.i667) #38, !noalias !35436
  %i.cpz = shl i64 %i.das, 6
  %i.cqa = lshr i64 %i.das, 1
  %i.cqb = mul i64 %i.cqa, %i.das
  %.sroa.0.0.i448.i.i780 = tail call noundef i64 @llvm.umin.i64(i64 %i.cqb, i64 %i.cpz) ; 5 uses
  %i.cqc = add nuw i64 %.sroa.0.0.i448.i.i780, 1  ; 2 uses
  %i.cqd = icmp ugt i64 %.sroa.0.0.i448.i.i780, 2048
  br i1 %i.cqd, label %bb.pf, label %bb.ph

bb.pf:                                            ; preds = %bb.pe
  %i.cqe = shl i64 %i.cqc, 4                      ; 5 uses
  %i.cqf = icmp ugt i64 %.sroa.0.0.i448.i.i780, 1152921504606846974
  %i.cqg = icmp ugt i64 %i.cqe, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i922 = or i1 %i.cqf, %i.cqg
  br i1 %or.cond.i.i.i.i.i449.i.i922, label %bb.pg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i923, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i923: ; preds = %bb.pf
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35443
  %i.cqh = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.cqe, i64 noundef range(i64 1, 9) 4) #38, !noalias !35443 ; 5 uses
  %i.cqi = icmp eq ptr %i.cqh, null
  br i1 %i.cqi, label %bb.pg, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i924"

bb.pg:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i923, %bb.pf
  %.sroa.4.0.ph.i.i.i455.i.i929 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i923 ], [ 0, %bb.pf ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i929, i64 %i.cqe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc456.i.i930 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i671, !noalias !35436

.noexc456.i.i930:                                 ; preds = %bb.pg
  unreachable

bb.ph:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i924", %bb.pe
  %.sroa.11.2.i.i781 = phi i64 [ %i.cqc, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i924" ], [ 2049, %bb.pe ]
  %.sroa.044.2.i.i782 = phi ptr [ %i.cqh, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i924" ], [ %i.cpt, %bb.pe ] ; 4 uses
  %i.cqj = shl i64 %i.das, 2                      ; 9 uses
  %i.cqk = icmp ugt i64 %i.das, 4611686018427387903
  %i.cql = icmp ugt i64 %i.cqj, 9223372036854775804
  %or.cond.i.i.i.i458.i.i783 = or i1 %i.cqk, %i.cql
  br i1 %or.cond.i.i.i.i458.i.i783, label %bb.pk, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i784, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i784: ; preds = %bb.ph
  %i.cqm = icmp eq i64 %i.cqj, 0                  ; 2 uses
  br i1 %i.cqm, label %bb.pl, label %bb.pi

bb.pi:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i784
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35444
  %i.cqn = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cqj, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35444 ; 2 uses
  %i.cqo = icmp eq ptr %i.cqn, null
  br i1 %i.cqo, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.cqp = ptrtoint ptr %i.cqn to i64
  br label %bb.pl

bb.pk:                                            ; preds = %bb.pi, %bb.ph
  %.sroa.4.0.ph.i.i461.i.i920 = phi i64 [ 4, %bb.pi ], [ 0, %bb.ph ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i920, i64 %i.cqj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc462.i.i921 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i671, !noalias !35436

.noexc462.i.i921:                                 ; preds = %bb.pk
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i924": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i923
  %i.cqq = add nsw i64 %i.cqe, -16                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cqh, i8 0, i64 range(i64 0, -31) %i.cqq, i1 false), !noalias !35445
  %i.cqr = getelementptr i8, ptr %i.cqh, i64 %i.cqe ; 2 uses
  %scevgep11.i451.i.i925 = getelementptr i8, ptr %i.cqh, i64 %i.cqq
  store i32 0, ptr %scevgep11.i451.i.i925, align 4, !noalias !35445
  %.sroa.55.0..sroa_idx.i452.i.i926 = getelementptr i8, ptr %i.cqr, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i926, align 4, !noalias !35445
  %.sroa.67.0..sroa_idx.i453.i.i927 = getelementptr i8, ptr %i.cqr, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i927, align 4, !noalias !35445
  %i.cqs = icmp samesign ult i64 %.sroa.0.0.i448.i.i780, 576460752303423487
  tail call void @llvm.assume(i1 %i.cqs)
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cpt) #38, !noalias !35436
  br label %bb.ph

bb.pl:                                            ; preds = %bb.pj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i784
  %.sroa.10.0.i.i460.i.i785 = phi i64 [ %i.cqp, %bb.pj ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i784 ]
  %i.cqt = inttoptr i64 %.sroa.10.0.i.i460.i.i785 to ptr ; 13 uses
  %i.cqu = icmp samesign ult i64 %i.das, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cqu)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cqt) ]
  %i.cqv = getelementptr inbounds nuw i8, ptr %i.cqt, i64 %i.cqj
  %i.cqw = icmp eq i64 %i.das, 0                  ; 3 uses
  br i1 %i.cqw, label %._crit_edge598.i.i790, label %.lr.ph597.i.i786.preheader

.lr.ph597.i.i786.preheader:                       ; preds = %bb.pl
  %i.cqx = add nsw i64 %i.cqj, -4                 ; 2 uses
  %i.cqy = lshr exact i64 %i.cqx, 2
  %i.cqz = add nuw nsw i64 %i.cqy, 1              ; 2 uses
  %min.iters.check3800 = icmp ult i64 %i.cqx, 28
  br i1 %min.iters.check3800, label %.lr.ph597.i.i786.preheader3880, label %vector.ph3801

vector.ph3801:                                    ; preds = %.lr.ph597.i.i786.preheader
  %n.vec3802 = and i64 %i.cqz, 9223372036854775800 ; 4 uses
  %i.cra = trunc i64 %n.vec3802 to i32
  %i.crb = shl i64 %n.vec3802, 2
  %i.crc = getelementptr i8, ptr %i.cqt, i64 %i.crb
  br label %vector.body3803

vector.body3803:                                  ; preds = %vector.body3803, %vector.ph3801
  %index3804 = phi i64 [ 0, %vector.ph3801 ], [ %index.next3808, %vector.body3803 ] ; 2 uses
  %vec.ind3805 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3801 ], [ %vec.ind.next3809, %vector.body3803 ] ; 3 uses
  %step.add3806 = add <4 x i32> %vec.ind3805, splat (i32 4)
  %i.crd = shl i64 %index3804, 2
  %next.gep3807 = getelementptr i8, ptr %i.cqt, i64 %i.crd ; 2 uses
  %i.cre = getelementptr i8, ptr %next.gep3807, i64 16
  store <4 x i32> %vec.ind3805, ptr %next.gep3807, align 4, !noalias !35436
  store <4 x i32> %step.add3806, ptr %i.cre, align 4, !noalias !35436
  %index.next3808 = add nuw i64 %index3804, 8     ; 2 uses
  %vec.ind.next3809 = add <4 x i32> %vec.ind3805, splat (i32 8)
  %i.crf = icmp eq i64 %index.next3808, %n.vec3802
  br i1 %i.crf, label %middle.block3810, label %vector.body3803, !llvm.loop !34944

middle.block3810:                                 ; preds = %vector.body3803
  %cmp.n3811 = icmp eq i64 %i.cqz, %n.vec3802
  br i1 %cmp.n3811, label %._crit_edge598.i.i790, label %.lr.ph597.i.i786.preheader3880

.lr.ph597.i.i786.preheader3880:                   ; preds = %.lr.ph597.i.i786.preheader, %middle.block3810
  %.sroa.047.2595.i.i787.ph = phi i32 [ 0, %.lr.ph597.i.i786.preheader ], [ %i.cra, %middle.block3810 ]
  %.sroa.0135.0594.i.i788.ph = phi ptr [ %i.cqt, %.lr.ph597.i.i786.preheader ], [ %i.crc, %middle.block3810 ]
  br label %.lr.ph597.i.i786

.lr.ph597.i.i786:                                 ; preds = %.lr.ph597.i.i786.preheader3880, %.lr.ph597.i.i786
  %.sroa.047.2595.i.i787 = phi i32 [ %i.crg, %.lr.ph597.i.i786 ], [ %.sroa.047.2595.i.i787.ph, %.lr.ph597.i.i786.preheader3880 ] ; 2 uses
  %.sroa.0135.0594.i.i788 = phi ptr [ %.sroa.0135.1.i.i789, %.lr.ph597.i.i786 ], [ %.sroa.0135.0594.i.i788.ph, %.lr.ph597.i.i786.preheader3880 ] ; 2 uses
  %.sroa.0135.1.i.i789 = getelementptr inbounds nuw i8, ptr %.sroa.0135.0594.i.i788, i64 4 ; 2 uses
  store i32 %.sroa.047.2595.i.i787, ptr %.sroa.0135.0594.i.i788, align 4, !noalias !35436
  %i.crg = add i32 %.sroa.047.2595.i.i787, 1
  %i.crh = icmp eq ptr %.sroa.0135.1.i.i789, %i.cqv
  br i1 %i.crh, label %._crit_edge598.i.i790, label %.lr.ph597.i.i786, !llvm.loop !34945

._crit_edge598.i.i790:                            ; preds = %.lr.ph597.i.i786, %middle.block3810, %bb.pl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i753) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i757) ]
  %i.cri = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h74b2081842603b54E(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i753, i64 noundef %.sroa.14.7.i.i752, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i757, i64 noundef %.sroa.12.5.i.i756, ptr noalias noundef nonnull align 4 %i.cnx, i64 noundef %.sroa.0.0.i.i632, ptr noalias noundef nonnull align 4 %i.cqt, i64 noundef %i.das, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i782, i64 noundef %.sroa.11.2.i.i781, i64 noundef %i.das, i64 noundef %.sroa.0.0.i.i632, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i780)
          to label %bb.pm unwind label %bb.pd, !noalias !35436 ; 3 uses

bb.pm:                                            ; preds = %._crit_edge598.i.i790
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.044.2.i.i782) #38, !noalias !35436
  %i.crj = icmp eq i64 %.sroa.12.5.i.i756, 0
  br i1 %i.crj, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i808, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i807"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i807": ; preds = %bb.pm
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.5.i.i757) #38, !noalias !35436
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i808

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i808: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i807", %bb.pm
  br i1 %i.cqm, label %bb.pr, label %bb.pn

bb.pn:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i808
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35446
  %i.crk = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cqj, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35446 ; 2 uses
  %i.crl = icmp eq ptr %i.crk, null
  br i1 %i.crl, label %bb.pp, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.crm = ptrtoint ptr %i.crk to i64
  br label %bb.pr

bb.pp:                                            ; preds = %bb.pn
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.cqj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc472.i.i919 unwind label %bb.pd, !noalias !35436

.noexc472.i.i919:                                 ; preds = %bb.pp
  unreachable

bb.pq:                                            ; preds = %.invoke1132.i.i892, %.invoke1130.i.i903
  %i.crn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i826

bb.pr:                                            ; preds = %bb.po, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i808
  %.sroa.10.0.i.i470.i.i809 = phi i64 [ %i.crm, %bb.po ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i808 ]
  %i.cro = inttoptr i64 %.sroa.10.0.i.i470.i.i809 to ptr ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cro) ]
  br i1 %i.cqw, label %.preheader.split.i.i811, label %.lr.ph601.preheader.i.i810

.lr.ph601.preheader.i.i810:                       ; preds = %bb.pr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cro, i8 -1, i64 range(i64 0, 9223372036854775805) %i.cqj, i1 false), !noalias !35436
  br label %.preheader.split.i.i811

.preheader.split.i.i811:                          ; preds = %.lr.ph601.preheader.i.i810, %bb.pr
  %i.crp = getelementptr inbounds nuw i8, ptr %i.i, i64 2184
  %i.crq = getelementptr inbounds nuw i8, ptr %i.i, i64 2176 ; 2 uses
  %i.crr = getelementptr inbounds nuw i8, ptr %i.g, i64 2176 ; 3 uses
  %.not1137.i.i812 = icmp eq i64 %i.cri, 0        ; 2 uses
  %i.crs = getelementptr inbounds nuw i8, ptr %i.h, i64 2176 ; 3 uses
  br label %bb.qk

bb.ps:                                            ; preds = %bb.qo
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cqt) #38, !noalias !35436
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.016.7.i.i753) #38, !noalias !35436
  %.val365.i.i875 = load ptr, ptr %9, align 8, !alias.scope !35447, !noalias !35448, !nonnull !45, !align !55, !noundef !45 ; 3 uses
  %i.crt = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.val366.i.i876 = load i64, ptr %i.crt, align 8, !alias.scope !35447, !noalias !35448, !noundef !45 ; 5 uses
  %i.cru = icmp ult i64 %.val366.i.i876, %.sroa.0.0.i.i632
  br i1 %i.cru, label %bb.pt, label %bb.px

bb.pt:                                            ; preds = %bb.ps
  %i.crv = icmp eq i64 %.val366.i.i876, 0         ; 2 uses
  %spec.select.i169.i905 = select i1 %i.crv, i64 %.sroa.0.0.i.i632, i64 %.val366.i.i876
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pu, %bb.pt
  %.sroa.0101.1.i.i906 = phi i64 [ %spec.select.i169.i905, %bb.pt ], [ %i.crx, %bb.pu ] ; 9 uses
  %i.crw = icmp ult i64 %.sroa.0101.1.i.i906, %.sroa.0.0.i.i632
  %i.crx = shl nuw nsw i64 %.sroa.0101.1.i.i906, 1
  br i1 %i.crw, label %bb.pu, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.cry = icmp slt i64 %.sroa.0101.1.i.i906, 0
  br i1 %i.cry, label %.invoke1130.i.i903, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i907, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i907: ; preds = %bb.pv
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35449
  %i.crz = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.0101.1.i.i906, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35449 ; 5 uses
  %i.csa = icmp eq ptr %i.crz, null
  br i1 %i.csa, label %.invoke1130.i.i903, label %bb.pw

bb.pw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i907
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.crz, ptr nonnull readonly align 1 %.val365.i.i875, i64 %.val366.i.i876, i1 false), !alias.scope !35450, !noalias !35451
  store ptr %i.crz, ptr %9, align 8, !alias.scope !35447, !noalias !35448
  store i64 %.sroa.0101.1.i.i906, ptr %i.crt, align 8, !alias.scope !35447, !noalias !35448
  br i1 %i.crv, label %bb.px, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i908"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i908": ; preds = %bb.pw
  tail call void @mi_free(ptr noundef nonnull align 1 %.val365.i.i875) #38, !noalias !35436
  br label %bb.px

bb.px:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i908", %bb.pw, %bb.ps
  %.val.i.i877 = phi ptr [ %.val365.i.i875, %bb.ps ], [ %i.crz, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i908" ], [ %i.crz, %bb.pw ]
  %.val270.i.i878 = phi i64 [ %.val366.i.i876, %bb.ps ], [ %.sroa.0101.1.i.i906, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i908" ], [ %.sroa.0101.1.i.i906, %bb.pw ] ; 2 uses
  %i.csb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.val309.i.i879 = load ptr, ptr %i.csb, align 8, !alias.scope !35447, !noalias !35448, !nonnull !45, !align !70, !noundef !45 ; 3 uses
  %i.csc = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %.val310.i.i880 = load i64, ptr %i.csc, align 8, !alias.scope !35447, !noalias !35448, !noundef !45 ; 5 uses
  %i.csd = icmp ult i64 %.val310.i.i880, %.sroa.0.0.i.i632
  br i1 %i.csd, label %bb.py, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i881"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i881": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i902", %bb.qb, %bb.px
  %.val339.i.i882 = phi ptr [ %.val309.i.i879, %bb.px ], [ %i.csk, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i902" ], [ %i.csk, %bb.qb ]
  %.val340.i.i883 = phi i64 [ %.val310.i.i880, %bb.px ], [ %.sroa.0104.1.i.i899, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i902" ], [ %.sroa.0104.1.i.i899, %bb.qb ] ; 2 uses
  br label %bb.qd

bb.py:                                            ; preds = %bb.px
  %i.cse = icmp eq i64 %.val310.i.i880, 0         ; 2 uses
  %spec.select247.i.i898 = select i1 %i.cse, i64 %.sroa.0.0.i.i632, i64 %.val310.i.i880
  br label %bb.pz

bb.pz:                                            ; preds = %bb.pz, %bb.py
  %.sroa.0104.1.i.i899 = phi i64 [ %spec.select247.i.i898, %bb.py ], [ %i.csg, %bb.pz ] ; 8 uses
  %i.csf = icmp ult i64 %.sroa.0104.1.i.i899, %.sroa.0.0.i.i632
  %i.csg = shl nuw nsw i64 %.sroa.0104.1.i.i899, 1
  br i1 %i.csf, label %bb.pz, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.csh = shl i64 %.sroa.0104.1.i.i899, 2        ; 4 uses
  %i.csi = icmp ugt i64 %.sroa.0104.1.i.i899, 4611686018427387903
  %i.csj = icmp ugt i64 %i.csh, 9223372036854775804
  %or.cond.i.i.i.i484.i.i900 = or i1 %i.csi, %i.csj
  br i1 %or.cond.i.i.i.i484.i.i900, label %.invoke1130.i.i903, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i901, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i901: ; preds = %bb.qa
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35452
  %i.csk = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.csh, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35452 ; 5 uses
  %i.csl = icmp eq ptr %i.csk, null
  br i1 %i.csl, label %.invoke1130.i.i903, label %bb.qb

bb.qb:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i901
  %i.csm = icmp samesign ult i64 %.sroa.0104.1.i.i899, 2305843009213693952
  tail call void @llvm.assume(i1 %i.csm)
  %i.csn = shl nuw nsw i64 %.val310.i.i880, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.csk, ptr nonnull readonly align 4 %.val309.i.i879, i64 %i.csn, i1 false), !alias.scope !35453, !noalias !35454
  store ptr %i.csk, ptr %i.csb, align 8, !alias.scope !35447, !noalias !35448
  store i64 %.sroa.0104.1.i.i899, ptr %i.csc, align 8, !alias.scope !35447, !noalias !35448
  br i1 %i.cse, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i881", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i902"

.invoke1130.i.i903:                               ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i901, %bb.qa, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i907, %bb.pv
  %i.cso = phi i64 [ 0, %bb.pv ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i907 ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i901 ], [ 0, %bb.qa ]
  %i.csp = phi i64 [ %.sroa.0101.1.i.i906, %bb.pv ], [ %.sroa.0101.1.i.i906, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i907 ], [ %i.csh, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i901 ], [ %i.csh, %bb.qa ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.cso, i64 %i.csp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont1131.i.i904 unwind label %bb.pq, !noalias !35436

.cont1131.i.i904:                                 ; preds = %.invoke1130.i.i903
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i902": ; preds = %bb.qb
  tail call void @mi_free(ptr noundef nonnull align 4 %.val309.i.i879) #38, !noalias !35436
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i881"

bb.qc:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i806", %.thread130.i.i796
  br i1 %.sroa.11.0147.i.i803, label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i680"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i680": ; preds = %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i937", %bb.rl, %bb.qc, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i671, %.thread163.loopexit.split-lp.loopexit.i.i750, %.thread163.loopexit.i.i746
  %.pn230.pn202.i.i681 = phi { ptr, i32 } [ %.pn230155.i.i797, %bb.qc ], [ %i.dca, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i937" ], [ %i.dbj, %bb.rl ], [ %i.dcb, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %lpad.loopexit255.i.i747, %.thread163.loopexit.i.i746 ], [ %lpad.loopexit258.i.i751, %.thread163.loopexit.split-lp.loopexit.i.i750 ], [ %lpad.loopexit.split-lp259.i.i679, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i671 ]
  %.sroa.044.0122201.i.i682 = phi ptr [ %.sroa.044.0148.i.i802, %bb.qc ], [ %i.cpt, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i937" ], [ %i.cpt, %bb.rl ], [ %i.cpt, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %i.cpt, %.thread163.loopexit.i.i746 ], [ %i.cpt, %.thread163.loopexit.split-lp.loopexit.i.i750 ], [ %.sroa.044.1.ph.ph.ph.i.i672, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i671 ] ; 2 uses
  %.sroa.1335.1123199.i.i683 = phi i64 [ 0, %bb.qc ], [ %.sroa.0.0.i422.i.i658, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i937" ], [ %.sroa.0.0.i422.i.i658, %bb.rl ], [ %.sroa.0.0.i422.i.i658, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %.sroa.0.0.i422.i.i658, %.thread163.loopexit.i.i746 ], [ %.sroa.0.0.i422.i.i658, %.thread163.loopexit.split-lp.loopexit.i.i750 ], [ %.sroa.1335.2.ph.ph.ph.i.i673, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i671 ]
  %.sroa.034.1124197.i.i684 = phi ptr [ inttoptr (i64 8 to ptr), %bb.qc ], [ %.sroa.10.0.i.i.i427913.i.i667, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i937" ], [ %.sroa.10.0.i.i.i427913.i.i667, %bb.rl ], [ %.sroa.10.0.i.i.i427913.i.i667, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %.sroa.10.0.i.i.i427913.i.i667, %.thread163.loopexit.i.i746 ], [ %.sroa.10.0.i.i.i427913.i.i667, %.thread163.loopexit.split-lp.loopexit.i.i750 ], [ %.sroa.034.2.ph.ph.ph.i.i674, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i671 ]
  %.sroa.12.3125195.i.i685 = phi i64 [ %.sroa.12.3151.i.i801, %bb.qc ], [ %.sroa.12.2583.i.i729, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i937" ], [ %.sroa.12.5.i.i756, %bb.rl ], [ %.sroa.12.2583.i.i729, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %.sroa.12.2583.i.i729, %.thread163.loopexit.i.i746 ], [ %.sroa.12.2583.i.i729, %.thread163.loopexit.split-lp.loopexit.i.i750 ], [ %.sroa.12.4.ph.ph.ph.i.i675, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i671 ]
  %.sroa.026.3126193.i.i686 = phi ptr [ %.sroa.026.3152.i.i800, %bb.qc ], [ %.sroa.026.2584.i.i728, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i937" ], [ %.sroa.026.5.i.i757, %bb.rl ], [ %.sroa.026.2584.i.i728, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %.sroa.026.2584.i.i728, %.thread163.loopexit.i.i746 ], [ %.sroa.026.2584.i.i728, %.thread163.loopexit.split-lp.loopexit.i.i750 ], [ %.sroa.026.4.ph.ph.ph.i.i676, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i671 ]
  %.sroa.14.4127191.i.i687 = phi i64 [ %.sroa.14.4153.i.i799, %bb.qc ], [ %.sroa.14.7.i.i752, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i937" ], [ %.sroa.14.7.i.i752, %bb.rl ], [ %.sroa.14.3585.i.i727, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %.sroa.14.3585.i.i727, %.thread163.loopexit.i.i746 ], [ %.sroa.14.3585.i.i727, %.thread163.loopexit.split-lp.loopexit.i.i750 ], [ %.sroa.14.5.ph.ph.ph.i.i677, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i671 ]
  %.sroa.016.4128189.i.i688 = phi ptr [ %.sroa.016.4154.i.i798, %bb.qc ], [ %.sroa.016.7.i.i753, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i937" ], [ %.sroa.016.7.i.i753, %bb.rl ], [ %.sroa.016.3586.i.i726, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %.sroa.016.3586.i.i726, %.thread163.loopexit.i.i746 ], [ %.sroa.016.3586.i.i726, %.thread163.loopexit.split-lp.loopexit.i.i750 ], [ %.sroa.016.5.ph.ph.ph.i.i678, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i671 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.0122201.i.i682) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.044.0122201.i.i682) #38, !noalias !35436
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i689"

bb.qd:                                            ; preds = %bb.qg, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i881"
  %i.csq = phi i64 [ 1, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i881" ], [ %i.csx, %bb.qg ] ; 4 uses
  %.sroa.0107.0624.i.i884 = phi i32 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i881" ], [ %.sroa.0107.1.i.i897, %bb.qg ]
  %.sroa.0109.0623.i.i885 = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i881" ], [ %.sroa.0109.1.i.i896, %bb.qg ] ; 8 uses
  %.sroa.0113.0622.i.i886 = phi i8 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i881" ], [ %.sroa.0113.1.i.i895, %bb.qg ] ; 2 uses
  %.sroa.0143.0621.i.i887 = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.split.i.i881" ], [ %i.csq, %bb.qg ] ; 2 uses
  %i.csr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i647, i64 %.sroa.0143.0621.i.i887
  %i.css = load i32, ptr %i.csr, align 4, !noalias !35436, !noundef !45
  %i.cst = add i32 %i.css, %.sroa.0107.0624.i.i884 ; 2 uses
  %i.csu = icmp eq i64 %i.csq, %.sroa.0.0.i.i632  ; 2 uses
  %.phi.trans.insert.i.i888 = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %.sroa.0143.0621.i.i887
  %.pre855.i.i889 = load i32, ptr %.phi.trans.insert.i.i888, align 4, !noalias !35436 ; 2 uses
  br i1 %i.csu, label %._crit_edge854.i.i891, label %bb.qf

bb.qe:                                            ; preds = %bb.rn, %bb.rg, %bb.ra
  unreachable

bb.qf:                                            ; preds = %bb.qd
  %i.csv = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %i.csq
  %i.csw = load i32, ptr %i.csv, align 4, !noalias !35436, !noundef !45
  %.not223.i.i890 = icmp eq i32 %.pre855.i.i889, %i.csw
  br i1 %.not223.i.i890, label %bb.qg, label %._crit_edge854.i.i891

bb.qg:                                            ; preds = %bb.qj, %bb.qf
  %.sroa.0113.1.i.i895 = phi i8 [ %.sroa.0.0.i511.i.i894, %bb.qj ], [ %.sroa.0113.0622.i.i886, %bb.qf ] ; 2 uses
  %.sroa.0109.1.i.i896 = phi i64 [ %i.ctk, %bb.qj ], [ %.sroa.0109.0623.i.i885, %bb.qf ] ; 2 uses
  %.sroa.0107.1.i.i897 = phi i32 [ 0, %bb.qj ], [ %i.cst, %bb.qf ]
  %i.csx = add nuw i64 %i.csq, 1
  br i1 %i.csu, label %bb.sb, label %bb.qd

._crit_edge854.i.i891:                            ; preds = %bb.qf, %bb.qd
  %i.csy = zext i32 %.pre855.i.i889 to i64        ; 3 uses
  %i.csz = icmp samesign ugt i64 %i.das, %i.csy
  br i1 %i.csz, label %bb.qh, label %.invoke1132.i.i892

bb.qh:                                            ; preds = %._crit_edge854.i.i891
  %i.cta = getelementptr inbounds nuw [4 x i8], ptr %i.cro, i64 %i.csy
  %i.ctb = load i32, ptr %i.cta, align 4, !noalias !35436, !noundef !45
  %i.ctc = trunc i32 %i.ctb to i8                 ; 2 uses
  %i.ctd = icmp ult i64 %.sroa.0109.0623.i.i885, %.val270.i.i878
  br i1 %i.ctd, label %bb.qi, label %.invoke1132.i.i892

bb.qi:                                            ; preds = %bb.qh
  %i.cte = getelementptr inbounds nuw i8, ptr %.val.i.i877, i64 %.sroa.0109.0623.i.i885
  store i8 %i.ctc, ptr %i.cte, align 1, !noalias !35436
  %i.ctf = icmp ult i64 %.sroa.0109.0623.i.i885, %.val340.i.i883
  br i1 %i.ctf, label %bb.qj, label %.invoke1132.i.i892

.invoke1132.i.i892:                               ; preds = %bb.qi, %bb.qh, %._crit_edge854.i.i891
  %i.ctg = phi i64 [ %.sroa.0109.0623.i.i885, %bb.qh ], [ %i.csy, %._crit_edge854.i.i891 ], [ %.sroa.0109.0623.i.i885, %bb.qi ]
  %i.cth = phi i64 [ %.val270.i.i878, %bb.qh ], [ %i.das, %._crit_edge854.i.i891 ], [ %.val340.i.i883, %bb.qi ]
  %i.cti = phi ptr [ @1549, %bb.qh ], [ @1548, %._crit_edge854.i.i891 ], [ @1550, %bb.qi ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ctg, i64 noundef %i.cth, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cti) #43
          to label %.cont1133.i.i893 unwind label %bb.pq, !noalias !35436

.cont1133.i.i893:                                 ; preds = %.invoke1132.i.i892
  unreachable

bb.qj:                                            ; preds = %bb.qi
  %i.ctj = getelementptr inbounds nuw [4 x i8], ptr %.val339.i.i882, i64 %.sroa.0109.0623.i.i885
  store i32 %i.cst, ptr %i.ctj, align 4, !noalias !35436
  %.sroa.0.0.i511.i.i894 = tail call noundef i8 @llvm.umax.i8(i8 %i.ctc, i8 %.sroa.0113.0622.i.i886)
  %i.ctk = add nuw i64 %.sroa.0109.0623.i.i885, 1
  br label %bb.qg

bb.qk:                                            ; preds = %bb.qo, %.preheader.split.i.i811
  %.sroa.0137.1620.i.i813 = phi i64 [ 1, %.preheader.split.i.i811 ], [ %.sroa.0137.1.i.i874, %bb.qo ] ; 3 uses
  %.sroa.043.1619.i.i814 = phi i64 [ 0, %.preheader.split.i.i811 ], [ %.sroa.043.2.lcssa918923.i864.i870, %bb.qo ] ; 3 uses
  %.sroa.084.0618.i.i815 = phi i32 [ 0, %.preheader.split.i.i811 ], [ %.sroa.084.1.i.i873, %bb.qo ] ; 3 uses
  %.sroa.0137.0617.i.i816 = phi i64 [ 0, %.preheader.split.i.i811 ], [ %.sroa.0137.1620.i.i813, %bb.qo ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.i, i8 0, i64 2184, i1 false), !noalias !35436
  store float 3.402000e+38, ptr %i.crp, align 8, !alias.scope !35455, !noalias !35436
end_hunk_8
begin_hunk_9_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
.lr.ph.i.i739:                                    ; preds = %bb.ru, %.lr.ph.preheader.i.i737
  %i.dcs = phi i64 [ %i.ddg, %bb.ru ], [ 1, %.lr.ph.preheader.i.i737 ] ; 3 uses
  %.sroa.043.4567.i.i740 = phi i64 [ %i.ddf, %bb.ru ], [ %.sroa.043.3569.i.i734, %.lr.ph.preheader.i.i737 ] ; 3 uses
  %exitcond830.not.i.i741 = icmp eq i64 %i.dcs, %i.dck
  br i1 %exitcond830.not.i.i741, label %.invoke3850, label %bb.rt

bb.rt:                                            ; preds = %.lr.ph.i.i739
  %i.dct = getelementptr inbounds nuw [2 x i8], ptr %i.cgn, i64 %.sroa.043.4567.i.i740
  %i.dcu = load i16, ptr %i.dct, align 2, !alias.scope !35487, !noalias !35475, !noundef !45 ; 2 uses
  %i.dcv = zext i16 %i.dcu to i64                 ; 2 uses
  %i.dcw = icmp ult i16 %i.dcu, 544
  br i1 %i.dcw, label %bb.ru, label %.invoke3850

.invoke3850:                                      ; preds = %.lr.ph571.i.i732, %bb.rt, %.lr.ph.i.i739
  %i.dcx = phi i64 [ %.sroa.043.4567.i.i740, %.lr.ph.i.i739 ], [ %i.dcv, %bb.rt ], [ %i.dcf, %.lr.ph571.i.i732 ]
  %i.dcy = phi i64 [ %2, %.lr.ph.i.i739 ], [ 544, %bb.rt ], [ %.sroa.0.0.i.i632, %.lr.ph571.i.i732 ]
  %i.dcz = phi ptr [ @1565, %.lr.ph.i.i739 ], [ @1929, %bb.rt ], [ @1564, %.lr.ph571.i.i732 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dcx, i64 noundef %i.dcy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dcz) #43
          to label %.cont3851 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i671, !noalias !35436

.cont3851:                                        ; preds = %.invoke3850
  unreachable

bb.ru:                                            ; preds = %bb.rt
  %i.dda = getelementptr inbounds nuw [4 x i8], ptr %i.dcc, i64 %i.dcv ; 2 uses
  %i.ddb = load i32, ptr %i.dda, align 4, !alias.scope !35488, !noalias !35436, !noundef !45
  %i.ddc = add i32 %i.ddb, 1
  store i32 %i.ddc, ptr %i.dda, align 4, !alias.scope !35488, !noalias !35436
  %i.ddd = load i64, ptr %i.dcd, align 8, !alias.scope !35489, !noalias !35436, !noundef !45
  %i.dde = add i64 %i.ddd, 1
  store i64 %i.dde, ptr %i.dcd, align 8, !alias.scope !35490, !noalias !35436
  %i.ddf = add nuw i64 %.sroa.043.4567.i.i740, 1  ; 2 uses
  %i.ddg = add nuw nsw i64 %i.dcs, 1
  %exitcond831.not.i.i743 = icmp eq i64 %i.dcs, %i.dcj
  br i1 %exitcond831.not.i.i743, label %._crit_edge.i.i744, label %.lr.ph.i.i739

bb.rv:                                            ; preds = %bb.ry, %bb.pc
  %.sroa.047.0565.i.i668 = phi i64 [ 0, %bb.pc ], [ %i.ddl, %bb.ry ] ; 2 uses
  %.sroa.059.0564.i.i669 = phi i64 [ 0, %bb.pc ], [ %.sroa.059.1.i.i716, %bb.ry ] ; 5 uses
  %i.ddh = icmp ult i64 %.sroa.059.0564.i.i669, %.sroa.0.0.i.i632
  br i1 %i.ddh, label %bb.rw, label %.invoke.i.i670

bb.rw:                                            ; preds = %bb.rv
  %i.ddi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i647, i64 %.sroa.059.0564.i.i669 ; 2 uses
  %i.ddj = load i32, ptr %i.ddi, align 4, !noalias !35436, !noundef !45
  %i.ddk = add i32 %i.ddj, 1
  store i32 %i.ddk, ptr %i.ddi, align 4, !noalias !35436
  %i.ddl = add nuw i64 %.sroa.047.0565.i.i668, 1  ; 3 uses
  %.not907.i.i714 = icmp eq i64 %i.ddl, %.sroa.01.1 ; 2 uses
  br i1 %.not907.i.i714, label %bb.rz, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.ddm = getelementptr inbounds nuw i8, ptr %i.cly, i64 %.sroa.047.0565.i.i668
  %i.ddn = load i8, ptr %i.ddm, align 1, !alias.scope !35432, !noalias !35491, !noundef !45
  %i.ddo = getelementptr inbounds nuw i8, ptr %i.cly, i64 %i.ddl
  %i.ddp = load i8, ptr %i.ddo, align 1, !alias.scope !35432, !noalias !35491, !noundef !45
  %.not238.i.i715 = icmp eq i8 %i.ddn, %i.ddp
  br i1 %.not238.i.i715, label %bb.ry, label %bb.rz

.invoke.i.i670:                                   ; preds = %bb.rv
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0564.i.i669, i64 noundef %.sroa.0.0.i.i632, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1566) #43
          to label %.cont.i.i713 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i671, !noalias !35436

.cont.i.i713:                                     ; preds = %.invoke.i.i670
  unreachable

bb.ry:                                            ; preds = %bb.rz, %bb.rx
  %.sroa.059.1.i.i716 = phi i64 [ %i.ddq, %bb.rz ], [ %.sroa.059.0564.i.i669, %bb.rx ]
  br i1 %.not907.i.i714, label %.split.i.i717, label %bb.rv

bb.rz:                                            ; preds = %bb.rx, %bb.rw
  %i.ddq = add nuw nsw i64 %.sroa.059.0564.i.i669, 1
  br label %bb.ry

.thread130.i.i796:                                ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i832", %.loopexit.split-lp.i.i826, %bb.pd
  %.pn230155.i.i797 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i795, %bb.pd ], [ %.pn.i.i831, %.loopexit.split-lp.i.i826 ], [ %.pn933.i.i833, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i832" ] ; 2 uses
  %.sroa.016.4154.i.i798 = phi ptr [ %.sroa.016.7.i.i753, %bb.pd ], [ %.sroa.016.6.i.i830, %.loopexit.split-lp.i.i826 ], [ %.sroa.016.6932.i.i834, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i832" ] ; 2 uses
  %.sroa.14.4153.i.i799 = phi i64 [ %.sroa.14.7.i.i752, %bb.pd ], [ %.sroa.14.6.i.i829, %.loopexit.split-lp.i.i826 ], [ %.sroa.14.6931.i.i835, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i832" ] ; 2 uses
  %.sroa.026.3152.i.i800 = phi ptr [ %.sroa.026.4.ph162.i.i794, %bb.pd ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i826 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i832" ] ; 2 uses
  %.sroa.12.3151.i.i801 = phi i64 [ %.sroa.12.4.ph161.i.i793, %bb.pd ], [ 0, %.loopexit.split-lp.i.i826 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i832" ] ; 2 uses
  %.sroa.044.0148.i.i802 = phi ptr [ %.sroa.044.1.ph160.i.i792, %bb.pd ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i826 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i832" ]
  %.sroa.11.0147.i.i803 = phi i1 [ %.sroa.11.1.ph159.i.i791, %bb.pd ], [ true, %.loopexit.split-lp.i.i826 ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i832" ]
  %.sroa.051.0146.i.i804 = phi ptr [ %i.cqt, %bb.pd ], [ %.sroa.051.2.i.i828, %.loopexit.split-lp.i.i826 ], [ %.sroa.051.2930.i.i836, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i832" ] ; 2 uses
  %.sroa.1152.0145.i.i805 = phi i64 [ %i.das, %bb.pd ], [ %.sroa.1152.2.i.i827, %.loopexit.split-lp.i.i826 ], [ %.sroa.1152.2929.i.i837, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i832" ]
  %i.ddr = icmp eq i64 %.sroa.1152.0145.i.i805, 0
  br i1 %i.ddr, label %bb.qc, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i806"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i806": ; preds = %.thread130.i.i796
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0146.i.i804) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.051.0146.i.i804) #38, !noalias !35436
  br label %bb.qc

bb.sa:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i704", %bb.ow, %.thread86.i.i964
  %.pn230.pn.pn.pn.pn.pn90.i.i707 = phi { ptr, i32 } [ %i.cos, %.thread86.i.i964 ], [ %.pn230.pn.pn.pn.pn100.i.i705, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i704" ], [ %.pn230.pn.pn.pn.i.i702, %bb.ow ] ; 2 uses
  %i.dds = icmp eq i64 %.sroa.0.0.i.i632, 0
  br i1 %i.dds, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.i711", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread936.i.i708"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread936.i.i708": ; preds = %bb.sa
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i647) #38, !noalias !35436
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i709"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i966": ; preds = %bb.oq
  %i.ddt = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i709"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i709": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i966", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread936.i.i708"
  %i.ddu = phi ptr [ %i.cnx, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread936.i.i708" ], [ %i.cns, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i966" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85938.i.i710 = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i707, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread936.i.i708" ], [ %i.ddt, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i966" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ddu) ]
  tail call void @mi_free(ptr noundef nonnull %i.ddu) #38, !noalias !35436
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.i711"

bb.sb:                                            ; preds = %bb.qg
  %i.ddv = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %.sroa.0109.1.i.i896, ptr %i.ddv, align 8, !alias.scope !35447, !noalias !35448
  %i.ddw = zext i8 %.sroa.0113.1.i.i895 to i64
  %i.ddx = add nuw nsw i64 %i.ddw, 1
  %i.ddy = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.ddx, ptr %i.ddy, align 8, !alias.scope !35447, !noalias !35448
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cro) #38, !noalias !35436
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.10.0.i.i411.i.i647) #38, !noalias !35436
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cnx) #38, !noalias !35436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !35436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !35436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !35436
  tail call void @mi_free(ptr noundef nonnull align 1 %i.cly) #38, !noalias !35393
  br label %_ZN6brotli3enc14block_splitter15SplitByteVector17h458edd1a9d7c9482E.exit

bb.sc:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i, %.split.i493
  %.sroa.032.1430.i496 = phi i64 [ 1, %.split.i493 ], [ %.sroa.032.1.i643, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0429.i497 = phi i64 [ %spec.store.select.i445, %.split.i493 ], [ %i.dtx, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35497)
  %i.ddz = icmp eq i64 %.sroa.0.0429.i497, 0
  br i1 %i.ddz, label %.loopexit.i631, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.dea = add i64 %.sroa.0.0429.i497, 7
  %i.deb = lshr i64 %i.dea, 3                     ; 8 uses
  %i.dec = icmp eq i64 %.sroa.0.0429.i497, 1
  br i1 %i.dec, label %.preheader.i.i979.preheader, label %bb.se

.preheader.i.i979.preheader:                      ; preds = %bb.sd
  br i1 %min.iters.check3770, label %.preheader.i.i979.preheader4013, label %vector.body3773

.preheader.i.i979.preheader4013:                  ; preds = %vector.body3773, %.preheader.i.i979.preheader
  %.ph4014 = phi i64 [ 1, %.preheader.i.i979.preheader ], [ %i.cnk, %vector.body3773 ]
  %.sroa.066.0449.i.i980.ph = phi i64 [ 0, %.preheader.i.i979.preheader ], [ %n.vec3772, %vector.body3773 ]
  br label %.preheader.i.i979

vector.body3773:                                  ; preds = %.preheader.i.i979.preheader, %vector.body3773
  %index3774 = phi i64 [ %index.next3775, %vector.body3773 ], [ 0, %.preheader.i.i979.preheader ] ; 2 uses
  %i.ded = getelementptr inbounds nuw i8, ptr %i.cly, i64 %index3774 ; 2 uses
  %i.dee = getelementptr inbounds nuw i8, ptr %i.ded, i64 16
  store <16 x i8> zeroinitializer, ptr %i.ded, align 1, !alias.scope !35497, !noalias !35498
  store <16 x i8> zeroinitializer, ptr %i.dee, align 1, !alias.scope !35497, !noalias !35498
  %index.next3775 = add nuw i64 %index3774, 32    ; 2 uses
  %i.def = icmp eq i64 %index.next3775, %n.vec3772
  br i1 %i.def, label %.preheader.i.i979.preheader4013, label %vector.body3773, !llvm.loop !35059

bb.se:                                            ; preds = %bb.sd
  %.not121.i.i498 = icmp ugt i64 %.sroa.0.0429.i497, %spec.store.select.i445
  br i1 %.not121.i.i498, label %bb.sf, label %.preheader360.i.i499, !prof !87

bb.sf:                                            ; preds = %bb.se
  %i.deg = mul nuw nsw i64 %.sroa.0.0429.i497, 544
  br label %.invoke1162.i973

.invoke1162.i973:                                 ; preds = %bb.uq, %._crit_edge408.i.i531, %.lr.ph403.i.preheader.i527, %bb.sr, %bb.sf
  %i.deh = phi i64 [ %i.deg, %bb.sf ], [ %i.deb, %bb.sr ], [ %.sroa.01.1, %._crit_edge408.i.i531 ], [ %i.dem, %.lr.ph403.i.preheader.i527 ], [ %i.dtx, %bb.uq ]
  %i.dei = phi i64 [ %i.cmc, %bb.sf ], [ %i.cmb, %bb.sr ], [ %2, %._crit_edge408.i.i531 ], [ %i.cmn, %.lr.ph403.i.preheader.i527 ], [ %spec.store.select.i445, %bb.uq ]
  %i.dej = phi ptr [ @1545, %bb.sf ], [ @1575, %bb.sr ], [ @1540, %._crit_edge408.i.i531 ], [ @1541, %.lr.ph403.i.preheader.i527 ], [ @1928, %bb.uq ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.deh, i64 noundef %i.dei, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dej) #43
          to label %.cont1163.i974 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i522", !noalias !35393

.cont1163.i974:                                   ; preds = %.invoke1162.i973
  unreachable

.preheader360.i.i499:                             ; preds = %bb.se
  %.idx.i.i500 = mul nuw nsw i64 %.sroa.0.0429.i497, 2176
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cme, i8 0, i64 %.idx.i.i500, i1 false), !alias.scope !35494, !noalias !35499
  br label %bb.sg

bb.sg:                                            ; preds = %bb.un, %.preheader360.i.i499
  %i.dek = phi i64 [ 1, %.preheader360.i.i499 ], [ %i.dtr, %bb.un ] ; 4 uses
  %.sroa.069.0399.i.i501 = phi i64 [ 0, %.preheader360.i.i499 ], [ %i.dek, %bb.un ] ; 3 uses
  %exitcond.not.i176.i502 = icmp eq i64 %i.dek, %i.cna
  br i1 %exitcond.not.i176.i502, label %.invoke.i521, label %bb.ul

.loopexit358.i.i526:                              ; preds = %bb.uk
  %i.del = icmp eq i64 %i.den, 0
  br i1 %i.del, label %.lr.ph403.i.preheader.i527, label %.split.i177.i505

.lr.ph403.i.preheader.i527:                       ; preds = %.loopexit358.i.i526
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cmi, i8 0, i64 range(i64 0, 225) %i.cmh, i1 false), !alias.scope !35495, !noalias !35500
  %i.dem = mul i64 %i.deb, %.sroa.01.1            ; 4 uses
  %.not124.i.i528 = icmp ugt i64 %i.dem, %i.cmn
  br i1 %.not124.i.i528, label %.invoke1162.i973, label %bb.sh, !prof !87

.split.i177.i505:                                 ; preds = %bb.un, %.loopexit358.i.i526
  %.sroa.05.0401.i.i506 = phi i64 [ %i.den, %.loopexit358.i.i526 ], [ 544, %bb.un ]
  %i.den = add nsw i64 %.sroa.05.0401.i.i506, -1  ; 4 uses
  %invariant.gep.i178.i507 = getelementptr [4 x i8], ptr %i.cgx, i64 %i.den
  %i.deo = mul i64 %i.den, %.sroa.0.0429.i497
  br label %bb.ui

bb.sh:                                            ; preds = %.lr.ph403.i.preheader.i527
  %.not355404.i.i529 = icmp samesign eq i64 %i.dem, 0
  br i1 %.not355404.i.i529, label %._crit_edge408.i.i531, label %.lr.ph407.preheader.i.i530

.lr.ph407.preheader.i.i530:                       ; preds = %bb.sh
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cmu, i8 0, i64 %i.dem, i1 false), !alias.scope !35496, !noalias !35501
  br label %._crit_edge408.i.i531

._crit_edge408.i.i531:                            ; preds = %.lr.ph407.preheader.i.i530, %bb.sh
  br i1 %.not126.i.i495, label %.invoke1162.i973, label %.lr.ph434.i.i532, !prof !87

.lr.ph434.i.i532:                                 ; preds = %._crit_edge408.i.i531
  %i.dep = lshr i64 %.sroa.0.0429.i497, 3         ; 3 uses
  %.not131.i.i533 = icmp samesign ugt i64 %i.dep, %i.cmb
  %.idx452.i.i534 = shl nuw nsw i64 %i.dep, 5
  %i.deq = getelementptr inbounds nuw i8, ptr %i.cmi, i64 %.idx452.i.i534
  %i.der = icmp eq i64 %i.dep, 0
  %i.des = and i64 %.sroa.0.0429.i497, -8         ; 8 uses
  %i.det = and i64 %.sroa.0.0429.i497, 7          ; 4 uses
  %.not.i.i181.i535 = icmp samesign ugt i64 %i.deb, %i.cmb
  %.idx453.i.i536 = shl i64 %i.deb, 5             ; 2 uses
  %i.deu = getelementptr inbounds nuw i8, ptr %i.cmi, i64 %.idx453.i.i536
  br i1 %.not131.i.i533, label %.lr.ph434.split.us.i.i976, label %.lr.ph434.split.preheader.i.i537, !prof !47

.lr.ph434.split.preheader.i.i537:                 ; preds = %.lr.ph434.i.i532
  %.idx454.i.i538 = shl nuw nsw i64 %i.det, 2     ; 3 uses
  %i.dev = icmp eq i64 %i.det, 0
  %i.dew = lshr i64 %.sroa.0.0429.i497, 3         ; 3 uses
  %i.dex = icmp samesign ult i64 %i.dew, %i.cmb
  %i.dey = getelementptr inbounds nuw [32 x i8], ptr %i.cmi, i64 %i.dew ; 2 uses
  %i.dez = trunc i64 %i.des to i8
  %i.dfa = icmp eq i64 %i.det, 1                  ; 2 uses
  %.sroa.077.1.idx.i.i587 = select i1 %i.dfa, i64 0, i64 4 ; 3 uses
  %i.dfb = lshr i64 %.sroa.0.0429.i497, 3         ; 3 uses
  %i.dfc = icmp samesign ult i64 %i.dfb, %i.cmb
  %i.dfd = getelementptr inbounds nuw [32 x i8], ptr %i.cmi, i64 %i.dfb
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.dfd, i64 4 ; 2 uses
  %i.dff = trunc i64 %i.des to i8
  %i.dfg = or disjoint i8 %i.dff, 1
  %i.dfh = add nuw nsw i64 %.sroa.077.1.idx.i.i587, 4
  %i.dfi = icmp samesign eq i64 %i.dfh, %.idx454.i.i538 ; 2 uses
  %.sroa.077.1.idx.i.i587.1 = select i1 %i.dfi, i64 0, i64 4 ; 2 uses
  %i.dfj = lshr i64 %.sroa.0.0429.i497, 3         ; 3 uses
  %i.dfk = icmp samesign ult i64 %i.dfj, %i.cmb
  %i.dfl = getelementptr inbounds nuw [32 x i8], ptr %i.cmi, i64 %i.dfj
  %i.dfm = getelementptr inbounds nuw i8, ptr %i.dfl, i64 8 ; 2 uses
  %i.dfn = trunc i64 %i.des to i8
  %i.dfo = or disjoint i8 %i.dfn, 2
  %i.dfp = add nuw nsw i64 %.sroa.077.1.idx.i.i587, 4
  %i.dfq = add nuw nsw i64 %i.dfp, %.sroa.077.1.idx.i.i587.1
  %i.dfr = icmp samesign eq i64 %i.dfq, %.idx454.i.i538 ; 2 uses
  %.sroa.077.1.idx.i.i587.2 = select i1 %i.dfr, i64 0, i64 4
  %i.dfs = lshr i64 %.sroa.0.0429.i497, 3         ; 3 uses
  %i.dft = icmp samesign ult i64 %i.dfs, %i.cmb
  %i.dfu = getelementptr inbounds nuw [32 x i8], ptr %i.cmi, i64 %i.dfs
  %i.dfv = getelementptr inbounds nuw i8, ptr %i.dfu, i64 12 ; 2 uses
  %i.dfw = trunc i64 %i.des to i8
  %i.dfx = or disjoint i8 %i.dfw, 3
  %i.dfy = lshr i64 %.sroa.0.0429.i497, 3         ; 3 uses
  %i.dfz = icmp samesign ult i64 %i.dfy, %i.cmb
  %i.dga = getelementptr inbounds nuw [32 x i8], ptr %i.cmi, i64 %i.dfy
  %i.dgb = getelementptr inbounds nuw i8, ptr %i.dga, i64 16 ; 2 uses
  %i.dgc = trunc i64 %i.des to i8
  %i.dgd = or disjoint i8 %i.dgc, 4
  %i.dge = lshr i64 %.sroa.0.0429.i497, 3         ; 3 uses
  %i.dgf = icmp samesign ult i64 %i.dge, %i.cmb
  %i.dgg = getelementptr inbounds nuw [32 x i8], ptr %i.cmi, i64 %i.dge
  %i.dgh = getelementptr inbounds nuw i8, ptr %i.dgg, i64 20 ; 2 uses
  %i.dgi = trunc i64 %i.des to i8
  %i.dgj = or disjoint i8 %i.dgi, 5
  %i.dgk = lshr i64 %.sroa.0.0429.i497, 3         ; 3 uses
  %i.dgl = icmp samesign ult i64 %i.dgk, %i.cmb
  %i.dgm = getelementptr inbounds nuw [32 x i8], ptr %i.cmi, i64 %i.dgk
  %i.dgn = getelementptr inbounds nuw i8, ptr %i.dgm, i64 24 ; 2 uses
  %i.dgo = trunc i64 %i.des to i8
  %i.dgp = or disjoint i8 %i.dgo, 6
  %i.dgq = add i64 %.idx453.i.i536, -32
  %i.dgr = lshr exact i64 %i.dgq, 5
  br label %.lr.ph434.split.i.i539

.lr.ph434.split.us.i.i976:                        ; preds = %.lr.ph434.i.i532
  %i.dgs = load i16, ptr %i.cgn, align 2, !alias.scope !35502, !noalias !35503, !noundef !45
  %i.dgt = zext i16 %i.dgs to i64
  %i.dgu = mul nuw nsw i64 %.sroa.0.0429.i497, %i.dgt
  %.not130.us.i.i977 = icmp ugt i64 %i.dgu, %i.cmc
  br i1 %.not130.us.i.i977, label %.split438.us.i.i975, label %.split440.us.i.i978, !prof !47

.split440.us.i.i978:                              ; preds = %.lr.ph434.split.us.i.i976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35504
  br label %.split440.us.i.invoke.i549

.split440.us.i.invoke.i549:                       ; preds = %bb.tq, %bb.to, %bb.sp, %bb.sn, %.split438.us.i.i975, %.split440.us.i.i978
  %.sink.i550.sroa.phi = phi ptr [ %.sink.i550.sroa.gep, %bb.tq ], [ %.sink.i550.sroa.gep66, %bb.to ], [ %.sink.i550.sroa.gep67, %bb.sp ], [ %.sink.i550.sroa.gep68, %bb.sn ], [ %.sink.i550.sroa.gep69, %.split438.us.i.i975 ], [ %.sink.i550.sroa.gep70, %.split440.us.i.i978 ]
  %.sink.i550.sroa.phi71 = phi ptr [ %.sink.i550.sroa.gep72, %bb.tq ], [ %.sink.i550.sroa.gep73, %bb.to ], [ %.sink.i550.sroa.gep74, %bb.sp ], [ %.sink.i550.sroa.gep75, %bb.sn ], [ %.sink.i550.sroa.gep76, %.split438.us.i.i975 ], [ %.sink.i550.sroa.gep77, %.split440.us.i.i978 ]
  %.sink.i550.sroa.phi78 = phi ptr [ %.sink.i550.sroa.gep79, %bb.tq ], [ %.sink.i550.sroa.gep80, %bb.to ], [ %.sink.i550.sroa.gep81, %bb.sp ], [ %.sink.i550.sroa.gep82, %bb.sn ], [ %.sink.i550.sroa.gep83, %.split438.us.i.i975 ], [ %.sink.i550.sroa.gep84, %.split440.us.i.i978 ]
  %.sink.i550.sroa.phi85 = phi ptr [ %.sink.i550.sroa.gep86, %bb.tq ], [ %.sink.i550.sroa.gep87, %bb.to ], [ %.sink.i550.sroa.gep88, %bb.sp ], [ %.sink.i550.sroa.gep89, %bb.sn ], [ %.sink.i550.sroa.gep90, %.split438.us.i.i975 ], [ %.sink.i550.sroa.gep91, %.split440.us.i.i978 ]
  %.sink.i550 = phi ptr [ %i.b, %bb.tq ], [ %i.d, %bb.to ], [ %i.a, %bb.sp ], [ %i.c, %bb.sn ], [ %i.f, %.split438.us.i.i975 ], [ %i.e, %.split440.us.i.i978 ] ; 2 uses
  %i.dgv = phi ptr [ @1539, %bb.tq ], [ @1538, %bb.to ], [ @1536, %bb.sp ], [ @1535, %bb.sn ], [ @1533, %.split438.us.i.i975 ], [ @1534, %.split440.us.i.i978 ]
  store ptr @186, ptr %.sink.i550, align 8, !noalias !35504
  store i64 1, ptr %.sink.i550.sroa.phi, align 8, !noalias !35504
  store ptr null, ptr %.sink.i550.sroa.phi71, align 8, !noalias !35504
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i550.sroa.phi78, align 8, !noalias !35504
  store i64 0, ptr %.sink.i550.sroa.phi85, align 8, !noalias !35504
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i550, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dgv) #43
          to label %.split440.us.i.cont.i551 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i522", !noalias !35393

.split440.us.i.cont.i551:                         ; preds = %.split440.us.i.invoke.i549
  unreachable

_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i619: ; preds = %bb.ss
  %i.dgw = icmp eq ptr %i.dgy, %i.cnb
  br i1 %i.dgw, label %.lr.ph447.preheader.i.i620, label %.lr.ph434.split.i.i539

.lr.ph434.split.i.i539:                           ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i619, %.lr.ph434.split.preheader.i.i537
  %.sroa.0.0336432.i.i540 = phi ptr [ %i.dgy, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i619 ], [ %i.cgn, %.lr.ph434.split.preheader.i.i537 ] ; 2 uses
  %.sroa.7.0431.i.i541 = phi i64 [ %i.dgz, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i619 ], [ 0, %.lr.ph434.split.preheader.i.i537 ] ; 7 uses
  %i.dgx = mul i64 %i.deb, %.sroa.7.0431.i.i541
  %i.dgy = getelementptr inbounds nuw i8, ptr %.sroa.0.0336432.i.i540, i64 2 ; 2 uses
  %i.dgz = add nuw nsw i64 %.sroa.7.0431.i.i541, 1
  %exitcond487.not.i.i542 = icmp eq i64 %.sroa.7.0431.i.i541, %.sroa.01.1
  br i1 %exitcond487.not.i.i542, label %.invoke.i521, label %bb.sl

.lr.ph447.preheader.i.i620:                       ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i619
  %i.dha = load i8, ptr %i.cnd, align 1, !alias.scope !35497, !noalias !35498, !noundef !45
  %i.dhb = mul i64 %i.deb, %i.cnc
  br label %.lr.ph447.i.i621

.lr.ph447.i.i621:                                 ; preds = %bb.sk, %.lr.ph447.preheader.i.i620
  %.sroa.03.0446.i.i622 = phi i64 [ %.sroa.03.1.i.i629, %bb.sk ], [ 1, %.lr.ph447.preheader.i.i620 ] ; 2 uses
  %.sroa.052.0445.i.i623 = phi i64 [ %i.dhc, %bb.sk ], [ %i.cnc, %.lr.ph447.preheader.i.i620 ]
  %.sroa.059.0444.i.i624 = phi i64 [ %i.dhd, %bb.sk ], [ %i.dhb, %.lr.ph447.preheader.i.i620 ]
  %.sroa.061.0443.i.i625 = phi i8 [ %.sroa.061.1.i.i628, %bb.sk ], [ %i.dha, %.lr.ph447.preheader.i.i620 ] ; 4 uses
  %i.dhc = add nsw i64 %.sroa.052.0445.i.i623, -1 ; 4 uses
  %i.dhd = sub i64 %.sroa.059.0444.i.i624, %i.deb ; 2 uses
  %i.dhe = lshr i8 %.sroa.061.0443.i.i625, 3
  %i.dhf = zext nneg i8 %i.dhe to i64
  %i.dhg = add i64 %i.dhd, %i.dhf                 ; 3 uses
  %i.dhh = icmp ult i64 %i.dhg, %i.cmn
  br i1 %i.dhh, label %bb.si, label %.invoke.i521

bb.si:                                            ; preds = %.lr.ph447.i.i621
  %i.dhi = and i8 %.sroa.061.0443.i.i625, 7
  %i.dhj = shl nuw i8 1, %i.dhi
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.cmu, i64 %i.dhg
  %i.dhl = load i8, ptr %i.dhk, align 1, !alias.scope !35496, !noalias !35501, !noundef !45
  %i.dhm = and i8 %i.dhl, %i.dhj
  %i.dhn = icmp eq i8 %i.dhm, 0
  br i1 %i.dhn, label %bb.sk, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.dho = getelementptr inbounds nuw i8, ptr %i.cly, i64 %i.dhc
  %i.dhp = load i8, ptr %i.dho, align 1, !alias.scope !35497, !noalias !35498, !noundef !45 ; 2 uses
  %.not129.i.i626 = icmp ne i8 %.sroa.061.0443.i.i625, %i.dhp
  %i.dhq = zext i1 %.not129.i.i626 to i64
  %spec.select137.i.i627 = add i64 %.sroa.03.0446.i.i622, %i.dhq
  br label %bb.sk

bb.sk:                                            ; preds = %bb.sj, %bb.si
  %.sroa.061.1.i.i628 = phi i8 [ %.sroa.061.0443.i.i625, %bb.si ], [ %i.dhp, %bb.sj ] ; 2 uses
  %.sroa.03.1.i.i629 = phi i64 [ %.sroa.03.0446.i.i622, %bb.si ], [ %spec.select137.i.i627, %bb.sj ] ; 2 uses
  %i.dhr = getelementptr inbounds nuw i8, ptr %i.cly, i64 %i.dhc
  store i8 %.sroa.061.1.i.i628, ptr %i.dhr, align 1, !alias.scope !35497, !noalias !35498
  %.not128.i.i630 = icmp eq i64 %i.dhc, 0
  br i1 %.not128.i.i630, label %.loopexit.i631, label %.lr.ph447.i.i621

bb.sl:                                            ; preds = %.lr.ph434.split.i.i539
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.cly, i64 %.sroa.7.0431.i.i541 ; 15 uses
  %i.dht = mul i64 %.sroa.7.0431.i.i541, %i.deb   ; 3 uses
  %i.dhu = load i16, ptr %.sroa.0.0336432.i.i540, align 2, !alias.scope !35502, !noalias !35503, !noundef !45
  %i.dhv = zext i16 %i.dhu to i64
  %i.dhw = mul nuw nsw i64 %.sroa.0.0429.i497, %i.dhv ; 4 uses
  %.not130.i.i543 = icmp ugt i64 %i.dhw, %i.cmc
  br i1 %.not130.i.i543, label %.split438.us.i.i975, label %bb.sm, !prof !47

.split438.us.i.i975:                              ; preds = %bb.sl, %.lr.ph434.split.us.i.i976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35504
  br label %.split440.us.i.invoke.i549

bb.sm:                                            ; preds = %bb.sl
  %i.dhx = getelementptr inbounds nuw [4 x i8], ptr %i.cme, i64 %i.dhw
  %i.dhy = sub nuw nsw i64 %i.cmc, %i.dhw         ; 2 uses
  br i1 %i.der, label %._crit_edge416.i.i575, label %.lr.ph415.i.i544

.lr.ph415.i.i544:                                 ; preds = %bb.sm, %bb.uh
  %.sroa.029.0413.i.i545 = phi float [ %.sroa.029.4.7.i.i574, %bb.uh ], [ f0x7E967699, %bb.sm ] ; 2 uses
  %.sroa.0164.0412.i.i546 = phi ptr [ %i.dhz, %bb.uh ], [ %i.cmi, %bb.sm ] ; 10 uses
  %.sroa.7166.0411.i.i547 = phi i64 [ %i.dia, %bb.uh ], [ 0, %bb.sm ] ; 2 uses
  %i.dhz = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i546, i64 32 ; 2 uses
  %i.dia = add nuw nsw i64 %.sroa.7166.0411.i.i547, 1
end_hunk_9
begin_hunk_10_@"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h640489a63fbb42b3E":bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.f, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1630) #43
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.e
  %i.aa = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.e ]
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !45
  %i.ae = add i64 %i.ad, %1                       ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val7 = load i64, ptr %i.af, align 8, !noundef !45 ; 2 uses
  %i.ag = icmp ult i64 %i.ae, %.val7
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val9 = load i64, ptr %i.ah, align 8, !noundef !45 ; 2 uses
  %i.ai = icmp ult i64 %i.ae, %.val9
  br i1 %i.ai, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ae, i64 noundef %.val7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1631) #43
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val8 = load ptr, ptr %i.aj, align 8, !nonnull !45, !align !69, !noundef !45
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.ak, align 8, !nonnull !45, !align !55, !noundef !45
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ae
  %i.am = load i8, ptr %i.al, align 1, !noundef !45
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.val8, i64 %i.ae
  %i.ao = load i16, ptr %i.an, align 2, !noundef !45
  %i.ap = zext i16 %i.ao to i64
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.am, i64 noundef %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull align 1 %3, i64 noundef %4)
  ret void

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ae, i64 noundef %.val9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1632) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17hce9957366ac74809E(ptr noalias noundef nonnull align 1 %0, i1 noundef zeroext %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, i64 noundef %7, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %8, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11, i1 noundef zeroext %12) unnamed_addr #3 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 22 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4, i64 noundef %7, i64 noundef %5)
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !45, !align !55, !noundef !45 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !45 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !45, !align !55, !noundef !45 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !45 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN6brotli3enc17brotli_bit_stream38BrotliStoreUncompressedMetaBlockHeader17hc8eba3681d24f8e1E(i64 noundef %7, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  call void @_ZN6brotli3enc17brotli_bit_stream18JumpToByteBoundary17hd530db3bb0615915E(ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  %i.k = load i64, ptr %9, align 8, !noundef !45  ; 2 uses
  %i.l = lshr i64 %i.k, 3                         ; 4 uses
  %i.m = add i64 %i.l, %i.f                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %.not22 = icmp ugt i64 %i.m, %11
  %or.cond = or i1 %i.n, %.not22
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !87

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.l, i64 noundef %i.m, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1643) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.d, i64 %i.f, i1 false), !alias.scope !36268, !noalias !36269
  %i.p = shl i64 %i.f, 3
  %i.q = add i64 %i.k, %i.p                       ; 3 uses
  store i64 %i.q, ptr %9, align 8
  %i.r = lshr i64 %i.q, 3                         ; 4 uses
  %i.s = add i64 %i.r, %i.j                       ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %.not23 = icmp ugt i64 %i.s, %11
  %or.cond24 = or i1 %i.t, %.not23
  br i1 %or.cond24, label %bb.d, label %bb.e, !prof !87

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.r, i64 noundef %i.s, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1642) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %i.h, i64 %i.j, i1 false), !alias.scope !36270, !noalias !36271
  %i.v = shl i64 %i.j, 3
  %i.w = add i64 %i.q, %i.v                       ; 2 uses
  store i64 %i.w, ptr %9, align 8
  call void @_ZN6brotli3enc17brotli_bit_stream29BrotliWriteBitsPrepareStorage17h3e3bbade587d8cacE(i64 noundef %i.w, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 97
  %i.y = load i8, ptr %i.x, align 1, !range !52, !noundef !45
  %i.z = trunc nuw i8 %i.y to i1
  %.not = xor i1 %i.z, true
  %brmerge = or i1 %12, %.not
  br i1 %brmerge, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.g
  br i1 %1, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = trunc i64 %7 to i32
  store i32 %i.aa, ptr %i.b, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %.sroa.75.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 4 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %i.ad, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 1, ptr %.sroa.710.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr inttoptr (i64 1 to ptr), ptr %i.ae, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.615.0..sroa_idx, align 8
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 1, ptr %.sroa.716.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 4 to ptr), ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 0, ptr %i.ag, align 8
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h8d6ec10e9474062aE(ptr noalias noundef nonnull align 1 %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @197, ptr noalias noundef align 8 dereferenceable(8) %8, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, i8 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.h:                                             ; preds = %bb.i, %bb.f
  ret void

bb.i:                                             ; preds = %bb.f
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  call void @_ZN6brotli3enc17brotli_bit_stream18JumpToByteBoundary17hd530db3bb0615915E(ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17hd0a5c367cceed3c5E(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 256, 705) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %3, ptr noalias noundef nonnull align 1 %4, i64 noundef range(i64 140, 705) %5, ptr noalias noundef nonnull align 2 %6, i64 noundef range(i64 140, 705) %7, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge:                                      ; preds = %bb.bg
  %i.c = icmp ult i64 %.sroa.0.1, 2
  br i1 %i.c, label %._crit_edge.thread, label %bb.b

.lr.ph:                                           ; preds = %bb.bg
  %exitcond.not = icmp eq i64 %i.fr, %1
  br i1 %exitcond.not, label %bb.be, label %.lr.ph.preheader

bb.b:                                             ; preds = %._crit_edge
  %.not.not = icmp samesign ult i64 %.sroa.010.0137457, %5
  br i1 %.not.not, label %._crit_edge144, label %bb.c, !prof !54

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 4, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.d = trunc i64 %3 to i8
  %i.e = load i64, ptr %i.a, align 8, !noundef !45 ; 7 uses
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.d, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.f = icmp ult i64 %i.e, %5
  br i1 %i.f, label %bb.ba, label %bb.bb

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.fr, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1664) #43
  unreachable

._crit_edge144:                                   ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %4, i8 0, i64 range(i64 0, 705) %i.fr, i1 false)
  %i.g = shl nuw nsw i64 %i.fr, 1                 ; 13 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 20 uses
  %i.i = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !36282
  %i.j = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.i, i64 noundef range(i64 1, 9) 4) #38, !noalias !36282 ; 28 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit

bb.d:                                             ; preds = %._crit_edge144
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !36283
  unreachable

_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit: ; preds = %._crit_edge144
  %i.l = add nsw i64 %i.i, -8                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 range(i64 0, 11265) %i.l, i1 false), !noalias !36284
  %scevgep.i.i = getelementptr i8, ptr %i.j, i64 %i.l
  store i64 0, ptr %scevgep.i.i, align 4, !noalias !36284
  %.first_iter = icmp samesign ult i64 %.sroa.010.0137457, %1
  %i.m = trunc nuw nsw i64 %i.g to i32            ; 2 uses
  br label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit, %bb.n
  %.sroa.024.0 = phi i32 [ 1, %_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit ], [ %i.az, %bb.n ] ; 3 uses
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %bb.aw
  %.sroa.027.0146 = phi i32 [ %.sroa.027.2, %bb.aw ], [ 0, %.lr.ph148.preheader ] ; 3 uses
  %.sroa.037.0145 = phi i64 [ %i.n, %bb.aw ], [ %i.fr, %.lr.ph148.preheader ]
  %i.n = add nsw i64 %.sroa.037.0145, -1          ; 5 uses
  br i1 %.first_iter, label %bb.av, label %.invoke

._crit_edge149:                                   ; preds = %bb.aw
  %i.o = add i32 %.sroa.027.2, 1                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.p = sext i32 %.sroa.027.2 to i64             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36285)
  %i.q = icmp ult i32 %.sroa.027.2, 13
  br i1 %i.q, label %.preheader.split.i, label %bb.e

.preheader.split.i:                               ; preds = %._crit_edge149
  %i.r = icmp samesign ugt i32 %.sroa.027.2, 1
  br i1 %i.r, label %.lr.ph66.i, label %.loopexit42

bb.e:                                             ; preds = %._crit_edge149
  %i.s = icmp ult i32 %.sroa.027.2, 57
  %i.t = select i1 %i.s, i64 2, i64 0
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge63.i, %bb.e
  %indvars.iv.i = phi i64 [ %i.t, %bb.e ], [ %indvars.iv.next.i, %._crit_edge63.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN6brotli3enc14entropy_encode20SortHuffmanTreeItems4gaps17ha345c21f8c53bdffE, i64 %indvars.iv.i
  %i.v = load i64, ptr %i.u, align 8, !noalias !36285, !noundef !45 ; 5 uses
  %i.w = icmp ult i64 %i.v, %i.p
  br i1 %i.w, label %.lr.ph62.preheader.i, label %._crit_edge63.i

.lr.ph62.preheader.i:                             ; preds = %bb.f
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.h) ; 2 uses
  br label %.lr.ph62.i

._crit_edge63.i:                                  ; preds = %bb.h, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next.i, 6
  br i1 %exitcond82.not.i, label %.loopexit42, label %bb.f

.lr.ph62.i:                                       ; preds = %bb.h, %.lr.ph62.preheader.i
  %.sroa.025.060.i = phi i64 [ %i.x, %bb.h ], [ %i.v, %.lr.ph62.preheader.i ] ; 4 uses
  %i.x = add i64 %.sroa.025.060.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.025.060.i, %umax.i
  br i1 %exitcond.not.i, label %.invoke, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph62.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.025.060.i
  %i.z = load i64, ptr %i.y, align 4, !alias.scope !36285 ; 2 uses
  %.sroa.038.0.extract.trunc.i = trunc i64 %i.z to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %.sroa.015.057.i = phi i64 [ %i.aa, %bb.i ], [ %.sroa.025.060.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.aa = sub nuw i64 %.sroa.015.057.i, %i.v      ; 6 uses
  %.not26 = icmp ugt i64 %i.aa, %i.g
  br i1 %.not26, label %.invoke, label %bb.g

._crit_edge.i:                                    ; preds = %bb.i, %bb.g
  %.sroa.015.0.lcssa.ph.i = phi i64 [ %i.aa, %bb.i ], [ %.sroa.015.057.i, %bb.g ] ; 3 uses
  %.not27 = icmp ugt i64 %.sroa.015.0.lcssa.ph.i, %i.g
  br i1 %.not27, label %.invoke, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aa ; 2 uses
  %.val35.i = load i32, ptr %i.ab, align 4, !alias.scope !36285, !noundef !45
  %i.ac = icmp ugt i32 %.val35.i, %.sroa.038.0.extract.trunc.i
  br i1 %i.ac, label %bb.i, label %._crit_edge.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.015.0.lcssa.ph.i
  store i64 %i.z, ptr %i.ad, align 4, !alias.scope !36285
  %exitcond80.not.i = icmp eq i64 %i.x, %i.p
  br i1 %exitcond80.not.i, label %._crit_edge63.i, label %.lr.ph62.i

bb.i:                                             ; preds = %bb.g
  %.sroa.021.0.copyload.i = load i64, ptr %i.ab, align 4, !alias.scope !36285
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.015.057.i
  store i64 %.sroa.021.0.copyload.i, ptr %i.ae, align 4, !alias.scope !36285
  %.not.i = icmp ult i64 %i.aa, %i.v
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph66.i:                                       ; preds = %.preheader.split.i, %.thread
  %.sroa.023.065.i = phi i64 [ %i.af, %.thread ], [ 1, %.preheader.split.i ] ; 4 uses
  %i.af = add nuw nsw i64 %.sroa.023.065.i, 1     ; 2 uses
  %exitcond84.not.i = icmp eq i64 %.sroa.023.065.i, %i.h
  br i1 %exitcond84.not.i, label %.invoke, label %.split.i

.split.i:                                         ; preds = %.lr.ph66.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.023.065.i
  %i.ah = load i64, ptr %i.ag, align 4, !alias.scope !36285 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ah to i32
  br label %bb.j

.invoke.loopexit473.split.loop.exit499:           ; preds = %bb.ax
  %.not173.le = icmp ult i32 %i.fd, %.sroa.024.0
  %.430.le = select i1 %.not173.le, ptr @1662, ptr @1663
  br label %.invoke

.invoke:                                          ; preds = %bb.l, %.loopexit42, %.invoke.loopexit473.split.loop.exit499, %.lr.ph148, %.lr.ph66.i, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %.lr.ph157, %._crit_edge.i, %.lr.ph62.i, %.lr.ph.i
  %i.ai = phi i64 [ %i.aa, %.lr.ph.i ], [ %.sroa.015.0.lcssa.ph.i, %._crit_edge.i ], [ %i.ez, %bb.at ], [ %i.n, %.lr.ph148 ], [ %i.h, %.lr.ph66.i ], [ %umax.i, %.lr.ph62.i ], [ %i.eo, %bb.as ], [ %i.em, %bb.ar ], [ %i.el, %bb.aq ], [ %i.ee, %bb.ap ], [ %i.ed, %bb.ao ], [ %i.dw, %bb.an ], [ %i.dv, %.lr.ph157 ], [ %i.fg, %.invoke.loopexit473.split.loop.exit499 ], [ %i.as, %bb.l ], [ %i.aq, %.loopexit42 ]
  %i.aj = phi i64 [ %i.h, %.lr.ph.i ], [ %i.h, %._crit_edge.i ], [ %i.h, %bb.at ], [ %1, %.lr.ph148 ], [ %i.h, %.lr.ph66.i ], [ %i.h, %.lr.ph62.i ], [ %i.h, %.lr.ph157 ], [ %i.h, %bb.an ], [ %i.h, %bb.ao ], [ %i.h, %bb.ap ], [ %i.h, %bb.aq ], [ %i.h, %bb.ar ], [ %i.h, %bb.as ], [ %i.h, %.invoke.loopexit473.split.loop.exit499 ], [ %i.h, %.loopexit42 ], [ %i.h, %bb.l ]
  %i.ak = phi ptr [ @1578, %.lr.ph.i ], [ @1579, %._crit_edge.i ], [ @1660, %bb.at ], [ @1661, %.lr.ph148 ], [ @1580, %.lr.ph66.i ], [ @1577, %.lr.ph62.i ], [ @1659, %bb.as ], [ @1658, %bb.ar ], [ @1657, %bb.aq ], [ @1656, %bb.ap ], [ @1655, %bb.ao ], [ @1654, %bb.an ], [ @1653, %.lr.ph157 ], [ %.430.le, %.invoke.loopexit473.split.loop.exit499 ], [ @1645, %bb.l ], [ @1644, %.loopexit42 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ai, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak) #43
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.k, %.split.i
  %.sroa.01.0.i = phi i64 [ %.sroa.023.065.i, %.split.i ], [ %.sroa.03.0.i, %bb.k ] ; 3 uses
  %.sroa.03.0.i = add nsw i64 %.sroa.01.0.i, -1   ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.03.0.i ; 2 uses
  %.val37.i = load i32, ptr %i.al, align 4, !alias.scope !36285, !noundef !45
  %i.am = icmp ugt i32 %.val37.i, %.sroa.0.0.extract.trunc.i
  br i1 %i.am, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %.sroa.08.0.copyload.i = load i64, ptr %i.al, align 4, !alias.scope !36285
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.0.i
  store i64 %.sroa.08.0.copyload.i, ptr %i.an, align 4, !alias.scope !36285
  %i.ao = icmp eq i64 %.sroa.03.0.i, 0
  br i1 %i.ao, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.k, %bb.j
  %.sroa.01.1.i20 = phi i64 [ %.sroa.01.0.i, %bb.j ], [ 0, %bb.k ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.1.i20
  store i64 %i.ah, ptr %i.ap, align 4, !alias.scope !36285
  %exitcond85.not.i = icmp eq i64 %i.af, %i.p
  br i1 %exitcond85.not.i, label %.loopexit42, label %.lr.ph66.i

.loopexit42:                                      ; preds = %._crit_edge63.i, %.thread, %.preheader.split.i
  %i.aq = zext i32 %i.o to i64                    ; 3 uses
  %.not29 = icmp samesign ult i64 %i.g, %i.aq
  br i1 %.not29, label %.invoke, label %bb.l

bb.l:                                             ; preds = %.loopexit42
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aq
  %i.as = zext i32 %.sroa.027.2 to i64            ; 3 uses
  %.not30 = icmp samesign ult i64 %i.g, %i.as
  store i64 -1, ptr %i.ar, align 4
  br i1 %.not30, label %.invoke, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.as
  %.sroa.060.0151 = add i32 %.sroa.027.2, -1
  %i.au = icmp sgt i32 %.sroa.060.0151, 0
  store i64 -1, ptr %i.at, align 4
  br i1 %i.au, label %.lr.ph157.preheader, label %.._crit_edge158_crit_edge

.._crit_edge158_crit_edge:                        ; preds = %bb.m
  %.pre273 = shl i32 %.sroa.027.2, 1
  br label %._crit_edge158

.lr.ph157.preheader:                              ; preds = %bb.m
  %i.av = add nuw i32 %.sroa.027.2, 2
  %i.aw = shl i32 %.sroa.027.2, 1                 ; 2 uses
  br label %.lr.ph157

._crit_edge158:                                   ; preds = %bb.au, %.._crit_edge158_crit_edge
  %.pre-phi274 = phi i32 [ %.pre273, %.._crit_edge158_crit_edge ], [ %i.aw, %bb.au ]
  %i.ax = add i32 %.pre-phi274, -1
  %i.ay = invoke noundef zeroext i1 @_ZN6brotli3enc14entropy_encode14BrotliSetDepth17h5f5ba8abc19b5273E(i32 noundef %i.ax, ptr noalias noundef nonnull align 4 %i.j, i64 noundef %i.h, ptr noalias noundef nonnull align 1 %4, i64 noundef %5, i32 noundef 14)
          to label %bb.n unwind label %.loopexit44

bb.n:                                             ; preds = %._crit_edge158
  %i.az = shl i32 %.sroa.024.0, 1
  br i1 %i.ay, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217", label %.lr.ph148.preheader

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217": ; preds = %bb.n
  tail call void @mi_free(ptr noundef nonnull align 4 %i.j) #38
  tail call void @_ZN6brotli3enc14entropy_encode31BrotliConvertBitDepthsToSymbols17hf5dace01f018846fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.fr, ptr noalias noundef nonnull align 2 %6, i64 noundef %7)
  %i.ba = icmp ult i64 %.sroa.0.1, 5
  br i1 %i.ba, label %bb.o, label %.split.preheader

.split.preheader:                                 ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217"
  tail call void @_ZN6brotli3enc17brotli_bit_stream25StoreStaticCodeLengthCode17hf918db1678579c13E(ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.split

bb.o:                                             ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217"
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.bb = add nsw i64 %.sroa.0.1, -1
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 2, i64 noundef %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.preheader

.split:                                           ; preds = %.split.preheader, %.loopexit40
  %.sroa.085.0171 = phi i8 [ %.sroa.085.1, %.loopexit40 ], [ 8, %.split.preheader ] ; 2 uses
  %.sroa.086.0170 = phi i64 [ %.pre-phi329, %.loopexit40 ], [ 0, %.split.preheader ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.086.0170
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !45 ; 11 uses
  %.sroa.0101.0159 = add nuw nsw i64 %.sroa.086.0170, 1 ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN6brotli3enc6encode22WriteMetaBlockInternal17h7952d72b2f7e6cd4E:bb.a
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc32:                                         ; preds = %bb.al
  %i.hh = icmp ne i32 %.sroa.08.1447.i, %i.gz
  %or.cond.not.i = select i1 %i.hc, i1 true, i1 %i.hh
  %spec.select.i = select i1 %or.cond.not.i, i1 %.sroa.013.1446.i, i1 false ; 2 uses
  %i.hi = invoke noundef zeroext i1 @_ZN6brotli3enc9metablock19ComputeDistanceCost17h236488a253e13cbcE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ha, ptr noalias noundef nonnull align 1 %9, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc33:                                         ; preds = %.noexc32
  br i1 %i.hi, label %bb.aw, label %.loopexit297.i

.loopexit297.i:                                   ; preds = %bb.aw, %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !38137
  %i.hj = call i32 @llvm.usub.sat.i32(i32 %.sroa.08.1447.i, i32 1)
  %i.hk = lshr i32 %i.hj, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %bb.ax, %.loopexit297.i
  %.sroa.08.1441866.i = phi i32 [ %i.hk, %.loopexit297.i ], [ 7, %bb.ax ]
  %.sroa.014.1444865.i = phi double [ %.sroa.014.1445.i, %.loopexit297.i ], [ %i.in, %bb.ax ]
  %i.hl = icmp ne i32 %i.gx, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %.lr.ph.1.i
  %.sroa.08.1447.1.i = phi i32 [ %.sroa.08.1441866.i, %.lr.ph.1.i ], [ %i.hr, %bb.ao ] ; 3 uses
  %.sroa.013.1446.1.i = phi i1 [ %spec.select.i, %.lr.ph.1.i ], [ %spec.select.1.i, %bb.ao ]
  %.sroa.014.1445.1.i = phi double [ %.sroa.014.1444865.i, %.lr.ph.1.i ], [ %i.hp, %bb.ao ] ; 3 uses
  %i.hm = shl nuw nsw i32 %.sroa.08.1447.1.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !38137
  store double 0.000000e+00, ptr %i.v, align 8, !noalias !38137
  invoke void @_ZN6brotli3enc9metablock24BrotliInitDistanceParams17hec63d00aadbafeaaE(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.w, i32 noundef 1, i32 noundef %i.hm)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc34:                                         ; preds = %bb.am
  %i.hn = icmp ne i32 %i.hm, %i.gz
  %or.cond.not.1.i = select i1 %i.hl, i1 true, i1 %i.hn
  %spec.select.1.i = select i1 %or.cond.not.1.i, i1 %.sroa.013.1446.1.i, i1 false ; 3 uses
  %i.ho = invoke noundef zeroext i1 @_ZN6brotli3enc9metablock19ComputeDistanceCost17h236488a253e13cbcE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ha, ptr noalias noundef nonnull align 1 %9, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc35:                                         ; preds = %.noexc34
  br i1 %i.ho, label %bb.an, label %.loopexit297.1.i

bb.an:                                            ; preds = %.noexc35
  %i.hp = load double, ptr %i.v, align 8, !noalias !38137, !noundef !45 ; 3 uses
  %i.hq = fcmp ogt double %i.hp, %.sroa.014.1445.1.i
  br i1 %i.hq, label %.loopexit297.1.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.ha, i64 24, i1 false), !noalias !38135
  %i.hr = add nuw nsw i32 %.sroa.08.1447.1.i, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !38137
  %exitcond.1.not.i = icmp eq i32 %i.hr, 16
  br i1 %exitcond.1.not.i, label %.lr.ph.2.i, label %bb.am

.loopexit297.1.i:                                 ; preds = %.noexc35, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !38137
  %i.hs = call i32 @llvm.usub.sat.i32(i32 %.sroa.08.1447.1.i, i32 1) ; 2 uses
  %i.ht = lshr i32 %i.hs, 1                       ; 2 uses
  %i.hu = icmp samesign ult i32 %i.hs, 32
  br i1 %i.hu, label %.lr.ph.2.i, label %.loopexit297.2.i

.lr.ph.2.i:                                       ; preds = %bb.ao, %.loopexit297.1.i
  %i.hv = phi i32 [ %i.ht, %.loopexit297.1.i ], [ 7, %bb.ao ]
  %.sroa.014.1444.1.i678 = phi double [ %.sroa.014.1445.1.i, %.loopexit297.1.i ], [ %i.hp, %bb.ao ]
  %i.hw = icmp ne i32 %i.gx, 2
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %.lr.ph.2.i
  %.sroa.08.1447.2.i = phi i32 [ %i.hv, %.lr.ph.2.i ], [ %i.ic, %bb.ar ] ; 3 uses
  %.sroa.013.1446.2.i = phi i1 [ %spec.select.1.i, %.lr.ph.2.i ], [ %spec.select.2.i, %bb.ar ]
  %.sroa.014.1445.2.i = phi double [ %.sroa.014.1444.1.i678, %.lr.ph.2.i ], [ %i.ia, %bb.ar ] ; 2 uses
  %i.hx = shl nuw nsw i32 %.sroa.08.1447.2.i, 2   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !38137
  store double 0.000000e+00, ptr %i.v, align 8, !noalias !38137
  invoke void @_ZN6brotli3enc9metablock24BrotliInitDistanceParams17hec63d00aadbafeaaE(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.w, i32 noundef 2, i32 noundef %i.hx)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc36:                                         ; preds = %bb.ap
  %i.hy = icmp ne i32 %i.hx, %i.gz
  %or.cond.not.2.i = select i1 %i.hw, i1 true, i1 %i.hy
  %spec.select.2.i = select i1 %or.cond.not.2.i, i1 %.sroa.013.1446.2.i, i1 false ; 3 uses
  %i.hz = invoke noundef zeroext i1 @_ZN6brotli3enc9metablock19ComputeDistanceCost17h236488a253e13cbcE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ha, ptr noalias noundef nonnull align 1 %9, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc37:                                         ; preds = %.noexc36
  br i1 %i.hz, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.noexc37
  %i.ia = load double, ptr %i.v, align 8, !noalias !38137, !noundef !45 ; 3 uses
  %i.ib = fcmp ogt double %i.ia, %.sroa.014.1445.2.i
  br i1 %i.ib, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.ha, i64 24, i1 false), !noalias !38135
  %i.ic = add nuw nsw i32 %.sroa.08.1447.2.i, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !38137
  %exitcond.2.not.i = icmp eq i32 %i.ic, 16
  br i1 %exitcond.2.not.i, label %.loopexit297.2.i, label %bb.ap

bb.as:                                            ; preds = %bb.aq, %.noexc37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !38137
  br label %.loopexit297.2.i

.loopexit297.2.i:                                 ; preds = %bb.ar, %bb.as, %.loopexit297.1.i
  %.sroa.014.1444.2.i = phi double [ %.sroa.014.1445.2.i, %bb.as ], [ %.sroa.014.1445.1.i, %.loopexit297.1.i ], [ %i.ia, %bb.ar ] ; 2 uses
  %.sroa.08.1441.2.i = phi i32 [ %.sroa.08.1447.2.i, %bb.as ], [ %i.ht, %.loopexit297.1.i ], [ 16, %bb.ar ]
  %.sroa.013.2.2.i = phi i1 [ %spec.select.2.i, %bb.as ], [ %spec.select.1.i, %.loopexit297.1.i ], [ %spec.select.2.i, %bb.ar ] ; 2 uses
  %i.id = call i32 @llvm.usub.sat.i32(i32 %.sroa.08.1441.2.i, i32 1) ; 2 uses
  %i.ie = icmp ult i32 %i.id, 32
  br i1 %i.ie, label %.lr.ph.3.i, label %.loopexit297.3.i

.lr.ph.3.i:                                       ; preds = %.loopexit297.2.i
  %i.if = lshr i32 %i.id, 1
  %i.ig = icmp ne i32 %i.gx, 3
  br label %bb.at

bb.at:                                            ; preds = %bb.av, %.lr.ph.3.i
  %.sroa.08.1447.3.i = phi i32 [ %i.if, %.lr.ph.3.i ], [ %i.im, %bb.av ] ; 2 uses
  %.sroa.013.1446.3.i = phi i1 [ %.sroa.013.2.2.i, %.lr.ph.3.i ], [ %spec.select.3.i, %bb.av ]
  %.sroa.014.1445.3.i = phi double [ %.sroa.014.1444.2.i, %.lr.ph.3.i ], [ %i.ik, %bb.av ] ; 2 uses
  %i.ih = shl nuw nsw i32 %.sroa.08.1447.3.i, 3   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !38137
  store double 0.000000e+00, ptr %i.v, align 8, !noalias !38137
  invoke void @_ZN6brotli3enc9metablock24BrotliInitDistanceParams17hec63d00aadbafeaaE(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.w, i32 noundef 3, i32 noundef %i.ih)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc38:                                         ; preds = %bb.at
  %i.ii = icmp ne i32 %i.ih, %i.gz
  %or.cond.not.3.i = select i1 %i.ig, i1 true, i1 %i.ii
  %spec.select.3.i = select i1 %or.cond.not.3.i, i1 %.sroa.013.1446.3.i, i1 false ; 3 uses
  %i.ij = invoke noundef zeroext i1 @_ZN6brotli3enc9metablock19ComputeDistanceCost17h236488a253e13cbcE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ha, ptr noalias noundef nonnull align 1 %9, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %.noexc38
  br i1 %i.ij, label %bb.au, label %.split867.i

bb.au:                                            ; preds = %.noexc39
  %i.ik = load double, ptr %i.v, align 8, !noalias !38137, !noundef !45 ; 3 uses
  %i.il = fcmp ogt double %i.ik, %.sroa.014.1445.3.i
  br i1 %i.il, label %.split867.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.ha, i64 24, i1 false), !noalias !38135
  %i.im = add nuw nsw i32 %.sroa.08.1447.3.i, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !38137
  %exitcond.3.not.i = icmp eq i32 %i.im, 16
  br i1 %exitcond.3.not.i, label %.loopexit297.3.i, label %bb.at

.split867.i:                                      ; preds = %bb.au, %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !38137
  br i1 %spec.select.3.i, label %bb.ai, label %bb.ah

.loopexit297.3.i:                                 ; preds = %bb.av, %.loopexit297.2.i
  %.sroa.014.1444.3.i = phi double [ %.sroa.014.1444.2.i, %.loopexit297.2.i ], [ %i.ik, %bb.av ]
  %.sroa.013.2.3.i = phi i1 [ %.sroa.013.2.2.i, %.loopexit297.2.i ], [ %spec.select.3.i, %bb.av ]
  br i1 %.sroa.013.2.3.i, label %bb.ai, label %bb.ah

bb.aw:                                            ; preds = %.noexc33
  %i.in = load double, ptr %i.v, align 8, !noalias !38137, !noundef !45 ; 3 uses
  %i.io = fcmp ogt double %i.in, %.sroa.014.1445.i
  br i1 %i.io, label %.loopexit297.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.ha, i64 24, i1 false), !noalias !38135
  %i.ip = add nuw nsw i32 %.sroa.08.1447.i, 1     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !38137
  %exitcond.not.i = icmp eq i32 %i.ip, 16
  br i1 %exitcond.not.i, label %.lr.ph.1.i, label %bb.al

bb.ay:                                            ; preds = %.noexc
  %i.iq = icmp slt i64 %i.gu, 0
  br i1 %i.iq, label %.noexc.i.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.ay
  %i.ir = icmp eq i64 %i.gu, 0
  br i1 %i.ir, label %._crit_edge.i.i.i83.thread.i, label %bb.az

bb.az:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38138
  %i.is = call noundef ptr @mi_malloc_aligned(i64 noundef %i.gu, i64 noundef range(i64 1, 9) 1) #38, !noalias !38138 ; 6 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %.noexc.i.invoke, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he15aefe39cdda893E.exit.i.i.i.i"

.noexc.i.invoke:                                  ; preds = %bb.ay, %bb.az, %.noexc80
  %i.iu = phi i64 [ 4, %.noexc80 ], [ 1, %bb.az ], [ 0, %bb.ay ]
  %i.iv = phi i64 [ 11272, %.noexc80 ], [ %i.gu, %bb.az ], [ %i.gu, %bb.ay ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.iu, i64 %i.iv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.cont:                                    ; preds = %.noexc.i.invoke
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he15aefe39cdda893E.exit.i.i.i.i": ; preds = %bb.az
  %.not.i.i.i = icmp eq i64 %i.gu, 1
  br i1 %.not.i.i.i, label %.lr.ph457.preheader.i, label %._crit_edge.thread.i.i.i.i

._crit_edge.thread.i.i.i.i:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he15aefe39cdda893E.exit.i.i.i.i"
  %i.iw = add nsw i64 %i.gu, -1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.is, i8 range(i8 0, 4) 0, i64 range(i64 0, -1) %i.iw, i1 false), !noalias !38139
  %i.ix = getelementptr i8, ptr %i.is, i64 %i.gu
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ix, i64 -1
  br label %.lr.ph457.preheader.i

.lr.ph457.preheader.i:                            ; preds = %._crit_edge.thread.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he15aefe39cdda893E.exit.i.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %i.is, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he15aefe39cdda893E.exit.i.i.i.i" ]
  store i8 0, ptr %.sroa.0.0.lcssa16.i.i.i.i, align 1, !noalias !38139
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.is, i8 range(i8 0, 4) %7, i64 %i.gu, i1 false), !noalias !38134
  %i.iy = shl i64 %i.gu, 6
  br label %.loopexit296.i

.loopexit296.i:                                   ; preds = %.lr.ph457.preheader.i, %.noexc
  %i.iz = phi i64 [ %i.iy, %.lr.ph457.preheader.i ], [ %i.gu, %.noexc ] ; 10 uses
  %.sroa.10.3.i = phi i64 [ %i.gu, %.lr.ph457.preheader.i ], [ 0, %.noexc ] ; 3 uses
  %.sroa.09.3.i = phi ptr [ %i.is, %.lr.ph457.preheader.i ], [ inttoptr (i64 1 to ptr), %.noexc ] ; 3 uses
  %i.ja = mul i64 %i.iz, 1040                     ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.iz, 8868626958514207
  br i1 %or.cond.i.i.i.i.i.i, label %bb.bb, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i, !prof !38140

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i: ; preds = %.loopexit296.i
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i", label %bb.ba

bb.ba:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38141
  %i.jc = call noundef ptr @mi_malloc_aligned(i64 noundef %i.ja, i64 noundef range(i64 1, 9) 8) #38, !noalias !38141 ; 2 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %bb.bb, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"

bb.bb:                                            ; preds = %bb.ba, %.loopexit296.i
  %.sroa.4.0.ph.i.i.i85.i = phi i64 [ 8, %bb.ba ], [ 0, %.loopexit296.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i85.i, i64 %i.ja, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc86.i unwind label %bb.hb, !noalias !38134

.noexc86.i:                                       ; preds = %bb.bb
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i": ; preds = %bb.ba, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i ], [ %i.jc, %bb.ba ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i ], [ %i.iz, %bb.ba ]
  %i.je = icmp samesign ule i64 %i.iz, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.je)
  %i.jf = icmp samesign ugt i64 %i.iz, 1
  br i1 %i.jf, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i83.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"
  %i.jg = add nsw i64 %i.iz, -1                   ; 2 uses
  %i.jh = add nsw i64 %i.iz, -2
  %xtraiter = and i64 %i.jg, 7                    ; 3 uses
  %i.ji = icmp ult i64 %i.jh, 7
  br i1 %i.ji, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.jg, -8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i83.i:                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"
  %.not.i.i.i.i = icmp eq i64 %i.iz, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i83.thread.i, label %._crit_edge.thread.i.i.i84.i

._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa:  ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i.i84.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.08.i.i.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.jr, %._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa ]
  %lcmp.mod1338 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1338)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.i.epil = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.epil ], [ %.sroa.0.08.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.epil, i8 0, i64 1032, i1 false), !noalias !38134
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !38142
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i84.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !37682

._crit_edge.thread.i.i.i84.i:                     ; preds = %._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %._crit_edge.i.i.i83.i
  %.sroa.0.0.lcssa15.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i, %._crit_edge.i.i.i83.i ], [ %i.jr, %._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa ], [ %i.jj, %.lr.ph.i.i.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !38134
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !38142
  br label %._crit_edge.i.i.i83.thread.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.08.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new ], [ %i.jr, %.lr.ph.i.i.i.i ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !38134
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i, align 8, !noalias !38142
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jk, i8 0, i64 1032, i1 false), !noalias !38134
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1, align 8, !noalias !38142
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jl, i8 0, i64 1032, i1 false), !noalias !38134
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2, align 8, !noalias !38142
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jm, i8 0, i64 1032, i1 false), !noalias !38134
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3, align 8, !noalias !38142
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jn, i8 0, i64 1032, i1 false), !noalias !38134
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4, align 8, !noalias !38142
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jo, i8 0, i64 1032, i1 false), !noalias !38134
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5, align 8, !noalias !38142
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jp, i8 0, i64 1032, i1 false), !noalias !38134
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6, align 8, !noalias !38142
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jq, i8 0, i64 1032, i1 false), !noalias !38134
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7, align 8, !noalias !38142
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8320 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i83.thread.i:                     ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, %._crit_edge.thread.i.i.i84.i, %._crit_edge.i.i.i83.i
  %.sroa.10.0.i.i.i896.i = phi ptr [ %.sroa.10.0.i.i.i.i, %._crit_edge.thread.i.i.i84.i ], [ %.sroa.10.0.i.i.i.i, %._crit_edge.i.i.i83.i ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ] ; 15 uses
  %.sroa.09.3877882892.i = phi ptr [ %.sroa.09.3.i, %._crit_edge.thread.i.i.i84.i ], [ %.sroa.09.3.i, %._crit_edge.i.i.i83.i ], [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.10.3874883889.i = phi i64 [ %.sroa.10.3.i, %._crit_edge.thread.i.i.i84.i ], [ %.sroa.10.3.i, %._crit_edge.i.i.i83.i ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ] ; 7 uses
  %i.js = phi i64 [ %i.iz, %._crit_edge.thread.i.i.i84.i ], [ 0, %._crit_edge.i.i.i83.i ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ] ; 34 uses
  %i.jt = load i64, ptr %.sroa.737.0..sroa_idx.i, align 8, !alias.scope !38134, !noalias !38136, !noundef !45 ; 2 uses
  %i.ju = shl i64 %i.jt, 2                        ; 31 uses
  %i.jv = mul i64 %i.jt, 8768                     ; 3 uses
  %or.cond.i.i.i.i.i87.i = icmp ugt i64 %i.ju, 4207742717543237
  br i1 %or.cond.i.i.i.i.i87.i, label %bb.bd, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i: ; preds = %._crit_edge.i.i.i83.thread.i
  %i.jw = icmp eq i64 %i.jv, 0
  br i1 %i.jw, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i", label %bb.bc

bb.bc:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38143
  %i.jx = call noundef ptr @mi_malloc_aligned(i64 noundef %i.jv, i64 noundef range(i64 1, 9) 8) #38, !noalias !38143 ; 2 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %bb.bd, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"

bb.bd:                                            ; preds = %bb.bc, %._crit_edge.i.i.i83.thread.i
  %.sroa.4.0.ph.i.i.i99.i = phi i64 [ 8, %bb.bc ], [ 0, %._crit_edge.i.i.i83.thread.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i99.i, i64 %i.jv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc100.i unwind label %bb.hb, !noalias !38134

.noexc100.i:                                      ; preds = %bb.bd
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i": ; preds = %bb.bc, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i
  %.sroa.10.0.i.i.i89.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i ], [ %i.jx, %bb.bc ] ; 19 uses
  %.sroa.4.0.i.i.i90.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i ], [ %i.ju, %bb.bc ]
  %i.jz = icmp samesign ule i64 %i.ju, %.sroa.4.0.i.i.i90.i
  call void @llvm.assume(i1 %i.jz)
  %.not232.i = icmp eq i64 %i.ju, 0               ; 2 uses
  br i1 %.not232.i, label %._crit_edge.i.i.i91.i, label %.lr.ph.i.i.i95.i.preheader

.lr.ph.i.i.i95.i.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"
  %i.ka = add nsw i64 %i.ju, -1                   ; 2 uses
  %i.kb = add nsw i64 %i.ju, -2
  %xtraiter1339 = and i64 %i.ka, 7
  %i.kc = icmp ult i64 %i.kb, 7
  br i1 %i.kc, label %.lr.ph.i.i.i95.i.epil.preheader, label %.lr.ph.i.i.i95.i.preheader.new

.lr.ph.i.i.i95.i.preheader.new:                   ; preds = %.lr.ph.i.i.i95.i.preheader
  %unroll_iter1345 = and i64 %i.ka, -8
  br label %.lr.ph.i.i.i95.i

.lr.ph.i.i.i95.i.epil.preheader:                  ; preds = %.lr.ph.i.i.i95.i, %.lr.ph.i.i.i95.i.preheader
  %.sroa.0.08.i.i.i96.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i89.i, %.lr.ph.i.i.i95.i.preheader ], [ %i.kl, %.lr.ph.i.i.i95.i ]
  br label %.lr.ph.i.i.i95.i.epil

.lr.ph.i.i.i95.i.epil:                            ; preds = %.lr.ph.i.i.i95.i.epil, %.lr.ph.i.i.i95.i.epil.preheader
  %.sroa.0.08.i.i.i96.i.epil = phi ptr [ %i.kd, %.lr.ph.i.i.i95.i.epil ], [ %.sroa.0.08.i.i.i96.i.epil.init, %.lr.ph.i.i.i95.i.epil.preheader ] ; 4 uses
  %epil.iter1340 = phi i64 [ %epil.iter1340.next, %.lr.ph.i.i.i95.i.epil ], [ 0, %.lr.ph.i.i.i95.i.epil.preheader ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i96.i.epil, i8 0, i64 2184, i1 false), !noalias !38134
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !38144
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i.epil, i64 2192 ; 2 uses
  %epil.iter1340.next = add i64 %epil.iter1340, 1 ; 2 uses
  %epil.iter1340.cmp.not = icmp eq i64 %epil.iter1340.next, %xtraiter1339
  br i1 %epil.iter1340.cmp.not, label %._crit_edge.thread.i.i.i93.i, label %.lr.ph.i.i.i95.i.epil, !llvm.loop !37692

._crit_edge.thread.i.i.i93.i:                     ; preds = %.lr.ph.i.i.i95.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.kd, i8 0, i64 2184, i1 false), !noalias !38134
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i.epil, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !38144
  br label %._crit_edge.i.i.i91.i

.lr.ph.i.i.i95.i:                                 ; preds = %.lr.ph.i.i.i95.i, %.lr.ph.i.i.i95.i.preheader.new
  %.sroa.0.08.i.i.i96.i = phi ptr [ %.sroa.10.0.i.i.i89.i, %.lr.ph.i.i.i95.i.preheader.new ], [ %i.kl, %.lr.ph.i.i.i95.i ] ; 17 uses
  %niter1346 = phi i64 [ 0, %.lr.ph.i.i.i95.i.preheader.new ], [ %niter1346.next.7, %.lr.ph.i.i.i95.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i96.i, i8 0, i64 2184, i1 false), !noalias !38134
end_hunk_11
begin_hunk_12_@_ZN6brotli3enc6encode22WriteMetaBlockInternal17h7952d72b2f7e6cd4E:bb.a
"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i.i
  %i.th = insertvalue { ptr, i64 } poison, ptr %i.tf, 0
  %i.ti = insertvalue { ptr, i64 } %i.th, i64 %i.js, 1
  br label %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i.i

.thread72.i.i:                                    ; preds = %bb.cy
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i.i"

_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i.i", %bb.cx
  %i.tk = phi ptr [ %i.td, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i.i" ], [ inttoptr (i64 4 to ptr), %bb.cx ] ; 6 uses
  %.pn.i82.i.i = phi { ptr, i64 } [ %i.ti, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i.i" ], [ { ptr inttoptr (i64 4 to ptr), i64 0 }, %bb.cx ] ; 2 uses
  %i.tl = extractvalue { ptr, i64 } %.pn.i82.i.i, 0 ; 12 uses
  %i.tm = extractvalue { ptr, i64 } %.pn.i82.i.i, 1 ; 18 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38205
  %i.tn = call noundef ptr @mi_malloc_aligned(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #38, !noalias !38205 ; 12 uses
  %i.to = icmp eq ptr %i.tn, null
  br i1 %i.to, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc91.i.i unwind label %.thread27.i.i, !noalias !38204

.noexc91.i.i:                                     ; preds = %bb.cz
  unreachable

.thread45.thread81.loopexit.i.i:                  ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i.i

.thread45.thread81.loopexit.split-lp.loopexit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit42.us.i.i.i
  %lpad.loopexit90.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i.i

.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.lr.ph.split.us37.preheader.i.i.i
  %lpad.loopexit98.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i.i

.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.split31.us.i.invoke.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i.i

.thread27.i.i:                                    ; preds = %bb.cz
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i.i

bb.da:                                            ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.tn, i8 0, i64 32784, i1 false), !noalias !38204
  br i1 %.not.i155.i, label %._crit_edge160.i.i, label %.lr.ph.i156.i.preheader

.lr.ph.i156.i.preheader:                          ; preds = %bb.da
  %min.iters.check = icmp ult i64 %i.js, 8
  br i1 %min.iters.check, label %.lr.ph.i156.i.preheader1283, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i156.i.preheader
  %n.vec = and i64 %i.js, 9007199254740984        ; 4 uses
  %i.tq = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %index ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  store <4 x i32> splat (i32 1), ptr %i.tr, align 4, !noalias !38204
  store <4 x i32> splat (i32 1), ptr %i.ts, align 4, !noalias !38204
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.tt = icmp eq i64 %index.next, %n.vec
  br i1 %i.tt, label %middle.block, label %vector.body, !llvm.loop !37780

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.js, %n.vec
  br i1 %cmp.n, label %.preheader105.i.i, label %.lr.ph.i156.i.preheader1283

.lr.ph.i156.i.preheader1283:                      ; preds = %.lr.ph.i156.i.preheader, %middle.block
  %.ph1284 = phi i64 [ 1, %.lr.ph.i156.i.preheader ], [ %i.tq, %middle.block ]
  %.sroa.029.0152.i.i.ph = phi i64 [ 0, %.lr.ph.i156.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i156.i

.preheader105.i.i:                                ; preds = %.lr.ph.i156.i, %middle.block
  %i.tu = or disjoint i64 %i.rz, 1
  br label %bb.ew

.preheader101.i.i:                                ; preds = %bb.fa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tl) ]
  br label %.lr.ph156.i.i

.lr.ph156.i.i:                                    ; preds = %bb.eu, %.preheader101.i.i
  %indvars.iv.i.i = phi i64 [ %i.js, %.preheader101.i.i ], [ %indvars.iv.next.i.i, %bb.eu ] ; 2 uses
  %.sroa.0.0158.i.i = phi i64 [ 0, %.preheader101.i.i ], [ %i.acw, %bb.eu ] ; 8 uses
  %.sroa.08.0157.i.i = phi i64 [ 0, %.preheader101.i.i ], [ %i.acx, %bb.eu ] ; 6 uses
  %i.tv = call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umax226.i.i = call i64 @llvm.umin.i64(i64 %i.tv, i64 64) ; 2 uses
  %i.tw = sub nuw nsw i64 %i.js, %.sroa.08.0157.i.i
  %.sroa.0.0.i92.i.i = call noundef i64 @llvm.umin.i64(i64 %i.tw, i64 64) ; 2 uses
  %reass.sub.i = call i64 @llvm.usub.sat.i64(i64 %i.tm, i64 %.sroa.0.0158.i.i) ; 2 uses
  %i.tx = add nuw nsw i64 %reass.sub.i, 1
  %i.ty = add nsw i64 %umax226.i.i, -1
  %i.tz = call i64 @llvm.umin.i64(i64 %reass.sub.i, i64 %i.ty) ; 2 uses
  %min.iters.check1040 = icmp ult i64 %i.tz, 8
  br i1 %min.iters.check1040, label %scalar.ph1039.preheader, label %vector.ph1041

scalar.ph1039.preheader:                          ; preds = %vector.body1043, %.lr.ph156.i.i
  %.ph1276 = phi i64 [ 1, %.lr.ph156.i.i ], [ %i.ue, %vector.body1043 ]
  %.sroa.033.0155.i.i.ph = phi i64 [ 0, %.lr.ph156.i.i ], [ %n.vec1042, %vector.body1043 ]
  br label %scalar.ph1039

vector.ph1041:                                    ; preds = %.lr.ph156.i.i
  %i.ua = add nuw nsw i64 %i.tz, 1                ; 2 uses
  %i.ub = and i64 %i.ua, 7                        ; 2 uses
  %i.uc = icmp eq i64 %i.ub, 0
  %i.ud = select i1 %i.uc, i64 8, i64 %i.ub
  %n.vec1042 = sub i64 %i.ua, %i.ud               ; 3 uses
  %i.ue = add i64 %n.vec1042, 1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.sroa.08.0157.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw <4 x i64> splat (i64 4), %broadcast.splat
  %invariant.gep1512 = getelementptr [4 x i8], ptr %i.tl, i64 %.sroa.0.0158.i.i
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %vector.ph1041
  %index1044 = phi i64 [ 0, %vector.ph1041 ], [ %index.next1045, %vector.body1043 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1041 ], [ %vec.ind.next, %vector.body1043 ] ; 3 uses
  %i.uf = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %.reass = add nuw <4 x i64> %vec.ind, %invariant.op
  %gep = getelementptr [4 x i8], ptr %invariant.gep1512, i64 %index1044 ; 2 uses
  %i.ug = trunc <4 x i64> %i.uf to <4 x i32>
  %i.uh = trunc <4 x i64> %.reass to <4 x i32>
  %i.ui = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %i.ug, ptr %gep, align 4, !noalias !38204
  store <4 x i32> %i.uh, ptr %i.ui, align 4, !noalias !38204
  %index.next1045 = add nuw i64 %index1044, 8     ; 2 uses
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 8)
  %i.uj = icmp eq i64 %index.next1045, %n.vec1042
  br i1 %i.uj, label %scalar.ph1039.preheader, label %vector.body1043, !llvm.loop !37781

.loopexit.i.i:                                    ; preds = %bb.et
  %lpad.loopexit102.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i.i"

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.ez
  %lpad.loopexit106.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i.i"

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %.invoke337.i.i, %.invoke.i.i, %bb.dg
  %.sroa.011.1.ph.ph.ph.i.i = phi ptr [ %i.tn, %.invoke337.i.i ], [ %.sroa.011.3.i.i, %bb.dg ], [ %i.tn, %.invoke.i.i ]
  %lpad.loopexit.split-lp107.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i.i"

._crit_edge160.i.i:                               ; preds = %bb.eu, %bb.da
  %.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb.da ], [ %i.acw, %bb.eu ] ; 4 uses
  %i.uk = shl nuw nsw i64 %.sroa.0.0.lcssa.i.i, 6
  %i.ul = lshr i64 %.sroa.0.0.lcssa.i.i, 1
  %i.um = mul i64 %i.ul, %.sroa.0.0.lcssa.i.i
  %.sroa.0.0.i.i159.i = call noundef i64 @llvm.umin.i64(i64 %i.um, i64 %i.uk) ; 3 uses
  %i.un = icmp samesign ugt i64 %.sroa.0.0.i.i159.i, 2047
  br i1 %i.un, label %.preheader.i.i, label %bb.dg

.preheader.i.i:                                   ; preds = %._crit_edge160.i.i, %.preheader.i.i
  %.sroa.021.0.i.i = phi i64 [ %i.uo, %.preheader.i.i ], [ 2048, %._crit_edge160.i.i ] ; 6 uses
  %.not84.i.i = icmp ugt i64 %.sroa.021.0.i.i, %.sroa.0.0.i.i159.i
  %i.uo = shl i64 %.sroa.021.0.i.i, 1
  br i1 %.not84.i.i, label %bb.db, label %.preheader.i.i

bb.db:                                            ; preds = %.preheader.i.i
  %i.up = shl i64 %.sroa.021.0.i.i, 4             ; 5 uses
  %i.uq = icmp ugt i64 %.sroa.021.0.i.i, 1152921504606846975
  %i.ur = icmp ugt i64 %i.up, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.uq, %i.ur
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.dc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.db
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38206
  %i.us = call noundef ptr @mi_malloc_aligned(i64 noundef %i.up, i64 noundef range(i64 1, 9) 4) #38, !noalias !38206 ; 6 uses
  %i.ut = icmp eq ptr %i.us, null
  br i1 %i.ut, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, %bb.db
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ 0, %bb.db ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.up, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc93.i.i unwind label %bb.dd, !noalias !38204

.noexc93.i.i:                                     ; preds = %bb.dc
  unreachable

bb.dd:                                            ; preds = %bb.dc
  %lpad.thr_comm.split-lp63.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i.i"

bb.de:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %i.uu = add nsw i64 %i.up, -16                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.us, i8 0, i64 range(i64 0, -31) %i.uu, i1 false), !noalias !38207
  %i.uv = getelementptr i8, ptr %i.us, i64 %i.up  ; 2 uses
  %scevgep11.i.i.i.i = getelementptr i8, ptr %i.us, i64 %i.uu
  store i32 0, ptr %scevgep11.i.i.i.i, align 4, !noalias !38207
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.uv, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 4, !noalias !38207
  %.sroa.67.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.uv, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i.i.i.i, align 4, !noalias !38207
  %i.uw = icmp samesign ult i64 %.sroa.021.0.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.uw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %i.us, ptr noundef nonnull readonly align 4 dereferenceable(32768) %i.tn, i64 32768, i1 false), !alias.scope !38208, !noalias !38204
  call void @mi_free(ptr noundef nonnull align 4 %i.tn) #38, !noalias !38204
  br label %bb.dg

bb.df:                                            ; preds = %bb.ex
  unreachable

bb.dg:                                            ; preds = %bb.de, %._crit_edge160.i.i
  %.sroa.10.3.i.i = phi i64 [ %.sroa.021.0.i.i, %bb.de ], [ 2049, %._crit_edge160.i.i ]
  %.sroa.011.3.i.i = phi ptr [ %i.us, %bb.de ], [ %i.tn, %._crit_edge160.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tl) ]
  %i.ux = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h927b250c66d009c4E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i139.i, i64 noundef %i.rz, ptr noalias noundef nonnull align 4 %i.tk, i64 noundef %i.js, ptr noalias noundef nonnull align 4 %i.sj, i64 noundef %i.rz, ptr noalias noundef nonnull align 4 %i.tl, i64 noundef %i.tm, ptr noalias noundef nonnull align 4 %.sroa.011.3.i.i, i64 noundef %.sroa.10.3.i.i, i64 noundef %.sroa.0.0.lcssa.i.i, i64 noundef %i.js, i64 noundef 256, i64 noundef %.sroa.0.0.i.i159.i)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !38209 ; 5 uses

bb.dh:                                            ; preds = %bb.dg
  call void @mi_free(ptr noundef nonnull align 4 %.sroa.011.3.i.i) #38, !noalias !38204
  br i1 %.not.i155.i, label %.preheader.i.i.i, label %.lr.ph36.i.i.i

.lr.ph36.i.i.i:                                   ; preds = %bb.dh
  call void @mi_free(ptr noundef nonnull align 4 %i.tk) #38, !noalias !38204
  call void @llvm.experimental.noalias.scope.decl(metadata !38210)
  call void @llvm.experimental.noalias.scope.decl(metadata !38211)
  call void @llvm.experimental.noalias.scope.decl(metadata !38212)
  call void @llvm.experimental.noalias.scope.decl(metadata !38213)
  %i.uy = getelementptr inbounds nuw i8, ptr %i.s, i64 1024 ; 4 uses
  %.not71.i.i.i = icmp eq i64 %i.ux, 0
  %i.uz = getelementptr inbounds nuw i8, ptr %i.t, i64 1024 ; 2 uses
  br i1 %.not71.i.i.i, label %.lr.ph36.split.i.i.i, label %.lr.ph36.split.us.i.i.i

.lr.ph36.split.us.i.i.i:                          ; preds = %.lr.ph36.i.i.i, %bb.dp
  %.sroa.010.034.us.i.i.i = phi i64 [ %i.va, %bb.dp ], [ 0, %.lr.ph36.i.i.i ] ; 6 uses
  %i.va = add nuw nsw i64 %.sroa.010.034.us.i.i.i, 1 ; 2 uses
  %i.vb = icmp eq i64 %.sroa.010.034.us.i.i.i, 0
  br i1 %i.vb, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %.lr.ph36.split.us.i.i.i
  %i.vc = add nsw i64 %.sroa.010.034.us.i.i.i, -1 ; 3 uses
  %i.vd = icmp ult i64 %i.vc, %i.rz
  br i1 %i.vd, label %bb.dj, label %.split31.us.i.invoke.i.i

bb.dj:                                            ; preds = %bb.di
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.vc
  br label %bb.dl

bb.dk:                                            ; preds = %.lr.ph36.split.us.i.i.i
  br i1 %.not233.i, label %.split31.us.i.invoke.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.sroa.01.0.in.us.i.i.i = phi ptr [ %i.ve, %bb.dj ], [ %i.sj, %bb.dk ]
  %.sroa.01.0.us.i.i.i = load i32, ptr %.sroa.01.0.in.us.i.i.i, align 4, !alias.scope !38214, !noalias !38215, !noundef !45 ; 3 uses
  %i.vf = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i896.i, i64 %.sroa.010.034.us.i.i.i ; 3 uses
  %i.vg = zext i32 %.sroa.01.0.us.i.i.i to i64    ; 3 uses
  %i.vh = icmp samesign ugt i64 %i.rz, %i.vg
  br i1 %i.vh, label %bb.dm, label %.split31.us.i.invoke.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.vi = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139.i, i64 %i.vg ; 4 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 1024
  %i.vk = load i64, ptr %i.vj, align 8, !alias.scope !38216, !noalias !38217, !noundef !45
  %i.vl = icmp eq i64 %i.vk, 0
  br i1 %i.vl, label %.lr.ph.split.us.us.i.i.i, label %vector.ph1059

vector.ph1059:                                    ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !38218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.vf, i64 1040, i1 false), !alias.scope !38219, !noalias !38217
  %i.vm = load i64, ptr %i.uy, align 8, !alias.scope !38220, !noalias !38221, !noundef !45
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vi, i64 1024
  %i.vo = load i64, ptr %i.vn, align 8, !alias.scope !38222, !noalias !38223, !noundef !45
  %i.vp = add i64 %i.vo, %i.vm
  store i64 %i.vp, ptr %i.uy, align 8, !alias.scope !38224, !noalias !38225
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %vector.ph1059
  %index1061 = phi i64 [ 0, %vector.ph1059 ], [ %index.next1066.1, %vector.body1060 ] ; 4 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index1061 ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 16 ; 2 uses
  %wide.load1062 = load <4 x i32>, ptr %i.vq, align 8, !noalias !38225
  %wide.load1063 = load <4 x i32>, ptr %i.vr, align 8, !noalias !38225
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %index1061 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %wide.load1064 = load <4 x i32>, ptr %i.vs, align 4, !alias.scope !38226, !noalias !38223
  %wide.load1065 = load <4 x i32>, ptr %i.vt, align 4, !alias.scope !38226, !noalias !38223
  %i.vu = add <4 x i32> %wide.load1064, %wide.load1062
  %i.vv = add <4 x i32> %wide.load1065, %wide.load1063
  store <4 x i32> %i.vu, ptr %i.vq, align 8, !noalias !38225
  store <4 x i32> %i.vv, ptr %i.vr, align 8, !noalias !38225
  %index.next1066 = or disjoint i64 %index1061, 8 ; 2 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index.next1066 ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16 ; 2 uses
  %wide.load1062.1 = load <4 x i32>, ptr %i.vw, align 8, !noalias !38225
  %wide.load1063.1 = load <4 x i32>, ptr %i.vx, align 8, !noalias !38225
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %index.next1066 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %wide.load1064.1 = load <4 x i32>, ptr %i.vy, align 4, !alias.scope !38226, !noalias !38223
  %wide.load1065.1 = load <4 x i32>, ptr %i.vz, align 4, !alias.scope !38226, !noalias !38223
  %i.wa = add <4 x i32> %wide.load1064.1, %wide.load1062.1
  %i.wb = add <4 x i32> %wide.load1065.1, %wide.load1063.1
  store <4 x i32> %i.wa, ptr %i.vw, align 8, !noalias !38225
  store <4 x i32> %i.wb, ptr %i.vx, align 8, !noalias !38225
  %index.next1066.1 = add nuw nsw i64 %index1061, 16 ; 2 uses
  %i.wc = icmp eq i64 %index.next1066.1, 256
  br i1 %i.wc, label %.lr.ph.split.us37.preheader.i.i.i, label %vector.body1060, !llvm.loop !37816

.lr.ph.split.us37.preheader.i.i.i:                ; preds = %vector.body1060
  %i.wd = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h56fd6c289f2ade0fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.s)
          to label %.noexc97.i.i unwind label %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !38204

.noexc97.i.i:                                     ; preds = %.lr.ph.split.us37.preheader.i.i.i
  %i.we = getelementptr inbounds nuw i8, ptr %i.vi, i64 1032
  %i.wf = load float, ptr %i.we, align 8, !alias.scope !38227, !noalias !38228, !noundef !45
  %i.wg = fsub float %i.wd, %i.wf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !38218
  br label %.lr.ph.split.us37.i.i.i

.lr.ph.split.us37.i.i.i:                          ; preds = %.noexc98.i.i, %.noexc97.i.i
  %.sroa.01.129.us38.i.i.i = phi i32 [ %.sroa.01.2.us42.i.i.i, %.noexc98.i.i ], [ %.sroa.01.0.us.i.i.i, %.noexc97.i.i ]
  %.sroa.03.028.us39.i.i.i = phi float [ %.sroa.03.1.us41.i.i.i, %.noexc98.i.i ], [ %i.wg, %.noexc97.i.i ] ; 2 uses
  %.sroa.012.027.us40.i.i.i = phi i64 [ %i.wh, %.noexc98.i.i ], [ 0, %.noexc97.i.i ] ; 3 uses
  %i.wh = add nuw nsw i64 %.sroa.012.027.us40.i.i.i, 1 ; 2 uses
  %exitcond127.not.i.i.i = icmp eq i64 %.sroa.012.027.us40.i.i.i, %i.tm
  br i1 %exitcond127.not.i.i.i, label %.split31.us.i.invoke.i.i, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.split.us37.i.i.i
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %.sroa.012.027.us40.i.i.i
  %i.wj = load i32, ptr %i.wi, align 4, !alias.scope !38211, !noalias !38229, !noundef !45 ; 2 uses
  %i.wk = zext i32 %i.wj to i64                   ; 3 uses
  %i.wl = icmp samesign ugt i64 %i.rz, %i.wk
  br i1 %i.wl, label %vector.ph1050, label %.split31.us.i.invoke.i.i

vector.ph1050:                                    ; preds = %bb.dn
  %i.wm = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139.i, i64 %i.wk ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !38230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.vf, i64 1040, i1 false), !alias.scope !38231, !noalias !38232
  %i.wn = load i64, ptr %i.uz, align 8, !alias.scope !38233, !noalias !38234, !noundef !45
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 1024
  %i.wp = load i64, ptr %i.wo, align 8, !alias.scope !38235, !noalias !38236, !noundef !45
  %i.wq = add i64 %i.wp, %i.wn
  store i64 %i.wq, ptr %i.uz, align 8, !alias.scope !38237, !noalias !38238
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %vector.ph1050
  %index1052 = phi i64 [ 0, %vector.ph1050 ], [ %index.next1056.1, %vector.body1051 ] ; 4 uses
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index1052 ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.wr, align 8, !noalias !38238
  %wide.load1053 = load <4 x i32>, ptr %i.ws, align 8, !noalias !38238
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %index1052 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %wide.load1054 = load <4 x i32>, ptr %i.wt, align 4, !alias.scope !38226, !noalias !38236
  %wide.load1055 = load <4 x i32>, ptr %i.wu, align 4, !alias.scope !38226, !noalias !38236
  %i.wv = add <4 x i32> %wide.load1054, %wide.load
  %i.ww = add <4 x i32> %wide.load1055, %wide.load1053
  store <4 x i32> %i.wv, ptr %i.wr, align 8, !noalias !38238
  store <4 x i32> %i.ww, ptr %i.ws, align 8, !noalias !38238
  %index.next1056 = or disjoint i64 %index1052, 8 ; 2 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index.next1056 ; 3 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.wx, align 8, !noalias !38238
  %wide.load1053.1 = load <4 x i32>, ptr %i.wy, align 8, !noalias !38238
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %index.next1056 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  %wide.load1054.1 = load <4 x i32>, ptr %i.wz, align 4, !alias.scope !38226, !noalias !38236
  %wide.load1055.1 = load <4 x i32>, ptr %i.xa, align 4, !alias.scope !38226, !noalias !38236
  %i.xb = add <4 x i32> %wide.load1054.1, %wide.load.1
  %i.xc = add <4 x i32> %wide.load1055.1, %wide.load1053.1
  store <4 x i32> %i.xb, ptr %i.wx, align 8, !noalias !38238
  store <4 x i32> %i.xc, ptr %i.wy, align 8, !noalias !38238
  %index.next1056.1 = add nuw nsw i64 %index1052, 16 ; 2 uses
  %i.xd = icmp eq i64 %index.next1056.1, 256
  br i1 %i.xd, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit42.us.i.i.i, label %vector.body1051, !llvm.loop !37834

_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit42.us.i.i.i: ; preds = %vector.body1051
  %i.xe = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h56fd6c289f2ade0fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.t)
          to label %.noexc98.i.i unwind label %.thread45.thread81.loopexit.split-lp.loopexit.i.i, !noalias !38204

.noexc98.i.i:                                     ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit42.us.i.i.i
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wm, i64 1032
  %i.xg = load float, ptr %i.xf, align 8, !alias.scope !38239, !noalias !38228, !noundef !45
  %i.xh = fsub float %i.xe, %i.xg                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !38230
  %i.xi = fcmp olt float %i.xh, %.sroa.03.028.us39.i.i.i ; 2 uses
  %.sroa.03.1.us41.i.i.i = select i1 %i.xi, float %i.xh, float %.sroa.03.028.us39.i.i.i
  %.sroa.01.2.us42.i.i.i = select i1 %i.xi, i32 %i.wj, i32 %.sroa.01.129.us38.i.i.i ; 2 uses
  %exitcond128.not.i.i.i = icmp eq i64 %i.wh, %i.ux
  br i1 %exitcond128.not.i.i.i, label %._crit_edge.us.i.i.i, label %.lr.ph.split.us37.i.i.i

.lr.ph.split.us.us.i.i.i:                         ; preds = %bb.dm, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit.us.us.i.i.i
  %.sroa.012.027.us.us.i.i.i = phi i64 [ %i.xj, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit.us.us.i.i.i ], [ 0, %bb.dm ] ; 3 uses
  %i.xj = add nuw nsw i64 %.sroa.012.027.us.us.i.i.i, 1 ; 2 uses
  %exitcond129.not.i.i.i = icmp eq i64 %.sroa.012.027.us.us.i.i.i, %i.tm
  br i1 %exitcond129.not.i.i.i, label %.split31.us.i.invoke.i.i, label %bb.do
end_hunk_12
begin_hunk_13_@_ZN6brotli3enc6encode22WriteMetaBlockInternal17h7952d72b2f7e6cd4E:bb.a
  %i.agb = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i218.i"

_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i197.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i196.i", %bb.ff
  %i.agc = phi ptr [ %i.afv, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i196.i" ], [ inttoptr (i64 4 to ptr), %bb.ff ] ; 6 uses
  %.pn.i82.i198.i = phi { ptr, i64 } [ %i.aga, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i196.i" ], [ { ptr inttoptr (i64 4 to ptr), i64 0 }, %bb.ff ] ; 2 uses
  %i.agd = extractvalue { ptr, i64 } %.pn.i82.i198.i, 0 ; 12 uses
  %i.age = extractvalue { ptr, i64 } %.pn.i82.i198.i, 1 ; 18 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38273
  %i.agf = call noundef ptr @mi_malloc_aligned(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #38, !noalias !38273 ; 11 uses
  %i.agg = icmp eq ptr %i.agf, null
  br i1 %i.agg, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i197.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc91.i387.i unwind label %.thread27.i386.i, !noalias !38272

.noexc91.i387.i:                                  ; preds = %bb.fh
  unreachable

.thread45.thread81.loopexit.i363.i:               ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i.i
  %lpad.loopexit.i364.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i212.i

.thread45.thread81.loopexit.split-lp.loopexit.i274.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit42.us.i.i.i
  %lpad.loopexit90.i275.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i212.i

.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i264.i: ; preds = %.lr.ph.split.us37.preheader.i.i263.i
  %lpad.loopexit98.i265.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i212.i

.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i256.i: ; preds = %.split.us.i.invoke.i.i
  %lpad.loopexit.split-lp.i257.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i212.i

.thread27.i386.i:                                 ; preds = %bb.fh
  %i.agh = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i212.i

bb.fi:                                            ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i197.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.agf, i8 0, i64 32784, i1 false), !noalias !38272
  br i1 %.not234.i, label %._crit_edge160.i242.i, label %.lr.ph.i199.i.preheader

.lr.ph.i199.i.preheader:                          ; preds = %bb.fi
  %min.iters.check1097 = icmp samesign ult i64 %i.aeq, 8
  br i1 %min.iters.check1097, label %.lr.ph.i199.i.preheader1246, label %vector.ph1098

vector.ph1098:                                    ; preds = %.lr.ph.i199.i.preheader
  %n.vec1099 = and i64 %i.aeq, 4503599627370488   ; 4 uses
  %i.agi = or disjoint i64 %n.vec1099, 1
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %vector.ph1098
  %index1101 = phi i64 [ 0, %vector.ph1098 ], [ %index.next1102, %vector.body1100 ] ; 2 uses
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %index1101 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 16
  store <4 x i32> splat (i32 1), ptr %i.agj, align 4, !noalias !38272
  store <4 x i32> splat (i32 1), ptr %i.agk, align 4, !noalias !38272
  %index.next1102 = add nuw i64 %index1101, 8     ; 2 uses
  %i.agl = icmp eq i64 %index.next1102, %n.vec1099
  br i1 %i.agl, label %middle.block1103, label %vector.body1100, !llvm.loop !37904

middle.block1103:                                 ; preds = %vector.body1100
  %cmp.n1104 = icmp eq i64 %i.aeq, %n.vec1099
  br i1 %cmp.n1104, label %.preheader105.i202.i, label %.lr.ph.i199.i.preheader1246

.lr.ph.i199.i.preheader1246:                      ; preds = %.lr.ph.i199.i.preheader, %middle.block1103
  %.ph1247 = phi i64 [ 1, %.lr.ph.i199.i.preheader ], [ %i.agi, %middle.block1103 ]
  %.sroa.029.0152.i200.i.ph = phi i64 [ 0, %.lr.ph.i199.i.preheader ], [ %n.vec1099, %middle.block1103 ]
  br label %.lr.ph.i199.i

.preheader105.i202.i:                             ; preds = %.lr.ph.i199.i, %middle.block1103
  %i.agm = or disjoint i64 %i.ju, 1
  br label %.lr.ph154.i203.i

.preheader101.i227.i:                             ; preds = %bb.gz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.agd) ]
  br label %.lr.ph156.i228.i

.lr.ph154.i203.i:                                 ; preds = %bb.gz, %.preheader105.i202.i
  %i.agn = phi i64 [ %i.aqh, %bb.gz ], [ 1, %.preheader105.i202.i ] ; 4 uses
  %.sroa.031.0153.i204.i = phi i64 [ %i.agn, %bb.gz ], [ 0, %.preheader105.i202.i ] ; 4 uses
  %exitcond221.not.i205.i = icmp eq i64 %i.agn, %i.agm
  br i1 %exitcond221.not.i205.i, label %.invoke337.i384.i, label %bb.gy

.lr.ph156.i228.i:                                 ; preds = %bb.gw, %.preheader101.i227.i
  %indvars.iv.i229.i = phi i64 [ %i.aeq, %.preheader101.i227.i ], [ %indvars.iv.next.i241.i, %bb.gw ] ; 2 uses
  %.sroa.0.0158.i230.i = phi i64 [ 0, %.preheader101.i227.i ], [ %i.app, %bb.gw ] ; 8 uses
  %.sroa.08.0157.i231.i = phi i64 [ 0, %.preheader101.i227.i ], [ %i.apq, %bb.gw ] ; 5 uses
  %i.ago = call i64 @llvm.umax.i64(i64 %indvars.iv.i229.i, i64 1)
  %umax226.i232.i = call i64 @llvm.umin.i64(i64 %i.ago, i64 64) ; 2 uses
  %i.agp = sub nuw nsw i64 %i.aeq, %.sroa.08.0157.i231.i ; 2 uses
  %.sroa.0.0.i92.i233.i = call noundef i64 @llvm.umin.i64(i64 %i.agp, i64 64) ; 2 uses
  %reass.sub464.i = call i64 @llvm.usub.sat.i64(i64 %i.age, i64 %.sroa.0.0158.i230.i) ; 2 uses
  %i.agq = add nuw nsw i64 %reass.sub464.i, 1
  %i.agr = add nsw i64 %umax226.i232.i, -1
  %i.ags = call i64 @llvm.umin.i64(i64 %reass.sub464.i, i64 %i.agr) ; 2 uses
  %min.iters.check1108 = icmp ult i64 %i.ags, 8
  br i1 %min.iters.check1108, label %scalar.ph1107.preheader, label %vector.ph1109

scalar.ph1107.preheader:                          ; preds = %vector.body1113, %.lr.ph156.i228.i
  %.ph1238 = phi i64 [ 1, %.lr.ph156.i228.i ], [ %i.agx, %vector.body1113 ]
  %.sroa.033.0155.i235.i.ph = phi i64 [ 0, %.lr.ph156.i228.i ], [ %n.vec1110, %vector.body1113 ]
  br label %scalar.ph1107

vector.ph1109:                                    ; preds = %.lr.ph156.i228.i
  %i.agt = add nuw nsw i64 %i.ags, 1              ; 2 uses
  %i.agu = and i64 %i.agt, 7                      ; 2 uses
  %i.agv = icmp eq i64 %i.agu, 0
  %i.agw = select i1 %i.agv, i64 8, i64 %i.agu
  %n.vec1110 = sub i64 %i.agt, %i.agw             ; 3 uses
  %i.agx = add i64 %n.vec1110, 1
  %broadcast.splatinsert1111 = insertelement <4 x i64> poison, i64 %.sroa.08.0157.i231.i, i64 0
  %broadcast.splat1112 = shufflevector <4 x i64> %broadcast.splatinsert1111, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op1513 = add nuw <4 x i64> splat (i64 4), %broadcast.splat1112
  %invariant.gep1515 = getelementptr [4 x i8], ptr %i.agd, i64 %.sroa.0.0158.i230.i
  br label %vector.body1113

vector.body1113:                                  ; preds = %vector.body1113, %vector.ph1109
  %index1114 = phi i64 [ 0, %vector.ph1109 ], [ %index.next1117, %vector.body1113 ] ; 2 uses
  %vec.ind1115 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1109 ], [ %vec.ind.next1118, %vector.body1113 ] ; 3 uses
  %i.agy = add nuw nsw <4 x i64> %vec.ind1115, %broadcast.splat1112
  %.reass1514 = add nuw <4 x i64> %vec.ind1115, %invariant.op1513
  %gep1516 = getelementptr [4 x i8], ptr %invariant.gep1515, i64 %index1114 ; 2 uses
  %i.agz = trunc <4 x i64> %i.agy to <4 x i32>
  %i.aha = trunc <4 x i64> %.reass1514 to <4 x i32>
  %i.ahb = getelementptr inbounds nuw i8, ptr %gep1516, i64 16
  store <4 x i32> %i.agz, ptr %gep1516, align 4, !noalias !38272
  store <4 x i32> %i.aha, ptr %i.ahb, align 4, !noalias !38272
  %index.next1117 = add nuw i64 %index1114, 8     ; 2 uses
  %vec.ind.next1118 = add <4 x i64> %vec.ind1115, splat (i64 8)
  %i.ahc = icmp eq i64 %index.next1117, %n.vec1110
  br i1 %i.ahc, label %scalar.ph1107.preheader, label %vector.body1113, !llvm.loop !37905

.loopexit.i239.i:                                 ; preds = %bb.gv
  %lpad.loopexit102.i240.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i209.i"

.loopexit.split-lp.loopexit.i207.i:               ; preds = %bb.gy
  %lpad.loopexit106.i208.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i209.i"

.loopexit.split-lp.loopexit.split-lp.i247.i:      ; preds = %.invoke337.i384.i, %.invoke.i382.i, %bb.fn
  %.sroa.011.1.ph.ph.ph.i248.i = phi ptr [ %i.agf, %.invoke337.i384.i ], [ %.sroa.011.3.i246.i, %bb.fn ], [ %i.agf, %.invoke.i382.i ]
  %lpad.loopexit.split-lp107.i249.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i209.i"

._crit_edge160.i242.i:                            ; preds = %bb.gw, %bb.fi
  %.sroa.0.0.lcssa.i243.i = phi i64 [ 0, %bb.fi ], [ %i.app, %bb.gw ] ; 4 uses
  %i.ahd = shl nuw nsw i64 %.sroa.0.0.lcssa.i243.i, 6
  %i.ahe = lshr i64 %.sroa.0.0.lcssa.i243.i, 1
  %i.ahf = mul i64 %i.ahe, %.sroa.0.0.lcssa.i243.i
  %.sroa.0.0.i.i244.i = call noundef i64 @llvm.umin.i64(i64 %i.ahf, i64 %i.ahd) ; 3 uses
  %i.ahg = icmp samesign ugt i64 %.sroa.0.0.i.i244.i, 2047
  br i1 %i.ahg, label %.preheader.i370.i, label %bb.fn

.preheader.i370.i:                                ; preds = %._crit_edge160.i242.i, %.preheader.i370.i
  %.sroa.021.0.i371.i = phi i64 [ %i.ahh, %.preheader.i370.i ], [ 2048, %._crit_edge160.i242.i ] ; 6 uses
  %.not84.i372.i = icmp ugt i64 %.sroa.021.0.i371.i, %.sroa.0.0.i.i244.i
  %i.ahh = shl i64 %.sroa.021.0.i371.i, 1
  br i1 %.not84.i372.i, label %bb.fj, label %.preheader.i370.i

bb.fj:                                            ; preds = %.preheader.i370.i
  %i.ahi = shl i64 %.sroa.021.0.i371.i, 4         ; 5 uses
  %i.ahj = icmp ugt i64 %.sroa.021.0.i371.i, 1152921504606846975
  %i.ahk = icmp ugt i64 %i.ahi, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i373.i = or i1 %i.ahj, %i.ahk
  br i1 %or.cond.i.i.i.i.i.i.i373.i, label %bb.fk, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i374.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i374.i: ; preds = %bb.fj
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38274
  %i.ahl = call noundef ptr @mi_malloc_aligned(i64 noundef %i.ahi, i64 noundef range(i64 1, 9) 4) #38, !noalias !38274 ; 6 uses
  %i.ahm = icmp eq ptr %i.ahl, null
  br i1 %i.ahm, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i374.i, %bb.fj
  %.sroa.4.0.ph.i.i.i.i.i379.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i374.i ], [ 0, %bb.fj ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i379.i, i64 %i.ahi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc93.i381.i unwind label %bb.fl, !noalias !38272

.noexc93.i381.i:                                  ; preds = %bb.fk
  unreachable

bb.fl:                                            ; preds = %bb.fk
  %lpad.thr_comm.split-lp63.i380.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i209.i"

bb.fm:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i374.i
  %i.ahn = add nsw i64 %i.ahi, -16                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ahl, i8 0, i64 range(i64 0, -31) %i.ahn, i1 false), !noalias !38275
  %i.aho = getelementptr i8, ptr %i.ahl, i64 %i.ahi ; 2 uses
  %scevgep11.i.i.i375.i = getelementptr i8, ptr %i.ahl, i64 %i.ahn
  store i32 0, ptr %scevgep11.i.i.i375.i, align 4, !noalias !38275
  %.sroa.55.0..sroa_idx.i.i.i376.i = getelementptr i8, ptr %i.aho, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i.i.i376.i, align 4, !noalias !38275
  %.sroa.67.0..sroa_idx.i.i.i377.i = getelementptr i8, ptr %i.aho, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i.i.i377.i, align 4, !noalias !38275
  %i.ahp = icmp samesign ult i64 %.sroa.021.0.i371.i, 576460752303423488
  call void @llvm.assume(i1 %i.ahp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %i.ahl, ptr noundef nonnull readonly align 4 dereferenceable(32768) %i.agf, i64 32768, i1 false), !alias.scope !38276, !noalias !38272
  call void @mi_free(ptr noundef nonnull align 4 %i.agf) #38, !noalias !38272
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %._crit_edge160.i242.i
  %.sroa.10.3.i245.i = phi i64 [ %.sroa.021.0.i371.i, %bb.fm ], [ 2049, %._crit_edge160.i242.i ]
  %.sroa.011.3.i246.i = phi ptr [ %i.ahl, %bb.fm ], [ %i.agf, %._crit_edge160.i242.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.agd) ]
  %i.ahq = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h74b2081842603b54E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i176.i, i64 noundef %i.aeq, ptr noalias noundef nonnull align 4 %i.agc, i64 noundef %i.aeq, ptr noalias noundef nonnull align 4 %i.afa, i64 noundef %i.aeq, ptr noalias noundef nonnull align 4 %i.agd, i64 noundef %i.age, ptr noalias noundef nonnull align 4 %.sroa.011.3.i246.i, i64 noundef %.sroa.10.3.i245.i, i64 noundef %.sroa.0.0.lcssa.i243.i, i64 noundef %i.aeq, i64 noundef 256, i64 noundef %.sroa.0.0.i.i244.i)
          to label %bb.fo unwind label %.loopexit.split-lp.loopexit.split-lp.i247.i, !noalias !38277 ; 5 uses

bb.fo:                                            ; preds = %bb.fn
  call void @mi_free(ptr noundef nonnull align 4 %.sroa.011.3.i246.i) #38, !noalias !38272
  br i1 %.not234.i, label %.preheader.i.i368.thread.i, label %.lr.ph36.i.i251.i

.lr.ph36.i.i251.i:                                ; preds = %bb.fo
  call void @mi_free(ptr noundef nonnull align 4 %i.agc) #38, !noalias !38272
  call void @llvm.experimental.noalias.scope.decl(metadata !38278)
  call void @llvm.experimental.noalias.scope.decl(metadata !38279)
  call void @llvm.experimental.noalias.scope.decl(metadata !38280)
  call void @llvm.experimental.noalias.scope.decl(metadata !38281)
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.q, i64 2176 ; 4 uses
  %.not71.i.i253.i = icmp eq i64 %i.ahq, 0
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.r, i64 2176 ; 2 uses
  br i1 %.not71.i.i253.i, label %.lr.ph36.split.i.i356.i, label %.lr.ph36.split.us.i.i254.i

.lr.ph36.split.us.i.i254.i:                       ; preds = %.lr.ph36.i.i251.i, %._crit_edge.us.i.i280.i
  %.sroa.010.034.us.i.i255.i = phi i64 [ %i.aht, %._crit_edge.us.i.i280.i ], [ 0, %.lr.ph36.i.i251.i ] ; 5 uses
  %i.aht = add nuw nsw i64 %.sroa.010.034.us.i.i255.i, 1 ; 2 uses
  %i.ahu = icmp eq i64 %.sroa.010.034.us.i.i255.i, 0
  %i.ahv = getelementptr [4 x i8], ptr %i.afa, i64 %.sroa.010.034.us.i.i255.i ; 2 uses
  %i.ahw = getelementptr i8, ptr %i.ahv, i64 -4
  %.sroa.01.0.in.us.i.i258.i = select i1 %i.ahu, ptr %i.afa, ptr %i.ahw
  %.sroa.01.0.us.i.i259.i = load i32, ptr %.sroa.01.0.in.us.i.i258.i, align 4, !alias.scope !38282, !noalias !38283, !noundef !45 ; 3 uses
  %exitcond131.not.i.i260.i = icmp eq i64 %.sroa.010.034.us.i.i255.i, %i.ju
  br i1 %exitcond131.not.i.i260.i, label %.split.us.i.invoke.i.i, label %bb.fp

bb.fp:                                            ; preds = %.lr.ph36.split.us.i.i254.i
  %i.ahx = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i89.i, i64 %.sroa.010.034.us.i.i255.i ; 3 uses
  %i.ahy = zext i32 %.sroa.01.0.us.i.i259.i to i64 ; 3 uses
  %i.ahz = icmp samesign ugt i64 %i.aeq, %i.ahy
  br i1 %i.ahz, label %bb.fq, label %.split.us.i.invoke.i.i

bb.fq:                                            ; preds = %bb.fp
  %i.aia = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176.i, i64 %i.ahy ; 4 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahx, i64 2176
  %i.aic = load i64, ptr %i.aib, align 8, !alias.scope !38284, !noalias !38285, !noundef !45
  %i.aid = icmp eq i64 %i.aic, 0
  br i1 %i.aid, label %.lr.ph.split.us.us.i.i352.i, label %vector.ph1133

vector.ph1133:                                    ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !38286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(2192) %i.ahx, i64 2192, i1 false), !alias.scope !38287, !noalias !38285
  %i.aie = load i64, ptr %i.ahr, align 8, !alias.scope !38288, !noalias !38289, !noundef !45
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aia, i64 2176
  %i.aig = load i64, ptr %i.aif, align 8, !alias.scope !38290, !noalias !38291, !noundef !45
  %i.aih = add i64 %i.aig, %i.aie
  store i64 %i.aih, ptr %i.ahr, align 8, !alias.scope !38292, !noalias !38293
  br label %vector.body1134

vector.body1134:                                  ; preds = %vector.body1134, %vector.ph1133
  %index1135 = phi i64 [ 0, %vector.ph1133 ], [ %index.next1140.1, %vector.body1134 ] ; 4 uses
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index1135 ; 3 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 16 ; 2 uses
  %wide.load1136 = load <4 x i32>, ptr %i.aii, align 8, !noalias !38293
  %wide.load1137 = load <4 x i32>, ptr %i.aij, align 8, !noalias !38293
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %index1135 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 16
  %wide.load1138 = load <4 x i32>, ptr %i.aik, align 4, !alias.scope !38294, !noalias !38291
  %wide.load1139 = load <4 x i32>, ptr %i.ail, align 4, !alias.scope !38294, !noalias !38291
  %i.aim = add <4 x i32> %wide.load1138, %wide.load1136
  %i.ain = add <4 x i32> %wide.load1139, %wide.load1137
  store <4 x i32> %i.aim, ptr %i.aii, align 8, !noalias !38293
  store <4 x i32> %i.ain, ptr %i.aij, align 8, !noalias !38293
  %index.next1140 = or disjoint i64 %index1135, 8 ; 2 uses
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index.next1140 ; 3 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 16 ; 2 uses
  %wide.load1136.1 = load <4 x i32>, ptr %i.aio, align 8, !noalias !38293
  %wide.load1137.1 = load <4 x i32>, ptr %i.aip, align 8, !noalias !38293
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %index.next1140 ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 16
  %wide.load1138.1 = load <4 x i32>, ptr %i.aiq, align 4, !alias.scope !38294, !noalias !38291
  %wide.load1139.1 = load <4 x i32>, ptr %i.air, align 4, !alias.scope !38294, !noalias !38291
  %i.ais = add <4 x i32> %wide.load1138.1, %wide.load1136.1
  %i.ait = add <4 x i32> %wide.load1139.1, %wide.load1137.1
  store <4 x i32> %i.ais, ptr %i.aio, align 8, !noalias !38293
  store <4 x i32> %i.ait, ptr %i.aip, align 8, !noalias !38293
  %index.next1140.1 = add nuw nsw i64 %index1135, 16 ; 2 uses
  %i.aiu = icmp eq i64 %index.next1140.1, 544
  br i1 %i.aiu, label %.lr.ph.split.us37.preheader.i.i263.i, label %vector.body1134, !llvm.loop !37940

.lr.ph.split.us37.preheader.i.i263.i:             ; preds = %vector.body1134
  %i.aiv = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h6e6faa88087b3713E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.q)
          to label %.noexc97.i266.i unwind label %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i264.i, !noalias !38272

.noexc97.i266.i:                                  ; preds = %.lr.ph.split.us37.preheader.i.i263.i
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aia, i64 2184
  %i.aix = load float, ptr %i.aiw, align 8, !alias.scope !38295, !noalias !38296, !noundef !45
  %i.aiy = fsub float %i.aiv, %i.aix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !38286
  br label %.lr.ph.split.us37.i.i267.i

.lr.ph.split.us37.i.i267.i:                       ; preds = %.noexc98.i276.i, %.noexc97.i266.i
  %.sroa.01.129.us38.i.i268.i = phi i32 [ %.sroa.01.2.us42.i.i278.i, %.noexc98.i276.i ], [ %.sroa.01.0.us.i.i259.i, %.noexc97.i266.i ]
  %.sroa.03.028.us39.i.i269.i = phi float [ %.sroa.03.1.us41.i.i277.i, %.noexc98.i276.i ], [ %i.aiy, %.noexc97.i266.i ] ; 2 uses
  %.sroa.012.027.us40.i.i270.i = phi i64 [ %i.aiz, %.noexc98.i276.i ], [ 0, %.noexc97.i266.i ] ; 3 uses
  %i.aiz = add nuw nsw i64 %.sroa.012.027.us40.i.i270.i, 1 ; 2 uses
  %exitcond127.not.i.i271.i = icmp eq i64 %.sroa.012.027.us40.i.i270.i, %i.age
  br i1 %exitcond127.not.i.i271.i, label %.split.us.i.invoke.i.i, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph.split.us37.i.i267.i
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %.sroa.012.027.us40.i.i270.i
  %i.ajb = load i32, ptr %i.aja, align 4, !alias.scope !38279, !noalias !38297, !noundef !45 ; 2 uses
  %i.ajc = zext i32 %i.ajb to i64                 ; 3 uses
  %i.ajd = icmp samesign ugt i64 %i.aeq, %i.ajc
  br i1 %i.ajd, label %vector.ph1123, label %.split.us.i.invoke.i.i

vector.ph1123:                                    ; preds = %bb.fr
  %i.aje = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176.i, i64 %i.ajc ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !38298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(2192) %i.ahx, i64 2192, i1 false), !alias.scope !38299, !noalias !38300
  %i.ajf = load i64, ptr %i.ahs, align 8, !alias.scope !38301, !noalias !38302, !noundef !45
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aje, i64 2176
  %i.ajh = load i64, ptr %i.ajg, align 8, !alias.scope !38303, !noalias !38304, !noundef !45
  %i.aji = add i64 %i.ajh, %i.ajf
  store i64 %i.aji, ptr %i.ahs, align 8, !alias.scope !38305, !noalias !38306
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %vector.ph1123
  %index1125 = phi i64 [ 0, %vector.ph1123 ], [ %index.next1130.1, %vector.body1124 ] ; 4 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index1125 ; 3 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 16 ; 2 uses
  %wide.load1126 = load <4 x i32>, ptr %i.ajj, align 8, !noalias !38306
  %wide.load1127 = load <4 x i32>, ptr %i.ajk, align 8, !noalias !38306
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %index1125 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 16
  %wide.load1128 = load <4 x i32>, ptr %i.ajl, align 4, !alias.scope !38294, !noalias !38304
  %wide.load1129 = load <4 x i32>, ptr %i.ajm, align 4, !alias.scope !38294, !noalias !38304
  %i.ajn = add <4 x i32> %wide.load1128, %wide.load1126
  %i.ajo = add <4 x i32> %wide.load1129, %wide.load1127
  store <4 x i32> %i.ajn, ptr %i.ajj, align 8, !noalias !38306
  store <4 x i32> %i.ajo, ptr %i.ajk, align 8, !noalias !38306
  %index.next1130 = or disjoint i64 %index1125, 8 ; 2 uses
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index.next1130 ; 3 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 16 ; 2 uses
  %wide.load1126.1 = load <4 x i32>, ptr %i.ajp, align 8, !noalias !38306
  %wide.load1127.1 = load <4 x i32>, ptr %i.ajq, align 8, !noalias !38306
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %index.next1130 ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 16
  %wide.load1128.1 = load <4 x i32>, ptr %i.ajr, align 4, !alias.scope !38294, !noalias !38304
  %wide.load1129.1 = load <4 x i32>, ptr %i.ajs, align 4, !alias.scope !38294, !noalias !38304
  %i.ajt = add <4 x i32> %wide.load1128.1, %wide.load1126.1
  %i.aju = add <4 x i32> %wide.load1129.1, %wide.load1127.1
  store <4 x i32> %i.ajt, ptr %i.ajp, align 8, !noalias !38306
  store <4 x i32> %i.aju, ptr %i.ajq, align 8, !noalias !38306
  %index.next1130.1 = add nuw nsw i64 %index1125, 16 ; 2 uses
  %i.ajv = icmp eq i64 %index.next1130.1, 544
  br i1 %i.ajv, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit42.us.i.i.i, label %vector.body1124, !llvm.loop !37958

_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit42.us.i.i.i: ; preds = %vector.body1124
  %i.ajw = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h6e6faa88087b3713E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.r)
          to label %.noexc98.i276.i unwind label %.thread45.thread81.loopexit.split-lp.loopexit.i274.i, !noalias !38272

.noexc98.i276.i:                                  ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit42.us.i.i.i
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aje, i64 2184
  %i.ajy = load float, ptr %i.ajx, align 8, !alias.scope !38307, !noalias !38296, !noundef !45
  %i.ajz = fsub float %i.ajw, %i.ajy              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !38298
  %i.aka = fcmp olt float %i.ajz, %.sroa.03.028.us39.i.i269.i ; 2 uses
  %.sroa.03.1.us41.i.i277.i = select i1 %i.aka, float %i.ajz, float %.sroa.03.028.us39.i.i269.i
  %.sroa.01.2.us42.i.i278.i = select i1 %i.aka, i32 %i.ajb, i32 %.sroa.01.129.us38.i.i268.i ; 2 uses
  %exitcond128.not.i.i279.i = icmp eq i64 %i.aiz, %i.ahq
  br i1 %exitcond128.not.i.i279.i, label %._crit_edge.us.i.i280.i, label %.lr.ph.split.us37.i.i267.i

.lr.ph.split.us.us.i.i352.i:                      ; preds = %bb.fq, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit.us.us.i.i.i
  %.sroa.012.027.us.us.i.i353.i = phi i64 [ %i.akb, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit.us.us.i.i.i ], [ 0, %bb.fq ] ; 3 uses
  %i.akb = add nuw nsw i64 %.sroa.012.027.us.us.i.i353.i, 1 ; 2 uses
  %exitcond129.not.i.i354.i = icmp eq i64 %.sroa.012.027.us.us.i.i353.i, %i.age
  br i1 %exitcond129.not.i.i354.i, label %.split.us.i.invoke.i.i, label %bb.fs

bb.fs:                                            ; preds = %.lr.ph.split.us.us.i.i352.i
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %.sroa.012.027.us.us.i.i353.i
  %i.akd = load i32, ptr %i.akc, align 4, !alias.scope !38279, !noalias !38297, !noundef !45
  %i.ake = zext i32 %i.akd to i64                 ; 2 uses
  %i.akf = icmp samesign ugt i64 %i.aeq, %i.ake
  br i1 %i.akf, label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit.us.us.i.i.i, label %.split.us.i.invoke.i.i

_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit.us.us.i.i.i: ; preds = %bb.fs
  %exitcond130.not.i.i355.i = icmp eq i64 %i.akb, %i.ahq
  br i1 %exitcond130.not.i.i355.i, label %._crit_edge.us.i.i280.i, label %.lr.ph.split.us.us.i.i352.i

end_hunk_13
begin_hunk_14_@_ZN6brotli3enc6encode22WriteMetaBlockInternal17h7952d72b2f7e6cd4E:bb.a
  %.not72.i.i369910.i = icmp eq i64 %i.ahq, 0
  br i1 %.not72.i.i369910.i, label %_ZN6brotli3enc7cluster20BrotliHistogramRemap17haaf936f10c9f9e6bE.exit.i.i, label %.lr.ph.i.i285.i.preheader

.lr.ph.i.i285.i.preheader:                        ; preds = %._crit_edge.us.i.i280.i, %.preheader.i.i368.thread.i
  br label %.lr.ph.i.i285.i

.lr.ph36.split.i.i356.i:                          ; preds = %.lr.ph36.i.i251.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit40.i.i.i
  %.sroa.010.034.i.i357.i = phi i64 [ %i.akg, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit40.i.i.i ], [ 0, %.lr.ph36.i.i251.i ] ; 5 uses
  %i.akg = add nuw nsw i64 %.sroa.010.034.i.i357.i, 1 ; 2 uses
  %i.akh = icmp eq i64 %.sroa.010.034.i.i357.i, 0
  %i.aki = getelementptr [4 x i8], ptr %i.afa, i64 %.sroa.010.034.i.i357.i ; 2 uses
  %i.akj = getelementptr i8, ptr %i.aki, i64 -4
  %.sroa.01.0.in.i.i358.i = select i1 %i.akh, ptr %i.afa, ptr %i.akj
  %.sroa.01.0.i.i359.i = load i32, ptr %.sroa.01.0.in.i.i358.i, align 4, !alias.scope !38282, !noalias !38283, !noundef !45 ; 2 uses
  %exitcond135.not.i.i360.i = icmp eq i64 %.sroa.010.034.i.i357.i, %i.ju
  br i1 %exitcond135.not.i.i360.i, label %.split.us.i.invoke.i.i, label %bb.fw

.lr.ph.i.i285.i:                                  ; preds = %.lr.ph.i.i285.i.preheader, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i.i
  %.sroa.014.066.i.i286.i = phi i64 [ %i.akk, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i.i ], [ 0, %.lr.ph.i.i285.i.preheader ] ; 3 uses
  %i.akk = add nuw nsw i64 %.sroa.014.066.i.i286.i, 1 ; 2 uses
  %exitcond138.not.i.i287.i = icmp eq i64 %.sroa.014.066.i.i286.i, %i.age
  br i1 %exitcond138.not.i.i287.i, label %.split.us.i.invoke.i.i, label %bb.fv

.lr.ph69.i.i289.i:                                ; preds = %.lr.ph69.i.i289.i.preheader, %middle.block1161
  %.sroa.016.068.i.i290.i = phi i64 [ %i.akl, %middle.block1161 ], [ 0, %.lr.ph69.i.i289.i.preheader ] ; 5 uses
  %i.akl = add nuw nsw i64 %.sroa.016.068.i.i290.i, 1 ; 2 uses
  %exitcond141.not.i.i291.i = icmp eq i64 %.sroa.016.068.i.i290.i, %i.aeq
  br i1 %exitcond141.not.i.i291.i, label %.split.us.i.invoke.i.i, label %bb.ft

bb.ft:                                            ; preds = %.lr.ph69.i.i289.i
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %.sroa.016.068.i.i290.i
  %i.akn = load i32, ptr %i.akm, align 4, !alias.scope !38282, !noalias !38283, !noundef !45
  %i.ako = zext i32 %i.akn to i64                 ; 3 uses
  %i.akp = icmp samesign ugt i64 %i.aeq, %i.ako
  br i1 %i.akp, label %bb.fu, label %.split.us.i.invoke.i.i

bb.fu:                                            ; preds = %bb.ft
  %exitcond142.not.i.i292.i = icmp eq i64 %.sroa.016.068.i.i290.i, %i.ju
  br i1 %exitcond142.not.i.i292.i, label %.split.us.i.invoke.i.i, label %vector.ph1153

vector.ph1153:                                    ; preds = %bb.fu
  %i.akq = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176.i, i64 %i.ako ; 3 uses
  %i.akr = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i89.i, i64 %.sroa.016.068.i.i290.i ; 3 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akq, i64 2176 ; 2 uses
  %i.akt = load i64, ptr %i.aks, align 8, !alias.scope !38308, !noalias !38309, !noundef !45
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akr, i64 2176
  %i.akv = load i64, ptr %i.aku, align 8, !alias.scope !38310, !noalias !38311, !noundef !45
  %i.akw = add i64 %i.akv, %i.akt
  store i64 %i.akw, ptr %i.aks, align 8, !alias.scope !38312, !noalias !38296
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %vector.ph1153
  %index1155 = phi i64 [ 0, %vector.ph1153 ], [ %index.next1160.1, %vector.body1154 ] ; 4 uses
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.akq, i64 %index1155 ; 3 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 16 ; 2 uses
  %wide.load1156 = load <4 x i32>, ptr %i.akx, align 4, !alias.scope !38294, !noalias !38296
  %wide.load1157 = load <4 x i32>, ptr %i.aky, align 4, !alias.scope !38294, !noalias !38296
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.akr, i64 %index1155 ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 16
  %wide.load1158 = load <4 x i32>, ptr %i.akz, align 4, !alias.scope !38313, !noalias !38311
  %wide.load1159 = load <4 x i32>, ptr %i.ala, align 4, !alias.scope !38313, !noalias !38311
  %i.alb = add <4 x i32> %wide.load1158, %wide.load1156
  %i.alc = add <4 x i32> %wide.load1159, %wide.load1157
  store <4 x i32> %i.alb, ptr %i.akx, align 4, !alias.scope !38294, !noalias !38296
  store <4 x i32> %i.alc, ptr %i.aky, align 4, !alias.scope !38294, !noalias !38296
  %index.next1160 = or disjoint i64 %index1155, 8 ; 2 uses
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.akq, i64 %index.next1160 ; 3 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 16 ; 2 uses
  %wide.load1156.1 = load <4 x i32>, ptr %i.ald, align 4, !alias.scope !38294, !noalias !38296
  %wide.load1157.1 = load <4 x i32>, ptr %i.ale, align 4, !alias.scope !38294, !noalias !38296
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %i.akr, i64 %index.next1160 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 16
  %wide.load1158.1 = load <4 x i32>, ptr %i.alf, align 4, !alias.scope !38313, !noalias !38311
  %wide.load1159.1 = load <4 x i32>, ptr %i.alg, align 4, !alias.scope !38313, !noalias !38311
  %i.alh = add <4 x i32> %wide.load1158.1, %wide.load1156.1
  %i.ali = add <4 x i32> %wide.load1159.1, %wide.load1157.1
  store <4 x i32> %i.alh, ptr %i.ald, align 4, !alias.scope !38294, !noalias !38296
  store <4 x i32> %i.ali, ptr %i.ale, align 4, !alias.scope !38294, !noalias !38296
  %index.next1160.1 = add nuw nsw i64 %index1155, 16 ; 2 uses
  %i.alj = icmp eq i64 %index.next1160.1, 544
  br i1 %i.alj, label %middle.block1161, label %vector.body1154, !llvm.loop !37969

middle.block1161:                                 ; preds = %vector.body1154
  %exitcond143.not.i.i295.i = icmp eq i64 %i.akl, %i.aeq
  br i1 %exitcond143.not.i.i295.i, label %_ZN6brotli3enc7cluster20BrotliHistogramRemap17haaf936f10c9f9e6bE.exit.i.i, label %.lr.ph69.i.i289.i

bb.fv:                                            ; preds = %.lr.ph.i.i285.i
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %.sroa.014.066.i.i286.i
  %i.all = load i32, ptr %i.alk, align 4, !alias.scope !38279, !noalias !38297, !noundef !45
  %i.alm = zext i32 %i.all to i64                 ; 3 uses
  %i.aln = icmp samesign ugt i64 %i.aeq, %i.alm
  br i1 %i.aln, label %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i.i, label %.split.us.i.invoke.i.i

_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i.i: ; preds = %bb.fv
  %i.alo = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176.i, i64 %i.alm ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 2184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.alo, i8 0, i64 2184, i1 false), !alias.scope !38294, !noalias !38296
  store float 3.402000e+38, ptr %i.alp, align 8, !alias.scope !38314, !noalias !38296
  %exitcond139.not.i.i288.i = icmp eq i64 %i.akk, %i.ahq
  br i1 %exitcond139.not.i.i288.i, label %.lr.ph69.i.i289.i.preheader, label %.lr.ph.i.i285.i

.lr.ph69.i.i289.i.preheader:                      ; preds = %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit40.i.i.i, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i.i
  br label %.lr.ph69.i.i289.i

bb.fw:                                            ; preds = %.lr.ph36.split.i.i356.i
  %i.alq = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i89.i, i64 %.sroa.010.034.i.i357.i ; 2 uses
  %i.alr = zext i32 %.sroa.01.0.i.i359.i to i64   ; 3 uses
  %i.als = icmp samesign ugt i64 %i.aeq, %i.alr
  br i1 %i.als, label %bb.fx, label %.split.us.i.invoke.i.i

bb.fx:                                            ; preds = %bb.fw
  %i.alt = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176.i, i64 %i.alr ; 3 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alq, i64 2176
  %i.alv = load i64, ptr %i.alu, align 8, !alias.scope !38284, !noalias !38285, !noundef !45
  %i.alw = icmp eq i64 %i.alv, 0
  br i1 %i.alw, label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit40.i.i.i, label %vector.ph1143

vector.ph1143:                                    ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !38286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(2192) %i.alq, i64 2192, i1 false), !alias.scope !38287, !noalias !38285
  %i.alx = load i64, ptr %i.ahr, align 8, !alias.scope !38288, !noalias !38289, !noundef !45
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alt, i64 2176
  %i.alz = load i64, ptr %i.aly, align 8, !alias.scope !38290, !noalias !38291, !noundef !45
  %i.ama = add i64 %i.alz, %i.alx
  store i64 %i.ama, ptr %i.ahr, align 8, !alias.scope !38292, !noalias !38293
  br label %vector.body1144

vector.body1144:                                  ; preds = %vector.body1144, %vector.ph1143
  %index1145 = phi i64 [ 0, %vector.ph1143 ], [ %index.next1150.1, %vector.body1144 ] ; 4 uses
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index1145 ; 3 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 16 ; 2 uses
  %wide.load1146 = load <4 x i32>, ptr %i.amb, align 8, !noalias !38293
  %wide.load1147 = load <4 x i32>, ptr %i.amc, align 8, !noalias !38293
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.alt, i64 %index1145 ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 16
  %wide.load1148 = load <4 x i32>, ptr %i.amd, align 4, !alias.scope !38294, !noalias !38291
  %wide.load1149 = load <4 x i32>, ptr %i.ame, align 4, !alias.scope !38294, !noalias !38291
  %i.amf = add <4 x i32> %wide.load1148, %wide.load1146
  %i.amg = add <4 x i32> %wide.load1149, %wide.load1147
  store <4 x i32> %i.amf, ptr %i.amb, align 8, !noalias !38293
  store <4 x i32> %i.amg, ptr %i.amc, align 8, !noalias !38293
  %index.next1150 = or disjoint i64 %index1145, 8 ; 2 uses
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index.next1150 ; 3 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 16 ; 2 uses
  %wide.load1146.1 = load <4 x i32>, ptr %i.amh, align 8, !noalias !38293
  %wide.load1147.1 = load <4 x i32>, ptr %i.ami, align 8, !noalias !38293
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.alt, i64 %index.next1150 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 16
  %wide.load1148.1 = load <4 x i32>, ptr %i.amj, align 4, !alias.scope !38294, !noalias !38291
  %wide.load1149.1 = load <4 x i32>, ptr %i.amk, align 4, !alias.scope !38294, !noalias !38291
  %i.aml = add <4 x i32> %wide.load1148.1, %wide.load1146.1
  %i.amm = add <4 x i32> %wide.load1149.1, %wide.load1147.1
  store <4 x i32> %i.aml, ptr %i.amh, align 8, !noalias !38293
  store <4 x i32> %i.amm, ptr %i.ami, align 8, !noalias !38293
  %index.next1150.1 = add nuw nsw i64 %index1145, 16 ; 2 uses
  %i.amn = icmp eq i64 %index.next1150.1, 544
  br i1 %i.amn, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i.i, label %vector.body1144, !llvm.loop !37972

_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i.i: ; preds = %vector.body1144
  %i.amo = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h6e6faa88087b3713E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.q)
          to label %.noexc107.i365.i unwind label %.thread45.thread81.loopexit.i363.i, !noalias !38272 ; 0 uses

.noexc107.i365.i:                                 ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !38286
  br label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit40.i.i.i

_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit40.i.i.i: ; preds = %.noexc107.i365.i, %bb.fx
  store i32 %.sroa.01.0.i.i359.i, ptr %i.aki, align 4, !alias.scope !38282, !noalias !38283
  %exitcond137.not.i.i367.i = icmp eq i64 %i.akg, %i.aeq
  br i1 %exitcond137.not.i.i367.i, label %.lr.ph69.i.i289.i.preheader, label %.lr.ph36.split.i.i356.i

.split.us.i.invoke.i.i:                           ; preds = %bb.fp, %.lr.ph36.split.us.i.i254.i, %bb.fr, %.lr.ph.split.us37.i.i267.i, %bb.fs, %.lr.ph.split.us.us.i.i352.i, %bb.fw, %.lr.ph36.split.i.i356.i, %bb.fv, %.lr.ph.i.i285.i, %bb.fu, %bb.ft, %.lr.ph69.i.i289.i
  %i.amp = phi i64 [ %i.ake, %bb.fs ], [ %i.ajc, %bb.fr ], [ %i.alm, %bb.fv ], [ %i.aeq, %.lr.ph69.i.i289.i ], [ %i.alr, %bb.fw ], [ %i.ako, %bb.ft ], [ %i.ju, %bb.fu ], [ %i.age, %.lr.ph.i.i285.i ], [ %i.ju, %.lr.ph36.split.i.i356.i ], [ %i.age, %.lr.ph.split.us.us.i.i352.i ], [ %i.age, %.lr.ph.split.us37.i.i267.i ], [ %i.ju, %.lr.ph36.split.us.i.i254.i ], [ %i.ahy, %bb.fp ]
  %i.amq = phi i64 [ %i.aeq, %bb.fs ], [ %i.aeq, %bb.fr ], [ %i.aeq, %bb.fv ], [ %i.aeq, %.lr.ph69.i.i289.i ], [ %i.aeq, %bb.fw ], [ %i.aeq, %bb.ft ], [ %i.ju, %bb.fu ], [ %i.age, %.lr.ph.i.i285.i ], [ %i.ju, %.lr.ph36.split.i.i356.i ], [ %i.age, %.lr.ph.split.us.us.i.i352.i ], [ %i.age, %.lr.ph.split.us37.i.i267.i ], [ %i.ju, %.lr.ph36.split.us.i.i254.i ], [ %i.aeq, %bb.fp ]
  %i.amr = phi ptr [ @1889, %bb.fs ], [ @1889, %bb.fr ], [ @1882, %bb.fv ], [ @1878, %.lr.ph69.i.i289.i ], [ @1886, %bb.fw ], [ @1879, %bb.ft ], [ @1880, %bb.fu ], [ @1881, %.lr.ph.i.i285.i ], [ @1885, %.lr.ph36.split.i.i356.i ], [ @1888, %.lr.ph.split.us.us.i.i352.i ], [ @1888, %.lr.ph.split.us37.i.i267.i ], [ @1885, %.lr.ph36.split.us.i.i254.i ], [ @1886, %bb.fp ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.amp, i64 noundef %i.amq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.amr) #43
          to label %.split.us.i.cont.i.i unwind label %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i256.i, !noalias !38272

.split.us.i.cont.i.i:                             ; preds = %.split.us.i.invoke.i.i
  unreachable

_ZN6brotli3enc7cluster20BrotliHistogramRemap17haaf936f10c9f9e6bE.exit.i.i: ; preds = %middle.block1161, %.preheader.i.i368.thread.i
  %i.ams = icmp eq i64 %i.age, 0
  br i1 %i.ams, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit113.i297.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i296.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i296.i": ; preds = %_ZN6brotli3enc7cluster20BrotliHistogramRemap17haaf936f10c9f9e6bE.exit.i.i
  call void @mi_free(ptr noundef nonnull align 4 %i.agd) #38, !noalias !38272
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit113.i297.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit113.i297.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i296.i", %_ZN6brotli3enc7cluster20BrotliHistogramRemap17haaf936f10c9f9e6bE.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !38315)
  br i1 %.not234.i, label %bb.ha, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i299.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i299.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit113.i297.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38316
  %i.amt = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aer, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38316 ; 11 uses
  %i.amu = icmp eq ptr %i.amt, null
  br i1 %i.amu, label %.invoke1127.i, label %.lr.ph.i117.i300.i

.lr.ph.i117.i300.i:                               ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i299.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.amt, i8 -1, i64 range(i64 0, 9223372036854775805) %i.aer, i1 false), !noalias !38317
  %i.amv = or disjoint i64 %i.aeq, 1              ; 2 uses
  br label %bb.gn

._crit_edge.i.i316.i:                             ; preds = %bb.gt
  %i.amw = zext i32 %.sroa.0.3.i.i314.i.1 to i64  ; 3 uses
  %.not42.i.i317.i = icmp eq i32 %.sroa.0.3.i.i314.i.1, 0
  br i1 %.not42.i.i317.i, label %_ZN6brotli3enc14combined_alloc8alloc_if17h2865d3cc2bef66e4E.exit.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %._crit_edge.i.i316.i
  %i.amx = mul nuw nsw i64 %i.amw, 2192           ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38318
  %i.amy = call noundef ptr @mi_malloc_aligned(i64 noundef %i.amx, i64 noundef range(i64 1, 9) 8) #38, !noalias !38318 ; 5 uses
  %i.amz = icmp eq ptr %i.amy, null
  br i1 %i.amz, label %bb.fz, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i.i.i"

bb.fz:                                            ; preds = %bb.fy
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.amx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc.i.i349.i unwind label %.thread29.i.i311.i, !noalias !38317

.noexc.i.i349.i:                                  ; preds = %bb.fz
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i.i.i": ; preds = %bb.fy
  %.not.i.i.i318.i = icmp eq i32 %.sroa.0.3.i.i314.i.1, 1
  br i1 %.not.i.i.i318.i, label %._crit_edge.thread.i.i.i.i.i.i323.i, label %.lr.ph.i.i.i.i.i.i319.i.preheader

.lr.ph.i.i.i.i.i.i319.i.preheader:                ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i.i.i"
  %i.ana = add nsw i64 %i.amw, -1                 ; 2 uses
  %xtraiter1377 = and i64 %i.ana, 7               ; 3 uses
  %i.anb = add i32 %.sroa.0.3.i.i314.i.1, -2
  %i.anc = icmp ult i32 %i.anb, 7
  br i1 %i.anc, label %.lr.ph.i.i.i.i.i.i319.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i319.i.preheader.new

.lr.ph.i.i.i.i.i.i319.i.preheader.new:            ; preds = %.lr.ph.i.i.i.i.i.i319.i.preheader
  %unroll_iter1382 = and i64 %i.ana, -8
  br label %.lr.ph.i.i.i.i.i.i319.i

._crit_edge.thread.i.i.i.i.i.i323.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i319.i
  %lcmp.mod1379.not = icmp eq i64 %xtraiter1377, 0
  br i1 %lcmp.mod1379.not, label %._crit_edge.thread.i.i.i.i.i.i323.i, label %.lr.ph.i.i.i.i.i.i319.i.epil.preheader

.lr.ph.i.i.i.i.i.i319.i.epil.preheader:           ; preds = %._crit_edge.thread.i.i.i.i.i.i323.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i319.i.preheader
  %.sroa.0.08.i.i.i.i.i.i320.i.epil.init = phi ptr [ %i.amy, %.lr.ph.i.i.i.i.i.i319.i.preheader ], [ %i.ann, %._crit_edge.thread.i.i.i.i.i.i323.i.loopexit.unr-lcssa ]
  %lcmp.mod1381 = icmp ne i64 %xtraiter1377, 0
  call void @llvm.assume(i1 %lcmp.mod1381)
  br label %.lr.ph.i.i.i.i.i.i319.i.epil

.lr.ph.i.i.i.i.i.i319.i.epil:                     ; preds = %.lr.ph.i.i.i.i.i.i319.i.epil, %.lr.ph.i.i.i.i.i.i319.i.epil.preheader
  %.sroa.0.08.i.i.i.i.i.i320.i.epil = phi ptr [ %i.and, %.lr.ph.i.i.i.i.i.i319.i.epil ], [ %.sroa.0.08.i.i.i.i.i.i320.i.epil.init, %.lr.ph.i.i.i.i.i.i319.i.epil.preheader ] ; 3 uses
  %epil.iter1378 = phi i64 [ %epil.iter1378.next, %.lr.ph.i.i.i.i.i.i319.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i319.i.epil.preheader ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i.i.i320.i.epil, i8 0, i64 2184, i1 false), !noalias !38317
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.epil, align 8, !noalias !38319
  %i.and = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i.epil, i64 2192 ; 2 uses
  %epil.iter1378.next = add i64 %epil.iter1378, 1 ; 2 uses
  %epil.iter1378.cmp.not = icmp eq i64 %epil.iter1378.next, %xtraiter1377
  br i1 %epil.iter1378.cmp.not, label %._crit_edge.thread.i.i.i.i.i.i323.i, label %.lr.ph.i.i.i.i.i.i319.i.epil, !llvm.loop !37989

._crit_edge.thread.i.i.i.i.i.i323.i:              ; preds = %._crit_edge.thread.i.i.i.i.i.i323.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i319.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i.i.i324.i = phi ptr [ %i.amy, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i.i.i" ], [ %i.ann, %._crit_edge.thread.i.i.i.i.i.i323.i.loopexit.unr-lcssa ], [ %i.and, %.lr.ph.i.i.i.i.i.i319.i.epil ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i.i.i.i324.i, i8 0, i64 2184, i1 false), !noalias !38317
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i.i.i324.i, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !38319
  %i.ane = insertvalue { ptr, i64 } poison, ptr %i.amy, 0
  %i.anf = insertvalue { ptr, i64 } %i.ane, i64 %i.amw, 1
  br label %_ZN6brotli3enc14combined_alloc8alloc_if17h2865d3cc2bef66e4E.exit.i.i.i

.lr.ph.i.i.i.i.i.i319.i:                          ; preds = %.lr.ph.i.i.i.i.i.i319.i, %.lr.ph.i.i.i.i.i.i319.i.preheader.new
  %.sroa.0.08.i.i.i.i.i.i320.i = phi ptr [ %i.amy, %.lr.ph.i.i.i.i.i.i319.i.preheader.new ], [ %i.ann, %.lr.ph.i.i.i.i.i.i319.i ] ; 17 uses
  %niter1383 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i319.i.preheader.new ], [ %niter1383.next.7, %.lr.ph.i.i.i.i.i.i319.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i.i.i320.i, i8 0, i64 2184, i1 false), !noalias !38317
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !38319
  %i.ang = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 2192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ang, i8 0, i64 2184, i1 false), !noalias !38317
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.1, align 8, !noalias !38319
  %i.anh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 4384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.anh, i8 0, i64 2184, i1 false), !noalias !38317
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.2, align 8, !noalias !38319
  %i.ani = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 6576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ani, i8 0, i64 2184, i1 false), !noalias !38317
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.3, align 8, !noalias !38319
  %i.anj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 8768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.anj, i8 0, i64 2184, i1 false), !noalias !38317
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.4, align 8, !noalias !38319
  %i.ank = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 10960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ank, i8 0, i64 2184, i1 false), !noalias !38317
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.5, align 8, !noalias !38319
  %i.anl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 13152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.anl, i8 0, i64 2184, i1 false), !noalias !38317
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.6, align 8, !noalias !38319
  %i.anm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 15344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.anm, i8 0, i64 2184, i1 false), !noalias !38317
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.7, align 8, !noalias !38319
  %i.ann = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 17536 ; 3 uses
  %niter1383.next.7 = add i64 %niter1383, 8       ; 2 uses
  %niter1383.ncmp.7 = icmp eq i64 %niter1383.next.7, %unroll_iter1382
  br i1 %niter1383.ncmp.7, label %._crit_edge.thread.i.i.i.i.i.i323.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i319.i

.thread29.i.i311.i:                               ; preds = %.invoke.i.i307.i, %bb.fz
  %lpad.thr_comm.split-lp.i.i312.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i220.i"

_ZN6brotli3enc14combined_alloc8alloc_if17h2865d3cc2bef66e4E.exit.i.i.i: ; preds = %._crit_edge.thread.i.i.i.i.i.i323.i, %._crit_edge.i.i316.i
  %.pn.i71.i.i325.i = phi { ptr, i64 } [ %i.anf, %._crit_edge.thread.i.i.i.i.i.i323.i ], [ { ptr inttoptr (i64 8 to ptr), i64 0 }, %._crit_edge.i.i316.i ] ; 2 uses
  %i.ano = extractvalue { ptr, i64 } %.pn.i71.i.i325.i, 0 ; 10 uses
  %i.anp = extractvalue { ptr, i64 } %.pn.i71.i.i325.i, 1 ; 7 uses
  br label %bb.gg

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i.i336.i": ; preds = %bb.gm
  call void @mi_free(ptr noundef nonnull align 4 %i.amt) #38, !noalias !38317
  %i.anq = zext i32 %.sroa.0.2.i.i334.i to i64    ; 3 uses
  %.not84.i.i337.i = icmp eq i32 %.sroa.0.2.i.i334.i, 0
  br i1 %.not84.i.i337.i, label %._crit_edge80.i.i343.i, label %.lr.ph79.i.i338.i

.lr.ph79.i.i338.i:                                ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i.i336.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ano) ]
  %i.anr = add nuw nsw i64 %i.anp, 1
  br label %bb.ga

._crit_edge80.i.i343.i:                           ; preds = %bb.gf, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i.i336.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ano) ]
  %i.ans = icmp eq i64 %i.anp, 0
  br i1 %i.ans, label %bb.ha, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i344.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i344.i": ; preds = %._crit_edge80.i.i343.i
  call void @mi_free(ptr noundef nonnull align 8 %i.ano) #38, !noalias !38317
  br label %bb.ha

bb.ga:                                            ; preds = %bb.gf, %.lr.ph79.i.i338.i
  %i.ant = phi i64 [ 1, %.lr.ph79.i.i338.i ], [ %i.anx, %bb.gf ] ; 5 uses
  %.sroa.029.078.i.i339.i = phi i64 [ 0, %.lr.ph79.i.i338.i ], [ %i.ant, %bb.gf ] ; 4 uses
  %exitcond106.not.i.i340.i = icmp eq i64 %i.ant, %i.anr
  br i1 %exitcond106.not.i.i340.i, label %bb.gb, label %bb.gd

bb.gb:                                            ; preds = %bb.ga
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.029.078.i.i339.i, i64 noundef %i.anp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1902) #43
          to label %bb.gc unwind label %.thread.i.i330.i, !noalias !38317

bb.gc:                                            ; preds = %bb.gk, %bb.ge, %bb.gb
  unreachable

bb.gd:                                            ; preds = %bb.ga
  %exitcond107.not.i.i341.i = icmp eq i64 %i.ant, %i.amv
  br i1 %exitcond107.not.i.i341.i, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.029.078.i.i339.i, i64 noundef %i.aeq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1903) #43
          to label %bb.gc unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i345.i", !noalias !38317

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i345.i": ; preds = %bb.ge
  %i.anu = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i220.i"

bb.gf:                                            ; preds = %bb.gd
  %i.anv = getelementptr inbounds nuw [2192 x i8], ptr %i.ano, i64 %.sroa.029.078.i.i339.i
  %i.anw = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176.i, i64 %.sroa.029.078.i.i339.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.anw, ptr noundef nonnull align 8 dereferenceable(2192) %i.anv, i64 2192, i1 false), !noalias !38320
  %i.anx = add nuw nsw i64 %i.ant, 1
  %exitcond108.not.i.i342.i = icmp eq i64 %i.ant, %i.anq
  br i1 %exitcond108.not.i.i342.i, label %._crit_edge80.i.i343.i, label %bb.ga

bb.gg:                                            ; preds = %bb.gm, %_ZN6brotli3enc14combined_alloc8alloc_if17h2865d3cc2bef66e4E.exit.i.i.i
  %i.any = phi i64 [ 1, %_ZN6brotli3enc14combined_alloc8alloc_if17h2865d3cc2bef66e4E.exit.i.i.i ], [ %i.aom, %bb.gm ] ; 4 uses
  %.sroa.0.173.i.i326.i = phi i32 [ 0, %_ZN6brotli3enc14combined_alloc8alloc_if17h2865d3cc2bef66e4E.exit.i.i.i ], [ %.sroa.0.2.i.i334.i, %bb.gm ] ; 4 uses
  %.sroa.027.072.i.i327.i = phi i64 [ 0, %_ZN6brotli3enc14combined_alloc8alloc_if17h2865d3cc2bef66e4E.exit.i.i.i ], [ %i.any, %bb.gm ]
  %exitcond104.not.i.i328.i = icmp eq i64 %i.any, %i.amv
  br i1 %exitcond104.not.i.i328.i, label %.invoke176.i.i329.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %.sroa.027.072.i.i327.i ; 2 uses
  %i.aoa = load i32, ptr %i.anz, align 4, !alias.scope !38321, !noalias !38322, !noundef !45
  %i.aob = zext i32 %i.aoa to i64                 ; 4 uses
  %i.aoc = icmp samesign ugt i64 %i.aeq, %i.aob
  br i1 %i.aoc, label %bb.gi, label %.invoke176.i.i329.i

bb.gi:                                            ; preds = %bb.gh
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.amt, i64 %i.aob ; 2 uses
  %i.aoe = load i32, ptr %i.aod, align 4, !noalias !38317, !noundef !45 ; 2 uses
  %i.aof = icmp eq i32 %i.aoe, %.sroa.0.173.i.i326.i
  br i1 %i.aof, label %bb.gj, label %bb.gm

.invoke176.i.i329.i:                              ; preds = %bb.gh, %bb.gg
  %.ph674.i = phi i64 [ %i.aeq, %bb.gg ], [ %i.aob, %bb.gh ]
  %.ph675.i = phi ptr [ @1904, %bb.gg ], [ @1905, %bb.gh ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.ph674.i, i64 noundef %i.aeq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph675.i) #43
          to label %.cont177.i.i333.i unwind label %.thread.i.i330.i, !noalias !38317

.cont177.i.i333.i:                                ; preds = %.invoke176.i.i329.i
  unreachable

end_hunk_14
