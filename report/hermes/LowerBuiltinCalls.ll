inline.NumInlined: 801
inline.NumDeleted: 336
begin_hunk_0_@_ZN6hermes3hbc24LowerBuiltinCallsContext3getERNS_7ContextE:bb.a
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !154
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #14
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !154
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #14
  br label %_ZNSt12__shared_ptrIN6hermes3hbc24LowerBuiltinCallsContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !154
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !125
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_1
begin_hunk_2_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !154
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_2
begin_hunk_3_@_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E16FindAndConstructEOS3_:bb.a
_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.q, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !158
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !159  ; 3 uses
  %i.aa = shl i32 %i.z, 2
  %i.ab = add i32 %i.aa, 4
  %i.ac = mul i32 %i.d, 3
end_hunk_3
begin_hunk_4_@_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E16FindAndConstructEOS3_:bb.a

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !160
  %.neg.i.i = xor i32 %i.z, -1
  %.neg13.i.i = add i32 %i.d, %.neg.i.i
  %i.ag = sub i32 %.neg13.i.i, %i.af
end_hunk_4
begin_hunk_5_@_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E16FindAndConstructEOS3_:bb.a
  %.sink.i.i5 = phi i32 [ %i.ad, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sink.i.i5)
  %i.ai = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !159
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !158
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.aj = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ak = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.z, %bb.f ]
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.y, align 8, !tbaa !159
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.aj, align 8, !tbaa !7
  %i.am = icmp eq ptr %.sroa.01.0.copyload.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.am, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E16InsertIntoBucketIS3_JEEEPS8_SC_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !160
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !160
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E16InsertIntoBucketIS3_JEEEPS8_SC_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E16InsertIntoBucketIS3_JEEEPS8_SC_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
end_hunk_5
begin_hunk_6_@_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_:bb.a
_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.p, %bb.c ], [ null, %bb.a ], [ %i.l, %bb.b ], [ %i.v, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !158
  ret i1 %.2.i
}

end_hunk_6
begin_hunk_7_@_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE4growEj:_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !159
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !160
  %i.w = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE4growEj:_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 16 ; 2 uses
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !161

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
end_hunk_8
begin_hunk_9_@_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE4growEj:_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !162

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !159
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !160
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE4growEj:_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !163

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.06.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
end_hunk_10
begin_hunk_11_@_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE4growEj:_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !162

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not22.i = icmp eq i32 %i.b, 0
end_hunk_11
begin_hunk_12_@_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE4growEj:_ZN4llvh8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !3
  %i.ce = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.ce, ptr %i.ao, align 8, !tbaa !159
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit.i, %.lr.ph.i6, %.lr.ph.i6
  %i.cf = phi i32 [ %i.ce, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit.i ], [ %i.bg, %.lr.ph.i6 ], [ %i.bg, %.lr.ph.i6 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.023.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.cg, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E18moveFromOldBucketsEPS8_SB_.exit, label %.lr.ph.i6, !llvm.loop !164

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E18moveFromOldBucketsEPS8_SB_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEiNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #14
end_hunk_12
begin_hunk_13_@_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIiN6hermes10IdentifierEENS3_13BuiltinMethod4EnumENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPKSC_:bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bj, align 8 ; 2 uses
  %i.bk = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i
  %i.bl = select i1 %i.bi, i1 %i.bk, i1 false
  br i1 %i.bl, label %._crit_edge, label %.lr.ph, !prof !23, !llvm.loop !165

._crit_edge:                                      ; preds = %bb.d, %bb.b, %bb.a, %bb.c
  %.sink = phi ptr [ %i.ax, %bb.c ], [ null, %bb.a ], [ %i.am, %bb.b ], [ %i.bg, %bb.d ]
end_hunk_13
begin_hunk_14_@_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIiN6hermes10IdentifierEENS3_13BuiltinMethod4EnumENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E20InsertIntoBucketImplIS5_EEPSC_RKS5_RKT_SG_:bb.a
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !166  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28   ; 5 uses
  %i.g = shl i32 %i.d, 2
end_hunk_14
begin_hunk_15_@_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIiN6hermes10IdentifierEENS3_13BuiltinMethod4EnumENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E20InsertIntoBucketImplIS5_EEPSC_RKS5_RKT_SG_:bb.a

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !167
  %.neg = xor i32 %i.d, -1
  %.neg13 = add i32 %i.f, %.neg
  %i.o = sub i32 %.neg13, %i.n
end_hunk_15
begin_hunk_16_@_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIiN6hermes10IdentifierEENS3_13BuiltinMethod4EnumENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E20InsertIntoBucketImplIS5_EEPSC_RKS5_RKT_SG_:bb.a

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %3, %bb.c ], [ %i.r, %bb.d ], [ %i.l, %bb.b ] ; 3 uses
  %i.s = load i32, ptr %i.c, align 8, !tbaa !166
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.c, align 8, !tbaa !166
  %i.u = load i32, ptr %.0, align 4, !tbaa !3
  %i.v = icmp eq i32 %i.u, 2147483647
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 8
end_hunk_16
begin_hunk_17_@_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIiN6hermes10IdentifierEENS3_13BuiltinMethod4EnumENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E20InsertIntoBucketImplIS5_EEPSC_RKS5_RKT_SG_:bb.a

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !167
  %i.ab = add i32 %i.aa, -1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !167
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
end_hunk_17
begin_hunk_18_@_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE4growEj:_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE15allocateBucketsEj.exit

