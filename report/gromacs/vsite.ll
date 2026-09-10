Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/vsite?download=true
inline.NumInlined: 3272
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3gmx27countInterUpdategroupVsitesERK10gmx_mtop_tNS_8ArrayRefIKNS_17RangePartitioningEEE:bb.a
  %.not.i.i.i = icmp sgt i32 %i.m, %i.q
  br i1 %.not.i.i.i, label %.noexc, label %_ZNK3gmx17RangePartitioning9fullRangeEv.exit.i

.noexc:                                           ; preds = %bb.c
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.64, i32 noundef 111) #32
  unreachable

_ZNK3gmx17RangePartitioning9fullRangeEv.exit.i:   ; preds = %bb.c
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp slt i32 %i.q, 0
  br i1 %i.s, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %_ZNK3gmx17RangePartitioning9fullRangeEv.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #32
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNK3gmx17RangePartitioning9fullRangeEv.exit.i
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %.noexc12.i

.noexc12.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.t = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #33 ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.u, i8 0, i64 %i.t, i1 false), !tbaa !90, !noalias !271
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !115, !noalias !271
  %.pre32.i = load ptr, ptr %i.k, align 8, !tbaa !18, !noalias !271
  %i.x = ptrtoint ptr %i.v to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc12.i
  %.sroa.0.0 = phi ptr [ %i.u, %.noexc12.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 7 uses
  %.sroa.10.0 = phi ptr [ %i.v, %.noexc12.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %i.y = phi i64 [ %i.x, %.noexc12.i ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.z = phi ptr [ %.pre32.i, %.noexc12.i ], [ %i.l, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %i.aa = phi ptr [ %.pre.i, %.noexc12.i ], [ %i.o, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %.noexc12.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = lshr exact i64 %i.ad, 2                 ; 2 uses
  %i.af = trunc i64 %i.ae to i32
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %.lr.ph.preheader.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit.i
  %i.ah = add nuw nsw i64 %i.ae, 4294967295
  %wide.trip.count.i = and i64 %i.ah, 4294967295
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i ] ; 3 uses
  %i.ai = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv.i ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !90, !noalias !271 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !90, !noalias !271 ; 3 uses
  %.not.i.i13.i = icmp sgt i32 %i.aj, %i.al
  br i1 %.not.i.i13.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.64, i32 noundef 111) #32
          to label %.noexc18.i unwind label %bb.f, !noalias !271

.noexc18.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.lr.ph.i
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.am
  %.not5.i.i.i.i.i = icmp eq i32 %i.aj, %i.al
  br i1 %.not5.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, label %iter.check497

iter.check497:                                    ; preds = %bb.e
  %i.ao = sext i32 %i.aj to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.ao ; 5 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  %i.ar = shl nsw i64 %i.am, 2
  %i.as = add nsw i64 %i.ar, -4
  %i.at = shl nsw i64 %i.ao, 2
  %i.au = sub nsw i64 %i.as, %i.at                ; 3 uses
  %i.av = lshr exact i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 5 uses
  %min.iters.check484 = icmp ult i64 %i.au, 28
  br i1 %min.iters.check484, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check485

vector.main.loop.iter.check485:                   ; preds = %iter.check497
  %min.iters.check486 = icmp ult i64 %i.au, 124
  br i1 %min.iters.check486, label %vec.epilog.ph501, label %vector.ph487

vector.ph487:                                     ; preds = %vector.main.loop.iter.check485
  %i.ax = and i64 %i.aw, 24
  %n.vec488 = and i64 %i.aw, 9223372036854775776  ; 4 uses
  %i.ay = shl i64 %n.vec488, 2
  %i.az = getelementptr i8, ptr %i.ap, i64 %i.ay
  %broadcast.splatinsert489 = insertelement <8 x i32> poison, i32 %i.aq, i64 0
  %broadcast.splat490 = shufflevector <8 x i32> %broadcast.splatinsert489, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body491, %vector.ph487
  %index492 = phi i64 [ 0, %vector.ph487 ], [ %index.next493, %vector.body491 ] ; 2 uses
  %i.ba = shl i64 %index492, 2
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ba ; 4 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 32
  %i.bc = getelementptr i8, ptr %next.gep, i64 64
  %i.bd = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %broadcast.splat490, ptr %next.gep, align 4, !tbaa !90, !noalias !271
  store <8 x i32> %broadcast.splat490, ptr %i.bb, align 4, !tbaa !90, !noalias !271
  store <8 x i32> %broadcast.splat490, ptr %i.bc, align 4, !tbaa !90, !noalias !271
  store <8 x i32> %broadcast.splat490, ptr %i.bd, align 4, !tbaa !90, !noalias !271
  %index.next493 = add nuw i64 %index492, 32      ; 2 uses
  %i.be = icmp eq i64 %index.next493, %n.vec488
  br i1 %i.be, label %middle.block494, label %vector.body491, !llvm.loop !235

middle.block494:                                  ; preds = %vector.body491
  %cmp.n495 = icmp eq i64 %i.aw, %n.vec488
  br i1 %cmp.n495, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, label %vec.epilog.iter.check499

vec.epilog.iter.check499:                         ; preds = %middle.block494
  %min.epilog.iters.check500 = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check500, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph501, !prof !137

vec.epilog.ph501:                                 ; preds = %vector.main.loop.iter.check485, %vec.epilog.iter.check499
  %vec.epilog.resume.val496 = phi i64 [ %n.vec488, %vec.epilog.iter.check499 ], [ 0, %vector.main.loop.iter.check485 ]
  %n.vec502 = and i64 %i.aw, 9223372036854775800  ; 3 uses
  %i.bf = shl i64 %n.vec502, 2
  %i.bg = getelementptr i8, ptr %i.ap, i64 %i.bf
  %broadcast.splatinsert503 = insertelement <8 x i32> poison, i32 %i.aq, i64 0
  %broadcast.splat504 = shufflevector <8 x i32> %broadcast.splatinsert503, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body505

vec.epilog.vector.body505:                        ; preds = %vec.epilog.vector.body505, %vec.epilog.ph501
  %index506 = phi i64 [ %vec.epilog.resume.val496, %vec.epilog.ph501 ], [ %index.next508, %vec.epilog.vector.body505 ] ; 2 uses
  %i.bh = shl i64 %index506, 2
  %next.gep507 = getelementptr i8, ptr %i.ap, i64 %i.bh
  store <8 x i32> %broadcast.splat504, ptr %next.gep507, align 4, !tbaa !90, !noalias !271
  %index.next508 = add nuw i64 %index506, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next508, %n.vec502
  br i1 %i.bi, label %vec.epilog.middle.block509, label %vec.epilog.vector.body505, !llvm.loop !236

vec.epilog.middle.block509:                       ; preds = %vec.epilog.vector.body505
  %cmp.n510 = icmp eq i64 %i.aw, %n.vec502
  br i1 %cmp.n510, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check497, %vec.epilog.iter.check499, %vec.epilog.middle.block509
  %.06.i.i.i.i.i.ph = phi ptr [ %i.ap, %iter.check497 ], [ %i.az, %vec.epilog.iter.check499 ], [ %i.bg, %vec.epilog.middle.block509 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.aq, ptr %.06.i.i.i.i.i, align 4, !tbaa !90, !noalias !271
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i19.i = icmp eq ptr %i.bj, %i.an
  br i1 %.not.i.i.i.i19.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !237

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block494, %vec.epilog.middle.block509, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.i, !llvm.loop !238

bb.f:                                             ; preds = %bb.d
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit44, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = ptrtoint ptr %.sroa.0.0 to i64
  %i.bm = sub i64 %i.y, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.bm) #30, !noalias !271
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit44

_ZNSt6vectorIiSaIiEED2Ev.exit44:                  ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.bk

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, %.loopexit.i, %bb.b
  %.sroa.049.0 = phi ptr [ null, %bb.b ], [ %.sroa.0.0, %.loopexit.i ], [ %.sroa.0.0, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i ] ; 6 uses
  %.sroa.11.0 = phi ptr [ null, %bb.b ], [ %.0.i.i.i.i.i.i.i.i, %.loopexit.i ], [ %.0.i.i.i.i.i.i.i.i, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i ]
  %.sroa.13.0 = phi ptr [ null, %bb.b ], [ %.sroa.10.0, %.loopexit.i ], [ %.sroa.10.0, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %.sroa.11.0.fr = freeze ptr %.sroa.11.0
  %i.bo = icmp eq ptr %.sroa.049.0, %.sroa.11.0.fr
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.058.073, i64 4 ; 11 uses
  br i1 %i.bo, label %_ZNSt6vectorIiSaIiEED2Ev.exit.split.us.preheader, label %_ZNSt6vectorIiSaIiEED2Ev.exit.split

_ZNSt6vectorIiSaIiEED2Ev.exit.split.us.preheader: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 1640
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 1648
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !115
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !18
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = lshr exact i64 %i.bw, 2
  %i.by = trunc i64 %i.bx to i32                  ; 3 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %iter.check468, label %._crit_edge.split.us.us

iter.check468:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.split.us.preheader
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2096), align 8, !tbaa !89
  %i.cb = add nsw i32 %i.ca, 1                    ; 5 uses
  %i.cc = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %smax446 = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 %i.by)
  %i.cd = add nsw i32 %smax446, -1
  %i.ce = udiv i32 %i.cd, %i.cb
  %i.cf = add i32 %i.ce, 1                        ; 7 uses
  %min.iters.check447 = icmp ult i32 %i.cf, 4
  br i1 %min.iters.check447, label %.critedge.us.us.preheader, label %vector.main.loop.iter.check448

vector.main.loop.iter.check448:                   ; preds = %iter.check468
  %min.iters.check449 = icmp ult i32 %i.cf, 32
  br i1 %min.iters.check449, label %vec.epilog.ph472, label %vector.ph450

vector.ph450:                                     ; preds = %vector.main.loop.iter.check448
  %i.cg = and i32 %i.cf, 28
  %n.vec451 = and i32 %i.cf, -32                  ; 4 uses
  %i.ch = mul i32 %n.vec451, %i.cb
  %i.ci = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.03474, i64 0
  %broadcast.splatinsert452 = insertelement <8 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat453 = shufflevector <8 x i32> %broadcast.splatinsert452, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body454

vector.body454:                                   ; preds = %vector.body454, %vector.ph450
  %index455 = phi i32 [ 0, %vector.ph450 ], [ %index.next460, %vector.body454 ]
  %vec.phi456 = phi <8 x i32> [ %i.ci, %vector.ph450 ], [ %i.cj, %vector.body454 ]
  %vec.phi457 = phi <8 x i32> [ zeroinitializer, %vector.ph450 ], [ %i.ck, %vector.body454 ]
  %vec.phi458 = phi <8 x i32> [ zeroinitializer, %vector.ph450 ], [ %i.cl, %vector.body454 ]
  %vec.phi459 = phi <8 x i32> [ zeroinitializer, %vector.ph450 ], [ %i.cm, %vector.body454 ]
  %i.cj = add <8 x i32> %broadcast.splat453, %vec.phi456 ; 2 uses
  %i.ck = add <8 x i32> %broadcast.splat453, %vec.phi457 ; 2 uses
  %i.cl = add <8 x i32> %broadcast.splat453, %vec.phi458 ; 2 uses
  %i.cm = add <8 x i32> %broadcast.splat453, %vec.phi459 ; 2 uses
  %index.next460 = add nuw i32 %index455, 32      ; 2 uses
  %i.cn = icmp eq i32 %index.next460, %n.vec451
  br i1 %i.cn, label %middle.block461, label %vector.body454, !llvm.loop !239

middle.block461:                                  ; preds = %vector.body454
  %bin.rdx462 = add <8 x i32> %i.ck, %i.cj
  %bin.rdx463 = add <8 x i32> %i.cl, %bin.rdx462
  %bin.rdx464 = add <8 x i32> %i.cm, %bin.rdx463
  %i.co = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx464) ; 3 uses
  %cmp.n465 = icmp eq i32 %i.cf, %n.vec451
  br i1 %cmp.n465, label %._crit_edge.split.us.us, label %vec.epilog.iter.check470

vec.epilog.iter.check470:                         ; preds = %middle.block461
  %min.epilog.iters.check471 = icmp eq i32 %i.cg, 0
  br i1 %min.epilog.iters.check471, label %.critedge.us.us.preheader, label %vec.epilog.ph472, !prof !138

vec.epilog.ph472:                                 ; preds = %vector.main.loop.iter.check448, %vec.epilog.iter.check470
  %vec.epilog.resume.val466 = phi i32 [ %n.vec451, %vec.epilog.iter.check470 ], [ 0, %vector.main.loop.iter.check448 ]
  %bc.merge.rdx467 = phi i32 [ %i.co, %vec.epilog.iter.check470 ], [ %.03474, %vector.main.loop.iter.check448 ]
  %n.vec473 = and i32 %i.cf, -4                   ; 3 uses
  %i.cp = mul i32 %n.vec473, %i.cb
  %i.cq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx467, i64 0
  %broadcast.splatinsert474 = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat475 = shufflevector <4 x i32> %broadcast.splatinsert474, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body476

vec.epilog.vector.body476:                        ; preds = %vec.epilog.vector.body476, %vec.epilog.ph472
  %index477 = phi i32 [ %vec.epilog.resume.val466, %vec.epilog.ph472 ], [ %index.next479, %vec.epilog.vector.body476 ]
  %vec.phi478 = phi <4 x i32> [ %i.cq, %vec.epilog.ph472 ], [ %i.cr, %vec.epilog.vector.body476 ]
  %i.cr = add <4 x i32> %broadcast.splat475, %vec.phi478 ; 2 uses
  %index.next479 = add nuw i32 %index477, 4       ; 2 uses
  %i.cs = icmp eq i32 %index.next479, %n.vec473
  br i1 %i.cs, label %vec.epilog.middle.block480, label %vec.epilog.vector.body476, !llvm.loop !240

vec.epilog.middle.block480:                       ; preds = %vec.epilog.vector.body476
  %i.ct = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cr) ; 2 uses
  %cmp.n481 = icmp eq i32 %i.cf, %n.vec473
  br i1 %cmp.n481, label %._crit_edge.split.us.us, label %.critedge.us.us.preheader

