Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/updategroups?download=true
inline.NumInlined: 1260
inline.NumDeleted: 664
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN3gmx34makeUpdateGroupingsPerMoleculeTypeB5cxx11ERK10gmx_mtop_t:bb.a
  %i.th = getelementptr inbounds [8 x i8], ptr %.sroa.18130.0.i.i, i64 %i.tg
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.te) #24, !noalias !96
  br label %.body66.i

bb.ch:                                            ; preds = %bb.cf, %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit._crit_edge.i.i.i
  %i.ti = sext i32 %.0238.i to i64                ; 4 uses
  %i.tj = sdiv i32 %.0238.i, 64
  %.sext.i.i = sext i32 %i.tj to i64
  %i.tk = getelementptr inbounds [8 x i8], ptr %.sroa.0122.0.i.i, i64 %.sext.i.i
  %i.tl = and i64 %i.ti, -9223372036854775745
  %i.tm = icmp ugt i64 %i.tl, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i = select i1 %i.tm, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.tk, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.tn = and i64 %i.ti, 63
  %i.to = shl nuw i64 1, %i.tn
  %i.tp = load i64, ptr %storemerge.i.i.i.i.i.i.i, align 8, !tbaa !47, !noalias !96
  %i.tq = and i64 %i.tp, %i.to
  %.not154.i61.i = icmp eq i64 %i.tq, 0
  br i1 %.not154.i61.i, label %bb.ci, label %.critedge.i.i.preheader

bb.ci:                                            ; preds = %bb.ch
  %i.tr = load ptr, ptr %4, align 8, !tbaa !39, !noalias !96
  %i.ts = getelementptr [4 x i8], ptr %i.tr, i64 %i.ti ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !23, !noalias !96
  %i.tu = getelementptr i8, ptr %i.ts, i64 4
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !23, !noalias !96
  %i.tw = icmp eq i32 %i.tt, %i.tv
  br i1 %i.tw, label %.loopexit.i, label %.critedge.i.i.preheader

.critedge.i.i.preheader:                          ; preds = %bb.ci, %bb.ch
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %.thread141.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.thread141.i.i ], [ %i.ti, %.critedge.i.i.preheader ] ; 6 uses
  %.034174.i.i = phi i32 [ %.2.i.i, %.thread141.i.i ], [ 0, %.critedge.i.i.preheader ] ; 2 uses
  %.0134173.i.i = phi i32 [ %.sroa.speculated.i.i, %.thread141.i.i ], [ %.0238.i, %.critedge.i.i.preheader ]
  %.0136172.i.i = phi i32 [ %.1137.i.i, %.thread141.i.i ], [ 0, %.critedge.i.i.preheader ] ; 2 uses
  %i.tx = trunc nsw i64 %indvars.iv.i.i to i32    ; 9 uses
  %i.ty = sdiv i32 %i.tx, 64
  %.sext153.i.i = sext i32 %i.ty to i64
  %i.tz = getelementptr inbounds [8 x i8], ptr %.sroa.0122.0.i.i, i64 %.sext153.i.i
  %i.ua = and i64 %indvars.iv.i.i, -9223372036854775745
  %i.ub = icmp ugt i64 %i.ua, -9223372036854775808
  %storemerge.idx.i.i.i.i.i65.i.i = select i1 %i.ub, i64 -8, i64 0
  %storemerge.i.i.i.i.i66.i.i = getelementptr inbounds i8, ptr %i.tz, i64 %storemerge.idx.i.i.i.i.i65.i.i
  %i.uc = and i64 %indvars.iv.i.i, 63
  %i.ud = shl nuw i64 1, %i.uc
  %i.ue = load i64, ptr %storemerge.i.i.i.i.i66.i.i, align 8, !tbaa !47, !noalias !96
  %i.uf = and i64 %i.ue, %i.ud
  %.not155.i.i = icmp eq i64 %i.uf, 0
  br i1 %.not155.i.i, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %.critedge.i.i
  %i.ug = invoke fastcc i64 @_ZN3gmxL19vsiteConstructRangeEiRK13gmx_moltype_t(i32 noundef %i.tx, ptr noundef nonnull align 8 dereferenceable(2408) %.sroa.034.0209)
          to label %bb.ck unwind label %.thread145.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !96 ; 2 uses

bb.ck:                                            ; preds = %bb.cj
  %.sroa.097.0.extract.trunc.i.i = trunc i64 %i.ug to i32
  %.not58.i.i = icmp sgt i32 %.0238.i, %.sroa.097.0.extract.trunc.i.i
  br i1 %.not58.i.i, label %.loopexit.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.sroa.598.0.extract.shift.i.i = lshr i64 %i.ug, 32
  %.sroa.598.0.extract.trunc.i.i = trunc nuw i64 %.sroa.598.0.extract.shift.i.i to i32
  br label %.thread141.i.i

