Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BufferizableOpInterface?download=true
inline.NumInlined: 3293
inline.NumDeleted: 1843
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mlir13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS_12RewriterBaseERKNS0_13AnalysisStateERKNS0_18BufferizationStateE:bb.a
  %i.de = load i32, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %i.df = load i32, ptr %i.j, align 4, !tbaa !77
  %.not.i118 = icmp ult i32 %i.de, %i.df
  br i1 %.not.i118, label %bb.ab, label %bb.aa, !prof !62

bb.aa:                                            ; preds = %.critedge.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %.085197)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit

bb.ab:                                            ; preds = %.critedge.thread
  %i.dg = zext i32 %i.de to i64
  %i.dh = load ptr, ptr %5, align 8, !tbaa !75
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dg
  store ptr %.085197, ptr %i.di, align 1
  %i.dj = load i32, ptr %i.i, align 8, !tbaa !76
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.i, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit: ; preds = %bb.aa, %bb.ab
  %i.dl = call noundef zeroext i1 @_ZNK4mlir13bufferization13AnalysisState17canOmitTensorCopyERNS_9OpOperandE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(32) %.085197)
  br i1 %i.dl, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %.085197, ptr %i.a, align 8, !tbaa !208
  %i.dm = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !363 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit, %bb.ac, %bb.z
  %i.dn = load ptr, ptr %11, align 8, !tbaa !75   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.ab
  br i1 %i.do, label %_ZN4mlir13bufferization9AliasListINS0_13AliasingValueEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.dn) #17
  br label %_ZN4mlir13bufferization9AliasListINS0_13AliasingValueEED2Ev.exit

_ZN4mlir13bufferization9AliasListINS0_13AliasingValueEED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.af

bb.af:                                            ; preds = %bb.b, %_ZN4mlir13bufferization9AliasListINS0_13AliasingValueEED2Ev.exit, %bb.c
  %i.dp = getelementptr inbounds nuw i8, ptr %.085197, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.dp, %i.w
  br i1 %.not, label %._crit_edge, label %bb.b

bb.ag:                                            ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %.thread192

._crit_edge:                                      ; preds = %bb.af, %bb.a, %_ZN4mlir9Operation13getOpOperandsEv.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !51
  %i.ds = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.g) #17
  store ptr %i.dr, ptr %i.c, align 8, !tbaa !187
  store ptr %i.ds, ptr %i.d, align 8
  %i.dt = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.du = load i32, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %i.dv = zext i32 %i.du to i64
  %.idx = shl nuw nsw i64 %i.dv, 3
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx
  %.not90200 = icmp eq i32 %i.du, 0
  br i1 %.not90200, label %.thread187, label %.lr.ph203

.lr.ph203:                                        ; preds = %._crit_edge
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 20
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph203, %bb.ao
  %.087201 = phi ptr [ %i.dt, %.lr.ph203 ], [ %i.fz, %bb.ao ] ; 2 uses
  %i.eb = load ptr, ptr %.087201, align 8, !tbaa !208 ; 8 uses
  %.sroa.0.0.copyload.i124 = load ptr, ptr %i.dx, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i125 = load ptr, ptr %i.ec, align 8, !tbaa !89
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !197, !nonnull !98, !align !198
  %i.ee = load ptr, ptr %6, align 8, !tbaa !211, !noalias !364
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !212, !noalias !364 ; 2 uses
  %i.eg = load i32, ptr %i.ea, align 4, !tbaa !213, !noalias !364 ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ei = add i32 %i.eg, -1                       ; 2 uses
  %i.ej = ptrtoint ptr %i.eb to i64
  %i.ek = mul i64 %i.ej, -4658895280553007687     ; 2 uses
  %i.el = lshr i64 %i.ek, 31
  %i.em = xor i64 %i.el, %i.ek
  %i.en = trunc i64 %i.em to i32
  %i.eo = and i32 %i.ei, %i.en                    ; 3 uses
  %i.ep = zext i32 %i.eo to i64                   ; 2 uses
  %i.eq = lshr i64 %i.ep, 5
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !58
  %i.et = and i32 %i.eo, 31
  %i.eu = lshr i32 %i.es, %i.et
  %i.ev = trunc i32 %i.eu to i1
  br i1 %i.ev, label %.lr.ph.i.i.i, label %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit, !prof !59

