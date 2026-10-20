Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tvl1_optical_flow?download=true
inline.NumInlined: 212
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZL15drawOpticalFlowRKN2cv4Mat_INS_6Point_IfEEEERNS_3MatEf:bb.a
  %i.w = zext i1 %i.v to i32
  %i.x = select i1 %i.s, i32 %i.u, i32 %i.w
  %.sroa.2.0.insert.ext.i = zext i32 %i.x to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.r to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  tail call void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %1, i64 %.sroa.0.0.insert.insert.i, i32 noundef 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %4, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.z, align 8, !tbaa !32
  store i64 17179869185, ptr %i.y, align 8, !tbaa !34
  %i.aa = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.ab = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !35 ; 4 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.preheader54.lr.ph, label %._crit_edge63

.preheader54.lr.ph:                               ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !36 ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.preheader54.lr.ph.split.us, label %.preheader.lr.ph

.preheader54.lr.ph.split.us:                      ; preds = %.preheader54.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !37
  %.fr64 = freeze i32 %i.al
  %i.am = icmp slt i32 %.fr64, 2
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.ao = load i64, ptr %i.ai, align 8
  br i1 %i.am, label %.preheader54.us.us.preheader, label %.preheader54.us.preheader

.preheader54.us.preheader:                        ; preds = %.preheader54.lr.ph.split.us
  %wide.trip.count72 = zext nneg i32 %i.ad to i64
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %.preheader54.us

.preheader54.us.us.preheader:                     ; preds = %.preheader54.lr.ph.split.us
  %wide.trip.count77 = zext nneg i32 %i.ag to i64
  br label %.preheader54.us.us

.preheader54.us.us:                               ; preds = %.preheader54.us.us.preheader, %._crit_edge.us.us
  %.058.us.us = phi i32 [ %i.az, %._crit_edge.us.us ], [ 0, %.preheader54.us.us.preheader ]
  %.04957.us.us = phi float [ %.2.us.us, %._crit_edge.us.us ], [ 1.000000e+00, %.preheader54.us.us.preheader ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader54.us.us, %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us
  %indvars.iv74 = phi i64 [ 0, %.preheader54.us.us ], [ %indvars.iv.next75, %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us ] ; 2 uses
  %.155.us.us = phi float [ %.04957.us.us, %.preheader54.us.us ], [ %.2.us.us, %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv74
  %.sroa.011.0.copyload.us.us = load <2 x float>, ptr %i.ap, align 4, !tbaa !40 ; 4 uses
  %.sroa.0.0.vec.extract.i.us.us = extractelement <2 x float> %.sroa.011.0.copyload.us.us, i64 0 ; 3 uses
  %i.aq = fcmp ord float %.sroa.0.0.vec.extract.i.us.us, 0.000000e+00
  br i1 %i.aq, label %bb.i, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us

bb.i:                                             ; preds = %bb.h
  %i.ar = call <2 x float> @llvm.fabs.v2f32(<2 x float> %.sroa.011.0.copyload.us.us)
  %i.as = fcmp uge <2 x float> %i.ar, splat (float 1.000000e+09)
  %i.at = bitcast <2 x i1> %i.as to i2
  %i.au = icmp eq i2 %i.at, 0
  br i1 %i.au, label %bb.j, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us

bb.j:                                             ; preds = %bb.i
  %foldExtExtBinop = fmul nnan <2 x float> %.sroa.011.0.copyload.us.us, %.sroa.011.0.copyload.us.us
  %i.av = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.aw = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.us.us, float %.sroa.0.0.vec.extract.i.us.us, float %i.av)
  %i.ax = call noundef float @sqrtf(float noundef %i.aw) #16 ; 2 uses
  %i.ay = fcmp olt float %.155.us.us, %i.ax
  %.sroa.speculated.us.us = select i1 %i.ay, float %i.ax, float %.155.us.us
  br label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us

_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us: ; preds = %bb.j, %bb.i, %bb.h
  %.2.us.us = phi float [ %.sroa.speculated.us.us, %bb.j ], [ %.155.us.us, %bb.h ], [ %.155.us.us, %bb.i ] ; 3 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge.us.us, label %bb.h, !llvm.loop !87

._crit_edge.us.us:                                ; preds = %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us.us
  %i.az = add nuw nsw i32 %.058.us.us, 1          ; 2 uses
  %exitcond79.not = icmp eq i32 %i.az, %i.ad
  br i1 %exitcond79.not, label %.preheader.lr.ph, label %.preheader54.us.us, !llvm.loop !88

.preheader54.us:                                  ; preds = %.preheader54.us.preheader, %._crit_edge.us
  %indvars.iv69 = phi i64 [ 0, %.preheader54.us.preheader ], [ %indvars.iv.next70, %._crit_edge.us ] ; 2 uses
  %.04957.us = phi float [ 1.000000e+00, %.preheader54.us.preheader ], [ %.2.us, %._crit_edge.us ]
  %i.ba = mul i64 %i.ao, %indvars.iv69
  %.sink.i.us = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ba
  br label %bb.k

bb.k:                                             ; preds = %.preheader54.us, %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader54.us ], [ %indvars.iv.next, %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us ] ; 2 uses
  %.155.us = phi float [ %.04957.us, %.preheader54.us ], [ %.2.us, %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.us, i64 %indvars.iv
  %.sroa.011.0.copyload.us = load <2 x float>, ptr %i.bb, align 4, !tbaa !40 ; 4 uses
  %.sroa.0.0.vec.extract.i.us = extractelement <2 x float> %.sroa.011.0.copyload.us, i64 0 ; 3 uses
  %i.bc = fcmp ord float %.sroa.0.0.vec.extract.i.us, 0.000000e+00
  br i1 %i.bc, label %bb.l, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us

bb.l:                                             ; preds = %bb.k
  %i.bd = call <2 x float> @llvm.fabs.v2f32(<2 x float> %.sroa.011.0.copyload.us)
  %i.be = fcmp uge <2 x float> %i.bd, splat (float 1.000000e+09)
  %i.bf = bitcast <2 x i1> %i.be to i2
  %i.bg = icmp eq i2 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us

bb.m:                                             ; preds = %bb.l
  %foldExtExtBinop3 = fmul nnan <2 x float> %.sroa.011.0.copyload.us, %.sroa.011.0.copyload.us
  %i.bh = extractelement <2 x float> %foldExtExtBinop3, i64 1
  %i.bi = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.us, float %.sroa.0.0.vec.extract.i.us, float %i.bh)
  %i.bj = call noundef float @sqrtf(float noundef %i.bi) #16 ; 2 uses
  %i.bk = fcmp olt float %.155.us, %i.bj
  %.sroa.speculated.us = select i1 %i.bk, float %i.bj, float %.155.us
  br label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us

