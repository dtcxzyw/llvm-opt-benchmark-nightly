Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Passes?download=true
inline.NumInlined: 1567
inline.NumDeleted: 831
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.bf, align 8, !tbaa !131 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !11
  %i.bg = icmp ult i32 %.027, 17
  br i1 %i.bg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.bh = or disjoint i32 %i.p, 1
  store i32 %i.bh, ptr %0, align 8
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.bi = zext i32 %.027 to i64
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #16
  store ptr %i.bk, ptr %i.bf, align 8
  store i32 %.027, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.bl = zext i32 %.sroa.6.0.copyload to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.bl
  tail call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %.sroa.0.0.copyload, ptr noundef %i.bm)
  tail call void @_ZdlPv(ptr noundef %.sroa.0.0.copyload) #13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.d, %bb.ao, %bb.ak
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1                          ; 2 uses
  store i32 %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !84
  %.not.i.i.i.i = icmp eq i32 %i.b, 0             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i.i.i, ptr %i.e, ptr %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i.i, i32 %i.h, i32 16 ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx.i = shl nuw nsw i64 %i.j, 3               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.l = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.m = lshr exact i64 %i.l, 3
  %i.n = add nuw nsw i64 %i.m, 1
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.o, %.lr.ph.i.prol ], [ %i.f, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !252

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %i.p = icmp ult i64 %i.l, 56
  br i1 %i.p, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %i.q, align 8, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.r, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %.07.i, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %i.s, align 8, !tbaa !86
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.t, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %i.u, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.v, align 8, !tbaa !86
  %i.w = getelementptr inbounds nuw i8, ptr %.07.i, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %i.w, align 8, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.x, %i.k
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !4

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.not20 = icmp eq ptr %1, %2
  br i1 %.not20, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, %bb.e
  %.021 = phi ptr [ %i.bg, %bb.e ], [ %1, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit ] ; 2 uses
  %i.y = load ptr, ptr %.021, align 8, !tbaa !86  ; 4 uses
  %magicptr = ptrtoint ptr %i.y to i64            ; 2 uses
  switch i64 %magicptr, label %bb.b [
    i64 -8, label %bb.e
    i64 -16, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.z = load i32, ptr %0, align 8
  %i.aa = and i32 %i.z, 1
  %.not.i.i.i.i15 = icmp eq i32 %i.aa, 0          ; 2 uses
  %i.ab = load ptr, ptr %i.d, align 8
  %i.ac = select i1 %.not.i.i.i.i15, ptr %i.ab, ptr %i.d ; 2 uses
  %i.ad = load i32, ptr %i.g, align 8
  %i.ae = select i1 %.not.i.i.i.i15, i32 %i.ad, i32 16 ; 2 uses
  %i.af = icmp ne i32 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %magicptr to i32              ; 2 uses
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = lshr i32 %i.ag, 9
  %i.aj = xor i32 %i.ah, %i.ai
  %i.ak = add i32 %i.ae, -1                       ; 2 uses
  %.02745.i.i = and i32 %i.ak, %i.aj              ; 2 uses
  %i.al = zext nneg i32 %.02745.i.i to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.al ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !86 ; 2 uses
  %i.ao = icmp eq ptr %i.y, %i.an
  br i1 %i.ao, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %.lr.ph.i.i, !prof !118

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.ap = phi ptr [ %i.az, %bb.d ], [ %i.an, %bb.b ] ; 2 uses
  %i.aq = phi ptr [ %i.ay, %bb.d ], [ %i.am, %bb.b ] ; 2 uses
  %.02748.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02745.i.i, %bb.b ]
  %.047.i.i = phi i32 [ %i.av, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02946.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.ar = icmp eq ptr %i.ap, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %bb.c, label %bb.d, !prof !88

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02946.i.i, null
  %i.as = select i1 %.not.i.i, ptr %i.aq, ptr %.02946.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.at = icmp eq ptr %i.ap, inttoptr (i64 -16 to ptr)
  %i.au = icmp eq ptr %.02946.i.i, null
  %or.cond.not.i.i = select i1 %i.at, i1 %i.au, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.aq, ptr %.02946.i.i
  %i.av = add i32 %.047.i.i, 1
  %i.aw = add i32 %.047.i.i, %.02748.i.i
  %.027.i.i = and i32 %i.aw, %i.ak                ; 2 uses
  %i.ax = zext i32 %.027.i.i to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ax ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !86 ; 2 uses
  %i.ba = icmp eq ptr %i.y, %i.az
  br i1 %i.ba, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %.lr.ph.i.i, !prof !119, !llvm.loop !3

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.as, %bb.c ], [ %i.am, %bb.b ], [ %i.ay, %bb.d ]
  store ptr %i.y, ptr %.sink.i.i, align 8, !tbaa !86
  %i.bb = load i32, ptr %0, align 8               ; 2 uses
  %i.bc = and i32 %i.bb, -2
  %i.bd = add i32 %i.bc, 2
  %i.be = and i32 %i.bb, 1
  %i.bf = or disjoint i32 %i.bd, %i.be
  store i32 %i.bf, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.lr.ph, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bg, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !253
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 4 uses
  %i.b = lshr i32 %i.a, 1                         ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, -1
  %i.d = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false) ; 2 uses
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %or.cond = icmp eq i32 %i.d, 28
  %spec.store.select = select i1 %or.cond, i32 64, i32 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %spec.store.select, %bb.b ], [ 0, %bb.a ] ; 7 uses
  %i.g = trunc i32 %i.a to i1                     ; 2 uses
  %i.h = icmp ult i32 %.0, 17
  %or.cond3 = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond3, label %._crit_edge, label %1

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.e

