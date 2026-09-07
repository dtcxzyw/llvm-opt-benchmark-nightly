Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v01?download=true
inline.NumInlined: 186
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@ZSTD_decompressBlock:bb.a
  %.1.ptr.ptr.i492.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.1.idx.i491.i.i.i.i.i.i
  %.not.i161.i.i.i.i.i.i = icmp slt i64 %.sroa.60231.1.idx486.i.i.i.i.i.i, 8
  br i1 %.not.i161.i.i.i.i.i.i, label %bb.cj, label %.thread616.i.i.i.i.i.i

.thread616.i.i.i.i.i.i:                           ; preds = %.lr.ph493.i.i.i.i.i.i
  %i.ux = lshr i32 %.sroa.26.1487.i.i.i.i.i.i, 3
  %i.uy = zext nneg i32 %i.ux to i64
  %.sroa.60231.1.add390.i.i.i.i.i.i = sub nuw nsw i64 %.sroa.60231.1.idx486.i.i.i.i.i.i, %i.uy ; 3 uses
  %.ptr394.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.sroa.60231.1.add390.i.i.i.i.i.i
  %i.uz = and i32 %.sroa.26.1487.i.i.i.i.i.i, 7
  %.val30.i162.i.i.i.i.i.i = load i64, ptr %.ptr394.i.i.i.i.i.i, align 1
  %i.va = icmp eq i64 %.sroa.60231.1.add390.i.i.i.i.i.i, 0
  br label %FSE_endOfDStream.exit170.thread.i.i.i.i.i.i

bb.cj:                                            ; preds = %.lr.ph493.i.i.i.i.i.i
  %i.vb = icmp eq i64 %.sroa.60231.1.idx486.i.i.i.i.i.i, 0
  br i1 %i.vb, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.vc = lshr i32 %.sroa.26.1487.i.i.i.i.i.i, 3
  %i.vd = zext nneg i32 %i.vc to i64
  %.024.i164395.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.60231.1.idx486.i.i.i.i.i.i, i64 %i.vd) ; 2 uses
  %.024.i164.i.i.i.i.i.i = trunc i64 %.024.i164395.i.i.i.i.i.i to i32
  %i.ve = and i64 %.024.i164395.i.i.i.i.i.i, 4294967295
  %.sroa.60231.1.add.i.i.i.i.i.i = sub nsw i64 %.sroa.60231.1.idx486.i.i.i.i.i.i, %i.ve ; 2 uses
  %.ptr393.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hc, i64 %.sroa.60231.1.add.i.i.i.i.i.i
  %i.vf = shl i32 %.024.i164.i.i.i.i.i.i, 3
  %i.vg = sub i32 %.sroa.26.1487.i.i.i.i.i.i, %i.vf
  %.val.i166.i.i.i.i.i.i = load i64, ptr %.ptr393.i.i.i.i.i.i, align 1
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.sroa.60231.9.ph.idx.i.i.i.i.i.i = phi i64 [ 0, %bb.cj ], [ %.sroa.60231.1.add.i.i.i.i.i.i, %bb.ck ] ; 2 uses
  %.sroa.26.9.ph.i.i.i.i.i.i = phi i32 [ %.sroa.26.1487.i.i.i.i.i.i, %bb.cj ], [ %i.vg, %bb.ck ] ; 2 uses
  %.sroa.0210.7.ph.i.i.i.i.i.i = phi i64 [ %.sroa.0210.1488.i.i.i.i.i.i, %bb.cj ], [ %.val.i166.i.i.i.i.i.i, %bb.ck ]
  %i.vh = icmp eq i64 %.sroa.60231.9.ph.idx.i.i.i.i.i.i, 0 ; 2 uses
  %.not396.i.i.i.i.i.i = icmp eq i32 %.sroa.26.9.ph.i.i.i.i.i.i, 64
  %or.cond408.i.i.i.i.i.i = and i1 %i.vh, %.not396.i.i.i.i.i.i
  %.not397.i.i.i.i.i.i = icmp eq i64 %.sroa.0202.1489.i.i.i.i.i.i, 0
  %or.cond409.i.i.i.i.i.i = select i1 %or.cond408.i.i.i.i.i.i, i1 %.not397.i.i.i.i.i.i, i1 false
  br i1 %or.cond409.i.i.i.i.i.i, label %FSE_reloadDStream.exit169.i.i.i.i.i.i, label %FSE_endOfDStream.exit170.thread.i.i.i.i.i.i

