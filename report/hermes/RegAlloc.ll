Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegAlloc?download=true
inline.NumInlined: 1999
inline.NumDeleted: 790
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN6hermes17RegisterAllocator23calculateGlobalLivenessEN4llvh8ArrayRefIPNS_10BasicBlockEEE:bb.a
  %or.cond.not.i.i.i92 = select i1 %i.tf, i1 %i.tg, i1 false
  %spec.select.i.i.i93 = select i1 %or.cond.not.i.i.i92, ptr %i.tc, ptr %.02945.i.i.i91
  %i.th = add i32 %.046.i.i.i90, 1
  %i.ti = add i32 %.046.i.i.i90, %.02747.i.i.i89
  %.027.i.i.i94 = and i32 %i.ti, %i.sw            ; 2 uses
  %i.tj = zext i32 %.027.i.i.i94 to i64
  %i.tk = getelementptr inbounds nuw [128 x i8], ptr %i.so, i64 %i.tj ; 3 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !87 ; 2 uses
  %i.tm = icmp eq ptr %i.sn, %i.tl
  br i1 %i.tm, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit108, label %.lr.ph.i.i.i88, !prof !109, !llvm.loop !6

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i97: ; preds = %bb.al, %bb.aj
  %.sink.i.i.i98 = phi ptr [ %i.te, %bb.al ], [ null, %bb.aj ]
  %i.tn = load i32, ptr %i.b, align 8, !tbaa !124 ; 3 uses
  %i.to = shl i32 %i.tn, 2
  %i.tp = add i32 %i.to, 4
  %i.tq = mul i32 %i.sp, 3
  %.not.i.i4.i99 = icmp ult i32 %i.tp, %i.tq
  br i1 %.not.i.i4.i99, label %bb.ao, label %bb.an, !prof !40

bb.an:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i97
  %i.tr = shl i32 %i.sp, 1
  br label %.sink.split.i.i.i100

bb.ao:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i97
  %i.ts = load i32, ptr %i.o, align 4, !tbaa !125
  %.neg.i.i.i105 = xor i32 %i.tn, -1
  %.neg12.i.i.i106 = add i32 %i.sp, %.neg.i.i.i105
  %i.tt = sub i32 %.neg12.i.i.i106, %i.ts
  %i.tu = lshr i32 %i.sp, 3
  %.not10.i.i.i107 = icmp ugt i32 %i.tt, %i.tu
  br i1 %.not10.i.i.i107, label %bb.as, label %.sink.split.i.i.i100, !prof !40

.sink.split.i.i.i100:                             ; preds = %bb.ao, %bb.an
  %.sink.i.i5.i101 = phi i32 [ %i.tr, %bb.an ], [ %i.sp, %bb.ao ]
  %i.tv = add i32 %.sink.i.i5.i101, -1
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
  %.sroa.speculated.i.i144 = tail call i32 @llvm.umax.i32(i32 %i.ui, i32 64) ; 2 uses
  store i32 %.sroa.speculated.i.i144, ptr %i.f, align 8, !tbaa !117
  %i.uj = zext i32 %.sroa.speculated.i.i144 to i64
  %i.uk = shl nuw nsw i64 %i.uj, 7
  %i.ul = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uk) #20 ; 6 uses
  store ptr %i.ul, ptr %i.a, align 8, !tbaa !116
  %.not.i.i145 = icmp eq ptr %i.so, null
  br i1 %.not.i.i145, label %bb.ap, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151

bb.ap:                                            ; preds = %.sink.split.i.i.i100
  store i32 0, ptr %i.b, align 8, !tbaa !124
  store i32 0, ptr %i.o, align 4, !tbaa !125
  %i.um = load i32, ptr %i.f, align 8, !tbaa !117 ; 4 uses
  %i.un = zext i32 %i.um to i64
  %.idx.i.i.i146 = shl nuw nsw i64 %i.un, 7       ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 %.idx.i.i.i146
  %.not6.i.i.i147 = icmp eq i32 %i.um, 0
  br i1 %.not6.i.i.i147, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit143, label %.lr.ph.i.i.i148.preheader

