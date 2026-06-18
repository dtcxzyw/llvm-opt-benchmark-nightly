inline.NumInlined: 364
inline.NumDeleted: 155
begin_hunk_0_@llvm.memcpy.p0.p0.i64

declare noundef i32 @_ZNK6hermes5Value11getNumUsersEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN6hermes25InstructionEscapeAnalysis15tryMergeOffsetsERNS_8OptValueIjEES2_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(5) %0, i64 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !61, !range !67, !noundef !68
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i8
  store i32 %.sroa.0.0.extract.trunc, ptr %0, align 4, !tbaa !3
  store i8 %.sroa.3.0.extract.trunc, ptr %i.a, align 4, !tbaa !20
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = trunc i64 %.sroa.3.0.extract.shift to i1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %0, align 4
  %i.f = icmp eq i32 %i.e, %.sroa.0.0.extract.trunc
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.f, %bb.d ], [ true, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E11try_emplaceIJRS4_EEESt4pairINS_16DenseMapIteratorIjS4_S6_S9_Lb0EEEbERKjDpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.16") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(5) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !12     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !11   ; 9 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %2, align 4, !tbaa !3      ; 3 uses
  %i.g = mul i32 %i.f, 37
  %i.h = add i32 %i.d, -1                         ; 2 uses
  %.02744.i.i = and i32 %i.g, %i.h                ; 2 uses
  %i.i = zext i32 %.02744.i.i to i64
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.i ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 2 uses
  %i.l = icmp eq i32 %i.f, %i.k
  br i1 %i.l, label %.loopexit, label %.lr.ph.i.i, !prof !41

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.m = phi i32 [ %i.w, %bb.d ], [ %i.k, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.v, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02744.i.i, %bb.b ]
  %.02546.i.i = phi i32 [ %i.s, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.o = icmp eq i32 %i.m, -1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02945.i.i, null
  %i.p = select i1 %.not.i.i, ptr %i.n, ptr %.02945.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.q = icmp eq i32 %i.m, -2
  %i.r = icmp eq ptr %.02945.i.i, null
  %or.cond.not.i.i = select i1 %i.q, i1 %i.r, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.n, ptr %.02945.i.i
  %i.s = add i32 %.02546.i.i, 1
  %i.t = add i32 %.02546.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.t, %i.h                  ; 2 uses
  %i.u = zext i32 %.027.i.i to i64
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.u ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %i.x = icmp eq i32 %i.f, %i.w
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i, !prof !43, !llvm.loop !62

_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.p, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !7    ; 3 uses
  %i.aa = shl i32 %i.z, 2
  %i.ab = add i32 %i.aa, 4
  %i.ac = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !42

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit
  %i.ad = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !15
  %.neg.i.i = xor i32 %i.z, -1
  %.neg11.i.i = add i32 %i.d, %.neg.i.i
  %i.ag = sub i32 %.neg11.i.i, %i.af
  %i.ah = lshr i32 %i.d, 3
  %.not9.i.i = icmp ugt i32 %i.ag, %i.ah
  br i1 %.not9.i.i, label %bb.g, label %.sink.split.i.i, !prof !42

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ad, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %.sink.i.i5)
  %i.ai = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !7
  %.pre9.i = load ptr, ptr %i.a, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.aj = phi ptr [ %.pre9.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ak = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.z, %bb.f ]
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.y, align 8, !tbaa !7
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !15
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !15
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.ar, ptr %i.aj, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.at = load i64, ptr %3, align 4
  store i64 %i.at, ptr %i.as, align 4
  %i.au = load ptr, ptr %1, align 8, !tbaa !12
  %i.av = load i32, ptr %i.c, align 8, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit
  %.sink34 = phi i32 [ %i.av, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit ], [ %i.d, %bb.b ], [ %i.d, %bb.d ]
  %.sink32 = phi ptr [ %i.au, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.d ]
  %.sink31 = phi ptr [ %i.aj, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit ], [ %i.j, %bb.b ], [ %i.v, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.aw = zext i32 %.sink34 to i64
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %.sink32, i64 %i.aw
  store ptr %.sink31, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ay, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes25InstructionEscapeAnalysis15removeLastRangeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.hermes::InstructionEscapeAnalysis::Prefix", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !18
  store ptr null, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 0, ptr %i.f, align 8, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.k = load <2 x i32>, ptr %i.d, align 8, !tbaa !3
  store i32 0, ptr %i.d, align 8, !tbaa !3
  store i32 0, ptr %i.e, align 4, !tbaa !3
  tail call void @_ZdlPv(ptr noundef null) #12
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !18
  store ptr %i.l, ptr %i.a, align 8, !tbaa !18
  store ptr null, ptr %i.b, align 8, !tbaa !18
  %i.m = load <2 x i32>, ptr %i.h, align 8, !tbaa !3
  store i32 0, ptr %i.h, align 8, !tbaa !3
  store <2 x i32> %i.m, ptr %i.d, align 8, !tbaa !3
  store i32 0, ptr %i.i, align 4, !tbaa !3
  %i.n = load i32, ptr %i.j, align 8, !tbaa !3
  store i32 %i.n, ptr %i.f, align 8, !tbaa !3
  store i32 0, ptr %i.j, align 8, !tbaa !3
  tail call void @_ZdlPv(ptr noundef null) #12
  store ptr %i.c, ptr %i.b, align 8, !tbaa !18
  store <2 x i32> %i.k, ptr %i.h, align 8, !tbaa !3
  store i32 %i.g, ptr %i.j, align 8, !tbaa !3
  tail call void @_ZdlPv(ptr noundef null) #12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull align 8 dereferenceable(12) %i.p, i64 12, i1 false), !tbaa.struct !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %2 = load i32, ptr %i.h, align 8, !tbaa !7      ; 2 uses
  %3 = icmp eq i32 %2, 0
  %i.q = load i32, ptr %i.i, align 4
  %i.r = icmp eq i32 %i.q, 0
  %or.cond = select i1 %3, i1 %i.r, i1 false
  br i1 %or.cond, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = shl i32 %2, 2
  %i.t = load i32, ptr %i.j, align 8, !tbaa !11   ; 4 uses
  %i.u = icmp ult i32 %i.s, %i.t
  %i.v = icmp ugt i32 %i.t, 64
  %or.cond.i = and i1 %i.u, %i.v
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvh8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.x = zext i32 %i.t to i64
  %.idx.i = mul nuw nsw i64 %i.x, 12              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i
  %.not5.i = icmp eq i32 %i.t, 0
  br i1 %.not5.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.z = add nsw i64 %.idx.i, -12                 ; 2 uses
  %i.aa = udiv i64 %i.z, 12
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter = and i64 %i.ab, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.w, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store i32 -1, ptr %.06.i.prol, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 12 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !72

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi ptr [ %i.w, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 84
  br i1 %i.ad, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !7
  store i32 0, ptr %i.i, align 4, !tbaa !15
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store i32 -1, ptr %.06.i, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i, i64 12
  store i32 -1, ptr %i.ae, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  store i32 -1, ptr %i.af, align 4, !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i, i64 36
  store i32 -1, ptr %i.ag, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  store i32 -1, ptr %i.ah, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i, i64 60
  store i32 -1, ptr %i.ai, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i, i64 72
  store i32 -1, ptr %i.aj, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i, i64 84
  store i32 -1, ptr %i.ak, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i, i64 96 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !16

_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i
  %i.am = load i32, ptr %0, align 8, !tbaa !22
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr %0, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.ao, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 4 dereferenceable(12) ptr @_ZNK6hermes25InstructionEscapeAnalysis13longestPrefixEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(88) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(20) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.f, i32 64)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %.sroa.speculated, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !11
  %i.i = icmp eq i32 %.0, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.a, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !15
  %i.k = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.l = zext nneg i32 %.0 to i64
  %.idx.i = mul nuw nsw i64 %i.l, 12              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %.not5.i = icmp eq i32 %.0, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.n = add nsw i64 %.idx.i, -12                 ; 2 uses
  %i.o = udiv i64 %i.n, 12
  %i.p = add nuw nsw i64 %i.o, 1
  %xtraiter14 = and i64 %i.p, 7                   ; 2 uses
  %lcmp.mod15.not = icmp eq i64 %xtraiter14, 0
  br i1 %lcmp.mod15.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi ptr [ %i.q, %.lr.ph.i.prol ], [ %i.k, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter16 = phi i64 [ %prol.iter16.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store i32 -1, ptr %.06.i.prol, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 12 ; 2 uses
  %prol.iter16.next = add i64 %prol.iter16, 1     ; 2 uses
  %prol.iter16.cmp.not = icmp eq i64 %prol.iter16.next, %xtraiter14
  br i1 %prol.iter16.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !73

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.r = icmp ult i64 %i.n, 84
  br i1 %i.r, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store i32 -1, ptr %.06.i, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i, i64 12
  store i32 -1, ptr %i.s, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  store i32 -1, ptr %i.t, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i, i64 36
  store i32 -1, ptr %i.u, align 4, !tbaa !3
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  store i32 -1, ptr %i.v, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i, i64 60
  store i32 -1, ptr %i.w, align 4, !tbaa !3
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i, i64 72
  store i32 -1, ptr %i.x, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i, i64 84
  store i32 -1, ptr %i.y, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i, i64 96 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.z, %i.m
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !74

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %0, align 8, !tbaa !12
  tail call void @_ZdlPv(ptr noundef %i.aa) #12
  %i.ab = icmp eq i32 %.0, 0
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = shl i32 %.0, 2
  %i.ad = udiv i32 %i.ac, 3
  %i.ae = add nuw nsw i32 %i.ad, 1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = lshr i64 %i.af, 1
  %i.ah = or i64 %i.ag, %i.af                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 2
  %i.aj = or i64 %i.ai, %i.ah                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 4
  %i.al = or i64 %i.ak, %i.aj                     ; 2 uses
  %i.am = lshr i64 %i.al, 8
  %i.an = or i64 %i.am, %i.al                     ; 2 uses
  %i.ao = lshr i64 %i.an, 16
  %i.ap = or i64 %i.ao, %i.an
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = add nuw i32 %i.aq, 1                    ; 2 uses
  store i32 %i.ar, ptr %i.g, align 8, !tbaa !11
  %i.as = zext i32 %i.ar to i64
  %i.at = mul nuw nsw i64 %i.as, 12
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #13 ; 4 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !12
  store i32 0, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !15
  %i.aw = load i32, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %.idx.i.i = mul nuw nsw i64 %i.ax, 12           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i.i
  %.not5.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not5.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.az = add nsw i64 %.idx.i.i, -12              ; 2 uses
  %i.ba = udiv i64 %i.az, 12
  %i.bb = add nuw nsw i64 %i.ba, 1
  %xtraiter = and i64 %i.bb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.06.i.i.prol = phi ptr [ %i.bc, %.lr.ph.i.i.prol ], [ %i.au, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store i32 -1, ptr %.06.i.i.prol, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 12 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !75

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.06.i.i.unr = phi ptr [ %i.au, %.lr.ph.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.prol ]
  %i.bd = icmp ult i64 %i.az, 84
  br i1 %i.bd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store i32 -1, ptr %.06.i.i, align 4, !tbaa !3
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 12
  store i32 -1, ptr %i.be, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  store i32 -1, ptr %i.bf, align 4, !tbaa !3
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 36
  store i32 -1, ptr %i.bg, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  store i32 -1, ptr %i.bh, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 60
  store i32 -1, ptr %i.bi, align 4, !tbaa !3
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 72
  store i32 -1, ptr %i.bj, align 4, !tbaa !3
  %i.bk = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 84
  store i32 -1, ptr %i.bk, align 4, !tbaa !3
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 96 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bl, %i.ay
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i.i, !llvm.loop !74

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g, %bb.f, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_(ptr %.0.val, i32 %.16.val, ptr %.0.val1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp eq i32 %.16.val, 0
  br i1 %i.a, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPKSJ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %.0.val1 to i64
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = lshr i32 %i.c, 4
end_hunk_0
