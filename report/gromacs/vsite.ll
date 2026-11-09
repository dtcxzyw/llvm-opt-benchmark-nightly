Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/vsite?download=true
inline.NumInlined: 3272
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN3gmx27countInterUpdategroupVsitesERK10gmx_mtop_tNS_8ArrayRefIKNS_17RangePartitioningEEE:bb.a
.noexc:                                           ; preds = %bb.c
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.64, i32 noundef 111) #33
  unreachable

_ZNK3gmx17RangePartitioning9fullRangeEv.exit.i:   ; preds = %bb.c
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp slt i32 %i.q, 0
  br i1 %i.s, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %_ZNK3gmx17RangePartitioning9fullRangeEv.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #33
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNK3gmx17RangePartitioning9fullRangeEv.exit.i
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %.noexc12.i

.noexc12.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.t = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #34 ; 4 uses
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
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.64, i32 noundef 111) #33
          to label %.noexc18.i unwind label %bb.f, !noalias !271

.noexc18.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.lr.ph.i
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.am
  %.not5.i.i.i.i.i = icmp eq i32 %i.aj, %i.al
  br i1 %.not5.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, label %iter.check485

iter.check485:                                    ; preds = %bb.e
  %i.ao = sext i32 %i.aj to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.ao ; 5 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  %i.ar = shl nsw i64 %i.am, 2
  %i.as = add nsw i64 %i.ar, -4
  %i.at = shl nsw i64 %i.ao, 2
  %i.au = sub nsw i64 %i.as, %i.at                ; 3 uses
  %i.av = lshr exact i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 5 uses
  %min.iters.check473 = icmp ult i64 %i.au, 28
  br i1 %min.iters.check473, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check474

vector.main.loop.iter.check474:                   ; preds = %iter.check485
  %min.iters.check475 = icmp ult i64 %i.au, 124
  br i1 %min.iters.check475, label %vec.epilog.ph489, label %vector.ph476

vector.ph476:                                     ; preds = %vector.main.loop.iter.check474
  %i.ax = and i64 %i.aw, 24
  %n.vec477 = and i64 %i.aw, 9223372036854775776  ; 4 uses
  %i.ay = shl i64 %n.vec477, 2
  %i.az = getelementptr i8, ptr %i.ap, i64 %i.ay
  %broadcast.splatinsert478 = insertelement <8 x i32> poison, i32 %i.aq, i64 0
  %broadcast.splat479 = shufflevector <8 x i32> %broadcast.splatinsert478, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body480

vector.body480:                                   ; preds = %vector.ph476, %vector.body480
  %index481 = phi i64 [ 0, %vector.ph476 ], [ %index.next482, %vector.body480 ] ; 2 uses
  %i.ba = shl i64 %index481, 2
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ba ; 4 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 32
  %i.bc = getelementptr i8, ptr %next.gep, i64 64
  %i.bd = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %broadcast.splat479, ptr %next.gep, align 4, !tbaa !90, !noalias !271
  store <8 x i32> %broadcast.splat479, ptr %i.bb, align 4, !tbaa !90, !noalias !271
  store <8 x i32> %broadcast.splat479, ptr %i.bc, align 4, !tbaa !90, !noalias !271
  store <8 x i32> %broadcast.splat479, ptr %i.bd, align 4, !tbaa !90, !noalias !271
  %index.next482 = add nuw i64 %index481, 32      ; 2 uses
  %i.be = icmp eq i64 %index.next482, %n.vec477
  br i1 %i.be, label %middle.block483, label %vector.body480, !llvm.loop !235

middle.block483:                                  ; preds = %vector.body480
  %cmp.n484 = icmp eq i64 %i.aw, %n.vec477
  br i1 %cmp.n484, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, label %vec.epilog.iter.check486

vec.epilog.iter.check486:                         ; preds = %middle.block483
  %min.epilog.iters.check488 = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check488, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph489, !prof !137

vec.epilog.ph489:                                 ; preds = %vector.main.loop.iter.check474, %vec.epilog.iter.check486
  %vec.epilog.resume.val490 = phi i64 [ %n.vec477, %vec.epilog.iter.check486 ], [ 0, %vector.main.loop.iter.check474 ]
  %n.vec491 = and i64 %i.aw, 9223372036854775800  ; 3 uses
  %i.bf = shl i64 %n.vec491, 2
  %i.bg = getelementptr i8, ptr %i.ap, i64 %i.bf
  %broadcast.splatinsert492 = insertelement <8 x i32> poison, i32 %i.aq, i64 0
  %broadcast.splat493 = shufflevector <8 x i32> %broadcast.splatinsert492, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body494

vec.epilog.vector.body494:                        ; preds = %vec.epilog.vector.body494, %vec.epilog.ph489
  %index495 = phi i64 [ %vec.epilog.resume.val490, %vec.epilog.ph489 ], [ %index.next497, %vec.epilog.vector.body494 ] ; 2 uses
  %i.bh = shl i64 %index495, 2
  %next.gep496 = getelementptr i8, ptr %i.ap, i64 %i.bh
  store <8 x i32> %broadcast.splat493, ptr %next.gep496, align 4, !tbaa !90, !noalias !271
  %index.next497 = add nuw i64 %index495, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next497, %n.vec491
  br i1 %i.bi, label %vec.epilog.middle.block498, label %vec.epilog.vector.body494, !llvm.loop !236

vec.epilog.middle.block498:                       ; preds = %vec.epilog.vector.body494
  %cmp.n499 = icmp eq i64 %i.aw, %n.vec491
  br i1 %cmp.n499, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check485, %vec.epilog.iter.check486, %vec.epilog.middle.block498
  %.06.i.i.i.i.i.ph = phi ptr [ %i.ap, %iter.check485 ], [ %i.az, %vec.epilog.iter.check486 ], [ %i.bg, %vec.epilog.middle.block498 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.aq, ptr %.06.i.i.i.i.i, align 4, !tbaa !90, !noalias !271
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i19.i = icmp eq ptr %i.bj, %i.an
  br i1 %.not.i.i.i.i19.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !237

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block483, %vec.epilog.middle.block498, %bb.e
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
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.bm) #31, !noalias !271
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
  br i1 %i.bz, label %iter.check455, label %._crit_edge.split.us.us

iter.check455:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.split.us.preheader
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2096), align 8, !tbaa !89
  %i.cb = add nsw i32 %i.ca, 1                    ; 4 uses
  %i.cc = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %i.cd = add nsw i32 %i.by, -1
  %i.ce = udiv i32 %i.cd, %i.cb
  %i.cf = add i32 %i.ce, 1                        ; 7 uses
  %min.iters.check436 = icmp ult i32 %i.cf, 4
  br i1 %min.iters.check436, label %.critedge.us.us.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %iter.check455
  %min.iters.check438 = icmp ult i32 %i.cf, 32
  br i1 %min.iters.check438, label %vec.epilog.ph459, label %vector.ph439

vector.ph439:                                     ; preds = %vector.main.loop.iter.check437
  %i.cg = and i32 %i.cf, 28
  %n.vec440 = and i32 %i.cf, -32                  ; 4 uses
  %i.ch = mul i32 %n.vec440, %i.cb
  %i.ci = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.03474, i64 0
  %broadcast.splatinsert441 = insertelement <8 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat442 = shufflevector <8 x i32> %broadcast.splatinsert441, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body443

vector.body443:                                   ; preds = %vector.ph439, %vector.body443
  %index444 = phi i32 [ 0, %vector.ph439 ], [ %index.next449, %vector.body443 ]
  %vec.phi445 = phi <8 x i32> [ %i.ci, %vector.ph439 ], [ %i.cj, %vector.body443 ]
  %vec.phi446 = phi <8 x i32> [ zeroinitializer, %vector.ph439 ], [ %i.ck, %vector.body443 ]
  %vec.phi447 = phi <8 x i32> [ zeroinitializer, %vector.ph439 ], [ %i.cl, %vector.body443 ]
  %vec.phi448 = phi <8 x i32> [ zeroinitializer, %vector.ph439 ], [ %i.cm, %vector.body443 ]
  %i.cj = add <8 x i32> %broadcast.splat442, %vec.phi445 ; 2 uses
  %i.ck = add <8 x i32> %broadcast.splat442, %vec.phi446 ; 2 uses
  %i.cl = add <8 x i32> %broadcast.splat442, %vec.phi447 ; 2 uses
  %i.cm = add <8 x i32> %broadcast.splat442, %vec.phi448 ; 2 uses
  %index.next449 = add nuw i32 %index444, 32      ; 2 uses
  %i.cn = icmp eq i32 %index.next449, %n.vec440
  br i1 %i.cn, label %middle.block450, label %vector.body443, !llvm.loop !239

middle.block450:                                  ; preds = %vector.body443
  %bin.rdx451 = add <8 x i32> %i.ck, %i.cj
  %bin.rdx452 = add <8 x i32> %i.cl, %bin.rdx451
  %bin.rdx453 = add <8 x i32> %i.cm, %bin.rdx452
  %i.co = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx453) ; 3 uses
  %cmp.n454 = icmp eq i32 %i.cf, %n.vec440
  br i1 %cmp.n454, label %._crit_edge.split.us.us, label %vec.epilog.iter.check456

vec.epilog.iter.check456:                         ; preds = %middle.block450
  %min.epilog.iters.check458 = icmp eq i32 %i.cg, 0
  br i1 %min.epilog.iters.check458, label %.critedge.us.us.preheader, label %vec.epilog.ph459, !prof !138

vec.epilog.ph459:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check456
  %vec.epilog.resume.val460 = phi i32 [ %n.vec440, %vec.epilog.iter.check456 ], [ 0, %vector.main.loop.iter.check437 ]
  %bc.merge.rdx461 = phi i32 [ %i.co, %vec.epilog.iter.check456 ], [ %.03474, %vector.main.loop.iter.check437 ]
  %n.vec462 = and i32 %i.cf, -4                   ; 3 uses
  %i.cp = mul i32 %n.vec462, %i.cb
  %i.cq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx461, i64 0
  %broadcast.splatinsert463 = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat464 = shufflevector <4 x i32> %broadcast.splatinsert463, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body465

vec.epilog.vector.body465:                        ; preds = %vec.epilog.vector.body465, %vec.epilog.ph459
  %index466 = phi i32 [ %vec.epilog.resume.val460, %vec.epilog.ph459 ], [ %index.next468, %vec.epilog.vector.body465 ]
  %vec.phi467 = phi <4 x i32> [ %i.cq, %vec.epilog.ph459 ], [ %i.cr, %vec.epilog.vector.body465 ]
  %i.cr = add <4 x i32> %broadcast.splat464, %vec.phi467 ; 2 uses
  %index.next468 = add nuw i32 %index466, 4       ; 2 uses
  %i.cs = icmp eq i32 %index.next468, %n.vec462
  br i1 %i.cs, label %vec.epilog.middle.block469, label %vec.epilog.vector.body465, !llvm.loop !240

vec.epilog.middle.block469:                       ; preds = %vec.epilog.vector.body465
  %i.ct = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cr) ; 2 uses
  %cmp.n470 = icmp eq i32 %i.cf, %n.vec462
  br i1 %cmp.n470, label %._crit_edge.split.us.us, label %.critedge.us.us.preheader

.critedge.us.us.preheader:                        ; preds = %iter.check455, %vec.epilog.iter.check456, %vec.epilog.middle.block469
  %.03267.us.us.ph = phi i32 [ 0, %iter.check455 ], [ %i.ch, %vec.epilog.iter.check456 ], [ %i.cp, %vec.epilog.middle.block469 ]
  %.266.us.us.ph = phi i32 [ %.03474, %iter.check455 ], [ %i.co, %vec.epilog.iter.check456 ], [ %i.ct, %vec.epilog.middle.block469 ]
  br label %.critedge.us.us