.lr.ph.i.i.i148.preheader:                        ; preds = %bb.ap
  %i.up = add nsw i64 %.idx.i.i.i146, -128        ; 2 uses
  %i.uq = lshr exact i64 %i.up, 7
  %i.ur = add nuw nsw i64 %i.uq, 1
  %xtraiter497 = and i64 %i.ur, 7                 ; 2 uses
  %lcmp.mod498.not = icmp eq i64 %xtraiter497, 0
  br i1 %lcmp.mod498.not, label %.lr.ph.i.i.i148.prol.loopexit, label %.lr.ph.i.i.i148.prol

.lr.ph.i.i.i148.prol:                             ; preds = %.lr.ph.i.i.i148.preheader, %.lr.ph.i.i.i148.prol
  %.07.i.i.i149.prol = phi ptr [ %i.us, %.lr.ph.i.i.i148.prol ], [ %i.ul, %.lr.ph.i.i.i148.preheader ] ; 2 uses
  %prol.iter499 = phi i64 [ %prol.iter499.next, %.lr.ph.i.i.i148.prol ], [ 0, %.lr.ph.i.i.i148.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i149.prol, align 8, !tbaa !87
  %i.us = getelementptr inbounds nuw i8, ptr %.07.i.i.i149.prol, i64 128 ; 2 uses
  %prol.iter499.next = add i64 %prol.iter499, 1   ; 2 uses
  %prol.iter499.cmp.not = icmp eq i64 %prol.iter499.next, %xtraiter497
  br i1 %prol.iter499.cmp.not, label %.lr.ph.i.i.i148.prol.loopexit, label %.lr.ph.i.i.i148.prol, !llvm.loop !324

.lr.ph.i.i.i148.prol.loopexit:                    ; preds = %.lr.ph.i.i.i148.prol, %.lr.ph.i.i.i148.preheader
  %.07.i.i.i149.unr = phi ptr [ %i.ul, %.lr.ph.i.i.i148.preheader ], [ %i.us, %.lr.ph.i.i.i148.prol ]
  %i.ut = icmp ult i64 %i.up, 896
  br i1 %i.ut, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151.thread, label %.lr.ph.i.i.i148

.lr.ph.i.i.i148:                                  ; preds = %.lr.ph.i.i.i148.prol.loopexit, %.lr.ph.i.i.i148
  %.07.i.i.i149 = phi ptr [ %i.vb, %.lr.ph.i.i.i148 ], [ %.07.i.i.i149.unr, %.lr.ph.i.i.i148.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i149, align 8, !tbaa !87
  %i.uu = getelementptr inbounds nuw i8, ptr %.07.i.i.i149, i64 128
  store ptr inttoptr (i64 -8 to ptr), ptr %i.uu, align 8, !tbaa !87
  %i.uv = getelementptr inbounds nuw i8, ptr %.07.i.i.i149, i64 256
  store ptr inttoptr (i64 -8 to ptr), ptr %i.uv, align 8, !tbaa !87
  %i.uw = getelementptr inbounds nuw i8, ptr %.07.i.i.i149, i64 384
  store ptr inttoptr (i64 -8 to ptr), ptr %i.uw, align 8, !tbaa !87
  %i.ux = getelementptr inbounds nuw i8, ptr %.07.i.i.i149, i64 512
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ux, align 8, !tbaa !87
  %i.uy = getelementptr inbounds nuw i8, ptr %.07.i.i.i149, i64 640
  store ptr inttoptr (i64 -8 to ptr), ptr %i.uy, align 8, !tbaa !87
  %i.uz = getelementptr inbounds nuw i8, ptr %.07.i.i.i149, i64 768
  store ptr inttoptr (i64 -8 to ptr), ptr %i.uz, align 8, !tbaa !87
  %i.va = getelementptr inbounds nuw i8, ptr %.07.i.i.i149, i64 896
  store ptr inttoptr (i64 -8 to ptr), ptr %i.va, align 8, !tbaa !87
  %i.vb = getelementptr inbounds nuw i8, ptr %.07.i.i.i149, i64 1024 ; 2 uses
  %.not.i.i.i150.7 = icmp eq ptr %i.vb, %i.uo
  br i1 %.not.i.i.i150.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151.thread, label %.lr.ph.i.i.i148, !llvm.loop !7

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151: ; preds = %.sink.split.i.i.i100
  %i.vc = zext i32 %i.sp to i64
  %i.vd = getelementptr inbounds nuw [128 x i8], ptr %i.so, i64 %i.vc
  tail call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E18moveFromOldBucketsEPSB_SE_(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull %i.so, ptr noundef nonnull %i.vd)
  tail call void @_ZdlPv(ptr noundef nonnull %i.so) #18
  %.pr178.pre = load i32, ptr %i.f, align 8, !tbaa !117 ; 2 uses
  %.pre231 = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.ve = icmp eq i32 %.pr178.pre, 0
  br i1 %i.ve, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit143, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151.thread

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151.thread: ; preds = %.lr.ph.i.i.i148.prol.loopexit, %.lr.ph.i.i.i148, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151
  %.pr178309 = phi i32 [ %.pr178.pre, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151 ], [ %i.um, %.lr.ph.i.i.i148 ], [ %i.um, %.lr.ph.i.i.i148.prol.loopexit ]
  %i.vf = phi ptr [ %.pre231, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151 ], [ %i.ul, %.lr.ph.i.i.i148 ], [ %i.ul, %.lr.ph.i.i.i148.prol.loopexit ] ; 2 uses
  %i.vg = ptrtoint ptr %i.sn to i64
  %i.vh = trunc i64 %i.vg to i32                  ; 2 uses
  %i.vi = lshr i32 %i.vh, 4
  %i.vj = lshr i32 %i.vh, 9
  %i.vk = xor i32 %i.vi, %i.vj
  %i.vl = add i32 %.pr178309, -1                  ; 2 uses
  %.02744.i.i132 = and i32 %i.vl, %i.vk           ; 2 uses
  %i.vm = zext nneg i32 %.02744.i.i132 to i64
  %i.vn = getelementptr inbounds nuw [128 x i8], ptr %i.vf, i64 %i.vm ; 3 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !87 ; 2 uses
  %i.vp = icmp eq ptr %i.sn, %i.vo
  br i1 %i.vp, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit143, label %.lr.ph.i.i133, !prof !108

.lr.ph.i.i133:                                    ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151.thread, %bb.ar
  %i.vq = phi ptr [ %i.wa, %bb.ar ], [ %i.vo, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151.thread ] ; 2 uses
  %i.vr = phi ptr [ %i.vz, %bb.ar ], [ %i.vn, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151.thread ] ; 2 uses
  %.02747.i.i134 = phi i32 [ %.027.i.i139, %bb.ar ], [ %.02744.i.i132, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151.thread ]
  %.046.i.i135 = phi i32 [ %i.vw, %bb.ar ], [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151.thread ] ; 2 uses
  %.02945.i.i136 = phi ptr [ %spec.select.i.i138, %bb.ar ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151.thread ] ; 4 uses
  %i.vs = icmp eq ptr %i.vq, inttoptr (i64 -8 to ptr)
  br i1 %i.vs, label %bb.aq, label %bb.ar, !prof !40

bb.aq:                                            ; preds = %.lr.ph.i.i133
  %.not.i.i142 = icmp eq ptr %.02945.i.i136, null
  %i.vt = select i1 %.not.i.i142, ptr %i.vr, ptr %.02945.i.i136
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit143

bb.ar:                                            ; preds = %.lr.ph.i.i133
  %i.vu = icmp eq ptr %i.vq, inttoptr (i64 -16 to ptr)
  %i.vv = icmp eq ptr %.02945.i.i136, null
  %or.cond.not.i.i137 = select i1 %i.vu, i1 %i.vv, i1 false
  %spec.select.i.i138 = select i1 %or.cond.not.i.i137, ptr %i.vr, ptr %.02945.i.i136
  %i.vw = add i32 %.046.i.i135, 1
  %i.vx = add i32 %.046.i.i135, %.02747.i.i134
  %.027.i.i139 = and i32 %i.vx, %i.vl             ; 2 uses
  %i.vy = zext i32 %.027.i.i139 to i64
  %i.vz = getelementptr inbounds nuw [128 x i8], ptr %i.vf, i64 %i.vy ; 3 uses
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !87 ; 2 uses
  %i.wb = icmp eq ptr %i.sn, %i.wa
  br i1 %i.wb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit143, label %.lr.ph.i.i133, !prof !109, !llvm.loop !6

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit143: ; preds = %bb.ar, %bb.ap, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151.thread, %bb.aq
  %.sink.i.i140 = phi ptr [ %i.vt, %bb.aq ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151 ], [ %i.vn, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj.exit151.thread ], [ null, %bb.ap ], [ %i.vz, %bb.ar ]
  %.pre.i.i102 = load i32, ptr %i.b, align 8, !tbaa !124
  br label %bb.as

bb.as:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit143, %bb.ao
  %i.wc = phi ptr [ %.sink.i.i140, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit143 ], [ %.sink.i.i.i98, %bb.ao ] ; 4 uses
  %i.wd = phi i32 [ %.pre.i.i102, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit143 ], [ %i.tn, %bb.ao ]
  %i.we = add i32 %i.wd, 1
  store i32 %i.we, ptr %i.b, align 8, !tbaa !124
  %i.wf = load ptr, ptr %i.wc, align 8, !tbaa !87
  %i.wg = icmp eq ptr %i.wf, inttoptr (i64 -8 to ptr)
  br i1 %i.wg, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i104, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.wh = load i32, ptr %i.o, align 4, !tbaa !125
  %i.wi = add i32 %i.wh, -1
  store i32 %i.wi, ptr %i.o, align 4, !tbaa !125
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i104

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i104: ; preds = %bb.at, %bb.as
  store ptr %i.sn, ptr %i.wc, align 8, !tbaa !87
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.wj, i8 0, i64 120, i1 false)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit108

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit108: ; preds = %bb.am, %bb.ak, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i104
  %.0.i95 = phi ptr [ %i.wc, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i104 ], [ %i.sy, %bb.ak ], [ %i.tk, %bb.am ] ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.0.i95, i64 56 ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.0.i95, i64 72 ; 2 uses
  %i.wm = load i32, ptr %i.wl, align 8, !tbaa !46 ; 8 uses
  %i.wn = add i32 %i.wm, 63
  %i.wo = lshr i32 %i.wn, 6                       ; 7 uses
  %i.wp = load i32, ptr %i.ix, align 8, !tbaa !46 ; 4 uses
  %i.wq = add i32 %i.wp, 63
  %i.wr = lshr i32 %i.wq, 6                       ; 3 uses
  %.sroa.speculated.i68 = tail call i32 @llvm.umin.i32(i32 %i.wr, i32 %i.wo) ; 2 uses
  %.not20.i = icmp eq i32 %.sroa.speculated.i68, 0
  br i1 %.not20.i, label %.preheader.i, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit108
  %i.ws = load ptr, ptr %i.wk, align 8, !tbaa !43
  %i.wt = load ptr, ptr %i.iw, align 8, !tbaa !43
  %i.wu = zext nneg i32 %.sroa.speculated.i68 to i64
  br label %bb.au

.preheader.i:                                     ; preds = %bb.av, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit108
  %.not1122.not.i = icmp samesign ugt i32 %i.wo, %i.wr
  br i1 %.not1122.not.i, label %.lr.ph24.i, label %_ZNK4llvh9BitVector4testERKS0_.exit

.lr.ph24.i:                                       ; preds = %.preheader.i
  %i.wv = load ptr, ptr %i.wk, align 8, !tbaa !43
  %umin.i = zext nneg i32 %i.wr to i64
  %3 = zext nneg i32 %i.wo to i64
  br label %bb.ax

bb.au:                                            ; preds = %bb.av, %.lr.ph.i69
  %indvars.iv.i70 = phi i64 [ 0, %.lr.ph.i69 ], [ %indvars.iv.next.i72, %bb.av ] ; 3 uses
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv.i70
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !39
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %indvars.iv.i70
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !39
  %i.xa = xor i64 %i.wz, -1
  %i.xb = and i64 %i.wx, %i.xa
  %.not13.i = icmp eq i64 %i.xb, 0
  br i1 %.not13.i, label %bb.av, label %_ZNK4llvh9BitVector4testERKS0_.exit

bb.av:                                            ; preds = %bb.au
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %.not.i73 = icmp eq i64 %indvars.iv.next.i72, %i.wu
  br i1 %.not.i73, label %.preheader.i, label %bb.au, !llvm.loop !325

bb.aw:                                            ; preds = %bb.ax
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %.not11.i = icmp eq i64 %indvars.iv.next31.i, %3
  br i1 %.not11.i, label %_ZNK4llvh9BitVector4testERKS0_.exit, label %bb.ax, !llvm.loop !326

bb.ax:                                            ; preds = %bb.aw, %.lr.ph24.i
  %indvars.iv30.i = phi i64 [ %umin.i, %.lr.ph24.i ], [ %indvars.iv.next31.i, %bb.aw ] ; 2 uses
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %indvars.iv30.i
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !39
  %.not12.not.i = icmp eq i64 %i.xd, 0
  br i1 %.not12.not.i, label %bb.aw, label %_ZNK4llvh9BitVector4testERKS0_.exit

_ZNK4llvh9BitVector4testERKS0_.exit:              ; preds = %bb.au, %bb.ax, %bb.aw, %.preheader.i
  %i.xe = phi i1 [ %.1203, %bb.aw ], [ %.1203, %.preheader.i ], [ true, %bb.ax ], [ true, %bb.au ] ; 2 uses
  %i.xf = icmp ult i32 %i.wp, %i.wm
  br i1 %i.xf, label %bb.ay, label %bb.bk

bb.ay:                                            ; preds = %_ZNK4llvh9BitVector4testERKS0_.exit
  %i.xg = zext i32 %i.wm to i64
  %i.xh = load i64, ptr %i.iy, align 8, !tbaa !49 ; 4 uses
  %i.xi = shl i64 %i.xh, 6
  %i.xj = icmp ult i64 %i.xi, %i.xg
  br i1 %i.xj, label %bb.az, label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i112

bb.az:                                            ; preds = %bb.ay
  %i.xk = zext nneg i32 %i.wo to i64
  %i.xl = shl i64 %i.xh, 1
  %.sroa.speculated.i.i120 = tail call i64 @llvm.umax.i64(i64 %i.xl, i64 %i.xk) ; 8 uses
  %i.xm = load ptr, ptr %i.iw, align 8, !tbaa !43
  %i.xn = shl i64 %.sroa.speculated.i.i120, 3
  %i.xo = tail call ptr @realloc(ptr noundef %i.xm, i64 noundef %i.xn) #19 ; 5 uses
  %i.xp = icmp eq ptr %i.xo, null
  br i1 %i.xp, label %bb.ba, label %_ZN4llvh12safe_reallocEPvm.exit.i.i121

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.8, i1 noundef zeroext true) #18
  br label %_ZN4llvh12safe_reallocEPvm.exit.i.i121

