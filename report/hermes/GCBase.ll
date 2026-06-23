inline.NumInlined: 1712
inline.NumDeleted: 796
begin_hunk_0_@_ZN6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EE7collectEv:bb.a
bb.ax:                                            ; preds = %.thread, %bb.av, %bb.au
  %i.ck = phi ptr [ %i.cd, %.thread ], [ %i.cf, %bb.av ], [ %i.cf, %bb.au ]
  %.130.1549 = phi ptr [ %.130.14, %.thread ], [ %.028.ptr.14, %bb.av ], [ %.028.ptr.14, %bb.au ]
  %.132.1548 = phi i64 [ %i.cc, %.thread ], [ 0, %bb.av ], [ %.132.14, %bb.au ]
  store ptr %.130.1549, ptr %i.a, align 8, !tbaa !201
  %i.cl = add i64 %.132.1548, %.043
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.cm = phi ptr [ %i.ck, %bb.ax ], [ %i.cf, %bb.aw ] ; 2 uses
  %.126 = phi ptr [ %.02741, %bb.ax ], [ %.02542, %bb.aw ]
  %.1 = phi i64 [ %i.cl, %bb.ax ], [ %.043, %bb.aw ] ; 2 uses
  %.not = icmp eq ptr %i.cm, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !367
}