FSE_endOfDStream.exit170.thread.i.i.i.i.i.i:      ; preds = %bb.cl, %.thread616.i.i.i.i.i.i
  %i.vi = phi i1 [ %i.va, %.thread616.i.i.i.i.i.i ], [ %i.vh, %bb.cl ]
  %.sroa.0210.7.ph626.i.i.i.i.i.i = phi i64 [ %.val30.i162.i.i.i.i.i.i, %.thread616.i.i.i.i.i.i ], [ %.sroa.0210.7.ph.i.i.i.i.i.i, %bb.cl ] ; 2 uses
  %.sroa.26.9.ph625.i.i.i.i.i.i = phi i32 [ %i.uz, %.thread616.i.i.i.i.i.i ], [ %.sroa.26.9.ph.i.i.i.i.i.i, %bb.cl ] ; 2 uses
  %.sroa.60231.9.ph.idx624.i.i.i.i.i.i = phi i64 [ %.sroa.60231.1.add390.i.i.i.i.i.i, %.thread616.i.i.i.i.i.i ], [ %.sroa.60231.9.ph.idx.i.i.i.i.i.i, %bb.cl ] ; 5 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.sroa.0202.1489.i.i.i.i.i.i ; 3 uses
  %.sroa.0.0.copyload.i171.i.i.i.i.i.i = load i16, ptr %i.vj, align 4, !tbaa !19
  %.sroa.4.0..sroa_idx.i172.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.vj, i64 2
  %.sroa.4.0.copyload.i173.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i172.i.i.i.i.i.i, align 2, !tbaa !13
  %.sroa.5.0..sroa_idx.i174.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.vj, i64 3
  %.sroa.5.0.copyload.i175.i.i.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i174.i.i.i.i.i.i, align 1, !tbaa !13
  %i.vk = zext i8 %.sroa.5.0.copyload.i175.i.i.i.i.i.i to i32 ; 2 uses
  %i.vl = and i32 %.sroa.26.9.ph625.i.i.i.i.i.i, 63
  %i.vm = zext nneg i32 %i.vl to i64
  %i.vn = shl i64 %.sroa.0210.7.ph626.i.i.i.i.i.i, %i.vm
  %i.vo = lshr i64 %i.vn, 1
  %i.vp = and i32 %i.vk, 63
  %i.vq = xor i32 %i.vp, 63
  %i.vr = zext nneg i32 %i.vq to i64
  %i.vs = lshr i64 %i.vo, %i.vr
  %i.vt = add i32 %.sroa.26.9.ph625.i.i.i.i.i.i, %i.vk ; 7 uses
  %i.vu = zext i16 %.sroa.0.0.copyload.i171.i.i.i.i.i.i to i64
  %i.vv = add nuw i64 %i.vs, %i.vu                ; 5 uses
  %.add51.i.i.i.i.i.i.i = or disjoint i64 %.1.idx.i491.i.i.i.i.i.i, 1 ; 3 uses
  %.ptr.ptr.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.add51.i.i.i.i.i.i.i
  store i8 %.sroa.4.0.copyload.i173.i.i.i.i.i.i, ptr %.1.ptr.ptr.i492.i.i.i.i.i.i, align 1, !tbaa !13
  %i.vw = icmp ugt i32 %i.vt, 64
  br i1 %i.vw, label %FSE_reloadDStream.exit169.split.loop.exit463.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %FSE_endOfDStream.exit170.thread.i.i.i.i.i.i
  %.not.i178.i.i.i.i.i.i = icmp slt i64 %.sroa.60231.9.ph.idx624.i.i.i.i.i.i, 8
  br i1 %.not.i178.i.i.i.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.vx = lshr i32 %i.vt, 3
  %i.vy = zext nneg i32 %i.vx to i64
  %.sroa.60231.9.ph.add389.i.i.i.i.i.i = sub nuw nsw i64 %.sroa.60231.9.ph.idx624.i.i.i.i.i.i, %i.vy ; 2 uses
  %.ptr392.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.sroa.60231.9.ph.add389.i.i.i.i.i.i
  %i.vz = and i32 %i.vt, 7
  %.val30.i179.i.i.i.i.i.i = load i64, ptr %.ptr392.i.i.i.i.i.i, align 1
  br label %FSE_reloadDStream.exit186.i.i.i.i.i.i

bb.co:                                            ; preds = %bb.cm
  br i1 %i.vi, label %FSE_reloadDStream.exit186.i.i.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wa = lshr i32 %i.vt, 3
  %i.wb = zext nneg i32 %i.wa to i64
  %.024.i181398.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.60231.9.ph.idx624.i.i.i.i.i.i, i64 %i.wb) ; 2 uses
  %.024.i181.i.i.i.i.i.i = trunc i64 %.024.i181398.i.i.i.i.i.i to i32
  %i.wc = and i64 %.024.i181398.i.i.i.i.i.i, 4294967295
  %.sroa.60231.9.ph.add.i.i.i.i.i.i = sub nsw i64 %.sroa.60231.9.ph.idx624.i.i.i.i.i.i, %i.wc ; 2 uses
  %.ptr391.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hc, i64 %.sroa.60231.9.ph.add.i.i.i.i.i.i
  %i.wd = shl i32 %.024.i181.i.i.i.i.i.i, 3
  %i.we = sub i32 %i.vt, %i.wd
  %.val.i183.i.i.i.i.i.i = load i64, ptr %.ptr391.i.i.i.i.i.i, align 1
  br label %FSE_reloadDStream.exit186.i.i.i.i.i.i

FSE_reloadDStream.exit186.i.i.i.i.i.i:            ; preds = %bb.cp, %bb.co, %bb.cn
  %.sroa.60231.10.idx.i.i.i.i.i.i = phi i64 [ %.sroa.60231.9.ph.add389.i.i.i.i.i.i, %bb.cn ], [ %.sroa.60231.9.ph.add.i.i.i.i.i.i, %bb.cp ], [ 0, %bb.co ] ; 4 uses
  %.sroa.26.10.i.i.i.i.i.i = phi i32 [ %i.vz, %bb.cn ], [ %i.we, %bb.cp ], [ %i.vt, %bb.co ] ; 4 uses
  %.sroa.0210.8.i.i.i.i.i.i = phi i64 [ %.val30.i179.i.i.i.i.i.i, %bb.cn ], [ %.val.i183.i.i.i.i.i.i, %bb.cp ], [ %.sroa.0210.7.ph626.i.i.i.i.i.i, %bb.co ] ; 2 uses
  %i.wf = icmp eq i64 %.1.idx.i491.i.i.i.i.i.i, 254
  br i1 %i.wf, label %FSE_reloadDStream.exit169.split.loop.exit475.i.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %FSE_reloadDStream.exit186.i.i.i.i.i.i
  %i.wg = icmp eq i64 %.sroa.60231.10.idx.i.i.i.i.i.i, 0
  %.not399.i.i.i.i.i.i = icmp eq i32 %.sroa.26.10.i.i.i.i.i.i, 64
  %or.cond410.i.i.i.i.i.i = and i1 %i.wg, %.not399.i.i.i.i.i.i
  %.not400.i.i.i.i.i.i = icmp eq i64 %.sroa.0.1490.i.i.i.i.i.i, 0
  %or.cond411.i.i.i.i.i.i = select i1 %or.cond410.i.i.i.i.i.i, i1 %.not400.i.i.i.i.i.i, i1 false
  br i1 %or.cond411.i.i.i.i.i.i, label %FSE_reloadDStream.exit169.i.i.i.i.i.i, label %FSE_endOfDStream.exit187.thread.i.i.i.i.i.i

