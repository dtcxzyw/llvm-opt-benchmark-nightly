Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ISel?download=true
inline.NumInlined: 3485
inline.NumDeleted: 1496
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@"_ZSt16__introsort_loopIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_T0_T1_":bb.a
  store ptr %i.ak, ptr %3, align 8, !tbaa !143
  store <2 x ptr> %i.as, ptr %i.ah, align 8, !tbaa !144
  store ptr %i.ao, ptr %i.ai, align 8, !tbaa !145
  call fastcc void @"_ZSt13__adjust_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_SH_T1_T2_"(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.ar, ptr noundef %3)
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !147 ; 3 uses
  %.not.i.i.i.i.i.i.i6.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i6.i, label %"_ZSt10__pop_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_RT0_.exit.i7.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.ai, align 8, !tbaa !145
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #22
  br label %"_ZSt10__pop_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_RT0_.exit.i7.i"

"_ZSt10__pop_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_RT0_.exit.i7.i": ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bb = icmp sgt i64 %i.aq, 48
  br i1 %i.bb, label %bb.e, label %"_ZSt14__partial_sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !573

.lr.ph51:                                         ; preds = %.lr.ph, %bb.b
  %.0172850 = phi i64 [ %i.bd, %bb.b ], [ %2, %.lr.ph ]
  %.02949 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 8 uses
  %i.bc = phi i64 [ %i.dy, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bd = add nsw i64 %.0172850, -1               ; 3 uses
  %i.be = udiv i64 %i.bc, 96
  %i.bf = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.be ; 9 uses
  %i.bg = getelementptr inbounds i8, ptr %.02949, i64 -48 ; 4 uses
  %.val29.i.i = load i32, ptr %i.f, align 8, !tbaa !146 ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 8      ; 5 uses
  %.val30.i.i = load i32, ptr %i.bh, align 8, !tbaa !146 ; 3 uses
  %i.bi = icmp ult i32 %.val29.i.i, %.val30.i.i
  %i.bj = getelementptr i8, ptr %.02949, i64 -40  ; 5 uses
  %.val28.i.i = load i32, ptr %i.bj, align 8, !tbaa !146 ; 4 uses
  br i1 %i.bi, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph51
  %i.bk = icmp ult i32 %.val30.i.i, %.val28.i.i
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.bl = load ptr, ptr %0, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !145
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 40 ; 2 uses
  %i.bp = load <2 x ptr>, ptr %i.h, align 8, !tbaa !144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !125
  store ptr %i.bq, ptr %0, align 8, !tbaa !143
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 16, i1 false)
  %i.br = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !144
  store <2 x ptr> %i.br, ptr %i.h, align 8, !tbaa !144
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !145
  store ptr %i.bs, ptr %i.i, align 8, !tbaa !145
  store ptr %i.bl, ptr %i.bf, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i, i64 16, i1 false)
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !144
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.i:                                             ; preds = %bb.g
  %i.bt = icmp ult i32 %.val29.i.i, %.val28.i.i
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i31.i.i)
  %i.bu = load ptr, ptr %0, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i31.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !145
  %i.bw = getelementptr inbounds i8, ptr %.02949, i64 -24 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.02949, i64 -8 ; 2 uses
  %i.by = load <2 x ptr>, ptr %i.h, align 8, !tbaa !144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.bz = load ptr, ptr %i.bg, align 8, !tbaa !125
  store ptr %i.bz, ptr %0, align 8, !tbaa !143
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 16, i1 false)
  %i.ca = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !144
  store <2 x ptr> %i.ca, ptr %i.h, align 8, !tbaa !144
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !145
  store ptr %i.cb, ptr %i.i, align 8, !tbaa !145
  store ptr %i.bu, ptr %i.bg, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i31.i.i, i64 16, i1 false)
  store <2 x ptr> %i.by, ptr %i.bw, align 8, !tbaa !144
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i31.i.i)
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i32.i.i)
  %i.cc = load ptr, ptr %0, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i32.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.cd = load ptr, ptr %i.i, align 8, !tbaa !145
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !125
  store ptr %i.ce, ptr %0, align 8, !tbaa !143
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 16, i1 false)
  %i.cf = load <2 x ptr>, ptr %i.j, align 8, !tbaa !144
  %i.cg = load ptr, ptr %i.k, align 8, !tbaa !145
  store ptr %i.cg, ptr %i.i, align 8, !tbaa !145
  store ptr %i.cc, ptr %i.e, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i32.i.i, i64 16, i1 false)
  %i.ch = load <2 x ptr>, ptr %i.h, align 8, !tbaa !144
  store <2 x ptr> %i.cf, ptr %i.h, align 8, !tbaa !144
  store <2 x ptr> %i.ch, ptr %i.j, align 8, !tbaa !144
  store ptr %i.cd, ptr %i.k, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i32.i.i)
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.l:                                             ; preds = %.lr.ph51
  %i.ci = icmp ult i32 %.val29.i.i, %.val28.i.i
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i33.i.i)
  %i.cj = load ptr, ptr %0, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i33.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.ck = load ptr, ptr %i.i, align 8, !tbaa !145
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !125
  store ptr %i.cl, ptr %0, align 8, !tbaa !143
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 16, i1 false)
  %i.cm = load <2 x ptr>, ptr %i.j, align 8, !tbaa !144
  %i.cn = load ptr, ptr %i.k, align 8, !tbaa !145
  store ptr %i.cn, ptr %i.i, align 8, !tbaa !145
  store ptr %i.cj, ptr %i.e, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i33.i.i, i64 16, i1 false)
  %i.co = load <2 x ptr>, ptr %i.h, align 8, !tbaa !144
  store <2 x ptr> %i.cm, ptr %i.h, align 8, !tbaa !144
  store <2 x ptr> %i.co, ptr %i.j, align 8, !tbaa !144
  store ptr %i.ck, ptr %i.k, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i33.i.i)
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.cp = icmp ult i32 %.val30.i.i, %.val28.i.i
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i34.i.i)
  %i.cq = load ptr, ptr %0, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i34.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !145
  %i.cs = getelementptr inbounds i8, ptr %.02949, i64 -24 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.02949, i64 -8 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.h, align 8, !tbaa !144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.cv = load ptr, ptr %i.bg, align 8, !tbaa !125
  store ptr %i.cv, ptr %0, align 8, !tbaa !143
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 16, i1 false)
  %i.cw = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !144
  store <2 x ptr> %i.cw, ptr %i.h, align 8, !tbaa !144
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !145
  store ptr %i.cx, ptr %i.i, align 8, !tbaa !145
  store ptr %i.cq, ptr %i.bg, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i34.i.i, i64 16, i1 false)
  store <2 x ptr> %i.cu, ptr %i.cs, align 8, !tbaa !144
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i34.i.i)
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i35.i.i)
  %i.cy = load ptr, ptr %0, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i35.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.cz = load ptr, ptr %i.i, align 8, !tbaa !145
  %i.da = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bf, i64 40 ; 2 uses
  %i.dc = load <2 x ptr>, ptr %i.h, align 8, !tbaa !144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.dd = load ptr, ptr %i.bf, align 8, !tbaa !125
  store ptr %i.dd, ptr %0, align 8, !tbaa !143
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 16, i1 false)
  %i.de = load <2 x ptr>, ptr %i.da, align 8, !tbaa !144
  store <2 x ptr> %i.de, ptr %i.h, align 8, !tbaa !144
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !145
  store ptr %i.df, ptr %i.i, align 8, !tbaa !145
  store ptr %i.cy, ptr %i.bf, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i35.i.i, i64 16, i1 false)
  store <2 x ptr> %i.dc, ptr %i.da, align 8, !tbaa !144
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i35.i.i)
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader": ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader", %bb.s
  %.013.i.i = phi ptr [ %.114.i.i, %bb.s ], [ %.02949, %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.0.i.i = phi ptr [ %i.di, %bb.s ], [ %i.e, %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.val15.i.i = load i32, ptr %i.g, align 8, !tbaa !146 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"
  %.1.i.i = phi ptr [ %.0.i.i, %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i" ], [ %i.di, %bb.q ] ; 12 uses
  %i.dg = getelementptr i8, ptr %.1.i.i, i64 8
  %.1.val.i.i = load i32, ptr %i.dg, align 8, !tbaa !146
  %i.dh = icmp ult i32 %.1.val.i.i, %.val15.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48 ; 2 uses
  br i1 %i.dh, label %bb.q, label %.preheader.i.i, !llvm.loop !574

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.q ] ; 5 uses
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -48 ; 5 uses
  %i.dj = getelementptr i8, ptr %.013.pn.i.i, i64 -40
  %.114.val.i.i = load i32, ptr %i.dj, align 8, !tbaa !146
  %i.dk = icmp ult i32 %.val15.i.i, %.114.val.i.i
  br i1 %i.dk, label %.preheader.i.i, label %bb.r, !llvm.loop !575

bb.r:                                             ; preds = %.preheader.i.i
  %i.dl = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.dl, label %bb.s, label %"_ZSt27__unguarded_partition_pivotIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEET_SG_SG_T0_.exit"

bb.s:                                             ; preds = %bb.r
  %i.dm = getelementptr i8, ptr %.013.pn.i.i, i64 -40 ; 2 uses
  %5 = getelementptr i8, ptr %.1.i.i, i64 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i13.i)
  %i.dn = load ptr, ptr %.1.i.i, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i13.i, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !145
  %i.dr = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -24 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 2 uses
  %i.dt = load <2 x ptr>, ptr %i.do, align 8, !tbaa !144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, i8 0, i64 24, i1 false)
  %i.du = load ptr, ptr %.114.i.i, align 8, !tbaa !125
  store ptr %i.du, ptr %.1.i.i, align 8, !tbaa !143
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.dm, i64 16, i1 false)
  %i.dv = load <2 x ptr>, ptr %i.dr, align 8, !tbaa !144
  store <2 x ptr> %i.dv, ptr %i.do, align 8, !tbaa !144
  %i.dw = load ptr, ptr %i.ds, align 8, !tbaa !145
  store ptr %i.dw, ptr %i.dp, align 8, !tbaa !145
  store ptr %i.dn, ptr %.114.i.i, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i13.i, i64 16, i1 false)
  store <2 x ptr> %i.dt, ptr %i.dr, align 8, !tbaa !144
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i13.i)
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i", !llvm.loop !576

