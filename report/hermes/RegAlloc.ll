inline.NumInlined: 1999
inline.NumDeleted: 790
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN6hermes17RegisterAllocator23calculateGlobalLivenessEN4llvh8ArrayRefIPNS_10BasicBlockEEE:bb.a
bb.an:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i95
  %i.tr = shl i32 %i.sp, 1
  br label %.sink.split.i.i.i98

bb.ao:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i95
  %i.ts = load i32, ptr %i.o, align 4, !tbaa !158
  %.neg.i.i.i103 = xor i32 %i.tn, -1
  %.neg12.i.i.i104 = add i32 %i.sp, %.neg.i.i.i103
  %i.tt = sub i32 %.neg12.i.i.i104, %i.ts
  %i.tu = lshr i32 %i.sp, 3
  %.not10.i.i.i105 = icmp ugt i32 %i.tt, %i.tu
  br i1 %.not10.i.i.i105, label %bb.as, label %.sink.split.i.i.i98, !prof !27

.sink.split.i.i.i98:                              ; preds = %bb.ao, %bb.an
  %.sink.i.i5.i99 = phi i32 [ %i.tr, %bb.an ], [ %i.sp, %bb.ao ]
  %i.tv = add i32 %.sink.i.i5.i99, -1
  %i.tw = zext i32 %i.tv to i64                   ; 2 uses
  %i.tx = lshr i64 %i.tw, 1
  %i.ty = or i64 %i.tx, %i.tw                     ; 2 uses
  %i.tz = lshr i64 %i.ty, 2
  %i.ua = or i64 %i.tz, %i.ty                     ; 2 uses
  %i.ub = lshr i64 %i.ua, 4
  %i.uc = or i64 %i.ub, %i.ua                     ; 2 uses
  %i.ud = lshr i64 %i.uc, 8
  %i.ue = or i64 %i.ud, %i.uc                     ; 2 uses
  %i.uf = lshr i64 %i.ue, 16
  %i.ug = or i64 %i.uf, %i.ue
  %i.uh = trunc nuw i64 %i.ug to i32
  %i.ui = add i32 %i.uh, 1
  %.sroa.speculated.i.i142 = tail call i32 @llvm.umax.i32(i32 %i.ui, i32 64) ; 2 uses
  store i32 %.sroa.speculated.i.i142, ptr %i.f, align 8, !tbaa !145
  %i.uj = zext i32 %.sroa.speculated.i.i142 to i64
  %i.uk = shl nuw nsw i64 %i.uj, 7
  %i.ul = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uk) #20 ; 6 uses
  store ptr %i.ul, ptr %i.a, align 8, !tbaa !144
  %.not.i.i143 = icmp eq ptr %i.so, null
  br i1 %.not.i.i143, label %bb.ap, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149

bb.ap:                                            ; preds = %.sink.split.i.i.i98
  store i32 0, ptr %i.b, align 8, !tbaa !157
  store i32 0, ptr %i.o, align 4, !tbaa !158
  %i.um = load i32, ptr %i.f, align 8, !tbaa !145 ; 4 uses
  %i.un = zext i32 %i.um to i64
  %.idx.i.i.i144 = shl nuw nsw i64 %i.un, 7       ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 %.idx.i.i.i144
  %.not6.i.i.i145 = icmp eq i32 %i.um, 0
  br i1 %.not6.i.i.i145, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit141, label %.lr.ph.i.i.i146.preheader

.lr.ph.i.i.i146.preheader:                        ; preds = %bb.ap
  %i.up = add nsw i64 %.idx.i.i.i144, -128        ; 2 uses
  %i.uq = lshr exact i64 %i.up, 7
  %i.ur = add nuw nsw i64 %i.uq, 1
  %xtraiter502 = and i64 %i.ur, 7                 ; 2 uses
  %lcmp.mod503.not = icmp eq i64 %xtraiter502, 0
  br i1 %lcmp.mod503.not, label %.lr.ph.i.i.i146.prol.loopexit, label %.lr.ph.i.i.i146.prol