_ZN4llvh12safe_reallocEPvm.exit.i.i121:           ; preds = %bb.ba, %bb.az
  store ptr %i.xo, ptr %i.iw, align 8
  store i64 %.sroa.speculated.i.i120, ptr %i.iy, align 8
  %i.xq = load i32, ptr %i.ix, align 8, !tbaa !46 ; 4 uses
  %i.xr = add i32 %i.xq, 63
  %i.xs = lshr i32 %i.xr, 6                       ; 2 uses
  %i.xt = zext nneg i32 %i.xs to i64              ; 3 uses
  %i.xu = icmp ugt i64 %.sroa.speculated.i.i120, %i.xt
  br i1 %i.xu, label %bb.bb, label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i122

bb.bb:                                            ; preds = %_ZN4llvh12safe_reallocEPvm.exit.i.i121
  %i.xv = sub nuw i64 %.sroa.speculated.i.i120, %i.xt
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %i.xt
  %i.xx = shl i64 %i.xv, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.xw, i8 0, i64 %i.xx, i1 false)
  br label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i122

_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i122: ; preds = %bb.bb, %_ZN4llvh12safe_reallocEPvm.exit.i.i121
  %i.xy = and i32 %i.xq, 63                       ; 2 uses
  %.not.i.i.i.i123 = icmp eq i32 %i.xy, 0
  br i1 %.not.i.i.i.i123, label %_ZN4llvh9BitVector4growEj.exit.i124, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i122
  %i.xz = zext nneg i32 %i.xy to i64
  %i.ya = shl nsw i64 -1, %i.xz
  %i.yb = xor i64 %i.ya, -1
  %i.yc = add nsw i32 %i.xs, -1
  %i.yd = zext i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %i.yd ; 2 uses
  %i.yf = load i64, ptr %i.ye, align 8, !tbaa !39
  %i.yg = and i64 %i.yf, %i.yb
  store i64 %i.yg, ptr %i.ye, align 8, !tbaa !39
  br label %_ZN4llvh9BitVector4growEj.exit.i124