.critedge.us.us:                                  ; preds = %.critedge.us.us.preheader, %.critedge.us.us
  %.03267.us.us = phi i32 [ %i.cv, %.critedge.us.us ], [ %.03267.us.us.ph, %.critedge.us.us.preheader ]
  %.266.us.us = phi i32 [ %i.cu, %.critedge.us.us ], [ %.266.us.us.ph, %.critedge.us.us.preheader ]
  %i.cu = add nsw i32 %i.cc, %.266.us.us          ; 2 uses
  %i.cv = add nsw i32 %i.cb, %.03267.us.us        ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.by
  br i1 %i.cw, label %.critedge.us.us, label %._crit_edge.split.us.us, !llvm.loop !241

._crit_edge.split.us.us:                          ; preds = %.critedge.us.us, %middle.block450, %vec.epilog.middle.block469, %_ZNSt6vectorIiSaIiEED2Ev.exit.split.us.preheader
  %.2.lcssa.us = phi i32 [ %.03474, %_ZNSt6vectorIiSaIiEED2Ev.exit.split.us.preheader ], [ %i.ct, %vec.epilog.middle.block469 ], [ %i.co, %middle.block450 ], [ %i.cu, %.critedge.us.us ] ; 4 uses
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
  br i1 %i.dg, label %iter.check418, label %._crit_edge.split.us.us.1

iter.check418:                                    ; preds = %._crit_edge.split.us.us
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2128), align 8, !tbaa !89
  %i.di = add nsw i32 %i.dh, 1                    ; 4 uses
  %i.dj = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %i.dk = add nsw i32 %i.df, -1
  %i.dl = udiv i32 %i.dk, %i.di
  %i.dm = add i32 %i.dl, 1                        ; 7 uses
  %min.iters.check399 = icmp ult i32 %i.dm, 4
  br i1 %min.iters.check399, label %.critedge.us.us.1.preheader, label %vector.main.loop.iter.check400

vector.main.loop.iter.check400:                   ; preds = %iter.check418
  %min.iters.check401 = icmp ult i32 %i.dm, 32
  br i1 %min.iters.check401, label %vec.epilog.ph422, label %vector.ph402

vector.ph402:                                     ; preds = %vector.main.loop.iter.check400
  %i.dn = and i32 %i.dm, 28
  %n.vec403 = and i32 %i.dm, -32                  ; 4 uses
  %i.do = mul i32 %n.vec403, %i.di
  %i.dp = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us, i64 0
  %broadcast.splatinsert404 = insertelement <8 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat405 = shufflevector <8 x i32> %broadcast.splatinsert404, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body406

vector.body406:                                   ; preds = %vector.ph402, %vector.body406
  %index407 = phi i32 [ 0, %vector.ph402 ], [ %index.next412, %vector.body406 ]
  %vec.phi408 = phi <8 x i32> [ %i.dp, %vector.ph402 ], [ %i.dq, %vector.body406 ]
  %vec.phi409 = phi <8 x i32> [ zeroinitializer, %vector.ph402 ], [ %i.dr, %vector.body406 ]
  %vec.phi410 = phi <8 x i32> [ zeroinitializer, %vector.ph402 ], [ %i.ds, %vector.body406 ]
  %vec.phi411 = phi <8 x i32> [ zeroinitializer, %vector.ph402 ], [ %i.dt, %vector.body406 ]
  %i.dq = add <8 x i32> %broadcast.splat405, %vec.phi408 ; 2 uses
  %i.dr = add <8 x i32> %broadcast.splat405, %vec.phi409 ; 2 uses
  %i.ds = add <8 x i32> %broadcast.splat405, %vec.phi410 ; 2 uses
  %i.dt = add <8 x i32> %broadcast.splat405, %vec.phi411 ; 2 uses
  %index.next412 = add nuw i32 %index407, 32      ; 2 uses
  %i.du = icmp eq i32 %index.next412, %n.vec403
  br i1 %i.du, label %middle.block413, label %vector.body406, !llvm.loop !242

middle.block413:                                  ; preds = %vector.body406
  %bin.rdx414 = add <8 x i32> %i.dr, %i.dq
  %bin.rdx415 = add <8 x i32> %i.ds, %bin.rdx414
  %bin.rdx416 = add <8 x i32> %i.dt, %bin.rdx415
  %i.dv = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx416) ; 3 uses
  %cmp.n417 = icmp eq i32 %i.dm, %n.vec403
  br i1 %cmp.n417, label %._crit_edge.split.us.us.1, label %vec.epilog.iter.check419

vec.epilog.iter.check419:                         ; preds = %middle.block413
  %min.epilog.iters.check421 = icmp eq i32 %i.dn, 0
  br i1 %min.epilog.iters.check421, label %.critedge.us.us.1.preheader, label %vec.epilog.ph422, !prof !138

vec.epilog.ph422:                                 ; preds = %vector.main.loop.iter.check400, %vec.epilog.iter.check419
  %vec.epilog.resume.val423 = phi i32 [ %n.vec403, %vec.epilog.iter.check419 ], [ 0, %vector.main.loop.iter.check400 ]
  %bc.merge.rdx424 = phi i32 [ %i.dv, %vec.epilog.iter.check419 ], [ %.2.lcssa.us, %vector.main.loop.iter.check400 ]
  %n.vec425 = and i32 %i.dm, -4                   ; 3 uses
  %i.dw = mul i32 %n.vec425, %i.di
  %i.dx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx424, i64 0
  %broadcast.splatinsert426 = insertelement <4 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat427 = shufflevector <4 x i32> %broadcast.splatinsert426, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body428

vec.epilog.vector.body428:                        ; preds = %vec.epilog.vector.body428, %vec.epilog.ph422
  %index429 = phi i32 [ %vec.epilog.resume.val423, %vec.epilog.ph422 ], [ %index.next431, %vec.epilog.vector.body428 ]
  %vec.phi430 = phi <4 x i32> [ %i.dx, %vec.epilog.ph422 ], [ %i.dy, %vec.epilog.vector.body428 ]
  %i.dy = add <4 x i32> %broadcast.splat427, %vec.phi430 ; 2 uses
  %index.next431 = add nuw i32 %index429, 4       ; 2 uses
  %i.dz = icmp eq i32 %index.next431, %n.vec425
  br i1 %i.dz, label %vec.epilog.middle.block432, label %vec.epilog.vector.body428, !llvm.loop !243

vec.epilog.middle.block432:                       ; preds = %vec.epilog.vector.body428
  %i.ea = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dy) ; 2 uses
  %cmp.n433 = icmp eq i32 %i.dm, %n.vec425
  br i1 %cmp.n433, label %._crit_edge.split.us.us.1, label %.critedge.us.us.1.preheader

.critedge.us.us.1.preheader:                      ; preds = %iter.check418, %vec.epilog.iter.check419, %vec.epilog.middle.block432
  %.03267.us.us.1.ph = phi i32 [ 0, %iter.check418 ], [ %i.do, %vec.epilog.iter.check419 ], [ %i.dw, %vec.epilog.middle.block432 ]
  %.266.us.us.1.ph = phi i32 [ %.2.lcssa.us, %iter.check418 ], [ %i.dv, %vec.epilog.iter.check419 ], [ %i.ea, %vec.epilog.middle.block432 ]
  br label %.critedge.us.us.1

.critedge.us.us.1:                                ; preds = %.critedge.us.us.1.preheader, %.critedge.us.us.1
  %.03267.us.us.1 = phi i32 [ %i.ec, %.critedge.us.us.1 ], [ %.03267.us.us.1.ph, %.critedge.us.us.1.preheader ]
  %.266.us.us.1 = phi i32 [ %i.eb, %.critedge.us.us.1 ], [ %.266.us.us.1.ph, %.critedge.us.us.1.preheader ]
  %i.eb = add nsw i32 %i.dj, %.266.us.us.1        ; 2 uses
  %i.ec = add nsw i32 %i.di, %.03267.us.us.1      ; 2 uses
  %i.ed = icmp slt i32 %i.ec, %i.df
  br i1 %i.ed, label %.critedge.us.us.1, label %._crit_edge.split.us.us.1, !llvm.loop !244

._crit_edge.split.us.us.1:                        ; preds = %.critedge.us.us.1, %middle.block413, %vec.epilog.middle.block432, %._crit_edge.split.us.us
  %.2.lcssa.us.1 = phi i32 [ %.2.lcssa.us, %._crit_edge.split.us.us ], [ %i.ea, %vec.epilog.middle.block432 ], [ %i.dv, %middle.block413 ], [ %i.eb, %.critedge.us.us.1 ] ; 4 uses
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
  br i1 %i.en, label %iter.check381, label %._crit_edge.split.us.us.2

iter.check381:                                    ; preds = %._crit_edge.split.us.us.1
  %i.eo = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2160), align 8, !tbaa !89
  %i.ep = add nsw i32 %i.eo, 1                    ; 4 uses
  %i.eq = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %i.er = add nsw i32 %i.em, -1
  %i.es = udiv i32 %i.er, %i.ep
  %i.et = add i32 %i.es, 1                        ; 7 uses
  %min.iters.check362 = icmp ult i32 %i.et, 4
  br i1 %min.iters.check362, label %.critedge.us.us.2.preheader, label %vector.main.loop.iter.check363

vector.main.loop.iter.check363:                   ; preds = %iter.check381
  %min.iters.check364 = icmp ult i32 %i.et, 32
  br i1 %min.iters.check364, label %vec.epilog.ph385, label %vector.ph365

vector.ph365:                                     ; preds = %vector.main.loop.iter.check363
  %i.eu = and i32 %i.et, 28
  %n.vec366 = and i32 %i.et, -32                  ; 4 uses
  %i.ev = mul i32 %n.vec366, %i.ep
  %i.ew = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.1, i64 0
  %broadcast.splatinsert367 = insertelement <8 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat368 = shufflevector <8 x i32> %broadcast.splatinsert367, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body369

vector.body369:                                   ; preds = %vector.ph365, %vector.body369
  %index370 = phi i32 [ 0, %vector.ph365 ], [ %index.next375, %vector.body369 ]
  %vec.phi371 = phi <8 x i32> [ %i.ew, %vector.ph365 ], [ %i.ex, %vector.body369 ]
  %vec.phi372 = phi <8 x i32> [ zeroinitializer, %vector.ph365 ], [ %i.ey, %vector.body369 ]
  %vec.phi373 = phi <8 x i32> [ zeroinitializer, %vector.ph365 ], [ %i.ez, %vector.body369 ]
  %vec.phi374 = phi <8 x i32> [ zeroinitializer, %vector.ph365 ], [ %i.fa, %vector.body369 ]
  %i.ex = add <8 x i32> %broadcast.splat368, %vec.phi371 ; 2 uses
  %i.ey = add <8 x i32> %broadcast.splat368, %vec.phi372 ; 2 uses
  %i.ez = add <8 x i32> %broadcast.splat368, %vec.phi373 ; 2 uses
  %i.fa = add <8 x i32> %broadcast.splat368, %vec.phi374 ; 2 uses
  %index.next375 = add nuw i32 %index370, 32      ; 2 uses
  %i.fb = icmp eq i32 %index.next375, %n.vec366
  br i1 %i.fb, label %middle.block376, label %vector.body369, !llvm.loop !245