.critedge.us.us.preheader:                        ; preds = %iter.check468, %vec.epilog.iter.check470, %vec.epilog.middle.block480
  %.03267.us.us.ph = phi i32 [ 0, %iter.check468 ], [ %i.ch, %vec.epilog.iter.check470 ], [ %i.cp, %vec.epilog.middle.block480 ]
  %.266.us.us.ph = phi i32 [ %.03474, %iter.check468 ], [ %i.co, %vec.epilog.iter.check470 ], [ %i.ct, %vec.epilog.middle.block480 ]
  br label %.critedge.us.us

.critedge.us.us:                                  ; preds = %.critedge.us.us.preheader, %.critedge.us.us
  %.03267.us.us = phi i32 [ %i.cv, %.critedge.us.us ], [ %.03267.us.us.ph, %.critedge.us.us.preheader ]
  %.266.us.us = phi i32 [ %i.cu, %.critedge.us.us ], [ %.266.us.us.ph, %.critedge.us.us.preheader ]
  %i.cu = add nsw i32 %i.cc, %.266.us.us          ; 2 uses
  %i.cv = add nsw i32 %i.cb, %.03267.us.us        ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.by
  br i1 %i.cw, label %.critedge.us.us, label %._crit_edge.split.us.us, !llvm.loop !241

._crit_edge.split.us.us:                          ; preds = %.critedge.us.us, %middle.block461, %vec.epilog.middle.block480, %_ZNSt6vectorIiSaIiEED2Ev.exit.split.us.preheader
  %.2.lcssa.us = phi i32 [ %.03474, %_ZNSt6vectorIiSaIiEED2Ev.exit.split.us.preheader ], [ %i.ct, %vec.epilog.middle.block480 ], [ %i.co, %middle.block461 ], [ %i.cu, %.critedge.us.us ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.j, i64 1664
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 1672
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !115
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !18
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = lshr exact i64 %i.dd, 2
  %i.df = trunc i64 %i.de to i32                  ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %iter.check430, label %._crit_edge.split.us.us.1

iter.check430:                                    ; preds = %._crit_edge.split.us.us
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2128), align 8, !tbaa !89
  %i.di = add nsw i32 %i.dh, 1                    ; 5 uses
  %i.dj = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %smax408 = tail call i32 @llvm.smax.i32(i32 %i.di, i32 %i.df)
  %i.dk = add nsw i32 %smax408, -1
  %i.dl = udiv i32 %i.dk, %i.di
  %i.dm = add i32 %i.dl, 1                        ; 7 uses
  %min.iters.check409 = icmp ult i32 %i.dm, 4
  br i1 %min.iters.check409, label %.critedge.us.us.1.preheader, label %vector.main.loop.iter.check410

vector.main.loop.iter.check410:                   ; preds = %iter.check430
  %min.iters.check411 = icmp ult i32 %i.dm, 32
  br i1 %min.iters.check411, label %vec.epilog.ph434, label %vector.ph412

vector.ph412:                                     ; preds = %vector.main.loop.iter.check410
  %i.dn = and i32 %i.dm, 28
  %n.vec413 = and i32 %i.dm, -32                  ; 4 uses
  %i.do = mul i32 %n.vec413, %i.di
  %i.dp = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us, i64 0
  %broadcast.splatinsert414 = insertelement <8 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat415 = shufflevector <8 x i32> %broadcast.splatinsert414, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph412
  %index417 = phi i32 [ 0, %vector.ph412 ], [ %index.next422, %vector.body416 ]
  %vec.phi418 = phi <8 x i32> [ %i.dp, %vector.ph412 ], [ %i.dq, %vector.body416 ]
  %vec.phi419 = phi <8 x i32> [ zeroinitializer, %vector.ph412 ], [ %i.dr, %vector.body416 ]
  %vec.phi420 = phi <8 x i32> [ zeroinitializer, %vector.ph412 ], [ %i.ds, %vector.body416 ]
  %vec.phi421 = phi <8 x i32> [ zeroinitializer, %vector.ph412 ], [ %i.dt, %vector.body416 ]
  %i.dq = add <8 x i32> %broadcast.splat415, %vec.phi418 ; 2 uses
  %i.dr = add <8 x i32> %broadcast.splat415, %vec.phi419 ; 2 uses
  %i.ds = add <8 x i32> %broadcast.splat415, %vec.phi420 ; 2 uses
  %i.dt = add <8 x i32> %broadcast.splat415, %vec.phi421 ; 2 uses
  %index.next422 = add nuw i32 %index417, 32      ; 2 uses
  %i.du = icmp eq i32 %index.next422, %n.vec413
  br i1 %i.du, label %middle.block423, label %vector.body416, !llvm.loop !242

middle.block423:                                  ; preds = %vector.body416
  %bin.rdx424 = add <8 x i32> %i.dr, %i.dq
  %bin.rdx425 = add <8 x i32> %i.ds, %bin.rdx424
  %bin.rdx426 = add <8 x i32> %i.dt, %bin.rdx425
  %i.dv = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx426) ; 3 uses
  %cmp.n427 = icmp eq i32 %i.dm, %n.vec413
  br i1 %cmp.n427, label %._crit_edge.split.us.us.1, label %vec.epilog.iter.check432

vec.epilog.iter.check432:                         ; preds = %middle.block423
  %min.epilog.iters.check433 = icmp eq i32 %i.dn, 0
  br i1 %min.epilog.iters.check433, label %.critedge.us.us.1.preheader, label %vec.epilog.ph434, !prof !138

vec.epilog.ph434:                                 ; preds = %vector.main.loop.iter.check410, %vec.epilog.iter.check432
  %vec.epilog.resume.val428 = phi i32 [ %n.vec413, %vec.epilog.iter.check432 ], [ 0, %vector.main.loop.iter.check410 ]
  %bc.merge.rdx429 = phi i32 [ %i.dv, %vec.epilog.iter.check432 ], [ %.2.lcssa.us, %vector.main.loop.iter.check410 ]
  %n.vec435 = and i32 %i.dm, -4                   ; 3 uses
  %i.dw = mul i32 %n.vec435, %i.di
  %i.dx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx429, i64 0
  %broadcast.splatinsert436 = insertelement <4 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat437 = shufflevector <4 x i32> %broadcast.splatinsert436, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body438

vec.epilog.vector.body438:                        ; preds = %vec.epilog.vector.body438, %vec.epilog.ph434
  %index439 = phi i32 [ %vec.epilog.resume.val428, %vec.epilog.ph434 ], [ %index.next441, %vec.epilog.vector.body438 ]
  %vec.phi440 = phi <4 x i32> [ %i.dx, %vec.epilog.ph434 ], [ %i.dy, %vec.epilog.vector.body438 ]
  %i.dy = add <4 x i32> %broadcast.splat437, %vec.phi440 ; 2 uses
  %index.next441 = add nuw i32 %index439, 4       ; 2 uses
  %i.dz = icmp eq i32 %index.next441, %n.vec435
  br i1 %i.dz, label %vec.epilog.middle.block442, label %vec.epilog.vector.body438, !llvm.loop !243

vec.epilog.middle.block442:                       ; preds = %vec.epilog.vector.body438
  %i.ea = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dy) ; 2 uses
  %cmp.n443 = icmp eq i32 %i.dm, %n.vec435
  br i1 %cmp.n443, label %._crit_edge.split.us.us.1, label %.critedge.us.us.1.preheader

.critedge.us.us.1.preheader:                      ; preds = %iter.check430, %vec.epilog.iter.check432, %vec.epilog.middle.block442
  %.03267.us.us.1.ph = phi i32 [ 0, %iter.check430 ], [ %i.do, %vec.epilog.iter.check432 ], [ %i.dw, %vec.epilog.middle.block442 ]
  %.266.us.us.1.ph = phi i32 [ %.2.lcssa.us, %iter.check430 ], [ %i.dv, %vec.epilog.iter.check432 ], [ %i.ea, %vec.epilog.middle.block442 ]
  br label %.critedge.us.us.1