_ZN4llvh9BitVector4growEj.exit.i124:              ; preds = %bb.bc, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i122
  %i.yh = and i64 %i.xh, 4294967295               ; 3 uses
  %.not.i.i125 = icmp eq i64 %.sroa.speculated.i.i120, %i.yh
  br i1 %.not.i.i125, label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i112, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvh9BitVector4growEj.exit.i124
  %i.yi = sub i64 %.sroa.speculated.i.i120, %i.yh
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %i.yh
  %i.yk = shl i64 %i.yi, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.yj, i8 0, i64 %i.yk, i1 false)
  br label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i112

_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i112: ; preds = %bb.ay, %bb.bd, %_ZN4llvh9BitVector4growEj.exit.i124
  %i.yl = phi i64 [ %.sroa.speculated.i.i120, %_ZN4llvh9BitVector4growEj.exit.i124 ], [ %.sroa.speculated.i.i120, %bb.bd ], [ %i.xh, %bb.ay ] ; 2 uses
  %i.ym = phi i32 [ %i.xq, %_ZN4llvh9BitVector4growEj.exit.i124 ], [ %i.xq, %bb.bd ], [ %i.wp, %bb.ay ] ; 4 uses
  %i.yn = icmp ugt i32 %i.wm, %i.ym
  br i1 %i.yn, label %bb.be, label %_ZN4llvh9BitVector15set_unused_bitsEb.exit.i113