.lr.ph.i.i.i146.prol:                             ; preds = %.lr.ph.i.i.i146.preheader, %.lr.ph.i.i.i146.prol
  %.07.i.i.i147.prol = phi ptr [ %i.us, %.lr.ph.i.i.i146.prol ], [ %i.ul, %.lr.ph.i.i.i146.preheader ] ; 2 uses
  %prol.iter504 = phi i64 [ %prol.iter504.next, %.lr.ph.i.i.i146.prol ], [ 0, %.lr.ph.i.i.i146.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i147.prol, align 8, !tbaa !109
  %i.us = getelementptr inbounds nuw i8, ptr %.07.i.i.i147.prol, i64 128 ; 2 uses
  %prol.iter504.next = add i64 %prol.iter504, 1   ; 2 uses
  %prol.iter504.cmp.not = icmp eq i64 %prol.iter504.next, %xtraiter502
  br i1 %prol.iter504.cmp.not, label %.lr.ph.i.i.i146.prol.loopexit, label %.lr.ph.i.i.i146.prol, !llvm.loop !218

.lr.ph.i.i.i146.prol.loopexit:                    ; preds = %.lr.ph.i.i.i146.prol, %.lr.ph.i.i.i146.preheader
  %.07.i.i.i147.unr = phi ptr [ %i.ul, %.lr.ph.i.i.i146.preheader ], [ %i.us, %.lr.ph.i.i.i146.prol ]
  %i.ut = icmp ult i64 %i.up, 896
  br i1 %i.ut, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149.thread, label %.lr.ph.i.i.i146

.lr.ph.i.i.i146:                                  ; preds = %.lr.ph.i.i.i146.prol.loopexit, %.lr.ph.i.i.i146
  %.07.i.i.i147 = phi ptr [ %i.vb, %.lr.ph.i.i.i146 ], [ %.07.i.i.i147.unr, %.lr.ph.i.i.i146.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i147, align 8, !tbaa !109
  %i.uu = getelementptr inbounds nuw i8, ptr %.07.i.i.i147, i64 128
  store ptr inttoptr (i64 -8 to ptr), ptr %i.uu, align 8, !tbaa !109
  %i.uv = getelementptr inbounds nuw i8, ptr %.07.i.i.i147, i64 256
  store ptr inttoptr (i64 -8 to ptr), ptr %i.uv, align 8, !tbaa !109
  %i.uw = getelementptr inbounds nuw i8, ptr %.07.i.i.i147, i64 384
  store ptr inttoptr (i64 -8 to ptr), ptr %i.uw, align 8, !tbaa !109
  %i.ux = getelementptr inbounds nuw i8, ptr %.07.i.i.i147, i64 512
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ux, align 8, !tbaa !109
  %i.uy = getelementptr inbounds nuw i8, ptr %.07.i.i.i147, i64 640
  store ptr inttoptr (i64 -8 to ptr), ptr %i.uy, align 8, !tbaa !109
  %i.uz = getelementptr inbounds nuw i8, ptr %.07.i.i.i147, i64 768
  store ptr inttoptr (i64 -8 to ptr), ptr %i.uz, align 8, !tbaa !109
  %i.va = getelementptr inbounds nuw i8, ptr %.07.i.i.i147, i64 896
  store ptr inttoptr (i64 -8 to ptr), ptr %i.va, align 8, !tbaa !109
  %i.vb = getelementptr inbounds nuw i8, ptr %.07.i.i.i147, i64 1024 ; 2 uses
  %.not.i.i.i148.7 = icmp eq ptr %i.vb, %i.uo
  br i1 %.not.i.i.i148.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149.thread, label %.lr.ph.i.i.i146, !llvm.loop !161

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149: ; preds = %.sink.split.i.i.i98
  %i.vc = zext i32 %i.sp to i64
  %i.vd = getelementptr inbounds nuw [128 x i8], ptr %i.so, i64 %i.vc
  tail call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E18moveFromOldBucketsEPSB_SE_(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull %i.so, ptr noundef nonnull %i.vd)
  tail call void @_ZdlPv(ptr noundef nonnull %i.so) #18
  %.pr176.pre = load i32, ptr %i.f, align 8, !tbaa !145 ; 2 uses
  %.pre230 = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.ve = icmp eq i32 %.pr176.pre, 0
  br i1 %i.ve, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit141, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149.thread

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149.thread: ; preds = %.lr.ph.i.i.i146.prol.loopexit, %.lr.ph.i.i.i146, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149
  %.pr176308 = phi i32 [ %.pr176.pre, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149 ], [ %i.um, %.lr.ph.i.i.i146 ], [ %i.um, %.lr.ph.i.i.i146.prol.loopexit ]
  %i.vf = phi ptr [ %.pre230, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149 ], [ %i.ul, %.lr.ph.i.i.i146 ], [ %i.ul, %.lr.ph.i.i.i146.prol.loopexit ] ; 2 uses
  %i.vg = ptrtoint ptr %i.sn to i64
  %i.vh = trunc i64 %i.vg to i32                  ; 2 uses
  %i.vi = lshr i32 %i.vh, 4
  %i.vj = lshr i32 %i.vh, 9
  %i.vk = xor i32 %i.vi, %i.vj
  %i.vl = add i32 %.pr176308, -1                  ; 2 uses
  %.02944.i.i130 = and i32 %i.vl, %i.vk           ; 2 uses
  %i.vm = zext nneg i32 %.02944.i.i130 to i64
  %i.vn = getelementptr inbounds nuw [128 x i8], ptr %i.vf, i64 %i.vm ; 3 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !109 ; 2 uses
  %i.vp = icmp eq ptr %i.sn, %i.vo
  br i1 %i.vp, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit141, label %.lr.ph.i.i131, !prof !132

.lr.ph.i.i131:                                    ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149.thread, %bb.ar
  %i.vq = phi ptr [ %i.wa, %bb.ar ], [ %i.vo, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149.thread ] ; 2 uses
  %i.vr = phi ptr [ %i.vz, %bb.ar ], [ %i.vn, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149.thread ] ; 2 uses
  %.02947.i.i132 = phi i32 [ %.029.i.i137, %bb.ar ], [ %.02944.i.i130, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149.thread ]
  %.02746.i.i133 = phi i32 [ %i.vw, %bb.ar ], [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149.thread ] ; 2 uses
  %.03245.i.i134 = phi ptr [ %spec.select.i.i136, %bb.ar ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149.thread ] ; 4 uses
  %i.vs = icmp eq ptr %i.vq, inttoptr (i64 -8 to ptr)
  br i1 %i.vs, label %bb.aq, label %bb.ar, !prof !27

bb.aq:                                            ; preds = %.lr.ph.i.i131
  %.not.i.i140 = icmp eq ptr %.03245.i.i134, null
  %i.vt = select i1 %.not.i.i140, ptr %i.vr, ptr %.03245.i.i134
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit141

bb.ar:                                            ; preds = %.lr.ph.i.i131
  %i.vu = icmp eq ptr %i.vq, inttoptr (i64 -16 to ptr)
  %i.vv = icmp eq ptr %.03245.i.i134, null
  %or.cond.not.i.i135 = select i1 %i.vu, i1 %i.vv, i1 false
  %spec.select.i.i136 = select i1 %or.cond.not.i.i135, ptr %i.vr, ptr %.03245.i.i134
  %i.vw = add i32 %.02746.i.i133, 1
  %i.vx = add i32 %.02746.i.i133, %.02947.i.i132
  %.029.i.i137 = and i32 %i.vx, %i.vl             ; 2 uses
  %i.vy = zext i32 %.029.i.i137 to i64
  %i.vz = getelementptr inbounds nuw [128 x i8], ptr %i.vf, i64 %i.vy ; 3 uses
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !109 ; 2 uses
  %i.wb = icmp eq ptr %i.sn, %i.wa
  br i1 %i.wb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit141, label %.lr.ph.i.i131, !prof !133, !llvm.loop !156

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit141: ; preds = %bb.ar, %bb.ap, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149.thread, %bb.aq
  %.sink.i.i138 = phi ptr [ %i.vt, %bb.aq ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149 ], [ %i.vn, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit149.thread ], [ null, %bb.ap ], [ %i.vz, %bb.ar ]
  %.pre.i.i100 = load i32, ptr %i.b, align 8, !tbaa !157
  br label %bb.as

bb.as:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit141, %bb.ao
  %i.wc = phi ptr [ %.sink.i.i138, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit141 ], [ %.sink.i.i.i96, %bb.ao ] ; 4 uses
  %i.wd = phi i32 [ %.pre.i.i100, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit141 ], [ %i.tn, %bb.ao ]
  %i.we = add i32 %i.wd, 1
  store i32 %i.we, ptr %i.b, align 8, !tbaa !157
  %i.wf = load ptr, ptr %i.wc, align 8, !tbaa !109
  %i.wg = icmp eq ptr %i.wf, inttoptr (i64 -8 to ptr)
  br i1 %i.wg, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i102, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.wh = load i32, ptr %i.o, align 4, !tbaa !158
  %i.wi = add i32 %i.wh, -1
  store i32 %i.wi, ptr %i.o, align 4, !tbaa !158
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i102

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i102: ; preds = %bb.at, %bb.as
  store ptr %i.sn, ptr %i.wc, align 8, !tbaa !109
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.wj, i8 0, i64 120, i1 false)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit106

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit106: ; preds = %bb.am, %bb.ak, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i102
  %.0.i93 = phi ptr [ %i.wc, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i102 ], [ %i.sy, %bb.ak ], [ %i.tk, %bb.am ] ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.0.i93, i64 56 ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.0.i93, i64 72 ; 2 uses
  %i.wm = load i32, ptr %i.wl, align 8, !tbaa !31 ; 8 uses
  %i.wn = add i32 %i.wm, 63
  %i.wo = lshr i32 %i.wn, 6                       ; 7 uses
  %i.wp = load i32, ptr %i.ix, align 8, !tbaa !31 ; 4 uses
  %i.wq = add i32 %i.wp, 63
  %i.wr = lshr i32 %i.wq, 6                       ; 2 uses
  %.sroa.speculated.i68 = tail call i32 @llvm.umin.i32(i32 %i.wr, i32 %i.wo) ; 3 uses
  %.not20.i = icmp eq i32 %.sroa.speculated.i68, 0
  br i1 %.not20.i, label %.preheader.i, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit106
  %i.ws = load ptr, ptr %i.wk, align 8, !tbaa !28
  %i.wt = load ptr, ptr %i.iw, align 8, !tbaa !28
  %i.wu = zext nneg i32 %.sroa.speculated.i68 to i64
  br label %bb.au

.preheader.i:                                     ; preds = %bb.av, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit106
  %.not1122.not.i = icmp samesign ugt i32 %i.wo, %i.wr
  br i1 %.not1122.not.i, label %.lr.ph24.i, label %_ZNK4llvh9BitVector4testERKS0_.exit

.lr.ph24.i:                                       ; preds = %.preheader.i
  %i.wv = load ptr, ptr %i.wk, align 8, !tbaa !28
  br label %bb.ax

bb.au:                                            ; preds = %bb.av, %.lr.ph.i69
  %indvars.iv = phi i64 [ 0, %.lr.ph.i69 ], [ %indvars.iv.next, %bb.av ] ; 3 uses
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !26
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %indvars.iv
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !26
  %i.xa = xor i64 %i.wz, -1
  %i.xb = and i64 %i.wx, %i.xa
  %.not13.i = icmp eq i64 %i.xb, 0
  br i1 %.not13.i, label %bb.av, label %_ZNK4llvh9BitVector4testERKS0_.exit

bb.av:                                            ; preds = %bb.au
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i71 = icmp eq i64 %indvars.iv.next, %i.wu
  br i1 %.not.i71, label %.preheader.i, label %bb.au, !llvm.loop !219

bb.aw:                                            ; preds = %bb.ax
  %i.xc = add i32 %.123.i, 1                      ; 2 uses
  %.not11.i = icmp eq i32 %i.xc, %i.wo
  br i1 %.not11.i, label %_ZNK4llvh9BitVector4testERKS0_.exit, label %bb.ax, !llvm.loop !220

bb.ax:                                            ; preds = %bb.aw, %.lr.ph24.i
  %.123.i = phi i32 [ %.sroa.speculated.i68, %.lr.ph24.i ], [ %i.xc, %bb.aw ] ; 2 uses
  %i.xd = zext i32 %.123.i to i64
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %i.xd
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !26
  %.not12.not.i = icmp eq i64 %i.xf, 0
  br i1 %.not12.not.i, label %bb.aw, label %_ZNK4llvh9BitVector4testERKS0_.exit

_ZNK4llvh9BitVector4testERKS0_.exit:              ; preds = %bb.au, %bb.ax, %bb.aw, %.preheader.i
  %i.xg = phi i1 [ %.1201, %bb.aw ], [ %.1201, %.preheader.i ], [ true, %bb.ax ], [ true, %bb.au ] ; 2 uses
  %i.xh = icmp ult i32 %i.wp, %i.wm
  br i1 %i.xh, label %bb.ay, label %bb.bk

bb.ay:                                            ; preds = %_ZNK4llvh9BitVector4testERKS0_.exit
  %i.xi = zext i32 %i.wm to i64
  %i.xj = load i64, ptr %i.iy, align 8, !tbaa !39 ; 4 uses
  %i.xk = shl i64 %i.xj, 6
  %i.xl = icmp ult i64 %i.xk, %i.xi
  br i1 %i.xl, label %bb.az, label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i110

bb.az:                                            ; preds = %bb.ay
  %i.xm = zext nneg i32 %i.wo to i64
  %i.xn = shl i64 %i.xj, 1
  %.sroa.speculated.i.i118 = tail call i64 @llvm.umax.i64(i64 %i.xn, i64 %i.xm) ; 8 uses
  %i.xo = load ptr, ptr %i.iw, align 8, !tbaa !28
  %i.xp = shl i64 %.sroa.speculated.i.i118, 3
  %i.xq = tail call ptr @realloc(ptr noundef %i.xo, i64 noundef %i.xp) #19 ; 5 uses
  %i.xr = icmp eq ptr %i.xq, null
  br i1 %i.xr, label %bb.ba, label %_ZN4llvh12safe_reallocEPvm.exit.i.i119

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.8, i1 noundef zeroext true) #18
  br label %_ZN4llvh12safe_reallocEPvm.exit.i.i119

