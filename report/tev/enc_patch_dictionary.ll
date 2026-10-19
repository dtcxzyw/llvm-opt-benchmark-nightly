Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_patch_dictionary?download=true
inline.NumInlined: 4484
inline.NumDeleted: 2596
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN3jxl23FindBestPatchDictionaryERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEb:bb.a
  br i1 %exitcond694.not, label %.thread442, label %.lr.ph, !llvm.loop !610

.thread442:                                       ; preds = %._crit_edge567.split, %.lr.ph, %._crit_edge
  %.0400485 = phi i64 [ %.0400568, %._crit_edge ], [ %.0400568, %.lr.ph ], [ %.sroa.speculated, %._crit_edge567.split ] ; 2 uses
  %.2159 = phi i1 [ false, %._crit_edge ], [ false, %.lr.ph ], [ %.not552, %._crit_edge567.split ]
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.azq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %.pr445 = load i32, ptr %i.azl, align 8, !tbaa !192
  %i.bdh = icmp eq i32 %.pr445, 0
  br i1 %i.bdh, label %bb.ey, label %_ZN3jxl8StatusOrINS_5PlaneIhEEED2Ev.exit

bb.ey:                                            ; preds = %.thread442
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.azm) #23
  br label %_ZN3jxl8StatusOrINS_5PlaneIhEEED2Ev.exit

_ZN3jxl8StatusOrINS_5PlaneIhEEED2Ev.exit:         ; preds = %.thread442, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br i1 %.2159, label %bb.ez, label %bb.en

bb.ez:                                            ; preds = %_ZN3jxl8StatusOrINS_5PlaneIhEEED2Ev.exit
  %.not166 = icmp ugt i64 %.0400485, %i.bag
  br i1 %.not166, label %bb.gq, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  call void @_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.210") align 8 %38, ptr noundef %i.ayn, i64 noundef %i.bad, i64 noundef %.0400485) #24
  %i.bdi = getelementptr inbounds nuw i8, ptr %38, i64 168 ; 2 uses
  %i.bdj = load i32, ptr %i.bdi, align 8, !tbaa !207 ; 2 uses
  %i.bdk = icmp eq i32 %i.bdj, 0
  br i1 %i.bdk, label %bb.fb, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.bdl = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bdl, i8 0, i64 144, i1 false), !alias.scope !709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %39, ptr noundef nonnull align 8 dereferenceable(172) %38, i64 24, i1 false)
  %i.bdm = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 2 uses
  %i.bdn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bdl, ptr noundef nonnull align 8 dereferenceable(24) %i.bdm) #23 ; 0 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.bdp = load i64, ptr %i.bdo, align 8, !tbaa !193, !noalias !709
  %i.bdq = getelementptr inbounds nuw i8, ptr %39, i64 48
  store i64 %i.bdp, ptr %i.bdq, align 8, !tbaa !193, !alias.scope !709
  %i.bdr = getelementptr inbounds nuw i8, ptr %38, i64 56
  %i.bds = getelementptr inbounds nuw i8, ptr %39, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bds, ptr noundef nonnull align 8 dereferenceable(56) %i.bdr, i64 24, i1 false)
  %i.bdt = getelementptr inbounds nuw i8, ptr %39, i64 80 ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %38, i64 80 ; 2 uses
  %i.bdv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bdt, ptr noundef nonnull align 8 dereferenceable(24) %i.bdu) #23 ; 0 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %38, i64 104
  %i.bdx = load i64, ptr %i.bdw, align 8, !tbaa !193, !noalias !709
  %i.bdy = getelementptr inbounds nuw i8, ptr %39, i64 104
  store i64 %i.bdx, ptr %i.bdy, align 8, !tbaa !193, !alias.scope !709
  %i.bdz = getelementptr inbounds nuw i8, ptr %38, i64 112
  %i.bea = getelementptr inbounds nuw i8, ptr %39, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bea, ptr noundef nonnull align 8 dereferenceable(56) %i.bdz, i64 24, i1 false)
  %i.beb = getelementptr inbounds nuw i8, ptr %39, i64 136 ; 2 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %38, i64 136 ; 2 uses
  %i.bed = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.beb, ptr noundef nonnull align 8 dereferenceable(24) %i.bec) #23 ; 0 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %38, i64 160
  %i.bef = load i64, ptr %i.bee, align 8, !tbaa !193, !noalias !709
  %i.beg = getelementptr inbounds nuw i8, ptr %39, i64 160
  store i64 %i.bef, ptr %i.beg, align 8, !tbaa !193, !alias.scope !709
  %i.beh = getelementptr inbounds nuw i8, ptr %39, i64 4 ; 4 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.bej = load i32, ptr %i.beh, align 4, !tbaa !100 ; 2 uses
  %.not13.i = icmp eq i32 %i.bej, 0
  br i1 %.not13.i, label %.lr.ph585, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %bb.fb
  %i.bek = getelementptr inbounds nuw i8, ptr %39, i64 40
  %i.bel = load i32, ptr %39, align 8, !tbaa !194 ; 3 uses
  %i.bem = icmp eq i32 %i.bel, 0
  br i1 %i.bem, label %.lr.ph585, label %.lr.ph.split.i