bb.be:                                            ; preds = %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i112
  %i.yo = add i32 %i.ym, 63
  %i.yp = lshr i32 %i.yo, 6                       ; 2 uses
  %i.yq = zext nneg i32 %i.yp to i64              ; 3 uses
  %i.yr = icmp ugt i64 %i.yl, %i.yq
  br i1 %i.yr, label %bb.bf, label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i117

bb.bf:                                            ; preds = %bb.be
  %i.ys = sub nuw i64 %i.yl, %i.yq
  %i.yt = load ptr, ptr %i.iw, align 8, !tbaa !43
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %i.yq
  %i.yv = shl i64 %i.ys, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.yu, i8 0, i64 %i.yv, i1 false)
  %.pre.i.i119 = load i32, ptr %i.ix, align 8, !tbaa !46
  br label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i117

_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i117: ; preds = %bb.bf, %bb.be
  %i.yw = phi i32 [ %.pre.i.i119, %bb.bf ], [ %i.ym, %bb.be ] ; 3 uses
  %i.yx = and i32 %i.yw, 63                       ; 2 uses
  %.not.i10.i118 = icmp eq i32 %i.yx, 0
  br i1 %.not.i10.i118, label %_ZN4llvh9BitVector15set_unused_bitsEb.exit.i113, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i117
  %i.yy = zext nneg i32 %i.yx to i64
  %i.yz = shl nsw i64 -1, %i.yy
  %i.za = xor i64 %i.yz, -1
  %i.zb = add nsw i32 %i.yp, -1
  %i.zc = zext i32 %i.zb to i64
  %i.zd = load ptr, ptr %i.iw, align 8, !tbaa !43
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %i.zc ; 2 uses
  %i.zf = load i64, ptr %i.ze, align 8, !tbaa !39
  %i.zg = and i64 %i.zf, %i.za
  store i64 %i.zg, ptr %i.ze, align 8, !tbaa !39
  br label %_ZN4llvh9BitVector15set_unused_bitsEb.exit.i113

