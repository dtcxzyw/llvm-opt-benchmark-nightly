Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/CFG?download=true
inline.NumInlined: 3113
inline.NumDeleted: 1058
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4growEj:bb.a
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 216
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 288
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 360
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 432
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 504
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 576 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.i.7, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEE4growEj.exit, label %.lr.ph.i.i, !llvm.loop !300

bb.c:                                             ; preds = %bb.a
  %i.am = zext i32 %i.b to i64
  %i.an = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %i.am
  tail call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E18moveFromOldBucketsEPSF_SI_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.an)
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #14
  br label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEE4growEj.exit

_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEE4growEj.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E18moveFromOldBucketsEPSF_SI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !297
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !298
  %i.c = load ptr, ptr %0, align 8, !tbaa !192    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !191  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx.i = mul nuw nsw i64 %i.f, 72              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.h = add nsw i64 %.idx.i, -72                 ; 2 uses
  %i.i = udiv i64 %i.h, 72
  %i.j = add nuw nsw i64 %i.i, 1
  %xtraiter = and i64 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.k, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 72 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !323

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.prol ]
  %i.l = icmp ult i64 %i.h, 504
  br i1 %i.l, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i, i64 72
  store ptr inttoptr (i64 -8 to ptr), ptr %i.m, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %.07.i, i64 144
  store ptr inttoptr (i64 -8 to ptr), ptr %i.n, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i, i64 216
  store ptr inttoptr (i64 -8 to ptr), ptr %i.o, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %.07.i, i64 288
  store ptr inttoptr (i64 -8 to ptr), ptr %i.p, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 360
  store ptr inttoptr (i64 -8 to ptr), ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %.07.i, i64 432
  store ptr inttoptr (i64 -8 to ptr), ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %.07.i, i64 504
  store ptr inttoptr (i64 -8 to ptr), ptr %i.s, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i, i64 576 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.t, %i.g
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !300

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.not19 = icmp eq ptr %1, %2
  br i1 %.not19, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E9initEmptyEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E9initEmptyEv.exit, %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit
  %.020 = phi ptr [ %i.bj, %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit ], [ %1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E9initEmptyEv.exit ] ; 7 uses
  %i.u = load ptr, ptr %.020, align 8, !tbaa !32  ; 4 uses
  %magicptr = ptrtoint ptr %i.u to i64            ; 2 uses
  switch i64 %magicptr, label %bb.b [
    i64 -8, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit
    i64 -16, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %0, align 8, !tbaa !192    ; 2 uses
  %i.w = load i32, ptr %i.d, align 8, !tbaa !191  ; 2 uses
  %i.x = icmp ne i32 %i.w, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = trunc i64 %magicptr to i32               ; 2 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = lshr i32 %i.y, 9
  %i.ab = xor i32 %i.z, %i.aa
  %i.ac = add i32 %i.w, -1                        ; 2 uses
  %.02744.i.i = and i32 %i.ac, %i.ab              ; 2 uses
  %i.ad = zext nneg i32 %.02744.i.i to i64
  %i.ae = getelementptr inbounds nuw [72 x i8], ptr %i.v, i64 %i.ad ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  %i.ag = icmp eq ptr %i.u, %i.af
  br i1 %i.ag, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit, label %.lr.ph.i.i, !prof !52

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.ah = phi ptr [ %i.ar, %bb.d ], [ %i.af, %bb.b ] ; 2 uses
  %i.ai = phi ptr [ %i.aq, %bb.d ], [ %i.ae, %bb.b ] ; 2 uses
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02744.i.i, %bb.b ]
  %.046.i.i = phi i32 [ %i.an, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.aj = icmp eq ptr %i.ah, inttoptr (i64 -8 to ptr)
  br i1 %i.aj, label %bb.c, label %bb.d, !prof !53

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02945.i.i, null
  %i.ak = select i1 %.not.i.i, ptr %i.ai, ptr %.02945.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.al = icmp eq ptr %i.ah, inttoptr (i64 -16 to ptr)
  %i.am = icmp eq ptr %.02945.i.i, null
  %or.cond.not.i.i = select i1 %i.al, i1 %i.am, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.ai, ptr %.02945.i.i
  %i.an = add i32 %.046.i.i, 1
  %i.ao = add i32 %.046.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.ao, %i.ac                ; 2 uses
  %i.ap = zext i32 %.027.i.i to i64
  %i.aq = getelementptr inbounds nuw [72 x i8], ptr %i.v, i64 %i.ap ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !32 ; 2 uses
  %i.as = icmp eq ptr %i.u, %i.ar
  br i1 %i.as, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit, label %.lr.ph.i.i, !prof !54, !llvm.loop !296

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.ak, %bb.c ], [ %i.ae, %bb.b ], [ %i.aq, %bb.d ] ; 6 uses
  store ptr %i.u, ptr %.sink.i.i, align 8, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.020, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(64) %i.au, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 56
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 48
  store i32 0, ptr %i.ax, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 52
  store i32 2, ptr %i.ay, align 4, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %.020, i64 48
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !10
  %.not.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecC2EOS7_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.020, i64 40
  %i.bc = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.bb) ; 0 uses
  br label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecC2EOS7_.exit