middle.block376:                                  ; preds = %vector.body369
  %bin.rdx377 = add <8 x i32> %i.ey, %i.ex
  %bin.rdx378 = add <8 x i32> %i.ez, %bin.rdx377
  %bin.rdx379 = add <8 x i32> %i.fa, %bin.rdx378
  %i.fc = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx379) ; 3 uses
  %cmp.n380 = icmp eq i32 %i.et, %n.vec366
  br i1 %cmp.n380, label %._crit_edge.split.us.us.2, label %vec.epilog.iter.check382

vec.epilog.iter.check382:                         ; preds = %middle.block376
  %min.epilog.iters.check384 = icmp eq i32 %i.eu, 0
  br i1 %min.epilog.iters.check384, label %.critedge.us.us.2.preheader, label %vec.epilog.ph385, !prof !138

vec.epilog.ph385:                                 ; preds = %vector.main.loop.iter.check363, %vec.epilog.iter.check382
  %vec.epilog.resume.val386 = phi i32 [ %n.vec366, %vec.epilog.iter.check382 ], [ 0, %vector.main.loop.iter.check363 ]
  %bc.merge.rdx387 = phi i32 [ %i.fc, %vec.epilog.iter.check382 ], [ %.2.lcssa.us.1, %vector.main.loop.iter.check363 ]
  %n.vec388 = and i32 %i.et, -4                   ; 3 uses
  %i.fd = mul i32 %n.vec388, %i.ep
  %i.fe = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx387, i64 0
  %broadcast.splatinsert389 = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat390 = shufflevector <4 x i32> %broadcast.splatinsert389, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body391

vec.epilog.vector.body391:                        ; preds = %vec.epilog.vector.body391, %vec.epilog.ph385
  %index392 = phi i32 [ %vec.epilog.resume.val386, %vec.epilog.ph385 ], [ %index.next394, %vec.epilog.vector.body391 ]
  %vec.phi393 = phi <4 x i32> [ %i.fe, %vec.epilog.ph385 ], [ %i.ff, %vec.epilog.vector.body391 ]
  %i.ff = add <4 x i32> %broadcast.splat390, %vec.phi393 ; 2 uses
  %index.next394 = add nuw i32 %index392, 4       ; 2 uses
  %i.fg = icmp eq i32 %index.next394, %n.vec388
  br i1 %i.fg, label %vec.epilog.middle.block395, label %vec.epilog.vector.body391, !llvm.loop !246

vec.epilog.middle.block395:                       ; preds = %vec.epilog.vector.body391
  %i.fh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ff) ; 2 uses
  %cmp.n396 = icmp eq i32 %i.et, %n.vec388
  br i1 %cmp.n396, label %._crit_edge.split.us.us.2, label %.critedge.us.us.2.preheader

.critedge.us.us.2.preheader:                      ; preds = %iter.check381, %vec.epilog.iter.check382, %vec.epilog.middle.block395
  %.03267.us.us.2.ph = phi i32 [ 0, %iter.check381 ], [ %i.ev, %vec.epilog.iter.check382 ], [ %i.fd, %vec.epilog.middle.block395 ]
  %.266.us.us.2.ph = phi i32 [ %.2.lcssa.us.1, %iter.check381 ], [ %i.fc, %vec.epilog.iter.check382 ], [ %i.fh, %vec.epilog.middle.block395 ]
  br label %.critedge.us.us.2

.critedge.us.us.2:                                ; preds = %.critedge.us.us.2.preheader, %.critedge.us.us.2
  %.03267.us.us.2 = phi i32 [ %i.fj, %.critedge.us.us.2 ], [ %.03267.us.us.2.ph, %.critedge.us.us.2.preheader ]
  %.266.us.us.2 = phi i32 [ %i.fi, %.critedge.us.us.2 ], [ %.266.us.us.2.ph, %.critedge.us.us.2.preheader ]
  %i.fi = add nsw i32 %i.eq, %.266.us.us.2        ; 2 uses
  %i.fj = add nsw i32 %i.ep, %.03267.us.us.2      ; 2 uses
  %i.fk = icmp slt i32 %i.fj, %i.em
  br i1 %i.fk, label %.critedge.us.us.2, label %._crit_edge.split.us.us.2, !llvm.loop !247

._crit_edge.split.us.us.2:                        ; preds = %.critedge.us.us.2, %middle.block376, %vec.epilog.middle.block395, %._crit_edge.split.us.us.1
  %.2.lcssa.us.2 = phi i32 [ %.2.lcssa.us.1, %._crit_edge.split.us.us.1 ], [ %i.fh, %vec.epilog.middle.block395 ], [ %i.fc, %middle.block376 ], [ %i.fi, %.critedge.us.us.2 ] ; 4 uses
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
  br i1 %i.fu, label %iter.check344, label %._crit_edge.split.us.us.3

iter.check344:                                    ; preds = %._crit_edge.split.us.us.2
  %i.fv = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2192), align 8, !tbaa !89
  %i.fw = add nsw i32 %i.fv, 1                    ; 4 uses
  %i.fx = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %i.fy = add nsw i32 %i.ft, -1
  %i.fz = udiv i32 %i.fy, %i.fw
  %i.ga = add i32 %i.fz, 1                        ; 7 uses
  %min.iters.check325 = icmp ult i32 %i.ga, 4
  br i1 %min.iters.check325, label %.critedge.us.us.3.preheader, label %vector.main.loop.iter.check326

vector.main.loop.iter.check326:                   ; preds = %iter.check344
  %min.iters.check327 = icmp ult i32 %i.ga, 32
  br i1 %min.iters.check327, label %vec.epilog.ph348, label %vector.ph328

vector.ph328:                                     ; preds = %vector.main.loop.iter.check326
  %i.gb = and i32 %i.ga, 28
  %n.vec329 = and i32 %i.ga, -32                  ; 4 uses
  %i.gc = mul i32 %n.vec329, %i.fw
  %i.gd = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.2, i64 0
  %broadcast.splatinsert330 = insertelement <8 x i32> poison, i32 %i.fx, i64 0
  %broadcast.splat331 = shufflevector <8 x i32> %broadcast.splatinsert330, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body332

vector.body332:                                   ; preds = %vector.ph328, %vector.body332
  %index333 = phi i32 [ 0, %vector.ph328 ], [ %index.next338, %vector.body332 ]
  %vec.phi334 = phi <8 x i32> [ %i.gd, %vector.ph328 ], [ %i.ge, %vector.body332 ]
  %vec.phi335 = phi <8 x i32> [ zeroinitializer, %vector.ph328 ], [ %i.gf, %vector.body332 ]
  %vec.phi336 = phi <8 x i32> [ zeroinitializer, %vector.ph328 ], [ %i.gg, %vector.body332 ]
  %vec.phi337 = phi <8 x i32> [ zeroinitializer, %vector.ph328 ], [ %i.gh, %vector.body332 ]
  %i.ge = add <8 x i32> %broadcast.splat331, %vec.phi334 ; 2 uses
  %i.gf = add <8 x i32> %broadcast.splat331, %vec.phi335 ; 2 uses
  %i.gg = add <8 x i32> %broadcast.splat331, %vec.phi336 ; 2 uses
  %i.gh = add <8 x i32> %broadcast.splat331, %vec.phi337 ; 2 uses
  %index.next338 = add nuw i32 %index333, 32      ; 2 uses
  %i.gi = icmp eq i32 %index.next338, %n.vec329
  br i1 %i.gi, label %middle.block339, label %vector.body332, !llvm.loop !248

middle.block339:                                  ; preds = %vector.body332
  %bin.rdx340 = add <8 x i32> %i.gf, %i.ge
  %bin.rdx341 = add <8 x i32> %i.gg, %bin.rdx340
  %bin.rdx342 = add <8 x i32> %i.gh, %bin.rdx341
  %i.gj = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx342) ; 3 uses
  %cmp.n343 = icmp eq i32 %i.ga, %n.vec329
  br i1 %cmp.n343, label %._crit_edge.split.us.us.3, label %vec.epilog.iter.check345

vec.epilog.iter.check345:                         ; preds = %middle.block339
  %min.epilog.iters.check347 = icmp eq i32 %i.gb, 0
  br i1 %min.epilog.iters.check347, label %.critedge.us.us.3.preheader, label %vec.epilog.ph348, !prof !138

vec.epilog.ph348:                                 ; preds = %vector.main.loop.iter.check326, %vec.epilog.iter.check345
  %vec.epilog.resume.val349 = phi i32 [ %n.vec329, %vec.epilog.iter.check345 ], [ 0, %vector.main.loop.iter.check326 ]
  %bc.merge.rdx350 = phi i32 [ %i.gj, %vec.epilog.iter.check345 ], [ %.2.lcssa.us.2, %vector.main.loop.iter.check326 ]
  %n.vec351 = and i32 %i.ga, -4                   ; 3 uses
  %i.gk = mul i32 %n.vec351, %i.fw
  %i.gl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx350, i64 0
  %broadcast.splatinsert352 = insertelement <4 x i32> poison, i32 %i.fx, i64 0
  %broadcast.splat353 = shufflevector <4 x i32> %broadcast.splatinsert352, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body354

vec.epilog.vector.body354:                        ; preds = %vec.epilog.vector.body354, %vec.epilog.ph348
  %index355 = phi i32 [ %vec.epilog.resume.val349, %vec.epilog.ph348 ], [ %index.next357, %vec.epilog.vector.body354 ]
  %vec.phi356 = phi <4 x i32> [ %i.gl, %vec.epilog.ph348 ], [ %i.gm, %vec.epilog.vector.body354 ]
  %i.gm = add <4 x i32> %broadcast.splat353, %vec.phi356 ; 2 uses
  %index.next357 = add nuw i32 %index355, 4       ; 2 uses
  %i.gn = icmp eq i32 %index.next357, %n.vec351
  br i1 %i.gn, label %vec.epilog.middle.block358, label %vec.epilog.vector.body354, !llvm.loop !249

vec.epilog.middle.block358:                       ; preds = %vec.epilog.vector.body354
  %i.go = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gm) ; 2 uses
  %cmp.n359 = icmp eq i32 %i.ga, %n.vec351
  br i1 %cmp.n359, label %._crit_edge.split.us.us.3, label %.critedge.us.us.3.preheader

.critedge.us.us.3.preheader:                      ; preds = %iter.check344, %vec.epilog.iter.check345, %vec.epilog.middle.block358
  %.03267.us.us.3.ph = phi i32 [ 0, %iter.check344 ], [ %i.gc, %vec.epilog.iter.check345 ], [ %i.gk, %vec.epilog.middle.block358 ]
  %.266.us.us.3.ph = phi i32 [ %.2.lcssa.us.2, %iter.check344 ], [ %i.gj, %vec.epilog.iter.check345 ], [ %i.go, %vec.epilog.middle.block358 ]
  br label %.critedge.us.us.3

.critedge.us.us.3:                                ; preds = %.critedge.us.us.3.preheader, %.critedge.us.us.3
  %.03267.us.us.3 = phi i32 [ %i.gq, %.critedge.us.us.3 ], [ %.03267.us.us.3.ph, %.critedge.us.us.3.preheader ]
  %.266.us.us.3 = phi i32 [ %i.gp, %.critedge.us.us.3 ], [ %.266.us.us.3.ph, %.critedge.us.us.3.preheader ]
  %i.gp = add nsw i32 %i.fx, %.266.us.us.3        ; 2 uses
  %i.gq = add nsw i32 %i.fw, %.03267.us.us.3      ; 2 uses
  %i.gr = icmp slt i32 %i.gq, %i.ft
  br i1 %i.gr, label %.critedge.us.us.3, label %._crit_edge.split.us.us.3, !llvm.loop !250

