Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.00?download=true
inline.NumInlined: 4785
inline.NumDeleted: 936
loop-unroll.NumRuntimeUnrolled: 745
loop-unroll.NumUnrolled: 745
begin_hunk_0_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a
  %i.rm = icmp ult i64 %i.rk, %i.rl
  br i1 %i.rm, label %bb.aa, label %bb.z

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i: ; preds = %bb.z, %.noexc2506
  %i.rn = load i64, ptr %i.qs, align 8, !alias.scope !10068, !noalias !10061, !noundef !5
  %i.ro = add i64 %i.rn, -1
  store i64 %i.ro, ptr %i.qs, align 8, !alias.scope !10068, !noalias !10061
  br label %bb.ab

bb.z:                                             ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i
  %i.rp = load i64, ptr %i.rh, align 8, !noalias !10067, !noundef !5
  %i.rq = mul i64 %i.rp, %i.rj
  %i.rr = sub i64 %.sroa.05.031.i.i, %i.rq
  store i64 0, ptr %i.rg, align 8, !noalias !10067
  %i.rs = icmp ult i64 %.sroa.918.0.copyload.i.i, %i.re
  br i1 %i.rs, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i

bb.aa:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i
  store i64 %i.rk, ptr %i.rg, align 8, !noalias !10067
  %i.rt = load i64, ptr %i.rh, align 8, !noalias !10067, !noundef !5
  %i.ru = load i64, ptr %i.qs, align 8, !alias.scope !10068, !noalias !10061, !noundef !5
  %i.rv = add i64 %i.ru, -1
  store i64 %i.rv, ptr %i.qs, align 8, !alias.scope !10068, !noalias !10061
  %i.rw = add i64 %i.rt, %.sroa.05.031.i.i
  br label %bb.ab

.loopexit.split-lp8926.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc, %bb.y, %.invoke15866, %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.hl) #20
          to label %bb.v unwind label %bb.am, !noalias !10061

bb.ab:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i, %bb.aa
  %.sroa.6.0.i.i = phi i64 [ %i.rw, %bb.aa ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i ]
  %.sroa.08.0.i.i = phi i64 [ 1, %bb.aa ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i ]
  store i64 %.sroa.08.0.i.i, ptr %i.hl, align 8, !alias.scope !10068, !noalias !10061
  store i64 %.sroa.6.0.i.i, ptr %i.qi, align 8, !alias.scope !10068, !noalias !10061
  %i.rx = load i64, ptr %.sroa.233.0..sroa_idx.i90.i1303, align 8, !alias.scope !10065, !noalias !10061, !noundef !5 ; 4 uses
  %i.ry = add i64 %i.rx, 1
  store i64 %i.ry, ptr %.sroa.233.0..sroa_idx.i90.i1303, align 8, !alias.scope !10065, !noalias !10061
  %i.rz = icmp ugt i64 %i.qt, %i.om
  br i1 %i.rz, label %bb.af, label %bb.ae, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit: ; preds = %bb.ak, %bb.x
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.hl)
          to label %bb.ac unwind label %bb.w, !noalias !10061

bb.ac:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hl), !noalias !10062
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ho)
          to label %bb.ad unwind label %bb.p, !noalias !10061

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ho), !noalias !10062
  br label %.loopexit8923

bb.ae:                                            ; preds = %bb.ab
  %i.sa = sub nuw nsw i64 %i.om, %i.qt            ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.qt ; 2 uses
  %.not84.i91.i1304 = icmp eq i64 %i.om, %i.qt
  br i1 %.not84.i91.i1304, label %.invoke15866, label %bb.ag

bb.af:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.qt, i64 noundef range(i64 0, -9223372036854775808) %i.om, i64 noundef range(i64 0, -9223372036854775808) %i.om, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.ah unwind label %.loopexit.split-lp8926.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10061

bb.ag:                                            ; preds = %bb.ae
  %i.sc = load i8, ptr %i.sb, align 1, !alias.scope !10070, !noundef !5
  br label %bb.ai

bb.ah:                                            ; preds = %.split11088.us, %bb.af
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.al
  %.sroa.055.0.i94.i130711081 = phi i64 [ 0, %bb.ag ], [ %i.sn, %bb.al ] ; 2 uses
  %.sroa.035.0.i93.i130611080 = phi i8 [ %i.sc, %bb.ag ], [ %spec.select95.i96.i1309, %bb.al ]
  %i.sd = mul i64 %.sroa.055.0.i94.i130711081, %i.pj ; 3 uses
  %i.se = icmp ult i64 %i.sd, %i.sa
  br i1 %i.se, label %bb.al, label %.invoke15866

bb.aj:                                            ; preds = %bb.al
  %i.sf = icmp ult i64 %i.rx, %i.pq
  br i1 %i.sf, label %bb.ak, label %.invoke15866

bb.ak:                                            ; preds = %bb.aj
  %i.sg = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.rx
  store i8 %spec.select95.i96.i1309, ptr %i.sg, align 1, !noalias !10061
  %i.sh = load i64, ptr %i.hl, align 8, !range !8, !alias.scope !10071, !noalias !10061, !noundef !5
  %i.si = load i64, ptr %i.qi, align 8, !alias.scope !10071, !noalias !10061
  %i.sj = trunc nuw i64 %i.sh to i1
  br i1 %i.sj, label %bb.y, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit

.invoke15866:                                     ; preds = %bb.aj, %bb.ae, %bb.ai
  %i.sk = phi i64 [ %i.sd, %bb.ai ], [ 0, %bb.ae ], [ %i.rx, %bb.aj ]
  %i.sl = phi i64 [ %i.sa, %bb.ai ], [ 0, %bb.ae ], [ %i.pq, %bb.aj ]
  %i.sm = phi ptr [ @6, %bb.ai ], [ @4, %bb.ae ], [ @5, %bb.aj ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.sk, i64 noundef %i.sl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sm) #22
          to label %.cont15867 unwind label %.loopexit.split-lp8926.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10061

.cont15867:                                       ; preds = %.invoke15866
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.sn = add nuw i64 %.sroa.055.0.i94.i130711081, 1 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.sd
  %i.sp = load i8, ptr %i.so, align 1, !alias.scope !10070, !noundef !5
  %spec.select95.i96.i1309 = call i8 @llvm.umax.i8(i8 %.sroa.035.0.i93.i130611080, i8 %i.sp) ; 2 uses
  %exitcond12921.not = icmp eq i64 %i.sn, %i.pc
  br i1 %exitcond12921.not, label %bb.aj, label %bb.ai

bb.am:                                            ; preds = %.loopexit.split-lp8926.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v, %bb.o
  %i.sq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10063
  unreachable

bb.an:                                            ; preds = %bb.r
  %i.sr = sub nuw i64 %i.qd, %i.qb                ; 7 uses
  %.not86.i97.i1310 = icmp ugt i64 %i.qd, %i.om
  br i1 %.not86.i97.i1310, label %.invoke15864, label %bb.ao, !prof !10

bb.ao:                                            ; preds = %bb.an
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.qb ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.pq ; 3 uses
  switch i64 %i.pj, label %.split11086 [
    i64 1, label %bb.ap
    i64 0, label %.split11086.us
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.su = icmp samesign eq i64 %i.pq, 0
  br i1 %i.su, label %.loopexit8923, label %.lr.ph11097.preheader

.lr.ph11097.preheader:                            ; preds = %bb.ap
  %min.iters.check17784.a = icmp ult i64 %i.pc, 8
  %min.iters.check17786 = icmp ult i64 %i.pc, 32
  %i.sv = and i64 %i.pc, 24
  %n.vec17788 = and i64 %i.pc, -32                ; 4 uses
  %cmp.n17801 = icmp eq i64 %i.pc, %n.vec17788
  %min.epilog.iters.check17808 = icmp eq i64 %i.sv, 0
  %n.vec17810 = and i64 %i.pc, -8                 ; 3 uses
  %cmp.n17820 = icmp eq i64 %i.pc, %n.vec17810
  br label %.lr.ph11097

.split11086.us:                                   ; preds = %bb.ao
  %i.sw = icmp samesign eq i64 %i.pq, 0
  br i1 %i.sw, label %.loopexit8923, label %.split11088.us

.lr.ph11097:                                      ; preds = %.lr.ph11097.preheader, %.thread7023
  %.sroa.75672.011096 = phi i64 [ %i.sy, %.thread7023 ], [ 0, %.lr.ph11097.preheader ] ; 2 uses
  %.sroa.05670.011095 = phi ptr [ %i.sx, %.thread7023 ], [ %i.pt, %.lr.ph11097.preheader ] ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.05670.011095, i64 1 ; 2 uses
  %i.sy = add nuw nsw i64 %.sroa.75672.011096, 1
  %i.sz = mul i64 %.sroa.75672.011096, %i.pc      ; 4 uses
  %i.ta = add i64 %i.sz, %i.pc                    ; 3 uses
  %i.tb = icmp ult i64 %i.ta, %i.sz
  %.not91.i111.i1324 = icmp ugt i64 %i.ta, %i.sr
  %or.cond.i112.i1325 = select i1 %i.tb, i1 true, i1 %.not91.i111.i1324, !prof !7
  br i1 %or.cond.i112.i1325, label %.invoke15864, label %iter.check17805, !prof !7

iter.check17805:                                  ; preds = %.lr.ph11097
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.sz ; 7 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.pc
  %i.te = load i8, ptr %i.tc, align 1, !alias.scope !10070, !noundef !5 ; 3 uses
  br i1 %min.iters.check17784.a, label %.lr.ph11093.preheader, label %vector.main.loop.iter.check17785

vector.main.loop.iter.check17785:                 ; preds = %iter.check17805
  br i1 %min.iters.check17786, label %vec.epilog.ph17809, label %vector.ph17787

vector.ph17787:                                   ; preds = %vector.main.loop.iter.check17785
  %i.tf = getelementptr i8, ptr %i.tc, i64 %n.vec17788
  %broadcast.splatinsert17789 = insertelement <16 x i8> poison, i8 %i.te, i64 0
  %broadcast.splat17790 = shufflevector <16 x i8> %broadcast.splatinsert17789, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body17791

vector.body17791:                                 ; preds = %vector.ph17787, %vector.body17791
  %index17792 = phi i64 [ 0, %vector.ph17787 ], [ %index.next17798, %vector.body17791 ] ; 2 uses
  %vec.phi17793 = phi <16 x i8> [ %broadcast.splat17790, %vector.ph17787 ], [ %i.th, %vector.body17791 ]
  %vec.phi17794 = phi <16 x i8> [ %broadcast.splat17790, %vector.ph17787 ], [ %i.ti, %vector.body17791 ]
  %next.gep17795 = getelementptr i8, ptr %i.tc, i64 %index17792 ; 2 uses
  %i.tg = getelementptr i8, ptr %next.gep17795, i64 16
  %wide.load17796 = load <16 x i8>, ptr %next.gep17795, align 1, !noalias !10063
  %wide.load17797 = load <16 x i8>, ptr %i.tg, align 1, !noalias !10063
  %i.th = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi17793, <16 x i8> %wide.load17796) ; 2 uses
  %i.ti = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi17794, <16 x i8> %wide.load17797) ; 2 uses
  %index.next17798 = add nuw i64 %index17792, 32  ; 2 uses
  %i.tj = icmp eq i64 %index.next17798, %n.vec17788
  br i1 %i.tj, label %middle.block17799, label %vector.body17791, !llvm.loop !9152

middle.block17799:                                ; preds = %vector.body17791
  %rdx.minmax17800 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.th, <16 x i8> %i.ti)
  %i.tk = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax17800) ; 3 uses
  br i1 %cmp.n17801, label %.thread7023, label %vec.epilog.iter.check17807

vec.epilog.iter.check17807:                       ; preds = %middle.block17799
  br i1 %min.epilog.iters.check17808, label %.lr.ph11093.preheader, label %vec.epilog.ph17809, !prof !20

vec.epilog.ph17809:                               ; preds = %vector.main.loop.iter.check17785, %vec.epilog.iter.check17807
  %vec.epilog.resume.val17802 = phi i64 [ %n.vec17788, %vec.epilog.iter.check17807 ], [ 0, %vector.main.loop.iter.check17785 ]
  %bc.merge.rdx17803 = phi i8 [ %i.tk, %vec.epilog.iter.check17807 ], [ %i.te, %vector.main.loop.iter.check17785 ]
  %broadcast.splatinsert17810 = insertelement <8 x i8> poison, i8 %bc.merge.rdx17803, i64 0
  %broadcast.splat17811 = shufflevector <8 x i8> %broadcast.splatinsert17810, <8 x i8> poison, <8 x i32> zeroinitializer
  %4 = getelementptr i8, ptr %i.tc, i64 %n.vec17810
  br label %vec.epilog.vector.body17813

vec.epilog.vector.body17813:                      ; preds = %vec.epilog.vector.body17813, %vec.epilog.ph17809
  %index17814 = phi i64 [ %vec.epilog.resume.val17802, %vec.epilog.ph17809 ], [ %index.next17818, %vec.epilog.vector.body17813 ] ; 2 uses
  %vec.phi17815 = phi <8 x i8> [ %broadcast.splat17811, %vec.epilog.ph17809 ], [ %i.tl, %vec.epilog.vector.body17813 ]
  %next.gep17816 = getelementptr i8, ptr %i.tc, i64 %index17814
  %wide.load17817 = load <8 x i8>, ptr %next.gep17816, align 1, !noalias !10063
  %i.tl = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi17815, <8 x i8> %wide.load17817) ; 2 uses
  %index.next17818 = add nuw i64 %index17814, 8   ; 2 uses
  %i.tm = icmp eq i64 %index.next17818, %n.vec17810
  br i1 %i.tm, label %vec.epilog.middle.block17819, label %vec.epilog.vector.body17813, !llvm.loop !9153