.lr.ph.i.i.i:                                     ; preds = %bb.ai, %bb.aj
  %i.ew = phi i64 [ %i.fc, %bb.aj ], [ %i.ep, %bb.ai ]
  %.019.i.i.i = phi i32 [ %i.fb, %bb.aj ], [ %i.eo, %bb.ai ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !208
  %i.ez = icmp eq ptr %i.eb, %i.ey                ; 3 uses
  br i1 %i.ez, label %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit, label %bb.aj, !prof !62

bb.aj:                                            ; preds = %.lr.ph.i.i.i
  %i.fa = add nuw i32 %.019.i.i.i, 1
  %i.fb = and i32 %i.fa, %i.ei                    ; 3 uses
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = lshr i64 %i.fc, 5
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !58
  %i.fg = and i32 %i.fb, 31
  %i.fh = lshr i32 %i.ff, %i.fg
  %i.fi = trunc i32 %i.fh to i1
  br i1 %i.fi, label %.lr.ph.i.i.i, label %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit, !prof !63

_ZNK4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.aj, %bb.ah, %bb.ai
  %.3.i.i.i = phi i1 [ false, %bb.ah ], [ false, %bb.ai ], [ %i.ez, %bb.aj ], [ %i.ez, %.lr.ph.i.i.i ]
  %i.fj = call { ptr, i8 } @_ZN4mlir13bufferization28allocateTensorForShapedValueERNS_9OpBuilderENS_8LocationENS_5ValueERKNS0_20BufferizationOptionsERKNS0_18BufferizationStateEb(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr %.sroa.0.0.copyload.i124, ptr %.sroa.0.0.copyload.i125, ptr noundef nonnull align 8 dereferenceable(352) %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %.3.i.i.i) ; 2 uses
  %i.fk = extractvalue { ptr, i8 } %i.fj, 0       ; 4 uses
  %i.fl = extractvalue { ptr, i8 } %i.fj, 1
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.ak, label %.thread192

bb.ak:                                            ; preds = %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit
  %i.fn = load ptr, ptr %1, align 8, !tbaa !194
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.g) #17, !inline_history !346
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !365 ; 3 uses
  %.not.i.i.i.i126 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i126, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fs = load ptr, ptr %i.eb, align 8, !tbaa !366 ; 3 uses
  store ptr %i.fs, ptr %i.fr, align 8, !tbaa !214
  %.not2.i.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not2.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %i.fr, ptr %i.ft, align 8, !tbaa !365
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  store ptr %i.fk, ptr %i.ec, align 8, !tbaa !89
  store ptr %i.fk, ptr %i.fq, align 8, !tbaa !365
  %i.fu = load ptr, ptr %i.fk, align 8, !tbaa !367 ; 3 uses
  store ptr %i.fu, ptr %i.eb, align 8, !tbaa !366
  %.not.i.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.eb, ptr %i.fv, align 8, !tbaa !365
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, %bb.an
  store ptr %i.eb, ptr %i.fk, align 8, !tbaa !367
  %i.fw = load ptr, ptr %1, align 8, !tbaa !194
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.g) #17, !inline_history !346
  %i.fz = getelementptr inbounds nuw i8, ptr %.087201, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.fz, %i.dw
  br i1 %.not90, label %.thread187, label %bb.ah

.thread187:                                       ; preds = %bb.ao, %._crit_edge
  %i.ga = load ptr, ptr %i.dq, align 8, !tbaa !51
  %i.gb = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.g) #17
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !215
  store ptr %i.ga, ptr %i.c, align 8, !tbaa !187
  store ptr %i.gd, ptr %i.d, align 8
  %i.ge = load ptr, ptr %7, align 8, !tbaa !75    ; 2 uses
  %i.gf = load i32, ptr %i.l, align 8, !tbaa !76  ; 2 uses
  %i.gg = zext i32 %i.gf to i64
  %.idx211 = shl nuw nsw i64 %i.gg, 3
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.idx211
  %.not91208 = icmp eq i32 %i.gf, 0
  br i1 %.not91208, label %.thread192, label %.lr.ph210

.lr.ph210:                                        ; preds = %.thread187
  %i.gi = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.gm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %15, i64 12
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph210, %._crit_edge207.thread
  %.084209 = phi ptr [ %i.ge, %.lr.ph210 ], [ %i.jt, %._crit_edge207.thread ] ; 2 uses
  %i.gq = load i64, ptr %.084209, align 8, !tbaa !89 ; 2 uses
  %i.gr = inttoptr i64 %i.gq to ptr               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %.sroa.0.0.copyload.i127 = load ptr, ptr %i.gi, align 8
  %i.gs = load ptr, ptr %i.gj, align 8, !tbaa !197, !nonnull !98, !align !198
  %i.gt = load ptr, ptr %8, align 8, !tbaa !218, !noalias !368
  %i.gu = load ptr, ptr %i.gk, align 8, !tbaa !219, !noalias !368 ; 2 uses
  %i.gv = load i32, ptr %i.gl, align 4, !tbaa !220, !noalias !368 ; 2 uses
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gx = add i32 %i.gv, -1                       ; 2 uses
  %i.gy = xor i64 %i.gq, -49064778989728563       ; 2 uses
  %i.gz = lshr i64 %i.gy, 30
  %i.ha = xor i64 %i.gz, %i.gy
  %i.hb = mul i64 %i.ha, -4658895280553007687     ; 2 uses
  %i.hc = lshr i64 %i.hb, 27
  %i.hd = xor i64 %i.hc, %i.hb
  %i.he = mul i64 %i.hd, -7723592293110705685     ; 2 uses
  %i.hf = lshr i64 %i.he, 31
  %i.hg = xor i64 %i.hf, %i.he
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = and i32 %i.gx, %i.hh                    ; 3 uses
  %i.hj = zext i32 %i.hi to i64                   ; 2 uses
  %i.hk = lshr i64 %i.hj, 5
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !58
  %i.hn = and i32 %i.hi, 31
  %i.ho = lshr i32 %i.hm, %i.hn
  %i.hp = trunc i32 %i.ho to i1
  br i1 %i.hp, label %.lr.ph.i.i.i.i, label %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit, !prof !59

.lr.ph.i.i.i.i:                                   ; preds = %bb.aq, %bb.ar
  %i.hq = phi i64 [ %i.hv, %bb.ar ], [ %i.hj, %bb.aq ]
  %.01421.i.i.i.i = phi i32 [ %i.hu, %bb.ar ], [ %i.hi, %bb.aq ]
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.hq
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.hr, align 8, !tbaa !89
  %i.hs = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, %i.gr ; 3 uses
  br i1 %i.hs, label %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit, label %bb.ar, !prof !62

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ht = add nuw i32 %.01421.i.i.i.i, 1
  %i.hu = and i32 %i.ht, %i.gx                    ; 3 uses
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  %i.hw = lshr i64 %i.hv, 5
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !58
  %i.hz = and i32 %i.hu, 31
  %i.ia = lshr i32 %i.hy, %i.hz
  %i.ib = trunc i32 %i.ia to i1
  br i1 %i.ib, label %.lr.ph.i.i.i.i, label %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit, !prof !63