._crit_edge.split.us.us.3:                        ; preds = %.critedge.us.us.3, %middle.block339, %vec.epilog.middle.block358, %._crit_edge.split.us.us.2
  %.2.lcssa.us.3 = phi i32 [ %.2.lcssa.us.2, %._crit_edge.split.us.us.2 ], [ %i.go, %vec.epilog.middle.block358 ], [ %i.gj, %middle.block339 ], [ %i.gp, %.critedge.us.us.3 ] ; 4 uses
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
  br i1 %i.hb, label %iter.check307, label %._crit_edge.split.us.us.4

iter.check307:                                    ; preds = %._crit_edge.split.us.us.3
  %i.hc = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2224), align 8, !tbaa !89
  %i.hd = add nsw i32 %i.hc, 1                    ; 4 uses
  %i.he = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %i.hf = add nsw i32 %i.ha, -1
  %i.hg = udiv i32 %i.hf, %i.hd
  %i.hh = add i32 %i.hg, 1                        ; 7 uses
  %min.iters.check288 = icmp ult i32 %i.hh, 4
  br i1 %min.iters.check288, label %.critedge.us.us.4.preheader, label %vector.main.loop.iter.check289

vector.main.loop.iter.check289:                   ; preds = %iter.check307
  %min.iters.check290 = icmp ult i32 %i.hh, 32
  br i1 %min.iters.check290, label %vec.epilog.ph311, label %vector.ph291

vector.ph291:                                     ; preds = %vector.main.loop.iter.check289
  %i.hi = and i32 %i.hh, 28
  %n.vec292 = and i32 %i.hh, -32                  ; 4 uses
  %i.hj = mul i32 %n.vec292, %i.hd
  %i.hk = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.3, i64 0
  %broadcast.splatinsert293 = insertelement <8 x i32> poison, i32 %i.he, i64 0
  %broadcast.splat294 = shufflevector <8 x i32> %broadcast.splatinsert293, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body295

vector.body295:                                   ; preds = %vector.ph291, %vector.body295
  %index296 = phi i32 [ 0, %vector.ph291 ], [ %index.next301, %vector.body295 ]
  %vec.phi297 = phi <8 x i32> [ %i.hk, %vector.ph291 ], [ %i.hl, %vector.body295 ]
  %vec.phi298 = phi <8 x i32> [ zeroinitializer, %vector.ph291 ], [ %i.hm, %vector.body295 ]
  %vec.phi299 = phi <8 x i32> [ zeroinitializer, %vector.ph291 ], [ %i.hn, %vector.body295 ]
  %vec.phi300 = phi <8 x i32> [ zeroinitializer, %vector.ph291 ], [ %i.ho, %vector.body295 ]
  %i.hl = add <8 x i32> %broadcast.splat294, %vec.phi297 ; 2 uses
  %i.hm = add <8 x i32> %broadcast.splat294, %vec.phi298 ; 2 uses
  %i.hn = add <8 x i32> %broadcast.splat294, %vec.phi299 ; 2 uses
  %i.ho = add <8 x i32> %broadcast.splat294, %vec.phi300 ; 2 uses
  %index.next301 = add nuw i32 %index296, 32      ; 2 uses
  %i.hp = icmp eq i32 %index.next301, %n.vec292
  br i1 %i.hp, label %middle.block302, label %vector.body295, !llvm.loop !251

middle.block302:                                  ; preds = %vector.body295
  %bin.rdx303 = add <8 x i32> %i.hm, %i.hl
  %bin.rdx304 = add <8 x i32> %i.hn, %bin.rdx303
  %bin.rdx305 = add <8 x i32> %i.ho, %bin.rdx304
  %i.hq = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx305) ; 3 uses
  %cmp.n306 = icmp eq i32 %i.hh, %n.vec292
  br i1 %cmp.n306, label %._crit_edge.split.us.us.4, label %vec.epilog.iter.check308

vec.epilog.iter.check308:                         ; preds = %middle.block302
  %min.epilog.iters.check310 = icmp eq i32 %i.hi, 0
  br i1 %min.epilog.iters.check310, label %.critedge.us.us.4.preheader, label %vec.epilog.ph311, !prof !138

vec.epilog.ph311:                                 ; preds = %vector.main.loop.iter.check289, %vec.epilog.iter.check308
  %vec.epilog.resume.val312 = phi i32 [ %n.vec292, %vec.epilog.iter.check308 ], [ 0, %vector.main.loop.iter.check289 ]
  %bc.merge.rdx313 = phi i32 [ %i.hq, %vec.epilog.iter.check308 ], [ %.2.lcssa.us.3, %vector.main.loop.iter.check289 ]
  %n.vec314 = and i32 %i.hh, -4                   ; 3 uses
  %i.hr = mul i32 %n.vec314, %i.hd
  %i.hs = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx313, i64 0
  %broadcast.splatinsert315 = insertelement <4 x i32> poison, i32 %i.he, i64 0
  %broadcast.splat316 = shufflevector <4 x i32> %broadcast.splatinsert315, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body317

vec.epilog.vector.body317:                        ; preds = %vec.epilog.vector.body317, %vec.epilog.ph311
  %index318 = phi i32 [ %vec.epilog.resume.val312, %vec.epilog.ph311 ], [ %index.next320, %vec.epilog.vector.body317 ]
  %vec.phi319 = phi <4 x i32> [ %i.hs, %vec.epilog.ph311 ], [ %i.ht, %vec.epilog.vector.body317 ]
  %i.ht = add <4 x i32> %broadcast.splat316, %vec.phi319 ; 2 uses
  %index.next320 = add nuw i32 %index318, 4       ; 2 uses
  %i.hu = icmp eq i32 %index.next320, %n.vec314
  br i1 %i.hu, label %vec.epilog.middle.block321, label %vec.epilog.vector.body317, !llvm.loop !252

vec.epilog.middle.block321:                       ; preds = %vec.epilog.vector.body317
  %i.hv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ht) ; 2 uses
  %cmp.n322 = icmp eq i32 %i.hh, %n.vec314
  br i1 %cmp.n322, label %._crit_edge.split.us.us.4, label %.critedge.us.us.4.preheader

.critedge.us.us.4.preheader:                      ; preds = %iter.check307, %vec.epilog.iter.check308, %vec.epilog.middle.block321
  %.03267.us.us.4.ph = phi i32 [ 0, %iter.check307 ], [ %i.hj, %vec.epilog.iter.check308 ], [ %i.hr, %vec.epilog.middle.block321 ]
  %.266.us.us.4.ph = phi i32 [ %.2.lcssa.us.3, %iter.check307 ], [ %i.hq, %vec.epilog.iter.check308 ], [ %i.hv, %vec.epilog.middle.block321 ]
  br label %.critedge.us.us.4

.critedge.us.us.4:                                ; preds = %.critedge.us.us.4.preheader, %.critedge.us.us.4
  %.03267.us.us.4 = phi i32 [ %i.hx, %.critedge.us.us.4 ], [ %.03267.us.us.4.ph, %.critedge.us.us.4.preheader ]
  %.266.us.us.4 = phi i32 [ %i.hw, %.critedge.us.us.4 ], [ %.266.us.us.4.ph, %.critedge.us.us.4.preheader ]
  %i.hw = add nsw i32 %i.he, %.266.us.us.4        ; 2 uses
  %i.hx = add nsw i32 %i.hd, %.03267.us.us.4      ; 2 uses
  %i.hy = icmp slt i32 %i.hx, %i.ha
  br i1 %i.hy, label %.critedge.us.us.4, label %._crit_edge.split.us.us.4, !llvm.loop !253

._crit_edge.split.us.us.4:                        ; preds = %.critedge.us.us.4, %middle.block302, %vec.epilog.middle.block321, %._crit_edge.split.us.us.3
  %.2.lcssa.us.4 = phi i32 [ %.2.lcssa.us.3, %._crit_edge.split.us.us.3 ], [ %i.hv, %vec.epilog.middle.block321 ], [ %i.hq, %middle.block302 ], [ %i.hw, %.critedge.us.us.4 ] ; 4 uses
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
  br i1 %i.ii, label %iter.check270, label %._crit_edge.split.us.us.5

iter.check270:                                    ; preds = %._crit_edge.split.us.us.4
  %i.ij = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2256), align 8, !tbaa !89
  %i.ik = add nsw i32 %i.ij, 1                    ; 4 uses
  %i.il = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %i.im = add nsw i32 %i.ih, -1
  %i.in = udiv i32 %i.im, %i.ik
  %i.io = add i32 %i.in, 1                        ; 7 uses
  %min.iters.check251 = icmp ult i32 %i.io, 4
  br i1 %min.iters.check251, label %.critedge.us.us.5.preheader, label %vector.main.loop.iter.check252

vector.main.loop.iter.check252:                   ; preds = %iter.check270
  %min.iters.check253 = icmp ult i32 %i.io, 32
  br i1 %min.iters.check253, label %vec.epilog.ph274, label %vector.ph254

vector.ph254:                                     ; preds = %vector.main.loop.iter.check252
  %i.ip = and i32 %i.io, 28
  %n.vec255 = and i32 %i.io, -32                  ; 4 uses
  %i.iq = mul i32 %n.vec255, %i.ik
  %i.ir = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.4, i64 0
  %broadcast.splatinsert256 = insertelement <8 x i32> poison, i32 %i.il, i64 0
  %broadcast.splat257 = shufflevector <8 x i32> %broadcast.splatinsert256, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.ph254, %vector.body258
  %index259 = phi i32 [ 0, %vector.ph254 ], [ %index.next264, %vector.body258 ]
  %vec.phi260 = phi <8 x i32> [ %i.ir, %vector.ph254 ], [ %i.is, %vector.body258 ]
  %vec.phi261 = phi <8 x i32> [ zeroinitializer, %vector.ph254 ], [ %i.it, %vector.body258 ]
  %vec.phi262 = phi <8 x i32> [ zeroinitializer, %vector.ph254 ], [ %i.iu, %vector.body258 ]
  %vec.phi263 = phi <8 x i32> [ zeroinitializer, %vector.ph254 ], [ %i.iv, %vector.body258 ]
  %i.is = add <8 x i32> %broadcast.splat257, %vec.phi260 ; 2 uses
  %i.it = add <8 x i32> %broadcast.splat257, %vec.phi261 ; 2 uses
  %i.iu = add <8 x i32> %broadcast.splat257, %vec.phi262 ; 2 uses
  %i.iv = add <8 x i32> %broadcast.splat257, %vec.phi263 ; 2 uses
  %index.next264 = add nuw i32 %index259, 32      ; 2 uses
  %i.iw = icmp eq i32 %index.next264, %n.vec255
  br i1 %i.iw, label %middle.block265, label %vector.body258, !llvm.loop !254

middle.block265:                                  ; preds = %vector.body258
  %bin.rdx266 = add <8 x i32> %i.it, %i.is
  %bin.rdx267 = add <8 x i32> %i.iu, %bin.rdx266
  %bin.rdx268 = add <8 x i32> %i.iv, %bin.rdx267
  %i.ix = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx268) ; 3 uses
  %cmp.n269 = icmp eq i32 %i.io, %n.vec255
  br i1 %cmp.n269, label %._crit_edge.split.us.us.5, label %vec.epilog.iter.check271

vec.epilog.iter.check271:                         ; preds = %middle.block265
  %min.epilog.iters.check273 = icmp eq i32 %i.ip, 0
  br i1 %min.epilog.iters.check273, label %.critedge.us.us.5.preheader, label %vec.epilog.ph274, !prof !138