_ZN4llvh9BitVector15set_unused_bitsEb.exit.i113:  ; preds = %bb.bg, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i117, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i112
  %i.zh = phi i32 [ %i.yw, %bb.bg ], [ %i.yw, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i117 ], [ %i.ym, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i112 ]
  store i32 %i.wm, ptr %i.ix, align 8, !tbaa !46
  %i.zi = icmp ult i32 %i.wm, %i.zh
  br i1 %i.zi, label %bb.bh, label %_ZN4llvh9BitVector6resizeEjb.exit126

bb.bh:                                            ; preds = %_ZN4llvh9BitVector15set_unused_bitsEb.exit.i113
  %i.zj = load i64, ptr %i.iy, align 8, !tbaa !49 ; 2 uses
  %i.zk = zext nneg i32 %i.wo to i64              ; 3 uses
  %i.zl = icmp ugt i64 %i.zj, %i.zk
  br i1 %i.zl, label %bb.bi, label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i114

bb.bi:                                            ; preds = %bb.bh
  %i.zm = sub nuw i64 %i.zj, %i.zk
  %i.zn = load ptr, ptr %i.iw, align 8, !tbaa !43
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %i.zk
  %i.zp = shl i64 %i.zm, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.zo, i8 0, i64 %i.zp, i1 false)
  %.pre.i.i.i116 = load i32, ptr %i.ix, align 8, !tbaa !46
  br label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i114