_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecC2EOS7_.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit, %bb.e
  %i.bd = load i32, ptr %i.a, align 8, !tbaa !297
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.a, align 8, !tbaa !297
  %i.bf = getelementptr inbounds nuw i8, ptr %.020, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !7  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.020, i64 56
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecC2EOS7_.exit
  tail call void @free(ptr noundef %i.bg) #14
  br label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit

_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit: ; preds = %.lr.ph, %.lr.ph, %bb.f, %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecC2EOS7_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.020, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.bj, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !324
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE14ChildrenGetterILb0EE3GetEPS4_St17integral_constantIbLb0EE(ptr dead_on_unwind noalias writable sret(%"class.llvh::SmallVector.114") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #14, !noalias !325 ; 0 uses
  %i.b = tail call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #14, !noalias !325 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %.thread.a, label %_ZN4llvh8childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsIT_E17ChildIteratorTypeEEERKNS7_7NodeRefE.exit

.thread.a:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %0, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.e, align 4, !tbaa !11
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EEC2ISt16reverse_iteratorINS_12SuccIteratorINS1_14TerminatorInstES2_EEEvEET_SB_.exit

_ZN4llvh8childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsIT_E17ChildIteratorTypeEEERKNS7_7NodeRefE.exit: ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.b) #14, !noalias !325 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i32 0, ptr %i.h, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.i, align 4, !tbaa !11
  %i.j = icmp ugt i32 %i.f, 8
  br i1 %i.j, label %.thread16, label %bb.b

.thread16:                                        ; preds = %_ZN4llvh8childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsIT_E17ChildIteratorTypeEEERKNS7_7NodeRefE.exit
  %i.k = sext i32 %i.f to i64
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.g, i64 noundef %i.k, i64 noundef 8) #14
  %.pre.i.i = load i32, ptr %i.h, align 8, !tbaa !10
  %.pre15.i.i = zext i32 %.pre.i.i to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !7
  br label %.lr.ph.i.i.i.i.preheader.i.i