vec.epilog.ph274:                                 ; preds = %vector.main.loop.iter.check252, %vec.epilog.iter.check271
  %vec.epilog.resume.val275 = phi i32 [ %n.vec255, %vec.epilog.iter.check271 ], [ 0, %vector.main.loop.iter.check252 ]
  %bc.merge.rdx276 = phi i32 [ %i.ix, %vec.epilog.iter.check271 ], [ %.2.lcssa.us.4, %vector.main.loop.iter.check252 ]
  %n.vec277 = and i32 %i.io, -4                   ; 3 uses
  %i.iy = mul i32 %n.vec277, %i.ik
  %i.iz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx276, i64 0
  %broadcast.splatinsert278 = insertelement <4 x i32> poison, i32 %i.il, i64 0
  %broadcast.splat279 = shufflevector <4 x i32> %broadcast.splatinsert278, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body280

vec.epilog.vector.body280:                        ; preds = %vec.epilog.vector.body280, %vec.epilog.ph274
  %index281 = phi i32 [ %vec.epilog.resume.val275, %vec.epilog.ph274 ], [ %index.next283, %vec.epilog.vector.body280 ]
  %vec.phi282 = phi <4 x i32> [ %i.iz, %vec.epilog.ph274 ], [ %i.ja, %vec.epilog.vector.body280 ]
  %i.ja = add <4 x i32> %broadcast.splat279, %vec.phi282 ; 2 uses
  %index.next283 = add nuw i32 %index281, 4       ; 2 uses
  %i.jb = icmp eq i32 %index.next283, %n.vec277
  br i1 %i.jb, label %vec.epilog.middle.block284, label %vec.epilog.vector.body280, !llvm.loop !255

vec.epilog.middle.block284:                       ; preds = %vec.epilog.vector.body280
  %i.jc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ja) ; 2 uses
  %cmp.n285 = icmp eq i32 %i.io, %n.vec277
  br i1 %cmp.n285, label %._crit_edge.split.us.us.5, label %.critedge.us.us.5.preheader

.critedge.us.us.5.preheader:                      ; preds = %iter.check270, %vec.epilog.iter.check271, %vec.epilog.middle.block284
  %.03267.us.us.5.ph = phi i32 [ 0, %iter.check270 ], [ %i.iq, %vec.epilog.iter.check271 ], [ %i.iy, %vec.epilog.middle.block284 ]
  %.266.us.us.5.ph = phi i32 [ %.2.lcssa.us.4, %iter.check270 ], [ %i.ix, %vec.epilog.iter.check271 ], [ %i.jc, %vec.epilog.middle.block284 ]
  br label %.critedge.us.us.5

.critedge.us.us.5:                                ; preds = %.critedge.us.us.5.preheader, %.critedge.us.us.5
  %.03267.us.us.5 = phi i32 [ %i.je, %.critedge.us.us.5 ], [ %.03267.us.us.5.ph, %.critedge.us.us.5.preheader ]
  %.266.us.us.5 = phi i32 [ %i.jd, %.critedge.us.us.5 ], [ %.266.us.us.5.ph, %.critedge.us.us.5.preheader ]
  %i.jd = add nsw i32 %i.il, %.266.us.us.5        ; 2 uses
  %i.je = add nsw i32 %i.ik, %.03267.us.us.5      ; 2 uses
  %i.jf = icmp slt i32 %i.je, %i.ih
  br i1 %i.jf, label %.critedge.us.us.5, label %._crit_edge.split.us.us.5, !llvm.loop !256

._crit_edge.split.us.us.5:                        ; preds = %.critedge.us.us.5, %middle.block265, %vec.epilog.middle.block284, %._crit_edge.split.us.us.4
  %.2.lcssa.us.5 = phi i32 [ %.2.lcssa.us.4, %._crit_edge.split.us.us.4 ], [ %i.jc, %vec.epilog.middle.block284 ], [ %i.ix, %middle.block265 ], [ %i.jd, %.critedge.us.us.5 ] ; 4 uses
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
  br i1 %i.jp, label %iter.check233, label %._crit_edge.split.us.us.6

iter.check233:                                    ; preds = %._crit_edge.split.us.us.5
  %i.jq = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2288), align 8, !tbaa !89
  %i.jr = add nsw i32 %i.jq, 1                    ; 4 uses
  %i.js = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %i.jt = add nsw i32 %i.jo, -1
  %i.ju = udiv i32 %i.jt, %i.jr
  %i.jv = add i32 %i.ju, 1                        ; 7 uses
  %min.iters.check214 = icmp ult i32 %i.jv, 4
  br i1 %min.iters.check214, label %.critedge.us.us.6.preheader, label %vector.main.loop.iter.check215

vector.main.loop.iter.check215:                   ; preds = %iter.check233
  %min.iters.check216 = icmp ult i32 %i.jv, 32
  br i1 %min.iters.check216, label %vec.epilog.ph237, label %vector.ph217

vector.ph217:                                     ; preds = %vector.main.loop.iter.check215
  %i.jw = and i32 %i.jv, 28
  %n.vec218 = and i32 %i.jv, -32                  ; 4 uses
  %i.jx = mul i32 %n.vec218, %i.jr
  %i.jy = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.5, i64 0
  %broadcast.splatinsert219 = insertelement <8 x i32> poison, i32 %i.js, i64 0
  %broadcast.splat220 = shufflevector <8 x i32> %broadcast.splatinsert219, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body221

vector.body221:                                   ; preds = %vector.ph217, %vector.body221
  %index222 = phi i32 [ 0, %vector.ph217 ], [ %index.next227, %vector.body221 ]
  %vec.phi223 = phi <8 x i32> [ %i.jy, %vector.ph217 ], [ %i.jz, %vector.body221 ]
  %vec.phi224 = phi <8 x i32> [ zeroinitializer, %vector.ph217 ], [ %i.ka, %vector.body221 ]
  %vec.phi225 = phi <8 x i32> [ zeroinitializer, %vector.ph217 ], [ %i.kb, %vector.body221 ]
  %vec.phi226 = phi <8 x i32> [ zeroinitializer, %vector.ph217 ], [ %i.kc, %vector.body221 ]
  %i.jz = add <8 x i32> %broadcast.splat220, %vec.phi223 ; 2 uses
  %i.ka = add <8 x i32> %broadcast.splat220, %vec.phi224 ; 2 uses
  %i.kb = add <8 x i32> %broadcast.splat220, %vec.phi225 ; 2 uses
  %i.kc = add <8 x i32> %broadcast.splat220, %vec.phi226 ; 2 uses
  %index.next227 = add nuw i32 %index222, 32      ; 2 uses
  %i.kd = icmp eq i32 %index.next227, %n.vec218
  br i1 %i.kd, label %middle.block228, label %vector.body221, !llvm.loop !257

middle.block228:                                  ; preds = %vector.body221
  %bin.rdx229 = add <8 x i32> %i.ka, %i.jz
  %bin.rdx230 = add <8 x i32> %i.kb, %bin.rdx229
  %bin.rdx231 = add <8 x i32> %i.kc, %bin.rdx230
  %i.ke = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx231) ; 3 uses
  %cmp.n232 = icmp eq i32 %i.jv, %n.vec218
  br i1 %cmp.n232, label %._crit_edge.split.us.us.6, label %vec.epilog.iter.check234

vec.epilog.iter.check234:                         ; preds = %middle.block228
  %min.epilog.iters.check236 = icmp eq i32 %i.jw, 0
  br i1 %min.epilog.iters.check236, label %.critedge.us.us.6.preheader, label %vec.epilog.ph237, !prof !138

vec.epilog.ph237:                                 ; preds = %vector.main.loop.iter.check215, %vec.epilog.iter.check234
  %vec.epilog.resume.val238 = phi i32 [ %n.vec218, %vec.epilog.iter.check234 ], [ 0, %vector.main.loop.iter.check215 ]
  %bc.merge.rdx239 = phi i32 [ %i.ke, %vec.epilog.iter.check234 ], [ %.2.lcssa.us.5, %vector.main.loop.iter.check215 ]
  %n.vec240 = and i32 %i.jv, -4                   ; 3 uses
  %i.kf = mul i32 %n.vec240, %i.jr
  %i.kg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx239, i64 0
  %broadcast.splatinsert241 = insertelement <4 x i32> poison, i32 %i.js, i64 0
  %broadcast.splat242 = shufflevector <4 x i32> %broadcast.splatinsert241, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body243

vec.epilog.vector.body243:                        ; preds = %vec.epilog.vector.body243, %vec.epilog.ph237
  %index244 = phi i32 [ %vec.epilog.resume.val238, %vec.epilog.ph237 ], [ %index.next246, %vec.epilog.vector.body243 ]
  %vec.phi245 = phi <4 x i32> [ %i.kg, %vec.epilog.ph237 ], [ %i.kh, %vec.epilog.vector.body243 ]
  %i.kh = add <4 x i32> %broadcast.splat242, %vec.phi245 ; 2 uses
  %index.next246 = add nuw i32 %index244, 4       ; 2 uses
  %i.ki = icmp eq i32 %index.next246, %n.vec240
  br i1 %i.ki, label %vec.epilog.middle.block247, label %vec.epilog.vector.body243, !llvm.loop !258

vec.epilog.middle.block247:                       ; preds = %vec.epilog.vector.body243
  %i.kj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.kh) ; 2 uses
  %cmp.n248 = icmp eq i32 %i.jv, %n.vec240
  br i1 %cmp.n248, label %._crit_edge.split.us.us.6, label %.critedge.us.us.6.preheader

.critedge.us.us.6.preheader:                      ; preds = %iter.check233, %vec.epilog.iter.check234, %vec.epilog.middle.block247
  %.03267.us.us.6.ph = phi i32 [ 0, %iter.check233 ], [ %i.jx, %vec.epilog.iter.check234 ], [ %i.kf, %vec.epilog.middle.block247 ]
  %.266.us.us.6.ph = phi i32 [ %.2.lcssa.us.5, %iter.check233 ], [ %i.ke, %vec.epilog.iter.check234 ], [ %i.kj, %vec.epilog.middle.block247 ]
  br label %.critedge.us.us.6

.critedge.us.us.6:                                ; preds = %.critedge.us.us.6.preheader, %.critedge.us.us.6
  %.03267.us.us.6 = phi i32 [ %i.kl, %.critedge.us.us.6 ], [ %.03267.us.us.6.ph, %.critedge.us.us.6.preheader ]
  %.266.us.us.6 = phi i32 [ %i.kk, %.critedge.us.us.6 ], [ %.266.us.us.6.ph, %.critedge.us.us.6.preheader ]
  %i.kk = add nsw i32 %i.js, %.266.us.us.6        ; 2 uses
  %i.kl = add nsw i32 %i.jr, %.03267.us.us.6      ; 2 uses
  %i.km = icmp slt i32 %i.kl, %i.jo
  br i1 %i.km, label %.critedge.us.us.6, label %._crit_edge.split.us.us.6, !llvm.loop !259

._crit_edge.split.us.us.6:                        ; preds = %.critedge.us.us.6, %middle.block228, %vec.epilog.middle.block247, %._crit_edge.split.us.us.5
  %.2.lcssa.us.6 = phi i32 [ %.2.lcssa.us.5, %._crit_edge.split.us.us.5 ], [ %i.kj, %vec.epilog.middle.block247 ], [ %i.ke, %middle.block228 ], [ %i.kk, %.critedge.us.us.6 ] ; 4 uses
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
  br i1 %i.kw, label %iter.check196, label %._crit_edge.split.us.us.7