FSE_endOfDStream.exit187.thread.i.i.i.i.i.i:      ; preds = %bb.cq
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.sroa.0.1490.i.i.i.i.i.i ; 3 uses
  %.sroa.0.0.copyload.i188.i.i.i.i.i.i = load i16, ptr %i.wh, align 4, !tbaa !19
  %.sroa.4.0..sroa_idx.i189.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wh, i64 2
  %.sroa.4.0.copyload.i190.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i189.i.i.i.i.i.i, align 2, !tbaa !13
  %.sroa.5.0..sroa_idx.i191.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wh, i64 3
  %.sroa.5.0.copyload.i192.i.i.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i191.i.i.i.i.i.i, align 1, !tbaa !13
  %i.wi = zext i8 %.sroa.5.0.copyload.i192.i.i.i.i.i.i to i32 ; 2 uses
  %i.wj = and i32 %.sroa.26.10.i.i.i.i.i.i, 63
  %i.wk = zext nneg i32 %i.wj to i64
  %i.wl = shl i64 %.sroa.0210.8.i.i.i.i.i.i, %i.wk
  %i.wm = lshr i64 %i.wl, 1
  %i.wn = and i32 %i.wi, 63
  %i.wo = xor i32 %i.wn, 63
  %i.wp = zext nneg i32 %i.wo to i64
  %i.wq = lshr i64 %i.wm, %i.wp
  %i.wr = add i32 %.sroa.26.10.i.i.i.i.i.i, %i.wi ; 3 uses
  %i.ws = zext i16 %.sroa.0.0.copyload.i188.i.i.i.i.i.i to i64
  %i.wt = add nuw i64 %i.wq, %i.ws                ; 2 uses
  %.add.i.i.i.i.i.i.i = add nuw nsw i64 %.1.idx.i491.i.i.i.i.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i190.i.i.i.i.i.i, ptr %.ptr.ptr.i.i.i.i.i.i.i, align 1, !tbaa !13
  %i.wu = icmp ugt i32 %i.wr, 64
  br i1 %i.wu, label %FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i, label %.lr.ph493.i.i.i.i.i.i

FSE_reloadDStream.exit169.split.loop.exit463.i.i.i.i.i.i: ; preds = %FSE_endOfDStream.exit170.thread.i.i.i.i.i.i
  %.sroa.60231.9.ph.ptr.le.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hc, i64 %.sroa.60231.9.ph.idx624.i.i.i.i.i.i
  br label %FSE_reloadDStream.exit169.i.i.i.i.i.i

FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i: ; preds = %bb.ci, %FSE_endOfDStream.exit187.thread.i.i.i.i.i.i, %.preheader.i26.i.i.i.i.i, %FSE_initDState.exit123.i.i.i.i.i.i, %FSE_initDState.exit115.i.i.i.i.i.i
  %.sroa.60231.1.idx.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.60231.8.idx.i.i.i.i.i.i, %.preheader.i26.i.i.i.i.i ], [ %.sroa.60231.10.idx.i.i.i.i.i.i, %FSE_endOfDStream.exit187.thread.i.i.i.i.i.i ], [ %.sroa.60231.5.ptr.add.i.i.i.i.i.i, %FSE_initDState.exit123.i.i.i.i.i.i ], [ %.sroa.60231.5.idx.i.i.i.i.i.i, %FSE_initDState.exit115.i.i.i.i.i.i ], [ %.sroa.60231.8.idx.i.i.i.i.i.i, %bb.ci ]
  %.sroa.0.1.lcssa.ph470.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i110.i.i.i.i.i, %.preheader.i26.i.i.i.i.i ], [ %i.wt, %FSE_endOfDStream.exit187.thread.i.i.i.i.i.i ], [ %i.rt, %FSE_initDState.exit123.i.i.i.i.i.i ], [ %i.rt, %FSE_initDState.exit115.i.i.i.i.i.i ], [ %i.uu, %bb.ci ]
  %.sroa.26.2.ph472.i.i.i.i.i.i = phi i32 [ %.sroa.26.8.i.i.i.i.i.i, %.preheader.i26.i.i.i.i.i ], [ %i.wr, %FSE_endOfDStream.exit187.thread.i.i.i.i.i.i ], [ %i.se, %FSE_initDState.exit123.i.i.i.i.i.i ], [ %i.ru, %FSE_initDState.exit115.i.i.i.i.i.i ], [ %i.us, %bb.ci ]
  %.sroa.0202.2.ph473.i.i.i.i.i.i = phi i64 [ %.sroa.0202.0.i109.i.i.i.i.i, %.preheader.i26.i.i.i.i.i ], [ %i.vv, %FSE_endOfDStream.exit187.thread.i.i.i.i.i.i ], [ %i.re, %FSE_initDState.exit123.i.i.i.i.i.i ], [ %i.re, %FSE_initDState.exit115.i.i.i.i.i.i ], [ %i.uf, %bb.ci ]
  %.2.idx.i.ph474.i.i.i.i.i.i = phi i64 [ %.0.idx.i.i111.i.i.i.i.i, %.preheader.i26.i.i.i.i.i ], [ %.add.i.i.i.i.i.i.i, %FSE_endOfDStream.exit187.thread.i.i.i.i.i.i ], [ 0, %FSE_initDState.exit123.i.i.i.i.i.i ], [ 0, %FSE_initDState.exit115.i.i.i.i.i.i ], [ %.0.add.i.i.i.i.i.i.i, %bb.ci ]
  %.sroa.60231.1.ptr.le.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hc, i64 %.sroa.60231.1.idx.lcssa.i.i.i.i.i.i
  br label %FSE_reloadDStream.exit169.i.i.i.i.i.i

FSE_reloadDStream.exit169.split.loop.exit475.i.i.i.i.i.i: ; preds = %FSE_reloadDStream.exit186.i.i.i.i.i.i
  %.sroa.60231.10.ptr.le.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hc, i64 %.sroa.60231.10.idx.i.i.i.i.i.i
  br label %FSE_reloadDStream.exit169.i.i.i.i.i.i