bb.cm:                                            ; preds = %.critedge.i.i
  %i.uh = load ptr, ptr %i.l, align 8, !tbaa !39, !noalias !96 ; 2 uses
  %i.ui = load ptr, ptr %4, align 8, !tbaa !39, !noalias !96
  %i.uj = getelementptr [4 x i8], ptr %i.ui, i64 %indvars.iv.i.i ; 2 uses
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !23, !noalias !96 ; 2 uses
  %i.ul = sext i32 %i.uk to i64
  %.idx156.i.i = shl nsw i64 %i.ul, 2             ; 3 uses
  %i.um = getelementptr i8, ptr %i.uj, i64 4
  %i.un = load i32, ptr %i.um, align 4, !tbaa !23, !noalias !96 ; 2 uses
  %i.uo = sext i32 %i.un to i64
  %.idx.i.i = shl nsw i64 %i.uo, 2                ; 3 uses
  %i.up = getelementptr inbounds i8, ptr %i.uh, i64 %.idx.i.i
  %gepdiff.i.i = sub nsw i64 %.idx.i.i, %.idx156.i.i
  %i.uq = lshr exact i64 %gepdiff.i.i, 2
  %i.ur = trunc i64 %i.uq to i32                  ; 2 uses
  %i.us = icmp eq i32 %i.ur, 0
  br i1 %i.us, label %.loopexit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ut = add nsw i32 %.034174.i.i, 1
  %.sroa.speculated93.i.i = call i32 @llvm.smax.i32(i32 %.0136172.i.i, i32 %i.ur)
  %.val64.i.i = load ptr, ptr %i.j, align 8, !noalias !96 ; 6 uses
  %.not17.i.i.i = icmp eq i32 %i.uk, %i.un
  br i1 %.not17.i.i.i, label %.loopexit.i.i, label %iter.check