_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us:  ; preds = %bb.m, %bb.l, %bb.k
  %.2.us = phi float [ %.sroa.speculated.us, %bb.m ], [ %.155.us, %bb.k ], [ %.155.us, %bb.l ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.k, !llvm.loop !87

._crit_edge.us:                                   ; preds = %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread.us
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %.preheader.lr.ph, label %.preheader54.us, !llvm.loop !88

.preheader.lr.ph:                                 ; preds = %._crit_edge.us, %._crit_edge.us.us, %.preheader54.lr.ph
  %.049.lcssa95 = phi float [ 1.000000e+00, %.preheader54.lr.ph ], [ %.2.us.us, %._crit_edge.us.us ], [ %.2.us, %._crit_edge.us ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bs = load i32, ptr %i.bl, align 4, !tbaa !36 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.preheader.preheader, label %._crit_edge63

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bu = insertelement <2 x float> poison, float %.049.lcssa95, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.bw = phi i32 [ %i.ca, %._crit_edge ], [ %i.ad, %.preheader.preheader ]
  %i.bx = phi i32 [ %i.cb, %._crit_edge ], [ %i.bs, %.preheader.preheader ] ; 2 uses
  %i.by = phi i32 [ %i.cc, %._crit_edge ], [ %i.bs, %.preheader.preheader ] ; 2 uses
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

._crit_edge63:                                    ; preds = %._crit_edge, %_ZNK2cv8MatShapeclEv.exit, %.preheader.lr.ph
  ret void

._crit_edge.loopexit:                             ; preds = %_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread
  %.pre86 = load i32, ptr %i.ac, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ca = phi i32 [ %.pre86, %._crit_edge.loopexit ], [ %i.bw, %.preheader ] ; 2 uses
  %i.cb = phi i32 [ %i.ek, %._crit_edge.loopexit ], [ %i.bx, %.preheader ]
  %i.cc = phi i32 [ %i.ek, %._crit_edge.loopexit ], [ %i.by, %.preheader ]
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.cd = sext i32 %i.ca to i64
  %i.ce = icmp slt i64 %indvars.iv.next84, %i.cd
  br i1 %i.ce, label %.preheader, label %._crit_edge63, !llvm.loop !89

.lr.ph:                                           ; preds = %.preheader, %_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread
  %i.cf = phi i32 [ %i.ek, %_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread ], [ %i.bx, %.preheader ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread ], [ 0, %.preheader ] ; 3 uses
  %i.cg = load i32, ptr %i.bm, align 4, !tbaa !37
  %i.ch = icmp slt i32 %i.cg, 2
  %i.ci = load ptr, ptr %i.bn, align 8, !tbaa !38
  %i.cj = load i64, ptr %i.bo, align 8
  %i.ck = mul i64 %i.cj, %indvars.iv83
  %.sink.idx.i40 = select i1 %i.ch, i64 0, i64 %i.ck
  %.sink.i41 = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sink.idx.i40
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sink.i41, i64 %indvars.iv80
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.cl, align 4, !tbaa !40 ; 3 uses
  %.sroa.0.0.vec.extract.i42 = extractelement <2 x float> %.sroa.01.0.copyload, i64 0
  %i.cm = fcmp ord float %.sroa.0.0.vec.extract.i42, 0.000000e+00
  br i1 %i.cm, label %bb.n, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread

bb.n:                                             ; preds = %.lr.ph
  %i.cn = call <2 x float> @llvm.fabs.v2f32(<2 x float> %.sroa.01.0.copyload)
  %i.co = fcmp uge <2 x float> %i.cn, splat (float 1.000000e+09)
  %i.cp = bitcast <2 x i1> %i.co to i2
  %i.cq = icmp eq i2 %i.cp, 0
  br i1 %i.cq, label %bb.o, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread

bb.o:                                             ; preds = %bb.n
  %i.cr = fdiv <2 x float> %.sroa.01.0.copyload, %i.bv ; 2 uses
  %i.cs = load atomic i8, ptr @_ZGVZL12computeColorffE10colorWheel acquire, align 8, !noalias !93
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %bb.p, label %bb.q, !prof !94

bb.p:                                             ; preds = %bb.o
  %i.cu = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL12computeColorffE10colorWheel) #16, !noalias !93
  %.not.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i, label %bb.q, label %.preheader91.preheader.i

.preheader91.preheader.i:                         ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(660) @_ZZL12computeColorffE10colorWheel, i8 0, i64 660, i1 false), !tbaa !34, !noalias !93
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL12computeColorffE10colorWheel) #16, !noalias !93
  br label %bb.q