FSE_reloadDStream.exit169.i.i.i.i.i.i:            ; preds = %bb.cq, %bb.cl, %FSE_reloadDStream.exit169.split.loop.exit475.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit463.i.i.i.i.i.i
  %.sroa.0.1.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.0.1.lcssa.ph470.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i ], [ %.sroa.0.1490.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit475.i.i.i.i.i.i ], [ %.sroa.0.1490.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit463.i.i.i.i.i.i ], [ %.sroa.0.1490.i.i.i.i.i.i, %bb.cl ], [ 0, %bb.cq ]
  %.sroa.60231.2.i.i.i.i.i.i = phi ptr [ %.sroa.60231.1.ptr.le.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i ], [ %.sroa.60231.10.ptr.le.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit475.i.i.i.i.i.i ], [ %.sroa.60231.9.ph.ptr.le.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit463.i.i.i.i.i.i ], [ %i.hc, %bb.cl ], [ %i.hc, %bb.cq ]
  %.sroa.26.2.i.i.i.i.i.i = phi i32 [ %.sroa.26.2.ph472.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i ], [ %.sroa.26.10.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit475.i.i.i.i.i.i ], [ %i.vt, %FSE_reloadDStream.exit169.split.loop.exit463.i.i.i.i.i.i ], [ 64, %bb.cl ], [ 64, %bb.cq ]
  %.sroa.0202.2.i.i.i.i.i.i = phi i64 [ %.sroa.0202.2.ph473.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i ], [ %i.vv, %FSE_reloadDStream.exit169.split.loop.exit475.i.i.i.i.i.i ], [ %i.vv, %FSE_reloadDStream.exit169.split.loop.exit463.i.i.i.i.i.i ], [ 0, %bb.cl ], [ %i.vv, %bb.cq ]
  %.2.idx.i.i.i.i.i.i.i = phi i64 [ %.2.idx.i.ph474.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i ], [ 255, %FSE_reloadDStream.exit169.split.loop.exit475.i.i.i.i.i.i ], [ %.add51.i.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit463.i.i.i.i.i.i ], [ %.1.idx.i491.i.i.i.i.i.i, %bb.cl ], [ %.add51.i.i.i.i.i.i.i, %bb.cq ]
  %i.wv = icmp eq ptr %.sroa.60231.2.i.i.i.i.i.i, %i.hc
  %.not401.i.i.i.i.i.i = icmp eq i32 %.sroa.26.2.i.i.i.i.i.i, 64
  %or.cond412.i.i.i.i.i.i = and i1 %i.wv, %.not401.i.i.i.i.i.i
  %.not402.i.i.i.i.i.i = icmp eq i64 %.sroa.0202.2.i.i.i.i.i.i, 0
  %or.cond413.i.i.i.i.i.i = select i1 %or.cond412.i.i.i.i.i.i, i1 %.not402.i.i.i.i.i.i, i1 false
  %.not403.i.i.i.i.i.i = icmp eq i64 %.sroa.0.1.lcssa.i.i.i.i.i.i, 0
  %or.cond414.i.i.i.i.i.i = select i1 %or.cond413.i.i.i.i.i.i, i1 %.not403.i.i.i.i.i.i, i1 false
  br i1 %or.cond414.i.i.i.i.i.i, label %FSE_decompress.exit.i.i.i.i, label %FSE_decompress.exit.thread.i.i.i.i

FSE_decompress.exit.thread.i.i.i.i:               ; preds = %FSE_reloadDStream.exit169.i.i.i.i.i.i, %bb.bx, %bb.bp, %FSE_reloadDStream.exit77.i.i.i.i.i.i, %bb.au, %bb.am, %FSE_buildDTable.exit.thread.i.i.i.i.i, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  br label %HUF_readDTable.exit.thread.i.i.i