_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.ar, %bb.ap, %bb.aq
  %i.ic = phi i1 [ false, %bb.ap ], [ false, %bb.aq ], [ %i.hs, %bb.ar ], [ %i.hs, %.lr.ph.i.i.i.i ]
  %i.id = call { ptr, i8 } @_ZN4mlir13bufferization28allocateTensorForShapedValueERNS_9OpBuilderENS_8LocationENS_5ValueERKNS0_20BufferizationOptionsERKNS0_18BufferizationStateEb(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr %.sroa.0.0.copyload.i127, ptr %i.gr, ptr noundef nonnull align 8 dereferenceable(352) %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %i.ic) ; 2 uses
  %i.ie = extractvalue { ptr, i8 } %i.id, 0
  store ptr %i.ie, ptr %14, align 8
  %i.if = extractvalue { ptr, i8 } %i.id, 1       ; 2 uses
  store i8 %i.if, ptr %i.gm, align 8
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %bb.as, label %.thread190

.thread190:                                       ; preds = %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %.thread192

bb.as:                                            ; preds = %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.ih = load ptr, ptr %i.gr, align 8, !tbaa !367 ; 3 uses
  store ptr %i.gn, ptr %15, align 8, !tbaa !75, !alias.scope !369
  store i32 0, ptr %i.go, align 8, !tbaa !76, !alias.scope !369
  store i32 6, ptr %i.gp, align 4, !tbaa !77, !alias.scope !369
  %.not4.i.i.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not4.i.i.i.i.i, label %._crit_edge207.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.as, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi i64 [ %i.ij, %.lr.ph.i.i.i.i.i ], [ 0, %bb.as ] ; 2 uses
  %.sroa.03.05.i.i.i.i.i = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i ], [ %i.ih, %bb.as ]
  %i.ii = load ptr, ptr %.sroa.03.05.i.i.i.i.i, align 8, !tbaa !366 ; 2 uses
  %i.ij = add nuw nsw i64 %.06.i.i.i.i.i, 1       ; 3 uses
  %.not.i.i.i.i.i130 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i.i130, label %"_ZSt10__distanceIN4llvm15mapped_iteratorIN4mlir16ValueUseIteratorINS2_9OpOperandEEEZNS2_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS2_12RewriterBaseERKNS6_13AnalysisStateERKNS6_18BufferizationStateEE3$_0PS4_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_St18input_iterator_tag.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i, !llvm.loop !355

"_ZSt10__distanceIN4llvm15mapped_iteratorIN4mlir16ValueUseIteratorINS2_9OpOperandEEEZNS2_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS2_12RewriterBaseERKNS6_13AnalysisStateERKNS6_18BufferizationStateEE3$_0PS4_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_St18input_iterator_tag.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.ik = icmp samesign ugt i64 %.06.i.i.i.i.i, 5
  br i1 %i.ik, label %bb.at, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i

bb.at:                                            ; preds = %"_ZSt10__distanceIN4llvm15mapped_iteratorIN4mlir16ValueUseIteratorINS2_9OpOperandEEEZNS2_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS2_12RewriterBaseERKNS6_13AnalysisStateERKNS6_18BufferizationStateEE3$_0PS4_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_St18input_iterator_tag.exit.i.i.i.i"
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull %i.gn, i64 noundef %i.ij, i64 noundef 8) #17
  %.pre.i.i.i.i = load i32, ptr %i.go, align 8, !tbaa !76, !alias.scope !369 ; 2 uses
  %.pre19.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.pre.i.i.i = load ptr, ptr %15, align 8, !tbaa !75, !alias.scope !369
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i:         ; preds = %bb.at, %"_ZSt10__distanceIN4llvm15mapped_iteratorIN4mlir16ValueUseIteratorINS2_9OpOperandEEEZNS2_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS2_12RewriterBaseERKNS6_13AnalysisStateERKNS6_18BufferizationStateEE3$_0PS4_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_St18input_iterator_tag.exit.i.i.i.i"
  %i.il = phi ptr [ %.pre.i.i.i, %bb.at ], [ %i.gn, %"_ZSt10__distanceIN4llvm15mapped_iteratorIN4mlir16ValueUseIteratorINS2_9OpOperandEEEZNS2_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS2_12RewriterBaseERKNS6_13AnalysisStateERKNS6_18BufferizationStateEE3$_0PS4_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_St18input_iterator_tag.exit.i.i.i.i" ] ; 4 uses
  %.pre-phi.i.ph.i.i.i = phi i64 [ %.pre19.i.i.i.i, %bb.at ], [ 0, %"_ZSt10__distanceIN4llvm15mapped_iteratorIN4mlir16ValueUseIteratorINS2_9OpOperandEEEZNS2_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS2_12RewriterBaseERKNS6_13AnalysisStateERKNS6_18BufferizationStateEE3$_0PS4_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_St18input_iterator_tag.exit.i.i.i.i" ]
  %.ph.i.i.i = phi i32 [ %.pre.i.i.i.i, %bb.at ], [ 0, %"_ZSt10__distanceIN4llvm15mapped_iteratorIN4mlir16ValueUseIteratorINS2_9OpOperandEEEZNS2_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS2_12RewriterBaseERKNS6_13AnalysisStateERKNS6_18BufferizationStateEE3$_0PS4_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_St18input_iterator_tag.exit.i.i.i.i" ]
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.pre-phi.i.ph.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.in, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.im, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ih, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  store ptr %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !208
  %i.in = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.io = load ptr, ptr %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !366 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm13map_to_vectorINS_14iterator_rangeIN4mlir16ValueUseIteratorINS2_9OpOperandEEEEEZNS2_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS2_12RewriterBaseERKNS7_13AnalysisStateERKNS7_18BufferizationStateEE3$_0EEDaOT_OT0_.exit", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !356

