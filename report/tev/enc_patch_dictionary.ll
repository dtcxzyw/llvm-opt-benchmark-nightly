Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_patch_dictionary?download=true
inline.NumInlined: 4484
inline.NumDeleted: 2596
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN3jxl23FindBestPatchDictionaryERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEb:bb.a
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1393
  br i1 %epil.iter.cmp.not, label %._crit_edge567.split, label %.preheader472.epil, !llvm.loop !608

._crit_edge567.split:                             ; preds = %._crit_edge567.split.loopexit.unr-lcssa, %.preheader472.epil, %.thread435.thread, %.thread435
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.0400568, i64 %i.bbm) ; 2 uses
  %i.bdg = add nuw i64 %.0156569, 1               ; 2 uses
  %exitcond694.not = icmp eq i64 %i.bdg, %i.ays
  br i1 %exitcond694.not, label %.thread442, label %.lr.ph, !llvm.loop !609

.thread442:                                       ; preds = %._crit_edge567.split, %.lr.ph, %._crit_edge
  %.0400485 = phi i64 [ %.0400568, %._crit_edge ], [ %.0400568, %.lr.ph ], [ %.sroa.speculated, %._crit_edge567.split ] ; 2 uses
  %.2159 = phi i1 [ false, %._crit_edge ], [ false, %.lr.ph ], [ %.not552, %._crit_edge567.split ]
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.azq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %.pr445 = load i32, ptr %i.azl, align 8, !tbaa !191
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
  %i.bdj = load i32, ptr %i.bdi, align 8, !tbaa !206 ; 2 uses
  %i.bdk = icmp eq i32 %i.bdj, 0
  br i1 %i.bdk, label %bb.fb, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.bdl = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bdl, i8 0, i64 144, i1 false), !alias.scope !708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %39, ptr noundef nonnull align 8 dereferenceable(172) %38, i64 24, i1 false)
  %i.bdm = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 2 uses
  %i.bdn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bdl, ptr noundef nonnull align 8 dereferenceable(24) %i.bdm) #23 ; 0 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.bdp = load i64, ptr %i.bdo, align 8, !tbaa !192, !noalias !708
  %i.bdq = getelementptr inbounds nuw i8, ptr %39, i64 48
  store i64 %i.bdp, ptr %i.bdq, align 8, !tbaa !192, !alias.scope !708
  %i.bdr = getelementptr inbounds nuw i8, ptr %38, i64 56
  %i.bds = getelementptr inbounds nuw i8, ptr %39, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bds, ptr noundef nonnull align 8 dereferenceable(56) %i.bdr, i64 24, i1 false)
  %i.bdt = getelementptr inbounds nuw i8, ptr %39, i64 80 ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %38, i64 80 ; 2 uses
  %i.bdv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bdt, ptr noundef nonnull align 8 dereferenceable(24) %i.bdu) #23 ; 0 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %38, i64 104
  %i.bdx = load i64, ptr %i.bdw, align 8, !tbaa !192, !noalias !708
  %i.bdy = getelementptr inbounds nuw i8, ptr %39, i64 104
  store i64 %i.bdx, ptr %i.bdy, align 8, !tbaa !192, !alias.scope !708
  %i.bdz = getelementptr inbounds nuw i8, ptr %38, i64 112
  %i.bea = getelementptr inbounds nuw i8, ptr %39, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bea, ptr noundef nonnull align 8 dereferenceable(56) %i.bdz, i64 24, i1 false)
  %i.beb = getelementptr inbounds nuw i8, ptr %39, i64 136 ; 2 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %38, i64 136 ; 2 uses
  %i.bed = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.beb, ptr noundef nonnull align 8 dereferenceable(24) %i.bec) #23 ; 0 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %38, i64 160
  %i.bef = load i64, ptr %i.bee, align 8, !tbaa !192, !noalias !708
  %i.beg = getelementptr inbounds nuw i8, ptr %39, i64 160
  store i64 %i.bef, ptr %i.beg, align 8, !tbaa !192, !alias.scope !708
  %i.beh = getelementptr inbounds nuw i8, ptr %39, i64 4 ; 4 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.bej = load i32, ptr %i.beh, align 4, !tbaa !99 ; 2 uses
  %.not13.i = icmp eq i32 %i.bej, 0
  br i1 %.not13.i, label %.lr.ph585, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %bb.fb
  %i.bek = getelementptr inbounds nuw i8, ptr %39, i64 40
  %i.bel = load i32, ptr %39, align 8, !tbaa !193 ; 3 uses
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
  %i.bes = load ptr, ptr %i.ben, align 8, !tbaa !101 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bes, i64 64) ]
  %i.bet = load i64, ptr %i.bei, align 8, !tbaa !100
  %i.beu = mul i64 %i.bet, %.011.1.i
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bes, i64 %i.beu ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bev, i64 64) ]
  %i.bew = shl nuw nsw i64 %i.ber, 2
  call void @llvm.memset.p0.i64(ptr align 64 %i.bev, i8 0, i64 %i.bew, i1 false)
  %.pre17.i = load i32, ptr %39, align 8, !tbaa !193 ; 2 uses
  %.pre19.i = load i32, ptr %i.beh, align 4, !tbaa !99
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.lr.ph.split.1.i
  %.pr41.i = phi i32 [ %.pre17.i, %bb.fc ], [ %.pr41.i725, %.lr.ph.split.1.i ] ; 3 uses
  %i.bex = phi i32 [ %.pre19.i, %bb.fc ], [ %i.bep, %.lr.ph.split.1.i ] ; 4 uses
  %i.bey = phi i32 [ %.pre17.i, %bb.fc ], [ 0, %.lr.ph.split.1.i ]
  %i.bez = add nuw nsw i64 %.011.1.i, 1           ; 2 uses
  %i.bfa = zext i32 %i.bex to i64
  %i.bfb = icmp samesign ult i64 %i.bez, %i.bfa
  br i1 %i.bfb, label %.lr.ph.split.1.i, label %._crit_edge.1.i, !llvm.loop !575

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
  %i.bfh = load ptr, ptr %i.bfc, align 8, !tbaa !101 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bfh, i64 64) ]
  %i.bfi = load i64, ptr %i.bei, align 8, !tbaa !100
  %i.bfj = mul i64 %i.bfi, %.011.2.i
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfh, i64 %i.bfj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bfk, i64 64) ]
  %i.bfl = shl nuw nsw i64 %i.bfg, 2
  call void @llvm.memset.p0.i64(ptr align 64 %i.bfk, i8 0, i64 %i.bfl, i1 false)
  %.pre20.i = load i32, ptr %39, align 8, !tbaa !193
  %.pre22.i = load i32, ptr %i.beh, align 4, !tbaa !99
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.lr.ph.split.2.i
  %i.bfm = phi i32 [ %.pre22.i, %bb.fe ], [ %i.bfe, %.lr.ph.split.2.i ] ; 2 uses
  %i.bfn = phi i32 [ %.pre20.i, %bb.fe ], [ 0, %.lr.ph.split.2.i ]
  %i.bfo = add nuw nsw i64 %.011.2.i, 1           ; 2 uses
  %i.bfp = zext i32 %i.bfm to i64
  %i.bfq = icmp samesign ult i64 %i.bfo, %i.bfp
  br i1 %i.bfq, label %.lr.ph.split.2.i, label %.lr.ph585, !llvm.loop !575