bb.b:                                             ; preds = %_ZN4llvh8childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsIT_E17ChildIteratorTypeEEERKNS7_7NodeRefE.exit
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EEC2ISt16reverse_iteratorINS_12SuccIteratorINS1_14TerminatorInstES2_EEEvEET_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %.thread16, %bb.b
  %i.l = phi ptr [ %.pre, %.thread16 ], [ %i.g, %bb.b ]
  %.pre-phi.i.i21 = phi i64 [ %.pre15.i.i, %.thread16 ], [ 0, %bb.b ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.pre-phi.i.i21
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.sroa.2.0.i.i.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.preheader.i.i ]
  %.07.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.n = add nsw i32 %.sroa.2.0.i.i.i.i.i, -1     ; 3 uses
  %i.o = tail call noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %i.b, i32 noundef %i.n) #14
  store ptr %i.o, ptr %.07.i.i.i.i.i.i, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE18uninitialized_copyISt16reverse_iteratorINS_12SuccIteratorINS1_14TerminatorInstES2_EEEPS3_EEvT_SC_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !328

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE18uninitialized_copyISt16reverse_iteratorINS_12SuccIteratorINS1_14TerminatorInstES2_EEEPS3_EEvT_SC_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre14.i.i = load i32, ptr %i.h, align 8, !tbaa !10
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EEC2ISt16reverse_iteratorINS_12SuccIteratorINS1_14TerminatorInstES2_EEEvEET_SB_.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EEC2ISt16reverse_iteratorINS_12SuccIteratorINS1_14TerminatorInstES2_EEEvEET_SB_.exit: ; preds = %.thread.a, %bb.b, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE18uninitialized_copyISt16reverse_iteratorINS_12SuccIteratorINS1_14TerminatorInstES2_EEEPS3_EEvT_SC_T0_.exit.loopexit.i.i
  %.sink.i.i.i.i1115 = phi i32 [ %i.f, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE18uninitialized_copyISt16reverse_iteratorINS_12SuccIteratorINS1_14TerminatorInstES2_EEEPS3_EEvT_SC_T0_.exit.loopexit.i.i ], [ 0, %bb.b ], [ 0, %.thread.a ]
  %2 = phi ptr [ %i.h, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE18uninitialized_copyISt16reverse_iteratorINS_12SuccIteratorINS1_14TerminatorInstES2_EEEPS3_EEvT_SC_T0_.exit.loopexit.i.i ], [ %i.h, %bb.b ], [ %i.d, %.thread.a ]
  %i.q = phi i32 [ %.pre14.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE18uninitialized_copyISt16reverse_iteratorINS_12SuccIteratorINS1_14TerminatorInstES2_EEEPS3_EEvT_SC_T0_.exit.loopexit.i.i ], [ 0, %bb.b ], [ 0, %.thread.a ]
  %i.r = add i32 %i.q, %.sink.i.i.i.i1115
  store i32 %i.r, ptr %2, align 8, !tbaa !10
  ret void
}

declare noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #3