bb.q:                                             ; preds = %.preheader91.preheader.i, %bb.p, %bb.o
  %.b.i = load i1, ptr @_ZZL12computeColorffE5first, align 1, !noalias !93
  br i1 %.b.i, label %_ZL12computeColorff.exit, label %.preheader90.preheader.i

.preheader90.preheader.i:                         ; preds = %bb.q
  store <4 x i32> <i32 255, i32 0, i32 0, i32 255>, ptr @_ZZL12computeColorffE10colorWheel, align 16, !noalias !93
  store <4 x i32> <i32 17, i32 0, i32 255, i32 34>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 16), align 16, !noalias !93
  store <4 x i32> <i32 0, i32 255, i32 51, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 32), align 16, !noalias !93
  store <4 x i32> <i32 255, i32 68, i32 0, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 48), align 16, !noalias !93
  store <4 x i32> <i32 85, i32 0, i32 255, i32 102>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 64), align 16, !noalias !93
  store <4 x i32> <i32 0, i32 255, i32 119, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 80), align 16, !noalias !93
  store <4 x i32> <i32 255, i32 136, i32 0, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 96), align 16, !noalias !93
  store <4 x i32> <i32 153, i32 0, i32 255, i32 170>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 112), align 16, !noalias !93
  store <4 x i32> <i32 0, i32 255, i32 187, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 128), align 16, !noalias !93
  store <4 x i32> <i32 255, i32 204, i32 0, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 144), align 16, !noalias !93
  store <4 x i32> <i32 221, i32 0, i32 255, i32 238>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 160), align 16, !noalias !93
  store <4 x i32> <i32 0, i32 255, i32 255, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 176), align 16, !noalias !93
  store <4 x i32> <i32 213, i32 255, i32 0, i32 170>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 192), align 16, !noalias !93
  store <4 x i32> <i32 255, i32 0, i32 128, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 208), align 16, !noalias !93
  store <4 x i32> <i32 0, i32 85, i32 255, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 224), align 16, !noalias !93
  store <4 x i32> <i32 43, i32 255, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 240), align 16, !noalias !93
  store <4 x i32> <i32 255, i32 0, i32 0, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 256), align 16, !noalias !93
  store <4 x i32> <i32 63, i32 0, i32 255, i32 127>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 272), align 16, !noalias !93
  store <4 x i32> <i32 0, i32 255, i32 191, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 288), align 16, !noalias !93
  store <4 x i32> <i32 255, i32 255, i32 0, i32 232>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 304), align 16, !noalias !93
  store <4 x i32> <i32 255, i32 0, i32 209, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 320), align 16, !noalias !93
  store <4 x i32> <i32 0, i32 186, i32 255, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 336), align 16, !noalias !93
  store <4 x i32> <i32 163, i32 255, i32 0, i32 140>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 352), align 16, !noalias !93
  store <4 x i32> <i32 255, i32 0, i32 116, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 368), align 16, !noalias !93
  store <4 x i32> <i32 0, i32 93, i32 255, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 384), align 16, !noalias !93
  store <4 x i32> <i32 70, i32 255, i32 0, i32 47>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 400), align 16, !noalias !93
  store <4 x i32> <i32 255, i32 0, i32 24, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 416), align 16, !noalias !93
  store <4 x i32> <i32 0, i32 0, i32 255, i32 19>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 432), align 16, !noalias !93
  store <4 x i32> <i32 0, i32 255, i32 39, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 448), align 16, !noalias !93
  store <4 x i32> <i32 255, i32 58, i32 0, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 464), align 16, !noalias !93
  store <4 x i32> <i32 78, i32 0, i32 255, i32 98>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 480), align 16, !noalias !93
  store <4 x i32> <i32 0, i32 255, i32 117, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 496), align 16, !noalias !93
  store <4 x i32> <i32 255, i32 137, i32 0, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 512), align 16, !noalias !93
  store <4 x i32> <i32 156, i32 0, i32 255, i32 176>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 528), align 16, !noalias !93
  store <4 x i32> <i32 0, i32 255, i32 196, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 544), align 16, !noalias !93
  store <4 x i32> <i32 255, i32 215, i32 0, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 560), align 16, !noalias !93
  store <4 x i32> <i32 235, i32 0, i32 255, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 576), align 16, !noalias !93
  store <4 x i32> <i32 0, i32 255, i32 255, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 592), align 16, !noalias !93
  store <4 x i32> <i32 213, i32 255, i32 0, i32 170>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 608), align 16, !noalias !93
  store <4 x i32> <i32 255, i32 0, i32 128, i32 255>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 624), align 16, !noalias !93
  store <4 x i32> <i32 0, i32 85, i32 255, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 640), align 16, !noalias !93
  store i32 43, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12computeColorffE10colorWheel, i64 656), align 16, !noalias !93
  store i1 true, ptr @_ZZL12computeColorffE5first, align 1, !noalias !93
  br label %_ZL12computeColorff.exit