_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i114: ; preds = %bb.bi, %bb.bh
  %i.zq = phi i32 [ %.pre.i.i.i116, %bb.bi ], [ %i.wm, %bb.bh ] ; 3 uses
  %i.zr = and i32 %i.zq, 63                       ; 2 uses
  %.not.i.i.i115 = icmp eq i32 %i.zr, 0
  br i1 %.not.i.i.i115, label %_ZN4llvh9BitVector6resizeEjb.exit126, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i114
  %i.zs = zext nneg i32 %i.zr to i64
  %i.zt = shl nsw i64 -1, %i.zs
  %i.zu = xor i64 %i.zt, -1
  %i.zv = add nsw i32 %i.wo, -1
  %i.zw = zext i32 %i.zv to i64
  %i.zx = load ptr, ptr %i.iw, align 8, !tbaa !43
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %i.zw ; 2 uses
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !39
  %i.aaa = and i64 %i.zz, %i.zu
  store i64 %i.aaa, ptr %i.zy, align 8, !tbaa !39
  br label %_ZN4llvh9BitVector6resizeEjb.exit126

_ZN4llvh9BitVector6resizeEjb.exit126:             ; preds = %_ZN4llvh9BitVector15set_unused_bitsEb.exit.i113, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i114, %bb.bj
  %i.aab = phi i32 [ %i.wm, %_ZN4llvh9BitVector15set_unused_bitsEb.exit.i113 ], [ %i.zq, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i114 ], [ %i.zq, %bb.bj ]
  %.pre.i78 = load i32, ptr %i.wl, align 8, !tbaa !46
  %.pre234 = add i32 %.pre.i78, 63
  %.pre235 = lshr i32 %.pre234, 6
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvh9BitVector6resizeEjb.exit126, %_ZNK4llvh9BitVector4testERKS0_.exit
  %.pre-phi236 = phi i32 [ %.pre235, %_ZN4llvh9BitVector6resizeEjb.exit126 ], [ %i.wo, %_ZNK4llvh9BitVector4testERKS0_.exit ] ; 3 uses
  %i.aac = phi i32 [ %i.aab, %_ZN4llvh9BitVector6resizeEjb.exit126 ], [ %i.wp, %_ZNK4llvh9BitVector4testERKS0_.exit ]
  %i.aad = zext nneg i32 %.pre-phi236 to i64      ; 6 uses
  %.not9.i74 = icmp eq i32 %.pre-phi236, 0
  br i1 %.not9.i74, label %_ZN4llvh9BitVectoroRERKS0_.exit79, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.bk
  %i.aae = load ptr, ptr %i.wk, align 8, !tbaa !43 ; 8 uses
  %i.aaf = load ptr, ptr %i.iw, align 8, !tbaa !43 ; 8 uses
  %min.iters.check457 = icmp samesign ult i32 %.pre-phi236, 4
  br i1 %min.iters.check457, label %scalar.ph456.preheader, label %vector.memcheck450