"_ZN4llvm13map_to_vectorINS_14iterator_rangeIN4mlir16ValueUseIteratorINS2_9OpOperandEEEEEZNS2_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS2_12RewriterBaseERKNS7_13AnalysisStateERKNS7_18BufferizationStateEE3$_0EEDaOT_OT0_.exit": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ip = trunc i64 %i.ij to i32
  %i.iq = add i32 %.ph.i.i.i, %i.ip               ; 3 uses
  store i32 %i.iq, ptr %i.go, align 8, !tbaa !76, !alias.scope !369
  %i.ir = zext i32 %i.iq to i64
  %.idx212 = shl nuw nsw i64 %i.ir, 3
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 %.idx212
  %.not92204 = icmp eq i32 %i.iq, 0
  br i1 %.not92204, label %._crit_edge207, label %.lr.ph206

._crit_edge207.loopexit:                          ; preds = %bb.ba
  %.pre = load ptr, ptr %15, align 8, !tbaa !75
  br label %._crit_edge207

._crit_edge207:                                   ; preds = %._crit_edge207.loopexit, %"_ZN4llvm13map_to_vectorINS_14iterator_rangeIN4mlir16ValueUseIteratorINS2_9OpOperandEEEEEZNS2_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS2_12RewriterBaseERKNS7_13AnalysisStateERKNS7_18BufferizationStateEE3$_0EEDaOT_OT0_.exit"
  %i.it = phi ptr [ %.pre, %._crit_edge207.loopexit ], [ %i.il, %"_ZN4llvm13map_to_vectorINS_14iterator_rangeIN4mlir16ValueUseIteratorINS2_9OpOperandEEEEEZNS2_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS2_12RewriterBaseERKNS7_13AnalysisStateERKNS7_18BufferizationStateEE3$_0EEDaOT_OT0_.exit" ] ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.gn
  br i1 %i.iu, label %._crit_edge207.thread, label %bb.au

bb.au:                                            ; preds = %._crit_edge207
  call void @free(ptr noundef %i.it) #17
  br label %._crit_edge207.thread

.lr.ph206:                                        ; preds = %"_ZN4llvm13map_to_vectorINS_14iterator_rangeIN4mlir16ValueUseIteratorINS2_9OpOperandEEEEEZNS2_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS2_12RewriterBaseERKNS7_13AnalysisStateERKNS7_18BufferizationStateEE3$_0EEDaOT_OT0_.exit", %bb.ba
  %.0205 = phi ptr [ %i.js, %bb.ba ], [ %i.il, %"_ZN4llvm13map_to_vectorINS_14iterator_rangeIN4mlir16ValueUseIteratorINS2_9OpOperandEEEEEZNS2_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS2_12RewriterBaseERKNS7_13AnalysisStateERKNS7_18BufferizationStateEE3$_0EEDaOT_OT0_.exit" ] ; 2 uses
  %i.iv = load ptr, ptr %.0205, align 8, !tbaa !208 ; 7 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !202
  %i.iy = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #17
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %.lr.ph206
  %i.ja = load ptr, ptr %i.iw, align 8, !tbaa !202 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.jb, align 8, !tbaa !102
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !105
  %i.je = icmp eq ptr %i.jd, @_ZN4mlir6detail14TypeIDResolverINS_6tensor5DimOpEvE2idE
  br i1 %i.je, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jf = load ptr, ptr %1, align 8, !tbaa !194
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.ja) #17, !inline_history !357
  %.val4.val.i132 = load ptr, ptr %14, align 8, !tbaa !89 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !365 ; 3 uses
  %.not.i.i.i.i133 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i133, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i135, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jk = load ptr, ptr %i.iv, align 8, !tbaa !366 ; 3 uses
  store ptr %i.jk, ptr %i.jj, align 8, !tbaa !214
  %.not2.i.i.i.i134 = icmp eq ptr %i.jk, null
  br i1 %.not2.i.i.i.i134, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i135, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store ptr %i.jj, ptr %i.jl, align 8, !tbaa !365
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i135

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i135: ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  store ptr %.val4.val.i132, ptr %i.jm, align 8, !tbaa !89
  store ptr %.val4.val.i132, ptr %i.ji, align 8, !tbaa !365
  %i.jn = load ptr, ptr %.val4.val.i132, align 8, !tbaa !367 ; 3 uses
  store ptr %i.jn, ptr %i.iv, align 8, !tbaa !366
  %.not.i.i.i.i.i136 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i.i.i136, label %"_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERS0_RKNS2_13AnalysisStateERKNS2_18BufferizationStateEE3$_2EEvPNS_9OperationEOT_.exit", label %bb.az

bb.az:                                            ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i135
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store ptr %i.iv, ptr %i.jo, align 8, !tbaa !365
  br label %"_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERS0_RKNS2_13AnalysisStateERKNS2_18BufferizationStateEE3$_2EEvPNS_9OperationEOT_.exit"