.critedge.us.us.1:                                ; preds = %.critedge.us.us.1.preheader, %.critedge.us.us.1
  %.03267.us.us.1 = phi i32 [ %i.ec, %.critedge.us.us.1 ], [ %.03267.us.us.1.ph, %.critedge.us.us.1.preheader ]
  %.266.us.us.1 = phi i32 [ %i.eb, %.critedge.us.us.1 ], [ %.266.us.us.1.ph, %.critedge.us.us.1.preheader ]
  %i.eb = add nsw i32 %i.dj, %.266.us.us.1        ; 2 uses
  %i.ec = add nsw i32 %i.di, %.03267.us.us.1      ; 2 uses
  %i.ed = icmp slt i32 %i.ec, %i.df
  br i1 %i.ed, label %.critedge.us.us.1, label %._crit_edge.split.us.us.1, !llvm.loop !244

._crit_edge.split.us.us.1:                        ; preds = %.critedge.us.us.1, %middle.block423, %vec.epilog.middle.block442, %._crit_edge.split.us.us
  %.2.lcssa.us.1 = phi i32 [ %.2.lcssa.us, %._crit_edge.split.us.us ], [ %i.ea, %vec.epilog.middle.block442 ], [ %i.dv, %middle.block423 ], [ %i.eb, %.critedge.us.us.1 ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 1688
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 1696
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !115
  %i.eh = load ptr, ptr %i.ee, align 8, !tbaa !18
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = lshr exact i64 %i.ek, 2
  %i.em = trunc i64 %i.el to i32                  ; 3 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %iter.check392, label %._crit_edge.split.us.us.2

iter.check392:                                    ; preds = %._crit_edge.split.us.us.1
  %i.eo = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2160), align 8, !tbaa !89
  %i.ep = add nsw i32 %i.eo, 1                    ; 5 uses
  %i.eq = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %smax370 = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 %i.em)
  %i.er = add nsw i32 %smax370, -1
  %i.es = udiv i32 %i.er, %i.ep
  %i.et = add i32 %i.es, 1                        ; 7 uses
  %min.iters.check371 = icmp ult i32 %i.et, 4
  br i1 %min.iters.check371, label %.critedge.us.us.2.preheader, label %vector.main.loop.iter.check372

vector.main.loop.iter.check372:                   ; preds = %iter.check392
  %min.iters.check373 = icmp ult i32 %i.et, 32
  br i1 %min.iters.check373, label %vec.epilog.ph396, label %vector.ph374

vector.ph374:                                     ; preds = %vector.main.loop.iter.check372
  %i.eu = and i32 %i.et, 28
  %n.vec375 = and i32 %i.et, -32                  ; 4 uses
  %i.ev = mul i32 %n.vec375, %i.ep
  %i.ew = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.1, i64 0
  %broadcast.splatinsert376 = insertelement <8 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat377 = shufflevector <8 x i32> %broadcast.splatinsert376, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body378

vector.body378:                                   ; preds = %vector.body378, %vector.ph374
  %index379 = phi i32 [ 0, %vector.ph374 ], [ %index.next384, %vector.body378 ]
  %vec.phi380 = phi <8 x i32> [ %i.ew, %vector.ph374 ], [ %i.ex, %vector.body378 ]
  %vec.phi381 = phi <8 x i32> [ zeroinitializer, %vector.ph374 ], [ %i.ey, %vector.body378 ]
  %vec.phi382 = phi <8 x i32> [ zeroinitializer, %vector.ph374 ], [ %i.ez, %vector.body378 ]
  %vec.phi383 = phi <8 x i32> [ zeroinitializer, %vector.ph374 ], [ %i.fa, %vector.body378 ]
  %i.ex = add <8 x i32> %broadcast.splat377, %vec.phi380 ; 2 uses
  %i.ey = add <8 x i32> %broadcast.splat377, %vec.phi381 ; 2 uses
  %i.ez = add <8 x i32> %broadcast.splat377, %vec.phi382 ; 2 uses
  %i.fa = add <8 x i32> %broadcast.splat377, %vec.phi383 ; 2 uses
  %index.next384 = add nuw i32 %index379, 32      ; 2 uses
  %i.fb = icmp eq i32 %index.next384, %n.vec375
  br i1 %i.fb, label %middle.block385, label %vector.body378, !llvm.loop !245

middle.block385:                                  ; preds = %vector.body378
  %bin.rdx386 = add <8 x i32> %i.ey, %i.ex
  %bin.rdx387 = add <8 x i32> %i.ez, %bin.rdx386
  %bin.rdx388 = add <8 x i32> %i.fa, %bin.rdx387
  %i.fc = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx388) ; 3 uses
  %cmp.n389 = icmp eq i32 %i.et, %n.vec375
  br i1 %cmp.n389, label %._crit_edge.split.us.us.2, label %vec.epilog.iter.check394

vec.epilog.iter.check394:                         ; preds = %middle.block385
  %min.epilog.iters.check395 = icmp eq i32 %i.eu, 0
  br i1 %min.epilog.iters.check395, label %.critedge.us.us.2.preheader, label %vec.epilog.ph396, !prof !138

vec.epilog.ph396:                                 ; preds = %vector.main.loop.iter.check372, %vec.epilog.iter.check394
  %vec.epilog.resume.val390 = phi i32 [ %n.vec375, %vec.epilog.iter.check394 ], [ 0, %vector.main.loop.iter.check372 ]
  %bc.merge.rdx391 = phi i32 [ %i.fc, %vec.epilog.iter.check394 ], [ %.2.lcssa.us.1, %vector.main.loop.iter.check372 ]
  %n.vec397 = and i32 %i.et, -4                   ; 3 uses
  %i.fd = mul i32 %n.vec397, %i.ep
  %i.fe = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx391, i64 0
  %broadcast.splatinsert398 = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat399 = shufflevector <4 x i32> %broadcast.splatinsert398, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body400

vec.epilog.vector.body400:                        ; preds = %vec.epilog.vector.body400, %vec.epilog.ph396
  %index401 = phi i32 [ %vec.epilog.resume.val390, %vec.epilog.ph396 ], [ %index.next403, %vec.epilog.vector.body400 ]
  %vec.phi402 = phi <4 x i32> [ %i.fe, %vec.epilog.ph396 ], [ %i.ff, %vec.epilog.vector.body400 ]
  %i.ff = add <4 x i32> %broadcast.splat399, %vec.phi402 ; 2 uses
  %index.next403 = add nuw i32 %index401, 4       ; 2 uses
  %i.fg = icmp eq i32 %index.next403, %n.vec397
  br i1 %i.fg, label %vec.epilog.middle.block404, label %vec.epilog.vector.body400, !llvm.loop !246

vec.epilog.middle.block404:                       ; preds = %vec.epilog.vector.body400
  %i.fh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ff) ; 2 uses
  %cmp.n405 = icmp eq i32 %i.et, %n.vec397
  br i1 %cmp.n405, label %._crit_edge.split.us.us.2, label %.critedge.us.us.2.preheader

.critedge.us.us.2.preheader:                      ; preds = %iter.check392, %vec.epilog.iter.check394, %vec.epilog.middle.block404
  %.03267.us.us.2.ph = phi i32 [ 0, %iter.check392 ], [ %i.ev, %vec.epilog.iter.check394 ], [ %i.fd, %vec.epilog.middle.block404 ]
  %.266.us.us.2.ph = phi i32 [ %.2.lcssa.us.1, %iter.check392 ], [ %i.fc, %vec.epilog.iter.check394 ], [ %i.fh, %vec.epilog.middle.block404 ]
  br label %.critedge.us.us.2

.critedge.us.us.2:                                ; preds = %.critedge.us.us.2.preheader, %.critedge.us.us.2
  %.03267.us.us.2 = phi i32 [ %i.fj, %.critedge.us.us.2 ], [ %.03267.us.us.2.ph, %.critedge.us.us.2.preheader ]
  %.266.us.us.2 = phi i32 [ %i.fi, %.critedge.us.us.2 ], [ %.266.us.us.2.ph, %.critedge.us.us.2.preheader ]
  %i.fi = add nsw i32 %i.eq, %.266.us.us.2        ; 2 uses
  %i.fj = add nsw i32 %i.ep, %.03267.us.us.2      ; 2 uses
  %i.fk = icmp slt i32 %i.fj, %i.em
  br i1 %i.fk, label %.critedge.us.us.2, label %._crit_edge.split.us.us.2, !llvm.loop !247

._crit_edge.split.us.us.2:                        ; preds = %.critedge.us.us.2, %middle.block385, %vec.epilog.middle.block404, %._crit_edge.split.us.us.1
  %.2.lcssa.us.2 = phi i32 [ %.2.lcssa.us.1, %._crit_edge.split.us.us.1 ], [ %i.fh, %vec.epilog.middle.block404 ], [ %i.fc, %middle.block385 ], [ %i.fi, %.critedge.us.us.2 ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.j, i64 1712
  %i.fm = getelementptr inbounds nuw i8, ptr %i.j, i64 1720
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !115
  %i.fo = load ptr, ptr %i.fl, align 8, !tbaa !18
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = lshr exact i64 %i.fr, 2
  %i.ft = trunc i64 %i.fs to i32                  ; 3 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %iter.check354, label %._crit_edge.split.us.us.3

iter.check354:                                    ; preds = %._crit_edge.split.us.us.2
  %i.fv = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2192), align 8, !tbaa !89
  %i.fw = add nsw i32 %i.fv, 1                    ; 5 uses
  %i.fx = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %smax332 = tail call i32 @llvm.smax.i32(i32 %i.fw, i32 %i.ft)
  %i.fy = add nsw i32 %smax332, -1
  %i.fz = udiv i32 %i.fy, %i.fw
  %i.ga = add i32 %i.fz, 1                        ; 7 uses
  %min.iters.check333 = icmp ult i32 %i.ga, 4
  br i1 %min.iters.check333, label %.critedge.us.us.3.preheader, label %vector.main.loop.iter.check334

vector.main.loop.iter.check334:                   ; preds = %iter.check354
  %min.iters.check335 = icmp ult i32 %i.ga, 32
  br i1 %min.iters.check335, label %vec.epilog.ph358, label %vector.ph336

vector.ph336:                                     ; preds = %vector.main.loop.iter.check334
  %i.gb = and i32 %i.ga, 28
  %n.vec337 = and i32 %i.ga, -32                  ; 4 uses
  %i.gc = mul i32 %n.vec337, %i.fw
  %i.gd = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.2, i64 0
  %broadcast.splatinsert338 = insertelement <8 x i32> poison, i32 %i.fx, i64 0
  %broadcast.splat339 = shufflevector <8 x i32> %broadcast.splatinsert338, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body340