_ZN4llvh12safe_reallocEPvm.exit.i.i119:           ; preds = %bb.ba, %bb.az
  store ptr %i.xq, ptr %i.iw, align 8
  store i64 %.sroa.speculated.i.i118, ptr %i.iy, align 8
  %i.xs = load i32, ptr %i.ix, align 8, !tbaa !31 ; 4 uses
  %i.xt = add i32 %i.xs, 63
  %i.xu = lshr i32 %i.xt, 6                       ; 2 uses
  %i.xv = zext nneg i32 %i.xu to i64              ; 3 uses
  %i.xw = icmp ugt i64 %.sroa.speculated.i.i118, %i.xv
  br i1 %i.xw, label %bb.bb, label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i120

bb.bb:                                            ; preds = %_ZN4llvh12safe_reallocEPvm.exit.i.i119
  %i.xx = sub nuw i64 %.sroa.speculated.i.i118, %i.xv
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.xv
  %i.xz = shl i64 %i.xx, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.xy, i8 0, i64 %i.xz, i1 false)
  br label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i120

_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i120: ; preds = %bb.bb, %_ZN4llvh12safe_reallocEPvm.exit.i.i119
  %i.ya = and i32 %i.xs, 63                       ; 2 uses
  %.not.i.i.i.i121 = icmp eq i32 %i.ya, 0
  br i1 %.not.i.i.i.i121, label %_ZN4llvh9BitVector4growEj.exit.i122, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i120
  %i.yb = zext nneg i32 %i.ya to i64
  %i.yc = shl nsw i64 -1, %i.yb
  %i.yd = xor i64 %i.yc, -1
  %i.ye = add nsw i32 %i.xu, -1
  %i.yf = zext i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.yf ; 2 uses
  %i.yh = load i64, ptr %i.yg, align 8, !tbaa !26
  %i.yi = and i64 %i.yh, %i.yd
  store i64 %i.yi, ptr %i.yg, align 8, !tbaa !26
  br label %_ZN4llvh9BitVector4growEj.exit.i122