FSE_decompress.exit.i.i.i.i:                      ; preds = %FSE_reloadDStream.exit169.i.i.i.i.i.i, %FSE_reloadDStream.exit77.i.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %.2.idx.i.i.i.i.i.i.i, %FSE_reloadDStream.exit169.i.i.i.i.i.i ], [ %.2.idx.i18.i.i.i.i.i.i, %FSE_reloadDStream.exit77.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  %i.ww = icmp ult i64 %.0.i.i.i.i.i, -7
  br i1 %i.ww, label %.loopexit.i.i.i.i, label %HUF_readDTable.exit.thread.i.i.i

.loopexit.i.i.i.i:                                ; preds = %FSE_decompress.exit.i.i.i.i, %bb.n
  %.085.i.i.i.i = phi i64 [ 0, %bb.n ], [ %i.bo, %FSE_decompress.exit.i.i.i.i ]
  %.084.i.i.i.i = phi i64 [ %i.bu, %bb.n ], [ %.0.i.i.i.i.i, %FSE_decompress.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.q, i8 0, i64 68, i1 false)
  %.not200.i.i.i.i = icmp eq i64 %.084.i.i.i.i, 0
  br i1 %.not200.i.i.i.i, label %HUF_readDTable.exit.thread.i.i.i, label %.lr.ph188.preheader.i.i.i.i

.lr.ph188.preheader.i.i.i.i:                      ; preds = %.loopexit.i.i.i.i, %.loopexit.thread.i.i.i.i
  %.084338.i.i.i.i = phi i64 [ %i.bv, %.loopexit.thread.i.i.i.i ], [ %.084.i.i.i.i, %.loopexit.i.i.i.i ] ; 3 uses
  %.085336.i.i.i.i = phi i64 [ %i.bx, %.loopexit.thread.i.i.i.i ], [ %.085.i.i.i.i, %.loopexit.i.i.i.i ]
  br label %.lr.ph188.i.i.i.i

.lr.ph188.i.i.i.i:                                ; preds = %bb.cr, %.lr.ph188.preheader.i.i.i.i
  %i.wx = phi i64 [ %8, %bb.cr ], [ 0, %.lr.ph188.preheader.i.i.i.i ]
  %.183187.i.i.i.i = phi i32 [ %i.xi, %bb.cr ], [ 0, %.lr.ph188.preheader.i.i.i.i ]
  %.086186.i.i.i.i = phi i32 [ %7, %bb.cr ], [ 0, %.lr.ph188.preheader.i.i.i.i ]
  %i.wy = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.wx
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !13  ; 3 uses
  %i.xa = icmp ugt i8 %i.wz, 15
  br i1 %i.xa, label %HUF_readDTable.exit.thread.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph188.i.i.i.i
  %i.xb = zext nneg i8 %i.wz to i64
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.xb ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !14
  %i.xe = add i32 %i.xd, 1
  store i32 %i.xe, ptr %i.xc, align 4, !tbaa !14
  %i.xf = zext nneg i8 %i.wz to i32
  %i.xg = shl nuw nsw i32 1, %i.xf
  %i.xh = lshr i32 %i.xg, 1
  %7 = add i32 %i.xh, %.086186.i.i.i.i            ; 4 uses
  %i.xi = add i32 %.183187.i.i.i.i, 1             ; 2 uses
  %8 = zext i32 %i.xi to i64                      ; 2 uses
  %9 = icmp ugt i64 %.084338.i.i.i.i, %8
  br i1 %9, label %.lr.ph188.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !40

._crit_edge.i.i.i.i:                              ; preds = %bb.cr
  %i.xj = icmp eq i32 %7, 0
  br i1 %i.xj, label %HUF_readDTable.exit.thread.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge.i.i.i.i
  %i.xk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %7, i1 true) ; 4 uses
  %i.xl = xor i32 %i.xk, 31                       ; 3 uses
  %.not100.i.i.i.i = icmp samesign ult i32 %i.xl, 12
  br i1 %.not100.i.i.i.i, label %bb.ct, label %HUF_readDTable.exit.thread.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.xm = trunc nuw nsw i32 %i.xk to i16
  %i.xn = sub nuw nsw i16 32, %i.xm               ; 2 uses
  store i16 %i.xn, ptr %i.r, align 16, !tbaa !19
  %i.xo = shl nuw nsw i32 2, %i.xl
  %i.xp = sub i32 %i.xo, %7                       ; 2 uses
  %i.xq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.xp, i1 true) ; 2 uses
  %i.xr = lshr exact i32 -2147483648, %i.xq
  %.not101.i.i.i.i = icmp eq i32 %i.xr, %i.xp
  br i1 %.not101.i.i.i.i, label %bb.cu, label %HUF_readDTable.exit.thread.i.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.xs = sub nuw nsw i32 32, %i.xq               ; 2 uses
  %i.xt = trunc nuw nsw i32 %i.xs to i8
  %i.xu = getelementptr inbounds nuw i8, ptr %i.p, i64 %.084338.i.i.i.i
  store i8 %i.xt, ptr %i.xu, align 1, !tbaa !13
  %i.xv = zext nneg i32 %i.xs to i64
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.xv ; 2 uses
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !14
  %i.xy = add i32 %i.xx, 1
  store i32 %i.xy, ptr %i.xw, align 4, !tbaa !14
  %i.xz = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !14 ; 2 uses
  %i.yb = icmp ugt i32 %i.ya, 1
  %i.yc = and i32 %i.ya, 1
  %.not102.i.i.i.i = icmp eq i32 %i.yc, 0
  %or.cond.i.i.i.i = and i1 %i.yb, %.not102.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %.preheader109.preheader.i.i.i.i, label %HUF_readDTable.exit.thread.i.i.i

.preheader109.preheader.i.i.i.i:                  ; preds = %bb.cu
  %i.yd = sub nuw nsw i32 33, %i.xk
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.yd to i64
  %i.ye = add nsw i64 %wide.trip.count.i.i.i.i, -1 ; 3 uses
  %xtraiter694 = and i64 %i.ye, 1
  %i.yf = icmp eq i32 %i.xk, 31
  br i1 %i.yf, label %.preheader109.i.i.i.i.epil.preheader, label %.preheader109.preheader.i.i.i.i.new

.preheader109.preheader.i.i.i.i.new:              ; preds = %.preheader109.preheader.i.i.i.i
  %unroll_iter697 = and i64 %i.ye, -2
  br label %.preheader109.i.i.i.i

.preheader.i.i.i.i.unr-lcssa:                     ; preds = %.preheader109.i.i.i.i
  %lcmp.mod695.not = icmp eq i64 %xtraiter694, 0
  br i1 %lcmp.mod695.not, label %.preheader.i.i.i.i, label %.preheader109.i.i.i.i.epil.preheader

.preheader109.i.i.i.i.epil.preheader:             ; preds = %.preheader.i.i.i.i.unr-lcssa, %.preheader109.preheader.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 1, %.preheader109.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %.preheader.i.i.i.i.unr-lcssa ]
  %.081190.i.i.i.i.epil.init = phi i32 [ 0, %.preheader109.preheader.i.i.i.i ], [ %i.yu, %.preheader.i.i.i.i.unr-lcssa ]
  %lcmp.mod696 = trunc i64 %i.ye to i1
  tail call void @llvm.assume(i1 %lcmp.mod696)
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i.epil.init
  store i32 %.081190.i.i.i.i.epil.init, ptr %i.yg, align 4, !tbaa !14
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.unr-lcssa, %.preheader109.i.i.i.i.epil.preheader
  %i.yh = trunc nuw nsw i32 %i.xl to i8
  %i.yi = add nuw nsw i8 %i.yh, 2
  br label %bb.cv

.preheader109.i.i.i.i:                            ; preds = %.preheader109.i.i.i.i, %.preheader109.preheader.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 1, %.preheader109.preheader.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %.preheader109.i.i.i.i ] ; 4 uses
  %.081190.i.i.i.i = phi i32 [ 0, %.preheader109.preheader.i.i.i.i.new ], [ %i.yu, %.preheader109.i.i.i.i ] ; 2 uses
  %niter698 = phi i64 [ 0, %.preheader109.preheader.i.i.i.i.new ], [ %niter698.next.1, %.preheader109.i.i.i.i ]
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !14
  %i.yl = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.ym = add nsw i32 %i.yl, -1
  %i.yn = shl i32 %i.yk, %i.ym
  %i.yo = add i32 %i.yn, %.081190.i.i.i.i         ; 2 uses
  store i32 %.081190.i.i.i.i, ptr %i.yj, align 4, !tbaa !14
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i ; 2 uses
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !14
  %i.yr = trunc i64 %indvars.iv.next.i.i.i.i to i32
  %i.ys = add i32 %i.yr, -1
  %i.yt = shl i32 %i.yq, %i.ys
  %i.yu = add i32 %i.yt, %i.yo                    ; 2 uses
  store i32 %i.yo, ptr %i.yp, align 4, !tbaa !14
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter698.next.1 = add nuw i64 %niter698, 2     ; 2 uses
  %niter698.ncmp.1 = icmp eq i64 %niter698.next.1, %unroll_iter697
  br i1 %niter698.ncmp.1, label %.preheader.i.i.i.i.unr-lcssa, label %.preheader109.i.i.i.i, !llvm.loop !41

