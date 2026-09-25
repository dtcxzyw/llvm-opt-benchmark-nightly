Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/internal_stats?download=true
inline.NumInlined: 3253
inline.NumDeleted: 1381
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN7rocksdb13InternalStats26DumpCFStatsNoFileHistogramEbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit379 unwind label %bb.ei

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit379: ; preds = %bb.dx, %bb.dt, %bb.dv, %bb.dw
  store i64 %i.uc, ptr %i.q, align 8, !tbaa !46
  %i.uk = load ptr, ptr %2, align 8, !tbaa !28
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.uc
  store i8 0, ptr %i.ul, align 1, !tbaa !29
  %i.um = load i32, ptr %i.ao, align 8, !tbaa !276 ; 4 uses
  %i.un = icmp sgt i32 %i.um, 0
  br i1 %i.un, label %iter.check, label %._crit_edge531

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit379
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !756 ; 6 uses
  %wide.trip.count = zext nneg i32 %i.um to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.um, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check683 = icmp ult i32 %i.um, 16
  br i1 %min.iters.check683, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.uq = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.vl, %vector.body ]
  %vec.phi684 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.vm, %vector.body ]
  %vec.phi685 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.vn, %vector.body ]
  %vec.phi686 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.vo, %vector.body ]
  %vec.phi687 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.vh, %vector.body ]
  %vec.phi688 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.vi, %vector.body ]
  %vec.phi689 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.vj, %vector.body ]
  %vec.phi690 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.vk, %vector.body ]
  %vec.phi691 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.uz, %vector.body ]
  %vec.phi692 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.va, %vector.body ]
  %vec.phi693 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.vb, %vector.body ]
  %vec.phi694 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.vc, %vector.body ]
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [224 x i8], ptr %i.up, <4 x i64> %vec.ind ; 6 uses
  %wide.gep695 = getelementptr inbounds nuw [224 x i8], ptr %i.up, <4 x i64> %step.add ; 6 uses
  %wide.gep696 = getelementptr inbounds nuw [224 x i8], ptr %i.up, <4 x i64> %step.add.2 ; 6 uses
  %wide.gep697 = getelementptr inbounds nuw [224 x i8], ptr %i.up, <4 x i64> %step.add.3 ; 6 uses
  %wide.gep698 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 24
  %wide.gep699 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep695, i64 24
  %wide.gep700 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep696, i64 24
  %wide.gep701 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep697, i64 24
  %wide.masked.gather = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep698, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !816
  %wide.masked.gather702 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep699, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !816
  %wide.masked.gather703 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep700, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !816
  %wide.masked.gather704 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep701, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !816
  %wide.gep705 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 16
  %wide.gep706 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep695, i64 16
  %wide.gep707 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep696, i64 16
  %wide.gep708 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep697, i64 16
  %wide.masked.gather709 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep705, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !817
  %wide.masked.gather710 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep706, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !817
  %wide.masked.gather711 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep707, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !817
  %wide.masked.gather712 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep708, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !817
  %wide.gep713 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 48
  %wide.gep714 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep695, i64 48
  %wide.gep715 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep696, i64 48
  %wide.gep716 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep697, i64 48
  %wide.masked.gather717 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep713, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !818
  %wide.masked.gather718 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep714, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !818
  %wide.masked.gather719 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep715, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !818
  %wide.masked.gather720 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep716, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !818
  %i.ur = add <4 x i64> %wide.masked.gather, %vec.phi691
  %i.us = add <4 x i64> %wide.masked.gather702, %vec.phi692
  %i.ut = add <4 x i64> %wide.masked.gather703, %vec.phi693
  %i.uu = add <4 x i64> %wide.masked.gather704, %vec.phi694
  %i.uv = add <4 x i64> %i.ur, %wide.masked.gather709
  %i.uw = add <4 x i64> %i.us, %wide.masked.gather710
  %i.ux = add <4 x i64> %i.ut, %wide.masked.gather711
  %i.uy = add <4 x i64> %i.uu, %wide.masked.gather712
  %i.uz = add <4 x i64> %i.uv, %wide.masked.gather717 ; 2 uses
  %i.va = add <4 x i64> %i.uw, %wide.masked.gather718 ; 2 uses
  %i.vb = add <4 x i64> %i.ux, %wide.masked.gather719 ; 2 uses
  %i.vc = add <4 x i64> %i.uy, %wide.masked.gather720 ; 2 uses
  %wide.gep721 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 56
  %wide.gep722 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep695, i64 56
  %wide.gep723 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep696, i64 56
  %wide.gep724 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep697, i64 56
  %wide.masked.gather725 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep721, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !814
  %wide.masked.gather726 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep722, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !814
  %wide.masked.gather727 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep723, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !814
  %wide.masked.gather728 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep724, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !814
  %wide.gep729 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 72
  %wide.gep730 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep695, i64 72
  %wide.gep731 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep696, i64 72
  %wide.gep732 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep697, i64 72
  %wide.masked.gather733 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep729, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !815
  %wide.masked.gather734 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep730, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !815
  %wide.masked.gather735 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep731, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !815
  %wide.masked.gather736 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep732, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !815
  %i.vd = add <4 x i64> %wide.masked.gather725, %vec.phi687
  %i.ve = add <4 x i64> %wide.masked.gather726, %vec.phi688
  %i.vf = add <4 x i64> %wide.masked.gather727, %vec.phi689
  %i.vg = add <4 x i64> %wide.masked.gather728, %vec.phi690
  %i.vh = add <4 x i64> %i.vd, %wide.masked.gather733 ; 2 uses
  %i.vi = add <4 x i64> %i.ve, %wide.masked.gather734 ; 2 uses
  %i.vj = add <4 x i64> %i.vf, %wide.masked.gather735 ; 2 uses
  %i.vk = add <4 x i64> %i.vg, %wide.masked.gather736 ; 2 uses
  %wide.masked.gather737 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !819
  %wide.masked.gather738 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep695, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !819
  %wide.masked.gather739 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep696, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !819
  %wide.masked.gather740 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep697, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !819
  %i.vl = add <4 x i64> %wide.masked.gather737, %vec.phi ; 2 uses
  %i.vm = add <4 x i64> %wide.masked.gather738, %vec.phi684 ; 2 uses
  %i.vn = add <4 x i64> %wide.masked.gather739, %vec.phi685 ; 2 uses
  %i.vo = add <4 x i64> %wide.masked.gather740, %vec.phi686 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.vp = icmp eq i64 %index.next, %n.vec
  br i1 %i.vp, label %middle.block, label %vector.body, !llvm.loop !1028

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.vm, %i.vl
  %bin.rdx741 = add <4 x i64> %i.vn, %bin.rdx
  %bin.rdx742 = add <4 x i64> %i.vo, %bin.rdx741
  %i.vq = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx742) ; 3 uses
  %bin.rdx743 = add <4 x i64> %i.vi, %i.vh
  %bin.rdx744 = add <4 x i64> %i.vj, %bin.rdx743
  %bin.rdx745 = add <4 x i64> %i.vk, %bin.rdx744
  %i.vr = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx745) ; 3 uses
  %bin.rdx746 = add <4 x i64> %i.va, %i.uz
  %bin.rdx747 = add <4 x i64> %i.vb, %bin.rdx746
  %bin.rdx748 = add <4 x i64> %i.vc, %bin.rdx747
  %i.vs = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx748) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge531, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.uq, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1045

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i64 [ %i.vq, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx749 = phi i64 [ %i.vr, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx750 = phi i64 [ %i.vs, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec751 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %i.vt = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  %i.vu = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx749, i64 0
  %i.vv = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx750, i64 0
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index752 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next769, %vec.epilog.vector.body ]
  %vec.ind753 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next770, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi754 = phi <4 x i64> [ %i.vt, %vec.epilog.ph ], [ %i.wb, %vec.epilog.vector.body ]
  %vec.phi755 = phi <4 x i64> [ %i.vu, %vec.epilog.ph ], [ %i.wa, %vec.epilog.vector.body ]
  %vec.phi756 = phi <4 x i64> [ %i.vv, %vec.epilog.ph ], [ %i.vy, %vec.epilog.vector.body ]
  %wide.gep757 = getelementptr inbounds nuw [224 x i8], ptr %i.up, <4 x i64> %vec.ind753 ; 6 uses
  %wide.gep758 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep757, i64 24
  %wide.masked.gather759 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep758, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !816
  %wide.gep760 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep757, i64 16
  %wide.masked.gather761 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep760, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !817
  %wide.gep762 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep757, i64 48
  %wide.masked.gather763 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep762, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !818
  %i.vw = add <4 x i64> %wide.masked.gather759, %vec.phi756
  %i.vx = add <4 x i64> %i.vw, %wide.masked.gather761
  %i.vy = add <4 x i64> %i.vx, %wide.masked.gather763 ; 2 uses
  %wide.gep764 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep757, i64 56
  %wide.masked.gather765 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep764, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !814
  %wide.gep766 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep757, i64 72
  %wide.masked.gather767 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep766, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !815
  %i.vz = add <4 x i64> %wide.masked.gather765, %vec.phi755
  %i.wa = add <4 x i64> %i.vz, %wide.masked.gather767 ; 2 uses
  %wide.masked.gather768 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep757, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !819
  %i.wb = add <4 x i64> %wide.masked.gather768, %vec.phi754 ; 2 uses
  %index.next769 = add nuw i64 %index752, 4       ; 2 uses
  %vec.ind.next770 = add nuw nsw <4 x i64> %vec.ind753, splat (i64 4)
  %i.wc = icmp eq i64 %index.next769, %n.vec751
  br i1 %i.wc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1029

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.wd = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.wb) ; 2 uses
  %i.we = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.wa) ; 2 uses
  %i.wf = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.vy) ; 2 uses
  %cmp.n771 = icmp eq i64 %n.vec751, %wide.trip.count
  br i1 %cmp.n771, label %._crit_edge531, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec751, %vec.epilog.middle.block ]
  %.084528.ph = phi i64 [ 0, %iter.check ], [ %i.vq, %vec.epilog.iter.check ], [ %i.wd, %vec.epilog.middle.block ]
  %.085527.ph = phi i64 [ 0, %iter.check ], [ %i.vr, %vec.epilog.iter.check ], [ %i.we, %vec.epilog.middle.block ]
  %.086526.ph = phi i64 [ 0, %iter.check ], [ %i.vs, %vec.epilog.iter.check ], [ %i.wf, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge531:                                   ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit379
  %.086.lcssa = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit379 ], [ %i.wf, %vec.epilog.middle.block ], [ %i.vs, %middle.block ], [ %25, %vec.epilog.scalar.ph ] ; 3 uses
  %.085.lcssa = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit379 ], [ %i.we, %vec.epilog.middle.block ], [ %i.vr, %middle.block ], [ %i.xy, %vec.epilog.scalar.ph ] ; 3 uses
  %.084.lcssa = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit379 ], [ %i.wd, %vec.epilog.middle.block ], [ %i.vq, %middle.block ], [ %i.ya, %vec.epilog.scalar.ph ] ; 3 uses
  %i.wg = uitofp i64 %.085.lcssa to double        ; 2 uses
  %i.wh = fmul nnan double %i.wg, f0x3E10000000000000
  %i.wi = fcmp olt double %i.qf, 1.000000e-03
  %.sroa.speculated457 = select i1 %i.wi, double 1.000000e-03, double %i.qf
  %i.wj = uitofp i64 %.086.lcssa to double        ; 2 uses
  %i.wk = fmul nnan double %i.wj, f0x3E10000000000000
  %i.wl = insertelement <2 x double> poison, double %i.wg, i64 0
  %i.wm = insertelement <2 x double> %i.wl, double %i.wj, i64 1
  %i.wn = fmul nnan <2 x double> %i.wm, splat (double f0x3EB0000000000000)
  %i.wo = insertelement <2 x double> poison, double %.sroa.speculated457, i64 0
  %i.wp = shufflevector <2 x double> %i.wo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wq = fdiv <2 x double> %i.wn, %i.wp          ; 2 uses
  %i.wr = uitofp i64 %.084.lcssa to double
  %i.ws = fdiv double %i.wr, 1.000000e+06
  %i.wt = extractelement <2 x double> %i.wq, i64 0
  %i.wu = extractelement <2 x double> %i.wq, i64 1
  %i.wv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2000, ptr noundef nonnull @.str.317, double noundef %i.wh, double noundef %i.wt, double noundef %i.wk, double noundef %i.wu, double noundef %i.ws) #37 ; 0 uses
  %i.ww = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #37 ; 6 uses
  %i.wx = load i64, ptr %i.q, align 8, !tbaa !46  ; 5 uses
  %i.wy = sub i64 9223372036854775807, %i.wx
  %i.wz = icmp ult i64 %i.wy, %i.ww
  br i1 %i.wz, label %bb.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i381