"_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERS0_RKNS2_13AnalysisStateERKNS2_18BufferizationStateEE3$_2EEvPNS_9OperationEOT_.exit": ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i135, %bb.az
  store ptr %i.iv, ptr %.val4.val.i132, align 8, !tbaa !367
  %i.jp = load ptr, ptr %1, align 8, !tbaa !194
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.ja) #17, !inline_history !357
  br label %bb.ba

bb.ba:                                            ; preds = %bb.av, %.lr.ph206, %"_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS_13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERS0_RKNS2_13AnalysisStateERKNS2_18BufferizationStateEE3$_2EEvPNS_9OperationEOT_.exit"
  %i.js = getelementptr inbounds nuw i8, ptr %.0205, i64 8 ; 2 uses
  %.not92 = icmp eq ptr %i.js, %i.is
  br i1 %.not92, label %._crit_edge207.loopexit, label %.lr.ph206

._crit_edge207.thread:                            ; preds = %bb.as, %bb.au, %._crit_edge207
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.jt = getelementptr inbounds nuw i8, ptr %.084209, i64 8 ; 2 uses
  %.not91 = icmp eq ptr %i.jt, %i.gh
  br i1 %.not91, label %.thread192, label %bb.ap

.thread192:                                       ; preds = %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit, %._crit_edge207.thread, %.thread187, %.thread190, %bb.ag
  %.sroa.083.9 = phi i8 [ 0, %.thread190 ], [ 1, %._crit_edge207.thread ], [ %i.as, %bb.ag ], [ 1, %.thread187 ], [ 0, %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit ]
  %i.ju = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !220 ; 2 uses
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %.thread192
  %i.jx = load ptr, ptr %8, align 8, !tbaa !218
  %i.jy = zext i32 %i.jv to i64                   ; 2 uses
  %i.jz = shl nuw nsw i64 %i.jy, 3
  %i.ka = add nuw nsw i64 %i.jy, 31
  %i.kb = lshr i64 %i.ka, 3
  %i.kc = and i64 %i.kb, 1073741820
  %i.kd = add nuw nsw i64 %i.kc, %i.jz
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.jx, i64 noundef %i.kd, i64 noundef 8) #17
  br label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %.thread192, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.ke = load ptr, ptr %7, align 8, !tbaa !75    ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.k
  br i1 %i.kf, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit
  call void @free(ptr noundef %i.ke) #17
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.kg = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !213 ; 2 uses
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit
  %i.kj = load ptr, ptr %6, align 8, !tbaa !211
  %i.kk = zext i32 %i.kh to i64                   ; 2 uses
  %i.kl = shl nuw nsw i64 %i.kk, 3
  %i.km = add nuw nsw i64 %i.kk, 31
  %i.kn = lshr i64 %i.km, 3
  %i.ko = and i64 %i.kn, 1073741820
  %i.kp = add nuw nsw i64 %i.ko, %i.kl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.kj, i64 noundef %i.kp, i64 noundef 8) #17
  br label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.kq = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.h
  br i1 %i.kr, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  call void @free(ptr noundef %i.kq) #17
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.not.i.i140 = icmp eq ptr %i.f, null
  br i1 %.not.i.i140, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store <2 x ptr> %i.e, ptr %i.c, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit:      ; preds = %bb.bg, %bb.bh
  ret i8 %.sroa.083.9
}