_ZN4llvh9BitVector4growEj.exit.i122:              ; preds = %bb.bc, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i120
  %i.yj = and i64 %i.xj, 4294967295               ; 3 uses
  %.not.i.i123 = icmp eq i64 %.sroa.speculated.i.i118, %i.yj
  br i1 %.not.i.i123, label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i110, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvh9BitVector4growEj.exit.i122
  %i.yk = sub i64 %.sroa.speculated.i.i118, %i.yj
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.yj
  %i.ym = shl i64 %i.yk, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.yl, i8 0, i64 %i.ym, i1 false)
  br label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i110

_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i110: ; preds = %bb.ay, %bb.bd, %_ZN4llvh9BitVector4growEj.exit.i122
  %i.yn = phi i64 [ %.sroa.speculated.i.i118, %_ZN4llvh9BitVector4growEj.exit.i122 ], [ %.sroa.speculated.i.i118, %bb.bd ], [ %i.xj, %bb.ay ] ; 2 uses
  %i.yo = phi i32 [ %i.xs, %_ZN4llvh9BitVector4growEj.exit.i122 ], [ %i.xs, %bb.bd ], [ %i.wp, %bb.ay ] ; 4 uses
  %i.yp = icmp ugt i32 %i.wm, %i.yo
  br i1 %i.yp, label %bb.be, label %_ZN4llvh9BitVector15set_unused_bitsEb.exit.i111