bb.dy:                                            ; preds = %._crit_edge531
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.327) #41
          to label %.noexc388 unwind label %bb.ex

.noexc388:                                        ; preds = %bb.dy
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i381: ; preds = %._crit_edge531
  %i.xa = add i64 %i.wx, %i.ww                    ; 3 uses
  %i.xb = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.xc = icmp eq ptr %i.xb, %i.w
  br i1 %i.xc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i387: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i381
  %i.xd = icmp ult i64 %i.wx, 16
  call void @llvm.assume(i1 %i.xd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i381
  %i.xe = load i64, ptr %i.w, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i383: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i387
  %i.xf = phi i64 [ %i.xe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i387 ]
  %.not.i.i384 = icmp ugt i64 %i.xa, %i.xf
  br i1 %.not.i.i384, label %bb.ed, label %bb.dz

bb.dz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i383
  %.not8.i.i385 = icmp eq i64 %i.ww, 0
  br i1 %.not8.i.i385, label %bb.ej, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xb, i64 %i.wx ; 2 uses
  %cond.i.i386 = icmp eq i64 %i.ww, 1
  br i1 %cond.i.i386, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.xh = load i8, ptr %i.a, align 16, !tbaa !29
  store i8 %i.xh, ptr %i.xg, align 1, !tbaa !29
  br label %bb.ej

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xg, ptr nonnull align 16 %i.a, i64 %i.ww, i1 false)
  br label %bb.ej