iter.check:                                       ; preds = %bb.cn
  %i.uu = getelementptr inbounds i8, ptr %i.uh, i64 %.idx156.i.i ; 5 uses
  %i.uv = add nsw i64 %.idx.i.i, -4
  %i.uw = sub nsw i64 %i.uv, %.idx156.i.i         ; 3 uses
  %i.ux = lshr exact i64 %i.uw, 2
  %i.uy = add nuw nsw i64 %i.ux, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.uw, 28
  br i1 %min.iters.check, label %.lr.ph.i72.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check735 = icmp ult i64 %i.uw, 124
  br i1 %min.iters.check735, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.uz = and i64 %i.uy, 24
  %n.vec = and i64 %i.uy, 9223372036854775776     ; 4 uses
  %i.va = shl i64 %n.vec, 2
  %i.vb = getelementptr i8, ptr %i.uu, i64 %i.va
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.tx, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.wa, %vector.body ]
  %vec.phi736 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.wb, %vector.body ]
  %vec.phi737 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.wc, %vector.body ]
  %vec.phi738 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.wd, %vector.body ]
  %vec.phi739 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.vw, %vector.body ]
  %vec.phi740 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.vx, %vector.body ]
  %vec.phi741 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.vy, %vector.body ]
  %vec.phi742 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.vz, %vector.body ]
  %i.vc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.uu, i64 %i.vc ; 4 uses
  %i.vd = getelementptr i8, ptr %next.gep, i64 32
  %i.ve = getelementptr i8, ptr %next.gep, i64 64
  %i.vf = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !23, !noalias !96
  %wide.load743 = load <8 x i32>, ptr %i.vd, align 4, !tbaa !23, !noalias !96
  %wide.load744 = load <8 x i32>, ptr %i.ve, align 4, !tbaa !23, !noalias !96
  %wide.load745 = load <8 x i32>, ptr %i.vf, align 4, !tbaa !23, !noalias !96
  %i.vg = mul nsw <8 x i32> %wide.load, splat (i32 3)
  %i.vh = mul nsw <8 x i32> %wide.load743, splat (i32 3)
  %i.vi = mul nsw <8 x i32> %wide.load744, splat (i32 3)
  %i.vj = mul nsw <8 x i32> %wide.load745, splat (i32 3)
  %i.vk = sext <8 x i32> %i.vg to <8 x i64>
  %i.vl = sext <8 x i32> %i.vh to <8 x i64>
  %i.vm = sext <8 x i32> %i.vi to <8 x i64>
  %i.vn = sext <8 x i32> %i.vj to <8 x i64>
  %wide.gep = getelementptr [4 x i8], ptr %.val64.i.i, <8 x i64> %i.vk ; 2 uses
  %wide.gep746 = getelementptr [4 x i8], ptr %.val64.i.i, <8 x i64> %i.vl ; 2 uses
  %wide.gep747 = getelementptr [4 x i8], ptr %.val64.i.i, <8 x i64> %i.vm ; 2 uses
  %wide.gep748 = getelementptr [4 x i8], ptr %.val64.i.i, <8 x i64> %i.vn ; 2 uses
  %wide.gep749 = getelementptr i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep750 = getelementptr i8, <8 x ptr> %wide.gep746, i64 4
  %wide.gep751 = getelementptr i8, <8 x ptr> %wide.gep747, i64 4
  %wide.gep752 = getelementptr i8, <8 x ptr> %wide.gep748, i64 4
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep749, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !23, !noalias !96 ; 2 uses
  %wide.masked.gather753 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep750, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !23, !noalias !96 ; 2 uses
  %wide.masked.gather754 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep751, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !23, !noalias !96 ; 2 uses
  %wide.masked.gather755 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep752, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !23, !noalias !96 ; 2 uses
  %i.vo = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather, <8 x i32> %vec.phi739)
  %i.vp = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather753, <8 x i32> %vec.phi740)
  %i.vq = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather754, <8 x i32> %vec.phi741)
  %i.vr = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather755, <8 x i32> %vec.phi742)
  %i.vs = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi, <8 x i32> %wide.masked.gather)
  %i.vt = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi736, <8 x i32> %wide.masked.gather753)
  %i.vu = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi737, <8 x i32> %wide.masked.gather754)
  %i.vv = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi738, <8 x i32> %wide.masked.gather755)
  %wide.gep756 = getelementptr i8, <8 x ptr> %wide.gep, i64 8
  %wide.gep757 = getelementptr i8, <8 x ptr> %wide.gep746, i64 8
  %wide.gep758 = getelementptr i8, <8 x ptr> %wide.gep747, i64 8
  %wide.gep759 = getelementptr i8, <8 x ptr> %wide.gep748, i64 8
  %wide.masked.gather760 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep756, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !23, !noalias !96 ; 2 uses
  %wide.masked.gather761 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep757, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !23, !noalias !96 ; 2 uses
  %wide.masked.gather762 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep758, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !23, !noalias !96 ; 2 uses
  %wide.masked.gather763 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep759, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !23, !noalias !96 ; 2 uses
  %i.vw = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather760, <8 x i32> %i.vo) ; 2 uses
  %i.vx = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather761, <8 x i32> %i.vp) ; 2 uses
  %i.vy = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather762, <8 x i32> %i.vq) ; 2 uses
  %i.vz = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather763, <8 x i32> %i.vr) ; 2 uses
  %i.wa = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.vs, <8 x i32> %wide.masked.gather760) ; 2 uses
  %i.wb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.vt, <8 x i32> %wide.masked.gather761) ; 2 uses
  %i.wc = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.vu, <8 x i32> %wide.masked.gather762) ; 2 uses
  %i.wd = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.vv, <8 x i32> %wide.masked.gather763) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.we = icmp eq i64 %index.next, %n.vec
  br i1 %i.we, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.wa, <8 x i32> %i.wb)
  %rdx.minmax764 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.wc)
  %rdx.minmax765 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax764, <8 x i32> %i.wd)
  %i.wf = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax765) ; 3 uses
  %rdx.minmax766 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.vw, <8 x i32> %i.vx)
  %rdx.minmax767 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax766, <8 x i32> %i.vy)
  %rdx.minmax768 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax767, <8 x i32> %i.vz)
  %i.wg = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax768) ; 3 uses
  %cmp.n = icmp eq i64 %i.uy, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.uz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i72.i.i.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.wf, %vec.epilog.iter.check ], [ %i.tx, %vector.main.loop.iter.check ]
  %bc.merge.rdx769 = phi i32 [ %i.wg, %vec.epilog.iter.check ], [ %i.tx, %vector.main.loop.iter.check ]
  %broadcast.splatinsert775 = insertelement <8 x i32> poison, i32 %bc.merge.rdx769, i64 0
  %broadcast.splat776 = shufflevector <8 x i32> %broadcast.splatinsert775, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert772 = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat773 = shufflevector <8 x i32> %broadcast.splatinsert772, <8 x i32> poison, <8 x i32> zeroinitializer
  %n.vec770 = and i64 %i.uy, 9223372036854775800  ; 3 uses
  %7 = shl i64 %n.vec770, 2
  %8 = getelementptr i8, ptr %i.uu, i64 %7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index775 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next785, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi776 = phi <8 x i32> [ %broadcast.splat773, %vec.epilog.ph ], [ %i.wn, %vec.epilog.vector.body ]
  %vec.phi777 = phi <8 x i32> [ %broadcast.splat776, %vec.epilog.ph ], [ %i.wm, %vec.epilog.vector.body ]
  %i.wh = shl i64 %index775, 2
  %next.gep778 = getelementptr i8, ptr %i.uu, i64 %i.wh
  %wide.load779 = load <8 x i32>, ptr %next.gep778, align 4, !tbaa !23, !noalias !96
  %i.wi = mul nsw <8 x i32> %wide.load779, splat (i32 3)
  %i.wj = sext <8 x i32> %i.wi to <8 x i64>
  %wide.gep780 = getelementptr [4 x i8], ptr %.val64.i.i, <8 x i64> %i.wj ; 2 uses
  %wide.gep781 = getelementptr i8, <8 x ptr> %wide.gep780, i64 4
  %wide.masked.gather782 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep781, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !23, !noalias !96 ; 2 uses
  %i.wk = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather782, <8 x i32> %vec.phi777)
  %i.wl = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi776, <8 x i32> %wide.masked.gather782)
  %wide.gep783 = getelementptr i8, <8 x ptr> %wide.gep780, i64 8
  %wide.masked.gather784 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep783, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !23, !noalias !96 ; 2 uses
  %i.wm = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather784, <8 x i32> %i.wk) ; 2 uses
  %i.wn = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.wl, <8 x i32> %wide.masked.gather784) ; 2 uses
  %index.next785 = add nuw i64 %index775, 8       ; 2 uses
  %i.wo = icmp eq i64 %index.next785, %n.vec770
  br i1 %i.wo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.wp = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.wn) ; 2 uses
  %i.wq = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.wm) ; 2 uses
  %cmp.n786 = icmp eq i64 %i.uy, %n.vec770
  br i1 %cmp.n786, label %.loopexit.i.i, label %.lr.ph.i72.i.i.preheader