vector.body340:                                   ; preds = %vector.body340, %vector.ph336
  %index341 = phi i32 [ 0, %vector.ph336 ], [ %index.next346, %vector.body340 ]
  %vec.phi342 = phi <8 x i32> [ %i.gd, %vector.ph336 ], [ %i.ge, %vector.body340 ]
  %vec.phi343 = phi <8 x i32> [ zeroinitializer, %vector.ph336 ], [ %i.gf, %vector.body340 ]
  %vec.phi344 = phi <8 x i32> [ zeroinitializer, %vector.ph336 ], [ %i.gg, %vector.body340 ]
  %vec.phi345 = phi <8 x i32> [ zeroinitializer, %vector.ph336 ], [ %i.gh, %vector.body340 ]
  %i.ge = add <8 x i32> %broadcast.splat339, %vec.phi342 ; 2 uses
  %i.gf = add <8 x i32> %broadcast.splat339, %vec.phi343 ; 2 uses
  %i.gg = add <8 x i32> %broadcast.splat339, %vec.phi344 ; 2 uses
  %i.gh = add <8 x i32> %broadcast.splat339, %vec.phi345 ; 2 uses
  %index.next346 = add nuw i32 %index341, 32      ; 2 uses
  %i.gi = icmp eq i32 %index.next346, %n.vec337
  br i1 %i.gi, label %middle.block347, label %vector.body340, !llvm.loop !248

middle.block347:                                  ; preds = %vector.body340
  %bin.rdx348 = add <8 x i32> %i.gf, %i.ge
  %bin.rdx349 = add <8 x i32> %i.gg, %bin.rdx348
  %bin.rdx350 = add <8 x i32> %i.gh, %bin.rdx349
  %i.gj = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx350) ; 3 uses
  %cmp.n351 = icmp eq i32 %i.ga, %n.vec337
  br i1 %cmp.n351, label %._crit_edge.split.us.us.3, label %vec.epilog.iter.check356

vec.epilog.iter.check356:                         ; preds = %middle.block347
  %min.epilog.iters.check357 = icmp eq i32 %i.gb, 0
  br i1 %min.epilog.iters.check357, label %.critedge.us.us.3.preheader, label %vec.epilog.ph358, !prof !138

vec.epilog.ph358:                                 ; preds = %vector.main.loop.iter.check334, %vec.epilog.iter.check356
  %vec.epilog.resume.val352 = phi i32 [ %n.vec337, %vec.epilog.iter.check356 ], [ 0, %vector.main.loop.iter.check334 ]
  %bc.merge.rdx353 = phi i32 [ %i.gj, %vec.epilog.iter.check356 ], [ %.2.lcssa.us.2, %vector.main.loop.iter.check334 ]
  %n.vec359 = and i32 %i.ga, -4                   ; 3 uses
  %i.gk = mul i32 %n.vec359, %i.fw
  %i.gl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx353, i64 0
  %broadcast.splatinsert360 = insertelement <4 x i32> poison, i32 %i.fx, i64 0
  %broadcast.splat361 = shufflevector <4 x i32> %broadcast.splatinsert360, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body362

vec.epilog.vector.body362:                        ; preds = %vec.epilog.vector.body362, %vec.epilog.ph358
  %index363 = phi i32 [ %vec.epilog.resume.val352, %vec.epilog.ph358 ], [ %index.next365, %vec.epilog.vector.body362 ]
  %vec.phi364 = phi <4 x i32> [ %i.gl, %vec.epilog.ph358 ], [ %i.gm, %vec.epilog.vector.body362 ]
  %i.gm = add <4 x i32> %broadcast.splat361, %vec.phi364 ; 2 uses
  %index.next365 = add nuw i32 %index363, 4       ; 2 uses
  %i.gn = icmp eq i32 %index.next365, %n.vec359
  br i1 %i.gn, label %vec.epilog.middle.block366, label %vec.epilog.vector.body362, !llvm.loop !249

vec.epilog.middle.block366:                       ; preds = %vec.epilog.vector.body362
  %i.go = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gm) ; 2 uses
  %cmp.n367 = icmp eq i32 %i.ga, %n.vec359
  br i1 %cmp.n367, label %._crit_edge.split.us.us.3, label %.critedge.us.us.3.preheader

.critedge.us.us.3.preheader:                      ; preds = %iter.check354, %vec.epilog.iter.check356, %vec.epilog.middle.block366
  %.03267.us.us.3.ph = phi i32 [ 0, %iter.check354 ], [ %i.gc, %vec.epilog.iter.check356 ], [ %i.gk, %vec.epilog.middle.block366 ]
  %.266.us.us.3.ph = phi i32 [ %.2.lcssa.us.2, %iter.check354 ], [ %i.gj, %vec.epilog.iter.check356 ], [ %i.go, %vec.epilog.middle.block366 ]
  br label %.critedge.us.us.3

.critedge.us.us.3:                                ; preds = %.critedge.us.us.3.preheader, %.critedge.us.us.3
  %.03267.us.us.3 = phi i32 [ %i.gq, %.critedge.us.us.3 ], [ %.03267.us.us.3.ph, %.critedge.us.us.3.preheader ]
  %.266.us.us.3 = phi i32 [ %i.gp, %.critedge.us.us.3 ], [ %.266.us.us.3.ph, %.critedge.us.us.3.preheader ]
  %i.gp = add nsw i32 %i.fx, %.266.us.us.3        ; 2 uses
  %i.gq = add nsw i32 %i.fw, %.03267.us.us.3      ; 2 uses
  %i.gr = icmp slt i32 %i.gq, %i.ft
  br i1 %i.gr, label %.critedge.us.us.3, label %._crit_edge.split.us.us.3, !llvm.loop !250

._crit_edge.split.us.us.3:                        ; preds = %.critedge.us.us.3, %middle.block347, %vec.epilog.middle.block366, %._crit_edge.split.us.us.2
  %.2.lcssa.us.3 = phi i32 [ %.2.lcssa.us.2, %._crit_edge.split.us.us.2 ], [ %i.go, %vec.epilog.middle.block366 ], [ %i.gj, %middle.block347 ], [ %i.gp, %.critedge.us.us.3 ] ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.j, i64 1736
  %i.gt = getelementptr inbounds nuw i8, ptr %i.j, i64 1744
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !115
  %i.gv = load ptr, ptr %i.gs, align 8, !tbaa !18
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = lshr exact i64 %i.gy, 2
  %i.ha = trunc i64 %i.gz to i32                  ; 3 uses
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %iter.check316, label %._crit_edge.split.us.us.4

iter.check316:                                    ; preds = %._crit_edge.split.us.us.3
  %i.hc = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2224), align 8, !tbaa !89
  %i.hd = add nsw i32 %i.hc, 1                    ; 5 uses
  %i.he = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %smax294 = tail call i32 @llvm.smax.i32(i32 %i.hd, i32 %i.ha)
  %i.hf = add nsw i32 %smax294, -1
  %i.hg = udiv i32 %i.hf, %i.hd
  %i.hh = add i32 %i.hg, 1                        ; 7 uses
  %min.iters.check295 = icmp ult i32 %i.hh, 4
  br i1 %min.iters.check295, label %.critedge.us.us.4.preheader, label %vector.main.loop.iter.check296

vector.main.loop.iter.check296:                   ; preds = %iter.check316
  %min.iters.check297 = icmp ult i32 %i.hh, 32
  br i1 %min.iters.check297, label %vec.epilog.ph320, label %vector.ph298

vector.ph298:                                     ; preds = %vector.main.loop.iter.check296
  %i.hi = and i32 %i.hh, 28
  %n.vec299 = and i32 %i.hh, -32                  ; 4 uses
  %i.hj = mul i32 %n.vec299, %i.hd
  %i.hk = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.3, i64 0
  %broadcast.splatinsert300 = insertelement <8 x i32> poison, i32 %i.he, i64 0
  %broadcast.splat301 = shufflevector <8 x i32> %broadcast.splatinsert300, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph298
  %index303 = phi i32 [ 0, %vector.ph298 ], [ %index.next308, %vector.body302 ]
  %vec.phi304 = phi <8 x i32> [ %i.hk, %vector.ph298 ], [ %i.hl, %vector.body302 ]
  %vec.phi305 = phi <8 x i32> [ zeroinitializer, %vector.ph298 ], [ %i.hm, %vector.body302 ]
  %vec.phi306 = phi <8 x i32> [ zeroinitializer, %vector.ph298 ], [ %i.hn, %vector.body302 ]
  %vec.phi307 = phi <8 x i32> [ zeroinitializer, %vector.ph298 ], [ %i.ho, %vector.body302 ]
  %i.hl = add <8 x i32> %broadcast.splat301, %vec.phi304 ; 2 uses
  %i.hm = add <8 x i32> %broadcast.splat301, %vec.phi305 ; 2 uses
  %i.hn = add <8 x i32> %broadcast.splat301, %vec.phi306 ; 2 uses
  %i.ho = add <8 x i32> %broadcast.splat301, %vec.phi307 ; 2 uses
  %index.next308 = add nuw i32 %index303, 32      ; 2 uses
  %i.hp = icmp eq i32 %index.next308, %n.vec299
  br i1 %i.hp, label %middle.block309, label %vector.body302, !llvm.loop !251

middle.block309:                                  ; preds = %vector.body302
  %bin.rdx310 = add <8 x i32> %i.hm, %i.hl
  %bin.rdx311 = add <8 x i32> %i.hn, %bin.rdx310
  %bin.rdx312 = add <8 x i32> %i.ho, %bin.rdx311
  %i.hq = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx312) ; 3 uses
  %cmp.n313 = icmp eq i32 %i.hh, %n.vec299
  br i1 %cmp.n313, label %._crit_edge.split.us.us.4, label %vec.epilog.iter.check318

vec.epilog.iter.check318:                         ; preds = %middle.block309
  %min.epilog.iters.check319 = icmp eq i32 %i.hi, 0
  br i1 %min.epilog.iters.check319, label %.critedge.us.us.4.preheader, label %vec.epilog.ph320, !prof !138

vec.epilog.ph320:                                 ; preds = %vector.main.loop.iter.check296, %vec.epilog.iter.check318
  %vec.epilog.resume.val314 = phi i32 [ %n.vec299, %vec.epilog.iter.check318 ], [ 0, %vector.main.loop.iter.check296 ]
  %bc.merge.rdx315 = phi i32 [ %i.hq, %vec.epilog.iter.check318 ], [ %.2.lcssa.us.3, %vector.main.loop.iter.check296 ]
  %n.vec321 = and i32 %i.hh, -4                   ; 3 uses
  %i.hr = mul i32 %n.vec321, %i.hd
  %i.hs = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx315, i64 0
  %broadcast.splatinsert322 = insertelement <4 x i32> poison, i32 %i.he, i64 0
  %broadcast.splat323 = shufflevector <4 x i32> %broadcast.splatinsert322, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body324

vec.epilog.vector.body324:                        ; preds = %vec.epilog.vector.body324, %vec.epilog.ph320
  %index325 = phi i32 [ %vec.epilog.resume.val314, %vec.epilog.ph320 ], [ %index.next327, %vec.epilog.vector.body324 ]
  %vec.phi326 = phi <4 x i32> [ %i.hs, %vec.epilog.ph320 ], [ %i.ht, %vec.epilog.vector.body324 ]
  %i.ht = add <4 x i32> %broadcast.splat323, %vec.phi326 ; 2 uses
  %index.next327 = add nuw i32 %index325, 4       ; 2 uses
  %i.hu = icmp eq i32 %index.next327, %n.vec321
  br i1 %i.hu, label %vec.epilog.middle.block328, label %vec.epilog.vector.body324, !llvm.loop !252