vec.epilog.middle.block17819:                     ; preds = %vec.epilog.vector.body17813
  %i.tn = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.tl) ; 2 uses
  br i1 %cmp.n17820, label %.thread7023, label %.lr.ph11093.preheader

.lr.ph11093.preheader:                            ; preds = %iter.check17805, %vec.epilog.iter.check17807, %vec.epilog.middle.block17819
  %.sroa.05.0.i115.i132811091.ph = phi i8 [ %i.te, %iter.check17805 ], [ %i.tk, %vec.epilog.iter.check17807 ], [ %i.tn, %vec.epilog.middle.block17819 ]
  %.sroa.05673.011089.ph = phi ptr [ %i.tc, %iter.check17805 ], [ %i.tf, %vec.epilog.iter.check17807 ], [ %4, %vec.epilog.middle.block17819 ]
  br label %.lr.ph11093

.thread7023:                                      ; preds = %.lr.ph11093, %vec.epilog.middle.block17819, %middle.block17799
  %spec.select96.i118.i1331.lcssa = phi i8 [ %i.tn, %vec.epilog.middle.block17819 ], [ %i.tk, %middle.block17799 ], [ %spec.select96.i118.i1331, %.lr.ph11093 ]
  store i8 %spec.select96.i118.i1331.lcssa, ptr %.sroa.05670.011095, align 1, !noalias !10063
  %i.to = icmp eq ptr %i.sx, %i.st
  br i1 %i.to, label %.loopexit8923, label %.lr.ph11097

.lr.ph11093:                                      ; preds = %.lr.ph11093.preheader, %.lr.ph11093
  %.sroa.05.0.i115.i132811091 = phi i8 [ %spec.select96.i118.i1331, %.lr.ph11093 ], [ %.sroa.05.0.i115.i132811091.ph, %.lr.ph11093.preheader ]
  %.sroa.05673.011089 = phi ptr [ %i.tp, %.lr.ph11093 ], [ %.sroa.05673.011089.ph, %.lr.ph11093.preheader ] ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.05673.011089, i64 1 ; 2 uses
  %i.tq = load i8, ptr %.sroa.05673.011089, align 1, !noalias !10063, !noundef !5
  %spec.select96.i118.i1331 = tail call i8 @llvm.umax.i8(i8 %.sroa.05.0.i115.i132811091, i8 %i.tq) ; 2 uses
  %i.tr = icmp eq ptr %i.tp, %i.td
  br i1 %i.tr, label %.thread7023, label %.lr.ph11093, !llvm.loop !9154

.split11086:                                      ; preds = %bb.ao, %bb.aw
  %.sroa.05676.0 = phi ptr [ %.sroa.05676.1, %bb.aw ], [ %i.pt, %bb.ao ] ; 3 uses
  %.sroa.75678.0 = phi i64 [ %.sroa.75678.1, %bb.aw ], [ 0, %bb.ao ] ; 3 uses
  %i.ts = icmp eq ptr %.sroa.05676.0, %i.st
  br i1 %i.ts, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.split11086
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.05676.0, i64 1
  %i.tu = add i64 %.sroa.75678.0, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.split11086
  %.sroa.05676.1 = phi ptr [ %i.st, %.split11086 ], [ %i.tt, %bb.aq ]
  %.sroa.75678.1 = phi i64 [ %.sroa.75678.0, %.split11086 ], [ %i.tu, %bb.aq ]
  %.sroa.2.0.i2509 = phi ptr [ null, %.split11086 ], [ %.sroa.05676.0, %bb.aq ]
  %.sroa.0.0.i2510 = phi i64 [ undef, %.split11086 ], [ %.sroa.75678.0, %bb.aq ]
  %i.tv = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i2510, 0
  %i.tw = insertvalue { i64, ptr } %i.tv, ptr %.sroa.2.0.i2509, 1
  %.fr88.i100.i1313 = freeze { i64, ptr } %i.tw   ; 2 uses
  %i.tx = extractvalue { i64, ptr } %.fr88.i100.i1313, 1 ; 2 uses
  %.not87.i101.i1314 = icmp eq ptr %i.tx, null
  br i1 %.not87.i101.i1314, label %.loopexit8923, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ty = extractvalue { i64, ptr } %.fr88.i100.i1313, 0 ; 2 uses
  %i.tz = urem i64 %i.ty, %i.pj                   ; 2 uses
  %i.ua = sub nuw i64 %i.ty, %i.tz
  %i.ub = mul i64 %i.ua, %i.pc
  %i.uc = add i64 %i.ub, %i.tz                    ; 5 uses
  %i.ud = icmp ugt i64 %i.uc, %i.sr
  br i1 %i.ud, label %.invoke15864, label %bb.at, !prof !10

.split11088.us:                                   ; preds = %.split11086.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.ah unwind label %bb.p, !noalias !10061

bb.at:                                            ; preds = %bb.as
  %i.ue = sub nuw i64 %i.sr, %i.uc                ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.uc ; 2 uses
  %.not89.i102.i1315 = icmp eq i64 %i.sr, %i.uc
  br i1 %.not89.i102.i1315, label %.invoke, label %bb.au

.invoke15864:                                     ; preds = %.lr.ph11097, %bb.as, %bb.r, %bb.an
  %i.ug = phi i64 [ %i.uc, %bb.as ], [ %i.qb, %bb.r ], [ %i.qb, %bb.an ], [ %i.sz, %.lr.ph11097 ]
  %i.uh = phi i64 [ %i.sr, %bb.as ], [ %i.qd, %bb.r ], [ %i.qd, %bb.an ], [ %i.ta, %.lr.ph11097 ]
  %i.ui = phi i64 [ %i.sr, %bb.as ], [ %i.om, %bb.r ], [ %i.om, %bb.an ], [ %i.sr, %.lr.ph11097 ]
  %i.uj = phi ptr [ @12, %bb.as ], [ @13, %bb.r ], [ @13, %bb.an ], [ @8, %.lr.ph11097 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ug, i64 noundef %i.uh, i64 noundef %i.ui, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.uj) #22
          to label %.cont15865 unwind label %bb.p, !noalias !10061

.cont15865:                                       ; preds = %.invoke15864
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.uk = load i8, ptr %i.uf, align 1, !alias.scope !10070, !noundef !5
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ax
  %.sroa.044.0.i105.i131811085 = phi i64 [ 0, %bb.au ], [ %i.uq, %bb.ax ] ; 2 uses
  %.sroa.022.0.i103.i131611083 = phi i8 [ %i.uk, %bb.au ], [ %spec.select98.i106.i1319, %bb.ax ]
  %i.ul = mul i64 %.sroa.044.0.i105.i131811085, %i.pj ; 3 uses
  %i.um = icmp ult i64 %i.ul, %i.ue
  br i1 %i.um, label %bb.ax, label %.invoke

bb.aw:                                            ; preds = %bb.ax
  store i8 %spec.select98.i106.i1319, ptr %i.tx, align 1, !noalias !10061
  br label %.split11086

.invoke:                                          ; preds = %bb.at, %bb.av
  %i.un = phi i64 [ %i.ul, %bb.av ], [ 0, %bb.at ]
  %i.uo = phi i64 [ %i.ue, %bb.av ], [ 0, %bb.at ]
  %i.up = phi ptr [ @11, %bb.av ], [ @10, %bb.at ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.un, i64 noundef %i.uo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.up) #22
          to label %.cont unwind label %bb.p, !noalias !10061

.cont:                                            ; preds = %.invoke
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.uq = add nuw i64 %.sroa.044.0.i105.i131811085, 1 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uf, i64 %i.ul
  %i.us = load i8, ptr %i.ur, align 1, !alias.scope !10070, !noundef !5
  %spec.select98.i106.i1319 = tail call i8 @llvm.umax.i8(i8 %.sroa.022.0.i103.i131611083, i8 %i.us) ; 2 uses
  %exitcond12922.not = icmp eq i64 %i.uq, %i.pc
  br i1 %exitcond12922.not, label %bb.aw, label %bb.av

common.resume:                                    ; preds = %bb.bvg, %bb.bte, %bb.bra, %bb.boy, %bb.bmz, %bb.blg, %bb.bjl, %bb.bhs, %bb.bft, %bb.bea, %bb.bcf, %bb.bam, %bb.aye, %bb.awf, %bb.aub, %bb.asc, %bb.apu, %bb.anv, %bb.alr, %bb.ajs, %bb.aht, %bb.aga, %bb.aef, %bb.acm, %bb.aan, %bb.yu, %bb.wz, %bb.vg, %bb.th, %bb.ro, %bb.pt, %bb.oa, %bb.mb, %bb.ki, %bb.in, %bb.gu, %bb.ev, %bb.dc, %bb.bh, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %.pn93.i180.i, %bb.bte ], [ %.pn93.i82.i1289, %bb.o ], [ %.pn93.i.i1333, %bb.bh ], [ %.pn93.i180.i1377, %bb.dc ], [ %.pn93.i131.i1421, %bb.ev ], [ %.pn93.i82.i1809, %bb.gu ], [ %.pn93.i.i1853, %bb.in ], [ %.pn93.i180.i1897, %bb.ki ], [ %.pn93.i131.i1941, %bb.mb ], [ %.pn93.i180.i2069, %bb.oa ], [ %.pn93.i131.i2113, %bb.pt ], [ %.pn93.i82.i2157, %bb.ro ], [ %.pn93.i.i2201, %bb.th ], [ %.pn93.i82.i1549, %bb.vg ], [ %.pn93.i.i1593, %bb.wz ], [ %.pn93.i180.i1637, %bb.yu ], [ %.pn93.i131.i1681, %bb.aan ], [ %.pn93.i180.i2329, %bb.acm ], [ %.pn93.i131.i2373, %bb.aef ], [ %.pn93.i82.i2417, %bb.aga ], [ %.pn93.i.i2461, %bb.aht ], [ %.pn93.i82.i273, %bb.ajs ], [ %.pn93.i.i317, %bb.alr ], [ %.pn93.i180.i361, %bb.anv ], [ %.pn93.i131.i405, %bb.apu ], [ %.pn93.i82.i533, %bb.asc ], [ %.pn93.i.i577, %bb.aub ], [ %.pn93.i180.i621, %bb.awf ], [ %.pn93.i131.i665, %bb.aye ], [ %.pn93.i82.i1029, %bb.bam ], [ %.pn93.i.i1073, %bb.bcf ], [ %.pn93.i180.i1117, %bb.bea ], [ %.pn93.i131.i1161, %bb.bft ], [ %.pn93.i82.i793, %bb.bhs ], [ %.pn93.i.i831, %bb.bjl ], [ %.pn93.i180.i869, %bb.blg ], [ %.pn93.i131.i907, %bb.bmz ], [ %.pn93.i82.i, %bb.boy ], [ %.pn93.i.i, %bb.bra ], [ %.pn93.i131.i, %bb.bvg ]
  resume { ptr, i32 } %common.resume.op

bb.ay:                                            ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10074)
  %i.ut = load i64, ptr %i.ov, align 8, !alias.scope !10075, !noundef !5 ; 2 uses
  %i.uu = load i64, ptr %1, align 8, !alias.scope !10076, !noundef !5 ; 7 uses
  %i.uv = icmp ult i64 %i.uu, %i.ut
  br i1 %i.uv, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.uw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ux = load ptr, ptr %i.uw, align 8, !alias.scope !10075, !nonnull !5, !noundef !5
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.uu
  %i.uz = load i64, ptr %i.uy, align 8, !noalias !10077, !noundef !5 ; 15 uses
  %i.va = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.vb = load i64, ptr %i.va, align 8, !alias.scope !10075, !noundef !5 ; 2 uses
  %i.vc = icmp ult i64 %i.uu, %i.vb
  br i1 %i.vc, label %bb.bb, label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.uu, i64 noundef %i.ut, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !10077
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.vd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ve = load ptr, ptr %i.vd, align 8, !alias.scope !10075, !nonnull !5, !noundef !5
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ve, i64 %i.uu
  %i.vg = load i64, ptr %i.vf, align 8, !noalias !10077, !noundef !5 ; 4 uses
  %i.vh = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10077
  %i.vi = icmp eq i64 %i.uz, 0
  br i1 %i.vi, label %bb.be, label %bb.bd

bb.bc:                                            ; preds = %bb.az
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.uu, i64 noundef %i.vb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !10077
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.vj = udiv i64 %i.vh, %i.uz                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hx), !noalias !10078
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hr), !noalias !10078
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hr, i64 noundef %i.vj, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !10077
  %i.vk = load i64, ptr %i.hr, align 8, !range !8, !noalias !10078, !noundef !5
  %i.vl = trunc nuw i64 %i.vk to i1
  %i.vm = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.vn = load i64, ptr %i.vm, align 8, !range !12, !noalias !10078, !noundef !5 ; 8 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.hr, i64 16 ; 2 uses
  br i1 %i.vl, label %bb.bf, label %bb.bg, !prof !10

bb.be:                                            ; preds = %bb.bb
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !10077
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.vp = load i64, ptr %i.vo, align 8, !noalias !10078
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.vn, i64 %i.vp) #22, !noalias !10077
  unreachable

