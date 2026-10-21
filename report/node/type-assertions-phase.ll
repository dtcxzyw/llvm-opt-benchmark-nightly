Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/type-assertions-phase?download=true
inline.NumInlined: 47242
inline.NumDeleted: 15222
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 222
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE17MergePredecessorsIZNS2_21TypeInferenceAnalysis12ProcessBlockILb0EEEvRKNS2_5BlockEPjEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSH_IKNS6_8SnapshotEEERKT_RKT0_:bb.a
  %i.dd = load ptr, ptr %3, align 8, !noalias !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false)
  br i1 %.not57, label %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis12ProcessBlockILb0EEEvRKNS2_5BlockEPjENKUlNS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEENS_4base6VectorIKSA_EEE_clESC_SG_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 488
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i
  %.04.i = phi i64 [ 1, %.lr.ph.i ], [ %i.dh, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !117
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.04.i
  %i.dg = load ptr, ptr %i.de, align 8
  call void @_ZN2v88internal8compiler10turboshaft4Type15LeastUpperBoundERKS3_S5_PNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef %i.dg) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !117
  %i.dh = add nuw nsw i64 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dh, %2
  br i1 %exitcond.not.i, label %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis12ProcessBlockILb0EEEvRKNS2_5BlockEPjENKUlNS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEENS_4base6VectorIKSA_EEE_clESC_SG_.exit, label %bb.t, !llvm.loop !116

_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis12ProcessBlockILb0EEEvRKNS2_5BlockEPjENKUlNS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEENS_4base6VectorIKSA_EEE_clESC_SG_.exit: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.di = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft4Type6EqualsERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  br i1 %i.di, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.u

bb.u:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis12ProcessBlockILb0EEEvRKNS2_5BlockEPjENKUlNS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEENS_4base6VectorIKSA_EEE_clESC_SG_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.dj = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.dk = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.dl = icmp ult ptr %i.dj, %i.dk
  br i1 %i.dl, label %bb.w, label %bb.v, !prof !42