.lr.ph.i72.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.5.020.i.i.i.ph = phi i32 [ %i.tx, %iter.check ], [ %i.wf, %vec.epilog.iter.check ], [ %i.wp, %vec.epilog.middle.block ]
  %.sroa.0.019.i.i.i.ph = phi ptr [ %i.uu, %iter.check ], [ %i.vb, %vec.epilog.iter.check ], [ %8, %vec.epilog.middle.block ]
  %.sroa.012.018.i.i.i.ph = phi i32 [ %i.tx, %iter.check ], [ %i.wg, %vec.epilog.iter.check ], [ %i.wq, %vec.epilog.middle.block ]
  br label %.lr.ph.i72.i.i

.lr.ph.i72.i.i:                                   ; preds = %.lr.ph.i72.i.i.preheader, %.lr.ph.i72.i.i
  %.sroa.5.020.i.i.i = phi i32 [ %.sroa.speculated.1.i.i.i, %.lr.ph.i72.i.i ], [ %.sroa.5.020.i.i.i.ph, %.lr.ph.i72.i.i.preheader ]
  %.sroa.0.019.i.i.i = phi ptr [ %i.wz, %.lr.ph.i72.i.i ], [ %.sroa.0.019.i.i.i.ph, %.lr.ph.i72.i.i.preheader ] ; 2 uses
  %.sroa.012.018.i.i.i = phi i32 [ %.sroa.speculated6.1.i.i.i, %.lr.ph.i72.i.i ], [ %.sroa.012.018.i.i.i.ph, %.lr.ph.i72.i.i.preheader ]
  %i.wr = load i32, ptr %.sroa.0.019.i.i.i, align 4, !tbaa !23, !noalias !96
  %i.ws = mul nsw i32 %i.wr, 3
  %i.wt = sext i32 %i.ws to i64
  %i.wu = getelementptr [4 x i8], ptr %.val64.i.i, i64 %i.wt ; 2 uses
  %i.wv = getelementptr i8, ptr %i.wu, i64 4
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !23, !noalias !96 ; 2 uses
  %.sroa.speculated6.i.i.i = call i32 @llvm.smin.i32(i32 %i.ww, i32 %.sroa.012.018.i.i.i)
  %.sroa.speculated.i.i.i = call i32 @llvm.smax.i32(i32 %.sroa.5.020.i.i.i, i32 %i.ww)
  %i.wx = getelementptr i8, ptr %i.wu, i64 8
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !23, !noalias !96 ; 2 uses
  %.sroa.speculated6.1.i.i.i = call i32 @llvm.smin.i32(i32 %i.wy, i32 %.sroa.speculated6.i.i.i) ; 2 uses
  %.sroa.speculated.1.i.i.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i, i32 %i.wy) ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i, i64 4 ; 2 uses
  %.not.i73.i62.i = icmp eq ptr %i.wz, %i.up
  br i1 %.not.i73.i62.i, label %.loopexit.i.i, label %.lr.ph.i72.i.i, !llvm.loop !92

.loopexit.i.i:                                    ; preds = %.lr.ph.i72.i.i, %middle.block, %vec.epilog.middle.block, %bb.cn
  %.sroa.012.0.lcssa.i.i.i = phi i32 [ %i.tx, %bb.cn ], [ %i.wq, %vec.epilog.middle.block ], [ %i.wg, %middle.block ], [ %.sroa.speculated6.1.i.i.i, %.lr.ph.i72.i.i ]
  %.sroa.5.0.lcssa.i.i.i = phi i32 [ %i.tx, %bb.cn ], [ %i.wp, %vec.epilog.middle.block ], [ %i.wf, %middle.block ], [ %.sroa.speculated.1.i.i.i, %.lr.ph.i72.i.i ]
  %.not157.i63.i = icmp slt i32 %.sroa.012.0.lcssa.i.i.i, %.0238.i
  br i1 %.not157.i63.i, label %.loopexit.i, label %.thread141.i.i

.thread141.i.i:                                   ; preds = %.loopexit.i.i, %bb.cl
  %.sroa.5.0.lcssa.i.sink.i.i = phi i32 [ %.sroa.598.0.extract.trunc.i.i, %bb.cl ], [ %.sroa.5.0.lcssa.i.i.i, %.loopexit.i.i ]
  %.1137.i.i = phi i32 [ %.0136172.i.i, %bb.cl ], [ %.sroa.speculated93.i.i, %.loopexit.i.i ] ; 3 uses
  %.2.i.i = phi i32 [ %.034174.i.i, %bb.cl ], [ %i.ut, %.loopexit.i.i ] ; 3 uses
  %.sroa.speculated.i.i = call i32 @llvm.smax.i32(i32 %.0134173.i.i, i32 %.sroa.5.0.lcssa.i.sink.i.i) ; 8 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1
  %i.xa = sext i32 %.sroa.speculated.i.i to i64
  %.not.not.i.i = icmp slt i64 %indvars.iv.i.i, %i.xa
  br i1 %.not.not.i.i, label %.critedge.i.i, label %bb.co, !llvm.loop !93

bb.co:                                            ; preds = %.thread141.i.i
  %i.xb = add nsw i32 %.sroa.speculated.i.i, 1    ; 5 uses
  %i.xc = load i32, ptr %i.qc, align 8, !tbaa !115, !noalias !96
  %i.xd = icmp slt i32 %i.xb, %i.xc
  br i1 %i.xd, label %bb.cp, label %.critedge4.i.i