.lr.ph.split.i:                                   ; preds = %.lr.ph.i190, %bb.fh
  %.pr.i194723 = phi i32 [ %.pr.i194, %bb.fh ], [ %i.bel, %.lr.ph.i190 ]
  %i.bfr = phi i32 [ %i.bfz, %bb.fh ], [ %i.bej, %.lr.ph.i190 ]
  %i.bfs = phi i32 [ %i.bga, %bb.fh ], [ %i.bel, %.lr.ph.i190 ] ; 2 uses
  %.011.i = phi i64 [ %i.bgb, %bb.fh ], [ 0, %.lr.ph.i190 ] ; 2 uses
  %.not.i191 = icmp eq i32 %i.bfs, 0
  br i1 %.not.i191, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %.lr.ph.split.i
  %i.bft = zext i32 %i.bfs to i64
  %i.bfu = load ptr, ptr %i.bek, align 8, !tbaa !101 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bfu, i64 64) ]
  %i.bfv = load i64, ptr %i.bei, align 8, !tbaa !100
  %i.bfw = mul i64 %i.bfv, %.011.i
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %i.bfw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bfx, i64 64) ]
  %i.bfy = shl nuw nsw i64 %i.bft, 2
  call void @llvm.memset.p0.i64(ptr align 64 %i.bfx, i8 0, i64 %i.bfy, i1 false)
  %.pre.i192 = load i32, ptr %39, align 8, !tbaa !193 ; 2 uses
  %.pre16.i = load i32, ptr %i.beh, align 4, !tbaa !99
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.lr.ph.split.i
  %.pr.i194 = phi i32 [ %.pre.i192, %bb.fg ], [ %.pr.i194723, %.lr.ph.split.i ] ; 4 uses
  %i.bfz = phi i32 [ %.pre16.i, %bb.fg ], [ %i.bfr, %.lr.ph.split.i ] ; 4 uses
  %i.bga = phi i32 [ %.pre.i192, %bb.fg ], [ 0, %.lr.ph.split.i ]
  %i.bgb = add nuw nsw i64 %.011.i, 1             ; 2 uses
  %i.bgc = zext i32 %i.bfz to i64
  %i.bgd = icmp samesign ult i64 %i.bgb, %i.bgc
  br i1 %i.bgd, label %.lr.ph.split.i, label %._crit_edge.i193, !llvm.loop !575