vec.epilog.middle.block328:                       ; preds = %vec.epilog.vector.body324
  %i.hv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ht) ; 2 uses
  %cmp.n329 = icmp eq i32 %i.hh, %n.vec321
  br i1 %cmp.n329, label %._crit_edge.split.us.us.4, label %.critedge.us.us.4.preheader

.critedge.us.us.4.preheader:                      ; preds = %iter.check316, %vec.epilog.iter.check318, %vec.epilog.middle.block328
  %.03267.us.us.4.ph = phi i32 [ 0, %iter.check316 ], [ %i.hj, %vec.epilog.iter.check318 ], [ %i.hr, %vec.epilog.middle.block328 ]
  %.266.us.us.4.ph = phi i32 [ %.2.lcssa.us.3, %iter.check316 ], [ %i.hq, %vec.epilog.iter.check318 ], [ %i.hv, %vec.epilog.middle.block328 ]
  br label %.critedge.us.us.4

.critedge.us.us.4:                                ; preds = %.critedge.us.us.4.preheader, %.critedge.us.us.4
  %.03267.us.us.4 = phi i32 [ %i.hx, %.critedge.us.us.4 ], [ %.03267.us.us.4.ph, %.critedge.us.us.4.preheader ]
  %.266.us.us.4 = phi i32 [ %i.hw, %.critedge.us.us.4 ], [ %.266.us.us.4.ph, %.critedge.us.us.4.preheader ]
  %i.hw = add nsw i32 %i.he, %.266.us.us.4        ; 2 uses
  %i.hx = add nsw i32 %i.hd, %.03267.us.us.4      ; 2 uses
  %i.hy = icmp slt i32 %i.hx, %i.ha
  br i1 %i.hy, label %.critedge.us.us.4, label %._crit_edge.split.us.us.4, !llvm.loop !253

._crit_edge.split.us.us.4:                        ; preds = %.critedge.us.us.4, %middle.block309, %vec.epilog.middle.block328, %._crit_edge.split.us.us.3
  %.2.lcssa.us.4 = phi i32 [ %.2.lcssa.us.3, %._crit_edge.split.us.us.3 ], [ %i.hv, %vec.epilog.middle.block328 ], [ %i.hq, %middle.block309 ], [ %i.hw, %.critedge.us.us.4 ] ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.j, i64 1760
  %i.ia = getelementptr inbounds nuw i8, ptr %i.j, i64 1768
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !115
  %i.ic = load ptr, ptr %i.hz, align 8, !tbaa !18
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = lshr exact i64 %i.if, 2
  %i.ih = trunc i64 %i.ig to i32                  ; 3 uses
  %i.ii = icmp sgt i32 %i.ih, 0
  br i1 %i.ii, label %iter.check278, label %._crit_edge.split.us.us.5

iter.check278:                                    ; preds = %._crit_edge.split.us.us.4
  %i.ij = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2256), align 8, !tbaa !89
  %i.ik = add nsw i32 %i.ij, 1                    ; 5 uses
  %i.il = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %smax256 = tail call i32 @llvm.smax.i32(i32 %i.ik, i32 %i.ih)
  %i.im = add nsw i32 %smax256, -1
  %i.in = udiv i32 %i.im, %i.ik
  %i.io = add i32 %i.in, 1                        ; 7 uses
  %min.iters.check257 = icmp ult i32 %i.io, 4
  br i1 %min.iters.check257, label %.critedge.us.us.5.preheader, label %vector.main.loop.iter.check258

vector.main.loop.iter.check258:                   ; preds = %iter.check278
  %min.iters.check259 = icmp ult i32 %i.io, 32
  br i1 %min.iters.check259, label %vec.epilog.ph282, label %vector.ph260

vector.ph260:                                     ; preds = %vector.main.loop.iter.check258
  %i.ip = and i32 %i.io, 28
  %n.vec261 = and i32 %i.io, -32                  ; 4 uses
  %i.iq = mul i32 %n.vec261, %i.ik
  %i.ir = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.4, i64 0
  %broadcast.splatinsert262 = insertelement <8 x i32> poison, i32 %i.il, i64 0
  %broadcast.splat263 = shufflevector <8 x i32> %broadcast.splatinsert262, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph260
  %index265 = phi i32 [ 0, %vector.ph260 ], [ %index.next270, %vector.body264 ]
  %vec.phi266 = phi <8 x i32> [ %i.ir, %vector.ph260 ], [ %i.is, %vector.body264 ]
  %vec.phi267 = phi <8 x i32> [ zeroinitializer, %vector.ph260 ], [ %i.it, %vector.body264 ]
  %vec.phi268 = phi <8 x i32> [ zeroinitializer, %vector.ph260 ], [ %i.iu, %vector.body264 ]
  %vec.phi269 = phi <8 x i32> [ zeroinitializer, %vector.ph260 ], [ %i.iv, %vector.body264 ]
  %i.is = add <8 x i32> %broadcast.splat263, %vec.phi266 ; 2 uses
  %i.it = add <8 x i32> %broadcast.splat263, %vec.phi267 ; 2 uses
  %i.iu = add <8 x i32> %broadcast.splat263, %vec.phi268 ; 2 uses
  %i.iv = add <8 x i32> %broadcast.splat263, %vec.phi269 ; 2 uses
  %index.next270 = add nuw i32 %index265, 32      ; 2 uses
  %i.iw = icmp eq i32 %index.next270, %n.vec261
  br i1 %i.iw, label %middle.block271, label %vector.body264, !llvm.loop !254

middle.block271:                                  ; preds = %vector.body264
  %bin.rdx272 = add <8 x i32> %i.it, %i.is
  %bin.rdx273 = add <8 x i32> %i.iu, %bin.rdx272
  %bin.rdx274 = add <8 x i32> %i.iv, %bin.rdx273
  %i.ix = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx274) ; 3 uses
  %cmp.n275 = icmp eq i32 %i.io, %n.vec261
  br i1 %cmp.n275, label %._crit_edge.split.us.us.5, label %vec.epilog.iter.check280

vec.epilog.iter.check280:                         ; preds = %middle.block271
  %min.epilog.iters.check281 = icmp eq i32 %i.ip, 0
  br i1 %min.epilog.iters.check281, label %.critedge.us.us.5.preheader, label %vec.epilog.ph282, !prof !138

vec.epilog.ph282:                                 ; preds = %vector.main.loop.iter.check258, %vec.epilog.iter.check280
  %vec.epilog.resume.val276 = phi i32 [ %n.vec261, %vec.epilog.iter.check280 ], [ 0, %vector.main.loop.iter.check258 ]
  %bc.merge.rdx277 = phi i32 [ %i.ix, %vec.epilog.iter.check280 ], [ %.2.lcssa.us.4, %vector.main.loop.iter.check258 ]
  %n.vec283 = and i32 %i.io, -4                   ; 3 uses
  %i.iy = mul i32 %n.vec283, %i.ik
  %i.iz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx277, i64 0
  %broadcast.splatinsert284 = insertelement <4 x i32> poison, i32 %i.il, i64 0
  %broadcast.splat285 = shufflevector <4 x i32> %broadcast.splatinsert284, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body286

vec.epilog.vector.body286:                        ; preds = %vec.epilog.vector.body286, %vec.epilog.ph282
  %index287 = phi i32 [ %vec.epilog.resume.val276, %vec.epilog.ph282 ], [ %index.next289, %vec.epilog.vector.body286 ]
  %vec.phi288 = phi <4 x i32> [ %i.iz, %vec.epilog.ph282 ], [ %i.ja, %vec.epilog.vector.body286 ]
  %i.ja = add <4 x i32> %broadcast.splat285, %vec.phi288 ; 2 uses
  %index.next289 = add nuw i32 %index287, 4       ; 2 uses
  %i.jb = icmp eq i32 %index.next289, %n.vec283
  br i1 %i.jb, label %vec.epilog.middle.block290, label %vec.epilog.vector.body286, !llvm.loop !255

vec.epilog.middle.block290:                       ; preds = %vec.epilog.vector.body286
  %i.jc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ja) ; 2 uses
  %cmp.n291 = icmp eq i32 %i.io, %n.vec283
  br i1 %cmp.n291, label %._crit_edge.split.us.us.5, label %.critedge.us.us.5.preheader

.critedge.us.us.5.preheader:                      ; preds = %iter.check278, %vec.epilog.iter.check280, %vec.epilog.middle.block290
  %.03267.us.us.5.ph = phi i32 [ 0, %iter.check278 ], [ %i.iq, %vec.epilog.iter.check280 ], [ %i.iy, %vec.epilog.middle.block290 ]
  %.266.us.us.5.ph = phi i32 [ %.2.lcssa.us.4, %iter.check278 ], [ %i.ix, %vec.epilog.iter.check280 ], [ %i.jc, %vec.epilog.middle.block290 ]
  br label %.critedge.us.us.5

.critedge.us.us.5:                                ; preds = %.critedge.us.us.5.preheader, %.critedge.us.us.5
  %.03267.us.us.5 = phi i32 [ %i.je, %.critedge.us.us.5 ], [ %.03267.us.us.5.ph, %.critedge.us.us.5.preheader ]
  %.266.us.us.5 = phi i32 [ %i.jd, %.critedge.us.us.5 ], [ %.266.us.us.5.ph, %.critedge.us.us.5.preheader ]
  %i.jd = add nsw i32 %i.il, %.266.us.us.5        ; 2 uses
  %i.je = add nsw i32 %i.ik, %.03267.us.us.5      ; 2 uses
  %i.jf = icmp slt i32 %i.je, %i.ih
  br i1 %i.jf, label %.critedge.us.us.5, label %._crit_edge.split.us.us.5, !llvm.loop !256

._crit_edge.split.us.us.5:                        ; preds = %.critedge.us.us.5, %middle.block271, %vec.epilog.middle.block290, %._crit_edge.split.us.us.4
  %.2.lcssa.us.5 = phi i32 [ %.2.lcssa.us.4, %._crit_edge.split.us.us.4 ], [ %i.jc, %vec.epilog.middle.block290 ], [ %i.ix, %middle.block271 ], [ %i.jd, %.critedge.us.us.5 ] ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.j, i64 1784
  %i.jh = getelementptr inbounds nuw i8, ptr %i.j, i64 1792
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !115
  %i.jj = load ptr, ptr %i.jg, align 8, !tbaa !18
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl
  %i.jn = lshr exact i64 %i.jm, 2
  %i.jo = trunc i64 %i.jn to i32                  ; 3 uses
  %i.jp = icmp sgt i32 %i.jo, 0
  br i1 %i.jp, label %iter.check240, label %._crit_edge.split.us.us.6

iter.check240:                                    ; preds = %._crit_edge.split.us.us.5
  %i.jq = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2288), align 8, !tbaa !89
  %i.jr = add nsw i32 %i.jq, 1                    ; 5 uses
  %i.js = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %smax218 = tail call i32 @llvm.smax.i32(i32 %i.jr, i32 %i.jo)
  %i.jt = add nsw i32 %smax218, -1
  %i.ju = udiv i32 %i.jt, %i.jr
  %i.jv = add i32 %i.ju, 1                        ; 7 uses
  %min.iters.check219 = icmp ult i32 %i.jv, 4
  br i1 %min.iters.check219, label %.critedge.us.us.6.preheader, label %vector.main.loop.iter.check220