bb.be:                                            ; preds = %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i110
  %i.yq = add i32 %i.yo, 63
  %i.yr = lshr i32 %i.yq, 6                       ; 2 uses
  %i.ys = zext nneg i32 %i.yr to i64              ; 3 uses
  %i.yt = icmp ugt i64 %i.yn, %i.ys
  br i1 %i.yt, label %bb.bf, label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i115

bb.bf:                                            ; preds = %bb.be
  %i.yu = sub nuw i64 %i.yn, %i.ys
  %i.yv = load ptr, ptr %i.iw, align 8, !tbaa !28
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %i.ys
  %i.yx = shl i64 %i.yu, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.yw, i8 0, i64 %i.yx, i1 false)
  %.pre.i.i117 = load i32, ptr %i.ix, align 8, !tbaa !31
  br label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i115

_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i115: ; preds = %bb.bf, %bb.be
  %i.yy = phi i32 [ %.pre.i.i117, %bb.bf ], [ %i.yo, %bb.be ] ; 3 uses
  %i.yz = and i32 %i.yy, 63                       ; 2 uses
  %.not.i10.i116 = icmp eq i32 %i.yz, 0
  br i1 %.not.i10.i116, label %_ZN4llvh9BitVector15set_unused_bitsEb.exit.i111, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i115
  %i.za = zext nneg i32 %i.yz to i64
  %i.zb = shl nsw i64 -1, %i.za
  %i.zc = xor i64 %i.zb, -1
  %i.zd = add nsw i32 %i.yr, -1
  %i.ze = zext i32 %i.zd to i64
  %i.zf = load ptr, ptr %i.iw, align 8, !tbaa !28
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %i.ze ; 2 uses
  %i.zh = load i64, ptr %i.zg, align 8, !tbaa !26
  %i.zi = and i64 %i.zh, %i.zc
  store i64 %i.zi, ptr %i.zg, align 8, !tbaa !26
  br label %_ZN4llvh9BitVector15set_unused_bitsEb.exit.i111