declare i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4mlir13bufferization13AnalysisState17getAliasingValuesERNS_9OpOperandE(ptr dead_on_unwind noalias writable sret(%"class.mlir::bufferization::AliasList") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197, !nonnull !98, !align !198
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.e = tail call { ptr, ptr } @_ZNK4mlir13bufferization20BufferizationOptions21dynCastBufferizableOpEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(352) %i.b, ptr noundef %i.d) ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28, !noalias !372
  tail call void %i.i(ptr dead_on_unwind writable sret(%"class.mlir::bufferization::AliasList") align 8 %0, ptr noundef %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(72) %1) #17, !inline_history !373
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4mlir13bufferization6detail24unknownGetAliasingValuesERNS_9OpOperandE(ptr dead_on_unwind writable sret(%"class.mlir::bufferization::AliasList") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4mlir13bufferization13AnalysisState23bufferizesToMemoryWriteERNS_9OpOperandE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197, !nonnull !98, !align !198
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.e = tail call { ptr, ptr } @_ZNK4mlir13bufferization20BufferizationOptions21dynCastBufferizableOpEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(352) %i.b, ptr noundef %i.d) ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) %0) #17, !inline_history !374
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.04 = phi i1 [ %i.j, %bb.b ], [ true, %bb.a ]
  ret i1 %.04
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4mlir13bufferization13AnalysisState21getAliasingOpOperandsENS_5ValueE(ptr dead_on_unwind noalias writable sret(%"class.mlir::bufferization::AliasList.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::OpResult", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %.not.i.i.i = icmp eq i64 %i.b, 7
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr null, ptr %2 ; 2 uses
  store ptr %spec.select.i.i.i, ptr %3, align 8
  %.not.i = icmp eq ptr %spec.select.i.i.i, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
end_hunk_0
begin_hunk_1_@_ZNK4mlir13bufferization13AnalysisState29findValueInReverseUseDefChainEPNS_9OpOperandEN4llvm12function_refIFbNS_5ValueEEEENS0_15TraversalConfigEPNS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_vEEEE:bb.a
bb.bi:                                            ; preds = %bb.bg
  %i.ht = zext i32 %i.hr to i64
  %i.hu = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.ht
  store ptr %.sroa.0.0.copyload.i78, ptr %i.hv, align 1
  %i.hw = load i32, ptr %i.h, align 8, !tbaa !76
  %i.hx = add i32 %i.hw, 1
  store i32 %i.hx, ptr %i.h, align 8, !tbaa !76
  br label %_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit80

_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit80: ; preds = %.critedge4, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br i1 %.not, label %_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit64, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit80
  %i.hy = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %15), !noalias !530 ; 0 uses
  br label %_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit64

_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit64: ; preds = %bb.bf, %bb.be, %bb.bc, %bb.ax, %bb.aw, %bb.au, %bb.aq, %bb.ap, %bb.an, %_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit80, %bb.bj, %.critedge109, %bb.at, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.hz = getelementptr inbounds nuw i8, ptr %.0113, i64 16 ; 2 uses
  %.not28 = icmp eq ptr %i.hz, %i.fx
  br i1 %.not28, label %_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit60, label %.lr.ph

_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit60: ; preds = %_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit64, %bb.al, %bb.ak, %bb.ai, %bb.ah
  %i.ia = load ptr, ptr %14, align 8, !tbaa !75   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.aj
  br i1 %i.ib, label %_ZN4mlir13bufferization9AliasListINS0_17AliasingOpOperandEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit60
  call void @free(ptr noundef %i.ia) #17
  br label %_ZN4mlir13bufferization9AliasListINS0_17AliasingOpOperandEED2Ev.exit

_ZN4mlir13bufferization9AliasListINS0_17AliasingOpOperandEED2Ev.exit: ; preds = %_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit60, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit37

_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit37: ; preds = %bb.ac, %bb.ab, %bb.z, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %bb.m, %bb.y, %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE8containsERKS3_.exit, %_ZN4mlir13bufferization9AliasListINS0_17AliasingOpOperandEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.ic = load i32, ptr %i.h, align 8, !tbaa !76  ; 2 uses
  %.not.i.i32 = icmp eq i32 %i.ic, 0
  br i1 %.not.i.i32, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit37, %bb.f
  %i.id = load ptr, ptr %i.f, align 8, !tbaa !75  ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.g
  br i1 %i.ie, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj0EED2Ev.exit.i, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.id) #17
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj0EED2Ev.exit.i: ; preds = %bb.bl, %._crit_edge
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !220 ; 2 uses
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj0EED2Ev.exit.i
  %i.ii = load ptr, ptr %11, align 8, !tbaa !218
  %i.ij = zext i32 %i.ig to i64                   ; 2 uses
  %i.ik = shl nuw nsw i64 %i.ij, 3
  %i.il = add nuw nsw i64 %i.ij, 31
  %i.im = lshr i64 %i.il, 3
  %i.in = and i64 %i.im, 1073741820
  %i.io = add nuw nsw i64 %i.in, %i.ik
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ii, i64 noundef %i.io, i64 noundef 8) #17
  br label %_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit

_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj0EED2Ev.exit.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.ip = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !220 ; 2 uses
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit
  %i.is = load ptr, ptr %10, align 8, !tbaa !218
  %i.it = zext i32 %i.iq to i64                   ; 2 uses
  %i.iu = shl nuw nsw i64 %i.it, 3
  %i.iv = add nuw nsw i64 %i.it, 31
  %i.iw = lshr i64 %i.iv, 3
  %i.ix = and i64 %i.iw, 1073741820
  %i.iy = add nuw nsw i64 %i.ix, %i.iu
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.is, i64 noundef %i.iy, i64 noundef 8) #17
  br label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %_ZN4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4mlir13bufferization13AnalysisState15findDefinitionsEPNS_9OpOperandE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SetVector") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon.266, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %1, ptr %3, align 8, !tbaa !247
  %i.a = ptrtoint ptr %3 to i64
  call void @_ZNK4mlir13bufferization13AnalysisState29findValueInReverseUseDefChainEPNS_9OpOperandEN4llvm12function_refIFbNS_5ValueEEEENS0_15TraversalConfigEPNS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_vEEEE(ptr dead_on_unwind writable sret(%"class.llvm::SetVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, ptr nonnull @"_ZN4llvm12function_refIFbN4mlir5ValueEEE11callback_fnIZNKS1_13bufferization13AnalysisState15findDefinitionsEPNS1_9OpOperandEE3$_0EEblS2_", i64 %i.a, i48 0, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13bufferization13AnalysisStateC2ERKNS0_20BufferizationOptionsE(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 72)) %0, ptr noundef nonnull align 8 dereferenceable(352) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4mlir13bufferization13AnalysisStateE, i64 16), ptr %0, align 8, !tbaa !194
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !248
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_13bufferization13AnalysisStateEvE2idE, ptr %i.b, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.g = load i32, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx.i = shl nuw nsw i64 %i.h, 5
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %.not10.i = icmp eq i32 %i.g, 0
  br i1 %.not10.i, label %_ZN4mlir13bufferization13AnalysisStateC2ERKNS0_20BufferizationOptionsENS_6TypeIDE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNKSt8functionIFvRN4mlir13bufferization13AnalysisStateEEEclES3_.exit.i
  %.011.i = phi ptr [ %i.n, %_ZNKSt8functionIFvRN4mlir13bufferization13AnalysisStateEEEclES3_.exit.i ], [ %i.e, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNKSt8functionIFvRN4mlir13bufferization13AnalysisStateEEEclES3_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZSt25__throw_bad_function_callv() #18
  unreachable

_ZNKSt8functionIFvRN4mlir13bufferization13AnalysisStateEEEclES3_.exit.i: ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !250
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %.011.i, ptr noundef nonnull align 8 dereferenceable(72) %0) #17, !inline_history !531
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %i.i
  br i1 %.not.i, label %_ZN4mlir13bufferization13AnalysisStateC2ERKNS0_20BufferizationOptionsENS_6TypeIDE.exit, label %.lr.ph.i

_ZN4mlir13bufferization13AnalysisStateC2ERKNS0_20BufferizationOptionsENS_6TypeIDE.exit: ; preds = %_ZNKSt8functionIFvRN4mlir13bufferization13AnalysisStateEEEclES3_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13bufferization13AnalysisStateC2ERKNS0_20BufferizationOptionsENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 72)) %0, ptr noundef nonnull align 8 dereferenceable(352) %1, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4mlir13bufferization13AnalysisStateE, i64 16), ptr %0, align 8, !tbaa !194
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !248
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.g = load i32, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx = shl nuw nsw i64 %i.h, 5
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNKSt8functionIFvRN4mlir13bufferization13AnalysisStateEEEclES3_.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNKSt8functionIFvRN4mlir13bufferization13AnalysisStateEEEclES3_.exit
  %.011 = phi ptr [ %i.n, %_ZNKSt8functionIFvRN4mlir13bufferization13AnalysisStateEEEclES3_.exit ], [ %i.e, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRN4mlir13bufferization13AnalysisStateEEEclES3_.exit

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZSt25__throw_bad_function_callv() #18
  unreachable

_ZNKSt8functionIFvRN4mlir13bufferization13AnalysisStateEEEclES3_.exit: ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.011, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !250
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %.011, ptr noundef nonnull align 8 dereferenceable(72) %0) #17, !inline_history !532
  %i.n = getelementptr inbounds nuw i8, ptr %.011, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4mlir13bufferization13AnalysisState9isInPlaceERNS_9OpOperandE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization10ToBufferOpEvE2idE
  br i1 %i.f, label %_ZNK4mlir13bufferization13AnalysisState23bufferizesToMemoryWriteERNS_9OpOperandE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !197, !nonnull !98, !align !198
  %i.i = tail call { ptr, ptr } @_ZNK4mlir13bufferization20BufferizationOptions21dynCastBufferizableOpEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(352) %i.h, ptr noundef nonnull %i.b) ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNK4mlir13bufferization13AnalysisState23bufferizesToMemoryWriteERNS_9OpOperandE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef %i.k, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) %0) #17, !inline_history !204
  %i.o = xor i1 %i.n, true
  br label %_ZNK4mlir13bufferization13AnalysisState23bufferizesToMemoryWriteERNS_9OpOperandE.exit