_ZL12computeColorff.exit:                         ; preds = %bb.q, %.preheader90.preheader.i
  %6 = extractelement <2 x float> %i.cr, i64 1    ; 3 uses
  %7 = fmul float %6, %6
  %i.cv = extractelement <2 x float> %i.cr, i64 0 ; 3 uses
  %8 = call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %7)
  %sqrt.i = call float @llvm.sqrt.f32(float %8)   ; 2 uses
  %9 = fneg float %6
  %10 = fneg float %i.cv
  %i.cw = call noundef float @atan2f(float noundef %9, float noundef %10) #16, !noalias !93
  %i.cx = fdiv float %i.cw, f0x40490FDB
  %i.cy = fadd float %i.cx, 1.000000e+00
  %i.cz = fmul float %i.cy, 5.000000e-01
  %i.da = fmul float %i.cz, 5.400000e+01          ; 2 uses
  %i.db = fptosi float %i.da to i32               ; 3 uses
  %i.dc = add nsw i32 %i.db, 1
  %i.dd = srem i32 %i.dc, 55
  %i.de = sitofp i32 %i.db to float
  %i.df = fsub float %i.da, %i.de                 ; 3 uses
  %i.dg = sext i32 %i.db to i64
  %i.dh = getelementptr inbounds [12 x i8], ptr @_ZZL12computeColorffE10colorWheel, i64 %i.dg ; 3 uses
  %i.di = sext i32 %i.dd to i64
  %i.dj = getelementptr inbounds [12 x i8], ptr @_ZZL12computeColorffE10colorWheel, i64 %i.di ; 3 uses
  %11 = fsub float 1.000000e+00, %i.df            ; 2 uses
  %12 = fcmp ugt float %sqrt.i, 1.000000e+00      ; 2 uses
  %13 = fneg float %sqrt.i                        ; 2 uses
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !34, !noalias !93
  %i.dl = sitofp i32 %i.dk to float
  %i.dm = fdiv float %i.dl, 2.550000e+02
  %i.dn = load i32, ptr %i.dj, align 4, !tbaa !34, !noalias !93
  %i.do = sitofp i32 %i.dn to float
  %i.dp = fdiv nnan float %i.do, 2.550000e+02
  %14 = fmul float %i.dp, %i.df
  %15 = call float @llvm.fmuladd.f32(float %11, float %i.dm, float %14) ; 2 uses
  %16 = fsub float 1.000000e+00, %15
  %17 = call float @llvm.fmuladd.f32(float %13, float %16, float 1.000000e+00)
  %18 = fmul float %15, 7.500000e-01
  %.0.i = select i1 %12, float %18, float %17
  %19 = fmul float %.0.i, 2.550000e+02
  %20 = fptoui float %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %22 = load i32, ptr %21, align 4, !tbaa !34, !noalias !93
  %23 = sitofp i32 %22 to float
  %24 = fdiv float %23, 2.550000e+02
  %25 = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %26 = load i32, ptr %25, align 4, !tbaa !34, !noalias !93
  %27 = sitofp i32 %26 to float
  %28 = fdiv nnan float %27, 2.550000e+02
  %29 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %30 = load i32, ptr %29, align 4, !tbaa !34, !noalias !93
  %31 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %32 = load i32, ptr %31, align 4, !tbaa !34, !noalias !93
  %33 = insertelement <2 x i32> poison, i32 %30, i64 0
  %34 = insertelement <2 x i32> %33, i32 %32, i64 1
  %35 = sitofp <2 x i32> %34 to <2 x float>
  %36 = fdiv <2 x float> %35, splat (float 2.550000e+02) ; 2 uses
  %37 = insertelement <2 x float> poison, float %i.df, i64 0
  %38 = shufflevector <2 x float> %37, <2 x float> poison, <2 x i32> zeroinitializer
  %39 = insertelement <2 x float> %36, float %28, i64 0
  %40 = fmul <2 x float> %38, %39
  %41 = insertelement <2 x float> poison, float %11, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %44 = insertelement <2 x float> %43, float %24, i64 0
  %45 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %42, <2 x float> %44, <2 x float> %40) ; 2 uses
  %i.dq = fsub <2 x float> splat (float 1.000000e+00), %45
  %i.dr = insertelement <2 x float> poison, float %13, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.dq, <2 x float> splat (float 1.000000e+00))
  %i.du = fmul <2 x float> %45, splat (float 7.500000e-01)
  %i.dv = insertelement <2 x i1> poison, i1 %12, i64 0
  %i.dw = shufflevector <2 x i1> %i.dv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dx = select <2 x i1> %i.dw, <2 x float> %i.du, <2 x float> %i.dt ; 2 uses
  %i.dy = extractelement <2 x float> %i.dx, i64 0
  %i.dz = fmul float %i.dy, 2.550000e+02
  %i.ea = fptoui float %i.dz to i8
  %i.eb = extractelement <2 x float> %i.dx, i64 1
  %i.ec = fmul float %i.eb, 2.550000e+02
  %i.ed = fptoui float %i.ec to i8
  %i.ee = load i32, ptr %i.bp, align 4, !tbaa !37
  %i.ef = icmp slt i32 %i.ee, 2
  %i.eg = load ptr, ptr %i.bq, align 8, !tbaa !38
  %i.eh = load i64, ptr %i.br, align 8
  %i.ei = mul i64 %i.eh, %indvars.iv83
  %.sink.idx.i46 = select i1 %i.ef, i64 0, i64 %i.ei
  %.sink.i47 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sink.idx.i46
  %i.ej = getelementptr inbounds nuw [3 x i8], ptr %.sink.i47, i64 %indvars.iv80 ; 3 uses
  store i8 %i.ed, ptr %i.ej, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  store i8 %i.ea, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  store i8 %20, ptr %.sroa.5.0..sroa_idx, align 1
  %.pre = load i32, ptr %i.bl, align 4, !tbaa !36
  br label %_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread

_Z13isFlowCorrectN2cv6Point_IfEE.exit45.thread:   ; preds = %.lr.ph, %bb.n, %_ZL12computeColorff.exit
  %i.ek = phi i32 [ %i.cf, %.lr.ph ], [ %i.cf, %bb.n ], [ %.pre, %_ZL12computeColorff.exit ] ; 4 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp slt i64 %indvars.iv.next81, %i.el
  br i1 %i.em, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !92
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL22writeOpticalFlowToFileRKN2cv4Mat_INS_6Point_IfEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr %.0.val) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::basic_ofstream", align 8 ; 11 uses
  %2 = alloca %"class.cv::Point_", align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef %.0.val, i32 noundef 4)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZZL22writeOpticalFlowToFileRKN2cv4Mat_INS_6Point_IfEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14FLO_TAG_STRING, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 4)
          to label %.preheader1 unwind label %bb.c ; 0 uses

.preheader1:                                      ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.preheader.lr.ph, label %._crit_edge4

.preheader.lr.ph:                                 ; preds = %.preheader1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.b, align 4, !tbaa !36   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader, label %._crit_edge4

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.n = phi i32 [ %i.r, %._crit_edge ], [ %i.f, %.preheader.lr.ph ]
  %i.o = phi i32 [ %i.s, %._crit_edge ], [ %i.l, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader1
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void

bb.c:                                             ; preds = %bb.a, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %i.d, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.r = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.n, %.preheader ] ; 2 uses
  %i.s = phi i32 [ %i.ae, %._crit_edge.loopexit ], [ %i.o, %.preheader ]
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1 ; 2 uses
  %i.t = sext i32 %i.r to i64
  %i.u = icmp slt i64 %indvars.iv.next8, %i.t
  br i1 %i.u, label %.preheader, label %._crit_edge4, !llvm.loop !95

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.v = load i32, ptr %i.h, align 4, !tbaa !37
  %i.w = icmp slt i32 %i.v, 2
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.y = load i64, ptr %i.j, align 8
  %i.z = mul i64 %i.y, %indvars.iv7
  %.sink.idx.i = select i1 %i.w, i64 0, i64 %i.z
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sink.idx.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %indvars.iv
  %i.ab = load i64, ptr %i.aa, align 4, !tbaa !40
  store i64 %i.ab, ptr %2, align 8, !tbaa !40
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2, i64 noundef 4)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %.lr.ph
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.k, i64 noundef 4)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !36  ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !96