vector.main.loop.iter.check220:                   ; preds = %iter.check240
  %min.iters.check221 = icmp ult i32 %i.jv, 32
  br i1 %min.iters.check221, label %vec.epilog.ph244, label %vector.ph222

vector.ph222:                                     ; preds = %vector.main.loop.iter.check220
  %i.jw = and i32 %i.jv, 28
  %n.vec223 = and i32 %i.jv, -32                  ; 4 uses
  %i.jx = mul i32 %n.vec223, %i.jr
  %i.jy = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.5, i64 0
  %broadcast.splatinsert224 = insertelement <8 x i32> poison, i32 %i.js, i64 0
  %broadcast.splat225 = shufflevector <8 x i32> %broadcast.splatinsert224, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph222
  %index227 = phi i32 [ 0, %vector.ph222 ], [ %index.next232, %vector.body226 ]
  %vec.phi228 = phi <8 x i32> [ %i.jy, %vector.ph222 ], [ %i.jz, %vector.body226 ]
  %vec.phi229 = phi <8 x i32> [ zeroinitializer, %vector.ph222 ], [ %i.ka, %vector.body226 ]
  %vec.phi230 = phi <8 x i32> [ zeroinitializer, %vector.ph222 ], [ %i.kb, %vector.body226 ]
  %vec.phi231 = phi <8 x i32> [ zeroinitializer, %vector.ph222 ], [ %i.kc, %vector.body226 ]
  %i.jz = add <8 x i32> %broadcast.splat225, %vec.phi228 ; 2 uses
  %i.ka = add <8 x i32> %broadcast.splat225, %vec.phi229 ; 2 uses
  %i.kb = add <8 x i32> %broadcast.splat225, %vec.phi230 ; 2 uses
  %i.kc = add <8 x i32> %broadcast.splat225, %vec.phi231 ; 2 uses
  %index.next232 = add nuw i32 %index227, 32      ; 2 uses
  %i.kd = icmp eq i32 %index.next232, %n.vec223
  br i1 %i.kd, label %middle.block233, label %vector.body226, !llvm.loop !257

middle.block233:                                  ; preds = %vector.body226
  %bin.rdx234 = add <8 x i32> %i.ka, %i.jz
  %bin.rdx235 = add <8 x i32> %i.kb, %bin.rdx234
  %bin.rdx236 = add <8 x i32> %i.kc, %bin.rdx235
  %i.ke = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx236) ; 3 uses
  %cmp.n237 = icmp eq i32 %i.jv, %n.vec223
  br i1 %cmp.n237, label %._crit_edge.split.us.us.6, label %vec.epilog.iter.check242

vec.epilog.iter.check242:                         ; preds = %middle.block233
  %min.epilog.iters.check243 = icmp eq i32 %i.jw, 0
  br i1 %min.epilog.iters.check243, label %.critedge.us.us.6.preheader, label %vec.epilog.ph244, !prof !138

vec.epilog.ph244:                                 ; preds = %vector.main.loop.iter.check220, %vec.epilog.iter.check242
  %vec.epilog.resume.val238 = phi i32 [ %n.vec223, %vec.epilog.iter.check242 ], [ 0, %vector.main.loop.iter.check220 ]
  %bc.merge.rdx239 = phi i32 [ %i.ke, %vec.epilog.iter.check242 ], [ %.2.lcssa.us.5, %vector.main.loop.iter.check220 ]
  %n.vec245 = and i32 %i.jv, -4                   ; 3 uses
  %i.kf = mul i32 %n.vec245, %i.jr
  %i.kg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx239, i64 0
  %broadcast.splatinsert246 = insertelement <4 x i32> poison, i32 %i.js, i64 0
  %broadcast.splat247 = shufflevector <4 x i32> %broadcast.splatinsert246, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body248

vec.epilog.vector.body248:                        ; preds = %vec.epilog.vector.body248, %vec.epilog.ph244
  %index249 = phi i32 [ %vec.epilog.resume.val238, %vec.epilog.ph244 ], [ %index.next251, %vec.epilog.vector.body248 ]
  %vec.phi250 = phi <4 x i32> [ %i.kg, %vec.epilog.ph244 ], [ %i.kh, %vec.epilog.vector.body248 ]
  %i.kh = add <4 x i32> %broadcast.splat247, %vec.phi250 ; 2 uses
  %index.next251 = add nuw i32 %index249, 4       ; 2 uses
  %i.ki = icmp eq i32 %index.next251, %n.vec245
  br i1 %i.ki, label %vec.epilog.middle.block252, label %vec.epilog.vector.body248, !llvm.loop !258

vec.epilog.middle.block252:                       ; preds = %vec.epilog.vector.body248
  %i.kj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.kh) ; 2 uses
  %cmp.n253 = icmp eq i32 %i.jv, %n.vec245
  br i1 %cmp.n253, label %._crit_edge.split.us.us.6, label %.critedge.us.us.6.preheader

.critedge.us.us.6.preheader:                      ; preds = %iter.check240, %vec.epilog.iter.check242, %vec.epilog.middle.block252
  %.03267.us.us.6.ph = phi i32 [ 0, %iter.check240 ], [ %i.jx, %vec.epilog.iter.check242 ], [ %i.kf, %vec.epilog.middle.block252 ]
  %.266.us.us.6.ph = phi i32 [ %.2.lcssa.us.5, %iter.check240 ], [ %i.ke, %vec.epilog.iter.check242 ], [ %i.kj, %vec.epilog.middle.block252 ]
  br label %.critedge.us.us.6

.critedge.us.us.6:                                ; preds = %.critedge.us.us.6.preheader, %.critedge.us.us.6
  %.03267.us.us.6 = phi i32 [ %i.kl, %.critedge.us.us.6 ], [ %.03267.us.us.6.ph, %.critedge.us.us.6.preheader ]
  %.266.us.us.6 = phi i32 [ %i.kk, %.critedge.us.us.6 ], [ %.266.us.us.6.ph, %.critedge.us.us.6.preheader ]
  %i.kk = add nsw i32 %i.js, %.266.us.us.6        ; 2 uses
  %i.kl = add nsw i32 %i.jr, %.03267.us.us.6      ; 2 uses
  %i.km = icmp slt i32 %i.kl, %i.jo
  br i1 %i.km, label %.critedge.us.us.6, label %._crit_edge.split.us.us.6, !llvm.loop !259

._crit_edge.split.us.us.6:                        ; preds = %.critedge.us.us.6, %middle.block233, %vec.epilog.middle.block252, %._crit_edge.split.us.us.5
  %.2.lcssa.us.6 = phi i32 [ %.2.lcssa.us.5, %._crit_edge.split.us.us.5 ], [ %i.kj, %vec.epilog.middle.block252 ], [ %i.ke, %middle.block233 ], [ %i.kk, %.critedge.us.us.6 ] ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.j, i64 1808
  %i.ko = getelementptr inbounds nuw i8, ptr %i.j, i64 1816
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !115
  %i.kq = load ptr, ptr %i.kn, align 8, !tbaa !18
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = sub i64 %i.kr, %i.ks
  %i.ku = lshr exact i64 %i.kt, 2
  %i.kv = trunc i64 %i.ku to i32                  ; 3 uses
  %i.kw = icmp sgt i32 %i.kv, 0
  br i1 %i.kw, label %iter.check202, label %._crit_edge.split.us.us.7

iter.check202:                                    ; preds = %._crit_edge.split.us.us.6
  %i.kx = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2320), align 8, !tbaa !89
  %i.ky = add nsw i32 %i.kx, 1                    ; 5 uses
  %i.kz = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %smax180 = tail call i32 @llvm.smax.i32(i32 %i.ky, i32 %i.kv)
  %i.la = add nsw i32 %smax180, -1
  %i.lb = udiv i32 %i.la, %i.ky
  %i.lc = add i32 %i.lb, 1                        ; 7 uses
  %min.iters.check181 = icmp ult i32 %i.lc, 4
  br i1 %min.iters.check181, label %.critedge.us.us.7.preheader, label %vector.main.loop.iter.check182

vector.main.loop.iter.check182:                   ; preds = %iter.check202
  %min.iters.check183 = icmp ult i32 %i.lc, 32
  br i1 %min.iters.check183, label %vec.epilog.ph206, label %vector.ph184

vector.ph184:                                     ; preds = %vector.main.loop.iter.check182
  %i.ld = and i32 %i.lc, 28
  %n.vec185 = and i32 %i.lc, -32                  ; 4 uses
  %i.le = mul i32 %n.vec185, %i.ky
  %i.lf = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.6, i64 0
  %broadcast.splatinsert186 = insertelement <8 x i32> poison, i32 %i.kz, i64 0
  %broadcast.splat187 = shufflevector <8 x i32> %broadcast.splatinsert186, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph184
  %index189 = phi i32 [ 0, %vector.ph184 ], [ %index.next194, %vector.body188 ]
  %vec.phi190.a = phi <8 x i32> [ %i.lf, %vector.ph184 ], [ %i.lg, %vector.body188 ]
  %vec.phi191 = phi <8 x i32> [ zeroinitializer, %vector.ph184 ], [ %i.lh, %vector.body188 ]
  %vec.phi192 = phi <8 x i32> [ zeroinitializer, %vector.ph184 ], [ %i.li, %vector.body188 ]
  %vec.phi193 = phi <8 x i32> [ zeroinitializer, %vector.ph184 ], [ %i.lj, %vector.body188 ]
  %i.lg = add <8 x i32> %broadcast.splat187, %vec.phi190.a ; 2 uses
  %i.lh = add <8 x i32> %broadcast.splat187, %vec.phi191 ; 2 uses
  %i.li = add <8 x i32> %broadcast.splat187, %vec.phi192 ; 2 uses
  %i.lj = add <8 x i32> %broadcast.splat187, %vec.phi193 ; 2 uses
  %index.next194 = add nuw i32 %index189, 32      ; 2 uses
  %i.lk = icmp eq i32 %index.next194, %n.vec185
  br i1 %i.lk, label %middle.block195, label %vector.body188, !llvm.loop !260

middle.block195:                                  ; preds = %vector.body188
  %bin.rdx196 = add <8 x i32> %i.lh, %i.lg
  %bin.rdx197 = add <8 x i32> %i.li, %bin.rdx196
  %bin.rdx198 = add <8 x i32> %i.lj, %bin.rdx197
  %i.ll = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx198) ; 3 uses
  %cmp.n199 = icmp eq i32 %i.lc, %n.vec185
  br i1 %cmp.n199, label %._crit_edge.split.us.us.7, label %vec.epilog.iter.check204

vec.epilog.iter.check204:                         ; preds = %middle.block195
  %min.epilog.iters.check205 = icmp eq i32 %i.ld, 0
  br i1 %min.epilog.iters.check205, label %.critedge.us.us.7.preheader, label %vec.epilog.ph206, !prof !138