bb.a:                                             ; preds = %_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE15allocateBucketsEj.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !166
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !167
  %i.x = load i32, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.y = zext i32 %i.x to i64
  %.idx.i = mul nuw nsw i64 %i.y, 24              ; 2 uses
end_hunk_18
begin_hunk_19_@_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE4growEj:_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE15allocateBucketsEj.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 24 ; 2 uses
  %prol.iter14.next = add i64 %prol.iter14, 1     ; 2 uses
  %prol.iter14.cmp.not = icmp eq i64 %prol.iter14.next, %xtraiter12
  br i1 %prol.iter14.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !168

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.u, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
end_hunk_19
begin_hunk_20_@_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE4growEj:_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE15allocateBucketsEj.exit
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.44.0..sroa_idx.i.7, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i, i64 192 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.am, %i.z
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIiN6hermes10IdentifierEENS3_13BuiltinMethod4EnumENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !169

bb.b:                                             ; preds = %_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE15allocateBucketsEj.exit
  %i.an = zext i32 %i.c to i64
  %.idx = mul nuw nsw i64 %i.an, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !166
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !167
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %.idx.i.i = mul nuw nsw i64 %i.as, 24           ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE4growEj:_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE15allocateBucketsEj.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !170

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.prol ]
end_hunk_21
begin_hunk_22_@_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE4growEj:_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE15allocateBucketsEj.exit
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.44.0..sroa_idx.i.i.7, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 192 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bg, %i.at
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIiN6hermes10IdentifierEENS3_13BuiltinMethod4EnumENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !169

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIiN6hermes10IdentifierEENS3_13BuiltinMethod4EnumENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not20.i = icmp eq i32 %i.c, 0
end_hunk_22
begin_hunk_23_@_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE4growEj:_ZN4llvh8DenseMapISt4pairIiN6hermes10IdentifierEENS2_13BuiltinMethod4EnumENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE15allocateBucketsEj.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %.021.i, i64 16
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !15
  store i8 %i.bw, ptr %i.bu, align 8, !tbaa !15
  %i.bx = load i32, ptr %i.ap, align 8, !tbaa !166
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.ap, align 8, !tbaa !166
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i6
  %i.bz = getelementptr inbounds nuw i8, ptr %.021.i, i64 24 ; 2 uses
  %.not.i7 = icmp eq ptr %i.bz, %i.ao
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIiN6hermes10IdentifierEENS3_13BuiltinMethod4EnumENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E18moveFromOldBucketsEPSC_SF_.exit, label %.lr.ph.i6, !llvm.loop !171

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIiN6hermes10IdentifierEENS3_13BuiltinMethod4EnumENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E18moveFromOldBucketsEPSC_SF_.exit: ; preds = %bb.e, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIiN6hermes10IdentifierEENS3_13BuiltinMethod4EnumENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #14
end_hunk_23
begin_hunk_24_@llvm.assume
!155 = !{!"vtable pointer", !6, i64 0}
!156 = !{!144, !144, i64 0}
!157 = !{!71, !72, i64 0}
!158 = !{!19, !19, i64 0}
!159 = !{!18, !4, i64 8}
!160 = !{!18, !4, i64 12}
!161 = distinct !{!161, !138}
!162 = distinct !{!162, !25}
!163 = distinct !{!163, !138}
!164 = distinct !{!164, !25}
!165 = distinct !{!165, !25}
!166 = !{!27, !4, i64 8}
!167 = !{!27, !4, i64 12}
!168 = distinct !{!168, !138}
!169 = distinct !{!169, !25}
!170 = distinct !{!170, !138}
!171 = distinct !{!171, !25}
end_hunk_24