bb.ed:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i383
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.wx, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.ww)
          to label %bb.ej unwind label %bb.ex

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

.loopexit.split-lp:                               ; preds = %bb.ce, %bb.cj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.ee:                                            ; preds = %bb.ck
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.ef:                                            ; preds = %.invoke665, %bb.dc, %bb.cw, %bb.cq
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.eg:                                            ; preds = %bb.dj, %bb.de
  %i.xk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.eh:                                            ; preds = %bb.dq, %bb.dl
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.ei:                                            ; preds = %bb.dx, %bb.ds
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.084528 = phi i64 [ %i.ya, %vec.epilog.scalar.ph ], [ %.084528.ph, %vec.epilog.scalar.ph.preheader ]
  %.085527 = phi i64 [ %i.xy, %vec.epilog.scalar.ph ], [ %.085527.ph, %vec.epilog.scalar.ph.preheader ]
  %.086526 = phi i64 [ %25, %vec.epilog.scalar.ph ], [ %.086526.ph, %vec.epilog.scalar.ph.preheader ]
  %i.xn = getelementptr inbounds nuw [224 x i8], ptr %i.up, i64 %indvars.iv ; 6 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !816
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 48
  %i.xs = add i64 %i.xp, %.086526
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xn, i64 56
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xn, i64 72
  %i.xv = load i64, ptr %i.xq, align 8, !tbaa !817
  %i.xw = load i64, ptr %i.xr, align 8, !tbaa !818
  %24 = add i64 %i.xs, %i.xv
  %25 = add i64 %24, %i.xw                        ; 2 uses
  %26 = load i64, ptr %i.xt, align 8, !tbaa !814
  %27 = load i64, ptr %i.xu, align 8, !tbaa !815
  %i.xx = add i64 %26, %.085527
  %i.xy = add i64 %i.xx, %27                      ; 2 uses
  %i.xz = load i64, ptr %i.xn, align 8, !tbaa !819
  %i.ya = add i64 %i.xz, %.084528                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge531, label %vec.epilog.scalar.ph, !llvm.loop !1030