.lr.ph585:                                        ; preds = %bb.ff, %.lr.ph.2.i, %._crit_edge.1.i, %.lr.ph.1.i, %._crit_edge.i193, %.lr.ph.i190, %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %i.bge = getelementptr inbounds nuw i8, ptr %39, i64 40
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !101 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bgf, i64 64) ]
  %i.bgg = getelementptr inbounds nuw i8, ptr %39, i64 96
  %i.bgh = load ptr, ptr %i.bgg, align 8, !tbaa !101 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bgh, i64 64) ]
  %i.bgi = getelementptr inbounds nuw i8, ptr %39, i64 152
  %i.bgj = load ptr, ptr %i.bgi, align 8, !tbaa !101 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bgj, i64 64) ]
  %i.bgk = load i64, ptr %i.bei, align 8, !tbaa !100 ; 3 uses
  %i.bgl = lshr i64 %i.bgk, 2                     ; 2 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bgn = load ptr, ptr %i.bgm, align 8, !tbaa !235
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgn, i64 320
  %i.bgp = load i32, ptr %i.bgo, align 8, !tbaa !718 ; 2 uses
  %i.bgq = zext i32 %i.bgp to i64                 ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.bgu = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 7 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 6 uses
  %.not587 = icmp eq i32 %i.bgp, 0
  %i.bgw = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 3 uses
  %.pre727 = load ptr, ptr %35, align 8, !tbaa !232
  %i.bgx = and i64 %i.bgk, -4
  %stride.check = icmp slt i64 %i.bgk, 0
  %47 = insertelement <8 x i1> poison, i1 %stride.check, i64 7
  br label %bb.fi

._crit_edge586:                                   ; preds = %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  call void @_ZN3jxl14CompressParamsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(648) %43, ptr noundef nonnull align 8 dereferenceable(648) %i.c) #24
  %i.bgy = getelementptr inbounds nuw i8, ptr %43, i64 87
  store i8 0, ptr %i.bgy, align 1, !tbaa !719
  %i.bgz = getelementptr inbounds nuw i8, ptr %43, i64 632
  %.val = load ptr, ptr %i.bgz, align 8, !tbaa !676
  %.not467 = icmp eq ptr %.val, null
  br i1 %.not467, label %bb.gg, label %bb.gd