bb.cv:                                            ; preds = %._crit_edge194.i.i.i.i, %.preheader.i.i.i.i
  %indvars.iv283.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %indvars.iv.next284.i.i.i.i, %._crit_edge194.i.i.i.i ] ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv283.i.i.i.i
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !13  ; 3 uses
  %i.yx = zext nneg i8 %i.yw to i32
  %i.yy = shl nuw i32 1, %i.yx
  %i.yz = ashr i32 %i.yy, 1
  %i.za = trunc i64 %indvars.iv283.i.i.i.i to i8  ; 3 uses
  %i.zb = sub i8 %i.yi, %i.yw                     ; 3 uses
  %i.zc = zext i8 %i.yw to i64
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.zc ; 2 uses
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !14 ; 3 uses
  %i.zf = add i32 %i.yz, %i.ze                    ; 3 uses
  %i.zg = icmp ult i32 %i.ze, %i.zf
  br i1 %i.zg, label %iter.check545, label %._crit_edge194.i.i.i.i

iter.check545:                                    ; preds = %bb.cv
  %i.zh = zext i32 %i.ze to i64                   ; 6 uses
  %wide.trip.count281.i.i.i.i = zext i32 %i.zf to i64 ; 2 uses
  %i.zi = sub nsw i64 %wide.trip.count281.i.i.i.i, %i.zh ; 7 uses
  %min.iters.check530 = icmp ult i64 %i.zi, 4
  br i1 %min.iters.check530, label %.lr.ph193.i.i.i.i.preheader, label %vector.main.loop.iter.check531

vector.main.loop.iter.check531:                   ; preds = %iter.check545
  %min.iters.check532 = icmp ult i64 %i.zi, 16
  br i1 %min.iters.check532, label %vec.epilog.ph549, label %vector.ph533

vector.ph533:                                     ; preds = %vector.main.loop.iter.check531
  %i.zj = and i64 %i.zi, 12
  %n.vec534 = and i64 %i.zi, -16                  ; 4 uses
  %i.zk = add nsw i64 %n.vec534, %i.zh
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.za, i64 0
  %broadcast.splatinsert535 = insertelement <8 x i8> poison, i8 %i.zb, i64 0
  %interleaved.vec539 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert535, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  br label %vector.body537

vector.body537:                                   ; preds = %vector.body537, %vector.ph533
  %index538 = phi i64 [ 0, %vector.ph533 ], [ %index.next541, %vector.body537 ] ; 2 uses
  %i.zl = add nuw i64 %index538, %i.zh            ; 2 uses
  %i.zm = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.zl
  %i.zn = getelementptr [2 x i8], ptr %i.bm, i64 %i.zl
  %i.zo = getelementptr i8, ptr %i.zn, i64 16
  store <16 x i8> %interleaved.vec539, ptr %i.zm, align 2, !tbaa !13
  store <16 x i8> %interleaved.vec539, ptr %i.zo, align 2, !tbaa !13
  %index.next541 = add nuw i64 %index538, 16      ; 2 uses
  %i.zp = icmp eq i64 %index.next541, %n.vec534
  br i1 %i.zp, label %middle.block542, label %vector.body537, !llvm.loop !42

middle.block542:                                  ; preds = %vector.body537
  %cmp.n543 = icmp eq i64 %i.zi, %n.vec534
  br i1 %cmp.n543, label %._crit_edge194.i.i.i.i, label %vec.epilog.iter.check547

vec.epilog.iter.check547:                         ; preds = %middle.block542
  %min.epilog.iters.check548 = icmp eq i64 %i.zj, 0
  br i1 %min.epilog.iters.check548, label %.lr.ph193.i.i.i.i.preheader, label %vec.epilog.ph549, !prof !53

vec.epilog.ph549:                                 ; preds = %vector.main.loop.iter.check531, %vec.epilog.iter.check547
  %vec.epilog.resume.val544 = phi i64 [ %n.vec534, %vec.epilog.iter.check547 ], [ 0, %vector.main.loop.iter.check531 ]
  %n.vec550 = and i64 %i.zi, -4                   ; 3 uses
  %i.zq = add nsw i64 %n.vec550, %i.zh
  %broadcast.splatinsert551 = insertelement <4 x i8> poison, i8 %i.za, i64 0
  %broadcast.splatinsert553 = insertelement <4 x i8> poison, i8 %i.zb, i64 0
  %invariant.gep = getelementptr [2 x i8], ptr %i.bm, i64 %i.zh
  %interleaved.vec557 = shufflevector <4 x i8> %broadcast.splatinsert551, <4 x i8> %broadcast.splatinsert553, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body555