bb.cp:                                            ; preds = %bb.co
  %i.xe = sext i32 %i.xb to i64                   ; 2 uses
  %i.xf = sdiv i32 %i.xb, 64
  %.sext151.i.i = sext i32 %i.xf to i64
  %i.xg = getelementptr inbounds [8 x i8], ptr %.sroa.0122.0.i.i, i64 %.sext151.i.i
  %i.xh = and i64 %i.xe, -9223372036854775745
  %i.xi = icmp ugt i64 %i.xh, -9223372036854775808
  %storemerge.idx.i.i.i.i.i75.i.i = select i1 %i.xi, i64 -8, i64 0
  %storemerge.i.i.i.i.i76.i.i = getelementptr inbounds i8, ptr %i.xg, i64 %storemerge.idx.i.i.i.i.i75.i.i
  %i.xj = and i64 %i.xe, 63
  %i.xk = shl nuw i64 1, %i.xj
  %i.xl = load i64, ptr %storemerge.i.i.i.i.i76.i.i, align 8, !tbaa !47, !noalias !96
  %i.xm = and i64 %i.xl, %i.xk
  %.not158.i.i = icmp eq i64 %i.xm, 0
  br i1 %.not158.i.i, label %.critedge4.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.xn = invoke fastcc i64 @_ZN3gmxL19vsiteConstructRangeEiRK13gmx_moltype_t(i32 noundef %i.xb, ptr noundef nonnull align 8 dereferenceable(2408) %.sroa.034.0209)
          to label %bb.cr unwind label %.thread145.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !96 ; 2 uses

bb.cr:                                            ; preds = %bb.cq
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.xn to i32 ; 2 uses
  %i.xo = icmp sgt i32 %.0238.i, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.xo, label %.loopexit.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.sroa.6.0.extract.shift.i.i = lshr i64 %i.xn, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  %.not50.i.i = icmp slt i32 %.sroa.speculated.i.i, %.sroa.6.0.extract.trunc.i.i
  br i1 %.not50.i.i, label %bb.ct, label %.critedge4.i.i

bb.ct:                                            ; preds = %bb.cs
  %.not51.i.i = icmp slt i32 %.sroa.speculated.i.i, %.sroa.0.0.extract.trunc.i.i
  br i1 %.not51.i.i, label %.critedge4.i.i, label %.loopexit.i

.critedge4.i.i:                                   ; preds = %bb.ct, %bb.cs, %bb.cp, %bb.co
  %.4.i.i = phi i32 [ %.sroa.speculated.i.i, %bb.ct ], [ %i.xb, %bb.cs ], [ %.sroa.speculated.i.i, %bb.cp ], [ %.sroa.speculated.i.i, %bb.co ]
  %i.xp = icmp slt i32 %.1137.i.i, %.2.i.i
  br i1 %i.xp, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %.critedge4.i.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmxL11detectGroupEiRK13gmx_moltype_tRKNS_11ListOfListsIiEERK15InteractionListENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 363) #28
          to label %.noexc.i.i unwind label %.thread145.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !96

.noexc.i.i:                                       ; preds = %bb.cu
  unreachable

bb.cv:                                            ; preds = %.critedge4.i.i
  %i.xq = add nsw i32 %.2.i.i, -1
  %.not52.i.i = icmp eq i32 %.1137.i.i, %i.xq
  br i1 %.not52.i.i, label %bb.cw, label %.loopexit.i

.thread145.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cj, %bb.cq, %bb.cu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i.i

bb.cw:                                            ; preds = %bb.cv
  %reass.sub = sub i32 %.4.i.i, %.0238.i
  %i.xr = add i32 %reass.sub, 1
  %i.xs = zext i32 %i.xr to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.i, %bb.cm, %bb.ck, %bb.cw, %bb.cv, %bb.ct, %bb.cr, %bb.ci
  %.sroa.9.5.i.i = phi i64 [ 1, %bb.ci ], [ 4294967300, %bb.cv ], [ %i.xs, %bb.cw ], [ 4294967298, %bb.ct ], [ 4294967298, %bb.cr ], [ 4294967298, %bb.ck ], [ 4294967299, %bb.cm ], [ 4294967299, %.loopexit.i.i ] ; 2 uses
  %i.xt = ptrtoint ptr %.sroa.18130.0.i.i to i64
  %i.xu = ptrtoint ptr %.sroa.0122.0.i.i to i64
  %i.xv = sub i64 %i.xt, %i.xu                    ; 2 uses
  %i.xw = ashr exact i64 %i.xv, 3
  %i.xx = sub nsw i64 0, %i.xw
  %i.xy = getelementptr inbounds [8 x i8], ptr %.sroa.18130.0.i.i, i64 %i.xx
  call void @_ZdlPvm(ptr noundef %i.xy, i64 noundef %i.xv) #24, !noalias !96
  %.not.i = icmp samesign ult i64 %.sroa.9.5.i.i, 4294967296
  %.sroa.0.0.extract.trunc94.i = trunc i64 %.sroa.9.5.i.i to i32 ; 3 uses
  br i1 %.not.i, label %_ZSt3getIiJiN3gmx22IncompatibilityReasonsEEERKT_RKSt7variantIJDpT0_EE.exit.i, label %.thread.i