iter.check196:                                    ; preds = %._crit_edge.split.us.us.6
  %i.kx = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2320), align 8, !tbaa !89
  %i.ky = add nsw i32 %i.kx, 1                    ; 4 uses
  %i.kz = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %i.la = add nsw i32 %i.kv, -1
  %i.lb = udiv i32 %i.la, %i.ky
  %i.lc = add i32 %i.lb, 1                        ; 7 uses
  %min.iters.check177 = icmp ult i32 %i.lc, 4
  br i1 %min.iters.check177, label %.critedge.us.us.7.preheader, label %vector.main.loop.iter.check178

vector.main.loop.iter.check178:                   ; preds = %iter.check196
  %min.iters.check179 = icmp ult i32 %i.lc, 32
  br i1 %min.iters.check179, label %vec.epilog.ph200, label %vector.ph180

vector.ph180:                                     ; preds = %vector.main.loop.iter.check178
  %i.ld = and i32 %i.lc, 28
  %n.vec181 = and i32 %i.lc, -32                  ; 4 uses
  %i.le = mul i32 %n.vec181, %i.ky
  %i.lf = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.6, i64 0
  %broadcast.splatinsert182 = insertelement <8 x i32> poison, i32 %i.kz, i64 0
  %broadcast.splat183 = shufflevector <8 x i32> %broadcast.splatinsert182, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body184

vector.body184:                                   ; preds = %vector.ph180, %vector.body184
  %index185 = phi i32 [ 0, %vector.ph180 ], [ %index.next190, %vector.body184 ]
  %vec.phi186 = phi <8 x i32> [ %i.lf, %vector.ph180 ], [ %i.lg, %vector.body184 ]
  %vec.phi187 = phi <8 x i32> [ zeroinitializer, %vector.ph180 ], [ %i.lh, %vector.body184 ]
  %vec.phi188 = phi <8 x i32> [ zeroinitializer, %vector.ph180 ], [ %i.li, %vector.body184 ]
  %vec.phi189 = phi <8 x i32> [ zeroinitializer, %vector.ph180 ], [ %i.lj, %vector.body184 ]
  %i.lg = add <8 x i32> %broadcast.splat183, %vec.phi186 ; 2 uses
  %i.lh = add <8 x i32> %broadcast.splat183, %vec.phi187 ; 2 uses
  %i.li = add <8 x i32> %broadcast.splat183, %vec.phi188 ; 2 uses
  %i.lj = add <8 x i32> %broadcast.splat183, %vec.phi189 ; 2 uses
  %index.next190 = add nuw i32 %index185, 32      ; 2 uses
  %i.lk = icmp eq i32 %index.next190, %n.vec181
  br i1 %i.lk, label %middle.block191, label %vector.body184, !llvm.loop !260

middle.block191:                                  ; preds = %vector.body184
  %bin.rdx192 = add <8 x i32> %i.lh, %i.lg
  %bin.rdx193 = add <8 x i32> %i.li, %bin.rdx192
  %bin.rdx194 = add <8 x i32> %i.lj, %bin.rdx193
  %i.ll = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx194) ; 3 uses
  %cmp.n195 = icmp eq i32 %i.lc, %n.vec181
  br i1 %cmp.n195, label %._crit_edge.split.us.us.7, label %vec.epilog.iter.check197

vec.epilog.iter.check197:                         ; preds = %middle.block191
  %min.epilog.iters.check199 = icmp eq i32 %i.ld, 0
  br i1 %min.epilog.iters.check199, label %.critedge.us.us.7.preheader, label %vec.epilog.ph200, !prof !138

vec.epilog.ph200:                                 ; preds = %vector.main.loop.iter.check178, %vec.epilog.iter.check197
  %vec.epilog.resume.val201 = phi i32 [ %n.vec181, %vec.epilog.iter.check197 ], [ 0, %vector.main.loop.iter.check178 ]
  %bc.merge.rdx202 = phi i32 [ %i.ll, %vec.epilog.iter.check197 ], [ %.2.lcssa.us.6, %vector.main.loop.iter.check178 ]
  %n.vec203 = and i32 %i.lc, -4                   ; 3 uses
  %i.lm = mul i32 %n.vec203, %i.ky
  %i.ln = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx202, i64 0
  %broadcast.splatinsert204 = insertelement <4 x i32> poison, i32 %i.kz, i64 0
  %broadcast.splat205 = shufflevector <4 x i32> %broadcast.splatinsert204, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body206

vec.epilog.vector.body206:                        ; preds = %vec.epilog.vector.body206, %vec.epilog.ph200
  %index207 = phi i32 [ %vec.epilog.resume.val201, %vec.epilog.ph200 ], [ %index.next209, %vec.epilog.vector.body206 ]
  %vec.phi208 = phi <4 x i32> [ %i.ln, %vec.epilog.ph200 ], [ %i.lo, %vec.epilog.vector.body206 ]
  %i.lo = add <4 x i32> %broadcast.splat205, %vec.phi208 ; 2 uses
  %index.next209 = add nuw i32 %index207, 4       ; 2 uses
  %i.lp = icmp eq i32 %index.next209, %n.vec203
  br i1 %i.lp, label %vec.epilog.middle.block210, label %vec.epilog.vector.body206, !llvm.loop !261

vec.epilog.middle.block210:                       ; preds = %vec.epilog.vector.body206
  %i.lq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.lo) ; 2 uses
  %cmp.n211 = icmp eq i32 %i.lc, %n.vec203
  br i1 %cmp.n211, label %._crit_edge.split.us.us.7, label %.critedge.us.us.7.preheader

.critedge.us.us.7.preheader:                      ; preds = %iter.check196, %vec.epilog.iter.check197, %vec.epilog.middle.block210
  %.03267.us.us.7.ph = phi i32 [ 0, %iter.check196 ], [ %i.le, %vec.epilog.iter.check197 ], [ %i.lm, %vec.epilog.middle.block210 ]
  %.266.us.us.7.ph = phi i32 [ %.2.lcssa.us.6, %iter.check196 ], [ %i.ll, %vec.epilog.iter.check197 ], [ %i.lq, %vec.epilog.middle.block210 ]
  br label %.critedge.us.us.7

.critedge.us.us.7:                                ; preds = %.critedge.us.us.7.preheader, %.critedge.us.us.7
  %.03267.us.us.7 = phi i32 [ %i.ls, %.critedge.us.us.7 ], [ %.03267.us.us.7.ph, %.critedge.us.us.7.preheader ]
  %.266.us.us.7 = phi i32 [ %i.lr, %.critedge.us.us.7 ], [ %.266.us.us.7.ph, %.critedge.us.us.7.preheader ]
  %i.lr = add nsw i32 %i.kz, %.266.us.us.7        ; 2 uses
  %i.ls = add nsw i32 %i.ky, %.03267.us.us.7      ; 2 uses
  %i.lt = icmp slt i32 %i.ls, %i.kv
  br i1 %i.lt, label %.critedge.us.us.7, label %._crit_edge.split.us.us.7, !llvm.loop !262

._crit_edge.split.us.us.7:                        ; preds = %.critedge.us.us.7, %middle.block191, %vec.epilog.middle.block210, %._crit_edge.split.us.us.6
  %.2.lcssa.us.7 = phi i32 [ %.2.lcssa.us.6, %._crit_edge.split.us.us.6 ], [ %i.lq, %vec.epilog.middle.block210 ], [ %i.ll, %middle.block191 ], [ %i.lr, %.critedge.us.us.7 ] ; 4 uses
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
  br i1 %i.md, label %iter.check159, label %._crit_edge.split.us.us.8

iter.check159:                                    ; preds = %._crit_edge.split.us.us.7
  %i.me = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2352), align 8, !tbaa !89
  %i.mf = add nsw i32 %i.me, 1                    ; 4 uses
  %i.mg = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %i.mh = add nsw i32 %i.mc, -1
  %i.mi = udiv i32 %i.mh, %i.mf
  %i.mj = add i32 %i.mi, 1                        ; 7 uses
  %min.iters.check140 = icmp ult i32 %i.mj, 4
  br i1 %min.iters.check140, label %.critedge.us.us.8.preheader, label %vector.main.loop.iter.check141

vector.main.loop.iter.check141:                   ; preds = %iter.check159
  %min.iters.check142 = icmp ult i32 %i.mj, 32
  br i1 %min.iters.check142, label %vec.epilog.ph163, label %vector.ph143

vector.ph143:                                     ; preds = %vector.main.loop.iter.check141
  %i.mk = and i32 %i.mj, 28
  %n.vec144 = and i32 %i.mj, -32                  ; 4 uses
  %i.ml = mul i32 %n.vec144, %i.mf
  %i.mm = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.7, i64 0
  %broadcast.splatinsert145 = insertelement <8 x i32> poison, i32 %i.mg, i64 0
  %broadcast.splat146 = shufflevector <8 x i32> %broadcast.splatinsert145, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.ph143, %vector.body147
  %index148 = phi i32 [ 0, %vector.ph143 ], [ %index.next153, %vector.body147 ]
  %vec.phi149 = phi <8 x i32> [ %i.mm, %vector.ph143 ], [ %i.mn, %vector.body147 ]
  %vec.phi150 = phi <8 x i32> [ zeroinitializer, %vector.ph143 ], [ %i.mo, %vector.body147 ]
  %vec.phi151 = phi <8 x i32> [ zeroinitializer, %vector.ph143 ], [ %i.mp, %vector.body147 ]
  %vec.phi152 = phi <8 x i32> [ zeroinitializer, %vector.ph143 ], [ %i.mq, %vector.body147 ]
  %i.mn = add <8 x i32> %broadcast.splat146, %vec.phi149 ; 2 uses
  %i.mo = add <8 x i32> %broadcast.splat146, %vec.phi150 ; 2 uses
  %i.mp = add <8 x i32> %broadcast.splat146, %vec.phi151 ; 2 uses
  %i.mq = add <8 x i32> %broadcast.splat146, %vec.phi152 ; 2 uses
  %index.next153 = add nuw i32 %index148, 32      ; 2 uses
  %i.mr = icmp eq i32 %index.next153, %n.vec144
  br i1 %i.mr, label %middle.block154, label %vector.body147, !llvm.loop !263

middle.block154:                                  ; preds = %vector.body147
  %bin.rdx155 = add <8 x i32> %i.mo, %i.mn
  %bin.rdx156 = add <8 x i32> %i.mp, %bin.rdx155
  %bin.rdx157 = add <8 x i32> %i.mq, %bin.rdx156
  %i.ms = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx157) ; 3 uses
  %cmp.n158 = icmp eq i32 %i.mj, %n.vec144
  br i1 %cmp.n158, label %._crit_edge.split.us.us.8, label %vec.epilog.iter.check160

vec.epilog.iter.check160:                         ; preds = %middle.block154
  %min.epilog.iters.check162 = icmp eq i32 %i.mk, 0
  br i1 %min.epilog.iters.check162, label %.critedge.us.us.8.preheader, label %vec.epilog.ph163, !prof !138

vec.epilog.ph163:                                 ; preds = %vector.main.loop.iter.check141, %vec.epilog.iter.check160
  %vec.epilog.resume.val164 = phi i32 [ %n.vec144, %vec.epilog.iter.check160 ], [ 0, %vector.main.loop.iter.check141 ]
  %bc.merge.rdx165 = phi i32 [ %i.ms, %vec.epilog.iter.check160 ], [ %.2.lcssa.us.7, %vector.main.loop.iter.check141 ]
  %n.vec166 = and i32 %i.mj, -4                   ; 3 uses
  %i.mt = mul i32 %n.vec166, %i.mf
  %i.mu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx165, i64 0
  %broadcast.splatinsert167 = insertelement <4 x i32> poison, i32 %i.mg, i64 0
  %broadcast.splat168 = shufflevector <4 x i32> %broadcast.splatinsert167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body169