bb.ej:                                            ; preds = %bb.ec, %bb.eb, %bb.dz, %bb.ed
  store i64 %i.xa, ptr %i.q, align 8, !tbaa !46
  %i.yb = load ptr, ptr %2, align 8, !tbaa !28
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 %i.xa
  store i8 0, ptr %i.yc, align 1, !tbaa !29
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 1848 ; 2 uses
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !1046
  %i.yh = sub i64 %.084.lcssa, %i.yg
  %i.yi = fcmp olt double %i.qi, 1.000000e-03
  %.sroa.speculated449 = select i1 %i.yi, double 1.000000e-03, double %i.qi
  %i.yj = load <2 x i64>, ptr %i.yd, align 8, !tbaa !275
  %i.yk = insertelement <2 x i64> poison, i64 %.085.lcssa, i64 0
  %i.yl = insertelement <2 x i64> %i.yk, i64 %.086.lcssa, i64 1
  %i.ym = sub <2 x i64> %i.yl, %i.yj
  %i.yn = uitofp <2 x i64> %i.ym to <2 x double>  ; 2 uses
  %i.yo = fmul nnan <2 x double> %i.yn, splat (double f0x3E10000000000000) ; 2 uses
  %i.yp = fmul nnan <2 x double> %i.yn, splat (double f0x3EB0000000000000)
  %i.yq = insertelement <2 x double> poison, double %.sroa.speculated449, i64 0
  %i.yr = shufflevector <2 x double> %i.yq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ys = fdiv <2 x double> %i.yp, %i.yr          ; 2 uses
  %i.yt = uitofp i64 %i.yh to double
  %i.yu = fdiv double %i.yt, 1.000000e+06
  %i.yv = extractelement <2 x double> %i.ys, i64 0
  %i.yw = extractelement <2 x double> %i.ys, i64 1
  %i.yx = extractelement <2 x double> %i.yo, i64 0
  %i.yy = extractelement <2 x double> %i.yo, i64 1
  %i.yz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2000, ptr noundef nonnull @.str.318, double noundef %i.yx, double noundef %i.yv, double noundef %i.yy, double noundef %i.yw, double noundef %i.yu) #37 ; 0 uses
  %i.za = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #37 ; 6 uses
  %i.zb = load i64, ptr %i.q, align 8, !tbaa !46  ; 5 uses
  %i.zc = sub i64 9223372036854775807, %i.zb
  %i.zd = icmp ult i64 %i.zc, %i.za
  br i1 %i.zd, label %.invoke667, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i393: ; preds = %bb.ej
  %i.ze = add i64 %i.zb, %i.za                    ; 3 uses
  %i.zf = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.zg = icmp eq ptr %i.zf, %i.w
  br i1 %i.zg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i399: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i393
  %i.zh = icmp ult i64 %i.zb, 16
  call void @llvm.assume(i1 %i.zh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i394: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i393
  %i.zi = load i64, ptr %i.w, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i395: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i399
  %i.zj = phi i64 [ %i.zi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i394 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i399 ]
  %.not.i.i396 = icmp ugt i64 %i.ze, %i.zj
  br i1 %.not.i.i396, label %bb.eo, label %bb.ek

bb.ek:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i395
  %.not8.i.i397 = icmp eq i64 %i.za, 0
  br i1 %.not8.i.i397, label %bb.ep, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zf, i64 %i.zb ; 2 uses
  %cond.i.i398 = icmp eq i64 %i.za, 1
  br i1 %cond.i.i398, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.zl = load i8, ptr %i.a, align 16, !tbaa !29
  store i8 %i.zl, ptr %i.zk, align 1, !tbaa !29
  br label %bb.ep

bb.en:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zk, ptr nonnull align 16 %i.a, i64 %i.za, i1 false)
  br label %bb.ep