bb.fi:                                            ; preds = %.lr.ph585, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit
  %i.bha = phi ptr [ null, %.lr.ph585 ], [ %i.bkx, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ]
  %i.bhb = phi ptr [ null, %.lr.ph585 ], [ %i.bjv, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 2 uses
  %i.bhc = phi ptr [ null, %.lr.ph585 ], [ %i.bjw, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 2 uses
  %i.bhd = phi ptr [ null, %.lr.ph585 ], [ %i.bjx, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 2 uses
  %i.bhe = phi ptr [ null, %.lr.ph585 ], [ %i.bky, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 7 uses
  %i.bhf = phi ptr [ null, %.lr.ph585 ], [ %.0.i197, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 11 uses
  %.0143584 = phi i64 [ 0, %.lr.ph585 ], [ %i.bkz, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 3 uses
  %i.bhg = getelementptr inbounds nuw [184 x i8], ptr %.sroa.0347.1, i64 %.0143584 ; 7 uses
  %i.bhh = load i64, ptr %i.bhg, align 8, !tbaa !230 ; 11 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhg, i64 8
  %i.bhj = load i64, ptr %i.bhi, align 8, !tbaa !231 ; 6 uses
  %i.bhk = getelementptr inbounds nuw [16 x i8], ptr %.pre727, i64 %.0143584 ; 2 uses
  %i.bhl = load i64, ptr %i.bhk, align 8, !tbaa !705 ; 6 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhk, i64 8
  %i.bhn = load i64, ptr %i.bhm, align 8, !tbaa !706 ; 5 uses
  %.not588 = icmp eq i64 %i.bhj, 0
  %.not589 = icmp eq i64 %i.bhh, 0
  %or.cond1077 = select i1 %.not588, i1 true, i1 %.not589
  br i1 %or.cond1077, label %._crit_edge575.split, label %.preheader469.preheader

.preheader469.preheader:                          ; preds = %bb.fi
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhg, i64 88
  %.pre728.pre = load ptr, ptr %i.bho, align 8, !tbaa !224 ; 5 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bhg, i64 112
  %.pre729.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !224 ; 5 uses
  %.phi.trans.insert730.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bhg, i64 136
  %.pre731.pre = load ptr, ptr %.phi.trans.insert730.phi.trans.insert, align 8, !tbaa !224 ; 5 uses
  %invariant.gep1069 = getelementptr [4 x i8], ptr %i.bgf, i64 %i.bhl
  %invariant.gep = getelementptr [4 x i8], ptr %i.bgh, i64 %i.bhl
  %invariant.gep1072 = getelementptr [4 x i8], ptr %i.bgj, i64 %i.bhl
  %48 = shl i64 %i.bhh, 2                         ; 3 uses
  %49 = mul i64 %48, %i.bhj                       ; 3 uses
  %scevgep1228 = getelementptr i8, ptr %.pre731.pre, i64 %49 ; 3 uses
  %scevgep1229 = getelementptr i8, ptr %.pre729.pre, i64 %49 ; 3 uses
  %scevgep1230 = getelementptr i8, ptr %.pre728.pre, i64 %49 ; 3 uses
  %i.bhp = add i64 %i.bhn, %i.bhj
  %i.bhq = shl i64 %i.bhp, 2
  %i.bhr = add i64 %i.bhq, -4
  %i.bhs = mul i64 %i.bgl, %i.bhr
  %i.bht = add i64 %i.bhs, %48
  %i.bhu = shl i64 %i.bhl, 2                      ; 2 uses
  %i.bhv = add i64 %i.bht, %i.bhu                 ; 3 uses
  %scevgep1231 = getelementptr i8, ptr %i.bgj, i64 %i.bhv ; 4 uses
  %50 = mul i64 %i.bgx, %i.bhn
  %51 = add i64 %50, %i.bhu                       ; 3 uses
  %scevgep1232 = getelementptr i8, ptr %i.bgj, i64 %51 ; 3 uses
  %scevgep1233 = getelementptr i8, ptr %i.bgh, i64 %i.bhv ; 2 uses
  %scevgep1234.a = getelementptr i8, ptr %i.bgh, i64 %51 ; 2 uses
  %scevgep1235.a = getelementptr i8, ptr %i.bgf, i64 %i.bhv ; 5 uses
  %scevgep1236.a = getelementptr i8, ptr %i.bgf, i64 %51 ; 5 uses
  %52 = insertelement <4 x ptr> poison, ptr %scevgep1234.a, i64 0
  %53 = shufflevector <4 x ptr> %52, <4 x ptr> poison, <4 x i32> zeroinitializer
  %54 = insertelement <4 x ptr> poison, ptr %scevgep1231, i64 0
  %55 = insertelement <4 x ptr> %54, ptr %scevgep1230, i64 1
  %56 = insertelement <4 x ptr> %55, ptr %scevgep1229, i64 2
  %57 = insertelement <4 x ptr> %56, ptr %scevgep1228, i64 3
  %58 = insertelement <2 x ptr> poison, ptr %scevgep1230, i64 0
  %59 = insertelement <2 x ptr> %58, ptr %scevgep1229, i64 1
  %60 = insertelement <4 x ptr> poison, ptr %scevgep1232, i64 0 ; 2 uses
  %61 = insertelement <4 x ptr> %60, ptr %.pre728.pre, i64 1
  %62 = insertelement <4 x ptr> %61, ptr %.pre729.pre, i64 2
  %63 = insertelement <4 x ptr> %62, ptr %.pre731.pre, i64 3
  %64 = insertelement <4 x ptr> poison, ptr %scevgep1233, i64 0
  %65 = shufflevector <4 x ptr> %64, <4 x ptr> poison, <4 x i32> zeroinitializer
  %66 = shufflevector <4 x ptr> %60, <4 x ptr> poison, <2 x i32> zeroinitializer
  %67 = insertelement <2 x ptr> poison, ptr %.pre728.pre, i64 0
  %68 = insertelement <2 x ptr> %67, ptr %.pre729.pre, i64 1
  %69 = insertelement <2 x ptr> poison, ptr %scevgep1231, i64 0
  %70 = shufflevector <2 x ptr> %69, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check1238 = icmp ult i64 %i.bhh, 32
  %bound0.a = icmp ult ptr %scevgep1236.a, %scevgep1233
  %bound1 = icmp ult ptr %scevgep1234.a, %scevgep1235.a
  %found.conflict = and i1 %bound0.a, %bound1
  %bound01239 = icmp ult ptr %scevgep1236.a, %scevgep1231
  %bound11240 = icmp ult ptr %scevgep1232, %scevgep1235.a
  %found.conflict1241 = and i1 %bound01239, %bound11240
  %bound01242 = icmp ult ptr %scevgep1236.a, %scevgep1230
  %bound11243 = icmp ult ptr %.pre728.pre, %scevgep1235.a
  %found.conflict1244 = and i1 %bound01242, %bound11243
  %stride.check1245 = icmp slt i64 %48, 0
  %bound01247 = icmp ult ptr %scevgep1236.a, %scevgep1229
  %bound11248 = icmp ult ptr %.pre729.pre, %scevgep1235.a
  %found.conflict1249 = and i1 %bound01247, %bound11248
  %bound01251 = icmp ult ptr %scevgep1236.a, %scevgep1228
  %bound11252 = icmp ult ptr %.pre731.pre, %scevgep1235.a
  %found.conflict1253 = and i1 %bound01251, %bound11252
  %71 = icmp ult <4 x ptr> %53, %57
  %72 = icmp ult <4 x ptr> %63, %65
  %73 = icmp ult <2 x ptr> %66, %59
  %74 = icmp ult <2 x ptr> %68, %70
  %bound01279 = icmp ult ptr %scevgep1232, %scevgep1228
  %bound11280 = icmp ult ptr %.pre731.pre, %scevgep1231
  %75 = insertelement <8 x i1> %47, i1 %bound01279, i64 6
  %76 = shufflevector <4 x i1> %71, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %77 = shufflevector <8 x i1> %76, <8 x i1> %75, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %78 = shufflevector <2 x i1> %73, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %79 = shufflevector <8 x i1> %77, <8 x i1> %78, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %80 = shufflevector <2 x i1> %74, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %81 = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %80, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %82 = insertelement <8 x i1> %81, i1 %bound11280, i64 6
  %83 = shufflevector <4 x i1> %72, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %84 = shufflevector <8 x i1> %83, <8 x i1> %82, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %85 = and <8 x i1> %79, %84
  %86 = bitcast <8 x i1> %85 to i8
  %87 = icmp ne i8 %86, 0
  %op.rdx = or i1 %87, %found.conflict
  %op.rdx1297 = or i1 %found.conflict1241, %found.conflict1244
  %op.rdx1298 = or i1 %found.conflict1249, %found.conflict1253
  %op.rdx1299 = or i1 %op.rdx, %op.rdx1297
  %op.rdx1300 = or i1 %op.rdx1298, %stride.check1245
  %op.rdx1301 = or i1 %op.rdx1299, %op.rdx1300
  %n.vec1284 = and i64 %i.bhh, -8                 ; 3 uses
  %cmp.n1295 = icmp eq i64 %i.bhh, %n.vec1284
  %xtraiter1398 = and i64 %i.bhh, 1
  %lcmp.mod1399.not = icmp eq i64 %xtraiter1398, 0
  br label %.preheader469

.preheader469:                                    ; preds = %.preheader469.preheader, %._crit_edge573
  %.0142574 = phi i64 [ %i.bjt, %._crit_edge573 ], [ 0, %.preheader469.preheader ] ; 3 uses
  %i.bhw = mul i64 %.0142574, %i.bhh              ; 3 uses
  %i.bhx = add i64 %.0142574, %i.bhn
  %i.bhy = mul i64 %i.bhx, %i.bgl                 ; 3 uses
  %i.bhz = getelementptr [4 x i8], ptr %.pre728.pre, i64 %i.bhw ; 4 uses
  %gep1070 = getelementptr [4 x i8], ptr %invariant.gep1069, i64 %i.bhy ; 4 uses
  %i.bia = getelementptr [4 x i8], ptr %.pre729.pre, i64 %i.bhw ; 4 uses
  %gep1071 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bhy ; 4 uses
  %i.bib = getelementptr [4 x i8], ptr %.pre731.pre, i64 %i.bhw ; 4 uses
  %gep1073 = getelementptr [4 x i8], ptr %invariant.gep1072, i64 %i.bhy ; 4 uses
  %brmerge = select i1 %min.iters.check1238, i1 true, i1 %op.rdx1301
  br i1 %brmerge, label %.preheader.preheader, label %vector.body1285

vector.body1285:                                  ; preds = %.preheader469, %vector.body1285
  %index1286 = phi i64 [ %index.next1293, %vector.body1285 ], [ 0, %.preheader469 ] ; 7 uses
  %i.bic = getelementptr [4 x i8], ptr %i.bhz, i64 %index1286 ; 2 uses
  %i.bid = getelementptr i8, ptr %i.bic, i64 16
  %wide.load1287 = load <4 x float>, ptr %i.bic, align 4, !tbaa !106, !alias.scope !720
  %wide.load1288 = load <4 x float>, ptr %i.bid, align 4, !tbaa !106, !alias.scope !720
  %i.bie = getelementptr [4 x i8], ptr %gep1070, i64 %index1286 ; 2 uses
  %i.bif = getelementptr i8, ptr %i.bie, i64 16
  store <4 x float> %wide.load1287, ptr %i.bie, align 4, !tbaa !106, !alias.scope !721, !noalias !722
  store <4 x float> %wide.load1288, ptr %i.bif, align 4, !tbaa !106, !alias.scope !721, !noalias !722
  %i.big = getelementptr [4 x i8], ptr %i.bia, i64 %index1286 ; 2 uses
  %i.bih = getelementptr i8, ptr %i.big, i64 16
  %wide.load1289 = load <4 x float>, ptr %i.big, align 4, !tbaa !106, !alias.scope !723
  %wide.load1290 = load <4 x float>, ptr %i.bih, align 4, !tbaa !106, !alias.scope !723
  %i.bii = getelementptr [4 x i8], ptr %gep1071, i64 %index1286 ; 2 uses
  %i.bij = getelementptr i8, ptr %i.bii, i64 16
  store <4 x float> %wide.load1289, ptr %i.bii, align 4, !tbaa !106, !alias.scope !724, !noalias !725
  store <4 x float> %wide.load1290, ptr %i.bij, align 4, !tbaa !106, !alias.scope !724, !noalias !725
  %i.bik = getelementptr [4 x i8], ptr %i.bib, i64 %index1286 ; 2 uses
  %i.bil = getelementptr i8, ptr %i.bik, i64 16
  %wide.load1291 = load <4 x float>, ptr %i.bik, align 4, !tbaa !106, !alias.scope !726
  %wide.load1292 = load <4 x float>, ptr %i.bil, align 4, !tbaa !106, !alias.scope !726
  %i.bim = getelementptr [4 x i8], ptr %gep1073, i64 %index1286 ; 2 uses
  %i.bin = getelementptr i8, ptr %i.bim, i64 16
  store <4 x float> %wide.load1291, ptr %i.bim, align 4, !tbaa !106, !alias.scope !727, !noalias !728
  store <4 x float> %wide.load1292, ptr %i.bin, align 4, !tbaa !106, !alias.scope !727, !noalias !728
  %index.next1293 = add nuw i64 %index1286, 8     ; 2 uses
  %i.bio = icmp eq i64 %index.next1293, %n.vec1284
  br i1 %i.bio, label %middle.block1294, label %vector.body1285, !llvm.loop !619

middle.block1294:                                 ; preds = %vector.body1285
  br i1 %cmp.n1295, label %._crit_edge573, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader469, %middle.block1294
  %.0141572.ph = phi i64 [ %n.vec1284, %middle.block1294 ], [ 0, %.preheader469 ] ; 9 uses
  %.neg = or disjoint i64 %.0141572.ph, 1
  br i1 %lcmp.mod1399.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.bip = getelementptr [4 x i8], ptr %i.bhz, i64 %.0141572.ph
  %i.biq = load float, ptr %i.bip, align 4, !tbaa !106
  %gep.prol = getelementptr [4 x i8], ptr %gep1070, i64 %.0141572.ph
  store float %i.biq, ptr %gep.prol, align 4, !tbaa !106
  %i.bir = getelementptr [4 x i8], ptr %i.bia, i64 %.0141572.ph
  %i.bis = load float, ptr %i.bir, align 4, !tbaa !106
  %gep1066.prol = getelementptr [4 x i8], ptr %gep1071, i64 %.0141572.ph
  store float %i.bis, ptr %gep1066.prol, align 4, !tbaa !106
  %i.bit = getelementptr [4 x i8], ptr %i.bib, i64 %.0141572.ph
  %i.biu = load float, ptr %i.bit, align 4, !tbaa !106
  %gep1068.prol = getelementptr [4 x i8], ptr %gep1073, i64 %.0141572.ph
  store float %i.biu, ptr %gep1068.prol, align 4, !tbaa !106
  %i.biv = or disjoint i64 %.0141572.ph, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.0141572.unr = phi i64 [ %.0141572.ph, %.preheader.preheader ], [ %i.biv, %.preheader.prol ]
  %i.biw = icmp eq i64 %i.bhh, %.neg
  br i1 %i.biw, label %._crit_edge573, label %.preheader

._crit_edge575.split:                             ; preds = %._crit_edge573, %bb.fi
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bhg, i64 160
  %i.biy = load ptr, ptr %i.bix, align 8, !tbaa !220 ; 2 uses
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bhg, i64 168
  %i.bja = load ptr, ptr %i.biz, align 8, !tbaa !215 ; 2 uses
  %.not468579 = icmp eq ptr %i.biy, %i.bja
  br i1 %.not468579, label %._crit_edge583, label %.lr.ph582.preheader

.lr.ph582.preheader:                              ; preds = %._crit_edge575.split
  %i.bjb = ptrtoint ptr %i.bhf to i64
  %i.bjc = ptrtoint ptr %i.bhe to i64
  %i.bjd = sub i64 %i.bjb, %i.bjc
  %i.bje = sdiv exact i64 %i.bjd, 40              ; 2 uses
  br label %.lr.ph582

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.0141572 = phi i64 [ %i.bjs, %.preheader ], [ %.0141572.unr, %.preheader.prol.loopexit ] ; 8 uses
  %i.bjf = getelementptr [4 x i8], ptr %i.bhz, i64 %.0141572
  %i.bjg = load float, ptr %i.bjf, align 4, !tbaa !106
  %gep = getelementptr [4 x i8], ptr %gep1070, i64 %.0141572
  store float %i.bjg, ptr %gep, align 4, !tbaa !106
  %i.bjh = getelementptr [4 x i8], ptr %i.bia, i64 %.0141572
  %i.bji = load float, ptr %i.bjh, align 4, !tbaa !106
  %gep1066 = getelementptr [4 x i8], ptr %gep1071, i64 %.0141572
  store float %i.bji, ptr %gep1066, align 4, !tbaa !106
  %i.bjj = getelementptr [4 x i8], ptr %i.bib, i64 %.0141572
  %i.bjk = load float, ptr %i.bjj, align 4, !tbaa !106
  %gep1068 = getelementptr [4 x i8], ptr %gep1073, i64 %.0141572
  store float %i.bjk, ptr %gep1068, align 4, !tbaa !106
  %i.bjl = add nuw i64 %.0141572, 1               ; 6 uses
  %i.bjm = getelementptr [4 x i8], ptr %i.bhz, i64 %i.bjl
  %i.bjn = load float, ptr %i.bjm, align 4, !tbaa !106
  %gep.1 = getelementptr [4 x i8], ptr %gep1070, i64 %i.bjl
  store float %i.bjn, ptr %gep.1, align 4, !tbaa !106
  %i.bjo = getelementptr [4 x i8], ptr %i.bia, i64 %i.bjl
  %i.bjp = load float, ptr %i.bjo, align 4, !tbaa !106
  %gep1066.1 = getelementptr [4 x i8], ptr %gep1071, i64 %i.bjl
  store float %i.bjp, ptr %gep1066.1, align 4, !tbaa !106
  %i.bjq = getelementptr [4 x i8], ptr %i.bib, i64 %i.bjl
  %i.bjr = load float, ptr %i.bjq, align 4, !tbaa !106
  %gep1068.1 = getelementptr [4 x i8], ptr %gep1073, i64 %i.bjl
  store float %i.bjr, ptr %gep1068.1, align 4, !tbaa !106
  %i.bjs = add nuw i64 %.0141572, 2               ; 2 uses
  %exitcond696.not.1 = icmp eq i64 %i.bjs, %i.bhh
  br i1 %exitcond696.not.1, label %._crit_edge573, label %.preheader, !llvm.loop !620

._crit_edge573:                                   ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block1294
  %i.bjt = add nuw i64 %.0142574, 1               ; 2 uses
  %exitcond697.not = icmp eq i64 %i.bjt, %i.bhj
  br i1 %exitcond697.not, label %._crit_edge575.split, label %.preheader469, !llvm.loop !621

._crit_edge583.loopexit:                          ; preds = %._crit_edge578
  %.pre732 = load ptr, ptr %i.bgw, align 8, !tbaa !253
  br label %._crit_edge583

._crit_edge583:                                   ; preds = %._crit_edge583.loopexit, %._crit_edge575.split
  %i.bju = phi ptr [ %.pre732, %._crit_edge583.loopexit ], [ %i.bha, %._crit_edge575.split ] ; 3 uses
  %i.bjv = phi ptr [ %i.bme, %._crit_edge583.loopexit ], [ %i.bhb, %._crit_edge575.split ] ; 5 uses
  %i.bjw = phi ptr [ %i.bmf, %._crit_edge583.loopexit ], [ %i.bhc, %._crit_edge575.split ]
  %i.bjx = phi ptr [ %.0.i208, %._crit_edge583.loopexit ], [ %i.bhd, %._crit_edge575.split ]
  %i.bjy = icmp ult ptr %i.bhf, %i.bju
  br i1 %i.bjy, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %._crit_edge583
  store i64 3, ptr %i.bhf, align 8, !tbaa !102
  %.sroa.5301.0..sroa_idx302 = getelementptr inbounds nuw i8, ptr %i.bhf, i64 8
  store i64 %i.bhl, ptr %.sroa.5301.0..sroa_idx302, align 8, !tbaa !102
  %.sroa.7304.0..sroa_idx305 = getelementptr inbounds nuw i8, ptr %i.bhf, i64 16
  store i64 %i.bhn, ptr %.sroa.7304.0..sroa_idx305, align 8, !tbaa !102
  %.sroa.9.0..sroa_idx307 = getelementptr inbounds nuw i8, ptr %i.bhf, i64 24
  store i64 %i.bhh, ptr %.sroa.9.0..sroa_idx307, align 8, !tbaa !102
  %.sroa.12.0..sroa_idx310 = getelementptr inbounds nuw i8, ptr %i.bhf, i64 32
  store i64 %i.bhj, ptr %.sroa.12.0..sroa_idx310, align 8, !tbaa !102
  %i.bjz = getelementptr i8, ptr %i.bhf, i64 40
  br label %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit

bb.fk:                                            ; preds = %._crit_edge583
  %i.bka = ptrtoint ptr %i.bhf to i64
  %i.bkb = ptrtoint ptr %i.bhe to i64             ; 3 uses
  %i.bkc = sub i64 %i.bka, %i.bkb                 ; 2 uses
  %i.bkd = sdiv exact i64 %i.bkc, 40
  %i.bke = add nsw i64 %i.bkd, 1                  ; 2 uses
  %i.bkf = icmp ugt i64 %i.bke, 461168601842738790
  br i1 %i.bkf, label %bb.fl, label %_ZNKSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i

bb.fl:                                            ; preds = %bb.fk
  call void @_ZNKSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %41) #22
  unreachable

_ZNKSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i: ; preds = %bb.fk
  %i.bkg = ptrtoint ptr %i.bju to i64
  %i.bkh = sub i64 %i.bkg, %i.bkb
  %i.bki = sdiv exact i64 %i.bkh, 40              ; 2 uses
  %.not.i.i.i195 = icmp ult i64 %i.bki, 230584300921369395
  %i.bkj = shl nuw nsw i64 %i.bki, 1
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bkj, i64 %i.bke)
  %.0.i.i.i = select i1 %.not.i.i.i195, i64 %.sroa.speculated.i.i.i, i64 461168601842738790 ; 4 uses
  %i.bkk = icmp ne i64 %.0.i.i.i, 0
  call void @llvm.assume(i1 %i.bkk)
  %i.bkl = icmp ugt i64 %.0.i.i.i, 461168601842738790
  br i1 %i.bkl, label %bb.fm, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl22PatchReferencePositionEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i

bb.fm:                                            ; preds = %_ZNKSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #22
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl22PatchReferencePositionEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i
  %i.bkm = mul nuw i64 %.0.i.i.i, 40
  %i.bkn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bkm) #20 ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 %i.bkc ; 8 uses
  %i.bkp = getelementptr inbounds nuw [40 x i8], ptr %i.bkn, i64 %.0.i.i.i ; 3 uses
  store i64 3, ptr %i.bko, align 8, !tbaa !102
  %.sroa.5301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bko, i64 8
  store i64 %i.bhl, ptr %.sroa.5301.0..sroa_idx, align 8, !tbaa !102
  %.sroa.7304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bko, i64 16
  store i64 %i.bhn, ptr %.sroa.7304.0..sroa_idx, align 8, !tbaa !102
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bko, i64 24
  store i64 %i.bhh, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !102
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bko, i64 32
  store i64 %i.bhj, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !102
  %i.bkq = getelementptr i8, ptr %i.bko, i64 40   ; 3 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bhf, %i.bhe
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl22PatchReferencePositionEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bkr = phi ptr [ %i.bkt, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bko, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl22PatchReferencePositionEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bks, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bhf, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl22PatchReferencePositionEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i ]
  %i.bks = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -40 ; 3 uses
  %i.bkt = getelementptr inbounds i8, ptr %i.bkr, i64 -40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bkt, ptr noundef nonnull align 8 dereferenceable(40) %i.bks, i64 40, i1 false), !tbaa.struct !729, !noalias !730
  %.not.i.i.i.i.i.i.i.i.i196 = icmp eq ptr %i.bks, %i.bhe
  br i1 %.not.i.i.i.i.i.i.i.i.i196, label %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !630

_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl22PatchReferencePositionEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i
  %.sroa.436.0.i.i.i.i.i.i.i.i = phi ptr [ %i.bko, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl22PatchReferencePositionEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i ], [ %i.bkt, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i, ptr %41, align 8, !tbaa !253
  store ptr %i.bkq, ptr %i.bgr, align 8, !tbaa !253
  %i.bku = load ptr, ptr %i.bgw, align 8, !tbaa !253
  store ptr %i.bkp, ptr %i.bgw, align 8, !tbaa !253
end_hunk_0