declare noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE4evalEPS4_j(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvh::SmallVector.120", align 8 ; 10 uses
  %4 = alloca %"class.llvh::SmallPtrSet.122", align 8 ; 11 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.g = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !290
  %i.j = icmp ult i32 %i.i, %2
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store i32 0, ptr %i.m, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 32, ptr %i.n, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 32, ptr %i.q, align 8, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store i32 0, ptr %i.r, align 4, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i32 0, ptr %i.s, align 8, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !286
  %.not = icmp ult i32 %i.u, %2
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !293
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.x = load i64, ptr %i.a, align 8
  store i64 %i.x, ptr %i.l, align 8
  store i32 1, ptr %i.m, align 8, !tbaa !10
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %i.y = phi i32 [ %i.cd, %bb.n ], [ 1, %.lr.ph.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.z = load ptr, ptr %3, align 8, !tbaa !7
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !32
  %i.ae = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !286
  %i.ah = zext i32 %i.ag to i64
  %i.ai = load ptr, ptr %0, align 8, !tbaa !178
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !32 ; 5 uses
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !32
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !64, !noalias !329
  %i.am = load ptr, ptr %4, align 8, !tbaa !62, !noalias !329 ; 3 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.ao = load i32, ptr %i.r, align 4, !tbaa !66, !noalias !329 ; 4 uses
  %i.ap = zext i32 %i.ao to i64
  %.idx.i.i = shl nuw nsw i64 %i.ap, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i ; 2 uses
  %.not63.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not63.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.065.i.i = phi ptr [ %spec.select.i.i, %bb.e ], [ null, %bb.d ]
  %.04964.i.i = phi ptr [ %i.at, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
  %i.ar = load ptr, ptr %.04964.i.i, align 8, !tbaa !27, !noalias !329 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.ar, %i.ak
  br i1 %.not27.i.i, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.as = icmp eq ptr %i.ar, inttoptr (i64 -2 to ptr)
  %spec.select.i.i = select i1 %i.as, ptr %.04964.i.i, ptr %.065.i.i ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04964.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.aq
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !75

.critedge.i.i:                                    ; preds = %bb.e
  %.not28.i.i = icmp eq ptr %spec.select.i.i, null
  br i1 %.not28.i.i, label %.critedge.thread.i.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i.i
  store ptr %i.ak, ptr %spec.select.i.i, align 8, !tbaa !27, !noalias !329
  %i.au = load i32, ptr %i.s, align 8, !tbaa !67, !noalias !329
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr %i.s, align 8, !tbaa !67, !noalias !329
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.d
  %i.aw = load i32, ptr %i.q, align 8, !tbaa !65, !noalias !329
  %i.ax = icmp ult i32 %i.ao, %i.aw
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge.thread.i.i
  %i.ay = add nuw i32 %i.ao, 1
  store i32 %i.ay, ptr %i.r, align 4, !tbaa !66, !noalias !329
  store ptr %i.ak, ptr %i.aq, align 8, !tbaa !27, !noalias !329
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit

bb.h:                                             ; preds = %.critedge.thread.i.i, %.lr.ph
  %i.az = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.ak) #14, !noalias !329
  %i.ba = extractvalue { ptr, i8 } %i.az, 1
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = xor i1 %i.bb, true
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit

_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.g, %bb.h
  %.fca.1.insert.merged.i.i = phi i1 [ %i.bc, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ true, %.lr.ph.i.i ]
  %.pre = load i32, ptr %i.af, align 4, !tbaa !286 ; 2 uses
  %.not17 = icmp ult i32 %.pre, %2
  %or.cond = select i1 %.fca.1.insert.merged.i.i, i1 true, i1 %.not17
  %i.bd = load i32, ptr %i.m, align 8, !tbaa !10  ; 3 uses
  br i1 %or.cond, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit
  %i.be = load i32, ptr %i.n, align 4, !tbaa !11
  %.not.i19 = icmp ult i32 %i.bd, %i.be
  br i1 %.not.i19, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21, label %bb.j, !prof !53

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 8) #14
  %.pre.i20 = load i32, ptr %i.m, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21: ; preds = %bb.i, %bb.j
  %i.bf = phi i32 [ %.pre.i20, %bb.j ], [ %i.bd, %bb.i ]
  %i.bg = load ptr, ptr %3, align 8, !tbaa !7
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i64, ptr %i.c, align 8
  store i64 %i.bj, ptr %i.bi, align 1
  %i.bk = load i32, ptr %i.m, align 8, !tbaa !10
  %i.bl = add i32 %i.bk, 1                        ; 2 uses
  store i32 %i.bl, ptr %i.m, align 8, !tbaa !10
  br label %bb.n, !llvm.loop !332

.critedge:                                        ; preds = %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit
  %i.bm = add i32 %i.bd, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.m, align 8, !tbaa !10
  %i.bn = icmp ult i32 %.pre, %2
  br i1 %i.bn, label %bb.n, label %bb.k, !llvm.loop !332

bb.k:                                             ; preds = %.critedge
  %i.bo = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !293
  store ptr %i.bq, ptr %i.d, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !293
  store ptr %i.bs, ptr %i.e, align 8, !tbaa !32
  %i.bt = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !292
  %i.bw = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !292
  %i.bz = icmp ult i32 %i.bv, %i.by
  br i1 %i.bz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !32
  store ptr %i.ca, ptr %i.br, align 8, !tbaa !293
  br label %bb.m
end_hunk_0