bb.eo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i395
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.zb, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.za)
          to label %bb.ep unwind label %bb.ey

bb.ep:                                            ; preds = %bb.en, %bb.em, %bb.ek, %bb.eo
  store i64 %i.ze, ptr %i.q, align 8, !tbaa !46
  %i.zm = load ptr, ptr %2, align 8, !tbaa !28
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 %i.ze
  store i8 0, ptr %i.zn, align 1, !tbaa !29
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ah, i64 4280
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !428
  %i.zq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2000, ptr noundef nonnull @.str.319, i64 noundef %i.zp) #37 ; 0 uses
  %i.zr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #37 ; 6 uses
  %i.zs = load i64, ptr %i.q, align 8, !tbaa !46  ; 5 uses
  %i.zt = sub i64 9223372036854775807, %i.zs
  %i.zu = icmp ult i64 %i.zt, %i.zr
  br i1 %i.zu, label %.invoke667, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i403

.invoke667:                                       ; preds = %bb.ep, %bb.ej
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.327) #41
          to label %.cont668 unwind label %bb.ey

.cont668:                                         ; preds = %.invoke667
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i403: ; preds = %bb.ep
  %i.zv = add i64 %i.zs, %i.zr                    ; 3 uses
  %i.zw = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.zx = icmp eq ptr %i.zw, %i.w
  br i1 %i.zx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i409, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i409: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i403
  %i.zy = icmp ult i64 %i.zs, 16
  call void @llvm.assume(i1 %i.zy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i405

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i404: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i403
  %i.zz = load i64, ptr %i.w, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i405

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i405: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i404, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i409
  %i.aaa = phi i64 [ %i.zz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i404 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i409 ]
  %.not.i.i406 = icmp ugt i64 %i.zv, %i.aaa
  br i1 %.not.i.i406, label %bb.eu, label %bb.eq

bb.eq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i405
  %.not8.i.i407 = icmp eq i64 %i.zr, 0
  br i1 %.not8.i.i407, label %bb.ev, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.zs ; 2 uses
  %cond.i.i408 = icmp eq i64 %i.zr, 1
  br i1 %cond.i.i408, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.aac = load i8, ptr %i.a, align 16, !tbaa !29
  store i8 %i.aac, ptr %i.aab, align 1, !tbaa !29
  br label %bb.ev

bb.et:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aab, ptr nonnull align 16 %i.a, i64 %i.zr, i1 false)
  br label %bb.ev