vec.epilog.vector.body169:                        ; preds = %vec.epilog.vector.body169, %vec.epilog.ph163
  %index170 = phi i32 [ %vec.epilog.resume.val164, %vec.epilog.ph163 ], [ %index.next172, %vec.epilog.vector.body169 ]
  %vec.phi171 = phi <4 x i32> [ %i.mu, %vec.epilog.ph163 ], [ %i.mv, %vec.epilog.vector.body169 ]
  %i.mv = add <4 x i32> %broadcast.splat168, %vec.phi171 ; 2 uses
  %index.next172 = add nuw i32 %index170, 4       ; 2 uses
  %i.mw = icmp eq i32 %index.next172, %n.vec166
  br i1 %i.mw, label %vec.epilog.middle.block173, label %vec.epilog.vector.body169, !llvm.loop !264

vec.epilog.middle.block173:                       ; preds = %vec.epilog.vector.body169
  %i.mx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.mv) ; 2 uses
  %cmp.n174 = icmp eq i32 %i.mj, %n.vec166
  br i1 %cmp.n174, label %._crit_edge.split.us.us.8, label %.critedge.us.us.8.preheader

.critedge.us.us.8.preheader:                      ; preds = %iter.check159, %vec.epilog.iter.check160, %vec.epilog.middle.block173
  %.03267.us.us.8.ph = phi i32 [ 0, %iter.check159 ], [ %i.ml, %vec.epilog.iter.check160 ], [ %i.mt, %vec.epilog.middle.block173 ]
  %.266.us.us.8.ph = phi i32 [ %.2.lcssa.us.7, %iter.check159 ], [ %i.ms, %vec.epilog.iter.check160 ], [ %i.mx, %vec.epilog.middle.block173 ]
  br label %.critedge.us.us.8

.critedge.us.us.8:                                ; preds = %.critedge.us.us.8.preheader, %.critedge.us.us.8
  %.03267.us.us.8 = phi i32 [ %i.mz, %.critedge.us.us.8 ], [ %.03267.us.us.8.ph, %.critedge.us.us.8.preheader ]
  %.266.us.us.8 = phi i32 [ %i.my, %.critedge.us.us.8 ], [ %.266.us.us.8.ph, %.critedge.us.us.8.preheader ]
  %i.my = add nsw i32 %i.mg, %.266.us.us.8        ; 2 uses
  %i.mz = add nsw i32 %i.mf, %.03267.us.us.8      ; 2 uses
  %i.na = icmp slt i32 %i.mz, %i.mc
  br i1 %i.na, label %.critedge.us.us.8, label %._crit_edge.split.us.us.8, !llvm.loop !265

._crit_edge.split.us.us.8:                        ; preds = %.critedge.us.us.8, %middle.block154, %vec.epilog.middle.block173, %._crit_edge.split.us.us.7
  %.2.lcssa.us.8 = phi i32 [ %.2.lcssa.us.7, %._crit_edge.split.us.us.7 ], [ %i.mx, %vec.epilog.middle.block173 ], [ %i.ms, %middle.block154 ], [ %i.my, %.critedge.us.us.8 ] ; 4 uses
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
  %i.nm = add nsw i32 %i.nl, 1                    ; 4 uses
  %i.nn = load i32, ptr %i.bp, align 4, !tbaa !116 ; 3 uses
  %i.no = add nsw i32 %i.nj, -1
  %i.np = udiv i32 %i.no, %i.nm
  %i.nq = add i32 %i.np, 1                        ; 7 uses
  %min.iters.check = icmp ult i32 %i.nq, 4
  br i1 %min.iters.check, label %.critedge.us.us.9.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check126 = icmp ult i32 %i.nq, 32
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nr = and i32 %i.nq, 28
  %n.vec = and i32 %i.nq, -32                     ; 4 uses
  %i.ns = mul i32 %n.vec, %i.nm
  %i.nt = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2.lcssa.us.8, i64 0
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.nn, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i32> [ %i.nt, %vector.ph ], [ %i.nu, %vector.body ]
  %vec.phi127 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.nv, %vector.body ]
  %vec.phi128 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.nw, %vector.body ]
  %vec.phi129 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.nx, %vector.body ]
  %i.nu = add <8 x i32> %broadcast.splat, %vec.phi ; 2 uses
  %i.nv = add <8 x i32> %broadcast.splat, %vec.phi127 ; 2 uses
  %i.nw = add <8 x i32> %broadcast.splat, %vec.phi128 ; 2 uses
  %i.nx = add <8 x i32> %broadcast.splat, %vec.phi129 ; 2 uses
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.ny = icmp eq i32 %index.next, %n.vec
  br i1 %i.ny, label %middle.block, label %vector.body, !llvm.loop !266

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.nv, %i.nu
  %bin.rdx130 = add <8 x i32> %i.nw, %bin.rdx
  %bin.rdx131 = add <8 x i32> %i.nx, %bin.rdx130
  %i.nz = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx131) ; 3 uses
  %cmp.n = icmp eq i32 %i.nq, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.nr, 0
  br i1 %min.epilog.iters.check, label %.critedge.us.us.9.preheader, label %vec.epilog.ph, !prof !138

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.nz, %vec.epilog.iter.check ], [ %.2.lcssa.us.8, %vector.main.loop.iter.check ]
  %n.vec132 = and i32 %i.nq, -4                   ; 3 uses
  %i.oa = mul i32 %n.vec132, %i.nm
  %i.ob = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert133 = insertelement <4 x i32> poison, i32 %i.nn, i64 0
  %broadcast.splat134 = shufflevector <4 x i32> %broadcast.splatinsert133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ]
  %vec.phi136 = phi <4 x i32> [ %i.ob, %vec.epilog.ph ], [ %i.oc, %vec.epilog.vector.body ]
  %i.oc = add <4 x i32> %broadcast.splat134, %vec.phi136 ; 2 uses
  %index.next137 = add nuw i32 %index135, 4       ; 2 uses
  %i.od = icmp eq i32 %index.next137, %n.vec132
  br i1 %i.od, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !267

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.oe = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.oc) ; 2 uses
  %cmp.n138 = icmp eq i32 %i.nq, %n.vec132
  br i1 %cmp.n138, label %.split.us, label %.critedge.us.us.9.preheader

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
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.0, i64 noundef %i.ok) #31
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
  %.sroa.0109.0161 = phi ptr [ %i.du, %_ZNSt6vectorI19InteractionFunctionSaIS0_EED2Ev.exit101.thread ], [ %i.e, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0109.0161, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !129  ; 3 uses
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = icmp slt i32 %i.i, 0
  br i1 %i.k, label %.noexc, label %_ZNSt6vectorI19InteractionFunctionSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

.noexc:                                           ; preds = %.lr.ph163
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #33
  unreachable

_ZNSt6vectorI19InteractionFunctionSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %.lr.ph163
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI19InteractionFunctionSaIS0_EEC2EmRKS0_RKS1_.exit, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %_ZNSt6vectorI19InteractionFunctionSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb:bb.a
  %i.iz = zext nneg i32 %.sroa.516.021.i.i.i.i.i to i64
  %i.ja = shl nuw i64 1, %i.iz
  %i.jb = zext nneg i32 %.sroa.59.022.i.i.i.i.i120 to i64
  %i.jc = shl nuw i64 1, %i.jb                    ; 2 uses
  %i.jd = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !78
  %i.je = and i64 %i.jd, %i.ja
  %.not.i.i.i.i.i.i121 = icmp eq i64 %i.je, 0
  br i1 %.not.i.i.i.i.i.i121, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.jf = load i64, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !78
  %i.jg = or i64 %i.jf, %i.jc
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.jh = xor i64 %i.jc, -1
  %i.ji = load i64, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !78
  %i.jj = and i64 %i.ji, %i.jh
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122:   ; preds = %bb.av, %bb.au
  %storemerge.i.i.i.i.i123 = phi i64 [ %i.jg, %bb.au ], [ %i.jj, %bb.av ]
  store i64 %storemerge.i.i.i.i.i123, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !78
  %i.jk = add i32 %.sroa.516.021.i.i.i.i.i, 1
  %i.jl = icmp eq i32 %.sroa.516.021.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.jl, i64 8, i64 0
  %spec.select.i.i.i.i.i124 = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i ; 2 uses
  %spec.select19.i.i.i.i.i125 = select i1 %i.jl, i32 0, i32 %i.jk ; 3 uses
  %i.jm = add i32 %.sroa.59.022.i.i.i.i.i120, 1
  %i.jn = icmp eq i32 %.sroa.59.022.i.i.i.i.i120, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i126 = select i1 %i.jn, i32 0, i32 %i.jm ; 3 uses
  %.sroa.07.1.idx.i.i.i.i.i127 = select i1 %i.jn, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i128 = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i.i.i.i.i119, i64 %.sroa.07.1.idx.i.i.i.i.i127 ; 4 uses
  %i.jo = zext nneg i32 %spec.select19.i.i.i.i.i125 to i64
  %i.jp = shl nuw i64 1, %i.jo
  %i.jq = zext nneg i32 %.sroa.59.1.i.i.i.i.i126 to i64
  %i.jr = shl nuw i64 1, %i.jq                    ; 2 uses
  %i.js = load i64, ptr %spec.select.i.i.i.i.i124, align 8, !tbaa !78
  %i.jt = and i64 %i.js, %i.jp
  %.not.i.i.i.i.i.i121.1 = icmp eq i64 %i.jt, 0
  br i1 %.not.i.i.i.i.i.i121.1, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122
  %i.ju = load i64, ptr %.sroa.07.1.i.i.i.i.i128, align 8, !tbaa !78
  %i.jv = or i64 %i.ju, %i.jr
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1

bb.ax:                                            ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122
  %i.jw = xor i64 %i.jr, -1
  %i.jx = load i64, ptr %.sroa.07.1.i.i.i.i.i128, align 8, !tbaa !78
  %i.jy = and i64 %i.jx, %i.jw
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1: ; preds = %bb.ax, %bb.aw
  %storemerge.i.i.i.i.i123.1 = phi i64 [ %i.jv, %bb.aw ], [ %i.jy, %bb.ax ]
  store i64 %storemerge.i.i.i.i.i123.1, ptr %.sroa.07.1.i.i.i.i.i128, align 8, !tbaa !78
  %i.jz = add i32 %spec.select19.i.i.i.i.i125, 1
  %i.ka = icmp eq i32 %spec.select19.i.i.i.i.i125, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.1 = select i1 %i.ka, i64 8, i64 0
  %spec.select.i.i.i.i.i124.1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i124, i64 %spec.select.idx.i.i.i.i.i.1
  %spec.select19.i.i.i.i.i125.1 = select i1 %i.ka, i32 0, i32 %i.jz
  %i.kb = add i32 %.sroa.59.1.i.i.i.i.i126, 1
  %i.kc = icmp eq i32 %.sroa.59.1.i.i.i.i.i126, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i126.1 = select i1 %i.kc, i32 0, i32 %i.kb ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i127.1 = select i1 %i.kc, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i128.1 = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i128, i64 %.sroa.07.1.idx.i.i.i.i.i127.1 ; 2 uses
  %i.kd = add nsw i64 %.024.i.i.i.i.i118, -2
  %i.ke = icmp sgt i64 %.024.i.i.i.i.i118, 2
  br i1 %i.ke, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !375

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101
  %.sroa.59.0.lcssa.i.i.i.i.i114 = phi i32 [ %i.gs, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.59.1.i.i.i.i.i126.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.sroa.59.1.i.i.i.i.i126.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ]
  %.sroa.07.0.lcssa.i.i.i.i.i115 = phi ptr [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.07.1.i.i.i.i.i128.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.sroa.07.1.i.i.i.i.i128.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ]
  %i.kf = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %.not.i129 = icmp eq ptr %i.kf, null
  br i1 %.not.i129, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.kg = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.kf to i64
  %i.kj = sub i64 %i.kh, %i.ki                    ; 2 uses
  %i.kk = ashr exact i64 %i.kj, 3
  %i.kl = sub nsw i64 0, %i.kk
  %i.km = getelementptr inbounds [8 x i8], ptr %i.kg, i64 %i.kl
  tail call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kj) #31
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.ay
  %i.kn = lshr i64 %i.eg, 6
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.kn
  store ptr %i.ko, ptr %i.b, align 8, !tbaa !38
  store ptr %i.ej, ptr %0, align 8
  %.sroa.5137.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5137.0..sroa_idx138, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i115, ptr %i.i, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  %.sroa.59.0.lcssa.i.i.i.i.i114.sink = phi i32 [ %.sroa.59.0.lcssa.i.i.i.i.i114, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.dz, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit ]
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i114.sink, ptr %i.k, align 8
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19VirtualSitesHandler4Impl15setVirtualSitesEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS3_95EEEiiNS_8ArrayRefIK12ParticleTypeEE(ptr noundef nonnull align 8 dereferenceable(104) initializes((40, 48)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr %4, ptr %5) local_unnamed_addr #7 align 2 {
bb.a:
  %6 = alloca %"class.gmx::ArrayRef.299", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %4, ptr %6, align 8, !tbaa !156
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = ptrtoint ptr %5 to i64
  %i.f = ptrtoint ptr %4 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g
  store ptr %i.h, ptr %i.d, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.k = icmp ne ptr %i.j, null
  tail call void @_ZN3gmx13ThreadingInfo15setVirtualSitesEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEENS_8ArrayRefIK9t_iparamsEEiiNS7_IK12ParticleTypeEEb(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef %1, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, i32 noundef %2, i32 noundef %3, ptr noundef nonnull byval(%"class.gmx::ArrayRef.299") align 8 %6, i1 noundef zeroext %i.k)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19VirtualSitesHandler15setVirtualSitesEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEEiiNS_8ArrayRefIK12ParticleTypeEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr %4, ptr %5) local_unnamed_addr #7 align 2 {