.thread.i:                                        ; preds = %.loopexit.i
  store i32 %.sroa.0.0.extract.trunc94.i, ptr %6, align 8, !tbaa !120, !alias.scope !96
  br label %bb.dd

.body54.i:                                        ; preds = %bb.bt, %.body.i36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !96
  br label %bb.dj

bb.cx:                                            ; preds = %_ZN15InteractionListaSEOS_.exit.thread.i
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

_ZSt3getIiJiN3gmx22IncompatibilityReasonsEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %.loopexit.i
  %i.ya = getelementptr inbounds i8, ptr %.sroa.12.0236.i, i64 -4
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !23, !noalias !96
  %i.yc = add nsw i32 %i.yb, %.sroa.0.0.extract.trunc94.i ; 2 uses
  %.not.i.i.i72.i = icmp eq ptr %.sroa.12.0236.i, %.sroa.17.0235.i
  br i1 %.not.i.i.i72.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_ZSt3getIiJiN3gmx22IncompatibilityReasonsEEERKT_RKSt7variantIJDpT0_EE.exit.i
  store i32 %i.yc, ptr %.sroa.12.0236.i, align 4, !tbaa !23, !noalias !96
  br label %bb.dc

bb.cz:                                            ; preds = %_ZSt3getIiJiN3gmx22IncompatibilityReasonsEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %i.yd = ptrtoint ptr %.sroa.12.0236.i to i64
  %i.ye = ptrtoint ptr %.sroa.0107.0237.i to i64
  %i.yf = sub i64 %i.yd, %i.ye                    ; 6 uses
  %i.yg = icmp eq i64 %i.yf, 9223372036854775804
  br i1 %i.yg, label %bb.da, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i74.i

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %.noexc80.i unwind label %.loopexit.split-lp.i, !noalias !96

.noexc80.i:                                       ; preds = %bb.da
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i74.i: ; preds = %bb.cz
  %i.yh = ashr exact i64 %i.yf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i75.i = call i64 @llvm.umax.i64(i64 %i.yh, i64 1)
  %i.yi = add nsw i64 %.sroa.speculated.i.i.i.i.i75.i, %i.yh ; 2 uses
  %i.yj = icmp ult i64 %i.yi, %i.yh
  %i.yk = call i64 @llvm.umin.i64(i64 %i.yi, i64 2305843009213693951)
  %i.yl = select i1 %i.yj, i64 2305843009213693951, i64 %i.yk ; 3 uses
  %.not.i.i.i.i.i76.i = icmp ne i64 %i.yl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i76.i)
  %i.ym = shl nuw nsw i64 %i.yl, 2
  %i.yn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ym) #27
          to label %.noexc81.i unwind label %.loopexit145.i, !noalias !96 ; 4 uses

.noexc81.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i74.i
end_hunk_0
begin_hunk_1_@_ZN3gmxL19vsiteConstructRangeEiRK13gmx_moltype_t:bb.a

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.n, ptr %i.d, align 8, !tbaa !29, !noalias !138
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %.sroa.617.0..sroa_idx.i, align 8, !tbaa !31, !noalias !138
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br label %_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.p = ptrtoint ptr %i.c to i64
  %i.q = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %i.p, %i.q                       ; 7 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775792
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorI21InteractionListHandleSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %.noexc.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !138

.noexc.i:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorI21InteractionListHandleSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 576460752303423487)
  %i.x = select i1 %i.v, i64 576460752303423487, i64 %i.w ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #27
          to label %.noexc13.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !138 ; 5 uses

.noexc13.i:                                       ; preds = %_ZNKSt6vectorI21InteractionListHandleSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 3 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !29, !noalias !138
  %.sroa.617.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.i, ptr %.sroa.617.0..sroa_idx18.i, align 8, !tbaa !31, !noalias !138
  %i.ac = icmp sgt i64 %i.r, 0
  br i1 %i.ac, label %bb.h, label %_ZNSt6vectorI21InteractionListHandleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i

bb.h:                                             ; preds = %.noexc13.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.b, i64 %i.r, i1 false), !noalias !138
  br label %_ZNSt6vectorI21InteractionListHandleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i

_ZNSt6vectorI21InteractionListHandleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i: ; preds = %bb.h, %.noexc13.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI21InteractionListHandleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.r) #24, !noalias !138
  br label %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i

_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i: ; preds = %bb.i, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.x ; 2 uses
  br label %_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorI21InteractionListHandleSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.g
  %lpad.loopexit.split-lp169 = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.r) #24, !noalias !138
  br label %_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit.i

_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit.i: ; preds = %bb.j, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp169

_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i: ; preds = %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i, %bb.e, %bb.c, %bb.b
  %.sroa.042.1 = phi ptr [ %.sroa.042.0, %bb.b ], [ %.sroa.042.0, %bb.c ], [ %i.z, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %.sroa.042.0, %bb.e ] ; 6 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0, %bb.b ], [ %.sroa.8.0, %bb.c ], [ %i.ad, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %i.o, %bb.e ] ; 3 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0, %bb.b ], [ %.sroa.11.0, %bb.c ], [ %i.ae, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %.sroa.11.0, %bb.e ] ; 2 uses
  %i.af = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %i.z, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %i.b, %bb.e ]
  %i.ag = phi ptr [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %i.ae, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %i.c, %bb.e ]
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %i.ad, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %i.o, %bb.e ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not24.i = icmp eq i64 %indvars.iv.next.i, 95
  br i1 %.not24.i, label %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.preheader, label %bb.b