"_ZSt27__unguarded_partition_pivotIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEET_SG_SG_T0_.exit": ; preds = %bb.r
  tail call fastcc void @"_ZSt16__introsort_loopIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_T0_T1_"(ptr noundef nonnull %.1.i.i, ptr noundef %.02949, i64 noundef %i.bd)
  %i.dx = ptrtoint ptr %.1.i.i to i64
  %i.dy = sub i64 %i.dx, %i.a                     ; 3 uses
  %i.dz = icmp sgt i64 %i.dy, 768
  br i1 %i.dz, label %bb.b, label %"_ZSt14__partial_sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !571

"_ZSt14__partial_sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_RT0_.exit.i7.i", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_SH_T1_T2_"(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 96076792050570581) %1, i64 noundef range(i64 -192153584101141162, 192153584101141163) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %.sroa.5 = alloca [12 x i8], align 4            ; 2 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit
  %.037 = phi i64 [ %spec.select, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl nuw nsw i64 %.037, 1                 ; 3 uses
  %i.e = add nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val = load i32, ptr %i.h, align 8, !tbaa !146
  %i.i = getelementptr i8, ptr %i.g, i64 56
  %.val28 = load i32, ptr %i.i, align 8, !tbaa !146
  %i.j = icmp ult i32 %.val, %.val28
  %i.k = or disjoint i64 %i.d, 1
  %spec.select = select i1 %i.j, i64 %i.k, i64 %i.e ; 4 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %spec.select ; 4 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.037 ; 4 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !125
  store ptr %i.n, ptr %i.m, align 8, !tbaa !143
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !147  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !145
  %i.v = load <2 x ptr>, ptr %i.r, align 8, !tbaa !144
  store <2 x ptr> %i.v, ptr %i.q, align 8, !tbaa !144
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !145
  store ptr %i.x, ptr %i.t, align 8, !tbaa !145
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = ptrtoint ptr %i.s to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.aa) #22
  br label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit

_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit: ; preds = %.lr.ph, %bb.b
  %i.ab = icmp slt i64 %spec.select, %i.b
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !577

._crit_edge:                                      ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit ] ; 5 uses
  %i.ac = and i64 %2, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30

bb.c:                                             ; preds = %._crit_edge
  %i.ae = add nsw i64 %2, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa, %i.af
  br i1 %i.ag, label %bb.d, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30

bb.d:                                             ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 3 uses
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ai ; 4 uses
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0.lcssa ; 4 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !125
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !143
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !147 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !145
  %i.at = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !144
  store <2 x ptr> %i.at, ptr %i.ao, align 8, !tbaa !144
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !145
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !145
  %.not.i.i.i.i.i.i.i.i29 = icmp eq ptr %i.aq, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i29, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ay) #22
  br label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30

_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30: ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge
  %.127 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.c ], [ %i.ai, %bb.d ], [ %i.ai, %bb.e ] ; 3 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !143
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.8.copyload = load i32, ptr %i.ba, align 8 ; 2 uses
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.8..sroa_idx, i64 12, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !144
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !145
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bf = icmp samesign ugt i64 %.127, %1
  br i1 %i.bf, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i
  %.0133.i = phi i64 [ %.0410.i, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i ], [ %.127, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30 ] ; 3 uses
  %.04.in.i = add nsw i64 %.0133.i, -1
  %.0410.i = lshr i64 %.04.in.i, 1                ; 4 uses
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0410.i ; 4 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 8      ; 2 uses
  %.val.i = load i32, ptr %i.bh, align 8, !tbaa !146
  %i.bi = icmp ult i32 %.val.i, %.sroa.2.8.copyload
  br i1 %i.bi, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0133.i ; 4 uses
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !125
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !143
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !147 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !145
  %i.br = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !144
  store <2 x ptr> %i.br, ptr %i.bm, align 8, !tbaa !144
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !145
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !145
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = ptrtoint ptr %i.bo to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bw) #22
  br label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i

_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i: ; preds = %bb.g, %bb.f
  %i.bx = icmp samesign ugt i64 %.0410.i, %1
  br i1 %i.bx, label %.lr.ph.i, label %.critedge.i, !llvm.loop !578

.critedge.i:                                      ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i, %.lr.ph.i, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30
  %.013.lcssa.i = phi i64 [ %.127, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30 ], [ %.0133.i, %.lr.ph.i ], [ %.0410.i, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i ]
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.013.lcssa.i ; 5 uses
  store ptr %i.az, ptr %i.by, align 8, !tbaa !143
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %.sroa.2.8.copyload, ptr %i.bz, align 8
  %.sroa.5.8..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.8..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i64 12, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !147 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 40 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !145
end_hunk_0