._crit_edge.i193:                                 ; preds = %bb.fh
  %.not13.1.i = icmp eq i32 %i.bfz, 0
  br i1 %.not13.1.i, label %.lr.ph585, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i193
  %i.ben = getelementptr inbounds nuw i8, ptr %39, i64 96
  %i.beo = icmp eq i32 %.pr.i194, 0
  br i1 %i.beo, label %.lr.ph585, label %.lr.ph.split.1.i

.lr.ph.split.1.i:                                 ; preds = %.lr.ph.1.i, %bb.fd
  %.pr41.i725 = phi i32 [ %.pr41.i, %bb.fd ], [ %.pr.i194, %.lr.ph.1.i ]
  %i.bep = phi i32 [ %i.bex, %bb.fd ], [ %i.bfz, %.lr.ph.1.i ]
  %i.beq = phi i32 [ %i.bey, %bb.fd ], [ %.pr.i194, %.lr.ph.1.i ] ; 2 uses
  %.011.1.i = phi i64 [ %i.bez, %bb.fd ], [ 0, %.lr.ph.1.i ] ; 2 uses
  %.not.1.i = icmp eq i32 %i.beq, 0
  br i1 %.not.1.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph.split.1.i
  %i.ber = zext i32 %i.beq to i64
  %i.bes = load ptr, ptr %i.ben, align 8, !tbaa !102 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bes, i64 64) ]
  %i.bet = load i64, ptr %i.bei, align 8, !tbaa !101
  %i.beu = mul i64 %i.bet, %.011.1.i
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bes, i64 %i.beu ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bev, i64 64) ]
  %i.bew = shl nuw nsw i64 %i.ber, 2
  call void @llvm.memset.p0.i64(ptr align 64 %i.bev, i8 0, i64 %i.bew, i1 false)
  %.pre17.i = load i32, ptr %39, align 8, !tbaa !194 ; 2 uses
  %.pre19.i = load i32, ptr %i.beh, align 4, !tbaa !100
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.lr.ph.split.1.i
  %.pr41.i = phi i32 [ %.pre17.i, %bb.fc ], [ %.pr41.i725, %.lr.ph.split.1.i ] ; 3 uses
  %i.bex = phi i32 [ %.pre19.i, %bb.fc ], [ %i.bep, %.lr.ph.split.1.i ] ; 4 uses
  %i.bey = phi i32 [ %.pre17.i, %bb.fc ], [ 0, %.lr.ph.split.1.i ]
  %i.bez = add nuw nsw i64 %.011.1.i, 1           ; 2 uses
  %i.bfa = zext i32 %i.bex to i64
  %i.bfb = icmp samesign ult i64 %i.bez, %i.bfa
  br i1 %i.bfb, label %.lr.ph.split.1.i, label %._crit_edge.1.i, !llvm.loop !576

._crit_edge.1.i:                                  ; preds = %bb.fd
  %.not13.2.i = icmp eq i32 %i.bex, 0
  br i1 %.not13.2.i, label %.lr.ph585, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i
  %i.bfc = getelementptr inbounds nuw i8, ptr %39, i64 152
  %i.bfd = icmp eq i32 %.pr41.i, 0
  br i1 %i.bfd, label %.lr.ph585, label %.lr.ph.split.2.i

.lr.ph.split.2.i:                                 ; preds = %.lr.ph.2.i, %bb.ff
  %i.bfe = phi i32 [ %i.bfm, %bb.ff ], [ %i.bex, %.lr.ph.2.i ]
  %i.bff = phi i32 [ %i.bfn, %bb.ff ], [ %.pr41.i, %.lr.ph.2.i ] ; 2 uses
  %.011.2.i = phi i64 [ %i.bfo, %bb.ff ], [ 0, %.lr.ph.2.i ] ; 2 uses
  %.not.2.i = icmp eq i32 %i.bff, 0
  br i1 %.not.2.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph.split.2.i
  %i.bfg = zext i32 %i.bff to i64
  %i.bfh = load ptr, ptr %i.bfc, align 8, !tbaa !102 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bfh, i64 64) ]
  %i.bfi = load i64, ptr %i.bei, align 8, !tbaa !101
  %i.bfj = mul i64 %i.bfi, %.011.2.i
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfh, i64 %i.bfj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bfk, i64 64) ]
  %i.bfl = shl nuw nsw i64 %i.bfg, 2
  call void @llvm.memset.p0.i64(ptr align 64 %i.bfk, i8 0, i64 %i.bfl, i1 false)
  %.pre20.i = load i32, ptr %39, align 8, !tbaa !194
  %.pre22.i = load i32, ptr %i.beh, align 4, !tbaa !100
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.lr.ph.split.2.i
  %i.bfm = phi i32 [ %.pre22.i, %bb.fe ], [ %i.bfe, %.lr.ph.split.2.i ] ; 2 uses
  %i.bfn = phi i32 [ %.pre20.i, %bb.fe ], [ 0, %.lr.ph.split.2.i ]
  %i.bfo = add nuw nsw i64 %.011.2.i, 1           ; 2 uses
  %i.bfp = zext i32 %i.bfm to i64
  %i.bfq = icmp samesign ult i64 %i.bfo, %i.bfp
  br i1 %i.bfq, label %.lr.ph.split.2.i, label %.lr.ph585, !llvm.loop !576