bb.a:
  %6 = alloca %"class.gmx::ArrayRef.299", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 5 uses
  %i.b = ptrtoint ptr %5 to i64
  %i.c = ptrtoint ptr %4 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %1, ptr %i.f, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  store ptr %4, ptr %6, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.e, ptr %i.i, align 8, !tbaa !156
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.l = icmp ne ptr %i.k, null
  tail call void @_ZN3gmx13ThreadingInfo15setVirtualSitesEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEENS_8ArrayRefIK9t_iparamsEEiiNS7_IK12ParticleTypeEEb(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef %1, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, i32 noundef %2, i32 noundef %3, ptr noundef nonnull byval(%"class.gmx::ArrayRef.299") align 8 %6, i1 noundef zeroext %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x ptr> @llvm.masked.load.v4p0.p0(ptr captures(none), <4 x i1>, <4 x ptr>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v8i32(<8 x i32>) #13

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nounwind memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { convergent nounwind }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { cold noreturn }
attributes #22 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nofree nounwind }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { noreturn }
attributes #34 = { builtin allocsize(0) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !26}
!1 = distinct !{!1, !26}
!2 = distinct !{!2, !26}
!3 = distinct !{!3, !26}
!4 = !{i32 7, !"openmp", i32 51}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTSN3gmx19VirtualSitesHandler4ImplE", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 int", !13, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 0}
!19 = !{!17, !16, i64 16}
!20 = !{!"p1 _ZTSSt10unique_ptrIN3gmx11VsiteThreadESt14default_deleteIS1_EE", !13, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN3gmx11VsiteThreadESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!21, !20, i64 0}
!23 = !{!21, !20, i64 8}
!24 = !{!"p1 _ZTSN3gmx11VsiteThreadE", !13, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!21, !20, i64 16}
!28 = !{!"p1 _ZTSN3gmx9AtomIndexE", !13, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN3gmx9AtomIndexESaIS1_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!29, !28, i64 0}
!31 = !{!29, !28, i64 8}
!32 = !{!29, !28, i64 16}
!33 = !{!"p1 long", !13, i64 0}
!34 = !{!"_ZTSSt18_Bit_iterator_base", !33, i64 0, !10, i64 8}
!35 = !{!34, !33, i64 0}
!36 = !{!"_ZTSSt13_Bit_iterator", !34, i64 0}
!37 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !36, i64 0, !36, i64 16, !33, i64 32}
!38 = !{!37, !33, i64 32}
!39 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !13, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!40, !39, i64 0}
!42 = !{!40, !39, i64 16}
!43 = !{!"_ZTS7PbcType", !9, i64 0}
!44 = !{!"bool", !9, i64 0}
!45 = !{!"p1 _ZTS12gmx_domdec_t", !13, i64 0}
!46 = !{!"_ZTSN3gmx10DomainInfoE", !43, i64 0, !44, i64 4, !45, i64 8}
!47 = !{!"p1 _ZTS9t_iparams", !13, i64 0}
!48 = !{!"_ZTSN3gmx12ArrayRefIterIK9t_iparamsEE", !47, i64 0}
!49 = !{!"_ZTSN3gmx8ArrayRefIK9t_iparamsEE", !48, i64 0, !48, i64 8}
!50 = !{!"p1 _ZTSN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEE", !13, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN3gmx11VsiteThreadESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !21, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN3gmx11VsiteThreadESt14default_deleteIS2_EESaIS5_EE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorISt10unique_ptrIN3gmx11VsiteThreadESt14default_deleteIS2_EESaIS5_EE", !52, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !17, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorIiSaIiEE", !55, i64 0}
!57 = !{!"_ZTSN3gmx13ThreadingInfoE", !10, i64 0, !53, i64 8, !56, i64 32}
!58 = !{!"_ZTSN3gmx19VirtualSitesHandler4ImplE", !10, i64 0, !46, i64 8, !49, i64 24, !50, i64 40, !57, i64 48}
!59 = !{!58, !10, i64 0}
!60 = !{!58, !50, i64 40}
!61 = !{!"p1 _ZTSN3gmx13ThreadingInfoE", !13, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!46, !45, i64 8}
!64 = !{!46, !43, i64 0}
!65 = !{!46, !44, i64 4}
!66 = !{i8 0, i8 2}
!67 = !{}
!68 = !{!"p1 _ZTS5t_pbc", !13, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!57, !10, i64 0}
!71 = !{!48, !47, i64 0}
!72 = !{!"_ZTSN3gmx12ArrayRefIterINS_11BasicVectorIfEEEE", !39, i64 0}
!73 = !{!72, !39, i64 0}
!74 = !{!"p1 omnipotent char", !13, i64 0}
!75 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !74, i64 0}
!76 = !{!75, !74, i64 0}
!77 = !{!"long", !9, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !75, i64 0, !77, i64 8, !9, i64 16}
!80 = !{!79, !74, i64 0}
!81 = !{!9, !9, i64 0}
!82 = !{!79, !77, i64 8}
!83 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !13, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!"_ZTS19InteractionFunction", !9, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!16, !16, i64 0}
!88 = !{!"_ZTS22t_interaction_function", !74, i64 0, !74, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28}
!89 = !{!88, !10, i64 16}
!90 = !{!10, !10, i64 0}
!91 = !{!"float", !9, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEE", !9, i64 0}
!94 = !{!"_ZTSSt5arrayIN3gmx11BasicVectorIfEELm45EE", !9, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !40, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !95, i64 0}
!97 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !96, i64 0}
!98 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !37, i64 0}
!99 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !98, i64 0}
!100 = !{!"_ZTSSt6vectorIbSaIbEE", !99, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseIN3gmx9AtomIndexESaIS1_EE12_Vector_implE", !29, i64 0}
!102 = !{!"_ZTSSt12_Vector_baseIN3gmx9AtomIndexESaIS1_EE", !101, i64 0}
!103 = !{!"_ZTSSt6vectorIN3gmx9AtomIndexESaIS1_EE", !102, i64 0}
!104 = !{!"_ZTSN3gmx18InterdependentTaskE", !93, i64 0, !97, i64 2280, !56, i64 2304, !100, i64 2328, !10, i64 2368, !103, i64 2376, !56, i64 2400, !56, i64 2424}
!105 = !{!"_ZTSN3gmx11VsiteThreadE", !10, i64 0, !10, i64 4, !93, i64 8, !94, i64 2288, !9, i64 2828, !44, i64 2864, !104, i64 2872}
!106 = !{!105, !44, i64 2864}
!107 = !{i64 2, i64 -1, i64 -1, i1 true}
!108 = !{!107}
!109 = !{!"p1 _ZTS14gmx_molblock_t", !13, i64 0}
!110 = !{!"_ZTS14gmx_molblock_t", !10, i64 0, !10, i64 4, !97, i64 8, !97, i64 32}
!111 = !{!110, !10, i64 0}
!112 = !{!"p1 _ZTS13gmx_moltype_t", !13, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseI13gmx_moltype_tSaIS0_EE17_Vector_impl_dataE", !112, i64 0, !112, i64 8, !112, i64 16}
!114 = !{!113, !112, i64 0}
!115 = !{!17, !16, i64 8}
!116 = !{!110, !10, i64 4}
!117 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!118 = !{!117, !47, i64 0}
!119 = !{!"any p2 pointer", !13, i64 0}
!120 = !{!"p2 omnipotent char", !119, i64 0}
!121 = !{!"p1 _ZTS6t_atom", !13, i64 0}
!122 = !{!"any p3 pointer", !119, i64 0}
!123 = !{!"p3 omnipotent char", !122, i64 0}
!124 = !{!"p1 _ZTS9t_resinfo", !13, i64 0}
!125 = !{!"p1 _ZTS9t_pdbinfo", !13, i64 0}
!126 = !{!"_ZTS7t_atoms", !10, i64 0, !121, i64 8, !123, i64 16, !123, i64 24, !123, i64 32, !10, i64 40, !124, i64 48, !125, i64 56, !44, i64 64, !44, i64 65, !44, i64 66, !44, i64 67, !44, i64 68}
!127 = !{!"_ZTSN3gmx11ListOfListsIiEE", !56, i64 0, !56, i64 24}
!128 = !{!"_ZTS13gmx_moltype_t", !120, i64 0, !126, i64 8, !93, i64 80, !127, i64 2360}
!129 = !{!128, !10, i64 8}
!130 = !{!"_ZTSN3gmx19VirtualSitesHandler14VirialHandlingE", !9, i64 0}
!131 = !{!130, !130, i64 0}
!132 = !{!"llvm.loop.unroll.disable"}
!133 = !{!109, !109, i64 0}
!134 = !{!88, !10, i64 28}
!135 = !{!"llvm.loop.isvectorized", i32 1}
!136 = !{!"llvm.loop.unroll.runtime.disable"}
!137 = !{!"branch_weights", i32 8, i32 24}
!138 = !{!"branch_weights", i32 4, i32 28}
!139 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !9, i64 0, !44, i64 32}
end_hunk_1