_ZN4llvh9BitVector15set_unused_bitsEb.exit.i111:  ; preds = %bb.bg, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i115, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i110
  %i.zj = phi i32 [ %i.yy, %bb.bg ], [ %i.yy, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i115 ], [ %i.yo, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i110 ]
  store i32 %i.wm, ptr %i.ix, align 8, !tbaa !31
  %i.zk = icmp ult i32 %i.wm, %i.zj
  br i1 %i.zk, label %bb.bh, label %_ZN4llvh9BitVector6resizeEjb.exit124

bb.bh:                                            ; preds = %_ZN4llvh9BitVector15set_unused_bitsEb.exit.i111
  %i.zl = load i64, ptr %i.iy, align 8, !tbaa !39 ; 2 uses
  %i.zm = zext nneg i32 %i.wo to i64              ; 3 uses
  %i.zn = icmp ugt i64 %i.zl, %i.zm
  br i1 %i.zn, label %bb.bi, label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i112

bb.bi:                                            ; preds = %bb.bh
  %i.zo = sub nuw i64 %i.zl, %i.zm
  %i.zp = load ptr, ptr %i.iw, align 8, !tbaa !28
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %i.zm
  %i.zr = shl i64 %i.zo, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.zq, i8 0, i64 %i.zr, i1 false)
  %.pre.i.i.i114 = load i32, ptr %i.ix, align 8, !tbaa !31
  br label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i112