vec.epilog.ph206:                                 ; preds = %vector.main.loop.iter.check182, %vec.epilog.iter.check204
  %vec.epilog.resume.val200 = phi i32 [ %n.vec185, %vec.epilog.iter.check204 ], [ 0, %vector.main.loop.iter.check182 ]
  %bc.merge.rdx201 = phi i32 [ %i.ll, %vec.epilog.iter.check204 ], [ %.2.lcssa.us.6, %vector.main.loop.iter.check182 ]
  %n.vec207 = and i32 %i.lc, -4                   ; 3 uses
  %i.lm = mul i32 %n.vec207, %i.ky
  %i.ln = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx201, i64 0
  %broadcast.splatinsert208 = insertelement <4 x i32> poison, i32 %i.kz, i64 0
  %broadcast.splat209 = shufflevector <4 x i32> %broadcast.splatinsert208, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body210

vec.epilog.vector.body210:                        ; preds = %vec.epilog.vector.body210, %vec.epilog.ph206
  %index211 = phi i32 [ %vec.epilog.resume.val200, %vec.epilog.ph206 ], [ %index.next213, %vec.epilog.vector.body210 ]
  %vec.phi212 = phi <4 x i32> [ %i.ln, %vec.epilog.ph206 ], [ %i.lo, %vec.epilog.vector.body210 ]
  %i.lo = add <4 x i32> %broadcast.splat209, %vec.phi212 ; 2 uses
  %index.next213 = add nuw i32 %index211, 4       ; 2 uses
  %i.lp = icmp eq i32 %index.next213, %n.vec207
  br i1 %i.lp, label %vec.epilog.middle.block214, label %vec.epilog.vector.body210, !llvm.loop !261

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body210
  %i.lq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.lo) ; 2 uses
  %cmp.n215 = icmp eq i32 %i.lc, %n.vec207
  br i1 %cmp.n215, label %._crit_edge.split.us.us.7, label %.critedge.us.us.7.preheader

.critedge.us.us.7.preheader:                      ; preds = %iter.check202, %vec.epilog.iter.check204, %vec.epilog.middle.block214
  %.03267.us.us.7.ph = phi i32 [ 0, %iter.check202 ], [ %i.le, %vec.epilog.iter.check204 ], [ %i.lm, %vec.epilog.middle.block214 ]
  %.266.us.us.7.ph = phi i32 [ %.2.lcssa.us.6, %iter.check202 ], [ %i.ll, %vec.epilog.iter.check204 ], [ %i.lq, %vec.epilog.middle.block214 ]
  br label %.critedge.us.us.7

.critedge.us.us.7:                                ; preds = %.critedge.us.us.7.preheader, %.critedge.us.us.7
  %.03267.us.us.7 = phi i32 [ %i.ls, %.critedge.us.us.7 ], [ %.03267.us.us.7.ph, %.critedge.us.us.7.preheader ]
  %.266.us.us.7 = phi i32 [ %i.lr, %.critedge.us.us.7 ], [ %.266.us.us.7.ph, %.critedge.us.us.7.preheader ]
  %i.lr = add nsw i32 %i.kz, %.266.us.us.7        ; 2 uses
  %i.ls = add nsw i32 %i.ky, %.03267.us.us.7      ; 2 uses
  %i.lt = icmp slt i32 %i.ls, %i.kv
  br i1 %i.lt, label %.critedge.us.us.7, label %._crit_edge.split.us.us.7, !llvm.loop !262

._crit_edge.split.us.us.7:                        ; preds = %.critedge.us.us.7, %middle.block195, %vec.epilog.middle.block214, %._crit_edge.split.us.us.6
  %.2.lcssa.us.7 = phi i32 [ %.2.lcssa.us.6, %._crit_edge.split.us.us.6 ], [ %i.lq, %vec.epilog.middle.block214 ], [ %i.ll, %middle.block195 ], [ %i.lr, %.critedge.us.us.7 ] ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.j, i64 1832
  %i.lv = getelementptr inbounds nuw i8, ptr %i.j, i64 1840
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !115
  %i.lx = load ptr, ptr %i.lu, align 8, !tbaa !18
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = sub i64 %i.ly, %i.lz
  %i.mb = lshr exact i64 %i.ma, 2
  %i.mc = trunc i64 %i.mb to i32                  ; 3 uses
  %i.md = icmp sgt i32 %i.mc, 0
  br i1 %i.md, label %iter.check164, label %._crit_edge.split.us.us.8

iter.check164:                                    ; preds = %._crit_edge.split.us.us.7
  %i.me = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2352), align 8, !tbaa !89
  %i.mf = add nsw i32 %i.me, 1                    ; 5 uses
  %i.mg = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %smax142 = tail call i32 @llvm.smax.i32(i32 %i.mf, i32 %i.mc)
  %i.mh = add nsw i32 %smax142, -1
  %i.mi = udiv i32 %i.mh, %i.mf
  %i.mj = add i32 %i.mi, 1                        ; 7 uses
  %min.iters.check143.a = icmp ult i32 %i.mj, 4
  br i1 %min.iters.check143.a, label %.critedge.us.us.8.preheader, label %vector.main.loop.iter.check144

vector.main.loop.iter.check144:                   ; preds = %iter.check164
  %min.iters.check145 = icmp ult i32 %i.mj, 32
  br i1 %min.iters.check145, label %vec.epilog.ph168, label %vector.ph146

vector.ph146:                                     ; preds = %vector.main.loop.iter.check144
  %i.mk = and i32 %i.mj, 28
  %n.vec147 = and i32 %i.mj, -32                  ; 4 uses
  %i.ml = mul i32 %n.vec147, %i.mf
  %i.mm = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.7, i64 0
  %broadcast.splatinsert148 = insertelement <8 x i32> poison, i32 %i.mg, i64 0
  %broadcast.splat149 = shufflevector <8 x i32> %broadcast.splatinsert148, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph146
  %index151 = phi i32 [ 0, %vector.ph146 ], [ %index.next156, %vector.body150 ]
  %vec.phi152.a = phi <8 x i32> [ %i.mm, %vector.ph146 ], [ %i.mn, %vector.body150 ]
  %vec.phi153.a = phi <8 x i32> [ zeroinitializer, %vector.ph146 ], [ %i.mo, %vector.body150 ]
  %vec.phi154 = phi <8 x i32> [ zeroinitializer, %vector.ph146 ], [ %i.mp, %vector.body150 ]
  %vec.phi155 = phi <8 x i32> [ zeroinitializer, %vector.ph146 ], [ %i.mq, %vector.body150 ]
  %i.mn = add <8 x i32> %broadcast.splat149, %vec.phi152.a ; 2 uses
  %i.mo = add <8 x i32> %broadcast.splat149, %vec.phi153.a ; 2 uses
  %i.mp = add <8 x i32> %broadcast.splat149, %vec.phi154 ; 2 uses
  %i.mq = add <8 x i32> %broadcast.splat149, %vec.phi155 ; 2 uses
  %index.next156 = add nuw i32 %index151, 32      ; 2 uses
  %i.mr = icmp eq i32 %index.next156, %n.vec147
  br i1 %i.mr, label %middle.block157, label %vector.body150, !llvm.loop !263

middle.block157:                                  ; preds = %vector.body150
  %bin.rdx158.a = add <8 x i32> %i.mo, %i.mn
  %bin.rdx159 = add <8 x i32> %i.mp, %bin.rdx158.a
  %bin.rdx160 = add <8 x i32> %i.mq, %bin.rdx159
  %i.ms = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx160) ; 3 uses
  %cmp.n161 = icmp eq i32 %i.mj, %n.vec147
  br i1 %cmp.n161, label %._crit_edge.split.us.us.8, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block157
  %min.epilog.iters.check167 = icmp eq i32 %i.mk, 0
  br i1 %min.epilog.iters.check167, label %.critedge.us.us.8.preheader, label %vec.epilog.ph168, !prof !138

vec.epilog.ph168:                                 ; preds = %vector.main.loop.iter.check144, %vec.epilog.iter.check166
  %vec.epilog.resume.val162 = phi i32 [ %n.vec147, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check144 ]
  %bc.merge.rdx163 = phi i32 [ %i.ms, %vec.epilog.iter.check166 ], [ %.2.lcssa.us.7, %vector.main.loop.iter.check144 ]
  %n.vec169 = and i32 %i.mj, -4                   ; 3 uses
  %i.mt = mul i32 %n.vec169, %i.mf
  %i.mu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx163, i64 0
  %broadcast.splatinsert170 = insertelement <4 x i32> poison, i32 %i.mg, i64 0
  %broadcast.splat171 = shufflevector <4 x i32> %broadcast.splatinsert170, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph168
  %index173 = phi i32 [ %vec.epilog.resume.val162, %vec.epilog.ph168 ], [ %index.next175, %vec.epilog.vector.body172 ]
  %vec.phi174 = phi <4 x i32> [ %i.mu, %vec.epilog.ph168 ], [ %i.mv, %vec.epilog.vector.body172 ]
  %i.mv = add <4 x i32> %broadcast.splat171, %vec.phi174 ; 2 uses
  %index.next175 = add nuw i32 %index173, 4       ; 2 uses
  %i.mw = icmp eq i32 %index.next175, %n.vec169
  br i1 %i.mw, label %vec.epilog.middle.block176, label %vec.epilog.vector.body172, !llvm.loop !264

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body172
  %i.mx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.mv) ; 2 uses
  %cmp.n177 = icmp eq i32 %i.mj, %n.vec169
  br i1 %cmp.n177, label %._crit_edge.split.us.us.8, label %.critedge.us.us.8.preheader

.critedge.us.us.8.preheader:                      ; preds = %iter.check164, %vec.epilog.iter.check166, %vec.epilog.middle.block176
  %.03267.us.us.8.ph = phi i32 [ 0, %iter.check164 ], [ %i.ml, %vec.epilog.iter.check166 ], [ %i.mt, %vec.epilog.middle.block176 ]
  %.266.us.us.8.ph = phi i32 [ %.2.lcssa.us.7, %iter.check164 ], [ %i.ms, %vec.epilog.iter.check166 ], [ %i.mx, %vec.epilog.middle.block176 ]
  br label %.critedge.us.us.8

.critedge.us.us.8:                                ; preds = %.critedge.us.us.8.preheader, %.critedge.us.us.8
  %.03267.us.us.8 = phi i32 [ %i.mz, %.critedge.us.us.8 ], [ %.03267.us.us.8.ph, %.critedge.us.us.8.preheader ]
  %.266.us.us.8 = phi i32 [ %i.my, %.critedge.us.us.8 ], [ %.266.us.us.8.ph, %.critedge.us.us.8.preheader ]
  %i.my = add nsw i32 %i.mg, %.266.us.us.8        ; 2 uses
  %i.mz = add nsw i32 %i.mf, %.03267.us.us.8      ; 2 uses
  %i.na = icmp slt i32 %i.mz, %i.mc
  br i1 %i.na, label %.critedge.us.us.8, label %._crit_edge.split.us.us.8, !llvm.loop !265