bb.eu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i405
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.zs, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.zr)
          to label %bb.ev unwind label %bb.ey

bb.ev:                                            ; preds = %bb.et, %bb.es, %bb.eq, %bb.eu
  store i64 %i.zv, ptr %i.q, align 8, !tbaa !46
  %i.aad = load ptr, ptr %2, align 8, !tbaa !28
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 %i.zv
  store i8 0, ptr %i.aae, align 1, !tbaa !29
  br i1 %1, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %bb.ev
  store i64 %.085.lcssa, ptr %i.yd, align 8, !tbaa !1047
  store i64 %.086.lcssa, ptr %i.ye, align 8, !tbaa !1048
  store i64 %.084.lcssa, ptr %i.yf, align 8, !tbaa !1046
  br label %bb.ez

bb.ex:                                            ; preds = %bb.ed, %bb.dy
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.ey:                                            ; preds = %.invoke667, %bb.eu, %bb.eo
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.ez:                                            ; preds = %bb.ew, %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  %i.aah = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.aah, ptr %21, align 8, !tbaa !45
  %i.aai = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 0, ptr %i.aai, align 8, !tbaa !46
  store i8 0, ptr %i.aah, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  invoke void @_ZN7rocksdb13InternalStats21DumpCFStatsWriteStallEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm(ptr noundef nonnull align 8 dereferenceable(2016) %0, ptr noundef nonnull %21, ptr noundef nonnull %i.e)
          to label %bb.fa unwind label %bb.fj

bb.fa:                                            ; preds = %bb.ez
  %i.aaj = load ptr, ptr %21, align 8, !tbaa !28  ; 3 uses
  %i.aak = load i64, ptr %i.aai, align 8, !tbaa !46 ; 6 uses
  %i.aal = load i64, ptr %i.q, align 8, !tbaa !46 ; 5 uses
  %i.aam = sub i64 9223372036854775807, %i.aal
  %i.aan = icmp ult i64 %i.aam, %i.aak
  br i1 %i.aan, label %bb.fb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.fb:                                            ; preds = %bb.fa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.327) #41
          to label %.noexc414 unwind label %bb.fj

.noexc414:                                        ; preds = %bb.fb
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.fa
  %i.aao = add i64 %i.aal, %i.aak                 ; 3 uses
  %i.aap = load ptr, ptr %2, align 8, !tbaa !28   ; 2 uses
  %i.aaq = icmp eq ptr %i.aap, %i.w
  br i1 %i.aaq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
end_hunk_0