1:                                                ; preds = %bb.c
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %1
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load i32, ptr %2, align 8, !tbaa !256
  %4 = icmp eq i32 %.0, %3
  br i1 %4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.i = phi i32 [ %.pre, %._crit_edge ], [ %.0, %bb.d ]
  %i.j = and i32 %i.a, 1                          ; 2 uses
  store i32 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !84
  %.not.i.i.i.i = icmp eq i32 %i.j, 0             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %.not.i.i.i.i, ptr %i.m, ptr %i.l ; 3 uses
  %i.o = select i1 %.not.i.i.i.i, i32 %i.i, i32 16 ; 2 uses
  %i.p = zext i32 %i.o to i64
  %.idx.i = shl nuw nsw i64 %i.p, 3               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.r = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.s = lshr exact i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1
  %xtraiter18 = and i64 %i.t, 7                   ; 2 uses
  %lcmp.mod19.not = icmp eq i64 %xtraiter18, 0
  br i1 %lcmp.mod19.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.u, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter20 = phi i64 [ %prol.iter20.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 8 ; 2 uses
  %prol.iter20.next = add i64 %prol.iter20, 1     ; 2 uses
  %prol.iter20.cmp.not = icmp eq i64 %prol.iter20.next, %xtraiter18
  br i1 %prol.iter20.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !254

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.n, %.lr.ph.i.preheader ], [ %i.u, %.lr.ph.i.prol ]
  %i.v = icmp ult i64 %i.r, 56
  br i1 %i.v, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !86
  %i.w = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %i.w, align 8, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.x, align 8, !tbaa !86
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %i.y, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.z, align 8, !tbaa !86
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aa, align 8, !tbaa !86
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ab, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ac, align 8, !tbaa !86
  %i.ad = getelementptr inbounds nuw i8, ptr %.07.i, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.ad, %i.q
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !4

bb.f:                                             ; preds = %bb.d, %1
  %i.ae = and i32 %i.a, 1
  %.not.i11 = icmp eq i32 %i.ae, 0
  br i1 %.not.i11, label %bb.g, label %_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !93
  tail call void @_ZdlPv(ptr noundef %i.ag) #13
  br label %_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit

_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit: ; preds = %bb.f, %bb.g
  %i.ah = icmp ugt i32 %.0, 16
  br i1 %i.ah, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %.phi.trans.insert3.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre4.i = load i32, ptr %.phi.trans.insert3.i, align 8
  br label %bb.i