bb.bg:                                            ; preds = %bb.bd
  %i.vq = load ptr, ptr %i.vo, align 8, !noalias !10078, !nonnull !5, !noundef !5 ; 5 uses
  %i.vr = icmp ule i64 %i.vj, %i.vn
  tail call void @llvm.assume(i1 %i.vr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hr), !noalias !10078
  store i64 %i.vn, ptr %i.hx, align 16, !noalias !10078
  %i.vs = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr %i.vq, ptr %i.vs, align 8, !noalias !10078
  %i.vt = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store i64 0, ptr %i.vt, align 16, !noalias !10078
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hw), !noalias !10078
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout18contiguous_offsets(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
          to label %bb.bj unwind label %bb.bi, !noalias !10077

bb.bh:                                            ; preds = %bb.bo, %bb.bi
  %.pn93.i.i1333 = phi { ptr, i32 } [ %i.vu, %bb.bi ], [ %.pn.i.i1346, %bb.bo ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hx) #20
          to label %common.resume unwind label %bb.cf, !noalias !10079

bb.bi:                                            ; preds = %.invoke15870, %.invoke15868, %.split11107.us, %bb.bv, %bb.bl, %bb.bg
  %i.vu = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a
  %i.xj = icmp ult i64 %i.xh, %i.xi
  br i1 %i.xj, label %bb.bt, label %bb.bs

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2524: ; preds = %bb.bs, %.noexc2532
  %i.xk = load i64, ptr %i.wp, align 8, !alias.scope !10084, !noalias !10077, !noundef !5
  %i.xl = add i64 %i.xk, -1
  store i64 %i.xl, ptr %i.wp, align 8, !alias.scope !10084, !noalias !10077
  br label %bb.bu

bb.bs:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2528
  %i.xm = load i64, ptr %i.xe, align 8, !noalias !10083, !noundef !5
  %i.xn = mul i64 %i.xm, %i.xg
  %i.xo = sub i64 %.sroa.05.031.i.i2529, %i.xn
  store i64 0, ptr %i.xd, align 8, !noalias !10083
  %i.xp = icmp ult i64 %.sroa.918.0.copyload.i.i2521, %i.xb
  br i1 %i.xp, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2528, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2524

bb.bt:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2528
  store i64 %i.xh, ptr %i.xd, align 8, !noalias !10083
  %i.xq = load i64, ptr %i.xe, align 8, !noalias !10083, !noundef !5
  %i.xr = load i64, ptr %i.wp, align 8, !alias.scope !10084, !noalias !10077, !noundef !5
  %i.xs = add i64 %i.xr, -1
  store i64 %i.xs, ptr %i.wp, align 8, !alias.scope !10084, !noalias !10077
  %i.xt = add i64 %i.xq, %.sroa.05.031.i.i2529
  br label %bb.bu

.loopexit.split-lp8919.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc2531, %bb.br, %.invoke15872, %bb.by
  %lpad.loopexit.split-lp17954 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.hs) #20
          to label %bb.bo unwind label %bb.cf, !noalias !10077

bb.bu:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2524, %bb.bt
  %.sroa.6.0.i.i2525 = phi i64 [ %i.xt, %bb.bt ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2524 ]
  %.sroa.08.0.i.i2526 = phi i64 [ 1, %bb.bt ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2524 ]
  store i64 %.sroa.08.0.i.i2526, ptr %i.hs, align 8, !alias.scope !10084, !noalias !10077
  store i64 %.sroa.6.0.i.i2525, ptr %i.wf, align 8, !alias.scope !10084, !noalias !10077
  %i.xu = load i64, ptr %.sroa.233.0..sroa_idx.i.i1347, align 8, !alias.scope !10081, !noalias !10077, !noundef !5 ; 4 uses
  %i.xv = add i64 %i.xu, 1
  store i64 %i.xv, ptr %.sroa.233.0..sroa_idx.i.i1347, align 8, !alias.scope !10081, !noalias !10077
  %i.xw = icmp ugt i64 %i.wq, %i.om
  br i1 %i.xw, label %bb.by, label %bb.bx, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2533: ; preds = %bb.cd, %bb.bq
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.hs)
          to label %bb.bv unwind label %bb.bp, !noalias !10077

bb.bv:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hs), !noalias !10078
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.hv)
          to label %bb.bw unwind label %bb.bi, !noalias !10077

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv), !noalias !10078
  br label %.loopexit8916

bb.bx:                                            ; preds = %bb.bu
  %i.xx = sub nuw nsw i64 %i.om, %i.wq            ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.wq ; 2 uses
  %.not84.i.i1348 = icmp eq i64 %i.om, %i.wq
  br i1 %.not84.i.i1348, label %.invoke15872, label %bb.bz

bb.by:                                            ; preds = %bb.bu
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.wq, i64 noundef range(i64 0, -9223372036854775808) %i.om, i64 noundef range(i64 0, -9223372036854775808) %i.om, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.ca unwind label %.loopexit.split-lp8919.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10077

bb.bz:                                            ; preds = %bb.bx
  %i.xz = load i8, ptr %i.xy, align 1, !alias.scope !10086, !noundef !5
  br label %bb.cb

bb.ca:                                            ; preds = %.split11107.us, %bb.by
  unreachable

bb.cb:                                            ; preds = %bb.bz, %bb.ce
  %.sroa.055.0.i.i135111100 = phi i64 [ 0, %bb.bz ], [ %i.yk, %bb.ce ] ; 2 uses
  %.sroa.035.0.i.i135011099 = phi i8 [ %i.xz, %bb.bz ], [ %spec.select95.i.i1353, %bb.ce ]
  %i.ya = mul i64 %.sroa.055.0.i.i135111100, %i.vg ; 3 uses
  %i.yb = icmp ult i64 %i.ya, %i.xx
  br i1 %i.yb, label %bb.ce, label %.invoke15872

bb.cc:                                            ; preds = %bb.ce
  %i.yc = icmp ult i64 %i.xu, %i.vn
  br i1 %i.yc, label %bb.cd, label %.invoke15872

bb.cd:                                            ; preds = %bb.cc
  %i.yd = getelementptr inbounds nuw i8, ptr %i.vq, i64 %i.xu
  store i8 %spec.select95.i.i1353, ptr %i.yd, align 1, !noalias !10077
  %i.ye = load i64, ptr %i.hs, align 8, !range !8, !alias.scope !10087, !noalias !10077, !noundef !5
  %i.yf = load i64, ptr %i.wf, align 8, !alias.scope !10087, !noalias !10077
  %i.yg = trunc nuw i64 %i.ye to i1
  br i1 %i.yg, label %bb.br, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2533

.invoke15872:                                     ; preds = %bb.cc, %bb.bx, %bb.cb
  %i.yh = phi i64 [ %i.ya, %bb.cb ], [ 0, %bb.bx ], [ %i.xu, %bb.cc ]
  %i.yi = phi i64 [ %i.xx, %bb.cb ], [ 0, %bb.bx ], [ %i.vn, %bb.cc ]
  %i.yj = phi ptr [ @6, %bb.cb ], [ @4, %bb.bx ], [ @5, %bb.cc ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.yh, i64 noundef %i.yi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yj) #22
          to label %.cont15873 unwind label %.loopexit.split-lp8919.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10077

.cont15873:                                       ; preds = %.invoke15872
  unreachable

bb.ce:                                            ; preds = %bb.cb
  %i.yk = add nuw i64 %.sroa.055.0.i.i135111100, 1 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xy, i64 %i.ya
  %i.ym = load i8, ptr %i.yl, align 1, !alias.scope !10086, !noundef !5
  %spec.select95.i.i1353 = call i8 @llvm.umin.i8(i8 %.sroa.035.0.i.i135011099, i8 %i.ym) ; 2 uses
  %exitcond12923.not = icmp eq i64 %i.yk, %i.uz
  br i1 %exitcond12923.not, label %bb.cc, label %bb.cb

bb.cf:                                            ; preds = %.loopexit.split-lp8919.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo, %bb.bh
  %i.yn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10079
  unreachable

bb.cg:                                            ; preds = %bb.bk
  %i.yo = sub nuw i64 %i.wa, %i.vy                ; 7 uses
  %.not86.i.i1354 = icmp ugt i64 %i.wa, %i.om
  br i1 %.not86.i.i1354, label %.invoke15870, label %bb.ch, !prof !10

bb.ch:                                            ; preds = %bb.cg
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.vy ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.vq, i64 %i.vn ; 3 uses
  switch i64 %i.vg, label %.split11105 [
    i64 1, label %bb.ci
    i64 0, label %.split11105.us
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.yr = icmp samesign eq i64 %i.vn, 0
  br i1 %i.yr, label %.loopexit8916, label %.lr.ph11116.preheader

.lr.ph11116.preheader:                            ; preds = %bb.ci
  %min.iters.check17824 = icmp ult i64 %i.uz, 8
  %min.iters.check17826 = icmp ult i64 %i.uz, 32
  %i.ys = and i64 %i.uz, 24
  %n.vec17828 = and i64 %i.uz, -32                ; 4 uses
  %cmp.n17841 = icmp eq i64 %i.uz, %n.vec17828
  %min.epilog.iters.check17848 = icmp eq i64 %i.ys, 0
  %n.vec17850 = and i64 %i.uz, -8                 ; 3 uses
  %cmp.n17860 = icmp eq i64 %i.uz, %n.vec17850
  br label %.lr.ph11116

.split11105.us:                                   ; preds = %bb.ch
  %i.yt = icmp samesign eq i64 %i.vn, 0
  br i1 %i.yt, label %.loopexit8916, label %.split11107.us

.lr.ph11116:                                      ; preds = %.lr.ph11116.preheader, %.thread7049
  %.sroa.75635.011115 = phi i64 [ %i.yv, %.thread7049 ], [ 0, %.lr.ph11116.preheader ] ; 2 uses
  %.sroa.05633.011114 = phi ptr [ %i.yu, %.thread7049 ], [ %i.vq, %.lr.ph11116.preheader ] ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.05633.011114, i64 1 ; 2 uses
  %i.yv = add nuw nsw i64 %.sroa.75635.011115, 1
  %i.yw = mul i64 %.sroa.75635.011115, %i.uz      ; 4 uses
  %i.yx = add i64 %i.yw, %i.uz                    ; 3 uses
  %i.yy = icmp ult i64 %i.yx, %i.yw
  %.not91.i.i1368 = icmp ugt i64 %i.yx, %i.yo
  %or.cond.i.i1369 = select i1 %i.yy, i1 true, i1 %.not91.i.i1368, !prof !7
  br i1 %or.cond.i.i1369, label %.invoke15870, label %iter.check17845, !prof !7

iter.check17845:                                  ; preds = %.lr.ph11116
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yp, i64 %i.yw ; 7 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 %i.uz
  %i.zb = load i8, ptr %i.yz, align 1, !alias.scope !10086, !noundef !5 ; 3 uses
  br i1 %min.iters.check17824, label %.lr.ph11112.preheader, label %vector.main.loop.iter.check17825

vector.main.loop.iter.check17825:                 ; preds = %iter.check17845
  br i1 %min.iters.check17826, label %vec.epilog.ph17849, label %vector.ph17827

vector.ph17827:                                   ; preds = %vector.main.loop.iter.check17825
  %i.zc = getelementptr i8, ptr %i.yz, i64 %n.vec17828
  %broadcast.splatinsert17829 = insertelement <16 x i8> poison, i8 %i.zb, i64 0
  %broadcast.splat17830 = shufflevector <16 x i8> %broadcast.splatinsert17829, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body17831

vector.body17831:                                 ; preds = %vector.ph17827, %vector.body17831
  %index17832 = phi i64 [ 0, %vector.ph17827 ], [ %index.next17838, %vector.body17831 ] ; 2 uses
  %vec.phi17833 = phi <16 x i8> [ %broadcast.splat17830, %vector.ph17827 ], [ %i.ze, %vector.body17831 ]
  %vec.phi17834 = phi <16 x i8> [ %broadcast.splat17830, %vector.ph17827 ], [ %i.zf, %vector.body17831 ]
  %next.gep17835 = getelementptr i8, ptr %i.yz, i64 %index17832 ; 2 uses
  %i.zd = getelementptr i8, ptr %next.gep17835, i64 16
  %wide.load17836 = load <16 x i8>, ptr %next.gep17835, align 1, !noalias !10079
  %wide.load17837 = load <16 x i8>, ptr %i.zd, align 1, !noalias !10079
  %i.ze = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi17833, <16 x i8> %wide.load17836) ; 2 uses
  %i.zf = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi17834, <16 x i8> %wide.load17837) ; 2 uses
  %index.next17838 = add nuw i64 %index17832, 32  ; 2 uses
  %i.zg = icmp eq i64 %index.next17838, %n.vec17828
  br i1 %i.zg, label %middle.block17839, label %vector.body17831, !llvm.loop !9176

middle.block17839:                                ; preds = %vector.body17831
  %rdx.minmax17840 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.ze, <16 x i8> %i.zf)
  %i.zh = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax17840) ; 3 uses
  br i1 %cmp.n17841, label %.thread7049, label %vec.epilog.iter.check17847

vec.epilog.iter.check17847:                       ; preds = %middle.block17839
  br i1 %min.epilog.iters.check17848, label %.lr.ph11112.preheader, label %vec.epilog.ph17849, !prof !20