bb.f:                                             ; preds = %bb.d, %.lr.ph
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.f ], [ %i.q, %bb.c ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef i32 @_ZN2cv7waitKeyEi(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv7optflow19DualTVL1OpticalFlowELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !101
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !97
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !97
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !34
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !102

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, i32 noundef) unnamed_addr #2 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #7 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !103
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !34   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !34
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !103
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

declare void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !13, i64 8, !5, i64 16}
!16 = !{!15, !10, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!15, !13, i64 8}
!19 = !{!"vtable pointer", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTSN2cv12MatAllocatorE", !9, i64 0}
!22 = !{!"p1 _ZTSN2cv8UMatDataE", !9, i64 0}
!23 = !{!"_ZTSN2cv10DataLayoutE", !5, i64 0}
!24 = !{!"_ZTSN2cv8MatShapeE", !6, i64 0, !23, i64 4, !6, i64 8, !5, i64 12}
!25 = !{!"_ZTSN2cv7MatStepE", !5, i64 0}
!26 = !{!"_ZTSN2cv3MatE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !21, i64 56, !22, i64 64, !24, i64 72, !25, i64 128}
!27 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!28 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 0}
!29 = !{!"_ZTSN2cv5Size_IiEE", !6, i64 0, !6, i64 4}
!30 = !{!"_ZTSN2cv11_InputArrayE", !6, i64 0, !9, i64 8, !29, i64 16}
!31 = !{!30, !6, i64 0}
!32 = !{!30, !9, i64 8}
!33 = !{!24, !6, i64 0}
!34 = !{!6, !6, i64 0}
!35 = !{!26, !6, i64 8}
!36 = !{!26, !6, i64 12}
!37 = !{!26, !6, i64 4}
!38 = !{!26, !10, i64 24}
!39 = !{!"float", !5, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unswitch.partial.disable"}
!43 = distinct !{!43, i1 true, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!44 = distinct !{!44, !43, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!45 = distinct !{!45, i1 true, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!46 = distinct !{!46, !45, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!47 = distinct !{!47, i1 true, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!48 = distinct !{!48, !47, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!49 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!50 = distinct !{!50, i1 true, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!51 = distinct !{!51, !50, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!52 = distinct !{null}
!53 = !{!44}
!54 = !{!46}
!55 = !{!48}
!56 = !{!10, !10, i64 0}
!57 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!58 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!59 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!60 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !13, i64 8}
!61 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!62 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!63 = !{!"_ZTSSt6locale", !62, i64 0}
!64 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !57, i64 24, !58, i64 28, !58, i64 32, !59, i64 40, !60, i64 48, !5, i64 64, !6, i64 192, !61, i64 200, !63, i64 208}
!65 = !{!64, !58, i64 32}
!66 = !{!"p1 _ZTSSo", !9, i64 0}
!67 = !{!"bool", !5, i64 0}
!68 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 0}
!69 = !{!"p1 _ZTSSt5ctypeIcE", !9, i64 0}
!70 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!71 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!72 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !64, i64 0, !66, i64 216, !5, i64 224, !67, i64 225, !68, i64 232, !69, i64 240, !70, i64 248, !71, i64 256}
!73 = !{!72, !69, i64 240}
!74 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!75 = !{!"p1 _ZTS15__locale_struct", !9, i64 0}
!76 = !{!"p1 int", !9, i64 0}
!77 = !{!"p1 short", !9, i64 0}
!78 = !{!"_ZTSSt5ctypeIcE", !74, i64 0, !75, i64 16, !67, i64 24, !76, i64 32, !76, i64 40, !77, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!79 = !{!78, !5, i64 56}
!80 = !{!51}
!81 = !{!26, !6, i64 0}
!82 = !{!"p1 _ZTSN2cv7optflow19DualTVL1OpticalFlowE", !9, i64 0}
!83 = !{!"_ZTSSt12__shared_ptrIN2cv7optflow19DualTVL1OpticalFlowELN9__gnu_cxx12_Lock_policyE2EE", !82, i64 0, !28, i64 8}
!84 = !{!83, !82, i64 0}
!85 = !{!29, !6, i64 0}
!86 = !{!29, !6, i64 4}
!87 = distinct !{!87, !41}
!88 = distinct !{!88, !41}
!89 = distinct !{!89, !41, !42}
!90 = distinct !{!90, i1 true, !"_ZL12computeColorff"}
!91 = distinct !{!91, !90, !"_ZL12computeColorff: argument 0"}
!92 = distinct !{!92, !41}
!93 = !{!91}
!94 = !{!"branch_weights", i32 1, i32 1048575}
!95 = distinct !{!95, !41, !42}
!96 = distinct !{!96, !41}
!97 = distinct !{null, null}
!98 = !{!28, !27, i64 0}
!99 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!100 = !{!99, !6, i64 8}
!101 = !{!99, !6, i64 12}
!102 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!103 = distinct !{null}
end_hunk_0