bb.v:                                             ; preds = %bb.u
  %i.dm = load ptr, ptr %i.f, align 8
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = sdiv exact i64 %i.dp, 56
  %i.dr = add nsw i64 %i.dq, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.dr)
  %.pre.i.i.i36 = load ptr, ptr %i.q, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ds = phi ptr [ %i.dj, %bb.u ], [ %.pre.i.i.i36, %bb.v ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  store ptr %i.dt, ptr %i.q, align 8
  store ptr %i.cx, ptr %i.ds, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, i64 24, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis12ProcessBlockILb0EEEvRKNS2_5BlockEPjENKUlNS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEENS_4base6VectorIKSA_EEE_clESC_SG_.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.du = getelementptr inbounds nuw i8, ptr %.03266, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.du, %i.p
  br i1 %.not, label %.loopexit, label %bb.s

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE17MoveToNewSnapshotINS2_16NoChangeCallbackEEERNS6_12SnapshotDataENS_4base6VectorIKNS6_8SnapshotEEERKT_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = load ptr, ptr %i.d, align 8
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %.idx = shl i64 %2, 3                           ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 %.idx
  %.not63 = icmp eq i64 %.idx, 8
  br i1 %.not63, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %.02062 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit
  %.02065 = phi ptr [ %.020, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit ], [ %.02062, %.lr.ph.preheader ] ; 2 uses
  %.064 = phi ptr [ %.1.lcssa.i, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %.02065, align 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.064, i64 8
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp ugt i32 %i.k, %i.i
  br i1 %i.l, label %.lr.ph.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %.lr.ph.i, %.lr.ph
  %.012.lcssa.i = phi ptr [ %.sroa.0.0.copyload, %.lr.ph ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.k, %.lr.ph ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %i.m = icmp ugt i32 %i.i, %.lcssa.i
  br i1 %i.m, label %.lr.ph18.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.01215.i = phi ptr [ %i.n, %.lr.ph.i ], [ %.sroa.0.0.copyload, %.lr.ph ]
  %i.n = load ptr, ptr %.01215.i, align 8         ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp ugt i32 %i.p, %i.i
  br i1 %i.q, label %.lr.ph.i, label %.preheader14.i, !llvm.loop !118

.preheader.i:                                     ; preds = %.lr.ph18.i, %.preheader14.i
  %.0.lcssa.i = phi ptr [ %.064, %.preheader14.i ], [ %i.r, %.lr.ph18.i ] ; 3 uses
  %.not20.i = icmp eq ptr %.012.lcssa.i, %.0.lcssa.i
  br i1 %.not20.i, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit, label %.lr.ph23.i

.lr.ph18.i:                                       ; preds = %.preheader14.i, %.lr.ph18.i
  %.017.i = phi ptr [ %i.r, %.lr.ph18.i ], [ %.064, %.preheader14.i ]
  %i.r = load ptr, ptr %.017.i, align 8           ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp ugt i32 %i.t, %.lcssa.i
  br i1 %i.u, label %.lr.ph18.i, label %.preheader.i, !llvm.loop !119

.lr.ph23.i:                                       ; preds = %.preheader.i, %.lr.ph23.i
  %.122.i = phi ptr [ %i.v, %.lr.ph23.i ], [ %.0.lcssa.i, %.preheader.i ]
  %.11321.i = phi ptr [ %i.w, %.lr.ph23.i ], [ %.012.lcssa.i, %.preheader.i ]
  %i.v = load ptr, ptr %.122.i, align 8           ; 3 uses
  %i.w = load ptr, ptr %.11321.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %i.w, %i.v
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit, label %.lr.ph23.i, !llvm.loop !120

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit: ; preds = %.lr.ph23.i, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader.i ], [ %i.v, %.lr.ph23.i ] ; 2 uses
  %.020 = getelementptr inbounds nuw i8, ptr %.02065, i64 8 ; 2 uses
  %.not = icmp eq ptr %.020, %i.g
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit, %bb.c, %bb.b
  %.1 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %.1.lcssa.i, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit ] ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, %i.aa
  br i1 %i.ad, label %.lr.ph.i37, label %.preheader14.i24

.preheader14.i24:                                 ; preds = %.lr.ph.i37, %.loopexit
  %.012.lcssa.i25 = phi ptr [ %i.y, %.loopexit ], [ %i.af, %.lr.ph.i37 ] ; 3 uses
  %.lcssa.i26 = phi i32 [ %i.ac, %.loopexit ], [ %i.ah, %.lr.ph.i37 ] ; 2 uses
  %i.ae = icmp ugt i32 %i.aa, %.lcssa.i26
  br i1 %i.ae, label %.lr.ph18.i35, label %.preheader.i27

.lr.ph.i37:                                       ; preds = %.loopexit, %.lr.ph.i37
  %.01215.i38 = phi ptr [ %i.af, %.lr.ph.i37 ], [ %i.y, %.loopexit ]
  %i.af = load ptr, ptr %.01215.i38, align 8      ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, %i.aa
  br i1 %i.ai, label %.lr.ph.i37, label %.preheader14.i24, !llvm.loop !118

.preheader.i27:                                   ; preds = %.lr.ph18.i35, %.preheader14.i24
  %.0.lcssa.i28 = phi ptr [ %.1, %.preheader14.i24 ], [ %i.aj, %.lr.ph18.i35 ] ; 2 uses
  %.not20.i29 = icmp eq ptr %.012.lcssa.i25, %.0.lcssa.i28
  br i1 %.not20.i29, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit39, label %.lr.ph23.i30

.lr.ph18.i35:                                     ; preds = %.preheader14.i24, %.lr.ph18.i35
  %.017.i36 = phi ptr [ %i.aj, %.lr.ph18.i35 ], [ %.1, %.preheader14.i24 ]
  %i.aj = load ptr, ptr %.017.i36, align 8        ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = icmp ugt i32 %i.al, %.lcssa.i26
  br i1 %i.am, label %.lr.ph18.i35, label %.preheader.i27, !llvm.loop !119

.lr.ph23.i30:                                     ; preds = %.preheader.i27, %.lr.ph23.i30
  %.122.i31 = phi ptr [ %i.an, %.lr.ph23.i30 ], [ %.0.lcssa.i28, %.preheader.i27 ]
  %.11321.i32 = phi ptr [ %i.ao, %.lr.ph23.i30 ], [ %.012.lcssa.i25, %.preheader.i27 ]
  %i.an = load ptr, ptr %.122.i31, align 8        ; 3 uses
  %i.ao = load ptr, ptr %.11321.i32, align 8      ; 2 uses
  %.not.i33 = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i33, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit39, label %.lr.ph23.i30, !llvm.loop !120

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit39: ; preds = %.lr.ph23.i30, %.preheader.i27
  %.1.lcssa.i34 = phi ptr [ %.012.lcssa.i25, %.preheader.i27 ], [ %i.an, %.lr.ph23.i30 ] ; 4 uses
  %.not2266 = icmp eq ptr %i.y, %.1.lcssa.i34
  br i1 %.not2266, label %._crit_edge, label %.lr.ph67

.lr.ph67:                                         ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit39
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph67, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE21RevertCurrentSnapshotIKNS2_16NoChangeCallbackEEEvRT_.exit
  %i.aq = phi ptr [ %i.y, %.lr.ph67 ], [ %i.bb, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE21RevertCurrentSnapshotIKNS2_16NoChangeCallbackEEEvRT_.exit ] ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %5 = load i64, ptr %4, align 8                  ; 2 uses
  %6 = load ptr, ptr %i.ap, align 8               ; 2 uses
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %6, i64 %5
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp samesign eq i64 %i.at, %5
  br i1 %i.au, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE21RevertCurrentSnapshotIKNS2_16NoChangeCallbackEEEvRT_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.av = getelementptr inbounds nuw [56 x i8], ptr %6, i64 %i.at
  br label %.lr.ph.i40

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i40
  %.pre.i = load ptr, ptr %i.x, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE21RevertCurrentSnapshotIKNS2_16NoChangeCallbackEEEvRT_.exit

.lr.ph.i40:                                       ; preds = %.lr.ph.i40, %.lr.ph.preheader.i
  %.sroa.010.016.i = phi ptr [ %i.aw, %.lr.ph.i40 ], [ %i.av, %.lr.ph.preheader.i ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.010.016.i, i64 -56 ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.010.016.i, i64 -48
  %i.ay = load ptr, ptr %i.aw, align 8, !nonnull !40, !align !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  %i.az = icmp eq ptr %i.aw, %i.ar
  br i1 %i.az, label %._crit_edge.loopexit.i, label %.lr.ph.i40

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE21RevertCurrentSnapshotIKNS2_16NoChangeCallbackEEEvRT_.exit: ; preds = %bb.d, %._crit_edge.loopexit.i
  %i.ba = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.aq, %bb.d ]
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  store ptr %i.bb, ptr %i.x, align 8
  %.not22 = icmp eq ptr %i.bb, %.1.lcssa.i34
  br i1 %.not22, label %._crit_edge, label %bb.d, !llvm.loop !121

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE21RevertCurrentSnapshotIKNS2_16NoChangeCallbackEEEvRT_.exit, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS7_.exit39
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  store ptr %i.be, ptr %i.bf, align 8
  %.not2368 = icmp eq ptr %.1, %.1.lcssa.i34
  br i1 %.not2368, label %._crit_edge76, label %.lr.ph71

.lr.ph71:                                         ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 336
  br label %bb.e

._crit_edge72:                                    ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE12SnapshotDataEE9push_backERKS9_.exit
  %.pre.a = load ptr, ptr %i.bf, align 8, !noalias !131 ; 2 uses
  %.pre84.a = load ptr, ptr %i.bd, align 8, !noalias !132 ; 2 uses
  %i.bh = icmp eq ptr %.pre.a, %.pre84.a
  br i1 %i.bh, label %._crit_edge76, label %.lr.ph75

.lr.ph75:                                         ; preds = %._crit_edge72
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph71, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE12SnapshotDataEE9push_backERKS9_.exit
  %storemerge69 = phi ptr [ %.1, %.lr.ph71 ], [ %i.bu, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE12SnapshotDataEE9push_backERKS9_.exit ] ; 2 uses
  %i.bj = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = icmp ult ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE12SnapshotDataEE9push_backERKS9_.exit, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.bm = load ptr, ptr %i.bd, align 8
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3
  %i.br = add nsw i64 %i.bq, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE12SnapshotDataEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 noundef %i.br)
  %.pre.i41 = load ptr, ptr %i.bf, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE12SnapshotDataEE9push_backERKS9_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE12SnapshotDataEE9push_backERKS9_.exit: ; preds = %bb.e, %bb.f
  %i.bs = phi ptr [ %i.bj, %bb.e ], [ %.pre.i41, %bb.f ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bt, ptr %i.bf, align 8
  store ptr %storemerge69, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %storemerge69, align 8    ; 2 uses
  %.not23 = icmp eq ptr %i.bu, %.1.lcssa.i34
  br i1 %.not23, label %._crit_edge72, label %bb.e, !llvm.loop !128

._crit_edge76:                                    ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE14ReplaySnapshotIKNS2_16NoChangeCallbackEEEvPNS6_12SnapshotDataERT_.exit, %._crit_edge, %._crit_edge72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 216
  %7 = load ptr, ptr %i.bv, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bw = load ptr, ptr %8, align 8
  %i.bx = ptrtoint ptr %7 to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 56                ; 2 uses
  store i64 %i.ca, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -32
  %.not.i.i = icmp eq ptr %i.cc, %i.cf
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge76
  store ptr %.1, ptr %i.cc, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %.1, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt16allocator_traitsIN2v88internal22RecyclingZoneAllocatorINS1_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE12SnapshotDataEEEE9constructIS9_JRPS9_mEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERSA_PT_DpOSF_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = load i32, ptr %i.z, align 8
  %i.ch = add i32 %i.cg, 1
  br label %_ZNSt16allocator_traitsIN2v88internal22RecyclingZoneAllocatorINS1_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE12SnapshotDataEEEE9constructIS9_JRPS9_mEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERSA_PT_DpOSF_.exit.i.i

_ZNSt16allocator_traitsIN2v88internal22RecyclingZoneAllocatorINS1_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE12SnapshotDataEEEE9constructIS9_JRPS9_mEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERSA_PT_DpOSF_.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ci = phi i32 [ %i.ch, %bb.h ], [ 0, %bb.g ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 %i.ca, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i64 -1, ptr %i.cl, align 8
  %i.cm = load ptr, ptr %i.cb, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 2 uses
  store ptr %i.cn, ptr %i.cb, align 8
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge76
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_push_back_auxIJRPS8_mEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre.i.i = load ptr, ptr %i.cb, align 8, !noalias !133
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt16allocator_traitsIN2v88internal22RecyclingZoneAllocatorINS1_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE12SnapshotDataEEEE9constructIS9_JRPS9_mEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERSA_PT_DpOSF_.exit.i.i
  %i.cp = phi ptr [ %.pre.i.i, %bb.i ], [ %i.cn, %_ZNSt16allocator_traitsIN2v88internal22RecyclingZoneAllocatorINS1_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE12SnapshotDataEEEE9constructIS9_JRPS9_mEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERSA_PT_DpOSF_.exit.i.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !133
  %i.cs = icmp eq ptr %i.cp, %i.cr
  br i1 %i.cs, label %bb.k, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE11NewSnapshotEPNS6_12SnapshotDataE.exit

bb.k:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !133
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 512
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE11NewSnapshotEPNS6_12SnapshotDataE.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE11NewSnapshotEPNS6_12SnapshotDataE.exit: ; preds = %bb.j, %bb.k
  %i.cy = phi ptr [ %i.cx, %bb.k ], [ %i.cp, %bb.j ]
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.cz, ptr %i.x, align 8
  ret ptr %i.cz

bb.l:                                             ; preds = %.lr.ph75, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE14ReplaySnapshotIKNS2_16NoChangeCallbackEEEvPNS6_12SnapshotDataERT_.exit
  %.sroa.045.073 = phi ptr [ %.pre.a, %.lr.ph75 ], [ %i.da, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE14ReplaySnapshotIKNS2_16NoChangeCallbackEEEvPNS6_12SnapshotDataERT_.exit ]
  %i.da = getelementptr inbounds i8, ptr %.sroa.045.073, i64 -8 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8            ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i64, ptr %i.dc, align 8            ; 2 uses
  %9 = load ptr, ptr %i.bi, align 8               ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.df = load i64, ptr %i.de, align 8            ; 2 uses
  %i.dg = getelementptr inbounds nuw [56 x i8], ptr %9, i64 %i.df
  %.not17.i = icmp samesign eq i64 %i.dd, %i.df
  br i1 %.not17.i, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE14ReplaySnapshotIKNS2_16NoChangeCallbackEEEvPNS6_12SnapshotDataERT_.exit, label %.lr.ph.preheader.i42

.lr.ph.preheader.i42:                             ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw [56 x i8], ptr %9, i64 %i.dd
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43, %.lr.ph.preheader.i42
  %.018.i = phi ptr [ %i.dk, %.lr.ph.i43 ], [ %i.dh, %.lr.ph.preheader.i42 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.018.i, i64 32
  %i.dj = load ptr, ptr %.018.i, align 8, !nonnull !40, !align !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %.018.i, i64 56 ; 2 uses
  %.not.i44 = icmp eq ptr %i.dk, %i.dg
  br i1 %.not.i44, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE14ReplaySnapshotIKNS2_16NoChangeCallbackEEEvPNS6_12SnapshotDataERT_.exit, label %.lr.ph.i43

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE14ReplaySnapshotIKNS2_16NoChangeCallbackEEEvPNS6_12SnapshotDataERT_.exit: ; preds = %.lr.ph.i43, %bb.l
  store ptr %i.db, ptr %i.x, align 8
  %i.dl = icmp eq ptr %i.da, %.pre84.a
  br i1 %i.dl, label %._crit_edge76, label %bb.l
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE12SnapshotDataEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE12SnapshotDataEA_SA_EEPT_m.exit, !prof !39

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #23
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE12SnapshotDataEA_SA_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE12SnapshotDataEA_SA_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE12SnapshotDataEA_SA_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE12SnapshotDataEA_SA_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE12SnapshotDataEA_SA_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_4TypeENS3_9NoKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_4TypeENS4_9NoKeyDataEEEA_S9_EEPT_m.exit, !prof !39

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #23
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_4TypeENS4_9NoKeyDataEEEA_S9_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_4TypeENS4_9NoKeyDataEEEA_S9_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_4TypeENS4_9NoKeyDataEEEA_S9_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_4TypeENS4_9NoKeyDataEEEA_S9_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_4TypeENS4_9NoKeyDataEEEA_S9_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

declare void @_ZN2v88internal8compiler10turboshaft4Type15LeastUpperBoundERKS3_S5_PNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft4Type6EqualsERKS3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8LogEntryEE11NewCapacityEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = sdiv exact i64 %i.l, 56
  %i.n = shl nsw i64 %i.m, 1
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8LogEntryEE11NewCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8LogEntryEE11NewCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 2, %bb.a ]
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %1) ; 3 uses
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  %i.r = icmp ult i64 %i.p, 329406144173384850
  br i1 %i.r, label %bb.d, label %bb.c, !prof !42

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8LogEntryEE11NewCapacityEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #24
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_4TypeENS3_9NoKeyDataEE8LogEntryEE11NewCapacityEm.exit
  %i.s = mul nuw i64 %i.p, 56                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE8LogEntryEA_S9_EEPT_m.exit, !prof !39

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.s) #23
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE8LogEntryEA_S9_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE8LogEntryEA_S9_EEPT_m.exit: ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %.pre.i.i, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  store ptr %i.aa, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.g
  store ptr %i.ac, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_4TypeENS4_9NoKeyDataEE8LogEntryEA_S9_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aa, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.g
end_hunk_0