bb.h:                                             ; preds = %_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit
  %i.ai = load i32, ptr %0, align 8
  %i.aj = and i32 %i.ai, -2
  store i32 %i.aj, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = zext i32 %.0 to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #16 ; 2 uses
  store ptr %i.an, ptr %i.ak, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.0, ptr %5, align 8
  %.pre.i = load i32, ptr %0, align 8
  %i.ao = and i32 %.pre.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %i.ap = phi i32 [ %.0, %bb.h ], [ %.pre4.i, %._crit_edge.i ]
  %i.aq = phi ptr [ %i.an, %bb.h ], [ %.pre2.i, %._crit_edge.i ]
  %i.ar = phi i32 [ %i.ao, %bb.h ], [ 1, %._crit_edge.i ] ; 2 uses
  store i32 %i.ar, ptr %0, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.as, align 4, !tbaa !84
  %.not.i.i.i.i.i = icmp eq i32 %i.ar, 0          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = select i1 %.not.i.i.i.i.i, ptr %i.aq, ptr %i.at ; 3 uses
  %i.av = select i1 %.not.i.i.i.i.i, i32 %i.ap, i32 16 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %.idx.i.i = shl nuw nsw i64 %i.aw, 3            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.av, 0
  br i1 %.not6.i.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.ay = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.az = lshr exact i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1
  %xtraiter = and i64 %i.ba, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.bb, %.lr.ph.i.i.prol ], [ %i.au, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !86
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !255

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.au, %.lr.ph.i.i.preheader ], [ %i.bb, %.lr.ph.i.i.prol ]
  %i.bc = icmp ult i64 %i.ay, 56
  br i1 %i.bc, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bk, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !86
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bd, align 8, !tbaa !86
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !86
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bf, align 8, !tbaa !86
  %i.bg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bg, align 8, !tbaa !86
  %i.bh = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bh, align 8, !tbaa !86
  %i.bi = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bi, align 8, !tbaa !86
  %i.bj = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bj, align 8, !tbaa !86
  %i.bk = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bk, %i.ax
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.i, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