vec.epilog.ph17849:                               ; preds = %vector.main.loop.iter.check17825, %vec.epilog.iter.check17847
  %vec.epilog.resume.val17842 = phi i64 [ %n.vec17828, %vec.epilog.iter.check17847 ], [ 0, %vector.main.loop.iter.check17825 ]
  %bc.merge.rdx17843 = phi i8 [ %i.zh, %vec.epilog.iter.check17847 ], [ %i.zb, %vector.main.loop.iter.check17825 ]
  %broadcast.splatinsert17849 = insertelement <8 x i8> poison, i8 %bc.merge.rdx17843, i64 0
  %broadcast.splat17850 = shufflevector <8 x i8> %broadcast.splatinsert17849, <8 x i8> poison, <8 x i32> zeroinitializer
  %5 = getelementptr i8, ptr %i.yz, i64 %n.vec17850
  br label %vec.epilog.vector.body17853

vec.epilog.vector.body17853:                      ; preds = %vec.epilog.vector.body17853, %vec.epilog.ph17849
  %index17854 = phi i64 [ %vec.epilog.resume.val17842, %vec.epilog.ph17849 ], [ %index.next17858, %vec.epilog.vector.body17853 ] ; 2 uses
  %vec.phi17855 = phi <8 x i8> [ %broadcast.splat17850, %vec.epilog.ph17849 ], [ %i.zi, %vec.epilog.vector.body17853 ]
  %next.gep17856 = getelementptr i8, ptr %i.yz, i64 %index17854
  %wide.load17857 = load <8 x i8>, ptr %next.gep17856, align 1, !noalias !10079
  %i.zi = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %vec.phi17855, <8 x i8> %wide.load17857) ; 2 uses
  %index.next17858 = add nuw i64 %index17854, 8   ; 2 uses
  %i.zj = icmp eq i64 %index.next17858, %n.vec17850
  br i1 %i.zj, label %vec.epilog.middle.block17859, label %vec.epilog.vector.body17853, !llvm.loop !9177

vec.epilog.middle.block17859:                     ; preds = %vec.epilog.vector.body17853
  %i.zk = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.zi) ; 2 uses
  br i1 %cmp.n17860, label %.thread7049, label %.lr.ph11112.preheader

.lr.ph11112.preheader:                            ; preds = %iter.check17845, %vec.epilog.iter.check17847, %vec.epilog.middle.block17859
  %.sroa.05.0.i.i137211110.ph = phi i8 [ %i.zb, %iter.check17845 ], [ %i.zh, %vec.epilog.iter.check17847 ], [ %i.zk, %vec.epilog.middle.block17859 ]
  %.sroa.05636.011108.ph = phi ptr [ %i.yz, %iter.check17845 ], [ %i.zc, %vec.epilog.iter.check17847 ], [ %5, %vec.epilog.middle.block17859 ]
  br label %.lr.ph11112

.thread7049:                                      ; preds = %.lr.ph11112, %vec.epilog.middle.block17859, %middle.block17839
  %spec.select96.i.i1375.lcssa = phi i8 [ %i.zk, %vec.epilog.middle.block17859 ], [ %i.zh, %middle.block17839 ], [ %spec.select96.i.i1375, %.lr.ph11112 ]
  store i8 %spec.select96.i.i1375.lcssa, ptr %.sroa.05633.011114, align 1, !noalias !10079
  %i.zl = icmp eq ptr %i.yu, %i.yq
  br i1 %i.zl, label %.loopexit8916, label %.lr.ph11116

.lr.ph11112:                                      ; preds = %.lr.ph11112.preheader, %.lr.ph11112
  %.sroa.05.0.i.i137211110 = phi i8 [ %spec.select96.i.i1375, %.lr.ph11112 ], [ %.sroa.05.0.i.i137211110.ph, %.lr.ph11112.preheader ]
  %.sroa.05636.011108 = phi ptr [ %i.zm, %.lr.ph11112 ], [ %.sroa.05636.011108.ph, %.lr.ph11112.preheader ] ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.sroa.05636.011108, i64 1 ; 2 uses
  %i.zn = load i8, ptr %.sroa.05636.011108, align 1, !noalias !10079, !noundef !5
  %spec.select96.i.i1375 = tail call i8 @llvm.umin.i8(i8 %.sroa.05.0.i.i137211110, i8 %i.zn) ; 2 uses
  %i.zo = icmp eq ptr %i.zm, %i.za
  br i1 %i.zo, label %.thread7049, label %.lr.ph11112, !llvm.loop !9178

.split11105:                                      ; preds = %bb.ch, %bb.cp
  %.sroa.05639.0 = phi ptr [ %.sroa.05639.1, %bb.cp ], [ %i.vq, %bb.ch ] ; 3 uses
  %.sroa.75641.0 = phi i64 [ %.sroa.75641.1, %bb.cp ], [ 0, %bb.ch ] ; 3 uses
  %i.zp = icmp eq ptr %.sroa.05639.0, %i.yq
  br i1 %i.zp, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.split11105
  %i.zq = getelementptr inbounds nuw i8, ptr %.sroa.05639.0, i64 1
  %i.zr = add i64 %.sroa.75641.0, 1
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.split11105
  %.sroa.05639.1 = phi ptr [ %i.yq, %.split11105 ], [ %i.zq, %bb.cj ]
  %.sroa.75641.1 = phi i64 [ %.sroa.75641.0, %.split11105 ], [ %i.zr, %bb.cj ]
  %.sroa.2.0.i2540 = phi ptr [ null, %.split11105 ], [ %.sroa.05639.0, %bb.cj ]
  %.sroa.0.0.i2541 = phi i64 [ undef, %.split11105 ], [ %.sroa.75641.0, %bb.cj ]
  %i.zs = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i2541, 0
  %i.zt = insertvalue { i64, ptr } %i.zs, ptr %.sroa.2.0.i2540, 1
  %.fr88.i.i1357 = freeze { i64, ptr } %i.zt      ; 2 uses
  %i.zu = extractvalue { i64, ptr } %.fr88.i.i1357, 1 ; 2 uses
  %.not87.i.i1358 = icmp eq ptr %i.zu, null
  br i1 %.not87.i.i1358, label %.loopexit8916, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.zv = extractvalue { i64, ptr } %.fr88.i.i1357, 0 ; 2 uses
  %i.zw = urem i64 %i.zv, %i.vg                   ; 2 uses
  %i.zx = sub nuw i64 %i.zv, %i.zw
  %i.zy = mul i64 %i.zx, %i.uz
  %i.zz = add i64 %i.zy, %i.zw                    ; 5 uses
  %i.aaa = icmp ugt i64 %i.zz, %i.yo
  br i1 %i.aaa, label %.invoke15870, label %bb.cm, !prof !10

.split11107.us:                                   ; preds = %.split11105.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.ca unwind label %bb.bi, !noalias !10077

bb.cm:                                            ; preds = %bb.cl
  %i.aab = sub nuw i64 %i.yo, %i.zz               ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.yp, i64 %i.zz ; 2 uses
  %.not89.i.i1359 = icmp eq i64 %i.yo, %i.zz
  br i1 %.not89.i.i1359, label %.invoke15868, label %bb.cn

.invoke15870:                                     ; preds = %.lr.ph11116, %bb.cl, %bb.bk, %bb.cg
  %i.aad = phi i64 [ %i.zz, %bb.cl ], [ %i.vy, %bb.bk ], [ %i.vy, %bb.cg ], [ %i.yw, %.lr.ph11116 ]
  %i.aae = phi i64 [ %i.yo, %bb.cl ], [ %i.wa, %bb.bk ], [ %i.wa, %bb.cg ], [ %i.yx, %.lr.ph11116 ]
  %i.aaf = phi i64 [ %i.yo, %bb.cl ], [ %i.om, %bb.bk ], [ %i.om, %bb.cg ], [ %i.yo, %.lr.ph11116 ]
  %i.aag = phi ptr [ @12, %bb.cl ], [ @13, %bb.bk ], [ @13, %bb.cg ], [ @8, %.lr.ph11116 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.aad, i64 noundef %i.aae, i64 noundef %i.aaf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aag) #22
          to label %.cont15871 unwind label %bb.bi, !noalias !10077

.cont15871:                                       ; preds = %.invoke15870
  unreachable

bb.cn:                                            ; preds = %bb.cm
  %i.aah = load i8, ptr %i.aac, align 1, !alias.scope !10086, !noundef !5
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cq
  %.sroa.044.0.i.i136211104 = phi i64 [ 0, %bb.cn ], [ %i.aan, %bb.cq ] ; 2 uses
  %.sroa.022.0.i.i136011102 = phi i8 [ %i.aah, %bb.cn ], [ %spec.select98.i.i1363, %bb.cq ]
  %i.aai = mul i64 %.sroa.044.0.i.i136211104, %i.vg ; 3 uses
  %i.aaj = icmp ult i64 %i.aai, %i.aab
  br i1 %i.aaj, label %bb.cq, label %.invoke15868

bb.cp:                                            ; preds = %bb.cq
  store i8 %spec.select98.i.i1363, ptr %i.zu, align 1, !noalias !10077
  br label %.split11105

.invoke15868:                                     ; preds = %bb.cm, %bb.co
  %i.aak = phi i64 [ %i.aai, %bb.co ], [ 0, %bb.cm ]
  %i.aal = phi i64 [ %i.aab, %bb.co ], [ 0, %bb.cm ]
  %i.aam = phi ptr [ @11, %bb.co ], [ @10, %bb.cm ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aak, i64 noundef %i.aal, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aam) #22
          to label %.cont15869 unwind label %bb.bi, !noalias !10077

.cont15869:                                       ; preds = %.invoke15868
  unreachable

bb.cq:                                            ; preds = %bb.co
  %i.aan = add nuw i64 %.sroa.044.0.i.i136211104, 1 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aac, i64 %i.aai
  %i.aap = load i8, ptr %i.aao, align 1, !alias.scope !10086, !noundef !5
  %spec.select98.i.i1363 = tail call i8 @llvm.umin.i8(i8 %.sroa.022.0.i.i136011102, i8 %i.aap) ; 2 uses
  %exitcond12924.not = icmp eq i64 %i.aan, %i.uz
  br i1 %exitcond12924.not, label %bb.cp, label %bb.co

bb.cr:                                            ; preds = %bb.t
  %.sroa.551.0..sroa_idx.i86.i1293 = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  %.sroa.75496.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.75496.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i86.i1293, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hn), !noalias !10062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hz, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i80.i1236.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i80.i1236.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ho), !noalias !10062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp), !noalias !10062
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hq), !noalias !10061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hq), !noalias !10062
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fhNcNtNtB6_10CpuStorage2U80EB8_.exit.thread7131

.loopexit8923:                                    ; preds = %.thread7023, %bb.ar, %.split11086.us, %bb.ap, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp), !noalias !10062
  %i.aaq = load <2 x i64>, ptr %i.hq, align 16, !noalias !10062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hq), !noalias !10062
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fhNcNtNtB6_10CpuStorage2U80EB8_.exit.thread

bb.cs:                                            ; preds = %bb.bm
  %.sroa.551.0..sroa_idx.i.i1337 = getelementptr inbounds nuw i8, ptr %i.hu, i64 64
  %.sroa.75493.sroa.8.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.75493.sroa.8.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i.i1337, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu), !noalias !10078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hz, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i.i1247.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i.i1247.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv), !noalias !10078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hw), !noalias !10078
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hx), !noalias !10077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hx), !noalias !10078
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fhNcNtNtB6_10CpuStorage2U80EB8_.exit.thread7131

.loopexit8916:                                    ; preds = %.thread7049, %bb.ck, %.split11105.us, %bb.ci, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hw), !noalias !10078
  %i.aar = load <2 x i64>, ptr %i.hx, align 16, !noalias !10078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hx), !noalias !10078
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fhNcNtNtB6_10CpuStorage2U80EB8_.exit.thread

bb.ct:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10090)
  %i.aas = load i64, ptr %i.ov, align 8, !alias.scope !10091, !noundef !5 ; 2 uses
  %i.aat = load i64, ptr %1, align 8, !alias.scope !10092, !noundef !5 ; 7 uses
  %i.aau = icmp ult i64 %i.aat, %i.aas
  br i1 %i.aau, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.aav = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aaw = load ptr, ptr %i.aav, align 8, !alias.scope !10091, !nonnull !5, !noundef !5
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.aaw, i64 %i.aat
  %i.aay = load i64, ptr %i.aax, align 8, !noalias !10093, !noundef !5 ; 10 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aba = load i64, ptr %i.aaz, align 8, !alias.scope !10091, !noundef !5 ; 2 uses
  %i.abb = icmp ult i64 %i.aat, %i.aba
  br i1 %i.abb, label %bb.cw, label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aat, i64 noundef %i.aas, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !10093
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.abc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.abd = load ptr, ptr %i.abc, align 8, !alias.scope !10091, !nonnull !5, !noundef !5
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.abd, i64 %i.aat
  %i.abf = load i64, ptr %i.abe, align 8, !noalias !10093, !noundef !5 ; 4 uses
  %i.abg = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10093
  %i.abh = icmp eq i64 %i.aay, 0
  br i1 %i.abh, label %bb.cz, label %bb.cy

bb.cx:                                            ; preds = %bb.cu
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aat, i64 noundef %i.aba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !10093
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.abi = udiv i64 %i.abg, %i.aay                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc), !noalias !10094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw), !noalias !10094
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gw, i64 noundef %i.abi, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !10093
  %i.abj = load i64, ptr %i.gw, align 8, !range !8, !noalias !10094, !noundef !5
  %i.abk = trunc nuw i64 %i.abj to i1
  %i.abl = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.abm = load i64, ptr %i.abl, align 8, !range !12, !noalias !10094, !noundef !5 ; 8 uses