._crit_edge.split.us.us.8:                        ; preds = %.critedge.us.us.8, %middle.block157, %vec.epilog.middle.block176, %._crit_edge.split.us.us.7
  %.2.lcssa.us.8 = phi i32 [ %.2.lcssa.us.7, %._crit_edge.split.us.us.7 ], [ %i.mx, %vec.epilog.middle.block176 ], [ %i.ms, %middle.block157 ], [ %i.my, %.critedge.us.us.8 ] ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.j, i64 1856
  %i.nc = getelementptr inbounds nuw i8, ptr %i.j, i64 1864
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !115
  %i.ne = load ptr, ptr %i.nb, align 8, !tbaa !18
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = sub i64 %i.nf, %i.ng
  %i.ni = lshr exact i64 %i.nh, 2
  %i.nj = trunc i64 %i.ni to i32                  ; 3 uses
  %i.nk = icmp sgt i32 %i.nj, 0
  br i1 %i.nk, label %iter.check, label %.split.us

iter.check:                                       ; preds = %._crit_edge.split.us.us.8
  %i.nl = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2384), align 8, !tbaa !89
  %i.nm = add nsw i32 %i.nl, 1                    ; 5 uses
  %i.nn = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %smax126 = tail call i32 @llvm.smax.i32(i32 %i.nm, i32 %i.nj)
  %i.no = add nsw i32 %smax126, -1
  %i.np = udiv i32 %i.no, %i.nm
  %i.nq = add i32 %i.np, 1                        ; 7 uses
  %min.iters.check = icmp ult i32 %i.nq, 4
  br i1 %min.iters.check, label %.critedge.us.us.9.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check127 = icmp ult i32 %i.nq, 32
  br i1 %min.iters.check127, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nr = and i32 %i.nq, 28
  %n.vec = and i32 %i.nq, -32                     ; 4 uses
  %i.ns = mul i32 %n.vec, %i.nm
  %i.nt = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.8, i64 0
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.nn, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i32> [ %i.nt, %vector.ph ], [ %i.nu, %vector.body ]
  %vec.phi128.a = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.nv, %vector.body ]
  %vec.phi129.a = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.nw, %vector.body ]
  %vec.phi130 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.nx, %vector.body ]
  %i.nu = add <8 x i32> %broadcast.splat, %vec.phi ; 2 uses
  %i.nv = add <8 x i32> %broadcast.splat, %vec.phi128.a ; 2 uses
  %i.nw = add <8 x i32> %broadcast.splat, %vec.phi129.a ; 2 uses
  %i.nx = add <8 x i32> %broadcast.splat, %vec.phi130 ; 2 uses
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.ny = icmp eq i32 %index.next, %n.vec
  br i1 %i.ny, label %middle.block, label %vector.body, !llvm.loop !266

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.nv, %i.nu
  %bin.rdx131.a = add <8 x i32> %i.nw, %bin.rdx
  %bin.rdx132 = add <8 x i32> %i.nx, %bin.rdx131.a
  %i.nz = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx132) ; 3 uses
  %cmp.n = icmp eq i32 %i.nq, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.nr, 0
  br i1 %min.epilog.iters.check, label %.critedge.us.us.9.preheader, label %vec.epilog.ph, !prof !138

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.nz, %vec.epilog.iter.check ], [ %.2.lcssa.us.8, %vector.main.loop.iter.check ]
  %n.vec133 = and i32 %i.nq, -4                   ; 3 uses
  %i.oa = mul i32 %n.vec133, %i.nm
  %i.ob = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert134 = insertelement <4 x i32> poison, i32 %i.nn, i64 0
  %broadcast.splat135 = shufflevector <4 x i32> %broadcast.splatinsert134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index136 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %vec.epilog.vector.body ]
  %vec.phi137 = phi <4 x i32> [ %i.ob, %vec.epilog.ph ], [ %i.oc, %vec.epilog.vector.body ]
  %i.oc = add <4 x i32> %broadcast.splat135, %vec.phi137 ; 2 uses
  %index.next138 = add nuw i32 %index136, 4       ; 2 uses
  %i.od = icmp eq i32 %index.next138, %n.vec133
  br i1 %i.od, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !267

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.oe = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.oc) ; 2 uses
  %cmp.n139 = icmp eq i32 %i.nq, %n.vec133
  br i1 %cmp.n139, label %.split.us, label %.critedge.us.us.9.preheader

.critedge.us.us.9.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03267.us.us.9.ph = phi i32 [ 0, %iter.check ], [ %i.ns, %vec.epilog.iter.check ], [ %i.oa, %vec.epilog.middle.block ]
  %.266.us.us.9.ph = phi i32 [ %.2.lcssa.us.8, %iter.check ], [ %i.nz, %vec.epilog.iter.check ], [ %i.oe, %vec.epilog.middle.block ]
  br label %.critedge.us.us.9

.critedge.us.us.9:                                ; preds = %.critedge.us.us.9.preheader, %.critedge.us.us.9
  %.03267.us.us.9 = phi i32 [ %i.og, %.critedge.us.us.9 ], [ %.03267.us.us.9.ph, %.critedge.us.us.9.preheader ]
  %.266.us.us.9 = phi i32 [ %i.of, %.critedge.us.us.9 ], [ %.266.us.us.9.ph, %.critedge.us.us.9.preheader ]
  %i.of = add nsw i32 %i.nn, %.266.us.us.9        ; 2 uses
  %i.og = add nsw i32 %i.nm, %.03267.us.us.9      ; 2 uses
  %i.oh = icmp slt i32 %i.og, %i.nj
  br i1 %i.oh, label %.critedge.us.us.9, label %.split.us, !llvm.loop !268

.split.us:                                        ; preds = %._crit_edge.split, %.critedge.us.us.9, %middle.block, %vec.epilog.middle.block, %._crit_edge.split.us.us.8
  %.us-phi71 = phi i32 [ %i.of, %.critedge.us.us.9 ], [ %.2.lcssa.us.8, %._crit_edge.split.us.us.8 ], [ %i.oe, %vec.epilog.middle.block ], [ %i.nz, %middle.block ], [ %.2.lcssa, %._crit_edge.split ] ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %.sroa.049.0, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIiSaIiEED2Ev.exit46, label %bb.h

bb.h:                                             ; preds = %.split.us
  %i.oi = ptrtoint ptr %.sroa.13.0 to i64
  %i.oj = ptrtoint ptr %.sroa.049.0 to i64
  %i.ok = sub i64 %i.oi, %i.oj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.0, i64 noundef %i.ok) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit46

_ZNSt6vectorIiSaIiEED2Ev.exit46:                  ; preds = %.split.us, %bb.h
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.058.073, i64 56 ; 2 uses
  %.not62 = icmp eq ptr %i.ol, %i.d
  br i1 %.not62, label %._crit_edge, label %bb.b

_ZNSt6vectorIiSaIiEED2Ev.exit.split:              ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %._crit_edge.split
  %.033.idx70 = phi i64 [ %.033.add, %._crit_edge.split ], [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %.13569 = phi i32 [ %.2.lcssa, %._crit_edge.split ], [ %.03474, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %.033.ptr = getelementptr inbounds nuw i8, ptr @_ZN3gmxL18vSiteFunctionTypesE, i64 %.033.idx70
  %i.om = load i32, ptr %.033.ptr, align 4, !tbaa !86
  %i.on = sext i32 %i.om to i64                   ; 2 uses
  %i.oo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.on ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !115
  %i.or = load ptr, ptr %i.oo, align 8, !tbaa !18 ; 3 uses
  %i.os = ptrtoint ptr %i.oq to i64
  %i.ot = ptrtoint ptr %i.or to i64
  %i.ou = sub i64 %i.os, %i.ot
  %i.ov = lshr exact i64 %i.ou, 2                 ; 2 uses
  %i.ow = trunc i64 %i.ov to i32
  %i.ox = icmp sgt i32 %i.ow, 0
  br i1 %i.ox, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.split
  %i.oy = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.on
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !89 ; 3 uses
  %i.pb = add i32 %i.pa, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.pa, i32 1)
  %i.pc = sext i32 %i.pb to i64
  %i.pd = and i64 %i.ov, 2147483647
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not122 = icmp slt i32 %i.pa, 2
  br label %bb.i

._crit_edge.split:                                ; preds = %.loopexit, %_ZNSt6vectorIiSaIiEED2Ev.exit.split
  %.2.lcssa = phi i32 [ %.13569, %_ZNSt6vectorIiSaIiEED2Ev.exit.split ], [ %.3, %.loopexit ] ; 2 uses
  %.033.add = add nuw nsw i64 %.033.idx70, 4      ; 2 uses
  %.not = icmp eq i64 %.033.add, 40
  br i1 %.not, label %.split.us, label %_ZNSt6vectorIiSaIiEED2Ev.exit.split

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv80 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next81, %.loopexit ] ; 2 uses
  %.266 = phi i32 [ %.13569, %.lr.ph ], [ %.3, %.loopexit ] ; 3 uses
  %i.pe = getelementptr [4 x i8], ptr %i.or, i64 %indvars.iv80
  %i.pf = getelementptr i8, ptr %i.pe, i64 4
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !90
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.049.0, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !90
  br i1 %exitcond.not122, label %.loopexit, label %.lr.ph125

bb.j:                                             ; preds = %.lr.ph125
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph125, !llvm.loop !269

.lr.ph125:                                        ; preds = %bb.i, %bb.j
  %indvars.iv123 = phi i64 [ %indvars.iv.next, %bb.j ], [ 1, %bb.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv123, 1 ; 3 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv.next
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !90
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.049.0, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !90
  %.not36 = icmp eq i32 %i.po, %i.pj
  br i1 %.not36, label %bb.j, label %.critedge.loopexit, !llvm.loop !269

.critedge.loopexit:                               ; preds = %.lr.ph125
  %i.pp = load i32, ptr %i.bp, align 4, !tbaa !116
  %i.pq = add nsw i32 %i.pp, %.266
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.i, %.critedge.loopexit
  %.3 = phi i32 [ %i.pq, %.critedge.loopexit ], [ %.266, %bb.i ], [ %.266, %bb.j ] ; 2 uses
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, %i.pc ; 2 uses
  %i.pr = icmp slt i64 %indvars.iv.next81, %i.pd
  br i1 %i.pr, label %bb.i, label %._crit_edge.split, !llvm.loop !270
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19checkVsiteHierarchyB5cxx11ERK10gmx_mtop_t(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !278  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !278  ; 2 uses
  %.not134160 = icmp eq ptr %i.e, %i.g
  br i1 %.not134160, label %._crit_edge164, label %.lr.ph163

.lr.ph163:                                        ; preds = %bb.a, %_ZNSt6vectorI19InteractionFunctionSaIS0_EED2Ev.exit101.thread
  %.sroa.0109.0161 = phi ptr [ %i.dv, %_ZNSt6vectorI19InteractionFunctionSaIS0_EED2Ev.exit101.thread ], [ %i.e, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0109.0161, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !129  ; 3 uses
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = icmp slt i32 %i.i, 0
  br i1 %i.k, label %.noexc, label %_ZNSt6vectorI19InteractionFunctionSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

.noexc:                                           ; preds = %.lr.ph163
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #32
  unreachable

_ZNSt6vectorI19InteractionFunctionSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %.lr.ph163
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI19InteractionFunctionSaIS0_EEC2EmRKS0_RKS1_.exit, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

end_hunk_0