vec.epilog.vector.body555:                        ; preds = %vec.epilog.vector.body555, %vec.epilog.ph549
  %index556 = phi i64 [ %vec.epilog.resume.val544, %vec.epilog.ph549 ], [ %index.next558, %vec.epilog.vector.body555 ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index556
  store <8 x i8> %interleaved.vec557, ptr %gep, align 2, !tbaa !13
  %index.next558 = add nuw i64 %index556, 4       ; 2 uses
  %i.zr = icmp eq i64 %index.next558, %n.vec550
  br i1 %i.zr, label %vec.epilog.middle.block559, label %vec.epilog.vector.body555, !llvm.loop !43

vec.epilog.middle.block559:                       ; preds = %vec.epilog.vector.body555
  %cmp.n560 = icmp eq i64 %i.zi, %n.vec550
  br i1 %cmp.n560, label %._crit_edge194.i.i.i.i, label %.lr.ph193.i.i.i.i.preheader

.lr.ph193.i.i.i.i.preheader:                      ; preds = %iter.check545, %vec.epilog.iter.check547, %vec.epilog.middle.block559
  %indvars.iv277.i.i.i.i.ph = phi i64 [ %i.zh, %iter.check545 ], [ %i.zk, %vec.epilog.iter.check547 ], [ %i.zq, %vec.epilog.middle.block559 ]
  br label %.lr.ph193.i.i.i.i

.lr.ph193.i.i.i.i:                                ; preds = %.lr.ph193.i.i.i.i.preheader, %.lr.ph193.i.i.i.i
  %indvars.iv277.i.i.i.i = phi i64 [ %indvars.iv.next278.i.i.i.i, %.lr.ph193.i.i.i.i ], [ %indvars.iv277.i.i.i.i.ph, %.lr.ph193.i.i.i.i.preheader ] ; 2 uses
  %i.zs = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv277.i.i.i.i ; 2 uses
  store i8 %i.za, ptr %i.zs, align 2, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.zs, i64 1
  store i8 %i.zb, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !tbaa !13
  %indvars.iv.next278.i.i.i.i = add nuw nsw i64 %indvars.iv277.i.i.i.i, 1 ; 2 uses
  %exitcond282.not.i.i.i.i = icmp eq i64 %indvars.iv.next278.i.i.i.i, %wide.trip.count281.i.i.i.i
  br i1 %exitcond282.not.i.i.i.i, label %._crit_edge194.i.i.i.i, label %.lr.ph193.i.i.i.i, !llvm.loop !44

._crit_edge194.i.i.i.i:                           ; preds = %.lr.ph193.i.i.i.i, %middle.block542, %vec.epilog.middle.block559, %bb.cv
  store i32 %i.zf, ptr %i.zd, align 4, !tbaa !14
  %indvars.iv.next284.i.i.i.i = add i64 %indvars.iv283.i.i.i.i, 1 ; 2 uses
  %10 = and i64 %indvars.iv.next284.i.i.i.i, 4294967295
  %.not104.i.i.i.i = icmp ult i64 %.084338.i.i.i.i, %10
  br i1 %.not104.i.i.i.i, label %HUF_readDTable.exit.i.i.i, label %bb.cv, !llvm.loop !45

HUF_readDTable.exit.thread.i.i.i:                 ; preds = %.lr.ph188.i.i.i.i, %bb.cu, %bb.ct, %bb.cs, %._crit_edge.i.i.i.i, %.loopexit.i.i.i.i, %FSE_decompress.exit.i.i.i.i, %FSE_decompress.exit.thread.i.i.i.i, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #16
  br label %.sink.split.i.i

HUF_readDTable.exit.i.i.i:                        ; preds = %._crit_edge194.i.i.i.i
  %i.zt = add nuw nsw i64 %.085336.i.i.i.i, 1     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #16
  %.not17.i.i.i = icmp ult i64 %i.zt, %i.bl
  br i1 %.not17.i.i.i, label %bb.cw, label %.sink.split.i.i

bb.cw:                                            ; preds = %HUF_readDTable.exit.i.i.i
  %i.zu = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.zt ; 12 uses
  %i.zv = sub nuw nsw i64 %i.bl, %i.zt            ; 3 uses
  %i.zw = icmp ult i64 %i.zv, 6
  br i1 %i.zw, label %.sink.split.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.zx = icmp samesign ult i64 %i.bg, 15
  %i.zy = getelementptr inbounds i8, ptr %i.s, i64 -15
  %i.zz = select i1 %i.zx, ptr %i.bj, ptr %i.zy   ; 2 uses
  %i.aaa = zext nneg i16 %i.xn to i32             ; 2 uses
  %.val123.i.i.i.i = load i16, ptr %i.zu, align 1 ; 5 uses
  %i.aab = zext i16 %.val123.i.i.i.i to i64       ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zu, i64 2
  %.val122.i.i.i.i = load i16, ptr %i.aac, align 1 ; 5 uses
  %i.aad = zext i16 %.val122.i.i.i.i to i64       ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zu, i64 4
  %.val.i.i.i.i = load i16, ptr %i.aae, align 1   ; 5 uses
  %i.aaf = zext i16 %.val.i.i.i.i to i64          ; 2 uses
  %i.aag = add nsw i64 %i.zv, -6
  %i.aah = add nuw nsw i64 %i.aad, %i.aab
  %i.aai = add nuw nsw i64 %i.aah, %i.aaf         ; 2 uses
  %i.aaj = sub nsw i64 %i.aag, %i.aai
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zu, i64 6 ; 12 uses
  %i.aal = getelementptr i8, ptr %i.aak, i64 %i.aab ; 13 uses
  %i.aam = getelementptr i8, ptr %i.aal, i64 %i.aad ; 16 uses
  %i.aan = getelementptr i8, ptr %i.aam, i64 %i.aaf ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.aao = add nuw nsw i64 %i.aai, 6
  %.not.i18.i.i.i = icmp uge i64 %i.aao, %i.zv
  %i.aap = icmp eq i16 %.val123.i.i.i.i, 0
  %or.cond.i19.i.i.i = or i1 %i.aap, %.not.i18.i.i.i
  br i1 %or.cond.i19.i.i.i, label %HUF_decompress.exit.thread258.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aaq = icmp ugt i16 %.val123.i.i.i.i, 7
  br i1 %i.aaq, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.aar = getelementptr i8, ptr %i.aal, i64 -1
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !13 ; 2 uses
  %i.aat = icmp eq i8 %i.aas, 0
  br i1 %i.aat, label %HUF_decompress.exit.thread258.i.i, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.cz
  %i.aau = getelementptr inbounds i8, ptr %i.aal, i64 -8 ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.aau, align 1
  %i.aav = zext i8 %i.aas to i32
  %i.aaw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aav, i1 true)
  %i.aax = xor i32 %i.aaw, 31
  %i.aay = sub nuw nsw i32 8, %i.aax
  br label %bb.di

bb.da:                                            ; preds = %bb.cy
  %i.aaz = load i8, ptr %i.aak, align 1, !tbaa !13
  %i.aba = zext i8 %i.aaz to i64                  ; 7 uses
  switch i16 %.val123.i.i.i.i, label %bb.dh [
    i16 7, label %bb.db
    i16 6, label %bb.dc
    i16 5, label %bb.dd
    i16 4, label %bb.de
    i16 3, label %bb.df
    i16 2, label %bb.dg
  ]