end_hunk_1
begin_hunk_2_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a

bb.ol:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2743
  %i.bqj = load i64, ptr %i.bqb, align 8, !noalias !10205, !noundef !5
  %i.bqk = mul i64 %i.bqj, %i.bqd
  %i.bql = sub i64 %.sroa.05.031.i.i2744, %i.bqk
  store i64 0, ptr %i.bqa, align 8, !noalias !10205
  %i.bqm = icmp ult i64 %.sroa.918.0.copyload.i.i2736, %i.bpy
  br i1 %i.bqm, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2743, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2739

bb.om:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2743
  store i64 %i.bqe, ptr %i.bqa, align 8, !noalias !10205
  %i.bqn = load i64, ptr %i.bqb, align 8, !noalias !10205, !noundef !5
  %i.bqo = load i64, ptr %i.bpm, align 8, !alias.scope !10206, !noalias !10199, !noundef !5
  %i.bqp = add i64 %i.bqo, -1
  store i64 %i.bqp, ptr %i.bpm, align 8, !alias.scope !10206, !noalias !10199
  %i.bqq = add i64 %i.bqn, %.sroa.05.031.i.i2744
  br label %bb.on

.loopexit.split-lp8982.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc2746, %bb.ok, %.invoke15914, %bb.or
  %lpad.loopexit.split-lp18315 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.di) #20
          to label %bb.oh unwind label %bb.oy, !noalias !10199

bb.on:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2739, %bb.om
  %.sroa.6.0.i.i2740 = phi i64 [ %i.bqq, %bb.om ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2739 ]
  %.sroa.08.0.i.i2741 = phi i64 [ 1, %bb.om ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2739 ]
  store i64 %.sroa.08.0.i.i2741, ptr %i.di, align 8, !alias.scope !10206, !noalias !10199
  store i64 %.sroa.6.0.i.i2740, ptr %i.bpc, align 8, !alias.scope !10206, !noalias !10199
  %i.bqr = load i64, ptr %.sroa.233.0..sroa_idx.i188.i2083, align 8, !alias.scope !10203, !noalias !10199, !noundef !5 ; 4 uses
  %i.bqs = add i64 %i.bqr, 1
  store i64 %i.bqs, ptr %.sroa.233.0..sroa_idx.i188.i2083, align 8, !alias.scope !10203, !noalias !10199
  %i.bqt = icmp ugt i64 %i.bpn, %i.bng
  br i1 %i.bqt, label %bb.or, label %bb.oq, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2748: ; preds = %bb.ow, %bb.oj
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.di)
          to label %bb.oo unwind label %bb.oi, !noalias !10199

bb.oo:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !10200
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.dl)
          to label %bb.op unwind label %bb.ob, !noalias !10199

bb.op:                                            ; preds = %bb.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !10200
  br label %.loopexit8979

bb.oq:                                            ; preds = %bb.on
  %i.bqu = sub nuw nsw i64 %i.bng, %i.bpn         ; 2 uses
  %i.bqv = getelementptr inbounds nuw [2 x i8], ptr %i.bne, i64 %i.bpn ; 2 uses
  %.not84.i189.i2084 = icmp eq i64 %i.bng, %i.bpn
  br i1 %.not84.i189.i2084, label %.invoke15914, label %bb.os

bb.or:                                            ; preds = %bb.on
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.bpn, i64 noundef range(i64 0, 4611686018427387904) %i.bng, i64 noundef range(i64 0, 4611686018427387904) %i.bng, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.ot unwind label %.loopexit.split-lp8982.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10199

bb.os:                                            ; preds = %bb.oq
  %i.bqw = load i16, ptr %i.bqv, align 2, !alias.scope !10208, !noundef !5
  br label %bb.ou

bb.ot:                                            ; preds = %.split10936.us, %bb.or
  unreachable

bb.ou:                                            ; preds = %bb.os, %bb.ox
  %.sroa.055.0.i192.i208710929 = phi i64 [ 0, %bb.os ], [ %i.brh, %bb.ox ] ; 2 uses
  %.sroa.035.0.i191.i208610928 = phi i16 [ %i.bqw, %bb.os ], [ %spec.select95.i194.i2089, %bb.ox ]
  %i.bqx = mul i64 %.sroa.055.0.i192.i208710929, %i.bod ; 3 uses
  %i.bqy = icmp ult i64 %i.bqx, %i.bqu
  br i1 %i.bqy, label %bb.ox, label %.invoke15914

bb.ov:                                            ; preds = %bb.ox
  %i.bqz = icmp ult i64 %i.bqr, %i.bok
  br i1 %i.bqz, label %bb.ow, label %.invoke15914

bb.ow:                                            ; preds = %bb.ov
  %i.bra = getelementptr inbounds nuw [2 x i8], ptr %i.bon, i64 %i.bqr
  store i16 %spec.select95.i194.i2089, ptr %i.bra, align 2, !noalias !10199
  %i.brb = load i64, ptr %i.di, align 8, !range !8, !alias.scope !10209, !noalias !10199, !noundef !5
  %i.brc = load i64, ptr %i.bpc, align 8, !alias.scope !10209, !noalias !10199
  %i.brd = trunc nuw i64 %i.brb to i1
  br i1 %i.brd, label %bb.ok, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2748

.invoke15914:                                     ; preds = %bb.ov, %bb.oq, %bb.ou
  %i.bre = phi i64 [ %i.bqx, %bb.ou ], [ 0, %bb.oq ], [ %i.bqr, %bb.ov ]
  %i.brf = phi i64 [ %i.bqu, %bb.ou ], [ 0, %bb.oq ], [ %i.bok, %bb.ov ]
  %i.brg = phi ptr [ @6, %bb.ou ], [ @4, %bb.oq ], [ @5, %bb.ov ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bre, i64 noundef %i.brf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.brg) #22
          to label %.cont15915 unwind label %.loopexit.split-lp8982.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10199

.cont15915:                                       ; preds = %.invoke15914
  unreachable

bb.ox:                                            ; preds = %bb.ou
  %i.brh = add nuw i64 %.sroa.055.0.i192.i208710929, 1 ; 2 uses
  %i.bri = getelementptr inbounds nuw [2 x i8], ptr %i.bqv, i64 %i.bqx
  %i.brj = load i16, ptr %i.bri, align 2, !alias.scope !10208, !noundef !5
  %spec.select95.i194.i2089 = call i16 @llvm.smax.i16(i16 %.sroa.035.0.i191.i208610928, i16 %i.brj) ; 2 uses
  %exitcond12905.not = icmp eq i64 %i.brh, %i.bnw
  br i1 %exitcond12905.not, label %bb.ov, label %bb.ou

bb.oy:                                            ; preds = %.loopexit.split-lp8982.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.oh, %bb.oa
  %i.brk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10201
  unreachable

bb.oz:                                            ; preds = %bb.od
  %i.brl = sub nuw i64 %i.box, %i.bov             ; 7 uses
  %.not86.i195.i2090 = icmp ugt i64 %i.box, %i.bng
  br i1 %.not86.i195.i2090, label %.invoke15912, label %bb.pa, !prof !10

bb.pa:                                            ; preds = %bb.oz
  %i.brm = getelementptr inbounds nuw [2 x i8], ptr %i.bne, i64 %i.bov ; 2 uses
  %.idx11231 = shl nuw nsw i64 %i.bok, 1
  %i.brn = getelementptr inbounds nuw i8, ptr %i.bon, i64 %.idx11231 ; 3 uses
  switch i64 %i.bod, label %.split10934 [
    i64 1, label %bb.pb
    i64 0, label %.split10934.us
  ]

bb.pb:                                            ; preds = %bb.pa
  %i.bro = icmp eq i64 %i.bok, 0
  br i1 %i.bro, label %.loopexit8979, label %.lr.ph10945.preheader

.lr.ph10945.preheader:                            ; preds = %bb.pb
  %.idx11232 = shl i64 %i.bnw, 1                  ; 2 uses
  %i.brp = add i64 %.idx11232, -2                 ; 3 uses
  %i.brq = lshr exact i64 %i.brp, 1
  %i.brr = add nuw i64 %i.brq, 1                  ; 5 uses
  %min.iters.check17675 = icmp ult i64 %i.brp, 6
  %min.iters.check17676 = icmp ult i64 %i.brp, 30
  %i.brs = and i64 %i.brr, 12
  %n.vec17678 = and i64 %i.brr, -16               ; 4 uses
  %i.brt = shl i64 %n.vec17678, 1
  %cmp.n17691 = icmp eq i64 %i.brr, %n.vec17678
  %min.epilog.iters.check = icmp eq i64 %i.brs, 0
  %n.vec17694 = and i64 %i.brr, -4                ; 3 uses
  %i.bru = shl i64 %n.vec17694, 1
  %cmp.n17702 = icmp eq i64 %i.brr, %n.vec17694
  br label %.lr.ph10945

.split10934.us:                                   ; preds = %bb.pa
  %i.brv = icmp eq i64 %i.bok, 0
  br i1 %i.brv, label %.loopexit8979, label %.split10936.us

.lr.ph10945:                                      ; preds = %.lr.ph10945.preheader, %.thread7284
  %.sroa.76670.010944 = phi i64 [ %i.brx, %.thread7284 ], [ 0, %.lr.ph10945.preheader ] ; 2 uses
  %.sroa.06668.010943 = phi ptr [ %i.brw, %.thread7284 ], [ %i.bon, %.lr.ph10945.preheader ] ; 2 uses
  %i.brw = getelementptr inbounds nuw i8, ptr %.sroa.06668.010943, i64 2 ; 2 uses
  %i.brx = add nuw i64 %.sroa.76670.010944, 1
  %i.bry = mul i64 %.sroa.76670.010944, %i.bnw    ; 4 uses
  %i.brz = add i64 %i.bry, %i.bnw                 ; 3 uses
  %i.bsa = icmp ult i64 %i.brz, %i.bry
  %.not91.i209.i2104 = icmp ugt i64 %i.brz, %i.brl
  %or.cond.i210.i2105 = select i1 %i.bsa, i1 true, i1 %.not91.i209.i2104, !prof !7
  br i1 %or.cond.i210.i2105, label %.invoke15912, label %iter.check, !prof !7

iter.check:                                       ; preds = %.lr.ph10945
  %i.bsb = getelementptr inbounds nuw [2 x i8], ptr %i.brm, i64 %i.bry ; 7 uses
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.bsb, i64 %.idx11232
  %i.bsd = load i16, ptr %i.bsb, align 2, !alias.scope !10208, !noundef !5 ; 3 uses
  br i1 %min.iters.check17675, label %.lr.ph10941.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check17676, label %vec.epilog.ph, label %vector.ph17677

vector.ph17677:                                   ; preds = %vector.main.loop.iter.check
  %i.bse = getelementptr i8, ptr %i.bsb, i64 %i.brt
  %broadcast.splatinsert17679 = insertelement <8 x i16> poison, i16 %i.bsd, i64 0
  %broadcast.splat17680 = shufflevector <8 x i16> %broadcast.splatinsert17679, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body17681

vector.body17681:                                 ; preds = %vector.ph17677, %vector.body17681
  %index17682 = phi i64 [ 0, %vector.ph17677 ], [ %index.next17688, %vector.body17681 ] ; 2 uses
  %vec.phi17683 = phi <8 x i16> [ %broadcast.splat17680, %vector.ph17677 ], [ %i.bsh, %vector.body17681 ]
  %vec.phi17684 = phi <8 x i16> [ %broadcast.splat17680, %vector.ph17677 ], [ %i.bsi, %vector.body17681 ]
  %i.bsf = shl i64 %index17682, 1
  %next.gep17685 = getelementptr i8, ptr %i.bsb, i64 %i.bsf ; 2 uses
  %i.bsg = getelementptr i8, ptr %next.gep17685, i64 16
  %wide.load17686 = load <8 x i16>, ptr %next.gep17685, align 2, !noalias !10201
  %wide.load17687 = load <8 x i16>, ptr %i.bsg, align 2, !noalias !10201
  %i.bsh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi17683, <8 x i16> %wide.load17686) ; 2 uses
  %i.bsi = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi17684, <8 x i16> %wide.load17687) ; 2 uses
  %index.next17688 = add nuw i64 %index17682, 16  ; 2 uses
  %i.bsj = icmp eq i64 %index.next17688, %n.vec17678
  br i1 %i.bsj, label %middle.block17689, label %vector.body17681, !llvm.loop !9344

middle.block17689:                                ; preds = %vector.body17681
  %rdx.minmax17690 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bsh, <8 x i16> %i.bsi)
  %i.bsk = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax17690) ; 3 uses
  br i1 %cmp.n17691, label %.thread7284, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block17689
  br i1 %min.epilog.iters.check, label %.lr.ph10941.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec17678, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx17692 = phi i16 [ %i.bsk, %vec.epilog.iter.check ], [ %i.bsd, %vector.main.loop.iter.check ]
  %broadcast.splatinsert17695 = insertelement <4 x i16> poison, i16 %bc.merge.rdx17692, i64 0
  %broadcast.splat17696 = shufflevector <4 x i16> %broadcast.splatinsert17695, <4 x i16> poison, <4 x i32> zeroinitializer
  %6 = getelementptr i8, ptr %i.bsb, i64 %i.bru
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17697 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17701, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi17698 = phi <4 x i16> [ %broadcast.splat17696, %vec.epilog.ph ], [ %i.bsm, %vec.epilog.vector.body ]
  %i.bsl = shl i64 %index17697, 1
  %next.gep17699 = getelementptr i8, ptr %i.bsb, i64 %i.bsl
  %wide.load17700 = load <4 x i16>, ptr %next.gep17699, align 2, !noalias !10201
  %i.bsm = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %vec.phi17698, <4 x i16> %wide.load17700) ; 2 uses
  %index.next17701 = add nuw i64 %index17697, 4   ; 2 uses
  %i.bsn = icmp eq i64 %index.next17701, %n.vec17694
  br i1 %i.bsn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9345

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bso = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.bsm) ; 2 uses
  br i1 %cmp.n17702, label %.thread7284, label %.lr.ph10941.preheader