_ZNK4mlir13bufferization13AnalysisState23bufferizesToMemoryWriteERNS_9OpOperandE.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %i.o, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4mlir13bufferization13AnalysisState29areEquivalentBufferizedValuesENS_5ValueES2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #3 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4mlir13bufferization13AnalysisState27areAliasingBufferizedValuesENS_5ValueES2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #3 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4mlir13bufferization13AnalysisState20hasUndefinedContentsEPNS_9OpOperandE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZN4mlir13bufferization9getBufferERNS_12RewriterBaseENS_5ValueERKNS0_20BufferizationOptionsERKNS0_18BufferizationStateE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.33", align 8 ; 8 uses
  %5 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %6 = alloca %"class.mlir::Value", align 8       ; 6 uses
  %7 = alloca %"class.llvm::FailureOr", align 8   ; 5 uses
  store ptr %1, ptr %6, align 8
  %i.a = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization10ToTensorOpEvE2idE
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !191
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !89
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load <2 x ptr>, ptr %i.j, align 8
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !187
  %.sroa.06.0.copyload = load ptr, ptr %6, align 8, !tbaa !89 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.06.0.copyload, ptr %5, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.p = icmp ne i64 %i.o, 7
  %.not3.i = icmp eq ptr %.sroa.06.0.copyload, null
  %.not.i = or i1 %.not3.i, %i.p
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !156  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  br label %_ZL22setInsertionPointAfterRN4mlir9OpBuilderENS_5ValueE.exit

bb.f:                                             ; preds = %bb.d
  %i.t = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !51
  %i.w = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.t) #17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.05.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !89
  br label %_ZL22setInsertionPointAfterRN4mlir9OpBuilderENS_5ValueE.exit

