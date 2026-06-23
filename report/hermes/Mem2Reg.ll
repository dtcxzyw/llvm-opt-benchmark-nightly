inline.NumInlined: 2091
inline.NumDeleted: 876
begin_hunk_0_@llvm.lifetime.end.p0
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes13createMem2RegEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN6hermes7Mem2RegESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13, !noalias !272 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !275, !noalias !272
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str, ptr %i.c, align 8, !tbaa !280, !noalias !272
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 7, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !281, !noalias !272
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes7Mem2RegE, i64 16), ptr %i.a, align 8, !tbaa !282, !noalias !272
  store ptr %i.a, ptr %0, align 8, !tbaa !284
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes7Mem2RegD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !34   ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !35

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !25

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -16 to ptr)
  %i.v = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.03245.i.i
  %i.w = add i32 %.02746.i.i, 1
  %i.x = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.029.i.i to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24  ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !36, !llvm.loop !37

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !287
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !38 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !25

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !39
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
  %.not10.i.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !25

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ah, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !38
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !287
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.an = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ao = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ad, %bb.f ]
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !38
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !24
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !39
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !39
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %1, align 8, !tbaa !24
  store ptr %i.av, ptr %i.an, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 0, ptr %i.aw, align 8, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit
  %.0 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit ], [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.c, -1                         ; 2 uses
  %.02944.i = and i32 %i.j, %i.k                  ; 2 uses
  %i.l = zext nneg i32 %.02944.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  %i.o = icmp eq ptr %i.e, %i.n
  br i1 %i.o, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit, label %.lr.ph.i, !prof !35

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.p = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %i.y, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %.02947.i = phi i32 [ %.029.i, %bb.d ], [ %.02944.i, %bb.b ]
  %.02746.i = phi i32 [ %i.v, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.r = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  br i1 %i.r, label %bb.c, label %bb.d, !prof !25

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.03245.i, null
  %i.s = select i1 %.not.i, ptr %i.q, ptr %.03245.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = icmp eq ptr %i.p, inttoptr (i64 -16 to ptr)
  %i.u = icmp eq ptr %.03245.i, null
  %or.cond.not.i = select i1 %i.t, i1 %i.u, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.q, ptr %.03245.i
  %i.v = add i32 %.02746.i, 1
  %i.w = add i32 %.02746.i, %.02947.i
  %.029.i = and i32 %i.w, %i.k                    ; 2 uses
  %i.x = zext i32 %.029.i to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24   ; 2 uses
  %i.aa = icmp eq ptr %i.e, %i.z
  br i1 %i.aa, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit, label %.lr.ph.i, !prof !36, !llvm.loop !37

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.s, %bb.c ], [ null, %bb.a ], [ %i.m, %bb.b ], [ %i.y, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !287
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !31     ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !34
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #11 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !31
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !39
  %i.w = load i32, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter31 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !288

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !289

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !39
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not6.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.au = lshr exact i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !290

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ay, align 8, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ba, align 8, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bb, align 8, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bc, align 8, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bd, align 8, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !289

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not19.i = icmp eq i32 %i.b, 0
  br i1 %.not19.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E18moveFromOldBucketsEPSB_SE_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i, %bb.f
  %i.bg = phi i32 [ %i.cg, %bb.f ], [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i ] ; 3 uses
  %.020.i = phi ptr [ %i.ch, %bb.f ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i ] ; 3 uses
  %i.bh = load ptr, ptr %.020.i, align 8, !tbaa !24 ; 4 uses
  %magicptr.i = ptrtoint ptr %i.bh to i64         ; 2 uses
  switch i64 %magicptr.i, label %bb.c [
    i64 -8, label %bb.f
    i64 -16, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.i6
  %2 = load i32, ptr %i.a, align 8, !tbaa !34     ; 2 uses
  %3 = icmp ne i32 %2, 0
  tail call void @llvm.assume(i1 %3)
  %i.bi = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bj = lshr i32 %i.bi, 4
  %i.bk = lshr i32 %i.bi, 9
  %i.bl = xor i32 %i.bj, %i.bk
  %4 = add i32 %2, -1                             ; 2 uses
  %.02944.i.i.i = and i32 %4, %i.bl               ; 2 uses
  %i.bm = zext nneg i32 %.02944.i.i.i to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bm ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !24 ; 2 uses
  %i.bp = icmp eq ptr %i.bh, %i.bo
  br i1 %i.bp, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i, label %.lr.ph.i.i.i, !prof !35

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.bq = phi ptr [ %i.ca, %bb.e ], [ %i.bo, %bb.c ] ; 2 uses
  %i.br = phi ptr [ %i.bz, %bb.e ], [ %i.bn, %bb.c ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.e ], [ %.02944.i.i.i, %bb.c ]
  %.02746.i.i.i = phi i32 [ %i.bw, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.bs = icmp eq ptr %i.bq, inttoptr (i64 -8 to ptr)
  br i1 %i.bs, label %bb.d, label %bb.e, !prof !25

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03245.i.i.i, null
  %i.bt = select i1 %.not.i.i.i, ptr %i.br, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = icmp eq ptr %i.bq, inttoptr (i64 -16 to ptr)
  %i.bv = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bu, i1 %i.bv, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.br, ptr %.03245.i.i.i
  %i.bw = add i32 %.02746.i.i.i, 1
  %i.bx = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.bx, %4                 ; 2 uses
  %i.by = zext i32 %.029.i.i.i to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.by ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !24 ; 2 uses
  %i.cb = icmp eq ptr %i.bh, %i.ca
  br i1 %i.cb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i, label %.lr.ph.i.i.i, !prof !36, !llvm.loop !37

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bt, %bb.d ], [ %i.bn, %bb.c ], [ %i.bz, %bb.e ] ; 2 uses
  store ptr %i.bh, ptr %.sink.i.i.i, align 8, !tbaa !24
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !3
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !3
  %i.cf = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.cf, ptr %i.ao, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i, %.lr.ph.i6, %.lr.ph.i6
  %i.cg = phi i32 [ %i.cf, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i ], [ %i.bg, %.lr.ph.i6 ], [ %i.bg, %.lr.ph.i6 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ch, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E18moveFromOldBucketsEPSB_SE_.exit, label %.lr.ph.i6, !llvm.loop !291

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E18moveFromOldBucketsEPSB_SE_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #10
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E18moveFromOldBucketsEPSB_SE_.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.66") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !205    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !213  ; 9 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !172    ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !172  ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !35

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !25

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -16 to ptr)
  %i.v = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.03245.i.i
  %i.w = add i32 %.02746.i.i, 1
  %i.x = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.029.i.i to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !172 ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !36, !llvm.loop !214

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !292
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !215 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !25

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !216
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
  %.not10.i.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !25

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ah, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !215
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !292
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.an = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 3 uses
  %i.ao = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ad, %bb.f ]
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !215
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !172
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !216
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !216
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %2, align 8, !tbaa !172
  store ptr %i.av, ptr %i.an, align 8, !tbaa !172
  %i.aw = load ptr, ptr %1, align 8, !tbaa !205
  %i.ax = load i32, ptr %i.c, align 8, !tbaa !213
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit
  %.sink34 = phi i32 [ %i.ax, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit ], [ %i.d, %bb.b ], [ %i.d, %bb.d ]
  %.sink32 = phi ptr [ %i.aw, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.d ]
  %.sink31 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit ], [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.ay = zext i32 %.sink34 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sink32, i64 %i.ay
  store ptr %.sink31, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ba, align 8, !tbaa !293
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !205    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !213  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !172    ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.c, -1                         ; 2 uses
  %.02944.i = and i32 %i.j, %i.k                  ; 2 uses
  %i.l = zext nneg i32 %.02944.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172  ; 2 uses
  %i.o = icmp eq ptr %i.e, %i.n
  br i1 %i.o, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit, label %.lr.ph.i, !prof !35

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.p = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %i.y, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %.02947.i = phi i32 [ %.029.i, %bb.d ], [ %.02944.i, %bb.b ]
  %.02746.i = phi i32 [ %i.v, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
end_hunk_0