.lr.ph10941.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.05.0.i213.i210810939.ph = phi i16 [ %i.bsd, %iter.check ], [ %i.bsk, %vec.epilog.iter.check ], [ %i.bso, %vec.epilog.middle.block ]
  %.sroa.06671.010937.ph = phi ptr [ %i.bsb, %iter.check ], [ %i.bse, %vec.epilog.iter.check ], [ %6, %vec.epilog.middle.block ]
  br label %.lr.ph10941

.thread7284:                                      ; preds = %.lr.ph10941, %vec.epilog.middle.block, %middle.block17689
  %spec.select96.i216.i2111.lcssa = phi i16 [ %i.bso, %vec.epilog.middle.block ], [ %i.bsk, %middle.block17689 ], [ %spec.select96.i216.i2111, %.lr.ph10941 ]
  store i16 %spec.select96.i216.i2111.lcssa, ptr %.sroa.06668.010943, align 2, !noalias !10201
  %i.bsp = icmp eq ptr %i.brw, %i.brn
  br i1 %i.bsp, label %.loopexit8979, label %.lr.ph10945

.lr.ph10941:                                      ; preds = %.lr.ph10941.preheader, %.lr.ph10941
  %.sroa.05.0.i213.i210810939 = phi i16 [ %spec.select96.i216.i2111, %.lr.ph10941 ], [ %.sroa.05.0.i213.i210810939.ph, %.lr.ph10941.preheader ]
  %.sroa.06671.010937 = phi ptr [ %i.bsq, %.lr.ph10941 ], [ %.sroa.06671.010937.ph, %.lr.ph10941.preheader ] ; 2 uses
  %i.bsq = getelementptr inbounds nuw i8, ptr %.sroa.06671.010937, i64 2 ; 2 uses
  %i.bsr = load i16, ptr %.sroa.06671.010937, align 2, !noalias !10201, !noundef !5
  %spec.select96.i216.i2111 = tail call i16 @llvm.smax.i16(i16 %.sroa.05.0.i213.i210810939, i16 %i.bsr) ; 2 uses
  %i.bss = icmp eq ptr %i.bsq, %i.bsc
  br i1 %i.bss, label %.thread7284, label %.lr.ph10941, !llvm.loop !9346

.split10934:                                      ; preds = %bb.pa, %bb.pi
  %.sroa.06674.0 = phi ptr [ %.sroa.06674.1, %bb.pi ], [ %i.bon, %bb.pa ] ; 3 uses
  %.sroa.76676.0 = phi i64 [ %.sroa.76676.1, %bb.pi ], [ 0, %bb.pa ] ; 3 uses
  %i.bst = icmp eq ptr %.sroa.06674.0, %i.brn
  br i1 %i.bst, label %bb.pd, label %bb.pc

bb.pc:                                            ; preds = %.split10934
  %i.bsu = getelementptr inbounds nuw i8, ptr %.sroa.06674.0, i64 2
  %i.bsv = add i64 %.sroa.76676.0, 1
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %.split10934
  %.sroa.06674.1 = phi ptr [ %i.brn, %.split10934 ], [ %i.bsu, %bb.pc ]
  %.sroa.76676.1 = phi i64 [ %.sroa.76676.0, %.split10934 ], [ %i.bsv, %bb.pc ]
  %.sroa.2.0.i2753 = phi ptr [ null, %.split10934 ], [ %.sroa.06674.0, %bb.pc ]
  %.sroa.0.0.i2754 = phi i64 [ undef, %.split10934 ], [ %.sroa.76676.0, %bb.pc ]
  %i.bsw = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i2754, 0
  %i.bsx = insertvalue { i64, ptr } %i.bsw, ptr %.sroa.2.0.i2753, 1
  %.fr88.i198.i2093 = freeze { i64, ptr } %i.bsx  ; 2 uses
  %i.bsy = extractvalue { i64, ptr } %.fr88.i198.i2093, 1 ; 2 uses
  %.not87.i199.i2094 = icmp eq ptr %i.bsy, null
  br i1 %.not87.i199.i2094, label %.loopexit8979, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.bsz = extractvalue { i64, ptr } %.fr88.i198.i2093, 0 ; 2 uses
  %i.bta = urem i64 %i.bsz, %i.bod                ; 2 uses
  %i.btb = sub nuw i64 %i.bsz, %i.bta
  %i.btc = mul i64 %i.btb, %i.bnw
  %i.btd = add i64 %i.btc, %i.bta                 ; 5 uses
  %i.bte = icmp ugt i64 %i.btd, %i.brl
  br i1 %i.bte, label %.invoke15912, label %bb.pf, !prof !10

.split10936.us:                                   ; preds = %.split10934.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.ot unwind label %bb.ob, !noalias !10199

bb.pf:                                            ; preds = %bb.pe
  %i.btf = sub nuw i64 %i.brl, %i.btd             ; 2 uses
  %i.btg = getelementptr inbounds nuw [2 x i8], ptr %i.brm, i64 %i.btd ; 2 uses
  %.not89.i200.i2095 = icmp eq i64 %i.brl, %i.btd
  br i1 %.not89.i200.i2095, label %.invoke15910, label %bb.pg

.invoke15912:                                     ; preds = %.lr.ph10945, %bb.pe, %bb.od, %bb.oz
  %i.bth = phi i64 [ %i.btd, %bb.pe ], [ %i.bov, %bb.od ], [ %i.bov, %bb.oz ], [ %i.bry, %.lr.ph10945 ]
  %i.bti = phi i64 [ %i.brl, %bb.pe ], [ %i.box, %bb.od ], [ %i.box, %bb.oz ], [ %i.brz, %.lr.ph10945 ]
  %i.btj = phi i64 [ %i.brl, %bb.pe ], [ %i.bng, %bb.od ], [ %i.bng, %bb.oz ], [ %i.brl, %.lr.ph10945 ]
  %i.btk = phi ptr [ @12, %bb.pe ], [ @13, %bb.od ], [ @13, %bb.oz ], [ @8, %.lr.ph10945 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.bth, i64 noundef %i.bti, i64 noundef %i.btj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.btk) #22
          to label %.cont15913 unwind label %bb.ob, !noalias !10199

.cont15913:                                       ; preds = %.invoke15912
  unreachable

bb.pg:                                            ; preds = %bb.pf
  %i.btl = load i16, ptr %i.btg, align 2, !alias.scope !10208, !noundef !5
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.pj
  %.sroa.044.0.i203.i209810933 = phi i64 [ 0, %bb.pg ], [ %i.btr, %bb.pj ] ; 2 uses
  %.sroa.022.0.i201.i209610931 = phi i16 [ %i.btl, %bb.pg ], [ %spec.select98.i204.i2099, %bb.pj ]
  %i.btm = mul i64 %.sroa.044.0.i203.i209810933, %i.bod ; 3 uses
  %i.btn = icmp ult i64 %i.btm, %i.btf
  br i1 %i.btn, label %bb.pj, label %.invoke15910

bb.pi:                                            ; preds = %bb.pj
  store i16 %spec.select98.i204.i2099, ptr %i.bsy, align 2, !noalias !10199
  br label %.split10934

.invoke15910:                                     ; preds = %bb.pf, %bb.ph
  %i.bto = phi i64 [ %i.btm, %bb.ph ], [ 0, %bb.pf ]
  %i.btp = phi i64 [ %i.btf, %bb.ph ], [ 0, %bb.pf ]
  %i.btq = phi ptr [ @11, %bb.ph ], [ @10, %bb.pf ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bto, i64 noundef %i.btp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.btq) #22
          to label %.cont15911 unwind label %bb.ob, !noalias !10199

.cont15911:                                       ; preds = %.invoke15910
  unreachable

bb.pj:                                            ; preds = %bb.ph
  %i.btr = add nuw i64 %.sroa.044.0.i203.i209810933, 1 ; 2 uses
  %i.bts = getelementptr inbounds nuw [2 x i8], ptr %i.btg, i64 %i.btm
  %i.btt = load i16, ptr %i.bts, align 2, !alias.scope !10208, !noundef !5
  %spec.select98.i204.i2099 = tail call i16 @llvm.smax.i16(i16 %.sroa.022.0.i201.i209610931, i16 %i.btt) ; 2 uses
  %exitcond12906.not = icmp eq i64 %i.btr, %i.bnw
  br i1 %exitcond12906.not, label %bb.pi, label %bb.ph

bb.pk:                                            ; preds = %bb.np
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10212)
  %i.btu = load i64, ptr %i.bnp, align 8, !alias.scope !10213, !noundef !5 ; 2 uses
  %i.btv = load i64, ptr %1, align 8, !alias.scope !10214, !noundef !5 ; 7 uses
  %i.btw = icmp ult i64 %i.btv, %i.btu
  br i1 %i.btw, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.btx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bty = load ptr, ptr %i.btx, align 8, !alias.scope !10213, !nonnull !5, !noundef !5
  %i.btz = getelementptr inbounds nuw [8 x i8], ptr %i.bty, i64 %i.btv
  %i.bua = load i64, ptr %i.btz, align 8, !noalias !10215, !noundef !5 ; 8 uses
  %i.bub = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.buc = load i64, ptr %i.bub, align 8, !alias.scope !10213, !noundef !5 ; 2 uses
  %i.bud = icmp ult i64 %i.btv, %i.buc
  br i1 %i.bud, label %bb.pn, label %bb.po

bb.pm:                                            ; preds = %bb.pk
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.btv, i64 noundef %i.btu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !10215
  unreachable

bb.pn:                                            ; preds = %bb.pl
  %i.bue = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.buf = load ptr, ptr %i.bue, align 8, !alias.scope !10213, !nonnull !5, !noundef !5
  %i.bug = getelementptr inbounds nuw [8 x i8], ptr %i.buf, i64 %i.btv
  %i.buh = load i64, ptr %i.bug, align 8, !noalias !10215, !noundef !5 ; 4 uses
  %i.bui = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10215
  %i.buj = icmp eq i64 %i.bua, 0
  br i1 %i.buj, label %bb.pq, label %bb.pp

bb.po:                                            ; preds = %bb.pl
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.btv, i64 noundef %i.buc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !10215
  unreachable

bb.pp:                                            ; preds = %bb.pn
  %i.buk = udiv i64 %i.bui, %i.bua                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !10216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !10216
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.do, i64 noundef %i.buk, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2), !noalias !10215
  %i.bul = load i64, ptr %i.do, align 8, !range !8, !noalias !10216, !noundef !5
  %i.bum = trunc nuw i64 %i.bul to i1
  %i.bun = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.buo = load i64, ptr %i.bun, align 8, !range !12, !noalias !10216, !noundef !5 ; 8 uses
  %i.bup = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  br i1 %i.bum, label %bb.pr, label %bb.ps, !prof !10

bb.pq:                                            ; preds = %bb.pn
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !10215
  unreachable

bb.pr:                                            ; preds = %bb.pp
  %i.buq = load i64, ptr %i.bup, align 8, !noalias !10216
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.buo, i64 %i.buq) #22, !noalias !10215
  unreachable

bb.ps:                                            ; preds = %bb.pp
  %i.bur = load ptr, ptr %i.bup, align 8, !noalias !10216, !nonnull !5, !noundef !5 ; 5 uses
  %i.bus = icmp ule i64 %i.buk, %i.buo
  tail call void @llvm.assume(i1 %i.bus)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !10216
  store i64 %i.buo, ptr %i.du, align 16, !noalias !10216
  %i.but = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.bur, ptr %i.but, align 8, !noalias !10216
  %i.buu = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 0, ptr %i.buu, align 16, !noalias !10216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !10216
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout18contiguous_offsets(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
          to label %bb.pv unwind label %bb.pu, !noalias !10215

bb.pt:                                            ; preds = %bb.qa, %bb.pu
  %.pn93.i131.i2113 = phi { ptr, i32 } [ %i.buv, %bb.pu ], [ %.pn.i138.i2126, %bb.qa ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecsEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.du) #20
          to label %common.resume unwind label %bb.qr, !noalias !10217

bb.pu:                                            ; preds = %.invoke15918, %.invoke15916, %.split10955.us, %bb.qh, %bb.px, %bb.ps
end_hunk_2
begin_hunk_3_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a

bb.qe:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2772
  %i.bwn = load i64, ptr %i.bwf, align 8, !noalias !10221, !noundef !5
  %i.bwo = mul i64 %i.bwn, %i.bwh
  %i.bwp = sub i64 %.sroa.05.031.i.i2773, %i.bwo
  store i64 0, ptr %i.bwe, align 8, !noalias !10221
  %i.bwq = icmp ult i64 %.sroa.918.0.copyload.i.i2765, %i.bwc
  br i1 %i.bwq, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2772, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2768

bb.qf:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2772
  store i64 %i.bwi, ptr %i.bwe, align 8, !noalias !10221
  %i.bwr = load i64, ptr %i.bwf, align 8, !noalias !10221, !noundef !5
  %i.bws = load i64, ptr %i.bvq, align 8, !alias.scope !10222, !noalias !10215, !noundef !5
  %i.bwt = add i64 %i.bws, -1
  store i64 %i.bwt, ptr %i.bvq, align 8, !alias.scope !10222, !noalias !10215
  %i.bwu = add i64 %i.bwr, %.sroa.05.031.i.i2773
  br label %bb.qg

.loopexit.split-lp8975.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc2775, %bb.qd, %.invoke15920, %bb.qk
  %lpad.loopexit.split-lp18273 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.dp) #20
          to label %bb.qa unwind label %bb.qr, !noalias !10215