_ZL22setInsertionPointAfterRN4mlir9OpBuilderENS_5ValueE.exit: ; preds = %bb.e, %bb.f
  %.sroa.05.0.copyload = phi ptr [ %.sroa.05.0.copyload.pre, %bb.f ], [ %.sroa.06.0.copyload, %bb.e ]
  %.sink4.i = phi ptr [ %i.v, %bb.f ], [ %i.r, %bb.e ]
  %.sink.in.i = phi ptr [ %i.x, %bb.f ], [ %i.s, %bb.e ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !215
  store ptr %.sink4.i, ptr %i.j, align 8, !tbaa !187
  store ptr %.sink.i, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !535
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !75, !noalias !535
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.z, align 8, !tbaa !76, !noalias !535
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 6, ptr %i.aa, align 4, !tbaa !77, !noalias !535
  call void @_ZN4mlir13bufferization13getBufferTypeENS_5ValueERKNS0_20BufferizationOptionsERKNS0_18BufferizationStateERN4llvm11SmallVectorIS1_Lj6EEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr") align 8 %7, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(64) %4)
  %i.ab = load ptr, ptr %4, align 8, !tbaa !75, !noalias !535 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.y
  br i1 %i.ac, label %_ZN4mlir13bufferization13getBufferTypeENS_5ValueERKNS0_20BufferizationOptionsERKNS0_18BufferizationStateE.exit, label %bb.g

bb.g:                                             ; preds = %_ZL22setInsertionPointAfterRN4mlir9OpBuilderENS_5ValueE.exit
  call void @free(ptr noundef %i.ab) #17
  br label %_ZN4mlir13bufferization13getBufferTypeENS_5ValueERKNS0_20BufferizationOptionsERKNS0_18BufferizationStateE.exit

_ZN4mlir13bufferization13getBufferTypeENS_5ValueERKNS0_20BufferizationOptionsERKNS0_18BufferizationStateE.exit: ; preds = %_ZL22setInsertionPointAfterRN4mlir9OpBuilderENS_5ValueE.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !535
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !179, !range !97, !noundef !98
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4mlir13bufferization13getBufferTypeENS_5ValueERKNS0_20BufferizationOptionsERKNS0_18BufferizationStateE.exit
  %i.ag = call ptr @_ZNK4mlir5Value6getLocEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  %.sroa.01.0.copyload = load ptr, ptr %7, align 8, !tbaa !231
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !89
  %i.ah = call ptr @_ZN4mlir13bufferization10ToBufferOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr %i.ag, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, i1 noundef zeroext false) #17
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4mlir13bufferization13getBufferTypeENS_5ValueERKNS0_20BufferizationOptionsERKNS0_18BufferizationStateE.exit
  %.sroa.017.1 = phi ptr [ %i.ai, %bb.h ], [ undef, %_ZN4mlir13bufferization13getBufferTypeENS_5ValueERKNS0_20BufferizationOptionsERKNS0_18BufferizationStateE.exit ] ; 2 uses
  %.sroa.3.1 = phi i8 [ 1, %bb.h ], [ 0, %_ZN4mlir13bufferization13getBufferTypeENS_5ValueERKNS0_20BufferizationOptionsERKNS0_18BufferizationStateE.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store <2 x ptr> %i.l, ptr %i.j, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit:      ; preds = %bb.k, %bb.j, %bb.c
  %.sroa.017.2 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ], [ %.sroa.017.1, %bb.j ], [ %.sroa.017.1, %bb.k ]
  %.sroa.3.2 = phi i8 [ 1, %bb.c ], [ %.sroa.3.1, %bb.j ], [ %.sroa.3.1, %bb.k ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.017.2, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.2, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare ptr @_ZN4mlir13bufferization10ToBufferOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZNK4mlir5Value6getLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13bufferization13getBufferTypeENS_5ValueERKNS0_20BufferizationOptionsERKNS0_18BufferizationStateERN4llvm11SmallVectorIS1_Lj6EEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::FailureOr") align 8 %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::bufferization::TensorLikeType", align 8 ; 5 uses
  %6 = alloca %"class.mlir::Attribute", align 8   ; 4 uses
  %7 = alloca %"class.mlir::bufferization::TensorLikeType", align 8 ; 5 uses
  %8 = alloca %"class.mlir::OpResult", align 8    ; 5 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !77
  %.not.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %1)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %4, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  store ptr %1, ptr %i.g, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !76
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %.not.i.i.i = icmp eq i64 %i.k, 7
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr null, ptr %1 ; 2 uses
  store ptr %spec.select.i.i.i, ptr %8, align 8
  %.not.i19 = icmp eq ptr %spec.select.i.i.i, null
  br i1 %.not.i19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  %i.l = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %_ZN4mlir13bufferization15getOwnerOfValueENS_5ValueE.exit

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !156
  %i.o = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.n) #17
  br label %_ZN4mlir13bufferization15getOwnerOfValueENS_5ValueE.exit

_ZN4mlir13bufferization15getOwnerOfValueENS_5ValueE.exit: ; preds = %bb.d, %bb.e
  %.1.i = phi ptr [ %i.o, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.p = call { ptr, ptr } @_ZNK4mlir13bufferization20BufferizationOptions21dynCastBufferizableOpEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef %.1.i) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir13bufferization15getOwnerOfValueENS_5ValueE.exit
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30, !noalias !540
  call void %i.t(ptr dead_on_unwind writable sret(%"class.llvm::FailureOr") align 8 %0, ptr noundef %i.r, ptr noundef nonnull %i.q, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) #17, !inline_history !541
  br label %"_ZN4llvm10scope_exitIZN4mlir13bufferization13getBufferTypeENS1_5ValueERKNS2_20BufferizationOptionsERKNS2_18BufferizationStateERNS_11SmallVectorIS3_Lj6EEEE3$_0ED2Ev.exit"

bb.g:                                             ; preds = %_ZN4mlir13bufferization15getOwnerOfValueENS_5ValueE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 232
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.j, align 8
  %i.v = and i64 %.0.copyload.i.i.i.i.i, -8       ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm4castIN4mlir13bufferization14TensorLikeTypeENS1_4TypeEEEDcRKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !159  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization14TensorLikeTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.i, label %_ZN4mlir6detail9InterfaceINS_13bufferization14TensorLikeTypeENS_4TypeENS2_6detail29TensorLikeTypeInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !227

bb.i:                                             ; preds = %bb.h
  %i.ab = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization14TensorLikeTypeEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_13bufferization14TensorLikeTypeENS_4TypeENS2_6detail29TensorLikeTypeInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.5, i64 49), i64 35) #17
  store ptr %i.ac, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13bufferization14TensorLikeTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization14TensorLikeTypeEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_13bufferization14TensorLikeTypeENS_4TypeENS2_6detail29TensorLikeTypeInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

end_hunk_1