_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.preheader: ; preds = %_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i
  %.not6073 = icmp eq ptr %.sroa.042.1, %.sroa.8.1
  br i1 %.not6073, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.preheader, %.thread
  %.sroa.039.074 = phi ptr [ %i.cr, %.thread ], [ %.sroa.042.1, %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.preheader ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.074, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34, !nonnull !35, !align !36 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !39 ; 6 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %.not71.not = icmp eq ptr %i.al, %i.am
  br i1 %.not71.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %.03072 = phi i64 [ %i.cq, %bb.l ], [ 0, %.preheader ] ; 4 uses
  %i.ar = getelementptr [4 x i8], ptr %i.am, i64 %.03072 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23
  %i.au = icmp eq i32 %i.at, %0
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.av = getelementptr i8, ptr %i.ar, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !23 ; 7 uses
  %i.ax = add i64 %.03072, 3                      ; 6 uses
  %.val33 = load i32, ptr %.sroa.039.074, align 8, !tbaa !33
  %i.ay = sext i32 %.val33 to i64
  %i.az = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !40 ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1
  %i.bd = sext i32 %i.bc to i64
  %i.be = add i64 %.03072, %i.bd                  ; 2 uses
  %i.bf = icmp ult i64 %i.ax, %i.be
  br i1 %i.bf, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.k
  %i.bg = sext i32 %i.bb to i64
  %i.bh = add nsw i64 %i.bg, -2                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.bh, 8
  br i1 %min.iters.check, label %.lr.ph79.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check122 = icmp ult i64 %i.bh, 32
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = and i64 %i.bh, 24
  %n.vec = and i64 %i.bh, -32                     ; 4 uses
  %i.bj = add i64 %i.ax, %n.vec
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aw, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bp, %vector.body ]
  %vec.phi123 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi124 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.br, %vector.body ]
  %vec.phi125 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bs, %vector.body ]
  %vec.phi126 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bt, %vector.body ]
  %vec.phi127 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bu, %vector.body ]
  %vec.phi128 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bv, %vector.body ]
  %vec.phi129 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bw, %vector.body ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %wide.load = load <8 x i32>, ptr %i.bl, align 4, !tbaa !23 ; 2 uses
  %wide.load130 = load <8 x i32>, ptr %i.bm, align 4, !tbaa !23 ; 2 uses
  %wide.load131 = load <8 x i32>, ptr %i.bn, align 4, !tbaa !23 ; 2 uses
  %wide.load132 = load <8 x i32>, ptr %i.bo, align 4, !tbaa !23 ; 2 uses
  %i.bp = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.load, <8 x i32> %vec.phi) ; 2 uses
  %i.bq = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.load130, <8 x i32> %vec.phi123) ; 2 uses
  %i.br = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.load131, <8 x i32> %vec.phi124) ; 2 uses
  %i.bs = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.load132, <8 x i32> %vec.phi125) ; 2 uses
  %i.bt = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi126, <8 x i32> %wide.load) ; 2 uses
  %i.bu = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi127, <8 x i32> %wide.load130) ; 2 uses
  %i.bv = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi128, <8 x i32> %wide.load131) ; 2 uses
  %i.bw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi129, <8 x i32> %wide.load132) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bp, <8 x i32> %i.bq)
  %rdx.minmax133 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.br)
  %rdx.minmax134 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax133, <8 x i32> %i.bs)
  %i.by = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax134) ; 3 uses
  %rdx.minmax135 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bt, <8 x i32> %i.bu)
  %rdx.minmax136 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax135, <8 x i32> %i.bv)
  %rdx.minmax137 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax136, <8 x i32> %i.bw)
  %i.bz = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax137) ; 3 uses
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph79.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.by, %vec.epilog.iter.check ], [ %i.aw, %vector.main.loop.iter.check ]
  %bc.merge.rdx138 = phi i32 [ %i.bz, %vec.epilog.iter.check ], [ %i.aw, %vector.main.loop.iter.check ]
  %broadcast.splatinsert144 = insertelement <8 x i32> poison, i32 %bc.merge.rdx138, i64 0
  %broadcast.splat145 = shufflevector <8 x i32> %broadcast.splatinsert144, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert140 = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat141 = shufflevector <8 x i32> %broadcast.splatinsert140, <8 x i32> poison, <8 x i32> zeroinitializer
  %n.vec139 = and i64 %i.bh, -8                   ; 3 uses
  %2 = add i64 %i.ax, %n.vec139
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ax
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next148, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi145 = phi <8 x i32> [ %broadcast.splat141, %vec.epilog.ph ], [ %i.cc, %vec.epilog.vector.body ]
  %vec.phi146 = phi <8 x i32> [ %broadcast.splat145, %vec.epilog.ph ], [ %i.cd, %vec.epilog.vector.body ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index144
  %wide.load147 = load <8 x i32>, ptr %i.cb, align 4, !tbaa !23 ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.load147, <8 x i32> %vec.phi145) ; 2 uses
  %i.cd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi146, <8 x i32> %wide.load147) ; 2 uses
  %index.next148 = add nuw i64 %index144, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next148, %n.vec139
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !135

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cf = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.cc) ; 2 uses
  %i.cg = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.cd) ; 2 uses
  %cmp.n149 = icmp eq i64 %i.bh, %n.vec139
  br i1 %cmp.n149, label %.loopexit, label %.lr.ph79.preheader