vector.memcheck450:                               ; preds = %.lr.ph.i75
  %i.aag = shl nuw nsw i64 %i.aad, 3              ; 2 uses
  %scevgep451 = getelementptr i8, ptr %i.aaf, i64 %i.aag
  %scevgep452 = getelementptr i8, ptr %i.aae, i64 %i.aag
  %bound0453 = icmp ult ptr %i.aaf, %scevgep452
  %bound1454 = icmp ult ptr %i.aae, %scevgep451
  %found.conflict455 = and i1 %bound0453, %bound1454
  br i1 %found.conflict455, label %scalar.ph456.preheader, label %vector.ph458

vector.ph458:                                     ; preds = %vector.memcheck450
  %n.vec459 = and i64 %i.aad, 67108860            ; 3 uses
  br label %vector.body460

vector.body460:                                   ; preds = %vector.body460, %vector.ph458
  %index461 = phi i64 [ 0, %vector.ph458 ], [ %index.next466, %vector.body460 ] ; 3 uses
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.aae, i64 %index461 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %wide.load462 = load <2 x i64>, ptr %i.aah, align 8, !tbaa !39, !alias.scope !348
  %wide.load463 = load <2 x i64>, ptr %i.aai, align 8, !tbaa !39, !alias.scope !348
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %index461 ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16 ; 2 uses
  %wide.load464 = load <2 x i64>, ptr %i.aaj, align 8, !tbaa !39, !alias.scope !349, !noalias !348
  %wide.load465 = load <2 x i64>, ptr %i.aak, align 8, !tbaa !39, !alias.scope !349, !noalias !348
end_hunk_0