_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i112: ; preds = %bb.bi, %bb.bh
  %i.zs = phi i32 [ %.pre.i.i.i114, %bb.bi ], [ %i.wm, %bb.bh ] ; 3 uses
  %i.zt = and i32 %i.zs, 63                       ; 2 uses
  %.not.i.i.i113 = icmp eq i32 %i.zt, 0
  br i1 %.not.i.i.i113, label %_ZN4llvh9BitVector6resizeEjb.exit124, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i112
  %i.zu = zext nneg i32 %i.zt to i64
  %i.zv = shl nsw i64 -1, %i.zu
  %i.zw = xor i64 %i.zv, -1
  %i.zx = add nsw i32 %i.wo, -1
  %i.zy = zext i32 %i.zx to i64
  %i.zz = load ptr, ptr %i.iw, align 8, !tbaa !28
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.zz, i64 %i.zy ; 2 uses
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !26
  %i.aac = and i64 %i.aab, %i.zw
  store i64 %i.aac, ptr %i.aaa, align 8, !tbaa !26
  br label %_ZN4llvh9BitVector6resizeEjb.exit124

_ZN4llvh9BitVector6resizeEjb.exit124:             ; preds = %_ZN4llvh9BitVector15set_unused_bitsEb.exit.i111, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i112, %bb.bj
  %i.aad = phi i32 [ %i.wm, %_ZN4llvh9BitVector15set_unused_bitsEb.exit.i111 ], [ %i.zs, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i112 ], [ %i.zs, %bb.bj ]
  %.pre.i76 = load i32, ptr %i.wl, align 8, !tbaa !31
  %.pre233 = add i32 %.pre.i76, 63
  %.pre234 = lshr i32 %.pre233, 6
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvh9BitVector6resizeEjb.exit124, %_ZNK4llvh9BitVector4testERKS0_.exit
  %.pre-phi235 = phi i32 [ %.pre234, %_ZN4llvh9BitVector6resizeEjb.exit124 ], [ %i.wo, %_ZNK4llvh9BitVector4testERKS0_.exit ] ; 3 uses
  %i.aae = phi i32 [ %i.aad, %_ZN4llvh9BitVector6resizeEjb.exit124 ], [ %i.wp, %_ZNK4llvh9BitVector4testERKS0_.exit ]
  %i.aaf = zext nneg i32 %.pre-phi235 to i64      ; 6 uses
  %.not9.i72 = icmp eq i32 %.pre-phi235, 0
  br i1 %.not9.i72, label %_ZN4llvh9BitVectoroRERKS0_.exit77, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %bb.bk
  %i.aag = load ptr, ptr %i.wk, align 8, !tbaa !28 ; 8 uses
  %i.aah = load ptr, ptr %i.iw, align 8, !tbaa !28 ; 8 uses
  %min.iters.check461 = icmp samesign ult i32 %.pre-phi235, 4
  br i1 %min.iters.check461, label %scalar.ph460.preheader, label %vector.memcheck454

end_hunk_0