bb.db:                                            ; preds = %bb.da
  %i.abb = getelementptr inbounds nuw i8, ptr %i.zu, i64 12
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !13
  %i.abd = zext i8 %i.abc to i64
  %i.abe = shl nuw nsw i64 %i.abd, 48
  %i.abf = or disjoint i64 %i.abe, %i.aba
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.abg = phi i64 [ %i.abf, %bb.db ], [ %i.aba, %bb.da ]
  %i.abh = getelementptr inbounds nuw i8, ptr %i.zu, i64 11
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !13
  %i.abj = zext i8 %i.abi to i64
  %i.abk = shl nuw nsw i64 %i.abj, 40
  %i.abl = add nuw nsw i64 %i.abk, %i.abg
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.da
  %i.abm = phi i64 [ %i.abl, %bb.dc ], [ %i.aba, %bb.da ]
  %i.abn = getelementptr inbounds nuw i8, ptr %i.zu, i64 10
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !13
  %i.abp = zext i8 %i.abo to i64
  %i.abq = shl nuw nsw i64 %i.abp, 32
  %i.abr = add nuw nsw i64 %i.abq, %i.abm
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.da
  %i.abs = phi i64 [ %i.abr, %bb.dd ], [ %i.aba, %bb.da ]
  %i.abt = getelementptr inbounds nuw i8, ptr %i.zu, i64 9
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !13
  %i.abv = zext i8 %i.abu to i64
  %i.abw = shl nuw nsw i64 %i.abv, 24
  %i.abx = add nuw nsw i64 %i.abw, %i.abs
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.da
  %i.aby = phi i64 [ %i.abx, %bb.de ], [ %i.aba, %bb.da ]
  %i.abz = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !13
  %i.acb = zext i8 %i.aca to i64
  %i.acc = shl nuw nsw i64 %i.acb, 16
  %i.acd = add nuw nsw i64 %i.acc, %i.aby
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.da
  %i.ace = phi i64 [ %i.acd, %bb.df ], [ %i.aba, %bb.da ]
  %i.acf = getelementptr inbounds nuw i8, ptr %i.zu, i64 7
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !13
  %i.ach = zext i8 %i.acg to i64
  %i.aci = shl nuw nsw i64 %i.ach, 8
  %i.acj = add nuw nsw i64 %i.aci, %i.ace
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.da
  %.sroa.0218.1.i.i.i.i = phi i64 [ %i.aba, %bb.da ], [ %i.acj, %bb.dg ]
  %i.ack = getelementptr i8, ptr %i.aal, i64 -1
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !13 ; 2 uses
  %i.acm = icmp eq i8 %i.acl, 0
  br i1 %i.acm, label %HUF_decompress.exit.thread258.i.i, label %.thread48.i.i.i.i.i

.thread48.i.i.i.i.i:                              ; preds = %bb.dh
  %i.acn = zext i8 %i.acl to i32
  %i.aco = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.acn, i1 true)
  %i.acp = shl nuw nsw i16 %.val123.i.i.i.i, 3
  %i.acq = zext nneg i16 %i.acp to i32
  %reass.sub134 = sub nsw i32 %i.aco, %i.acq
  %i.acr = add nsw i32 %reass.sub134, 41
  br label %bb.di

bb.di:                                            ; preds = %.thread48.i.i.i.i.i, %.thread.i.i.i.i.i
  %.sroa.17.1.i.i.i.i = phi i32 [ %i.aay, %.thread.i.i.i.i.i ], [ %i.acr, %.thread48.i.i.i.i.i ] ; 2 uses
  %.sroa.0218.2.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %.sroa.0218.1.i.i.i.i, %.thread48.i.i.i.i.i ] ; 2 uses
  %.sroa.31228.1.i.i.i.i = phi ptr [ %i.aau, %.thread.i.i.i.i.i ], [ %i.aak, %.thread48.i.i.i.i.i ] ; 2 uses
  %i.acs = icmp eq i16 %.val122.i.i.i.i, 0
  br i1 %i.acs, label %HUF_decompress.exit.thread258.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.act = icmp ugt i16 %.val122.i.i.i.i, 7
  %i.acu = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.aal, ptr %i.acu, align 8, !tbaa !29
  br i1 %i.act, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.acv = getelementptr inbounds i8, ptr %i.aam, i64 -8 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.acv, ptr %i.acw, align 8, !tbaa !30
  %.val.i126.i.i.i.i = load i64, ptr %i.acv, align 1 ; 2 uses
  store i64 %.val.i126.i.i.i.i, ptr %5, align 8, !tbaa !31
  %i.acx = lshr i64 %.val.i126.i.i.i.i, 56        ; 2 uses
  %i.acy = icmp eq i64 %i.acx, 0
  br i1 %i.acy, label %HUF_decompress.exit.thread258.i.i, label %.thread.i127.i.i.i.i

.thread.i127.i.i.i.i:                             ; preds = %bb.dk
  %i.acz = trunc nuw nsw i64 %i.acx to i32
  %i.ada = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.acz, i1 true)
  %i.adb = xor i32 %i.ada, 31
  %i.adc = sub nuw nsw i32 8, %i.adb
  %i.add = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.adc, ptr %i.add, align 8, !tbaa !32
  br label %bb.dt

bb.dl:                                            ; preds = %bb.dj
  %i.ade = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.aal, ptr %i.ade, align 8, !tbaa !30
  %i.adf = load i8, ptr %i.aal, align 1, !tbaa !13
  %i.adg = zext i8 %i.adf to i64                  ; 7 uses
  store i64 %i.adg, ptr %5, align 8, !tbaa !31
  switch i16 %.val122.i.i.i.i, label %bb.ds [
    i16 7, label %bb.dm
    i16 6, label %bb.dn
    i16 5, label %bb.do
    i16 4, label %bb.dp
    i16 3, label %bb.dq
    i16 2, label %bb.dr
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.adh = getelementptr inbounds nuw i8, ptr %i.aal, i64 6
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !13
  %i.adj = zext i8 %i.adi to i64
  %i.adk = shl nuw nsw i64 %i.adj, 48
end_hunk_0