.lr.ph.split.i:                                   ; preds = %.lr.ph.i190, %bb.fh
  %.pr.i194723 = phi i32 [ %.pr.i194, %bb.fh ], [ %i.bel, %.lr.ph.i190 ]
  %i.bfr = phi i32 [ %i.bfz, %bb.fh ], [ %i.bej, %.lr.ph.i190 ]
  %i.bfs = phi i32 [ %i.bga, %bb.fh ], [ %i.bel, %.lr.ph.i190 ] ; 2 uses
  %.011.i = phi i64 [ %i.bgb, %bb.fh ], [ 0, %.lr.ph.i190 ] ; 2 uses
  %.not.i191 = icmp eq i32 %i.bfs, 0
  br i1 %.not.i191, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %.lr.ph.split.i
  %i.bft = zext i32 %i.bfs to i64
  %i.bfu = load ptr, ptr %i.bek, align 8, !tbaa !102 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bfu, i64 64) ]
  %i.bfv = load i64, ptr %i.bei, align 8, !tbaa !101
  %i.bfw = mul i64 %i.bfv, %.011.i
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %i.bfw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bfx, i64 64) ]
  %i.bfy = shl nuw nsw i64 %i.bft, 2
  call void @llvm.memset.p0.i64(ptr align 64 %i.bfx, i8 0, i64 %i.bfy, i1 false)
  %.pre.i192 = load i32, ptr %39, align 8, !tbaa !194 ; 2 uses
  %.pre16.i = load i32, ptr %i.beh, align 4, !tbaa !100
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.lr.ph.split.i
  %.pr.i194 = phi i32 [ %.pre.i192, %bb.fg ], [ %.pr.i194723, %.lr.ph.split.i ] ; 4 uses
  %i.bfz = phi i32 [ %.pre16.i, %bb.fg ], [ %i.bfr, %.lr.ph.split.i ] ; 4 uses
  %i.bga = phi i32 [ %.pre.i192, %bb.fg ], [ 0, %.lr.ph.split.i ]
  %i.bgb = add nuw nsw i64 %.011.i, 1             ; 2 uses
  %i.bgc = zext i32 %i.bfz to i64
  %i.bgd = icmp samesign ult i64 %i.bgb, %i.bgc
  br i1 %i.bgd, label %.lr.ph.split.i, label %._crit_edge.i193, !llvm.loop !576

.lr.ph585:                                        ; preds = %bb.ff, %.lr.ph.2.i, %._crit_edge.1.i, %.lr.ph.1.i, %._crit_edge.i193, %.lr.ph.i190, %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %i.bge = getelementptr inbounds nuw i8, ptr %39, i64 40
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !102 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bgf, i64 64) ]
  %i.bgg = getelementptr inbounds nuw i8, ptr %39, i64 96
  %i.bgh = load ptr, ptr %i.bgg, align 8, !tbaa !102 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bgh, i64 64) ]
  %i.bgi = getelementptr inbounds nuw i8, ptr %39, i64 152
  %i.bgj = load ptr, ptr %i.bgi, align 8, !tbaa !102 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bgj, i64 64) ]
  %i.bgk = load i64, ptr %i.bei, align 8, !tbaa !101 ; 3 uses
  %i.bgl = lshr i64 %i.bgk, 2                     ; 2 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bgn = load ptr, ptr %i.bgm, align 8, !tbaa !236
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgn, i64 320
  %i.bgp = load i32, ptr %i.bgo, align 8, !tbaa !719 ; 2 uses
  %i.bgq = zext i32 %i.bgp to i64                 ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.bgu = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 7 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 6 uses
  %.not587 = icmp eq i32 %i.bgp, 0
  %i.bgw = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 3 uses
  %.pre727 = load ptr, ptr %35, align 8, !tbaa !233
  %i.bgx = and i64 %i.bgk, -4
  %stride.check1188 = icmp slt i64 %i.bgk, 0
  %i.bgy = insertelement <8 x i1> poison, i1 %stride.check1188, i64 7
  br label %bb.fi

._crit_edge586:                                   ; preds = %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  call void @_ZN3jxl14CompressParamsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(648) %43, ptr noundef nonnull align 8 dereferenceable(648) %i.c) #24
  %i.bgz = getelementptr inbounds nuw i8, ptr %43, i64 87
  store i8 0, ptr %i.bgz, align 1, !tbaa !720
  %i.bha = getelementptr inbounds nuw i8, ptr %43, i64 632
  %.val = load ptr, ptr %i.bha, align 8, !tbaa !677
  %.not467 = icmp eq ptr %.val, null
  br i1 %.not467, label %bb.gg, label %bb.gd