declare void @_ZN4llvh18format_object_base4homeEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh13format_objectIJdEE7snprintEPcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !223
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !152
  %i.f = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.a, ptr noundef %i.c, double noundef %i.e) #31
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !205    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !206  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !3      ; 3 uses
  %i.f = mul i32 %i.e, 37
  %i.g = add i32 %i.c, -1                         ; 2 uses
  %.02744.i = and i32 %i.f, %i.g                  ; 2 uses
  %i.h = zext i32 %.02744.i to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.h ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 2 uses
  %i.k = icmp eq i32 %i.e, %i.j
  br i1 %i.k, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit, label %.lr.ph.i, !prof !207

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.l = phi i32 [ %i.v, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.u, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %.02747.i = phi i32 [ %.027.i, %bb.d ], [ %.02744.i, %bb.b ]
  %.02546.i = phi i32 [ %i.r, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.n = icmp eq i32 %i.l, -1
  br i1 %i.n, label %bb.c, label %bb.d, !prof !127

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.02945.i, null
  %i.o = select i1 %.not.i, ptr %i.m, ptr %.02945.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = icmp eq i32 %i.l, -2
  %i.q = icmp eq ptr %.02945.i, null
  %or.cond.not.i = select i1 %i.p, i1 %i.q, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.m, ptr %.02945.i
  %i.r = add i32 %.02546.i, 1
  %i.s = add i32 %.02546.i, %.02747.i
  %.027.i = and i32 %i.s, %i.g                    ; 2 uses
  %i.t = zext i32 %.027.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3    ; 2 uses
  %i.w = icmp eq i32 %i.e, %i.v
  br i1 %i.w, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit, label %.lr.ph.i, !prof !208, !llvm.loop !209

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.o, %bb.c ], [ null, %bb.a ], [ %i.i, %bb.b ], [ %i.u, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !250
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E16FindAndConstructEOj(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !205    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !206  ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !3      ; 3 uses
  %i.g = mul i32 %i.f, 37
  %i.h = add i32 %i.d, -1                         ; 2 uses
  %.02744.i.i = and i32 %i.g, %i.h                ; 2 uses
  %i.i = zext i32 %.02744.i.i to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.i ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 2 uses
  %i.l = icmp eq i32 %i.f, %i.k
  br i1 %i.l, label %.loopexit, label %.lr.ph.i.i, !prof !207

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.m = phi i32 [ %i.w, %bb.d ], [ %i.k, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.v, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02744.i.i, %bb.b ]
  %.02546.i.i = phi i32 [ %i.s, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.o = icmp eq i32 %i.m, -1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !127

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02945.i.i, null
  %i.p = select i1 %.not.i.i, ptr %i.n, ptr %.02945.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.q = icmp eq i32 %i.m, -2
  %i.r = icmp eq ptr %.02945.i.i, null
  %or.cond.not.i.i = select i1 %i.q, i1 %i.r, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.n, ptr %.02945.i.i
  %i.s = add i32 %.02546.i.i, 1
  %i.t = add i32 %.02546.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.t, %i.h                  ; 2 uses
  %i.u = zext i32 %.027.i.i to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.u ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %i.x = icmp eq i32 %i.f, %i.w
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i, !prof !208, !llvm.loop !209

_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.p, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !250
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !248  ; 3 uses
  %i.aa = shl i32 %i.z, 2
  %i.ab = add i32 %i.aa, 4
  %i.ac = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !127

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit
  %i.ad = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !251
  %.neg.i.i = xor i32 %i.z, -1
  %.neg11.i.i = add i32 %i.d, %.neg.i.i
  %i.ag = sub i32 %.neg11.i.i, %i.af
  %i.ah = lshr i32 %i.d, 3
  %.not9.i.i = icmp ugt i32 %i.ag, %i.ah
  br i1 %.not9.i.i, label %bb.g, label %.sink.split.i.i, !prof !127

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ad, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sink.i.i5)
  %i.ai = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !248
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !250
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.aj = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ak = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.z, %bb.f ]
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.y, align 8, !tbaa !248
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E16InsertIntoBucketIjJEEEPS6_SA_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !251
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !251
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E16InsertIntoBucketIjJEEEPS6_SA_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E16InsertIntoBucketIjJEEEPS6_SA_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.ar, ptr %i.aj, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.as, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E16InsertIntoBucketIjJEEEPS6_SA_OT_DpOT0_.exit
  %.0 = phi ptr [ %i.aj, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E16InsertIntoBucketIjJEEEPS6_SA_OT_DpOT0_.exit ], [ %i.j, %bb.b ], [ %i.v, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !206  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !205    ; 4 uses
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
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !206
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #37 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !205
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !248
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !251
  %i.w = load i32, ptr %i.a, align 8, !tbaa !206  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 3               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not5.i = icmp eq i32 %i.w, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.aa = lshr exact i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter31 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store i32 -1, ptr %.06.i.prol, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 8 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !368

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 56
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store i32 -1, ptr %.06.i, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  store i32 -1, ptr %i.ae, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  store i32 -1, ptr %i.af, align 4, !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  store i32 -1, ptr %i.ag, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i, i64 32
  store i32 -1, ptr %i.ah, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  store i32 -1, ptr %i.ai, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  store i32 -1, ptr %i.aj, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i, i64 56
  store i32 -1, ptr %i.ak, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !370

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !248
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !251
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !206 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 3            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not5.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not5.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.au = lshr exact i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.06.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store i32 -1, ptr %.06.i.i.prol, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !371

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.06.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 56
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store i32 -1, ptr %.06.i.i, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  store i32 -1, ptr %i.ay, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  store i32 -1, ptr %i.az, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  store i32 -1, ptr %i.ba, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  store i32 -1, ptr %i.bb, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  store i32 -1, ptr %i.bc, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  store i32 -1, ptr %i.bd, align 4, !tbaa !3
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56
  store i32 -1, ptr %i.be, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 64 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !370

_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not18.i = icmp eq i32 %i.b, 0
  br i1 %.not18.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E18moveFromOldBucketsEPS6_S9_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit.i, %bb.f
  %i.bg = phi i32 [ %i.cd, %bb.f ], [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit.i ] ; 2 uses
  %.019.i = phi ptr [ %i.ce, %bb.f ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit.i ] ; 3 uses
  %i.bh = load i32, ptr %.019.i, align 4, !tbaa !3 ; 5 uses
  %switch.i = icmp ugt i32 %i.bh, -3
  br i1 %switch.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i6
  %2 = load i32, ptr %i.a, align 8, !tbaa !206    ; 2 uses
  %3 = icmp ne i32 %2, 0
  tail call void @llvm.assume(i1 %3)
  %i.bi = mul i32 %i.bh, 37
  %4 = add i32 %2, -1                             ; 2 uses
  %.02744.i.i.i = and i32 %4, %i.bi               ; 2 uses
  %i.bj = zext i32 %.02744.i.i.i to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bj ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3  ; 2 uses
  %i.bm = icmp eq i32 %i.bh, %i.bl
  br i1 %i.bm, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i, label %.lr.ph.i.i.i, !prof !207

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.bn = phi i32 [ %i.bx, %bb.e ], [ %i.bl, %bb.c ] ; 2 uses
  %i.bo = phi ptr [ %i.bw, %bb.e ], [ %i.bk, %bb.c ] ; 2 uses
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.e ], [ %.02744.i.i.i, %bb.c ]
  %.02546.i.i.i = phi i32 [ %i.bt, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.02945.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.bp = icmp eq i32 %i.bn, -1
  br i1 %i.bp, label %bb.d, label %bb.e, !prof !127

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.02945.i.i.i, null
  %i.bq = select i1 %.not.i.i.i, ptr %i.bo, ptr %.02945.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.br = icmp eq i32 %i.bn, -2
  %i.bs = icmp eq ptr %.02945.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.br, i1 %i.bs, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bo, ptr %.02945.i.i.i
  %i.bt = add i32 %.02546.i.i.i, 1
  %i.bu = add i32 %.02546.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.bu, %4                 ; 2 uses
  %i.bv = zext i32 %.027.i.i.i to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bv ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3  ; 2 uses
  %i.by = icmp eq i32 %i.bh, %i.bx
  br i1 %i.by, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i, label %.lr.ph.i.i.i, !prof !208, !llvm.loop !209

_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bq, %bb.d ], [ %i.bk, %bb.c ], [ %i.bw, %bb.e ] ; 2 uses
  store i32 %i.bh, ptr %.sink.i.i.i, align 4, !tbaa !3
  %i.bz = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.019.i, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !3
  %i.cc = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.cc, ptr %i.ao, align 8, !tbaa !248
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i, %.lr.ph.i6
  %i.cd = phi i32 [ %i.cc, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i ], [ %i.bg, %.lr.ph.i6 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.019.i, i64 8 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ce, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E18moveFromOldBucketsEPS6_S9_.exit, label %.lr.ph.i6, !llvm.loop !372

_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E18moveFromOldBucketsEPS6_S9_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #31
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E18moveFromOldBucketsEPS6_S9_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E16FindAndConstructERKj(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !218    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !219  ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !3      ; 3 uses
  %i.g = mul i32 %i.f, 37
  %i.h = add i32 %i.d, -1                         ; 2 uses
  %.02744.i.i = and i32 %i.g, %i.h                ; 2 uses
  %i.i = zext i32 %.02744.i.i to i64
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.i ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 2 uses
  %i.l = icmp eq i32 %i.f, %i.k
  br i1 %i.l, label %.loopexit, label %.lr.ph.i.i, !prof !207

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.m = phi i32 [ %i.w, %bb.d ], [ %i.k, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.v, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02744.i.i, %bb.b ]
  %.02546.i.i = phi i32 [ %i.s, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.o = icmp eq i32 %i.m, -1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !127

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02945.i.i, null
  %i.p = select i1 %.not.i.i, ptr %i.n, ptr %.02945.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.q = icmp eq i32 %i.m, -2
  %i.r = icmp eq ptr %.02945.i.i, null
  %or.cond.not.i.i = select i1 %i.q, i1 %i.r, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.n, ptr %.02945.i.i
  %i.s = add i32 %.02546.i.i, 1
  %i.t = add i32 %.02546.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.t, %i.h                  ; 2 uses
  %i.u = zext i32 %.027.i.i to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.u ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %i.x = icmp eq i32 %i.f, %i.w
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i, !prof !208, !llvm.loop !220

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.p, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !373
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !374  ; 3 uses
  %i.aa = shl i32 %i.z, 2
  %i.ab = add i32 %i.aa, 4
  %i.ac = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !127

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit
  %i.ad = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !375
  %.neg.i.i = xor i32 %i.z, -1
  %.neg11.i.i = add i32 %i.d, %.neg.i.i
  %i.ag = sub i32 %.neg11.i.i, %i.af
  %i.ah = lshr i32 %i.d, 3
  %.not9.i.i = icmp ugt i32 %i.ag, %i.ah
  br i1 %.not9.i.i, label %bb.g, label %.sink.split.i.i, !prof !127

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ad, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %.sink.i.i5)
  %i.ai = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !374
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !373
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.aj = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 7 uses
  %i.ak = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.z, %bb.f ]
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.y, align 8, !tbaa !374
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E16InsertIntoBucketIRKjJEEEPS8_SE_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !375
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !375
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E16InsertIntoBucketIRKjJEEEPS8_SE_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E16InsertIntoBucketIRKjJEEEPS8_SE_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.ar, ptr %i.aj, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.at, ptr %i.as, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i32 0, ptr %i.au, align 8, !tbaa !136
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  store i32 1, ptr %i.av, align 4, !tbaa !137
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E16InsertIntoBucketIRKjJEEEPS8_SE_OT_DpOT0_.exit
  %.0 = phi ptr [ %i.aj, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E16InsertIntoBucketIRKjJEEEPS8_SE_OT_DpOT0_.exit ], [ %i.j, %bb.b ], [ %i.v, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !218    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !219  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPKS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !3      ; 3 uses
  %i.f = mul i32 %i.e, 37
  %i.g = add i32 %i.c, -1                         ; 2 uses
  %.02744.i = and i32 %i.f, %i.g                  ; 2 uses
  %i.h = zext i32 %.02744.i to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.h ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 2 uses
  %i.k = icmp eq i32 %i.e, %i.j
  br i1 %i.k, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPKS8_.exit, label %.lr.ph.i, !prof !207

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.l = phi i32 [ %i.v, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.u, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %.02747.i = phi i32 [ %.027.i, %bb.d ], [ %.02744.i, %bb.b ]
  %.02546.i = phi i32 [ %i.r, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.n = icmp eq i32 %i.l, -1
  br i1 %i.n, label %bb.c, label %bb.d, !prof !127

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.02945.i, null
  %i.o = select i1 %.not.i, ptr %i.m, ptr %.02945.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPKS8_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = icmp eq i32 %i.l, -2
  %i.q = icmp eq ptr %.02945.i, null
  %or.cond.not.i = select i1 %i.p, i1 %i.q, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.m, ptr %.02945.i
  %i.r = add i32 %.02546.i, 1
  %i.s = add i32 %.02546.i, %.02747.i
  %.027.i = and i32 %i.s, %i.g                    ; 2 uses
  %i.t = zext i32 %.027.i to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3    ; 2 uses
  %i.w = icmp eq i32 %i.e, %i.v
  br i1 %i.w, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPKS8_.exit, label %.lr.ph.i, !prof !208, !llvm.loop !220

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPKS8_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.o, %bb.c ], [ null, %bb.a ], [ %i.i, %bb.b ], [ %i.u, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !373
end_hunk_0