declare { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !116    ; 4 uses
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
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !117
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #16 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !116
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !120
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !121
  %i.w = load i32, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not5.i = icmp eq i32 %i.w, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter31 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store i32 -1, ptr %.06.i.prol, align 4, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !257

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store i32 -1, ptr %.06.i, align 4, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  store i32 -1, ptr %i.ae, align 4, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i, i64 32
  store i32 -1, ptr %i.af, align 4, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  store i32 -1, ptr %i.ag, align 4, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i, i64 64
  store i32 -1, ptr %i.ah, align 4, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i, i64 80
  store i32 -1, ptr %i.ai, align 4, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i, i64 96
  store i32 -1, ptr %i.aj, align 4, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i, i64 112
  store i32 -1, ptr %i.ak, align 4, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !258

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !120
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !121
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !117 ; 4 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not5.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not5.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.au = lshr exact i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.06.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store i32 -1, ptr %.06.i.i.prol, align 4, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !259

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.06.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store i32 -1, ptr %.06.i.i, align 4, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  store i32 -1, ptr %i.ay, align 4, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  store i32 -1, ptr %i.az, align 4, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  store i32 -1, ptr %i.ba, align 4, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 64
  store i32 -1, ptr %i.bb, align 4, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 80
  store i32 -1, ptr %i.bc, align 4, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 96
  store i32 -1, ptr %i.bd, align 4, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 112
  store i32 -1, ptr %i.be, align 4, !tbaa !11
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !258

_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not18.i = icmp eq i32 %i.b, 0
  br i1 %.not18.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E18moveFromOldBucketsEPS9_SC_.exit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit.i
  %i.bg = icmp ne i32 %i.aq, 0
  %i.bh = add i32 %i.aq, -1                       ; 2 uses
  br label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.preheader, %bb.f
  %i.bi = phi i32 [ %i.cf, %bb.f ], [ 0, %.lr.ph.i6.preheader ] ; 2 uses
  %.019.i = phi ptr [ %i.cg, %bb.f ], [ %i.c, %.lr.ph.i6.preheader ] ; 3 uses
  %i.bj = load i32, ptr %.019.i, align 4, !tbaa !11 ; 5 uses
  %switch.i = icmp ugt i32 %i.bj, -3
  br i1 %switch.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i6
  tail call void @llvm.assume(i1 %i.bg)
  %i.bk = mul i32 %i.bj, 37
  %.02544.i.i.i = and i32 %i.bk, %i.bh            ; 2 uses
  %i.bl = zext i32 %.02544.i.i.i to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bl ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !11 ; 2 uses
  %i.bo = icmp eq i32 %i.bj, %i.bn
  br i1 %i.bo, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i, label %.lr.ph.i.i.i, !prof !118

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.bp = phi i32 [ %i.bz, %bb.e ], [ %i.bn, %bb.c ] ; 2 uses
  %i.bq = phi ptr [ %i.by, %bb.e ], [ %i.bm, %bb.c ] ; 2 uses
  %.02547.i.i.i = phi i32 [ %.025.i.i.i, %bb.e ], [ %.02544.i.i.i, %bb.c ]
  %.046.i.i.i = phi i32 [ %i.bv, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.02745.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.br = icmp eq i32 %i.bp, -1
  br i1 %i.br, label %bb.d, label %bb.e, !prof !88

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.02745.i.i.i, null
  %i.bs = select i1 %.not.i.i.i, ptr %i.bq, ptr %.02745.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bt = icmp eq i32 %i.bp, -2
  %i.bu = icmp eq ptr %.02745.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bt, i1 %i.bu, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bq, ptr %.02745.i.i.i
  %i.bv = add i32 %.046.i.i.i, 1
  %i.bw = add i32 %.046.i.i.i, %.02547.i.i.i
  %.025.i.i.i = and i32 %i.bw, %i.bh              ; 2 uses
  %i.bx = zext i32 %.025.i.i.i to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bx ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !11 ; 2 uses
  %i.ca = icmp eq i32 %i.bj, %i.bz
  br i1 %i.ca, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i, label %.lr.ph.i.i.i, !prof !119, !llvm.loop !2

_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bs, %bb.d ], [ %i.bm, %bb.c ], [ %i.by, %bb.e ] ; 2 uses
  store i32 %i.bj, ptr %.sink.i.i.i, align 4, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.019.i, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !86
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !86
  %i.ce = add i32 %i.bi, 1                        ; 2 uses
  store i32 %i.ce, ptr %i.ao, align 8, !tbaa !120
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i, %.lr.ph.i6
  %i.cf = phi i32 [ %i.ce, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i ], [ %i.bi, %.lr.ph.i6 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.019.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.cg, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E18moveFromOldBucketsEPS9_SC_.exit, label %.lr.ph.i6, !llvm.loop !260

_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E18moveFromOldBucketsEPS9_SC_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #13
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E18moveFromOldBucketsEPS9_SC_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !74}
!1 = distinct !{!1, !74}
!2 = distinct !{!2, !74}
!3 = distinct !{!3, !74}
!4 = distinct !{!4, !74}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_ZTSN6hermes9ValueKindE", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!"_ZTSN6hermes4TypeE", !13, i64 0, !13, i64 2}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"_ZTSN4llvh15SmallVectorBaseE", !15, i64 0, !10, i64 8, !10, i64 12}
!17 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !16, i64 0}
!18 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !17, i64 0}
!19 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !18, i64 0}
!20 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !9, i64 0}
!21 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !19, i64 0, !20, i64 16}
!22 = !{!"_ZTSN6hermes5ValueE", !12, i64 0, !14, i64 2, !21, i64 8}
!23 = !{!22, !12, i64 0}
!24 = !{!"_ZTSN6hermes7LiteralE", !22, i64 0}
!25 = !{!"bool", !9, i64 0}
!26 = !{i8 0, i8 2}
!27 = !{}
!28 = !{!"_ZTSN4llvh14FoldingSetBase4NodeE", !15, i64 0}
!29 = !{!"double", !9, i64 0}
!30 = !{!"_ZTSN6hermes13LiteralNumberE", !24, i64 0, !28, i64 40, !29, i64 48}
!31 = !{!30, !29, i64 48}
!32 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !15, i64 0}
!33 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !32, i64 0, !32, i64 8}
!34 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes8FunctionELb0ELb0EvEEEE", !33, i64 0}
!35 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes8FunctionEJEEE", !34, i64 0}
!36 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes8FunctionENS1_6ModuleEJEEE", !35, i64 0}
!37 = !{!"p1 _ZTSN6hermes6ModuleE", !15, i64 0}
!38 = !{!"p1 _ZTSN6hermes9ScopeDescE", !15, i64 0}
!39 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !33, i64 0}
!40 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !39, i64 0}
!41 = !{!"_ZTSN4llvh12simple_ilistIN6hermes10BasicBlockEJEEE", !40, i64 0}
!42 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes10BasicBlockEJEEENS_12ilist_traitsIS3_EEEE", !41, i64 0}
!43 = !{!"_ZTSN4llvh6iplistIN6hermes10BasicBlockEJEEE", !42, i64 0}
!44 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ParameterEvEE", !16, i64 0}
!45 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ParameterELb1EEE", !44, i64 0}
!46 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ParameterEEE", !45, i64 0}
!47 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ParameterELj8EEE", !9, i64 0}
!48 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ParameterELj8EEE", !46, i64 0, !47, i64 16}
!49 = !{!"p1 _ZTSN6hermes12UniqueStringE", !15, i64 0}
!50 = !{!"_ZTSN6hermes10IdentifierE", !49, i64 0}
!51 = !{!"_ZTSN6hermes8Function14DefinitionKindE", !9, i64 0}
!52 = !{!"p1 omnipotent char", !15, i64 0}
!53 = !{!"_ZTSN4llvh5SMLocE", !52, i64 0}
!54 = !{!"_ZTSN4llvh7SMRangeE", !53, i64 0, !53, i64 8}
!55 = !{!"_ZTSN6hermes16SourceVisibilityE", !9, i64 0}
!56 = !{!"p1 _ZTSN6hermes9ParameterE", !15, i64 0}
!57 = !{!"_ZTSN6hermes8OptValueIjEE", !10, i64 0, !25, i64 4}
!58 = !{!"_ZTSN6hermes6ESTree8NodeKindE", !9, i64 0}
!59 = !{!"_ZTSN6hermes10LazySourceE", !58, i64 0, !10, i64 4, !54, i64 8, !25, i64 24, !25, i64 25}
!60 = !{!"p1 _ZTSN6hermes15SerializedScopeE", !15, i64 0}
!61 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!62 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !61, i64 0}
!63 = !{!"_ZTSSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EE", !60, i64 0, !62, i64 8}
!64 = !{!"_ZTSSt10shared_ptrIKN6hermes15SerializedScopeEE", !63, i64 0}
!65 = !{!"p1 _ZTSN6hermes8VariableE", !15, i64 0}
!66 = !{!"_ZTSN6hermes8FunctionE", !36, i64 0, !22, i64 16, !37, i64 56, !25, i64 64, !38, i64 72, !43, i64 80, !48, i64 96, !50, i64 176, !51, i64 184, !25, i64 188, !54, i64 192, !55, i64 208, !50, i64 216, !56, i64 224, !10, i64 232, !57, i64 236, !59, i64 248, !64, i64 280, !65, i64 296}
!67 = !{!66, !37, i64 56}
!68 = !{!"p1 _ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !15, i64 0}
!69 = !{!"_ZTSN4llvh14ilist_iteratorINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEELb0ELb0EEE", !68, i64 0}
!70 = !{!"p1 _ZTSN6hermes10BasicBlockE", !15, i64 0}
!71 = !{!"_ZTSN6hermes9IRBuilderE", !37, i64 0, !69, i64 8, !70, i64 16, !53, i64 24, !38, i64 32}
!72 = !{!71, !37, i64 0}
!73 = !{!33, !32, i64 8}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!16, !15, i64 0}
!76 = !{!16, !10, i64 8}
!77 = !{!"_ZTSN6hermes18JavaScriptDeclKindE", !9, i64 0}
!78 = !{!"_ZTSN6hermes8VariableE", !22, i64 0, !77, i64 40, !50, i64 48, !38, i64 56, !25, i64 64}
!79 = !{!78, !38, i64 56}
!80 = !{!15, !15, i64 0}
!81 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm128EEE", !9, i64 0}
!82 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA16_NS_6detail12DenseSetPairIPN6hermes11InstructionEEENS_13SmallDenseMapIS5_NS1_13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_EES6_E8LargeRepEccccccccEE", !81, i64 0}
!83 = !{!"_ZTSN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEEE", !10, i64 0, !10, i64 0, !10, i64 4, !82, i64 8}
!84 = !{!83, !10, i64 4}
!85 = !{!"p1 _ZTSN6hermes11InstructionE", !15, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!16, !10, i64 12}
!88 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = !{!"long", !9, i64 0}
!91 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIPN6hermes11InstructionEEE", !15, i64 0}
!92 = !{!"_ZTSN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE8LargeRepE", !91, i64 0, !10, i64 8}
!93 = !{!92, !91, i64 0}
!94 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !33, i64 0}
!95 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes11InstructionEJEEE", !94, i64 0}
!96 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes11InstructionENS1_10BasicBlockEJEEE", !95, i64 0}
!97 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonISt4pairIPN6hermes5ValueEjEvEE", !16, i64 0}
!98 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes5ValueEjELb1EEE", !97, i64 0}
!99 = !{!"_ZTSN4llvh15SmallVectorImplISt4pairIPN6hermes5ValueEjEEE", !98, i64 0}
!100 = !{!"_ZTSN4llvh18SmallVectorStorageISt4pairIPN6hermes5ValueEjELj2EEE", !9, i64 0}
!101 = !{!"_ZTSN4llvh11SmallVectorISt4pairIPN6hermes5ValueEjELj2EEE", !99, i64 0, !100, i64 16}
!102 = !{!"_ZTSN6hermes11InstructionE", !96, i64 0, !22, i64 16, !70, i64 56, !101, i64 64, !38, i64 112, !53, i64 120, !10, i64 128}
!103 = !{!102, !70, i64 56}
!104 = !{!"any p2 pointer", !15, i64 0}
!105 = !{!"_ZTSN6hermes4Pass8PassKindE", !9, i64 0}
!106 = !{!"_ZTSN4llvh9StringRefE", !52, i64 0, !90, i64 8}
!107 = !{!"_ZTSN6hermes4PassE", !105, i64 8, !106, i64 16}
!108 = !{!"_ZTSN6hermes12FunctionPassE", !107, i64 0}
!109 = !{!"p1 _ZTSN6hermes3hbc20HVMRegisterAllocatorE", !15, i64 0}
!110 = !{i64 8}
!111 = !{!"vtable pointer", !8, i64 0}
!112 = !{!111, !111, i64 0}
!113 = !{!"llvm.loop.peeled.count", i32 1}
!114 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjPN6hermes11InstructionEEE", !15, i64 0}
!115 = !{!"_ZTSN4llvh8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEE", !114, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!116 = !{!115, !114, i64 0}
!117 = !{!115, !10, i64 16}
!118 = !{!"branch_weights", i32 1999, i32 1}
!119 = !{!"branch_weights", i32 1, i32 0}
!120 = !{!115, !10, i64 8}
!121 = !{!115, !10, i64 12}
!122 = !{!"p1 _ZTSN6hermes8FunctionE", !15, i64 0}
!123 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes10BasicBlockEJEEE", !39, i64 0}
!124 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes10BasicBlockENS1_8FunctionEJEEE", !123, i64 0}
!125 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !94, i64 0}
!126 = !{!"_ZTSN4llvh12simple_ilistIN6hermes11InstructionEJEEE", !125, i64 0}
!127 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes11InstructionEJEEENS_12ilist_traitsIS3_EEEE", !126, i64 0}
!128 = !{!"_ZTSN4llvh6iplistIN6hermes11InstructionEJEEE", !127, i64 0}
!129 = !{!"_ZTSN6hermes10BasicBlockE", !124, i64 0, !22, i64 16, !128, i64 56, !122, i64 72}
!130 = !{!129, !122, i64 72}
!131 = !{!91, !91, i64 0}
!132 = !{!"_ZTSN6hermes11LiteralBoolE", !24, i64 0, !25, i64 40}
!133 = !{!132, !25, i64 40}
!134 = distinct !{!134, !74}
!135 = distinct !{!135, !74}
!136 = !{!66, !56, i64 224}
!137 = !{!56, !56, i64 0}
!138 = !{!66, !25, i64 188}
!139 = distinct !{!139, !74}
!140 = distinct !{!140, !74}
!141 = !{ptr @_ZN6hermes3hbc23LowerLoadStoreFrameInst8getScopeERNS_9IRBuilderEPNS_8VariableEPNS_17ScopeCreationInstE}
!142 = distinct !{!142, !"_ZN6hermes14TerminatorInst10successorsEv"}
!143 = distinct !{!143, !142, !"_ZN6hermes14TerminatorInst10successorsEv: argument 0"}
!144 = !{!143}
!145 = distinct !{!145, !"_ZN6hermes14TerminatorInst10successorsEv"}
!146 = distinct !{!146, !145, !"_ZN6hermes14TerminatorInst10successorsEv: argument 0"}
!147 = distinct !{!147, !"_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E6insertERKS4_"}
!148 = distinct !{!148, !147, !"_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E6insertERKS4_: argument 0"}
!149 = distinct !{!149, !74}
!150 = distinct !{!150, !89}
!151 = distinct !{!151, !74}
!152 = distinct !{!152, !"_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E6insertERKS4_"}
!153 = distinct !{!153, !152, !"_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E6insertERKS4_: argument 0"}
!154 = distinct !{!154, !74}
!155 = distinct !{!155, !74}
!156 = distinct !{!156, !74}
!157 = !{!146}
!158 = !{!148}
!159 = !{!25, !25, i64 0}
!160 = !{!153}
!161 = !{!49, !49, i64 0}
!162 = !{!90, !90, i64 0}
!163 = !{!52, !52, i64 0}
!164 = distinct !{!164, !"_ZN6hermes17PostOrderAnalysis6rbeginEv"}
!165 = distinct !{!165, !164, !"_ZN6hermes17PostOrderAnalysis6rbeginEv: argument 0"}
!166 = distinct !{!166, !"_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE6rbeginEv"}
!167 = distinct !{!167, !166, !"_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE6rbeginEv: argument 0"}
!168 = distinct !{!168, !"_ZN6hermes17PostOrderAnalysis4rendEv"}
!169 = distinct !{!169, !168, !"_ZN6hermes17PostOrderAnalysis4rendEv: argument 0"}
!170 = distinct !{!170, !"_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE4rendEv"}
!171 = distinct !{!171, !170, !"_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE4rendEv: argument 0"}
!172 = distinct !{!172, !89}
!173 = distinct !{!173, !74}
!174 = distinct !{!174, !74}
!175 = !{!"p2 _ZTSN6hermes10BasicBlockE", !104, i64 0}
!176 = !{!175, !175, i64 0}
!177 = !{!167, !165}
!178 = !{!171, !169}
!179 = !{!70, !70, i64 0}
!180 = !{!"_ZTSNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EE17_Vector_impl_dataE", !175, i64 0, !175, i64 8, !175, i64 16}
!181 = !{!180, !175, i64 0}
!182 = !{!180, !175, i64 16}
!183 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EEEE", !15, i64 0}
!184 = !{!"_ZTSN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEE", !183, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!185 = !{!184, !10, i64 16}
!186 = !{!184, !183, i64 0}
!187 = !{!"p1 _ZTSN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEE", !15, i64 0}
!188 = !{!187, !187, i64 0}
!189 = !{!"p2 _ZTSN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEE", !104, i64 0}
!190 = !{!"_ZTSNSt12_Vector_baseIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE17_Vector_impl_dataE", !189, i64 0, !189, i64 8, !189, i64 16}
!191 = !{!190, !189, i64 0}
!192 = !{!190, !189, i64 16}
!193 = !{!"p1 _ZTSN6hermes21HBCReifyArgumentsInstE", !15, i64 0}
!194 = !{!193, !193, i64 0}
!195 = distinct !{!195, !74}
!196 = distinct !{null}
!197 = distinct !{!197, !74, !113}
!198 = !{!"_ZTSN6hermes3hbc10LowerCallsE", !108, i64 0, !109, i64 32}
!199 = !{!198, !109, i64 32}
!200 = distinct !{!200, !74}
!201 = distinct !{!201, !"_ZN4llvh15SmallPtrSetImplIPN6hermes11InstructionEE6insertES3_"}
!202 = distinct !{!202, !201, !"_ZN4llvh15SmallPtrSetImplIPN6hermes11InstructionEE6insertES3_: argument 0"}
!203 = distinct !{!203, !74}
!204 = !{!"_ZTSN4llvh19SmallPtrSetImplBaseE", !104, i64 0, !104, i64 8, !10, i64 16, !10, i64 20, !10, i64 24}
!205 = !{!204, !104, i64 0}
!206 = !{!204, !104, i64 8}
!207 = !{!204, !10, i64 16}
!208 = !{!204, !10, i64 20}
!209 = !{!204, !10, i64 24}
!210 = !{!"_ZTSN6hermes3hbc19RecreateCheapValuesE", !108, i64 0, !109, i64 32}
!211 = !{!210, !109, i64 32}
!212 = !{!202}
!213 = !{!"_ZTSN6hermes3hbc26LoadConstantValueNumberingE", !108, i64 0, !109, i64 32}
!214 = !{!213, !109, i64 32}
!215 = !{!"_ZTSSt4pairIjPN6hermes11InstructionEE", !10, i64 0, !85, i64 8}
!216 = !{!215, !85, i64 8}
!217 = distinct !{!217, !74, !113}
!218 = distinct !{!218, !"_ZN6hermes3hbc12_GLOBAL__N_123getInsertionPointsAfterERNS_9IRBuilderEPNS_11InstructionE"}
!219 = distinct !{!219, !218, !"_ZN6hermes3hbc12_GLOBAL__N_123getInsertionPointsAfterERNS_9IRBuilderEPNS_11InstructionE: argument 0"}
!220 = distinct !{!220, !74}
!221 = distinct !{!221, !113}
!222 = !{!"_ZTSN6hermes3hbc14SpillRegistersE", !108, i64 0, !109, i64 32}
!223 = !{!222, !109, i64 32}
!224 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoEEE", !15, i64 0}
!225 = !{!"_ZTSN4llvh8DenseMapIPN6hermes10BasicBlockENS1_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEEE", !224, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!226 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes11InstructionEjEE", !15, i64 0}
!227 = !{!"_ZTSN4llvh8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEE", !226, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!228 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj32EEE", !9, i64 0}
!229 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj32EEE", !19, i64 0, !228, i64 16}
!230 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIN6hermes8IntervalEvEE", !16, i64 0}
!231 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EEE", !230, i64 0}
!232 = !{!"_ZTSN4llvh15SmallVectorImplIN6hermes8IntervalEEE", !231, i64 0}
!233 = !{!"_ZTSN4llvh18SmallVectorStorageIN6hermes8IntervalELj32EEE", !9, i64 0}
!234 = !{!"_ZTSN4llvh11SmallVectorIN6hermes8IntervalELj32EEE", !232, i64 0, !233, i64 16}
!235 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes5ValueENS2_8RegisterEEE", !15, i64 0}
!236 = !{!"_ZTSN4llvh8DenseMapIPN6hermes5ValueENS1_8RegisterENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S4_EEEE", !235, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!237 = !{!"p1 long", !15, i64 0}
!238 = !{!"_ZTSN4llvh8ArrayRefImEE", !237, i64 0, !90, i64 8}
!239 = !{!"_ZTSN4llvh15MutableArrayRefImEE", !238, i64 0}
!240 = !{!"_ZTSN4llvh9BitVectorE", !239, i64 0, !10, i64 16}
!241 = !{!"_ZTSN6hermes12RegisterFileE", !240, i64 0}
!242 = !{!"_ZTSN6hermes17RegisterAllocatorE", !225, i64 8, !227, i64 32, !229, i64 56, !234, i64 328, !236, i64 1880, !241, i64 1904, !10, i64 1928, !90, i64 1936, !122, i64 1944}
!243 = !{!"_ZTSN6hermes3hbc20HVMRegisterAllocatorE", !242, i64 0, !10, i64 1952, !10, i64 1956}
!244 = !{!243, !10, i64 1956}
!245 = !{!219}
!246 = !{!"p1 _ZTSN6hermes10SwitchInstE", !15, i64 0}
!247 = !{!246, !246, i64 0}
!248 = distinct !{!248, !74, !113}
!249 = !{!"_ZTSN4llvh16DenseMapIteratorIPN6hermes11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EELb0EEE", !91, i64 0, !91, i64 8}
!250 = !{!"_ZTSSt4pairIN4llvh16DenseMapIteratorIPN6hermes11InstructionENS0_6detail13DenseSetEmptyENS0_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EELb0EEEbE", !249, i64 0, !25, i64 16}
!251 = !{!250, !25, i64 16}
!252 = distinct !{!252, !89}
!253 = distinct !{!253, !74}
!254 = distinct !{!254, !89}
!255 = distinct !{!255, !89}
!256 = !{!92, !10, i64 8}
!257 = distinct !{!257, !89}
!258 = distinct !{!258, !74}
!259 = distinct !{!259, !89}
!260 = distinct !{!260, !74}
end_hunk_0