bb.fi:                                            ; preds = %.lr.ph585, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit
  %i.bhb = phi ptr [ null, %.lr.ph585 ], [ %i.bmn, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ]
  %i.bhc = phi ptr [ null, %.lr.ph585 ], [ %i.bll, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 2 uses
  %i.bhd = phi ptr [ null, %.lr.ph585 ], [ %i.blm, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 2 uses
  %i.bhe = phi ptr [ null, %.lr.ph585 ], [ %i.bln, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 2 uses
  %i.bhf = phi ptr [ null, %.lr.ph585 ], [ %i.bmo, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 7 uses
  %i.bhg = phi ptr [ null, %.lr.ph585 ], [ %.0.i197, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 11 uses
  %.0143584 = phi i64 [ 0, %.lr.ph585 ], [ %i.bmp, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 3 uses
  %i.bhh = getelementptr inbounds nuw [184 x i8], ptr %.sroa.0347.1, i64 %.0143584 ; 7 uses
  %i.bhi = load i64, ptr %i.bhh, align 8, !tbaa !231 ; 12 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhh, i64 8
  %i.bhk = load i64, ptr %i.bhj, align 8, !tbaa !232 ; 6 uses
  %i.bhl = getelementptr inbounds nuw [16 x i8], ptr %.pre727, i64 %.0143584 ; 2 uses
  %i.bhm = load i64, ptr %i.bhl, align 8, !tbaa !706 ; 6 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhl, i64 8
  %i.bho = load i64, ptr %i.bhn, align 8, !tbaa !707 ; 5 uses
  %.not588 = icmp eq i64 %i.bhk, 0
  %.not589 = icmp eq i64 %i.bhi, 0
  %or.cond1077 = select i1 %.not588, i1 true, i1 %.not589
  br i1 %or.cond1077, label %._crit_edge575.split, label %.preheader469.preheader

.preheader469.preheader:                          ; preds = %bb.fi
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bhh, i64 88
  %.pre728.pre = load ptr, ptr %i.bhp, align 8, !tbaa !225 ; 5 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bhh, i64 112
  %.pre729.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !225 ; 5 uses
  %.phi.trans.insert730.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bhh, i64 136
  %.pre731.pre = load ptr, ptr %.phi.trans.insert730.phi.trans.insert, align 8, !tbaa !225 ; 5 uses
  %invariant.gep1069 = getelementptr [4 x i8], ptr %i.bgf, i64 %i.bhm
  %invariant.gep = getelementptr [4 x i8], ptr %i.bgh, i64 %i.bhm
  %invariant.gep1072 = getelementptr [4 x i8], ptr %i.bgj, i64 %i.bhm
  %i.bhq = mul i64 %i.bgx, %i.bho
  %i.bhr = shl i64 %i.bhm, 2                      ; 2 uses
  %i.bhs = add i64 %i.bhq, %i.bhr                 ; 3 uses
  %scevgep1175 = getelementptr i8, ptr %i.bgf, i64 %i.bhs ; 5 uses
  %i.bht = add i64 %i.bho, %i.bhk
  %i.bhu = shl i64 %i.bht, 2
  %i.bhv = add i64 %i.bhu, -4
  %i.bhw = mul i64 %i.bgl, %i.bhv
  %i.bhx = shl i64 %i.bhi, 2                      ; 2 uses
  %i.bhy = add i64 %i.bhw, %i.bhx
  %i.bhz = add i64 %i.bhy, %i.bhr                 ; 3 uses
  %scevgep1176 = getelementptr i8, ptr %i.bgf, i64 %i.bhz ; 5 uses
  %scevgep1177 = getelementptr i8, ptr %i.bgh, i64 %i.bhs ; 2 uses
  %scevgep1178 = getelementptr i8, ptr %i.bgh, i64 %i.bhz ; 2 uses
  %scevgep1179 = getelementptr i8, ptr %i.bgj, i64 %i.bhs ; 3 uses
  %scevgep1180 = getelementptr i8, ptr %i.bgj, i64 %i.bhz ; 4 uses
  %i.bia = shl i64 %i.bhi, 2
  %i.bib = mul i64 %i.bia, %i.bhk                 ; 3 uses
  %scevgep1181 = getelementptr i8, ptr %.pre728.pre, i64 %i.bib ; 3 uses
  %scevgep1182 = getelementptr i8, ptr %.pre729.pre, i64 %i.bib ; 3 uses
  %scevgep1183 = getelementptr i8, ptr %.pre731.pre, i64 %i.bib ; 3 uses
  %i.bic = insertelement <4 x ptr> poison, ptr %scevgep1177, i64 0
  %i.bid = shufflevector <4 x ptr> %i.bic, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bie = insertelement <4 x ptr> poison, ptr %scevgep1180, i64 0
  %i.bif = insertelement <4 x ptr> %i.bie, ptr %scevgep1181, i64 1
  %i.big = insertelement <4 x ptr> %i.bif, ptr %scevgep1182, i64 2
  %i.bih = insertelement <4 x ptr> %i.big, ptr %scevgep1183, i64 3
  %i.bii = insertelement <2 x ptr> poison, ptr %scevgep1181, i64 0
  %i.bij = insertelement <2 x ptr> %i.bii, ptr %scevgep1182, i64 1
  %i.bik = insertelement <4 x ptr> poison, ptr %scevgep1179, i64 0 ; 2 uses
  %i.bil = insertelement <4 x ptr> %i.bik, ptr %.pre728.pre, i64 1
  %i.bim = insertelement <4 x ptr> %i.bil, ptr %.pre729.pre, i64 2
  %i.bin = insertelement <4 x ptr> %i.bim, ptr %.pre731.pre, i64 3
  %i.bio = insertelement <4 x ptr> poison, ptr %scevgep1178, i64 0
  %i.bip = shufflevector <4 x ptr> %i.bio, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.biq = shufflevector <4 x ptr> %i.bik, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.bir = insertelement <2 x ptr> poison, ptr %.pre728.pre, i64 0
  %i.bis = insertelement <2 x ptr> %i.bir, ptr %.pre729.pre, i64 1
  %i.bit = insertelement <2 x ptr> poison, ptr %scevgep1180, i64 0
  %i.biu = shufflevector <2 x ptr> %i.bit, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check1251 = icmp ult i64 %i.bhi, 32
  %bound0 = icmp ult ptr %scevgep1175, %scevgep1178
  %bound1 = icmp ult ptr %scevgep1177, %scevgep1176
  %found.conflict = and i1 %bound0, %bound1
  %bound01185 = icmp ult ptr %scevgep1175, %scevgep1180
  %bound11186 = icmp ult ptr %scevgep1179, %scevgep1176
  %found.conflict1187 = and i1 %bound01185, %bound11186
  %bound01190 = icmp ult ptr %scevgep1175, %scevgep1181
  %bound11191 = icmp ult ptr %.pre728.pre, %scevgep1176
  %found.conflict1192 = and i1 %bound01190, %bound11191
  %stride.check1190 = icmp slt i64 %i.bhx, 0
  %bound11197.a = icmp ult ptr %scevgep1175, %scevgep1182
  %bound11193 = icmp ult ptr %.pre729.pre, %scevgep1176
  %found.conflict1194 = and i1 %bound11197.a, %bound11193
  %bound01202 = icmp ult ptr %scevgep1175, %scevgep1183
  %bound11203 = icmp ult ptr %.pre731.pre, %scevgep1176
  %found.conflict1204 = and i1 %bound01202, %bound11203
  %i.biv = icmp ult <4 x ptr> %i.bid, %i.bih
  %i.biw = icmp ult <4 x ptr> %i.bin, %i.bip
  %i.bix = icmp ult <2 x ptr> %i.biq, %i.bij
  %i.biy = icmp ult <2 x ptr> %i.bis, %i.biu
  %bound01244 = icmp ult ptr %scevgep1179, %scevgep1183
  %bound11245 = icmp ult ptr %.pre731.pre, %scevgep1180
  %i.biz = insertelement <8 x i1> %i.bgy, i1 %bound01244, i64 6
  %i.bja = shufflevector <4 x i1> %i.biv, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bjb = shufflevector <8 x i1> %i.bja, <8 x i1> %i.biz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bjc = shufflevector <2 x i1> %i.bix, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bjd = shufflevector <8 x i1> %i.bjb, <8 x i1> %i.bjc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bje = shufflevector <2 x i1> %i.biy, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bjf = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.bje, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.bjg = insertelement <8 x i1> %i.bjf, i1 %bound11245, i64 6
  %i.bjh = shufflevector <4 x i1> %i.biw, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bji = shufflevector <8 x i1> %i.bjh, <8 x i1> %i.bjg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bjj = and <8 x i1> %i.bjd, %i.bji
  %i.bjk = bitcast <8 x i1> %i.bjj to i8
  %i.bjl = icmp ne i8 %i.bjk, 0
  %op.rdx1266 = or i1 %i.bjl, %found.conflict
  %op.rdx1267 = or i1 %found.conflict1187, %found.conflict1192
  %op.rdx1272 = or i1 %found.conflict1194, %found.conflict1204
  %op.rdx1273 = or i1 %op.rdx1266, %op.rdx1267
  %op.rdx1276 = or i1 %op.rdx1272, %stride.check1190
  %op.rdx1278 = or i1 %op.rdx1273, %op.rdx1276
  %n.vec1253 = and i64 %i.bhi, -8                 ; 3 uses
  %cmp.n1264 = icmp eq i64 %i.bhi, %n.vec1253
  %xtraiter1375 = and i64 %i.bhi, 1
  %lcmp.mod1376.not = icmp eq i64 %xtraiter1375, 0
  br label %.preheader469

.preheader469:                                    ; preds = %.preheader469.preheader, %._crit_edge573
  %.0142574 = phi i64 [ %i.blj, %._crit_edge573 ], [ 0, %.preheader469.preheader ] ; 3 uses
  %i.bjm = mul i64 %.0142574, %i.bhi              ; 3 uses
  %i.bjn = add i64 %.0142574, %i.bho
  %i.bjo = mul i64 %i.bjn, %i.bgl                 ; 3 uses
  %i.bjp = getelementptr [4 x i8], ptr %.pre728.pre, i64 %i.bjm ; 4 uses
  %gep1070 = getelementptr [4 x i8], ptr %invariant.gep1069, i64 %i.bjo ; 4 uses
  %i.bjq = getelementptr [4 x i8], ptr %.pre729.pre, i64 %i.bjm ; 4 uses
  %gep1071 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bjo ; 4 uses
  %i.bjr = getelementptr [4 x i8], ptr %.pre731.pre, i64 %i.bjm ; 4 uses
  %gep1073 = getelementptr [4 x i8], ptr %invariant.gep1072, i64 %i.bjo ; 4 uses
  %brmerge = select i1 %min.iters.check1251, i1 true, i1 %op.rdx1278
  br i1 %brmerge, label %.preheader.preheader, label %vector.body1254

vector.body1254:                                  ; preds = %.preheader469, %vector.body1254
  %index1255 = phi i64 [ %index.next1262, %vector.body1254 ], [ 0, %.preheader469 ] ; 7 uses
  %i.bjs = getelementptr [4 x i8], ptr %i.bjp, i64 %index1255 ; 2 uses
  %i.bjt = getelementptr i8, ptr %i.bjs, i64 16
  %wide.load1256 = load <4 x float>, ptr %i.bjs, align 4, !tbaa !107, !alias.scope !721
  %wide.load1257 = load <4 x float>, ptr %i.bjt, align 4, !tbaa !107, !alias.scope !721
  %i.bju = getelementptr [4 x i8], ptr %gep1070, i64 %index1255 ; 2 uses
  %i.bjv = getelementptr i8, ptr %i.bju, i64 16
  store <4 x float> %wide.load1256, ptr %i.bju, align 4, !tbaa !107, !alias.scope !722, !noalias !723
  store <4 x float> %wide.load1257, ptr %i.bjv, align 4, !tbaa !107, !alias.scope !722, !noalias !723
  %i.bjw = getelementptr [4 x i8], ptr %i.bjq, i64 %index1255 ; 2 uses
  %i.bjx = getelementptr i8, ptr %i.bjw, i64 16
  %wide.load1258 = load <4 x float>, ptr %i.bjw, align 4, !tbaa !107, !alias.scope !724
  %wide.load1259 = load <4 x float>, ptr %i.bjx, align 4, !tbaa !107, !alias.scope !724
  %i.bjy = getelementptr [4 x i8], ptr %gep1071, i64 %index1255 ; 2 uses
  %i.bjz = getelementptr i8, ptr %i.bjy, i64 16
  store <4 x float> %wide.load1258, ptr %i.bjy, align 4, !tbaa !107, !alias.scope !725, !noalias !726
  store <4 x float> %wide.load1259, ptr %i.bjz, align 4, !tbaa !107, !alias.scope !725, !noalias !726
  %i.bka = getelementptr [4 x i8], ptr %i.bjr, i64 %index1255 ; 2 uses
  %i.bkb = getelementptr i8, ptr %i.bka, i64 16
  %wide.load1260 = load <4 x float>, ptr %i.bka, align 4, !tbaa !107, !alias.scope !727
  %wide.load1261 = load <4 x float>, ptr %i.bkb, align 4, !tbaa !107, !alias.scope !727
  %i.bkc = getelementptr [4 x i8], ptr %gep1073, i64 %index1255 ; 2 uses
  %i.bkd = getelementptr i8, ptr %i.bkc, i64 16
  store <4 x float> %wide.load1260, ptr %i.bkc, align 4, !tbaa !107, !alias.scope !728, !noalias !729
  store <4 x float> %wide.load1261, ptr %i.bkd, align 4, !tbaa !107, !alias.scope !728, !noalias !729
  %index.next1262 = add nuw i64 %index1255, 8     ; 2 uses
  %i.bke = icmp eq i64 %index.next1262, %n.vec1253
  br i1 %i.bke, label %middle.block1263, label %vector.body1254, !llvm.loop !620

middle.block1263:                                 ; preds = %vector.body1254
  br i1 %cmp.n1264, label %._crit_edge573, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader469, %middle.block1263
  %.0141572.ph = phi i64 [ %n.vec1253, %middle.block1263 ], [ 0, %.preheader469 ] ; 9 uses
  %.neg = or disjoint i64 %.0141572.ph, 1
  br i1 %lcmp.mod1376.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.bkf = getelementptr [4 x i8], ptr %i.bjp, i64 %.0141572.ph
  %i.bkg = load float, ptr %i.bkf, align 4, !tbaa !107
  %gep.prol = getelementptr [4 x i8], ptr %gep1070, i64 %.0141572.ph
  store float %i.bkg, ptr %gep.prol, align 4, !tbaa !107
  %i.bkh = getelementptr [4 x i8], ptr %i.bjq, i64 %.0141572.ph
  %i.bki = load float, ptr %i.bkh, align 4, !tbaa !107
  %gep1066.prol = getelementptr [4 x i8], ptr %gep1071, i64 %.0141572.ph
  store float %i.bki, ptr %gep1066.prol, align 4, !tbaa !107
  %i.bkj = getelementptr [4 x i8], ptr %i.bjr, i64 %.0141572.ph
  %i.bkk = load float, ptr %i.bkj, align 4, !tbaa !107
  %gep1068.prol = getelementptr [4 x i8], ptr %gep1073, i64 %.0141572.ph
  store float %i.bkk, ptr %gep1068.prol, align 4, !tbaa !107
  %i.bkl = or disjoint i64 %.0141572.ph, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.0141572.unr = phi i64 [ %.0141572.ph, %.preheader.preheader ], [ %i.bkl, %.preheader.prol ]
  %i.bkm = icmp eq i64 %i.bhi, %.neg
  br i1 %i.bkm, label %._crit_edge573, label %.preheader

._crit_edge575.split:                             ; preds = %._crit_edge573, %bb.fi
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bhh, i64 160
  %i.bko = load ptr, ptr %i.bkn, align 8, !tbaa !221 ; 2 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bhh, i64 168
  %i.bkq = load ptr, ptr %i.bkp, align 8, !tbaa !216 ; 2 uses
  %.not468579 = icmp eq ptr %i.bko, %i.bkq
  br i1 %.not468579, label %._crit_edge583, label %.lr.ph582.preheader

.lr.ph582.preheader:                              ; preds = %._crit_edge575.split
  %i.bkr = ptrtoint ptr %i.bhg to i64
  %i.bks = ptrtoint ptr %i.bhf to i64
  %i.bkt = sub i64 %i.bkr, %i.bks
  %i.bku = sdiv exact i64 %i.bkt, 40              ; 2 uses
  br label %.lr.ph582

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.0141572 = phi i64 [ %i.bli, %.preheader ], [ %.0141572.unr, %.preheader.prol.loopexit ] ; 8 uses
  %i.bkv = getelementptr [4 x i8], ptr %i.bjp, i64 %.0141572
  %i.bkw = load float, ptr %i.bkv, align 4, !tbaa !107
  %gep = getelementptr [4 x i8], ptr %gep1070, i64 %.0141572
  store float %i.bkw, ptr %gep, align 4, !tbaa !107
  %i.bkx = getelementptr [4 x i8], ptr %i.bjq, i64 %.0141572
  %i.bky = load float, ptr %i.bkx, align 4, !tbaa !107
  %gep1066 = getelementptr [4 x i8], ptr %gep1071, i64 %.0141572
  store float %i.bky, ptr %gep1066, align 4, !tbaa !107
  %i.bkz = getelementptr [4 x i8], ptr %i.bjr, i64 %.0141572
  %i.bla = load float, ptr %i.bkz, align 4, !tbaa !107
  %gep1068 = getelementptr [4 x i8], ptr %gep1073, i64 %.0141572
  store float %i.bla, ptr %gep1068, align 4, !tbaa !107
  %i.blb = add nuw i64 %.0141572, 1               ; 6 uses
  %i.blc = getelementptr [4 x i8], ptr %i.bjp, i64 %i.blb
  %i.bld = load float, ptr %i.blc, align 4, !tbaa !107
  %gep.1 = getelementptr [4 x i8], ptr %gep1070, i64 %i.blb
  store float %i.bld, ptr %gep.1, align 4, !tbaa !107
  %i.ble = getelementptr [4 x i8], ptr %i.bjq, i64 %i.blb
  %i.blf = load float, ptr %i.ble, align 4, !tbaa !107
  %gep1066.1 = getelementptr [4 x i8], ptr %gep1071, i64 %i.blb
  store float %i.blf, ptr %gep1066.1, align 4, !tbaa !107
  %i.blg = getelementptr [4 x i8], ptr %i.bjr, i64 %i.blb
  %i.blh = load float, ptr %i.blg, align 4, !tbaa !107
  %gep1068.1 = getelementptr [4 x i8], ptr %gep1073, i64 %i.blb
  store float %i.blh, ptr %gep1068.1, align 4, !tbaa !107
  %i.bli = add nuw i64 %.0141572, 2               ; 2 uses
  %exitcond696.not.1 = icmp eq i64 %i.bli, %i.bhi
  br i1 %exitcond696.not.1, label %._crit_edge573, label %.preheader, !llvm.loop !621

._crit_edge573:                                   ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block1263
  %i.blj = add nuw i64 %.0142574, 1               ; 2 uses
  %exitcond697.not = icmp eq i64 %i.blj, %i.bhk
  br i1 %exitcond697.not, label %._crit_edge575.split, label %.preheader469, !llvm.loop !622

._crit_edge583.loopexit:                          ; preds = %._crit_edge578
  %.pre732 = load ptr, ptr %i.bgw, align 8, !tbaa !254
  br label %._crit_edge583

._crit_edge583:                                   ; preds = %._crit_edge583.loopexit, %._crit_edge575.split
  %i.blk = phi ptr [ %.pre732, %._crit_edge583.loopexit ], [ %i.bhb, %._crit_edge575.split ] ; 3 uses
  %i.bll = phi ptr [ %i.bnu, %._crit_edge583.loopexit ], [ %i.bhc, %._crit_edge575.split ] ; 5 uses
  %i.blm = phi ptr [ %i.bnv, %._crit_edge583.loopexit ], [ %i.bhd, %._crit_edge575.split ]
  %i.bln = phi ptr [ %.0.i208, %._crit_edge583.loopexit ], [ %i.bhe, %._crit_edge575.split ]
  %i.blo = icmp ult ptr %i.bhg, %i.blk
  br i1 %i.blo, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %._crit_edge583
  store i64 3, ptr %i.bhg, align 8, !tbaa !103
  %.sroa.5301.0..sroa_idx302 = getelementptr inbounds nuw i8, ptr %i.bhg, i64 8
  store i64 %i.bhm, ptr %.sroa.5301.0..sroa_idx302, align 8, !tbaa !103
  %.sroa.7304.0..sroa_idx305 = getelementptr inbounds nuw i8, ptr %i.bhg, i64 16
  store i64 %i.bho, ptr %.sroa.7304.0..sroa_idx305, align 8, !tbaa !103
  %.sroa.9.0..sroa_idx307 = getelementptr inbounds nuw i8, ptr %i.bhg, i64 24
  store i64 %i.bhi, ptr %.sroa.9.0..sroa_idx307, align 8, !tbaa !103
  %.sroa.12.0..sroa_idx310 = getelementptr inbounds nuw i8, ptr %i.bhg, i64 32
  store i64 %i.bhk, ptr %.sroa.12.0..sroa_idx310, align 8, !tbaa !103
  %i.blp = getelementptr i8, ptr %i.bhg, i64 40
  br label %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit

bb.fk:                                            ; preds = %._crit_edge583
  %i.blq = ptrtoint ptr %i.bhg to i64
  %i.blr = ptrtoint ptr %i.bhf to i64             ; 3 uses
  %i.bls = sub i64 %i.blq, %i.blr                 ; 2 uses
  %i.blt = sdiv exact i64 %i.bls, 40
  %i.blu = add nsw i64 %i.blt, 1                  ; 2 uses
  %i.blv = icmp ugt i64 %i.blu, 461168601842738790
  br i1 %i.blv, label %bb.fl, label %_ZNKSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i

bb.fl:                                            ; preds = %bb.fk
  call void @_ZNKSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %41) #22
  unreachable

_ZNKSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i: ; preds = %bb.fk
  %i.blw = ptrtoint ptr %i.blk to i64
  %i.blx = sub i64 %i.blw, %i.blr
  %i.bly = sdiv exact i64 %i.blx, 40              ; 2 uses
  %.not.i.i.i195 = icmp ult i64 %i.bly, 230584300921369395
  %i.blz = shl nuw nsw i64 %i.bly, 1
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.blz, i64 %i.blu)
  %.0.i.i.i = select i1 %.not.i.i.i195, i64 %.sroa.speculated.i.i.i, i64 461168601842738790 ; 4 uses
  %i.bma = icmp ne i64 %.0.i.i.i, 0
  call void @llvm.assume(i1 %i.bma)
  %i.bmb = icmp ugt i64 %.0.i.i.i, 461168601842738790
  br i1 %i.bmb, label %bb.fm, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl22PatchReferencePositionEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i

bb.fm:                                            ; preds = %_ZNKSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #22
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl22PatchReferencePositionEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i
  %i.bmc = mul nuw i64 %.0.i.i.i, 40
  %i.bmd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bmc) #20 ; 2 uses
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bmd, i64 %i.bls ; 8 uses
  %i.bmf = getelementptr inbounds nuw [40 x i8], ptr %i.bmd, i64 %.0.i.i.i ; 3 uses
  store i64 3, ptr %i.bme, align 8, !tbaa !103
  %.sroa.5301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bme, i64 8
  store i64 %i.bhm, ptr %.sroa.5301.0..sroa_idx, align 8, !tbaa !103
  %.sroa.7304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bme, i64 16
  store i64 %i.bho, ptr %.sroa.7304.0..sroa_idx, align 8, !tbaa !103
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bme, i64 24
  store i64 %i.bhi, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !103
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bme, i64 32
  store i64 %i.bhk, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !103
  %i.bmg = getelementptr i8, ptr %i.bme, i64 40   ; 3 uses
end_hunk_0