bb.qg:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2768, %bb.qf
  %.sroa.6.0.i.i2769 = phi i64 [ %i.bwu, %bb.qf ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2768 ]
  %.sroa.08.0.i.i2770 = phi i64 [ 1, %bb.qf ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2768 ]
  store i64 %.sroa.08.0.i.i2770, ptr %i.dp, align 8, !alias.scope !10222, !noalias !10215
  store i64 %.sroa.6.0.i.i2769, ptr %i.bvg, align 8, !alias.scope !10222, !noalias !10215
  %i.bwv = load i64, ptr %.sroa.233.0..sroa_idx.i139.i2127, align 8, !alias.scope !10219, !noalias !10215, !noundef !5 ; 4 uses
  %i.bww = add i64 %i.bwv, 1
  store i64 %i.bww, ptr %.sroa.233.0..sroa_idx.i139.i2127, align 8, !alias.scope !10219, !noalias !10215
  %i.bwx = icmp ugt i64 %i.bvr, %i.bng
  br i1 %i.bwx, label %bb.qk, label %bb.qj, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2777: ; preds = %bb.qp, %bb.qc
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.dp)
          to label %bb.qh unwind label %bb.qb, !noalias !10215

bb.qh:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !10216
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ds)
          to label %bb.qi unwind label %bb.pu, !noalias !10215

bb.qi:                                            ; preds = %bb.qh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !10216
  br label %.loopexit8972

bb.qj:                                            ; preds = %bb.qg
  %i.bwy = sub nuw nsw i64 %i.bng, %i.bvr         ; 2 uses
  %i.bwz = getelementptr inbounds nuw [2 x i8], ptr %i.bne, i64 %i.bvr ; 2 uses
  %.not84.i140.i2128 = icmp eq i64 %i.bng, %i.bvr
  br i1 %.not84.i140.i2128, label %.invoke15920, label %bb.ql

bb.qk:                                            ; preds = %bb.qg
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.bvr, i64 noundef range(i64 0, 4611686018427387904) %i.bng, i64 noundef range(i64 0, 4611686018427387904) %i.bng, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.qm unwind label %.loopexit.split-lp8975.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10215

bb.ql:                                            ; preds = %bb.qj
  %i.bxa = load i16, ptr %i.bwz, align 2, !alias.scope !10224, !noundef !5
  br label %bb.qn

bb.qm:                                            ; preds = %.split10955.us, %bb.qk
  unreachable

bb.qn:                                            ; preds = %bb.ql, %bb.qq
  %.sroa.055.0.i143.i213110948 = phi i64 [ 0, %bb.ql ], [ %i.bxl, %bb.qq ] ; 2 uses
  %.sroa.035.0.i142.i213010947 = phi i16 [ %i.bxa, %bb.ql ], [ %spec.select95.i145.i2133, %bb.qq ]
  %i.bxb = mul i64 %.sroa.055.0.i143.i213110948, %i.buh ; 3 uses
  %i.bxc = icmp ult i64 %i.bxb, %i.bwy
  br i1 %i.bxc, label %bb.qq, label %.invoke15920

bb.qo:                                            ; preds = %bb.qq
  %i.bxd = icmp ult i64 %i.bwv, %i.buo
  br i1 %i.bxd, label %bb.qp, label %.invoke15920

bb.qp:                                            ; preds = %bb.qo
  %i.bxe = getelementptr inbounds nuw [2 x i8], ptr %i.bur, i64 %i.bwv
  store i16 %spec.select95.i145.i2133, ptr %i.bxe, align 2, !noalias !10215
  %i.bxf = load i64, ptr %i.dp, align 8, !range !8, !alias.scope !10225, !noalias !10215, !noundef !5
  %i.bxg = load i64, ptr %i.bvg, align 8, !alias.scope !10225, !noalias !10215
  %i.bxh = trunc nuw i64 %i.bxf to i1
  br i1 %i.bxh, label %bb.qd, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2777

.invoke15920:                                     ; preds = %bb.qo, %bb.qj, %bb.qn
  %i.bxi = phi i64 [ %i.bxb, %bb.qn ], [ 0, %bb.qj ], [ %i.bwv, %bb.qo ]
  %i.bxj = phi i64 [ %i.bwy, %bb.qn ], [ 0, %bb.qj ], [ %i.buo, %bb.qo ]
  %i.bxk = phi ptr [ @6, %bb.qn ], [ @4, %bb.qj ], [ @5, %bb.qo ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bxi, i64 noundef %i.bxj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bxk) #22
          to label %.cont15921 unwind label %.loopexit.split-lp8975.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10215

.cont15921:                                       ; preds = %.invoke15920
  unreachable

bb.qq:                                            ; preds = %bb.qn
  %i.bxl = add nuw i64 %.sroa.055.0.i143.i213110948, 1 ; 2 uses
  %i.bxm = getelementptr inbounds nuw [2 x i8], ptr %i.bwz, i64 %i.bxb
  %i.bxn = load i16, ptr %i.bxm, align 2, !alias.scope !10224, !noundef !5
  %spec.select95.i145.i2133 = call i16 @llvm.smin.i16(i16 %.sroa.035.0.i142.i213010947, i16 %i.bxn) ; 2 uses
  %exitcond12907.not = icmp eq i64 %i.bxl, %i.bua
  br i1 %exitcond12907.not, label %bb.qo, label %bb.qn

bb.qr:                                            ; preds = %.loopexit.split-lp8975.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.qa, %bb.pt
  %i.bxo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10217
  unreachable

bb.qs:                                            ; preds = %bb.pw
  %i.bxp = sub nuw i64 %i.bvb, %i.buz             ; 7 uses
  %.not86.i146.i2134 = icmp ugt i64 %i.bvb, %i.bng
  br i1 %.not86.i146.i2134, label %.invoke15918, label %bb.qt, !prof !10

bb.qt:                                            ; preds = %bb.qs
  %i.bxq = getelementptr inbounds nuw [2 x i8], ptr %i.bne, i64 %i.buz ; 2 uses
  %.idx11234 = shl nuw nsw i64 %i.buo, 1
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bur, i64 %.idx11234 ; 3 uses
  switch i64 %i.buh, label %.split10953 [
    i64 1, label %bb.qu
    i64 0, label %.split10953.us
  ]

bb.qu:                                            ; preds = %bb.qt
  %i.bxs = icmp eq i64 %i.buo, 0
  br i1 %i.bxs, label %.loopexit8972, label %.lr.ph10964.preheader

.lr.ph10964.preheader:                            ; preds = %bb.qu
  %.idx11235 = shl i64 %i.bua, 1                  ; 2 uses
  %i.bxt = add i64 %.idx11235, -2                 ; 3 uses
  %i.bxu = lshr exact i64 %i.bxt, 1
  %i.bxv = add nuw i64 %i.bxu, 1                  ; 5 uses
  %min.iters.check17706 = icmp ult i64 %i.bxt, 6
  %min.iters.check17708 = icmp ult i64 %i.bxt, 30
  %i.bxw = and i64 %i.bxv, 12
  %n.vec17710 = and i64 %i.bxv, -16               ; 4 uses
  %i.bxx = shl i64 %n.vec17710, 1
  %cmp.n17723 = icmp eq i64 %i.bxv, %n.vec17710
  %min.epilog.iters.check17730 = icmp eq i64 %i.bxw, 0
  %n.vec17732 = and i64 %i.bxv, -4                ; 3 uses
  %i.bxy = shl i64 %n.vec17732, 1
  %cmp.n17742 = icmp eq i64 %i.bxv, %n.vec17732
  br label %.lr.ph10964

.split10953.us:                                   ; preds = %bb.qt
  %i.bxz = icmp eq i64 %i.buo, 0
  br i1 %i.bxz, label %.loopexit8972, label %.split10955.us

.lr.ph10964:                                      ; preds = %.lr.ph10964.preheader, %.thread7310
  %.sroa.76633.010963 = phi i64 [ %i.byb, %.thread7310 ], [ 0, %.lr.ph10964.preheader ] ; 2 uses
  %.sroa.06631.010962 = phi ptr [ %i.bya, %.thread7310 ], [ %i.bur, %.lr.ph10964.preheader ] ; 2 uses
  %i.bya = getelementptr inbounds nuw i8, ptr %.sroa.06631.010962, i64 2 ; 2 uses
  %i.byb = add nuw i64 %.sroa.76633.010963, 1
  %i.byc = mul i64 %.sroa.76633.010963, %i.bua    ; 4 uses
  %i.byd = add i64 %i.byc, %i.bua                 ; 3 uses
  %i.bye = icmp ult i64 %i.byd, %i.byc
  %.not91.i160.i2148 = icmp ugt i64 %i.byd, %i.bxp
  %or.cond.i161.i2149 = select i1 %i.bye, i1 true, i1 %.not91.i160.i2148, !prof !7
  br i1 %or.cond.i161.i2149, label %.invoke15918, label %iter.check17727, !prof !7

iter.check17727:                                  ; preds = %.lr.ph10964
  %i.byf = getelementptr inbounds nuw [2 x i8], ptr %i.bxq, i64 %i.byc ; 7 uses
  %i.byg = getelementptr inbounds nuw i8, ptr %i.byf, i64 %.idx11235
  %i.byh = load i16, ptr %i.byf, align 2, !alias.scope !10224, !noundef !5 ; 3 uses
  br i1 %min.iters.check17706, label %.lr.ph10960.preheader, label %vector.main.loop.iter.check17707

vector.main.loop.iter.check17707:                 ; preds = %iter.check17727
  br i1 %min.iters.check17708, label %vec.epilog.ph17731, label %vector.ph17709

vector.ph17709:                                   ; preds = %vector.main.loop.iter.check17707
  %i.byi = getelementptr i8, ptr %i.byf, i64 %i.bxx
  %broadcast.splatinsert17711 = insertelement <8 x i16> poison, i16 %i.byh, i64 0
  %broadcast.splat17712 = shufflevector <8 x i16> %broadcast.splatinsert17711, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body17713

vector.body17713:                                 ; preds = %vector.ph17709, %vector.body17713
  %index17714 = phi i64 [ 0, %vector.ph17709 ], [ %index.next17720, %vector.body17713 ] ; 2 uses
  %vec.phi17715.a = phi <8 x i16> [ %broadcast.splat17712, %vector.ph17709 ], [ %i.byl, %vector.body17713 ]
  %vec.phi17716 = phi <8 x i16> [ %broadcast.splat17712, %vector.ph17709 ], [ %i.bym, %vector.body17713 ]
  %i.byj = shl i64 %index17714, 1
  %next.gep17717 = getelementptr i8, ptr %i.byf, i64 %i.byj ; 2 uses
  %i.byk = getelementptr i8, ptr %next.gep17717, i64 16
  %wide.load17718.a = load <8 x i16>, ptr %next.gep17717, align 2, !noalias !10217
  %wide.load17719 = load <8 x i16>, ptr %i.byk, align 2, !noalias !10217
  %i.byl = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi17715.a, <8 x i16> %wide.load17718.a) ; 2 uses
  %i.bym = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi17716, <8 x i16> %wide.load17719) ; 2 uses
  %index.next17720 = add nuw i64 %index17714, 16  ; 2 uses
  %i.byn = icmp eq i64 %index.next17720, %n.vec17710
  br i1 %i.byn, label %middle.block17721, label %vector.body17713, !llvm.loop !9368

middle.block17721:                                ; preds = %vector.body17713
  %rdx.minmax17722 = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.byl, <8 x i16> %i.bym)
  %i.byo = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax17722) ; 3 uses
  br i1 %cmp.n17723, label %.thread7310, label %vec.epilog.iter.check17729

vec.epilog.iter.check17729:                       ; preds = %middle.block17721
  br i1 %min.epilog.iters.check17730, label %.lr.ph10960.preheader, label %vec.epilog.ph17731, !prof !21

vec.epilog.ph17731:                               ; preds = %vector.main.loop.iter.check17707, %vec.epilog.iter.check17729
  %vec.epilog.resume.val17724 = phi i64 [ %n.vec17710, %vec.epilog.iter.check17729 ], [ 0, %vector.main.loop.iter.check17707 ]
  %bc.merge.rdx17725 = phi i16 [ %i.byo, %vec.epilog.iter.check17729 ], [ %i.byh, %vector.main.loop.iter.check17707 ]
  %broadcast.splatinsert17733 = insertelement <4 x i16> poison, i16 %bc.merge.rdx17725, i64 0
  %broadcast.splat17734 = shufflevector <4 x i16> %broadcast.splatinsert17733, <4 x i16> poison, <4 x i32> zeroinitializer
  %7 = getelementptr i8, ptr %i.byf, i64 %i.bxy
  br label %vec.epilog.vector.body17735