.lr.ph79.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02978.ph = phi i64 [ %i.ax, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %2, %vec.epilog.middle.block ]
  %.sroa.046.177.ph = phi i32 [ %i.aw, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ]
  %.sroa.6.176.ph = phi i32 [ %i.aw, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.lr.ph79
  %.02978 = phi i64 [ %i.cj, %.lr.ph79 ], [ %.02978.ph, %.lr.ph79.preheader ] ; 2 uses
  %.sroa.046.177 = phi i32 [ %.sroa.speculated50, %.lr.ph79 ], [ %.sroa.046.177.ph, %.lr.ph79.preheader ]
  %.sroa.6.176 = phi i32 [ %.sroa.speculated, %.lr.ph79 ], [ %.sroa.6.176.ph, %.lr.ph79.preheader ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.02978
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !23 ; 2 uses
  %.sroa.speculated50 = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 %.sroa.046.177) ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.sroa.6.176, i32 %i.ci) ; 2 uses
  %i.cj = add nuw i64 %.02978, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cj, %i.be
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph79, !llvm.loop !136

bb.l:                                             ; preds = %.lr.ph
  %.val = load i32, ptr %.sroa.039.074, align 8, !tbaa !33
  %i.ck = sext i32 %.val to i64
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !40
  %i.co = add nsw i32 %i.cn, 1
  %i.cp = sext i32 %i.co to i64
  %i.cq = add i64 %.03072, %i.cp                  ; 2 uses
  %.not = icmp ult i64 %i.cq, %i.aq
  br i1 %.not, label %.lr.ph, label %.thread, !llvm.loop !137

.thread:                                          ; preds = %bb.l, %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.039.074, i64 16 ; 2 uses
  %.not60 = icmp eq ptr %i.cr, %.sroa.8.1
  br i1 %.not60, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.thread, %.lr.ph79, %middle.block, %vec.epilog.middle.block, %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.preheader, %bb.k
  %.not6065 = phi i1 [ false, %bb.k ], [ false, %middle.block ], [ true, %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.preheader ], [ false, %.lr.ph79 ], [ false, %vec.epilog.middle.block ], [ true, %.thread ]
  %.sroa.6.3 = phi i32 [ %i.aw, %bb.k ], [ %i.bz, %middle.block ], [ -1, %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.preheader ], [ %.sroa.speculated, %.lr.ph79 ], [ %i.cg, %vec.epilog.middle.block ], [ -1, %.thread ]
  %.sroa.046.3 = phi i32 [ %i.aw, %bb.k ], [ %i.by, %middle.block ], [ -1, %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.preheader ], [ %.sroa.speculated50, %.lr.ph79 ], [ %i.cf, %vec.epilog.middle.block ], [ -1, %.thread ]
  %.not.i.i.i36 = icmp eq ptr %.sroa.042.1, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit37, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.cs = ptrtoint ptr %.sroa.11.1 to i64
  %i.ct = ptrtoint ptr %.sroa.042.1 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.042.1, i64 noundef %i.cu) #24
  br label %_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit37

_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit37: ; preds = %.loopexit, %bb.m
  br i1 %.not6065, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit37
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmxL19vsiteConstructRangeEiRK13gmx_moltype_tENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 227) #28
  unreachable

bb.o:                                             ; preds = %_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit37
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.3 to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.046.0.insert.ext = zext i32 %.sroa.046.3 to i64
  %.sroa.046.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.046.0.insert.ext
  ret i64 %.sroa.046.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx17RangePartitioningESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN3gmx17RangePartitioningESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

_ZNKSt6vectorIN3gmx17RangePartitioningESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38   ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !39     ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN3gmx17RangePartitioningESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775804
  br i1 %i.x, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !62

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #27
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge unwind label %bb.j

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %.pre42 = load ptr, ptr %i.r, align 8, !tbaa !27
  %.pre43 = ptrtoint ptr %.pre42 to i64
  %.pre44 = ptrtoint ptr %.pre to i64
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge, %_ZNKSt6vectorIN3gmx17RangePartitioningESaIS1_EE12_M_check_lenEmPKc.exit
  %.pre-phi45 = phi i64 [ %.pre44, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge ], [ %i.v, %_ZNKSt6vectorIN3gmx17RangePartitioningESaIS1_EE12_M_check_lenEmPKc.exit ]
  %.pre-phi = phi i64 [ %.pre43, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge ], [ %i.u, %_ZNKSt6vectorIN3gmx17RangePartitioningESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.z = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge ], [ %i.t, %_ZNKSt6vectorIN3gmx17RangePartitioningESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %i.aa = phi ptr [ %i.y, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge ], [ null, %_ZNKSt6vectorIN3gmx17RangePartitioningESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !44
  %i.ae = sub i64 %.pre-phi, %.pre-phi45          ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 4
  br i1 %i.af, label %bb.d, label %bb.e, !prof !63

bb.d:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aa, ptr align 4 %i.z, i64 %i.ae, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc26
  %i.ag = icmp eq i64 %i.ae, 4
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.z, align 4, !tbaa !23
  store i32 %i.ah, ptr %i.aa, align 4, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !38
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN3gmx17RangePartitioningESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i
end_hunk_1
