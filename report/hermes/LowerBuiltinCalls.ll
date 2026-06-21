inline.NumInlined: 801
inline.NumDeleted: 336
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !154
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #13, !inline_history !159
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #3

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E16FindAndConstructEOS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20   ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %1, align 8, !tbaa !7 ; 3 uses
  %i.f = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.d, -1                         ; 2 uses
  %.03649.i.i = and i32 %i.j, %i.k                ; 2 uses
  %i.l = zext nneg i32 %.03649.i.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.l ; 3 uses
  %.sroa.05.0.copyload50.i.i = load ptr, ptr %i.m, align 8, !tbaa !7 ; 2 uses
  %i.n = icmp eq ptr %.sroa.0.0.copyload.i.i.i, %.sroa.05.0.copyload50.i.i
  br i1 %i.n, label %.loopexit, label %.lr.ph.i.i, !prof !21

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.sroa.05.0.copyload54.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %bb.d ], [ %.sroa.05.0.copyload50.i.i, %bb.b ] ; 2 uses
  %i.o = phi ptr [ %i.w, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %.03653.i.i = phi i32 [ %.036.i.i, %bb.d ], [ %.03649.i.i, %bb.b ]
  %.03352.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %.03851.i.i = phi i32 [ %i.t, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %i.p = icmp eq ptr %.sroa.05.0.copyload54.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.p, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03352.i.i, null
  %i.q = select i1 %.not.i.i, ptr %i.o, ptr %.03352.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.r = icmp eq ptr %.sroa.05.0.copyload54.i.i, inttoptr (i64 -16 to ptr)
  %i.s = icmp eq ptr %.03352.i.i, null
  %or.cond.not.i.i = select i1 %i.r, i1 %i.s, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.o, ptr %.03352.i.i
  %i.t = add i32 %.03851.i.i, 1
  %i.u = add i32 %.03851.i.i, %.03653.i.i
  %.036.i.i = and i32 %i.u, %i.k                  ; 2 uses
  %i.v = zext i32 %.036.i.i to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.v ; 3 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %i.w, align 8, !tbaa !7 ; 2 uses
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i, %.sroa.05.0.copyload.i.i
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i, !prof !23, !llvm.loop !24

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.q, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !160
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !161  ; 3 uses
  %i.aa = shl i32 %i.z, 2
  %i.ab = add i32 %i.aa, 4
  %i.ac = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !22

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit
  %i.ad = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !162
  %.neg.i.i = xor i32 %i.z, -1
  %.neg13.i.i = add i32 %i.d, %.neg.i.i
  %i.ag = sub i32 %.neg13.i.i, %i.af
  %i.ah = lshr i32 %i.d, 3
  %.not11.i.i = icmp ugt i32 %i.ag, %i.ah
  br i1 %.not11.i.i, label %bb.g, label %.sink.split.i.i, !prof !22

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ad, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sink.i.i5)
  %i.ai = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !161
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !160
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.aj = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ak = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.z, %bb.f ]
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.y, align 8, !tbaa !161
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.aj, align 8, !tbaa !7
  %i.am = icmp eq ptr %.sroa.01.0.copyload.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.am, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E16InsertIntoBucketIS3_JEEEPS8_SC_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !162
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !162
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E16InsertIntoBucketIS3_JEEEPS8_SC_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E16InsertIntoBucketIS3_JEEEPS8_SC_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = load i64, ptr %1, align 8, !tbaa !7
  store i64 %i.aq, ptr %i.aj, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 0, ptr %i.ar, align 8, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E16InsertIntoBucketIS3_JEEEPS8_SC_OT_DpOT0_.exit
  %.0 = phi ptr [ %i.aj, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E16InsertIntoBucketIS3_JEEEPS8_SC_OT_DpOT0_.exit ], [ %i.m, %bb.b ], [ %i.w, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !7 ; 3 uses
  %i.e = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = lshr i32 %i.f, 4
  %i.h = lshr i32 %i.f, 9
  %i.i = xor i32 %i.g, %i.h
  %i.j = add i32 %i.c, -1                         ; 2 uses
  %.03649.i = and i32 %i.i, %i.j                  ; 2 uses
  %i.k = zext nneg i32 %.03649.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.k ; 3 uses
  %.sroa.05.0.copyload50.i = load ptr, ptr %i.l, align 8, !tbaa !7 ; 2 uses
  %i.m = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.05.0.copyload50.i
  br i1 %i.m, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_.exit, label %.lr.ph.i, !prof !21

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.sroa.05.0.copyload54.i = phi ptr [ %.sroa.05.0.copyload.i, %bb.d ], [ %.sroa.05.0.copyload50.i, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.v, %bb.d ], [ %i.l, %bb.b ] ; 2 uses
  %.03653.i = phi i32 [ %.036.i, %bb.d ], [ %.03649.i, %bb.b ]
  %.03352.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %.03851.i = phi i32 [ %i.s, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %i.o = icmp eq ptr %.sroa.05.0.copyload54.i, inttoptr (i64 -8 to ptr)
  br i1 %i.o, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.03352.i, null
  %i.p = select i1 %.not.i, ptr %i.n, ptr %.03352.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = icmp eq ptr %.sroa.05.0.copyload54.i, inttoptr (i64 -16 to ptr)
  %i.r = icmp eq ptr %.03352.i, null
  %or.cond.not.i = select i1 %i.q, i1 %i.r, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.n, ptr %.03352.i
  %i.s = add i32 %.03851.i, 1
  %i.t = add i32 %.03851.i, %.03653.i
  %.036.i = and i32 %i.t, %i.j                    ; 2 uses
  %i.u = zext i32 %.036.i to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.u ; 3 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %i.v, align 8, !tbaa !7 ; 2 uses
  %i.w = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.05.0.copyload.i
  br i1 %i.w, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_.exit, label %.lr.ph.i, !prof !23, !llvm.loop !24

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.p, %bb.c ], [ null, %bb.a ], [ %i.l, %bb.b ], [ %i.v, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !160
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 4 uses
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
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !20
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #15 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !17
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !162
  %i.w = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not5.i = icmp eq i32 %i.w, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter27 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter29 = phi i64 [ %prol.iter29.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.06.i.prol, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 16 ; 2 uses
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !163

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.06.i, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !164

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !161
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !162
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !20  ; 4 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not5.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not5.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

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
  store ptr inttoptr (i64 -8 to ptr), ptr %.06.i.i.prol, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !165

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.06.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.06.i.i, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ay, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ba, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bb, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bc, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bd, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !164

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not22.i = icmp eq i32 %i.b, 0
  br i1 %.not22.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E18moveFromOldBucketsEPS8_SB_.exit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E9initEmptyEv.exit.i
  %2 = icmp ne i32 %i.aq, 0
  %3 = add i32 %i.aq, -1                          ; 2 uses
  br label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.preheader, %bb.f
  %i.bg = phi i32 [ %i.cc, %bb.f ], [ 0, %.lr.ph.i6.preheader ] ; 3 uses
  %.023.i = phi ptr [ %i.cd, %bb.f ], [ %i.c, %.lr.ph.i6.preheader ] ; 3 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %.023.i, align 8 ; 3 uses
  %magicptr.i = ptrtoint ptr %.sroa.03.0.copyload.i to i64 ; 3 uses
  switch i64 %magicptr.i, label %bb.c [
    i64 -8, label %bb.f
    i64 -16, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.i6
  tail call void @llvm.assume(i1 %2)
  %i.bh = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bi = lshr i32 %i.bh, 4
  %i.bj = lshr i32 %i.bh, 9
  %i.bk = xor i32 %i.bi, %i.bj
  %.03649.i.i.i = and i32 %i.bk, %3               ; 2 uses
  %i.bl = zext nneg i32 %.03649.i.i.i to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bl ; 3 uses
  %.sroa.05.0.copyload50.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !7 ; 2 uses
  %i.bn = icmp eq ptr %.sroa.03.0.copyload.i, %.sroa.05.0.copyload50.i.i.i
  br i1 %i.bn, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit.i, label %.lr.ph.i.i.i, !prof !21

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %.sroa.05.0.copyload54.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i, %bb.e ], [ %.sroa.05.0.copyload50.i.i.i, %bb.c ] ; 2 uses
  %i.bo = phi ptr [ %i.bw, %bb.e ], [ %i.bm, %bb.c ] ; 2 uses
  %.03653.i.i.i = phi i32 [ %.036.i.i.i, %bb.e ], [ %.03649.i.i.i, %bb.c ]
  %.03352.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %.03851.i.i.i = phi i32 [ %i.bt, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %i.bp = icmp eq ptr %.sroa.05.0.copyload54.i.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.bp, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03352.i.i.i, null
  %i.bq = select i1 %.not.i.i.i, ptr %i.bo, ptr %.03352.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.br = icmp eq ptr %.sroa.05.0.copyload54.i.i.i, inttoptr (i64 -16 to ptr)
  %i.bs = icmp eq ptr %.03352.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.br, i1 %i.bs, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bo, ptr %.03352.i.i.i
  %i.bt = add i32 %.03851.i.i.i, 1
  %i.bu = add i32 %.03851.i.i.i, %.03653.i.i.i
  %.036.i.i.i = and i32 %i.bu, %3                 ; 2 uses
  %i.bv = zext i32 %.036.i.i.i to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bv ; 3 uses
  %.sroa.05.0.copyload.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !7 ; 2 uses
  %i.bx = icmp eq ptr %.sroa.03.0.copyload.i, %.sroa.05.0.copyload.i.i.i
  br i1 %i.bx, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit.i, label %.lr.ph.i.i.i, !prof !23, !llvm.loop !24

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bq, %bb.d ], [ %i.bm, %bb.c ], [ %i.bw, %bb.e ] ; 2 uses
  store i64 %magicptr.i, ptr %.sink.i.i.i, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.023.i, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !3
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !3
  %i.cb = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.cb, ptr %i.ao, align 8, !tbaa !161
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit.i, %.lr.ph.i6, %.lr.ph.i6
  %i.cc = phi i32 [ %i.cb, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit.i ], [ %i.bg, %.lr.ph.i6 ], [ %i.bg, %.lr.ph.i6 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.023.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.cd, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E18moveFromOldBucketsEPS8_SB_.exit, label %.lr.ph.i6, !llvm.loop !166

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E18moveFromOldBucketsEPS8_SB_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #13
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E18moveFromOldBucketsEPS8_SB_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIiN6hermes10IdentifierEENS3_13BuiltinMethod4EnumENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPKSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !3      ; 3 uses
  %i.f = mul i32 %i.e, 37
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw i64 %i.g, 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.i, align 8, !tbaa !7 ; 3 uses
  %i.j = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = lshr i32 %i.k, 4
  %i.m = lshr i32 %i.k, 9
  %i.n = xor i32 %i.l, %i.m
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = or disjoint i64 %i.h, %i.o
  %i.q = shl nuw nsw i64 %i.o, 32
  %i.r = xor i64 %i.q, -1
  %i.s = add i64 %i.p, %i.r                       ; 2 uses
  %i.t = lshr i64 %i.s, 22
  %i.u = xor i64 %i.t, %i.s                       ; 2 uses
  %i.v = shl i64 %i.u, 13
  %i.w = xor i64 %i.v, -1
  %i.x = add i64 %i.u, %i.w                       ; 2 uses
  %i.y = lshr i64 %i.x, 8
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, 9                         ; 2 uses
  %i.ab = lshr i64 %i.aa, 15
  %i.ac = xor i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = shl i64 %i.ac, 27
  %i.ae = xor i64 %i.ad, -1
  %i.af = add i64 %i.ac, %i.ae                    ; 2 uses
  %i.ag = lshr i64 %i.af, 31
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = add i32 %i.c, -1                        ; 2 uses
  %i.ak = and i32 %i.aj, %i.ai                    ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.al ; 4 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 2 uses
  %i.ao = icmp eq i32 %i.e, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload.i51 = load ptr, ptr %i.ap, align 8 ; 2 uses
  %i.aq = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i51
  %i.ar = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %i.ar, label %._crit_edge, label %.lr.ph, !prof !21

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.sroa.0.0.copyload.i55 = phi ptr [ %.sroa.0.0.copyload.i, %bb.d ], [ %.sroa.0.0.copyload.i51, %bb.b ] ; 2 uses
  %i.as = phi i32 [ %i.bh, %bb.d ], [ %i.an, %bb.b ] ; 2 uses
  %i.at = phi ptr [ %i.bg, %bb.d ], [ %i.am, %bb.b ] ; 2 uses
  %.02554 = phi i32 [ %i.bc, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02753 = phi i32 [ %i.be, %bb.d ], [ %i.ak, %bb.b ]
  %.02952 = phi ptr [ %spec.select, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.au = icmp eq i32 %i.as, 2147483647
  %i.av = icmp eq ptr %.sroa.0.0.copyload.i55, inttoptr (i64 -8 to ptr)
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %.lr.ph
  %.not = icmp eq ptr %.02952, null
  %i.ax = select i1 %.not, ptr %i.at, ptr %.02952
  br label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %i.ay = icmp eq i32 %i.as, -2147483648
  %i.az = icmp eq ptr %.sroa.0.0.copyload.i55, inttoptr (i64 -16 to ptr)
  %i.ba = select i1 %i.ay, i1 %i.az, i1 false
  %i.bb = icmp eq ptr %.02952, null
  %or.cond.not = select i1 %i.ba, i1 %i.bb, i1 false
  %spec.select = select i1 %or.cond.not, ptr %i.at, ptr %.02952
  %i.bc = add i32 %.02554, 1
  %i.bd = add i32 %.02554, %.02753
  %i.be = and i32 %i.bd, %i.aj                    ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.bf ; 4 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3  ; 2 uses
  %i.bi = icmp eq i32 %i.e, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bj, align 8 ; 2 uses
  %i.bk = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i
  %i.bl = select i1 %i.bi, i1 %i.bk, i1 false
  br i1 %i.bl, label %._crit_edge, label %.lr.ph, !prof !23, !llvm.loop !167

._crit_edge:                                      ; preds = %bb.d, %bb.b, %bb.a, %bb.c
  %.sink = phi ptr [ %i.ax, %bb.c ], [ null, %bb.a ], [ %i.am, %bb.b ], [ %i.bg, %bb.d ]
  %.2 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink, ptr %2, align 8, !tbaa !10
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIiN6hermes10IdentifierEENS3_13BuiltinMethod4EnumENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E20InsertIntoBucketImplIS5_EEPSC_RKS5_RKT_SG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !168  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28   ; 5 uses
  %i.g = shl i32 %i.d, 2
  %i.h = add i32 %i.g, 4
  %i.i = mul i32 %i.f, 3
  %.not = icmp ult i32 %i.h, %i.i
  br i1 %.not, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %i.f, 1
  tail call void @_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.k = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIiN6hermes10IdentifierEENS3_13BuiltinMethod4EnumENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPKSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !169
  %.neg = xor i32 %i.d, -1
  %.neg13 = add i32 %i.f, %.neg
  %i.o = sub i32 %.neg13, %i.n
  %i.p = lshr i32 %i.f, 3
  %.not9 = icmp ugt i32 %i.o, %i.p
  br i1 %.not9, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.q = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIiN6hermes10IdentifierEENS3_13BuiltinMethod4EnumENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPKSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %3, %bb.c ], [ %i.r, %bb.d ], [ %i.l, %bb.b ] ; 3 uses
  %i.s = load i32, ptr %i.c, align 8, !tbaa !168
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.c, align 8, !tbaa !168
  %i.u = load i32, ptr %.0, align 4, !tbaa !3
  %i.v = icmp eq i32 %i.u, 2147483647
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %.sroa.01.0.copyload.i = load ptr, ptr %i.w, align 8
  %i.x = icmp eq ptr %.sroa.01.0.copyload.i, inttoptr (i64 -8 to ptr)
  %i.y = select i1 %i.v, i1 %i.x, i1 false
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !169
  %i.ab = add i32 %i.aa, -1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !169
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE15allocateBucketsEj.exit:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
end_hunk_0