vec.epilog.vector.body17735:                      ; preds = %vec.epilog.vector.body17735, %vec.epilog.ph17731
  %index17736 = phi i64 [ %vec.epilog.resume.val17724, %vec.epilog.ph17731 ], [ %index.next17740, %vec.epilog.vector.body17735 ] ; 2 uses
  %vec.phi17737 = phi <4 x i16> [ %broadcast.splat17734, %vec.epilog.ph17731 ], [ %i.byq, %vec.epilog.vector.body17735 ]
  %i.byp = shl i64 %index17736, 1
  %next.gep17738 = getelementptr i8, ptr %i.byf, i64 %i.byp
  %wide.load17739 = load <4 x i16>, ptr %next.gep17738, align 2, !noalias !10217
  %i.byq = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %vec.phi17737, <4 x i16> %wide.load17739) ; 2 uses
  %index.next17740 = add nuw i64 %index17736, 4   ; 2 uses
  %i.byr = icmp eq i64 %index.next17740, %n.vec17732
  br i1 %i.byr, label %vec.epilog.middle.block17741, label %vec.epilog.vector.body17735, !llvm.loop !9369

vec.epilog.middle.block17741:                     ; preds = %vec.epilog.vector.body17735
  %i.bys = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.byq) ; 2 uses
  br i1 %cmp.n17742, label %.thread7310, label %.lr.ph10960.preheader

.lr.ph10960.preheader:                            ; preds = %iter.check17727, %vec.epilog.iter.check17729, %vec.epilog.middle.block17741
  %.sroa.05.0.i164.i215210958.ph = phi i16 [ %i.byh, %iter.check17727 ], [ %i.byo, %vec.epilog.iter.check17729 ], [ %i.bys, %vec.epilog.middle.block17741 ]
  %.sroa.06634.010956.ph = phi ptr [ %i.byf, %iter.check17727 ], [ %i.byi, %vec.epilog.iter.check17729 ], [ %7, %vec.epilog.middle.block17741 ]
  br label %.lr.ph10960

.thread7310:                                      ; preds = %.lr.ph10960, %vec.epilog.middle.block17741, %middle.block17721
  %spec.select96.i167.i2155.lcssa = phi i16 [ %i.bys, %vec.epilog.middle.block17741 ], [ %i.byo, %middle.block17721 ], [ %spec.select96.i167.i2155, %.lr.ph10960 ]
  store i16 %spec.select96.i167.i2155.lcssa, ptr %.sroa.06631.010962, align 2, !noalias !10217
  %i.byt = icmp eq ptr %i.bya, %i.bxr
  br i1 %i.byt, label %.loopexit8972, label %.lr.ph10964

.lr.ph10960:                                      ; preds = %.lr.ph10960.preheader, %.lr.ph10960
  %.sroa.05.0.i164.i215210958 = phi i16 [ %spec.select96.i167.i2155, %.lr.ph10960 ], [ %.sroa.05.0.i164.i215210958.ph, %.lr.ph10960.preheader ]
  %.sroa.06634.010956 = phi ptr [ %i.byu, %.lr.ph10960 ], [ %.sroa.06634.010956.ph, %.lr.ph10960.preheader ] ; 2 uses
  %i.byu = getelementptr inbounds nuw i8, ptr %.sroa.06634.010956, i64 2 ; 2 uses
  %i.byv = load i16, ptr %.sroa.06634.010956, align 2, !noalias !10217, !noundef !5
  %spec.select96.i167.i2155 = tail call i16 @llvm.smin.i16(i16 %.sroa.05.0.i164.i215210958, i16 %i.byv) ; 2 uses
  %i.byw = icmp eq ptr %i.byu, %i.byg
  br i1 %i.byw, label %.thread7310, label %.lr.ph10960, !llvm.loop !9370

.split10953:                                      ; preds = %bb.qt, %bb.rb
  %.sroa.06637.0 = phi ptr [ %.sroa.06637.1, %bb.rb ], [ %i.bur, %bb.qt ] ; 3 uses
  %.sroa.76639.0 = phi i64 [ %.sroa.76639.1, %bb.rb ], [ 0, %bb.qt ] ; 3 uses
  %i.byx = icmp eq ptr %.sroa.06637.0, %i.bxr
  br i1 %i.byx, label %bb.qw, label %bb.qv

bb.qv:                                            ; preds = %.split10953
  %i.byy = getelementptr inbounds nuw i8, ptr %.sroa.06637.0, i64 2
  %i.byz = add i64 %.sroa.76639.0, 1
  br label %bb.qw

bb.qw:                                            ; preds = %bb.qv, %.split10953
  %.sroa.06637.1 = phi ptr [ %i.bxr, %.split10953 ], [ %i.byy, %bb.qv ]
  %.sroa.76639.1 = phi i64 [ %.sroa.76639.0, %.split10953 ], [ %i.byz, %bb.qv ]
  %.sroa.2.0.i2784 = phi ptr [ null, %.split10953 ], [ %.sroa.06637.0, %bb.qv ]
  %.sroa.0.0.i2785 = phi i64 [ undef, %.split10953 ], [ %.sroa.76639.0, %bb.qv ]
  %i.bza = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i2785, 0
  %i.bzb = insertvalue { i64, ptr } %i.bza, ptr %.sroa.2.0.i2784, 1
  %.fr88.i149.i2137 = freeze { i64, ptr } %i.bzb  ; 2 uses
  %i.bzc = extractvalue { i64, ptr } %.fr88.i149.i2137, 1 ; 2 uses
  %.not87.i150.i2138 = icmp eq ptr %i.bzc, null
  br i1 %.not87.i150.i2138, label %.loopexit8972, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  %i.bzd = extractvalue { i64, ptr } %.fr88.i149.i2137, 0 ; 2 uses
  %i.bze = urem i64 %i.bzd, %i.buh                ; 2 uses
  %i.bzf = sub nuw i64 %i.bzd, %i.bze
  %i.bzg = mul i64 %i.bzf, %i.bua
  %i.bzh = add i64 %i.bzg, %i.bze                 ; 5 uses
  %i.bzi = icmp ugt i64 %i.bzh, %i.bxp
  br i1 %i.bzi, label %.invoke15918, label %bb.qy, !prof !10

.split10955.us:                                   ; preds = %.split10953.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.qm unwind label %bb.pu, !noalias !10215

bb.qy:                                            ; preds = %bb.qx
  %i.bzj = sub nuw i64 %i.bxp, %i.bzh             ; 2 uses
  %i.bzk = getelementptr inbounds nuw [2 x i8], ptr %i.bxq, i64 %i.bzh ; 2 uses
  %.not89.i151.i2139 = icmp eq i64 %i.bxp, %i.bzh
  br i1 %.not89.i151.i2139, label %.invoke15916, label %bb.qz

.invoke15918:                                     ; preds = %.lr.ph10964, %bb.qx, %bb.pw, %bb.qs
  %i.bzl = phi i64 [ %i.bzh, %bb.qx ], [ %i.buz, %bb.pw ], [ %i.buz, %bb.qs ], [ %i.byc, %.lr.ph10964 ]
  %i.bzm = phi i64 [ %i.bxp, %bb.qx ], [ %i.bvb, %bb.pw ], [ %i.bvb, %bb.qs ], [ %i.byd, %.lr.ph10964 ]
  %i.bzn = phi i64 [ %i.bxp, %bb.qx ], [ %i.bng, %bb.pw ], [ %i.bng, %bb.qs ], [ %i.bxp, %.lr.ph10964 ]
  %i.bzo = phi ptr [ @12, %bb.qx ], [ @13, %bb.pw ], [ @13, %bb.qs ], [ @8, %.lr.ph10964 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.bzl, i64 noundef %i.bzm, i64 noundef %i.bzn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bzo) #22
          to label %.cont15919 unwind label %bb.pu, !noalias !10215

.cont15919:                                       ; preds = %.invoke15918
  unreachable

bb.qz:                                            ; preds = %bb.qy
  %i.bzp = load i16, ptr %i.bzk, align 2, !alias.scope !10224, !noundef !5
  br label %bb.ra

bb.ra:                                            ; preds = %bb.qz, %bb.rc
  %.sroa.044.0.i154.i214210952 = phi i64 [ 0, %bb.qz ], [ %i.bzv, %bb.rc ] ; 2 uses
  %.sroa.022.0.i152.i214010950 = phi i16 [ %i.bzp, %bb.qz ], [ %spec.select98.i155.i2143, %bb.rc ]
  %i.bzq = mul i64 %.sroa.044.0.i154.i214210952, %i.buh ; 3 uses
  %i.bzr = icmp ult i64 %i.bzq, %i.bzj
  br i1 %i.bzr, label %bb.rc, label %.invoke15916

bb.rb:                                            ; preds = %bb.rc
  store i16 %spec.select98.i155.i2143, ptr %i.bzc, align 2, !noalias !10215
  br label %.split10953

.invoke15916:                                     ; preds = %bb.qy, %bb.ra
  %i.bzs = phi i64 [ %i.bzq, %bb.ra ], [ 0, %bb.qy ]
  %i.bzt = phi i64 [ %i.bzj, %bb.ra ], [ 0, %bb.qy ]
  %i.bzu = phi ptr [ @11, %bb.ra ], [ @10, %bb.qy ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bzs, i64 noundef %i.bzt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bzu) #22
          to label %.cont15917 unwind label %bb.pu, !noalias !10215

.cont15917:                                       ; preds = %.invoke15916
  unreachable

bb.rc:                                            ; preds = %bb.ra
  %i.bzv = add nuw i64 %.sroa.044.0.i154.i214210952, 1 ; 2 uses
  %i.bzw = getelementptr inbounds nuw [2 x i8], ptr %i.bzk, i64 %i.bzq
  %i.bzx = load i16, ptr %i.bzw, align 2, !alias.scope !10224, !noundef !5
  %spec.select98.i155.i2143 = tail call i16 @llvm.smin.i16(i16 %.sroa.022.0.i152.i214010950, i16 %i.bzx) ; 2 uses
  %exitcond12908.not = icmp eq i64 %i.bzv, %i.bua
  br i1 %exitcond12908.not, label %bb.rb, label %bb.ra

bb.rd:                                            ; preds = %bb.of
  %.sroa.551.0..sroa_idx.i184.i2073 = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %.sroa.76420.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.76420.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i184.i2073, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !10200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i178.i1994.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i178.i1994.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !10200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !10200
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecsEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dn), !noalias !10199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !10200
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fsNcNtNtB6_10CpuStorage3I160EB8_.exit.thread7392

.loopexit8979:                                    ; preds = %.thread7284, %bb.pd, %.split10934.us, %bb.pb, %bb.op
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !10200
  %i.bzy = load <2 x i64>, ptr %i.dn, align 16, !noalias !10200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !10200
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fsNcNtNtB6_10CpuStorage3I160EB8_.exit.thread

bb.re:                                            ; preds = %bb.py
  %.sroa.551.0..sroa_idx.i135.i2117 = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %.sroa.76417.sroa.8.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.76417.sroa.8.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i135.i2117, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !10216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i129.i2005.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i129.i2005.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !10216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !10216
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecsEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.du), !noalias !10215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !10216
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fsNcNtNtB6_10CpuStorage3I160EB8_.exit.thread7392

.loopexit8972:                                    ; preds = %.thread7310, %bb.qw, %.split10953.us, %bb.qu, %bb.qi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !10216
  %i.bzz = load <2 x i64>, ptr %i.du, align 16, !noalias !10216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !10216
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fsNcNtNtB6_10CpuStorage3I160EB8_.exit.thread

bb.rf:                                            ; preds = %bb.nq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10228)
  %i.caa = load i64, ptr %i.bnp, align 8, !alias.scope !10229, !noundef !5 ; 2 uses
  %i.cab = load i64, ptr %1, align 8, !alias.scope !10230, !noundef !5 ; 7 uses
  %i.cac = icmp ult i64 %i.cab, %i.caa
  br i1 %i.cac, label %bb.rg, label %bb.rh

bb.rg:                                            ; preds = %bb.rf
  %i.cad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cae = load ptr, ptr %i.cad, align 8, !alias.scope !10229, !nonnull !5, !noundef !5
  %i.caf = getelementptr inbounds nuw [8 x i8], ptr %i.cae, i64 %i.cab
  %i.cag = load i64, ptr %i.caf, align 8, !noalias !10231, !noundef !5 ; 8 uses
  %i.cah = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cai = load i64, ptr %i.cah, align 8, !alias.scope !10229, !noundef !5 ; 2 uses
  %i.caj = icmp ult i64 %i.cab, %i.cai
  br i1 %i.caj, label %bb.ri, label %bb.rj

bb.rh:                                            ; preds = %bb.rf
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cab, i64 noundef %i.caa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !10231
  unreachable

bb.ri:                                            ; preds = %bb.rg
  %i.cak = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cal = load ptr, ptr %i.cak, align 8, !alias.scope !10229, !nonnull !5, !noundef !5
  %i.cam = getelementptr inbounds nuw [8 x i8], ptr %i.cal, i64 %i.cab
  %i.can = load i64, ptr %i.cam, align 8, !noalias !10231, !noundef !5 ; 4 uses
  %i.cao = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10231
  %i.cap = icmp eq i64 %i.cag, 0
  br i1 %i.cap, label %bb.rl, label %bb.rk

bb.rj:                                            ; preds = %bb.rg
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cab, i64 noundef %i.cai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !10231
  unreachable

bb.rk:                                            ; preds = %bb.ri
  %i.caq = udiv i64 %i.cao, %i.cag                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !10232
end_hunk_3
