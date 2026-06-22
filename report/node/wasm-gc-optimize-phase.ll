inline.NumInlined: 24506
inline.NumDeleted: 9549
begin_hunk_0_@_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft11StructGetOp11outputs_repEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca [1 x %"class.v8::internal::compiler::turboshaft::RegisterRepresentation"], align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = zext i32 %i.b to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.i, align 4
  %i.j = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN2v88internal8compiler10turboshaft17RepresentationForENS0_4wasm9ValueTypeE(i32 %.sroa.0.0.copyload.i.i) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn6 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ]
  %.fca.0.insert.i.i.pn = insertvalue { ptr, i64 } poison, ptr %.pn6, 0
  %.pn = insertvalue { ptr, i64 } %.fca.0.insert.i.i.pn, i64 1, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable6InsertERKNS2_11StructGetOpENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(26) %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = icmp eq i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader37

.preheader:                                       ; preds = %bb.a, %.preheader.backedge
  %.sroa.015.0.i = phi i32 [ %.sroa.015.0.i.be, %.preheader.backedge ], [ %.sroa.0.0.copyload.i.i, %bb.a ] ; 3 uses
  %i.l = lshr i32 %.sroa.015.0.i, 4
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %.not32.i = icmp eq i32 %i.o, -1
  br i1 %.not32.i, label %bb.b, label %.preheader.backedge

bb.b:                                             ; preds = %.preheader
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = zext i32 %.sroa.015.0.i to i64
  %i.s = add i64 %i.q, %i.r
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4
  switch i8 %i.u, label %_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable11ResolveBaseENS2_7OpIndexE.exit [
    i8 16, label %bb.d
    i8 19, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d, !llvm.loop !12

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i64 [ 16, %bb.c ], [ 12, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sink.i
  %.sroa.015.3.i = load i32, ptr %i.v, align 4
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %.preheader
  %.sroa.015.0.i.be = phi i32 [ %i.o, %.preheader ], [ %.sroa.015.3.i, %bb.d ]
  br label %.preheader, !llvm.loop !12

_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable11ResolveBaseENS2_7OpIndexE.exit: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.09.0.copyload = load i32, ptr %i.w, align 8
  tail call void @_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable6InsertENS2_7OpIndexEiNS0_4wasm15ModuleTypeIndexEhbS5_(ptr noundef nonnull align 8 dereferenceable(576) %0, i32 %.sroa.015.0.i, i32 noundef -6, i32 %.sroa.09.0.copyload, i8 noundef zeroext 8, i1 noundef zeroext false, i32 %2)
  br label %bb.k

.preheader37:                                     ; preds = %bb.a, %.preheader37.backedge
  %.sroa.015.0.i27 = phi i32 [ %.sroa.015.0.i27.be, %.preheader37.backedge ], [ %.sroa.0.0.copyload.i.i, %bb.a ] ; 3 uses
  %i.x = lshr i32 %.sroa.015.0.i27, 4
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %.not32.i28 = icmp eq i32 %i.aa, -1
  br i1 %.not32.i28, label %bb.e, label %.preheader37.backedge

bb.e:                                             ; preds = %.preheader37
  %i.ab = load ptr, ptr %i.k, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = zext i32 %.sroa.015.0.i27 to i64
  %i.ae = add i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4
  switch i8 %i.ag, label %_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable11ResolveBaseENS2_7OpIndexE.exit33 [
    i8 16, label %bb.g
    i8 19, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g, !llvm.loop !12

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i31 = phi i64 [ 16, %bb.f ], [ 12, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sink.i31
  %.sroa.015.3.i32 = load i32, ptr %i.ah, align 4
  br label %.preheader37.backedge

.preheader37.backedge:                            ; preds = %bb.g, %.preheader37
  %.sroa.015.0.i27.be = phi i32 [ %i.aa, %.preheader37 ], [ %.sroa.015.3.i32, %bb.g ]
  br label %.preheader37, !llvm.loop !12

_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable11ResolveBaseENS2_7OpIndexE.exit33: ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 4 uses
  %i.ak = icmp eq i32 %i.b, 0
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable11ResolveBaseENS2_7OpIndexE.exit33
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.am = load i8, ptr %i.al, align 2, !range !5, !noundef !6
  %i.an = shl nuw nsw i8 %i.am, 3
  %i.ao = zext nneg i8 %i.an to i32
  br label %_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable12field_offsetEPKNS0_4wasm10StructTypeEi.exit

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable11ResolveBaseENS2_7OpIndexE.exit33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = add i32 %i.b, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  br label %_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable12field_offsetEPKNS0_4wasm10StructTypeEi.exit

_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable12field_offsetEPKNS0_4wasm10StructTypeEi.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi i32 [ %i.ao, %bb.h ], [ %i.au, %bb.i ]
  %i.av = add i32 %.0.i.i, 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = zext i32 %i.b to i64                    ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  %.sroa.0.0.copyload.i.i34 = load i32, ptr %i.az, align 4 ; 2 uses
  %i.ba = trunc i32 %.sroa.0.0.copyload.i.i34 to i1
  br i1 %i.ba, label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable12field_offsetEPKNS0_4wasm10StructTypeEi.exit
  %i.bb = lshr i32 %.sroa.0.0.copyload.i.i34, 8
  %i.bc = add nuw nsw i32 %i.bb, 2
  %i.bd = and i32 %i.bc, 7
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @__const._ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.kValueKindSize, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  br label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit

_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable12field_offsetEPKNS0_4wasm10StructTypeEi.exit, %bb.j
  %.0.i = phi i8 [ %i.bg, %bb.j ], [ 8, %_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable12field_offsetEPKNS0_4wasm10StructTypeEi.exit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ay
  %i.bk = load i8, ptr %i.bj, align 1, !range !5, !noundef !6
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.01.0.copyload = load i32, ptr %i.bm, align 8
  tail call void @_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable6InsertENS2_7OpIndexEiNS0_4wasm15ModuleTypeIndexEhbS5_(ptr noundef nonnull align 8 dereferenceable(576) %0, i32 %.sroa.015.0.i27, i32 noundef %i.av, i32 %.sroa.01.0.copyload, i8 noundef zeroext %.0.i, i1 noundef zeroext %i.bl, i32 %2)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit, %_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable11ResolveBaseENS2_7OpIndexE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE9HasKeyForENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %i.i = select i1 %i.h, ptr @_ZN4absl18container_internal11kSooControlE, ptr null
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.l = load i64, ptr %i.k, align 8
  %sext.i.i = shl i64 %i.l, 48
  %i.m = ashr exact i64 %sext.i.i, 48
  %i.n = zext i32 %1 to i64
  %i.o = xor i64 %i.m, %i.n
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i = phi i64 [ %i.t, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i8.i.i, %i.b    ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not46.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not46.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i = phi i16 [ %i.an, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.b                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, %1
  br i1 %i.ak, label %.thread33.i.i.i, label %bb.f, !prof !11

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.am = add i16 %.sroa.017.047.i.i.i, -1
  %i.an = and i16 %i.am, %.sroa.017.047.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ao = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not44.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit, !prof !14

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !15

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit: ; preds = %.thread33.i.i.i, %bb.c
  %.pn.i.i = phi ptr [ %i.i, %bb.c ], [ %i.al, %.thread33.i.i.i ] ; 4 uses
  %i.as = icmp eq ptr %.pn.i.i, null
  %i.at = icmp eq ptr %.pn.i.i, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i.i = or i1 %i.as, %i.at
  br i1 %or.cond.i.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit
  %i.au = load i8, ptr %.pn.i.i, align 1
  %i.av = icmp sgt i8 %i.au, -1
  br i1 %i.av, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit
  br i1 %i.at, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit, !prof !16

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.9, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #23
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  %.pn.i.i1113 = phi ptr [ %.pn.i.i, %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i ], [ null, %bb.b ], [ null, %._crit_edge.i.i.i ]
  %i.aw = icmp ne ptr %.pn.i.i1113, null
  ret i1 %i.aw
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable23InvalidateMaybeAliasingILNS4_18EntriesWithOffsetsE0EEEvv(ptr noundef nonnull align 8 dereferenceable(576) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %.sroa.018.023 = load ptr, ptr %i.a, align 8    ; 2 uses
  %i.b = icmp eq ptr %.sroa.018.023, null
  br i1 %i.b, label %._crit_edge, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph25, %.loopexit
  %.sroa.018.024 = phi ptr [ %.sroa.018.023, %.lr.ph25 ], [ %.sroa.018.0, %.loopexit ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.018.024, i64 8
  %.sroa.04.0.copyload = load i32, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.c, align 8, !nonnull !6, !align !10
  %i.j = tail call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.i, i32 %.sroa.04.0.copyload)
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.018.024, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit
  %.sroa.016.022 = phi ptr [ %.sroa.016.1, %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit ], [ %.sroa.0.0.copyload.i, %bb.c ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.016.022, i64 13
  %i.m = load i8, ptr %i.l, align 1, !range !5, !noundef !6
  %i.n = icmp eq i8 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.016.022, i64 24 ; 3 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.p = load i64, ptr %i.o, align 8
  %i.q = inttoptr i64 %i.p to ptr
  br label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit, !llvm.loop !17

bb.e:                                             ; preds = %.lr.ph
  %.sroa.03.0.copyload.i = load ptr, ptr %i.o, align 8 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.016.022, i64 16 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE8RemoveAtERNSB_8iteratorE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = ptrtoint ptr %.sroa.03.0.copyload.i to i64
  store i64 %i.u, ptr %i.s, align 8
  %.not.i.i = icmp eq ptr %.sroa.03.0.copyload.i, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.r, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 16
  store ptr %i.v, ptr %i.w, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE8RemoveAtERNSB_8iteratorE.exit

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE8RemoveAtERNSB_8iteratorE.exit: ; preds = %bb.e, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.016.022, i64 48 ; 2 uses
  %.sroa.07.0.copyload.i = load i32, ptr %i.x, align 8 ; 2 uses
  %.not.i14 = icmp eq i32 %.sroa.07.0.copyload.i, -1
  br i1 %.not.i14, label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE8RemoveAtERNSB_8iteratorE.exit
  %i.y = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.z = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.aa = icmp ult ptr %i.y, %i.z
  br i1 %i.aa, label %bb.k, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.g, align 8
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 4
  %i.ag = add nsw i64 %i.af, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_3wle7KeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.ag)
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ah = phi ptr [ %i.y, %bb.i ], [ %.pre.i.i.i.i, %bb.j ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %i.d, align 8
  store ptr %.sroa.016.022, ptr %i.ah, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %.sroa.07.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  store i32 -1, ptr %i.x, align 8
  %i.aj = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i64, ptr %i.o, align 8             ; 3 uses
  store i64 %i.al, ptr %i.aj, align 8
  %.not.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load ptr, ptr %i.r, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.an, ptr %i.ao, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i: ; preds = %bb.n, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.016.022, i64 32 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit, label %bb.o

bb.o:                                             ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.016.022, i64 40
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  store i64 %i.at, ptr %i.aq, align 8
  %.not.i3.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i3.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load ptr, ptr %i.ap, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store ptr %i.av, ptr %i.aw, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit

_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit: ; preds = %bb.q, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE8RemoveAtERNSB_8iteratorE.exit, %bb.d
  %.sroa.016.1 = phi ptr [ %i.q, %bb.d ], [ %.sroa.03.0.copyload.i, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE8RemoveAtERNSB_8iteratorE.exit ], [ %.sroa.03.0.copyload.i, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i ], [ %.sroa.03.0.copyload.i, %bb.q ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.016.1, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit, %bb.c, %bb.b
  %.sroa.018.0 = load ptr, ptr %.sroa.018.024, align 8 ; 2 uses
  %i.ax = icmp eq ptr %.sroa.018.0, null
  br i1 %i.ax, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer17InvalidateIfAliasENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(1104) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call { ptr, i8 } @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE12TryGetKeyForENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.a, i32 %1) ; 2 uses
  %i.c = extractvalue { ptr, i8 } %i.b, 0         ; 3 uses
  %i.d = extractvalue { ptr, i8 } %i.b, 1
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.c, align 1, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 4
  %i.t = add nsw i64 %i.s, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef %i.t)
  %.pre.i.i.i = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit: ; preds = %bb.c, %bb.d
  %i.u = phi ptr [ %i.i, %bb.c ], [ %.pre.i.i.i, %bb.d ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.h, align 8
  store ptr %i.c, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 1
  store i8 0, ptr %i.c, align 4
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE12TryGetKeyForENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
  %sext.i.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i.i, 48
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i = phi i64 [ %i.s, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i8.i.i, %i.b    ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.b                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %.thread33.i.i.i, label %bb.f, !prof !11

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.al = add i16 %.sroa.017.047.i.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i, !prof !14

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !15

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread33.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.ak, %.thread33.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.ah, %.thread33.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit, !prof !14

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.9, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #23
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.9, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11) #23
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit
  %.sroa.06.0 = phi ptr [ %i.bb, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit ], [ undef, %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit ]
  %.sroa.2.0 = phi i8 [ 1, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit ], [ 0, %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.06.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer14SealAndDiscardEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1104) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.m, %i.o
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.l, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %i.p = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.m, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.r, ptr %i.s, align 8
  store ptr %i.p, ptr %i.n, align 8
  %i.t = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE4SealEv.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.012.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.m, %bb.a ] ; 2 uses
  %i.z = load ptr, ptr %.012.i, align 8           ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 -1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 -1, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %i.o
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.b:                                             ; preds = %._crit_edge.i
  %i.ad = load ptr, ptr %i.t, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  %.not.i.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -32
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE8pop_backEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.am, 16
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE15_M_pop_back_auxEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 16, ptr %i.an, align 8
  %i.ao = load ptr, ptr %i.aj, align 8
  store ptr %i.ao, ptr %i.ah, align 8
  store ptr %i.ah, ptr %i.aj, align 8
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE15_M_pop_back_auxEv.exit.i.i

_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE15_M_pop_back_auxEv.exit.i.i: ; preds = %bb.f, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 2 uses
  store ptr %i.ar, ptr %i.ap, align 8
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  store ptr %i.as, ptr %i.ag, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 480
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE8pop_backEv.exit.i

_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE8pop_backEv.exit.i: ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE15_M_pop_back_auxEv.exit.i.i, %bb.c
  %storemerge.i.i = phi ptr [ %i.ai, %bb.c ], [ %i.av, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE15_M_pop_back_auxEv.exit.i.i ]
  store ptr %storemerge.i.i, ptr %i.ae, align 8
  store ptr %i.ad, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE4SealEv.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE4SealEv.exit: ; preds = %._crit_edge.i, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE8pop_backEv.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable10InvalidateEiNS0_4wasm15ModuleTypeIndexE:bb.a
  br i1 %i.ah, label %_ZNSt13unordered_mapIiN2v84base18DoublyThreadedListINS0_8internal8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_3wle7KeyDataEEENS8_16OffsetListTraitsEEENS1_4hashIiEESt8equal_toIiENS3_13ZoneAllocatorISt4pairIKiSC_EEEE4findERSJ_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aj = icmp eq i64 %i.ap, %i.s
  %i.ak = load i32, ptr %i.ai, align 8
  %i.al = icmp eq i32 %1, %i.ak
  %i.am = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %i.am, label %_ZNSt13unordered_mapIiN2v84base18DoublyThreadedListINS0_8internal8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_3wle7KeyDataEEENS8_16OffsetListTraitsEEENS1_4hashIiEESt8equal_toIiENS3_13ZoneAllocatorISt4pairIKiSC_EEEE4findERSJ_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !26

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.an, %bb.g ], [ %i.aa, %bb.f ]
  %i.an = load ptr, ptr %.020.i.i.i.i, align 8    ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIiN2v84base18DoublyThreadedListINS0_8internal8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_3wle7KeyDataEEENS8_16OffsetListTraitsEEENS1_4hashIiEESt8equal_toIiENS3_13ZoneAllocatorISt4pairIKiSC_EEEE4findERSJ_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = urem i64 %i.ap, %i.u
  %.not19.i.i.i.i = icmp eq i64 %i.aq, %i.v
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !26

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %_ZNSt13unordered_mapIiN2v84base18DoublyThreadedListINS0_8internal8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_3wle7KeyDataEEENS8_16OffsetListTraitsEEENS1_4hashIiEESt8equal_toIiENS3_13ZoneAllocatorISt4pairIKiSC_EEEE4findERSJ_.exit.thread, !llvm.loop !26

_ZNSt13unordered_mapIiN2v84base18DoublyThreadedListINS0_8internal8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_3wle7KeyDataEEENS8_16OffsetListTraitsEEENS1_4hashIiEESt8equal_toIiENS3_13ZoneAllocatorISt4pairIKiSC_EEEE4findERSJ_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.aa, %bb.f ], [ %i.an, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ar, align 8 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i30, label %_ZNSt13unordered_mapIiN2v84base18DoublyThreadedListINS0_8internal8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_3wle7KeyDataEEENS8_16OffsetListTraitsEEENS1_4hashIiEESt8equal_toIiENS3_13ZoneAllocatorISt4pairIKiSC_EEEE4findERSJ_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt13unordered_mapIiN2v84base18DoublyThreadedListINS0_8internal8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_3wle7KeyDataEEENS8_16OffsetListTraitsEEENS1_4hashIiEESt8equal_toIiENS3_13ZoneAllocatorISt4pairIKiSC_EEEE4findERSJ_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit
  %.sroa.016.031 = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %.sroa.016.1, %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit ] ; 9 uses
  %.sroa.06.0.copyload = load i32, ptr %.sroa.016.031, align 8
  %i.ax = load ptr, ptr %i.as, align 8, !nonnull !6, !align !10
  %i.ay = tail call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.ax, i32 %.sroa.06.0.copyload)
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.016.031, i64 40
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit, !llvm.loop !33

bb.k:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.016.031, i64 8
  %.sroa.03.0.copyload = load i32, ptr %i.bc, align 8
  %i.bd = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable14TypesUnrelatedENS0_4wasm15ModuleTypeIndexES6_(ptr noundef nonnull align 8 dereferenceable(576) %0, i32 %2, i32 %.sroa.03.0.copyload)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.016.031, i64 40 ; 3 uses
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = inttoptr i64 %i.bf to ptr
  br label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit, !llvm.loop !33

bb.m:                                             ; preds = %bb.k
  %.sroa.03.0.copyload.i = load ptr, ptr %i.be, align 8 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.016.031, i64 32 ; 6 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_16OffsetListTraitsEE8RemoveAtERNSB_8iteratorE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = ptrtoint ptr %.sroa.03.0.copyload.i to i64
  store i64 %i.bk, ptr %i.bi, align 8
  %.not.i.i = icmp eq ptr %.sroa.03.0.copyload.i, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.bh, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 32
  store ptr %i.bl, ptr %i.bm, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_16OffsetListTraitsEE8RemoveAtERNSB_8iteratorE.exit

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_16OffsetListTraitsEE8RemoveAtERNSB_8iteratorE.exit: ; preds = %bb.m, %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.016.031, i64 48 ; 2 uses
  %.sroa.07.0.copyload.i = load i32, ptr %i.bn, align 8 ; 2 uses
  %.not.i12 = icmp eq i32 %.sroa.07.0.copyload.i, -1
  br i1 %.not.i12, label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_16OffsetListTraitsEE8RemoveAtERNSB_8iteratorE.exit
  %i.bo = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.bp = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.bq = icmp ult ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.s, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %i.aw, align 8
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 4
  %i.bw = add nsw i64 %i.bv, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_3wle7KeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.bw)
  %.pre.i.i.i.i = load ptr, ptr %i.at, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bx = phi ptr [ %i.bo, %bb.q ], [ %.pre.i.i.i.i, %bb.r ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.by, ptr %i.at, align 8
  store ptr %.sroa.016.031, ptr %i.bx, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 %.sroa.07.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  store i32 -1, ptr %i.bn, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.016.031, i64 16 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.016.031, i64 24
  %i.cd = load i64, ptr %i.cc, align 8            ; 3 uses
  store i64 %i.cd, ptr %i.ca, align 8
  %.not.i.i.i.i14 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i.i14, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load ptr, ptr %i.bz, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %i.cf, ptr %i.cg, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i: ; preds = %bb.v, %bb.s
  %i.ch = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit, label %bb.w

bb.w:                                             ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i
  %i.cj = load i64, ptr %i.be, align 8            ; 3 uses
  store i64 %i.cj, ptr %i.ch, align 8
  %.not.i3.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i3.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load ptr, ptr %i.bh, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store ptr %i.cl, ptr %i.cm, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit

_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit: ; preds = %bb.y, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_16OffsetListTraitsEE8RemoveAtERNSB_8iteratorE.exit, %bb.l, %bb.j
  %.sroa.016.1 = phi ptr [ %i.bb, %bb.j ], [ %i.bg, %bb.l ], [ %.sroa.03.0.copyload.i, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_16OffsetListTraitsEE8RemoveAtERNSB_8iteratorE.exit ], [ %.sroa.03.0.copyload.i, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i ], [ %.sroa.03.0.copyload.i, %bb.y ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.016.1, null
  br i1 %.not.i, label %_ZNSt13unordered_mapIiN2v84base18DoublyThreadedListINS0_8internal8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_3wle7KeyDataEEENS8_16OffsetListTraitsEEENS1_4hashIiEESt8equal_toIiENS3_13ZoneAllocatorISt4pairIKiSC_EEEE4findERSJ_.exit.thread, label %bb.i

_ZNSt13unordered_mapIiN2v84base18DoublyThreadedListINS0_8internal8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_3wle7KeyDataEEENS8_16OffsetListTraitsEEENS1_4hashIiEESt8equal_toIiENS3_13ZoneAllocatorISt4pairIKiSC_EEEE4findERSJ_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.c, %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit, %_ZNSt13unordered_mapIiN2v84base18DoublyThreadedListINS0_8internal8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_3wle7KeyDataEEENS8_16OffsetListTraitsEEENS1_4hashIiEESt8equal_toIiENS3_13ZoneAllocatorISt4pairIKiSC_EEEE4findERSJ_.exit, %bb.e, %..loopexit_crit_edge21.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
  %sext.i.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i.i, 48
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i = phi i64 [ %i.s, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i8.i.i, %i.b    ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.b                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %.thread33.i.i.i, label %bb.f, !prof !11

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.al = add i16 %.sroa.017.047.i.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i, !prof !14

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !15

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread33.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.ak, %.thread33.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.ah, %.thread33.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit, !prof !14

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.9, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #23
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.9, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11) #23
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.az, align 8
  %i.ba = load i8, ptr %.sroa.0.0.copyload, align 1, !range !5, !noundef !6
  %i.bb = trunc nuw i8 %i.ba to i1
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit
  %.0 = phi i1 [ %i.bb, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit ], [ false, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable14TypesUnrelatedENS0_4wasm15ModuleTypeIndexES6_(ptr noundef nonnull align 8 dereferenceable(576) %0, i32 %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24                  ; 2 uses
  %i.k = zext i32 %1 to i64                       ; 2 uses
  %i.l = icmp ugt i64 %i.j, %i.k
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp ult i32 %1, 1048576
  br i1 %i.m, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #22
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.k ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.p = load i8, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 22
  %i.r = load i8, ptr %i.q, align 2, !range !5, !noundef !6
  %i.s = shl nuw nsw i8 %i.r, 4
  %i.t = or disjoint i8 %i.s, 7
  %i.u = zext nneg i8 %i.t to i32
  %i.v = zext i8 %i.p to i32
  %i.w = shl nuw nsw i32 %i.v, 5
  %i.x = or disjoint i32 %i.w, %i.u
  %i.y = shl nuw nsw i32 %1, 8
  %i.z = or i32 %i.x, %i.y                        ; 3 uses
  %i.aa = zext i32 %2 to i64                      ; 2 uses
  %i.ab = icmp ugt i64 %i.j, %i.aa
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp ult i32 %2, 1048576
  br i1 %i.ac, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit9, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #22
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit9: ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.aa ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.af = load i8, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 22
  %i.ah = load i8, ptr %i.ag, align 2, !range !5, !noundef !6
  %i.ai = shl nuw nsw i8 %i.ah, 4
  %i.aj = or disjoint i8 %i.ai, 7
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = zext i8 %i.af to i32
  %i.am = shl nuw nsw i32 %i.al, 5
  %i.an = or disjoint i32 %i.am, %i.ak
  %i.ao = shl nuw nsw i32 %2, 8
  %i.ap = or i32 %i.an, %i.ao                     ; 3 uses
  %i.aq = icmp eq i32 %i.z, %i.ap
  br i1 %i.aq, label %_ZN2v88internal4wasm18HeapTypesUnrelatedENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit, label %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit8, !prof !11

_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit8: ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit9
  %i.ar = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_8HeapTypeES2_PKNS1_10WasmModuleES5_(i32 %i.z, i32 %i.ap, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #23
  br i1 %i.ar, label %_ZN2v88internal4wasm18HeapTypesUnrelatedENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit, label %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit

_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit: ; preds = %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit8
  %i.as = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_8HeapTypeES2_PKNS1_10WasmModuleES5_(i32 %i.ap, i32 %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #23
  %i.at = xor i1 %i.as, true
  br label %_ZN2v88internal4wasm18HeapTypesUnrelatedENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit

_ZN2v88internal4wasm18HeapTypesUnrelatedENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit: ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit9, %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit8, %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit
  %i.au = phi i1 [ false, %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit8 ], [ %i.at, %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit ], [ false, %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit9 ]
  ret i1 %i.au
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #12

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

declare noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_8HeapTypeES2_PKNS1_10WasmModuleES5_(i32, i32, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE17MoveToNewSnapshotINS2_16NoChangeCallbackEEERNS5_12SnapshotDataENS_4base6VectorIKNS5_8SnapshotEEERKT_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
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

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS6_.exit
  %.02065 = phi ptr [ %.020, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS6_.exit ], [ %.02062, %.lr.ph.preheader ] ; 2 uses
  %.064 = phi ptr [ %.1.lcssa.i, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE12SnapshotData14CommonAncestorEPS6_.exit ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %.02065, align 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.064, i64 8
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp ugt i32 %i.k, %i.i
  br i1 %i.l, label %.lr.ph.i, label %.preheader14.i

end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE17MergePredecessorsIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIbS4_EENS_4base6VectorIKbEEE_NS2_16NoChangeCallbackEEEvNSF_IKNS5_8SnapshotEEERKT_RKT0_:bb.a

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.us
  br label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.us

_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.us: ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.028.i.i.i.i.i.i.us = phi ptr [ %.1.i.i.i.i.i.i.us, %bb.h ], [ %i.ab, %bb.k ], [ %.2.i.i.i.i.i.i.us, %bb.j ], [ %i.aa, %bb.f ]
  %i.ak = icmp eq ptr %i.ab, %.028.i.i.i.i.i.i.us
  %i.al = load i8, ptr %i.v, align 4, !range !5, !noundef !6 ; 2 uses
  %i.am = zext i1 %i.ak to i8                     ; 3 uses
  %.not57.us = icmp eq i8 %i.al, %i.am
  br i1 %.not57.us, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit.us, label %bb.l

bb.l:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.us
  %i.an = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ao = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ap = icmp ult ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.n, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %i.f, align 8
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 4
  %i.av = add nsw i64 %i.au, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.av)
  %.pre.i.i.i37.us = load ptr, ptr %i.s, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aw = phi ptr [ %i.an, %bb.l ], [ %.pre.i.i.i37.us, %bb.m ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.ax, ptr %i.s, align 8
  store ptr %i.v, ptr %i.aw, align 8
  %.sroa.4.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 %i.al, ptr %.sroa.4.0..sroa_idx.i.us, align 8
  %.sroa.5.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.aw, i64 9
  store i8 %i.am, ptr %.sroa.5.0..sroa_idx.i.us, align 1
  store i8 %i.am, ptr %i.v, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit.us

_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit.us: ; preds = %bb.n, %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.us
  %i.ay = getelementptr inbounds nuw i8, ptr %.03474.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.ay, %i.p
  br i1 %.not.us, label %.loopexit, label %._crit_edge.i.i.i.i.i.i.us

bb.o:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03360 = load ptr, ptr %i.az, align 8          ; 2 uses
  %.not3661 = icmp eq ptr %.03360, %i.e
  br i1 %.not3661, label %._crit_edge, label %.lr.ph63.preheader

.lr.ph63.preheader:                               ; preds = %bb.o
  %i.ba = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  br label %.lr.ph63

.loopexit58:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIbS4_EERKbjj.exit, %.lr.ph63
  %.033 = load ptr, ptr %.03362, align 8          ; 2 uses
  %.not36 = icmp eq ptr %.033, %i.e
  br i1 %.not36, label %._crit_edge, label %.lr.ph63, !llvm.loop !67

._crit_edge:                                      ; preds = %.loopexit58, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.o, !llvm.loop !68

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %.loopexit58
  %.03362 = phi ptr [ %.033, %.loopexit58 ], [ %.03360, %.lr.ph63.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03362, i64 16
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %.03362, i64 24
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = icmp samesign eq i64 %i.bg, %i.bc
  br i1 %i.bh, label %.loopexit58, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph63
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bg
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIbS4_EERKbjj.exit
  %.sroa.042.059 = phi ptr [ %i.bj, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIbS4_EERKbjj.exit ], [ %i.bi, %.lr.ph.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.042.059, i64 -16 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !6, !align !37 ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %.sroa.042.059, i64 -7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = zext i32 %i.bn to i64
  %i.bp = icmp eq i64 %indvars.iv, %i.bo
  br i1 %i.bp, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIbS4_EERKbjj.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %bb.q, label %bb.ab

bb.q:                                             ; preds = %bb.p
  %i.bt = load ptr, ptr %i.h, align 8
  %i.bu = load ptr, ptr %i.i, align 8
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = add i64 %i.bx, %2
  %i.bz = icmp ult i64 %i.by, 4294967296
  br i1 %i.bz, label %bb.s, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #22
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ca = trunc i64 %i.bx to i32
  store i32 %i.ca, ptr %i.bq, align 4
  %i.cb = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.cc = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.cd = icmp ult ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE9push_backEOS7_.exit.i, label %bb.t, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.ce = load ptr, ptr %i.m, align 8
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 3
  %i.cj = add nsw i64 %i.ci, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.cj)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE9push_backEOS7_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE9push_backEOS7_.exit.i: ; preds = %bb.t, %bb.s
  %i.ck = phi ptr [ %i.cb, %bb.s ], [ %.pre.i.i.i, %bb.t ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cl, ptr %i.j, align 8
  store ptr %i.bk, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.cn = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 5 uses
  %i.cr = xor i64 %i.cq, -1
  %.not.i = icmp ugt i64 %2, %i.cr
  br i1 %.not.i, label %bb.u, label %bb.v, !prof !14

bb.u:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE9push_backEOS7_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #22
  unreachable

bb.v:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE9push_backEOS7_.exit.i
  %i.cs = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.cp                    ; 2 uses
  %i.cv = add i64 %i.cq, %2                       ; 3 uses
  %i.cw = icmp ult i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.w, label %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit

bb.w:                                             ; preds = %bb.v
  %i.cx = icmp eq ptr %i.cn, %i.cs
  %i.cy = shl i64 %i.cu, 1
  %i.cz = select i1 %i.cx, i64 2, i64 %i.cy
  %i.da = tail call noundef i64 @llvm.umax.i64(i64 %i.cz, i64 %i.cv) ; 2 uses
  %i.db = load ptr, ptr %i.g, align 8             ; 3 uses
  %.not.i.i38 = icmp eq i64 %i.cv, -1
  br i1 %.not.i.i38, label %bb.x, label %bb.y, !prof !14

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #22
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.dc = add i64 %i.da, 7
  %i.dd = and i64 %i.dc, -8                       ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8            ; 2 uses
  %i.di = sub i64 %i.df, %i.dh
  %i.dj = icmp ugt i64 %i.dd, %i.di
  br i1 %i.dj, label %bb.z, label %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i, !prof !14

bb.z:                                             ; preds = %bb.y
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.db, i64 noundef %i.dd) #23
  %.pre.i.i.i40 = load i64, ptr %i.dg, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i: ; preds = %bb.z, %bb.y
  %i.dk = phi i64 [ %.pre.i.i.i40, %bb.z ], [ %i.dh, %bb.y ] ; 2 uses
  %i.dl = inttoptr i64 %i.dk to ptr               ; 4 uses
  %i.dm = add i64 %i.dk, %i.dd
  store i64 %i.dm, ptr %i.dg, align 8
  store ptr %i.dl, ptr %i.i, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.cq
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %2
  store ptr %i.do, ptr %i.h, align 8
  %.not26.i = icmp eq ptr %i.cn, null
  br i1 %.not26.i, label %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr nonnull align 1 %i.cn, i64 %i.cq, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  %.pre.i39 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit.thread

_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i, %bb.aa
  %i.dp = phi ptr [ %.pre.i39, %bb.aa ], [ %i.dl, %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.da
  store ptr %i.dq, ptr %i.n, align 8
  br label %.lr.ph18.preheader.i.i

_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit: ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %2
  store ptr %i.dr, ptr %i.h, align 8
  br label %.lr.ph18.preheader.i.i

.lr.ph18.preheader.i.i:                           ; preds = %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit.thread, %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit
  %.pn = phi ptr [ %i.dp, %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit.thread ], [ %i.cn, %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit ]
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.cq
  %.pre21.i.i = load i8, ptr %i.bk, align 4, !range !5
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i.i, i8 %.pre21.i.i, i64 %2, i1 false)
  %.pre.i = load i32, ptr %i.bq, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph18.preheader.i.i, %bb.p
  %i.ds = phi i32 [ %.pre.i, %.lr.ph18.preheader.i.i ], [ %i.br, %bb.p ]
  %i.dt = load i8, ptr %i.bl, align 1, !range !5, !noundef !6
  %i.du = add i32 %i.ds, %i.ba
  %i.dv = zext i32 %i.du to i64
  %i.dw = load ptr, ptr %i.i, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dv
  store i8 %i.dt, ptr %i.dx, align 1
  store i32 %i.ba, ptr %i.bm, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIbS4_EERKbjj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIbS4_EERKbjj.exit: ; preds = %.lr.ph, %bb.ab
  %i.dy = icmp eq ptr %i.bj, %i.be
  br i1 %i.dy, label %.loopexit58, label %.lr.ph

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.lr.ph.preheader.i.i.i.i.i.i.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit
  %.03474 = phi ptr [ %i.ft, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.dz = load ptr, ptr %.03474, align 8          ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = zext i32 %i.eb to i64
  %i.ed = load ptr, ptr %i.i, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ec ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %2 ; 2 uses
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ee, i64 %i.r ; 5 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.af, %.lr.ph.preheader.i.i.i.i.i.i
  %.041.i.i.i.i.i.i = phi i64 [ %i.es, %bb.af ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02940.i.i.i.i.i.i = phi ptr [ %i.er, %bb.af ], [ %i.ee, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %i.eg = load i8, ptr %.02940.i.i.i.i.i.i, align 1, !range !5, !noundef !6
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ac, label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 1
  %i.ej = load i8, ptr %i.ei, align 1, !range !5, !noundef !6
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ad, label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit

bb.ad:                                            ; preds = %bb.ac
  %i.el = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 2
  %i.em = load i8, ptr %i.el, align 1, !range !5, !noundef !6
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ae, label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106

bb.ae:                                            ; preds = %bb.ad
  %i.eo = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 3
  %i.ep = load i8, ptr %i.eo, align 1, !range !5, !noundef !6
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.af, label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108

bb.af:                                            ; preds = %bb.ae
  %i.er = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 4
  %i.es = add nsw i64 %.041.i.i.i.i.i.i, -1
  %i.et = icmp sgt i64 %.041.i.i.i.i.i.i, 1
  br i1 %i.et, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.loopexit, !llvm.loop !69

._crit_edge.i.i.i.i.i.i.loopexit:                 ; preds = %bb.af
  switch i64 %gepdiff, label %._crit_edge.i.i.i.i.i.i.loopexit.unreachabledefault [
    i64 3, label %bb.ag
    i64 2, label %bb.ai
    i64 1, label %bb.ak
    i64 0, label %bb.al
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit
  %i.eu = load i8, ptr %scevgep.i.i.i.i.i.i, align 1, !range !5, !noundef !6
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.ah, label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ew = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i.i.i, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit, %bb.ah
  %.1.i.i.i.i.i.i = phi ptr [ %i.ew, %bb.ah ], [ %scevgep.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.loopexit ] ; 3 uses
  %i.ex = load i8, ptr %.1.i.i.i.i.i.i, align 1, !range !5, !noundef !6
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.aj, label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ez = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 1
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit, %bb.aj
  %.2.i.i.i.i.i.i = phi ptr [ %i.ez, %bb.aj ], [ %scevgep.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.loopexit ] ; 2 uses
  %i.fa = load i8, ptr %.2.i.i.i.i.i.i, align 1, !range !5, !noundef !6
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.al, label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

._crit_edge.i.i.i.i.i.i.loopexit.unreachabledefault: ; preds = %._crit_edge.i.i.i.i.i.i.loopexit
  unreachable

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit, %bb.ak
  br label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit: ; preds = %bb.ac
  %i.fc = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 1
  br label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106: ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 2
  br label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108: ; preds = %bb.ae
  %i.fe = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 3
  br label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit, %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106, %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108, %bb.ag, %bb.ai, %bb.ak, %bb.al
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.ai ], [ %i.ef, %bb.al ], [ %.2.i.i.i.i.i.i, %bb.ak ], [ %scevgep.i.i.i.i.i.i, %bb.ag ], [ %i.fe, %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108 ], [ %i.fc, %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit ], [ %i.fd, %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106 ], [ %.02940.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.ff = icmp eq ptr %i.ef, %.028.i.i.i.i.i.i
  %i.fg = load i8, ptr %i.dz, align 4, !range !5, !noundef !6 ; 2 uses
  %i.fh = zext i1 %i.ff to i8                     ; 3 uses
  %.not57 = icmp eq i8 %i.fg, %i.fh
  br i1 %.not57, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit, label %bb.am

bb.am:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit
  %i.fi = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.fj = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.fk = icmp ult ptr %i.fi, %i.fj
  br i1 %i.fk, label %bb.ao, label %bb.an, !prof !11

bb.an:                                            ; preds = %bb.am
  %i.fl = load ptr, ptr %i.f, align 8
  %i.fm = ptrtoint ptr %i.fj to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 4
  %i.fq = add nsw i64 %i.fp, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.fq)
  %.pre.i.i.i37 = load ptr, ptr %i.s, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.fr = phi ptr [ %i.fi, %bb.am ], [ %.pre.i.i.i37, %bb.an ] ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store ptr %i.fs, ptr %i.s, align 8
  store ptr %i.dz, ptr %i.fr, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i8 %i.fg, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 9
  store i8 %i.fh, ptr %.sroa.5.0..sroa_idx.i, align 1
  store i8 %i.fh, ptr %i.dz, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit, %bb.ao
  %i.ft = getelementptr inbounds nuw i8, ptr %.03474, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ft, %i.p
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader.i.i.i.i.i.i

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit.us, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE17MergePredecessorsIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S6_EENS_4base6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINS5_22WasmMemoryContentTableES4_S6_E16StartNewSnapshotISK_EEvNSH_IKNS7_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSH_IKT0_EEEEUlSF_RSI_S11_E_EEvSR_SU_RSZ_:bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.18) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.idx = shl nuw nsw i64 %2, 2                   ; 4 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not78 = icmp eq ptr %i.o, %i.p
  br i1 %.not78, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.e
  %i.q = icmp eq i64 %2, 1
  %gepdiff.i.i = add nsw i64 %.idx, -4            ; 4 uses
  %i.r = lshr i64 %gepdiff.i.i, 4                 ; 2 uses
  %.not61 = icmp eq i64 %i.r, 0
  %i.s = and i64 %gepdiff.i.i, -16
  %gepdiff7.i.i = and i64 %gepdiff.i.i, 12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.t

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03465 = load ptr, ptr %i.w, align 8           ; 2 uses
  %.not3766 = icmp eq ptr %.03465, %i.e
  br i1 %.not3766, label %._crit_edge, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %bb.f
  %i.x = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br label %.lr.ph68

.loopexit63:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S6_EERKS4_jj.exit, %.lr.ph68
  %.034 = load ptr, ptr %.03467, align 8          ; 2 uses
  %.not37 = icmp eq ptr %.034, %i.e
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !70

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !71

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.loopexit63
  %.03467 = phi ptr [ %.034, %.loopexit63 ], [ %.03465, %.lr.ph68.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03467, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.03467, i64 24
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp samesign eq i64 %i.ad, %i.z
  br i1 %i.ae, label %.loopexit63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ad
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S6_EERKS4_jj.exit
  %.sroa.046.064 = phi ptr [ %i.ag, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S6_EERKS4_jj.exit ], [ %i.af, %.lr.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.046.064, i64 -16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !6, !align !10 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.046.064, i64 -4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp eq i64 %indvars.iv, %i.al
  br i1 %i.am, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S6_EERKS4_jj.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 52 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.h, align 8
  %i.ar = load ptr, ptr %i.i, align 8
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %i.aw = add nsw i64 %i.av, %2
  %i.ax = icmp ult i64 %i.aw, 4294967296
  br i1 %i.ax, label %bb.j, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #22
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = trunc i64 %i.av to i32
  store i32 %i.ay, ptr %i.an, align 4
  %i.az = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ba = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.bb = icmp ult ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEEE9push_backEOS9_.exit.i, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.m, align 8
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = add nsw i64 %i.bg, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.bh)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEEE9push_backEOS9_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEEE9push_backEOS9_.exit.i: ; preds = %bb.k, %bb.j
  %i.bi = phi ptr [ %i.az, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bj, ptr %i.j, align 8
  store ptr %i.ah, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.bm = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.bn = ptrtoint ptr %i.bk to i64               ; 4 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 5 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = ashr exact i64 %i.bp, 2                 ; 2 uses
  %i.br = xor i64 %i.bq, -1
  %.not.i = icmp ugt i64 %2, %i.br
  br i1 %.not.i, label %bb.l, label %bb.m, !prof !14

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEEE9push_backEOS9_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #22
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEEE9push_backEOS9_.exit.i
  %i.bs = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bo                    ; 2 uses
  %i.bv = ashr exact i64 %i.bu, 2
  %i.bw = add nsw i64 %i.bq, %2                   ; 2 uses
  %i.bx = icmp ult i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit

bb.n:                                             ; preds = %bb.m
  %i.by = icmp eq ptr %i.bm, %i.bs
  %i.bz = ashr exact i64 %i.bu, 1
  %i.ca = select i1 %i.by, i64 2, i64 %i.bz
  %i.cb = tail call noundef i64 @llvm.umax.i64(i64 %i.ca, i64 %i.bw) ; 3 uses
  %i.cc = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.cd = icmp ult i64 %i.cb, 4611686018427387903
  br i1 %i.cd, label %bb.p, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #22
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ce = shl nuw i64 %i.cb, 2
  %i.cf = add nuw i64 %i.ce, 4
  %i.cg = and i64 %i.cf, -8                       ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = sub i64 %i.ci, %i.ck
  %i.cm = icmp ugt i64 %i.cg, %i.cl
  br i1 %i.cm, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, !prof !14

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cc, i64 noundef %i.cg) #23
  %.pre.i.i.i43 = load i64, ptr %i.cj, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i: ; preds = %bb.q, %bb.p
  %i.cn = phi i64 [ %.pre.i.i.i43, %bb.q ], [ %i.ck, %bb.p ] ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr               ; 4 uses
  %i.cp = add i64 %i.cn, %i.cg
  store i64 %i.cp, ptr %i.cj, align 8
  store ptr %i.co, ptr %i.i, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.bp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %2
  store ptr %i.cr, ptr %i.h, align 8
  %.not26.i = icmp eq ptr %i.bm, null
  br i1 %.not26.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.co, ptr nonnull align 4 %i.bm, i64 %i.bp, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  %.pre.i42 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, %bb.r
  %i.cs = phi ptr [ %.pre.i42, %bb.r ], [ %i.co, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cb
  store ptr %i.ct, ptr %i.n, align 8
  br label %._crit_edge.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit: ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %2
  store ptr %i.cu, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread
  %.pn = phi ptr [ %i.bm, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit ], [ %i.cs, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread ] ; 2 uses
  %.pn119 = ptrtoint ptr %.pn to i64              ; 3 uses
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.bp ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 %.idx
  %.pre20.i.i = load i32, ptr %i.bl, align 8      ; 2 uses
  %i.cw = add i64 %i.bo, -1
  %i.cx = add i64 %.idx, %.pn119
  %i.cy = add i64 %i.cx, %i.bn
  %i.cz = sub i64 %i.cy, %i.bo
  %i.da = add i64 %.pn119, 4
  %i.db = add i64 %i.da, %i.bn
  %i.dc = sub i64 %i.db, %i.bo
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 %i.dc)
  %i.dd = add i64 %i.cw, %umax
  %i.de = add i64 %.pn119, %i.bn
  %i.df = sub i64 %i.dd, %i.de                    ; 2 uses
  %i.dg = lshr i64 %i.df, 2
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.df, 28
  br i1 %min.iters.check, label %.lr.ph18.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.i.i
  %n.vec = and i64 %i.dh, 9223372036854775800     ; 3 uses
  %i.di = shl i64 %n.vec, 2
  %i.dj = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.di
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre20.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dl, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %._crit_edge.i.i, %middle.block
  %.116.i.i.ph = phi ptr [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.dj, %middle.block ]
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i
  %.116.i.i = phi ptr [ %i.dn, %.lr.ph18.i.i ], [ %.116.i.i.ph, %.lr.ph18.i.i.preheader ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.116.i.i, i64 4 ; 2 uses
  store i32 %.pre20.i.i, ptr %.116.i.i, align 4
  %i.do = icmp ult ptr %i.dn, %i.cv
  br i1 %i.do, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !75

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i: ; preds = %.lr.ph18.i.i, %middle.block
  %.pre.i = load i32, ptr %i.an, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, %bb.g
  %i.dp = phi i32 [ %.pre.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i ], [ %i.ao, %bb.g ]
  %i.dq = add i32 %i.dp, %i.x
  %i.dr = zext i32 %i.dq to i64
  %i.ds = load ptr, ptr %i.i, align 8
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load i32, ptr %i.ai, align 4
  store i32 %i.du, ptr %i.dt, align 4
  store i32 %i.x, ptr %i.aj, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S6_EERKS4_jj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S6_EERKS4_jj.exit: ; preds = %.lr.ph, %bb.s
  %i.dv = icmp eq ptr %i.ag, %i.ab
  br i1 %i.dv, label %.loopexit63, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph81, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE3SetENS2_16SnapshotTableKeyIS4_S6_EES4_.exit
  %.03579 = phi ptr [ %i.o, %.lr.ph81 ], [ %i.gc, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE3SetENS2_16SnapshotTableKeyIS4_S6_EES4_.exit ] ; 2 uses
  %i.dw = load ptr, ptr %.03579, align 8          ; 8 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 52
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = zext i32 %i.dy to i64
  %i.ea = load ptr, ptr %i.i, align 8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dz ; 7 uses
  br i1 %i.q, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx
  br i1 %.not61, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.u
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.eb, align 4 ; 4 uses
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ec, i64 %i.s
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i
  %.059.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.em, %bb.z ] ; 2 uses
  %.02958.i.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i ], [ %i.el, %bb.z ] ; 9 uses
  %i.ee = load i32, ptr %.02958.i.i.i.i.i.i, align 4
  %.not44.i.i.i.i.i.i = icmp eq i32 %i.ee, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not44.i.i.i.i.i.i, label %bb.w, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

bb.w:                                             ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 4
  %i.eg = load i32, ptr %i.ef, align 4
  %.not45.i.i.i.i.i.i = icmp eq i32 %i.eg, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not45.i.i.i.i.i.i, label %bb.x, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit109

bb.x:                                             ; preds = %bb.w
  %i.eh = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 8
  %i.ei = load i32, ptr %i.eh, align 4
  %.not46.i.i.i.i.i.i = icmp eq i32 %i.ei, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not46.i.i.i.i.i.i, label %bb.y, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit107

bb.y:                                             ; preds = %bb.x
  %i.ej = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 12
  %i.ek = load i32, ptr %i.ej, align 4
  %.not47.i.i.i.i.i.i = icmp eq i32 %i.ek, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not47.i.i.i.i.i.i, label %bb.z, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit

bb.z:                                             ; preds = %bb.y
  %i.el = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 16
  %i.em = add nsw i64 %.059.i.i.i.i.i.i, -1
  %i.en = icmp sgt i64 %.059.i.i.i.i.i.i, 1
  br i1 %i.en, label %bb.v, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !76

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.z, %bb.u
  %.pre-phi68.i.i.i.i.i.i = phi i64 [ %gepdiff.i.i, %bb.u ], [ %gepdiff7.i.i, %bb.z ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.ec, %bb.u ], [ %scevgep.i.i.i.i.i.i, %bb.z ] ; 5 uses
  %i.eo = lshr exact i64 %.pre-phi68.i.i.i.i.i.i, 2
  switch i64 %i.eo, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i [
    i64 3, label %bb.aa
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i
  ]

._crit_edge._crit_edge65.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i35.pre.i.i.i.i.i.i = load i32, ptr %i.eb, align 4
  br label %bb.ae

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i34.pre.i.i.i.i.i.i = load i32, ptr %i.eb, align 4
  br label %bb.ac

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i33.i.i.i.i.i.i = load i32, ptr %i.eb, align 4 ; 2 uses
  %i.ep = load i32, ptr %.029.lcssa.i.i.i.i.i.i, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ep, %.sroa.0.0.copyload.i.i33.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.eq = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i34.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i33.i.i.i.i.i.i, %bb.ab ], [ %.sroa.0.0.copyload.i.i34.pre.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i.i.i = phi ptr [ %i.eq, %bb.ab ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.er = load i32, ptr %.1.i.i.i.i.i.i, align 4
  %.not42.i.i.i.i.i.i = icmp eq i32 %i.er, %.sroa.0.0.copyload.i.i34.i.i.i.i.i.i
  br i1 %.not42.i.i.i.i.i.i, label %bb.ad, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.es = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge._crit_edge65.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i35.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i34.i.i.i.i.i.i, %bb.ad ], [ %.sroa.0.0.copyload.i.i35.pre.i.i.i.i.i.i, %._crit_edge._crit_edge65.i.i.i.i.i.i ]
  %.2.i.i.i.i.i.i = phi ptr [ %i.es, %bb.ad ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge._crit_edge65.i.i.i.i.i.i ] ; 2 uses
  %i.et = load i32, ptr %.2.i.i.i.i.i.i, align 4
  %.not43.i.i.i.i.i.i = icmp eq i32 %i.et, %.sroa.0.0.copyload.i.i35.i.i.i.i.i.i
  br i1 %.not43.i.i.i.i.i.i, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit: ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 12
  br label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit107: ; preds = %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 8
  br label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit109: ; preds = %bb.w
  %i.ew = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 4
  br label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i: ; preds = %bb.v, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit107, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit109, %bb.ae, %bb.ac, %bb.aa
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.ac ], [ %.029.lcssa.i.i.i.i.i.i, %bb.aa ], [ %.2.i.i.i.i.i.i, %bb.ae ], [ %i.ew, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit109 ], [ %i.eu, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit ], [ %i.ev, %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit107 ], [ %.02958.i.i.i.i.i.i, %bb.v ]
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS5_22WasmMemoryContentTableES4_S6_E16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S6_EENS_4base6VectorIKS4_EEE_EEvNSL_IKNS7_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSL_IKT0_EEEEUlSJ_RSM_S11_E_EERNS7_12SnapshotDataESR_SU_:bb.a
  %i.dy = phi ptr [ %i.dx, %bb.u ], [ %i.dp, %bb.t ]
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.dz, ptr %i.x, align 8
  ret ptr %i.dz

bb.v:                                             ; preds = %.lr.ph83, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE14ReplaySnapshotIKZNS2_27ChangeTrackingSnapshotTableINS5_22WasmMemoryContentTableES4_S6_E16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S6_EENS_4base6VectorIKS4_EEE_EEvNSL_IKNS7_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSL_IKT0_EEEEUlSJ_RSM_S11_E_EEvPNS7_12SnapshotDataERSS_.exit
  %.sroa.053.081 = phi ptr [ %.pre, %.lr.ph83 ], [ %i.ea, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE14ReplaySnapshotIKZNS2_27ChangeTrackingSnapshotTableINS5_22WasmMemoryContentTableES4_S6_E16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S6_EENS_4base6VectorIKS4_EEE_EEvNSL_IKNS7_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSL_IKT0_EEEEUlSJ_RSM_S11_E_EEvPNS7_12SnapshotDataERSS_.exit ]
  %i.ea = getelementptr inbounds i8, ptr %.sroa.053.081, i64 -8 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8            ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i64, ptr %i.ec, align 8            ; 2 uses
  %i.ee = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.eg = load i64, ptr %i.ef, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.eg
  %.not17.i = icmp samesign eq i64 %i.ed, %i.eg
  br i1 %.not17.i, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE14ReplaySnapshotIKZNS2_27ChangeTrackingSnapshotTableINS5_22WasmMemoryContentTableES4_S6_E16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S6_EENS_4base6VectorIKS4_EEE_EEvNSL_IKNS7_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSL_IKT0_EEEEUlSJ_RSM_S11_E_EEvPNS7_12SnapshotDataERSS_.exit, label %.lr.ph.preheader.i42

.lr.ph.preheader.i42:                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ed
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %_ZZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS6_S7_EENS_4base6VectorIKS6_EEE_EEvNSI_IKNS2_13SnapshotTableIS6_S7_E8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSI_IKT0_EEEENKUlSG_RSJ_S10_E_clESG_S10_S10_.exit.i48, %.lr.ph.preheader.i42
  %.018.i = phi ptr [ %i.fg, %_ZZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS6_S7_EENS_4base6VectorIKS6_EEE_EEvNSI_IKNS2_13SnapshotTableIS6_S7_E8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSI_IKT0_EEEENKUlSG_RSJ_S10_E_clESG_S10_S10_.exit.i48 ], [ %i.ei, %.lr.ph.preheader.i42 ] ; 5 uses
  %i.ej = load ptr, ptr %.018.i, align 8, !nonnull !6, !align !10 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.018.i, i64 12 ; 2 uses
  %i.em = load ptr, ptr %3, align 8
  %.sroa.01.0.copyload.i.i44 = load i32, ptr %i.ek, align 8
  %.sroa.0.0.copyload.i.i45 = load i32, ptr %i.el, align 4
  %.not.i.i.i46 = icmp eq i32 %.sroa.01.0.copyload.i.i44, -1
  %.not7.i.i.i47 = icmp eq i32 %.sroa.0.0.copyload.i.i45, -1 ; 2 uses
  br i1 %.not.i.i.i46, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i43
  br i1 %.not7.i.i.i47, label %bb.x, label %_ZZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS6_S7_EENS_4base6VectorIKS6_EEE_EEvNSI_IKNS2_13SnapshotTableIS6_S7_E8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSI_IKT0_EEEENKUlSG_RSJ_S10_E_clESG_S10_S10_.exit.i48

bb.x:                                             ; preds = %bb.w
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i.i51, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.er = load i64, ptr %i.eq, align 8            ; 3 uses
  store i64 %i.er, ptr %i.eo, align 8
  %.not.i.i.i.i.i50 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i.i.i.i50, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.es = inttoptr i64 %i.er to ptr
  %i.et = load ptr, ptr %i.en, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store ptr %i.et, ptr %i.eu, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, i8 0, i64 16, i1 false)
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i.i51

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i.i51: ; preds = %bb.aa, %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 32 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS6_S7_EENS_4base6VectorIKS6_EEE_EEvNSI_IKNS2_13SnapshotTableIS6_S7_E8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSI_IKT0_EEEENKUlSG_RSJ_S10_E_clESG_S10_S10_.exit.i48, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i.i51
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.ez = load i64, ptr %i.ey, align 8            ; 3 uses
  store i64 %i.ez, ptr %i.ew, align 8
  %.not.i3.i.i.i.i52 = icmp eq i64 %i.ez, 0
  br i1 %.not.i3.i.i.i.i52, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = load ptr, ptr %i.ev, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store ptr %i.fb, ptr %i.fc, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false)
  br label %_ZZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS6_S7_EENS_4base6VectorIKS6_EEE_EEvNSI_IKNS2_13SnapshotTableIS6_S7_E8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSI_IKT0_EEEENKUlSG_RSJ_S10_E_clESG_S10_S10_.exit.i48

bb.ae:                                            ; preds = %.lr.ph.i43
  br i1 %.not7.i.i.i47, label %_ZZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS6_S7_EENS_4base6VectorIKS6_EEE_EEvNSI_IKNS2_13SnapshotTableIS6_S7_E8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSI_IKT0_EEEENKUlSG_RSJ_S10_E_clESG_S10_S10_.exit.i48, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable22AddKeyInBaseOffsetMapsENS2_16SnapshotTableKeyINS2_7OpIndexENS3_7KeyDataEEE(ptr noundef nonnull align 8 dereferenceable(576) %i.em, ptr nonnull %i.ej)
  br label %_ZZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS6_S7_EENS_4base6VectorIKS6_EEE_EEvNSI_IKNS2_13SnapshotTableIS6_S7_E8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSI_IKT0_EEEENKUlSG_RSJ_S10_E_clESG_S10_S10_.exit.i48

_ZZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS6_S7_EENS_4base6VectorIKS6_EEE_EEvNSI_IKNS2_13SnapshotTableIS6_S7_E8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSI_IKT0_EEEENKUlSG_RSJ_S10_E_clESG_S10_S10_.exit.i48: ; preds = %bb.af, %bb.ae, %bb.ad, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_3wle7KeyDataEEENS7_14BaseListTraitsEE6RemoveES9_.exit.i.i.i.i51, %bb.w
  %i.fd = load ptr, ptr %.018.i, align 8, !nonnull !6, !align !10
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.ff = load i32, ptr %i.el, align 4
  store i32 %i.ff, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.018.i, i64 16 ; 2 uses
  %.not.i49 = icmp eq ptr %i.fg, %i.eh
  br i1 %.not.i49, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE14ReplaySnapshotIKZNS2_27ChangeTrackingSnapshotTableINS5_22WasmMemoryContentTableES4_S6_E16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S6_EENS_4base6VectorIKS4_EEE_EEvNSL_IKNS7_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSL_IKT0_EEEEUlSJ_RSM_S11_E_EEvPNS7_12SnapshotDataERSS_.exit, label %.lr.ph.i43

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE14ReplaySnapshotIKZNS2_27ChangeTrackingSnapshotTableINS5_22WasmMemoryContentTableES4_S6_E16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S6_EENS_4base6VectorIKS4_EEE_EEvNSL_IKNS7_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSL_IKT0_EEEEUlSJ_RSM_S11_E_EEvPNS7_12SnapshotDataERSS_.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_3wle22WasmMemoryContentTableENS2_7OpIndexENS4_7KeyDataEE16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS6_S7_EENS_4base6VectorIKS6_EEE_EEvNSI_IKNS2_13SnapshotTableIS6_S7_E8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSI_IKT0_EEEENKUlSG_RSJ_S10_E_clESG_S10_S10_.exit.i48, %bb.v
  store ptr %i.eb, ptr %i.x, align 8
  %i.fh = icmp eq ptr %i.ea, %.pre92
  br i1 %i.fh, label %._crit_edge84, label %bb.v
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_3wle7KeyDataEEEA_SA_EEPT_m.exit, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #23
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_3wle7KeyDataEEEA_SA_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_3wle7KeyDataEEEA_SA_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_3wle7KeyDataEEEA_SA_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_3wle7KeyDataEEEA_SA_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_3wle7KeyDataEEEA_SA_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %3 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry.941", align 4 ; 7 uses
  %4 = alloca %"struct.std::pair.604", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.s, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.b        ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.b                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !11

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.al = add i16 %.sroa.017.047.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i, !prof !14

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ap = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !15

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ak, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ah, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit, !prof !14

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.9, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #23
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorptEv.exit, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.9, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11) #23
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %bb.z

bb.m:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i8 0, ptr %3, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 -1, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -12
  %.not.i.i.i1 = icmp eq ptr %i.bf, %i.bi
  br i1 %.not.i.i.i1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bf, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bj = load ptr, ptr %i.be, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12 ; 2 uses
  store ptr %i.bk, ptr %i.be, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE16_M_push_back_auxIJS6_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.bl, ptr noundef nonnull align 4 dereferenceable(12) %3)
  %.pre.i.i.i = load ptr, ptr %i.be, align 8, !noalias !90
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bm = phi ptr [ %.pre.i.i.i, %bb.o ], [ %i.bk, %bb.n ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !90
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %bb.q, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE6NewKeyEb.exit

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !90
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 504
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE6NewKeyEb.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE6NewKeyEb.exit: ; preds = %bb.p, %bb.q
  %i.bv = phi ptr [ %i.bu, %bb.q ], [ %i.bm, %bb.p ]
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 %1, ptr %4, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  store i64 %i.by, ptr %i.bx, align 8
  %i.bz = load i64, ptr %i.a, align 8, !noalias !93 ; 4 uses
  %i.ca = icmp ult i64 %i.bz, 2
  br i1 %i.ca, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE6NewKeyEb.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !110
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.cc, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 131072, ptr %i.cb, align 8, !noalias !110
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cf = load i32, ptr %i.ce, align 8, !noalias !110
  %i.cg = icmp eq i32 %i.cf, %1
  br i1 %i.cg, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !110
  store ptr %i.a, ptr %2, align 8, !noalias !110
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %4, ptr %i.ch, align 8, !noalias !110
  %i.ci = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #23, !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !110
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cj, align 8, !noalias !110
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ci
  %.pre = load i32, ptr %4, align 8, !noalias !115
  br label %bb.y

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE6NewKeyEb.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i2 = load ptr, ptr %i.cl, align 8, !noalias !116 ; 2 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i2, i32 0, i32 1, i32 1), !noalias !116
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !116
  %sext.i3 = shl i64 %i.cn, 48
  %i.co = ashr exact i64 %sext.i3, 48
  %i.cp = zext i32 %1 to i64
  %i.cq = xor i64 %i.co, %i.cp
  %i.cr = zext i64 %i.cq to i128
  %i.cs = mul nuw nsw i128 %i.cr, 8779197792823184629 ; 2 uses
  %i.ct = lshr i128 %i.cs, 64
  %i.cu = xor i128 %i.ct, %i.cs
  %i.cv = trunc i128 %i.cu to i64                 ; 3 uses
  %i.cw = lshr i64 %i.cv, 57
  %i.cx = trunc nuw nsw i64 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.cy, align 8, !noalias !116 ; 2 uses
  %i.cz = insertelement <16 x i8> poison, i8 %i.cx, i64 0
  %i.da = shufflevector <16 x i8> %i.cz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.pn.i5 = phi i64 [ %i.cv, %bb.v ], [ %i.dy, %bb.x ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.v ], [ %i.dx, %bb.x ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i5, %i.bz           ; 5 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.db, i32 0, i32 3, i32 1), !noalias !116
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i2, i64 %.sroa.7.0.i
  %i.dd = load <16 x i8>, ptr %i.dc, align 1, !noalias !116 ; 2 uses
  %i.de = icmp eq <16 x i8> %i.da, %i.dd
  %i.df = bitcast <16 x i1> %i.de to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.df, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.do, %.critedge.i ], [ %i.df, %bb.w ] ; 3 uses
  %i.dg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = add i64 %.sroa.7.0.i, %i.dh
  %i.dj = and i64 %i.di, %i.bz
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.dj
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE17MergePredecessorsIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIbS4_EENS_4base6VectorIKbEEE_NS2_16NoChangeCallbackEEEvNSF_IKNS5_8SnapshotEEERKT_RKT0_:bb.a

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.us
  br label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.us

_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.us: ; preds = %bb.l, %bb.k, %bb.i, %bb.h
  %.028.i.i.i.i.i.i.us = phi ptr [ %.1.i.i.i.i.i.i.us, %bb.i ], [ %i.ah, %bb.l ], [ %.2.i.i.i.i.i.i.us, %bb.k ], [ %i.aa, %bb.h ]
  %i.ap = icmp eq ptr %i.ah, %.028.i.i.i.i.i.i.us
  %i.aq = load i8, ptr %i.v, align 4, !range !5, !noundef !6 ; 2 uses
  %i.ar = zext i1 %i.ap to i8                     ; 3 uses
  %.not57.us = icmp eq i8 %i.aq, %i.ar
  br i1 %.not57.us, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit.us, label %bb.m

bb.m:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.us
  %i.as = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.at = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.au = icmp ult ptr %i.as, %i.at
  br i1 %i.au, label %bb.o, label %bb.n, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.f, align 8
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 4
  %i.ba = add nsw i64 %i.az, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.ba)
  %.pre.i.i.i37.us = load ptr, ptr %i.s, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bb = phi ptr [ %i.as, %bb.m ], [ %.pre.i.i.i37.us, %bb.n ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.bc, ptr %i.s, align 8
  store ptr %i.v, ptr %i.bb, align 8
  %.sroa.4.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i8 %i.aq, ptr %.sroa.4.0..sroa_idx.i.us, align 8
  %.sroa.5.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.bb, i64 9
  store i8 %i.ar, ptr %.sroa.5.0..sroa_idx.i.us, align 1
  store i8 %i.ar, ptr %i.v, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit.us

_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit.us: ; preds = %bb.o, %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.us
  %i.bd = getelementptr inbounds nuw i8, ptr %.03474.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.bd, %i.p
  br i1 %.not.us, label %.loopexit, label %.lr.ph76.split.us

bb.p:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03360 = load ptr, ptr %i.be, align 8          ; 2 uses
  %.not3661 = icmp eq ptr %.03360, %i.e
  br i1 %.not3661, label %._crit_edge, label %.lr.ph63.preheader

.lr.ph63.preheader:                               ; preds = %bb.p
  %i.bf = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  br label %.lr.ph63

.loopexit58:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIbS4_EERKbjj.exit, %.lr.ph63
  %.033 = load ptr, ptr %.03362, align 8          ; 2 uses
  %.not36 = icmp eq ptr %.033, %i.e
  br i1 %.not36, label %._crit_edge, label %.lr.ph63, !llvm.loop !161

._crit_edge:                                      ; preds = %.loopexit58, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.p, !llvm.loop !162

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %.loopexit58
  %.03362 = phi ptr [ %.033, %.loopexit58 ], [ %.03360, %.lr.ph63.preheader ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.03362, i64 16
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bi = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %.03362, i64 24
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = icmp samesign eq i64 %i.bl, %i.bh
  br i1 %i.bm, label %.loopexit58, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph63
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bl
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIbS4_EERKbjj.exit
  %.sroa.042.059 = phi ptr [ %i.bo, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIbS4_EERKbjj.exit ], [ %i.bn, %.lr.ph.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.042.059, i64 -16 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !6, !align !37 ; 4 uses
  %i.bq = getelementptr inbounds i8, ptr %.sroa.042.059, i64 -7
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = zext i32 %i.bs to i64
  %i.bu = icmp eq i64 %indvars.iv, %i.bt
  br i1 %i.bu, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIbS4_EERKbjj.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4            ; 2 uses
  %i.bx = icmp eq i32 %i.bw, -1
  br i1 %i.bx, label %bb.r, label %bb.ac

bb.r:                                             ; preds = %bb.q
  %i.by = load ptr, ptr %i.h, align 8
  %i.bz = load ptr, ptr %i.i, align 8
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = add i64 %i.cc, %2
  %i.ce = icmp ult i64 %i.cd, 4294967296
  br i1 %i.ce, label %bb.t, label %bb.s, !prof !11

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #22
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cf = trunc i64 %i.cc to i32
  store i32 %i.cf, ptr %i.bv, align 4
  %i.cg = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ch = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ci = icmp ult ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE9push_backEOS7_.exit.i, label %bb.u, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.cj = load ptr, ptr %i.m, align 8
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3
  %i.co = add nsw i64 %i.cn, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.co)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE9push_backEOS7_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE9push_backEOS7_.exit.i: ; preds = %bb.u, %bb.t
  %i.cp = phi ptr [ %i.cg, %bb.t ], [ %.pre.i.i.i, %bb.u ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cq, ptr %i.j, align 8
  store ptr %i.bp, ptr %i.cp, align 8
  %i.cr = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.cs = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 5 uses
  %i.cw = xor i64 %i.cv, -1
  %.not.i = icmp ugt i64 %2, %i.cw
  br i1 %.not.i, label %bb.v, label %bb.w, !prof !14

bb.v:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE9push_backEOS7_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #22
  unreachable

bb.w:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE9push_backEOS7_.exit.i
  %i.cx = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.cu                    ; 2 uses
  %i.da = add i64 %i.cv, %2                       ; 3 uses
  %i.db = icmp ult i64 %i.cz, %i.da
  br i1 %i.db, label %bb.x, label %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit

bb.x:                                             ; preds = %bb.w
  %i.dc = icmp eq ptr %i.cs, %i.cx
  %i.dd = shl i64 %i.cz, 1
  %i.de = select i1 %i.dc, i64 2, i64 %i.dd
  %i.df = tail call noundef i64 @llvm.umax.i64(i64 %i.de, i64 %i.da) ; 2 uses
  %i.dg = load ptr, ptr %i.g, align 8             ; 3 uses
  %.not.i.i38 = icmp eq i64 %i.da, -1
  br i1 %.not.i.i38, label %bb.y, label %bb.z, !prof !14

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #22
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.dh = add i64 %i.df, 7
  %i.di = and i64 %i.dh, -8                       ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 3 uses
  %i.dm = load i64, ptr %i.dl, align 8            ; 2 uses
  %i.dn = sub i64 %i.dk, %i.dm
  %i.do = icmp ugt i64 %i.di, %i.dn
  br i1 %i.do, label %bb.aa, label %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i, !prof !14

bb.aa:                                            ; preds = %bb.z
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dg, i64 noundef %i.di) #23
  %.pre.i.i.i40 = load i64, ptr %i.dl, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i: ; preds = %bb.aa, %bb.z
  %i.dp = phi i64 [ %.pre.i.i.i40, %bb.aa ], [ %i.dm, %bb.z ] ; 2 uses
  %i.dq = inttoptr i64 %i.dp to ptr               ; 4 uses
  %i.dr = add i64 %i.dp, %i.di
  store i64 %i.dr, ptr %i.dl, align 8
  store ptr %i.dq, ptr %i.i, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.cv
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %2
  store ptr %i.dt, ptr %i.h, align 8
  %.not26.i = icmp eq ptr %i.cs, null
  br i1 %.not26.i, label %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dq, ptr nonnull align 1 %i.cs, i64 %i.cv, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  %.pre.i39 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit.thread

_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i, %bb.ab
  %i.du = phi ptr [ %.pre.i39, %bb.ab ], [ %i.dq, %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.df
  store ptr %i.dv, ptr %i.n, align 8
  br label %.lr.ph18.preheader.i.i

_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit: ; preds = %bb.w
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %2
  store ptr %i.dw, ptr %i.h, align 8
  br label %.lr.ph18.preheader.i.i

.lr.ph18.preheader.i.i:                           ; preds = %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit.thread, %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit
  %.pn = phi ptr [ %i.du, %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit.thread ], [ %i.cs, %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit ]
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.cv
  %.pre21.i.i = load i8, ptr %i.bp, align 4, !range !5
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i.i, i8 %.pre21.i.i, i64 %2, i1 false)
  %.pre.i = load i32, ptr %i.bv, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph18.preheader.i.i, %bb.q
  %i.dx = phi i32 [ %.pre.i, %.lr.ph18.preheader.i.i ], [ %i.bw, %bb.q ]
  %i.dy = load i8, ptr %i.bq, align 1, !range !5, !noundef !6
  %i.dz = add i32 %i.dx, %i.bf
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load ptr, ptr %i.i, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ea
  store i8 %i.dy, ptr %i.ec, align 1
  store i32 %i.bf, ptr %i.br, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIbS4_EERKbjj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIbS4_EERKbjj.exit: ; preds = %.lr.ph, %bb.ac
  %i.ed = icmp eq ptr %i.bo, %i.bj
  br i1 %i.ed, label %.loopexit58, label %.lr.ph

.lr.ph76.split:                                   ; preds = %.lr.ph76.split.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit
  %.03474 = phi ptr [ %i.ge, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit ], [ %i.o, %.lr.ph76.split.preheader ] ; 2 uses
  %i.ee = load ptr, ptr %.03474, align 8          ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = zext i32 %i.eg to i64
  %i.ei = load ptr, ptr %i.i, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eh ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !range !5, !noundef !6
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ad, label %.lr.ph.preheader.i.i.i.i.i.i

bb.ad:                                            ; preds = %.lr.ph76.split
  %i.en = load i8, ptr %i.ej, align 1, !range !5, !noundef !6
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %.lr.ph.preheader.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ep = load ptr, ptr %3, align 8, !nonnull !6
  store i8 1, ptr %i.ep, align 1
  br label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.ae, %bb.ad, %.lr.ph76.split
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 %2 ; 2 uses
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ej, i64 %i.r ; 5 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ai, %.lr.ph.preheader.i.i.i.i.i.i
  %.041.i.i.i.i.i.i = phi i64 [ %i.fd, %bb.ai ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02940.i.i.i.i.i.i = phi ptr [ %i.fc, %bb.ai ], [ %i.ej, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %i.er = load i8, ptr %.02940.i.i.i.i.i.i, align 1, !range !5, !noundef !6
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.af, label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !range !5, !noundef !6
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.ag, label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit

bb.ag:                                            ; preds = %bb.af
  %i.ew = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 2
  %i.ex = load i8, ptr %i.ew, align 1, !range !5, !noundef !6
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.ah, label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106

bb.ah:                                            ; preds = %bb.ag
  %i.ez = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 3
  %i.fa = load i8, ptr %i.ez, align 1, !range !5, !noundef !6
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.ai, label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108

bb.ai:                                            ; preds = %bb.ah
  %i.fc = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 4
  %i.fd = add nsw i64 %.041.i.i.i.i.i.i, -1
  %i.fe = icmp sgt i64 %.041.i.i.i.i.i.i, 1
  br i1 %i.fe, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.loopexit, !llvm.loop !69

._crit_edge.i.i.i.i.i.i.loopexit:                 ; preds = %bb.ai
  switch i64 %gepdiff, label %._crit_edge.i.i.i.i.i.i.loopexit.unreachabledefault [
    i64 3, label %bb.aj
    i64 2, label %bb.al
    i64 1, label %bb.an
    i64 0, label %bb.ao
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit
  %i.ff = load i8, ptr %scevgep.i.i.i.i.i.i, align 1, !range !5, !noundef !6
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.ak, label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fh = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i.i.i, i64 1
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit, %bb.ak
  %.1.i.i.i.i.i.i = phi ptr [ %i.fh, %bb.ak ], [ %scevgep.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.loopexit ] ; 3 uses
  %i.fi = load i8, ptr %.1.i.i.i.i.i.i, align 1, !range !5, !noundef !6
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.am, label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

bb.am:                                            ; preds = %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 1
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit, %bb.am
  %.2.i.i.i.i.i.i = phi ptr [ %i.fk, %bb.am ], [ %scevgep.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.loopexit ] ; 2 uses
  %i.fl = load i8, ptr %.2.i.i.i.i.i.i, align 1, !range !5, !noundef !6
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.ao, label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

._crit_edge.i.i.i.i.i.i.loopexit.unreachabledefault: ; preds = %._crit_edge.i.i.i.i.i.i.loopexit
  unreachable

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit, %bb.an
  br label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit: ; preds = %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 1
  br label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106: ; preds = %bb.ag
  %i.fo = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 2
  br label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108: ; preds = %bb.ah
  %i.fp = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 3
  br label %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit, %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106, %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108, %bb.aj, %bb.al, %bb.an, %bb.ao
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.al ], [ %i.eq, %bb.ao ], [ %.2.i.i.i.i.i.i, %bb.an ], [ %scevgep.i.i.i.i.i.i, %bb.aj ], [ %i.fp, %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108 ], [ %i.fn, %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit ], [ %i.fo, %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106 ], [ %.02940.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.fq = icmp eq ptr %i.eq, %.028.i.i.i.i.i.i
  %i.fr = load i8, ptr %i.ee, align 4, !range !5, !noundef !6 ; 2 uses
  %i.fs = zext i1 %i.fq to i8                     ; 3 uses
  %.not57 = icmp eq i8 %i.fr, %i.fs
  br i1 %.not57, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit
  %i.ft = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.fu = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.fv = icmp ult ptr %i.ft, %i.fu
  br i1 %i.fv, label %bb.ar, label %bb.aq, !prof !11

bb.aq:                                            ; preds = %bb.ap
  %i.fw = load ptr, ptr %i.f, align 8
  %i.fx = ptrtoint ptr %i.fu to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = ashr exact i64 %i.fz, 4
  %i.gb = add nsw i64 %i.ga, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.gb)
  %.pre.i.i.i37 = load ptr, ptr %i.s, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.gc = phi ptr [ %i.ft, %bb.ap ], [ %.pre.i.i.i37, %bb.aq ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store ptr %i.gd, ptr %i.s, align 8
  store ptr %i.ee, ptr %i.gc, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i8 %i.fr, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 9
  store i8 %i.fs, ptr %.sroa.5.0..sroa_idx.i, align 1
  store i8 %i.fs, ptr %i.ee, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit, %bb.ar
  %i.ge = getelementptr inbounds nuw i8, ptr %.03474, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ge, %i.p
  br i1 %.not, label %.loopexit, label %.lr.ph76.split

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit.us, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE17MergePredecessorsIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S6_EENS_4base6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINS5_22WasmMemoryContentTableES4_S6_E16StartNewSnapshotISK_EEvNSH_IKNS7_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSH_IKT0_EEEEUlSF_RSI_S11_E_EEvSR_SU_RSZ_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.18) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.idx = shl nuw nsw i64 %2, 2                   ; 4 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not78 = icmp eq ptr %i.o, %i.p
  br i1 %.not78, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.e
  %i.q = icmp eq i64 %2, 1
  %gepdiff.i.i = add nsw i64 %.idx, -4            ; 4 uses
  %i.r = lshr i64 %gepdiff.i.i, 4                 ; 2 uses
  %.not61 = icmp eq i64 %i.r, 0
  %i.s = and i64 %gepdiff.i.i, -16
  %gepdiff7.i.i = and i64 %gepdiff.i.i, 12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.t

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03465 = load ptr, ptr %i.w, align 8           ; 2 uses
  %.not3766 = icmp eq ptr %.03465, %i.e
  br i1 %.not3766, label %._crit_edge, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %bb.f
  %i.x = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br label %.lr.ph68

.loopexit63:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S6_EERKS4_jj.exit, %.lr.ph68
  %.034 = load ptr, ptr %.03467, align 8          ; 2 uses
  %.not37 = icmp eq ptr %.034, %i.e
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !163

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !164

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.loopexit63
  %.03467 = phi ptr [ %.034, %.loopexit63 ], [ %.03465, %.lr.ph68.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03467, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.03467, i64 24
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp samesign eq i64 %i.ad, %i.z
  br i1 %i.ae, label %.loopexit63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ad
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S6_EERKS4_jj.exit
  %.sroa.046.064 = phi ptr [ %i.ag, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S6_EERKS4_jj.exit ], [ %i.af, %.lr.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.046.064, i64 -16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !6, !align !10 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.046.064, i64 -4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp eq i64 %indvars.iv, %i.al
  br i1 %i.am, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S6_EERKS4_jj.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 52 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.h, align 8
  %i.ar = load ptr, ptr %i.i, align 8
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %i.aw = add nsw i64 %i.av, %2
  %i.ax = icmp ult i64 %i.aw, 4294967296
  br i1 %i.ax, label %bb.j, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #22
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = trunc i64 %i.av to i32
  store i32 %i.ay, ptr %i.an, align 4
  %i.az = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ba = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.bb = icmp ult ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEEE9push_backEOS9_.exit.i, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.m, align 8
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = add nsw i64 %i.bg, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.bh)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEEE9push_backEOS9_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEEE9push_backEOS9_.exit.i: ; preds = %bb.k, %bb.j
  %i.bi = phi ptr [ %i.az, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bj, ptr %i.j, align 8
  store ptr %i.ah, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.bm = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.bn = ptrtoint ptr %i.bk to i64               ; 4 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 5 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = ashr exact i64 %i.bp, 2                 ; 2 uses
  %i.br = xor i64 %i.bq, -1
  %.not.i41 = icmp ugt i64 %2, %i.br
  br i1 %.not.i41, label %bb.l, label %bb.m, !prof !14

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEEE9push_backEOS9_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #22
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEEE9push_backEOS9_.exit.i
  %i.bs = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bo                    ; 2 uses
  %i.bv = ashr exact i64 %i.bu, 2
  %i.bw = add nsw i64 %i.bq, %2                   ; 2 uses
  %i.bx = icmp ult i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit

bb.n:                                             ; preds = %bb.m
  %i.by = icmp eq ptr %i.bm, %i.bs
  %i.bz = ashr exact i64 %i.bu, 1
  %i.ca = select i1 %i.by, i64 2, i64 %i.bz
  %i.cb = tail call noundef i64 @llvm.umax.i64(i64 %i.ca, i64 %i.bw) ; 3 uses
  %i.cc = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.cd = icmp ult i64 %i.cb, 4611686018427387903
  br i1 %i.cd, label %bb.p, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #22
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ce = shl nuw i64 %i.cb, 2
  %i.cf = add nuw i64 %i.ce, 4
  %i.cg = and i64 %i.cf, -8                       ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = sub i64 %i.ci, %i.ck
  %i.cm = icmp ugt i64 %i.cg, %i.cl
  br i1 %i.cm, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, !prof !14

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cc, i64 noundef %i.cg) #23
  %.pre.i.i.i43 = load i64, ptr %i.cj, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i: ; preds = %bb.q, %bb.p
  %i.cn = phi i64 [ %.pre.i.i.i43, %bb.q ], [ %i.ck, %bb.p ] ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr               ; 4 uses
  %i.cp = add i64 %i.cn, %i.cg
  store i64 %i.cp, ptr %i.cj, align 8
  store ptr %i.co, ptr %i.i, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.bp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %2
  store ptr %i.cr, ptr %i.h, align 8
  %.not26.i = icmp eq ptr %i.bm, null
  br i1 %.not26.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.co, ptr nonnull align 4 %i.bm, i64 %i.bp, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  %.pre.i42 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, %bb.r
  %i.cs = phi ptr [ %.pre.i42, %bb.r ], [ %i.co, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cb
  store ptr %i.ct, ptr %i.n, align 8
  br label %._crit_edge.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit: ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %2
  store ptr %i.cu, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread
  %.pn = phi ptr [ %i.bm, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit ], [ %i.cs, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread ] ; 2 uses
  %.pn120 = ptrtoint ptr %.pn to i64              ; 3 uses
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.bp ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 %.idx
  %.pre20.i.i = load i32, ptr %i.bl, align 8      ; 2 uses
  %i.cw = add i64 %i.bo, -1
  %i.cx = add i64 %.idx, %.pn120
  %i.cy = add i64 %i.cx, %i.bn
  %i.cz = sub i64 %i.cy, %i.bo
  %i.da = add i64 %.pn120, 4
  %i.db = add i64 %i.da, %i.bn
  %i.dc = sub i64 %i.db, %i.bo
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 %i.dc)
  %i.dd = add i64 %i.cw, %umax
  %i.de = add i64 %.pn120, %i.bn
  %i.df = sub i64 %i.dd, %i.de                    ; 2 uses
  %i.dg = lshr i64 %i.df, 2
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.df, 28
  br i1 %min.iters.check, label %.lr.ph18.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.i.i
  %n.vec = and i64 %i.dh, 9223372036854775800     ; 3 uses
  %i.di = shl i64 %n.vec, 2
  %i.dj = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.di
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre20.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dl, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %._crit_edge.i.i, %middle.block
  %.116.i.i.ph = phi ptr [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.dj, %middle.block ]
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i
  %.116.i.i = phi ptr [ %i.dn, %.lr.ph18.i.i ], [ %.116.i.i.ph, %.lr.ph18.i.i.preheader ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.116.i.i, i64 4 ; 2 uses
  store i32 %.pre20.i.i, ptr %.116.i.i, align 4
  %i.do = icmp ult ptr %i.dn, %i.cv
  br i1 %i.do, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !166

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i: ; preds = %.lr.ph18.i.i, %middle.block
  %.pre.i = load i32, ptr %i.an, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, %bb.g
  %i.dp = phi i32 [ %.pre.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i ], [ %i.ao, %bb.g ]
  %i.dq = add i32 %i.dp, %i.x
  %i.dr = zext i32 %i.dq to i64
  %i.ds = load ptr, ptr %i.i, align 8
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load i32, ptr %i.ai, align 4
  store i32 %i.du, ptr %i.dt, align 4
  store i32 %i.x, ptr %i.aj, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S6_EERKS4_jj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S6_EERKS4_jj.exit: ; preds = %.lr.ph, %bb.s
  %i.dv = icmp eq ptr %i.ag, %i.ab
  br i1 %i.dv, label %.loopexit63, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph81, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE3SetENS2_16SnapshotTableKeyIS4_S6_EES4_.exit
  %.03579 = phi ptr [ %i.o, %.lr.ph81 ], [ %i.gf, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE3SetENS2_16SnapshotTableKeyIS4_S6_EES4_.exit ] ; 2 uses
  %i.dw = load ptr, ptr %.03579, align 8          ; 8 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 52
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = zext i32 %i.dy to i64
  %i.ea = load ptr, ptr %i.i, align 8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dz ; 8 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 4 uses
  %i.ed = load i32, ptr %i.ec, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.ed, -1
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ee = load i32, ptr %i.eb, align 4
  %.not10.i = icmp eq i32 %i.ee, %i.ed
  br i1 %.not10.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = load ptr, ptr %3, align 8, !nonnull !6
  store i8 1, ptr %i.ef, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  br i1 %i.q, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx
  br i1 %.not61, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.x
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.eb, align 4 ; 4 uses
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ec, i64 %i.s
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i
  %.059.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.ep, %bb.ac ] ; 2 uses
  %.02958.i.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i ], [ %i.eo, %bb.ac ] ; 9 uses
  %i.eh = load i32, ptr %.02958.i.i.i.i.i.i, align 4
  %.not44.i.i.i.i.i.i = icmp eq i32 %i.eh, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not44.i.i.i.i.i.i, label %bb.z, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

bb.z:                                             ; preds = %bb.y
  %i.ei = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 4
  %i.ej = load i32, ptr %i.ei, align 4
  %.not45.i.i.i.i.i.i = icmp eq i32 %i.ej, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not45.i.i.i.i.i.i, label %bb.aa, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit110

bb.aa:                                            ; preds = %bb.z
  %i.ek = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 8
  %i.el = load i32, ptr %i.ek, align 4
  %.not46.i.i.i.i.i.i = icmp eq i32 %i.el, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not46.i.i.i.i.i.i, label %bb.ab, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit108

bb.ab:                                            ; preds = %bb.aa
  %i.em = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 12
  %i.en = load i32, ptr %i.em, align 4
  %.not47.i.i.i.i.i.i = icmp eq i32 %i.en, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not47.i.i.i.i.i.i, label %bb.ac, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i.loopexit.split.loop.exit

bb.ac:                                            ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i, i64 16
  %i.ep = add nsw i64 %.059.i.i.i.i.i.i, -1
  %i.eq = icmp sgt i64 %.059.i.i.i.i.i.i, 1
  br i1 %i.eq, label %bb.y, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !76

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ac, %bb.x
  %.pre-phi68.i.i.i.i.i.i = phi i64 [ %gepdiff.i.i, %bb.x ], [ %gepdiff7.i.i, %bb.ac ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.ec, %bb.x ], [ %scevgep.i.i.i.i.i.i, %bb.ac ] ; 5 uses
  %i.er = lshr exact i64 %.pre-phi68.i.i.i.i.i.i, 2
  switch i64 %i.er, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i [
    i64 3, label %bb.ad
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i
  ]

._crit_edge._crit_edge65.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i35.pre.i.i.i.i.i.i = load i32, ptr %i.eb, align 4
  br label %bb.ah

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i34.pre.i.i.i.i.i.i = load i32, ptr %i.eb, align 4
  br label %bb.af

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i33.i.i.i.i.i.i = load i32, ptr %i.eb, align 4 ; 2 uses
  %i.es = load i32, ptr %.029.lcssa.i.i.i.i.i.i, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.es, %.sroa.0.0.copyload.i.i33.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.ae, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.et = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i34.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i33.i.i.i.i.i.i, %bb.ae ], [ %.sroa.0.0.copyload.i.i34.pre.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i.i.i = phi ptr [ %i.et, %bb.ae ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.eu = load i32, ptr %.1.i.i.i.i.i.i, align 4
  %.not42.i.i.i.i.i.i = icmp eq i32 %i.eu, %.sroa.0.0.copyload.i.i34.i.i.i.i.i.i
  br i1 %.not42.i.i.i.i.i.i, label %bb.ag, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ev = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge._crit_edge65.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i35.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i34.i.i.i.i.i.i, %bb.ag ], [ %.sroa.0.0.copyload.i.i35.pre.i.i.i.i.i.i, %._crit_edge._crit_edge65.i.i.i.i.i.i ]
  %.2.i.i.i.i.i.i = phi ptr [ %i.ev, %bb.ag ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge._crit_edge65.i.i.i.i.i.i ] ; 2 uses
  %i.ew = load i32, ptr %.2.i.i.i.i.i.i, align 4
  %.not43.i.i.i.i.i.i = icmp eq i32 %i.ew, %.sroa.0.0.copyload.i.i35.i.i.i.i.i.i
  br i1 %.not43.i.i.i.i.i.i, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.thread.i, label %_ZN2v84base9all_equalINS0_6VectorIKNS_8internal8compiler10turboshaft7OpIndexEEEEEbRKT_.exit.i
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES9_SA_SD_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSF_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSQ_13VariableTableES4_S5_E16StartNewSnapshotISY_EEvNSV_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSV_IKT0_EEEEUlSU_RSW_S1F_E_EEvS15_S18_RS1D_
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES9_SA_SD_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSF_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSQ_13VariableTableES4_S5_E16StartNewSnapshotISY_EEvNSV_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSV_IKT0_EEEEUlSU_RSW_S1F_E_EEvS15_S18_RS1D_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.18) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.idx = shl nuw nsw i64 %2, 2                   ; 3 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not70 = icmp eq ptr %i.o, %i.p
  br i1 %.not70, label %.loopexit, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03465 = load ptr, ptr %i.t, align 8           ; 2 uses
  %.not3766 = icmp eq ptr %.03465, %i.e
  br i1 %.not3766, label %._crit_edge, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %bb.f
  %i.u = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br label %.lr.ph68

.loopexit63:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, %.lr.ph68
  %.034 = load ptr, ptr %.03467, align 8          ; 2 uses
  %.not37 = icmp eq ptr %.034, %i.e
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !224

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !225

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.loopexit63
  %.03467 = phi ptr [ %.034, %.loopexit63 ], [ %.03465, %.lr.ph68.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03467, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.03467, i64 24
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp samesign eq i64 %i.aa, %i.w
  br i1 %i.ab, label %.loopexit63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.aa
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit
  %.sroa.047.064 = phi ptr [ %i.ad, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit ], [ %i.ac, %.lr.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.047.064, i64 -16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !6, !align !10 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.047.064, i64 -4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp eq i64 %indvars.iv, %i.ai
  br i1 %i.aj, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 20 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.h, align 8
  %i.ao = load ptr, ptr %i.i, align 8
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = add nsw i64 %i.as, %2
  %i.au = icmp ult i64 %i.at, 4294967296
  br i1 %i.au, label %bb.j, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #22
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.av = trunc i64 %i.as to i32
  store i32 %i.av, ptr %i.ak, align 4
  %i.aw = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ax = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ay = icmp ult ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %i.m, align 8
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = add nsw i64 %i.bd, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.be)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i: ; preds = %bb.k, %bb.j
  %i.bf = phi ptr [ %i.aw, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.j, align 8
  store ptr %i.ae, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bj = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.bk = ptrtoint ptr %i.bh to i64               ; 4 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 5 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = ashr exact i64 %i.bm, 2                 ; 2 uses
  %i.bo = xor i64 %i.bn, -1
  %.not.i42 = icmp ugt i64 %2, %i.bo
  br i1 %.not.i42, label %bb.l, label %bb.m, !prof !14

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #22
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i
  %i.bp = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bl                    ; 2 uses
  %i.bs = ashr exact i64 %i.br, 2
  %i.bt = add nsw i64 %i.bn, %2                   ; 2 uses
  %i.bu = icmp ult i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit

bb.n:                                             ; preds = %bb.m
  %i.bv = icmp eq ptr %i.bj, %i.bp
  %i.bw = ashr exact i64 %i.br, 1
  %i.bx = select i1 %i.bv, i64 2, i64 %i.bw
  %i.by = tail call noundef i64 @llvm.umax.i64(i64 %i.bx, i64 %i.bt) ; 3 uses
  %i.bz = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.ca = icmp ult i64 %i.by, 4611686018427387903
  br i1 %i.ca, label %bb.p, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #22
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cb = shl nuw i64 %i.by, 2
  %i.cc = add nuw i64 %i.cb, 4
  %i.cd = and i64 %i.cc, -8                       ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.ci = sub i64 %i.cf, %i.ch
  %i.cj = icmp ugt i64 %i.cd, %i.ci
  br i1 %i.cj, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, !prof !14

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.cd) #23
  %.pre.i.i.i44 = load i64, ptr %i.cg, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i: ; preds = %bb.q, %bb.p
  %i.ck = phi i64 [ %.pre.i.i.i44, %bb.q ], [ %i.ch, %bb.p ] ; 2 uses
  %i.cl = inttoptr i64 %i.ck to ptr               ; 4 uses
  %i.cm = add i64 %i.ck, %i.cd
  store i64 %i.cm, ptr %i.cg, align 8
  store ptr %i.cl, ptr %i.i, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.bm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %2
  store ptr %i.co, ptr %i.h, align 8
  %.not26.i = icmp eq ptr %i.bj, null
  br i1 %.not26.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cl, ptr nonnull align 4 %i.bj, i64 %i.bm, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %.pre.i43 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, %bb.r
  %i.cp = phi ptr [ %.pre.i43, %bb.r ], [ %i.cl, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.by
  store ptr %i.cq, ptr %i.n, align 8
  br label %._crit_edge.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit: ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %2
  store ptr %i.cr, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread
  %.pn = phi ptr [ %i.bj, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit ], [ %i.cp, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread ] ; 2 uses
  %.pn94 = ptrtoint ptr %.pn to i64               ; 3 uses
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.bm ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 %.idx
  %.pre20.i.i = load i32, ptr %i.bi, align 8      ; 2 uses
  %i.ct = add i64 %i.bl, -1
  %i.cu = add i64 %.idx, %.pn94
  %i.cv = add i64 %i.cu, %i.bk
  %i.cw = sub i64 %i.cv, %i.bl
  %i.cx = add i64 %.pn94, 4
  %i.cy = add i64 %i.cx, %i.bk
  %i.cz = sub i64 %i.cy, %i.bl
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 %i.cz)
  %i.da = add i64 %i.ct, %umax
  %i.db = add i64 %.pn94, %i.bk
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = lshr i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dc, 28
  br i1 %min.iters.check, label %.lr.ph18.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.i.i
  %n.vec = and i64 %i.de, 9223372036854775800     ; 3 uses
  %i.df = shl i64 %n.vec, 2
  %i.dg = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.df
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre20.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.di, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %._crit_edge.i.i, %middle.block
  %.116.i.i.ph = phi ptr [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.dg, %middle.block ]
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i
  %.116.i.i = phi ptr [ %i.dk, %.lr.ph18.i.i ], [ %.116.i.i.ph, %.lr.ph18.i.i.preheader ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.116.i.i, i64 4 ; 2 uses
  store i32 %.pre20.i.i, ptr %.116.i.i, align 4
  %i.dl = icmp ult ptr %i.dk, %i.cs
  br i1 %i.dl, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !227

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i: ; preds = %.lr.ph18.i.i, %middle.block
  %.pre.i = load i32, ptr %i.ak, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, %bb.g
  %i.dm = phi i32 [ %.pre.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i ], [ %i.al, %bb.g ]
  %i.dn = add i32 %i.dm, %i.u
  %i.do = zext i32 %i.dn to i64
  %i.dp = load ptr, ptr %i.i, align 8
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load i32, ptr %i.af, align 4
  store i32 %i.dr, ptr %i.dq, align 4
  store i32 %i.u, ptr %i.ag, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit: ; preds = %.lr.ph, %bb.s
  %i.ds = icmp eq ptr %i.ad, %i.y
  br i1 %i.ds, label %.loopexit63, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %.03571 = phi ptr [ %i.o, %.lr.ph.i.lr.ph ], [ %i.hd, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
  %i.dt = load ptr, ptr %.03571, align 8          ; 8 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = zext i32 %i.dv to i64
  %i.dx = load ptr, ptr %i.i, align 8
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dw ; 5 uses
  %i.dz = load ptr, ptr %3, align 8               ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx
  %i.eb = getelementptr inbounds i8, ptr %i.dz, i64 -8
  br label %bb.u

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.023.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, %i.ea
  br i1 %.not.i, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %.023.i = phi ptr [ %i.dy, %.lr.ph.i ], [ %i.ec, %bb.t ] ; 2 uses
  %i.ed = load i32, ptr %.023.i, align 4          ; 2 uses
  %.not21.i = icmp eq i32 %i.ed, -1
  br i1 %.not21.i, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSP_EEE_clESR_SU_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i: ; preds = %bb.u
  %i.ee = load ptr, ptr %i.eb, align 8, !nonnull !6, !align !10
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ei = zext i32 %i.ed to i64
  %i.ej = add i64 %i.eh, %i.ei
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load i8, ptr %i.ek, align 4
  %i.em = icmp eq i8 %i.el, 76
  br i1 %i.em, label %bb.v, label %bb.t

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 2536
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSP_EEE_clESR_SU_.exit, label %bb.w, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.eq = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.dz)
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSP_EEE_clESR_SU_.exit

._crit_edge.i:                                    ; preds = %bb.t
  %.sroa.0.0.copyload.i = load i8, ptr %i.dt, align 8 ; 2 uses
  %.not.i.i38 = icmp eq i8 %.sroa.0.0.copyload.i, 8
  br i1 %.not.i.i38, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.dz, i64 2536
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSP_EEE_clESR_SU_.exit, label %bb.y, !prof !14

bb.y:                                             ; preds = %bb.x
  %i.eu = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE9ReducePhiENSA_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(2192) %i.dz, ptr %i.dy, i64 %2, i8 %.sroa.0.0.copyload.i), !inline_history !228
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSP_EEE_clESR_SU_.exit

bb.z:                                             ; preds = %._crit_edge.i
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.dy, align 4
  %i.ev = zext i32 %.sroa.01.0.copyload.i.i to i64
  %i.ew = add i64 %i.eh, %i.ev
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load i8, ptr %i.ex, align 4
  %i.ez = icmp eq i8 %i.ey, 92
  br i1 %i.ez, label %bb.aa, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSP_EEE_clESR_SU_.exit

bb.aa:                                            ; preds = %bb.z
  %i.fa = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE15MergeFrameStateENSA_6VectorIKNS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(2192) %i.dz, ptr nonnull %i.dy, i64 %2), !inline_history !228
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSP_EEE_clESR_SU_.exit

_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSP_EEE_clESR_SU_.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.sroa.0.0.copyload.i40 = phi i32 [ -1, %bb.z ], [ -1, %bb.v ], [ %i.eq, %bb.w ], [ -1, %bb.x ], [ %i.fa, %bb.aa ], [ %i.eu, %bb.y ], [ -1, %bb.u ] ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8            ; 3 uses
  %.not62 = icmp eq i32 %i.fc, %.sroa.0.0.copyload.i40
  br i1 %.not62, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENSA_6VectorIKSP_EEE_clESR_SU_.exit
  %i.fd = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.fe = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ff = icmp ult ptr %i.fd, %i.fe
  br i1 %i.ff, label %bb.ad, label %bb.ac, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.fg = load ptr, ptr %i.f, align 8
  %i.fh = ptrtoint ptr %i.fe to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ashr exact i64 %i.fj, 4
  %i.fl = add nsw i64 %i.fk, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.fl)
  %.pre.i.i.i39 = load ptr, ptr %i.q, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.fm = phi ptr [ %i.fd, %bb.ab ], [ %.pre.i.i.i39, %bb.ac ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %i.fn, ptr %i.q, align 8
  store ptr %i.dt, ptr %i.fm, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i32 %i.fc, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 %.sroa.0.0.copyload.i40, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 %.sroa.0.0.copyload.i40, ptr %i.fb, align 8
  %i.fo = load ptr, ptr %4, align 8               ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !range !5, !noundef !6
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE33AssembleOutputGraphCheckExceptionERKNS2_16CheckExceptionOpE:bb.a

_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18.thread: ; preds = %bb.d
  %.old40.not = icmp eq i32 %i.as, -1
  br i1 %.old40.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18.thread
  tail call void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE21CreateOldToNewMappingENS2_7OpIndexESL_(ptr noundef nonnull align 8 dereferenceable(2400) %0, i32 %.sroa.024.145, i32 %i.as), !inline_history !518
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18.thread, %bb.e
  %i.bg = load ptr, ptr %i.ah, align 8
  %i.bh = lshr i32 %.sroa.024.145, 4
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = zext i16 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add i32 %i.bm, %.sroa.024.145           ; 2 uses
  %.not42 = icmp eq i32 %i.bn, %.sroa.0.0.copyload.i12
  br i1 %.not42, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit20, label %.lr.ph, !llvm.loop !519

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit20: ; preds = %.lr.ph, %bb.f, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit.thread38
  ret i32 -1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE11FixLoopPhisEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(2400) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca [2 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.c, align 8 ; 2 uses
  %.not4851 = icmp eq i32 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i22
  br i1 %.not4851, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !nonnull !6, !align !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.g, align 4
  %i.h = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2336 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.p = getelementptr inbounds i8, ptr %0, i64 -8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit
  %.sroa.036.052 = phi i32 [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %i.br, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit ] ; 3 uses
  %i.s = load ptr, ptr %i.k, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = zext i32 %.sroa.036.052 to i64
  %i.v = add i64 %i.t, %i.u                       ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = load i8, ptr %i.w, align 4
  %.not = icmp eq i8 %i.x, 91
  br i1 %.not, label %bb.c, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.a, align 8, !nonnull !6, !align !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.v, %i.ab
  %i.ad = lshr i64 %i.ac, 4
  %i.ae = and i64 %i.ad, 268435455                ; 2 uses
  %i.af = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.ah, -1
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESM_i.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.m, align 8
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ae ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ak = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.ak, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESM_i.exit, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESM_i.exit: ; preds = %bb.d
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i, i64 16
  %.sroa.02.0.copyload.i12.i = load i32, ptr %i.al, align 4 ; 2 uses
  %.not50 = icmp eq i32 %.sroa.02.0.copyload.i12.i, -1
  br i1 %.not50, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESM_i.exit.thread

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESM_i.exit.thread: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESM_i.exit
  %.sroa.010.1.i45 = phi i32 [ %.sroa.02.0.copyload.i12.i, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESM_i.exit ], [ %i.ah, %bb.c ] ; 4 uses
  %i.am = load i32, ptr %i.n, align 4
  %i.an = icmp ule i32 %i.am, %.sroa.010.1.i45
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.o, align 8
  %i.ao = icmp ult i32 %.sroa.010.1.i45, %.sroa.0.0.copyload.i30
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %.critedge, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

.critedge:                                        ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESM_i.exit.thread
  %i.aq = load ptr, ptr %i.p, align 8, !nonnull !6, !align !10 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = zext i32 %.sroa.010.1.i45 to i64
  %i.av = add i64 %i.at, %i.au
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = icmp eq i8 %i.ax, 74
  br i1 %i.ay, label %bb.e, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.az, align 4
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %2, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.sroa.0.0.copyload.i.i31 = load i32, ptr %i.ba, align 4
  %i.bb = lshr i32 %.sroa.0.0.copyload.i.i31, 4
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.be, -1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESP_i.exit.i

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %i.m, align 8
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bc ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.bh = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.bh, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.f
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.bi, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESP_i.exit.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESP_i.exit.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, %bb.e
  %.sroa.014.0.i.i.i = phi i32 [ %i.be, %bb.e ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ]
  store i32 %.sroa.014.0.i.i.i, ptr %i.q, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.0.0.copyload.i32 = load i8, ptr %i.bj, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.aq, i32 %.sroa.010.1.i45, ptr nonnull %2, i64 2, i8 %.sroa.0.0.copyload.i32)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESM_i.exit.thread, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESM_i.exit, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESP_i.exit.i, %.critedge, %bb.b
  %i.bk = load ptr, ptr %i.r, align 8
  %i.bl = lshr i32 %.sroa.036.052, 4
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = zext i16 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 3
  %i.br = add i32 %i.bq, %.sroa.036.052           ; 2 uses
  %.not48 = icmp eq i32 %i.br, %.sroa.0.0.copyload.i22
  br i1 %.not48, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(2192) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i1 noundef zeroext %2), !inline_history !520
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerENS2_13TSReducerBaseEEEEE14AddPredecessorEPNS2_5BlockESE_b(ptr noundef nonnull align 8 dereferenceable(2592) %i.a, ptr noundef %i.c, ptr noundef %1, i1 noundef zeroext false), !inline_history !520
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4              ; 5 uses
  %.not34 = icmp eq i32 %i.g, -1
  br i1 %.not34, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %i.l = load i64, ptr %i.k, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.l, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %i.o = load i64, ptr %i.n, align 8
  %sext.i.i.i = shl i64 %i.o, 48
  %i.p = ashr exact i64 %sext.i.i.i, 48
  %i.q = zext i32 %i.g to i64
  %i.r = xor i64 %i.p, %i.q
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.z, align 8 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i.i = phi i64 [ %i.w, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i8.i.i.i, %i.i ; 4 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1      ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.ap, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.6.0.i.i.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.i
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, %i.g
  br i1 %i.an, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32, label %bb.f, !prof !11

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not44.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not44.i.i.i.i, label %bb.g, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, !prof !14

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !521

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit: ; preds = %bb.c
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %5, align 8
  %6 = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4
  %i.au = icmp eq i32 %6, %i.g
  br i1 %i.au, label %bb.h, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %i.g, ptr %3, align 4
  %i.av = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i8, ptr %i.aw, align 8, !range !5, !noundef !6
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not36 = icmp eq ptr %i.ba, %i.bc
  br i1 %.not36, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.037 = phi ptr [ %i.ba, %.lr.ph ], [ %i.bo, %bb.j ] ; 3 uses
  %.sroa.0.0.copyload24 = load ptr, ptr %.037, align 8
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.037, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..0.sroa_idx, align 8 ; 2 uses
  %i.be = load ptr, ptr %i.e, align 8, !nonnull !6, !align !10 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = zext i32 %.sroa.4.0.copyload to i64
  %i.bj = add i64 %i.bh, %i.bi
  %i.bk = inttoptr i64 %i.bj to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bl, align 4
  store i32 %.sroa.0.0.copyload.i.i, ptr %4, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload24, i64 16
  %.sroa.02.0.copyload.i = load i32, ptr %i.bm, align 4
  store i32 %.sroa.02.0.copyload.i, ptr %i.bd, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %.sroa.0.0.copyload = load i8, ptr %i.bn, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.be, i32 %.sroa.4.0.copyload, ptr nonnull %4, i64 2, i8 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bo = getelementptr inbounds nuw i8, ptr %.037, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.bc
  br i1 %.not, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.j

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.j, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, %bb.c, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit, %bb.a
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %0, i32 %1, ptr %2, i64 %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = add i64 %i.c, %i.d                       ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 5 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = zext i16 %i.m to i64
  %.idx.i = shl nuw nsw i64 %i.n, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.m, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.p = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.k, align 4
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.u = add i64 %i.s, %i.t
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = add i8 %i.x, -1                          ; 2 uses
  %spec.select.i.i.prol = icmp ult i8 %i.y, -2
  br i1 %spec.select.i.i.prol, label %bb.b, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, !prof !11

bb.b:                                             ; preds = %.lr.ph.i.prol
  store i8 %i.y, ptr %i.w, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol: ; preds = %bb.b, %.lr.ph.i.prol
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, %.lr.ph.i.preheader
  %.011.i.unr = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.z, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol ]
  %i.aa = icmp eq i64 %i.p, 0
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1
  %.011.i = phi ptr [ %i.as, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1 ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = zext i32 %.sroa.01.0.copyload.i to i64
  %i.ae = add i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  %spec.select.i.i = icmp ult i8 %i.ai, -2
  br i1 %spec.select.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i, !prof !11

bb.c:                                             ; preds = %.lr.ph.i
  store i8 %i.ai, ptr %i.ag, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = add i8 %i.aq, -1                        ; 2 uses
  %spec.select.i.i.1 = icmp ult i8 %i.ar, -2
  br i1 %spec.select.i.i.1, label %bb.d, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, !prof !11

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.as, %i.o
  br i1 %.not.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, %.lr.ph.i.prol.loopexit
  %.pre = load ptr, ptr %i.a, align 8
  %.pre28 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre29 = add i64 %.pre28, %i.d                 ; 2 uses
  %.pre31 = inttoptr i64 %.pre29 to ptr
  br label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, %bb.a
  %.pre-phi32 = phi ptr [ %.pre31, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %.pre-phi30 = phi i64 [ %.pre29, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre28, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.04.0.copyload = load i8, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = lshr i32 %1, 4
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2            ; 3 uses
  store ptr %.pre-phi32, ptr %i.au, align 8
  %i.bc = add i64 %3, 3
  %i.bd = lshr i64 %i.bc, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bd, i64 2) ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = sub i64 %i.bg, %.pre-phi30
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = icmp ult i64 %i.bi, %.sroa.speculated.i.i.i
  br i1 %i.bj, label %bb.e, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !14

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit
  %i.bk = sub i64 %i.bg, %.pre-phi
  %i.bl = lshr exact i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = add nuw i64 %i.bm, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %0, i64 noundef %i.bn)
  %.pre.i.i.i.i = load ptr, ptr %i.au, align 8    ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre26 = load ptr, ptr %i.a, align 8
  %.pre27 = load ptr, ptr %i.aw, align 8
  %.pre33 = ptrtoint ptr %.pre26 to i64
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit
  %.pre-phi34 = phi i64 [ %.pre33, %bb.e ], [ %.pre-phi, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
  %i.bo = phi ptr [ %.pre27, %bb.e ], [ %i.ax, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
  %.pre-phi.i.i.i.i = phi i64 [ %.pre10.i.i.i.i, %bb.e ], [ %.pre-phi30, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
  %i.bp = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %.pre-phi32, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ] ; 7 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.sroa.speculated.i.i.i
  store ptr %i.bq, ptr %i.au, align 8
  %i.br = sub i64 %.pre-phi.i.i.i.i, %.pre-phi34  ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.bu = lshr i64 %i.br, 4
  %i.bv = and i64 %i.bu, 268435455
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bv
  store i16 %i.bt, ptr %i.bw, align 2
  %i.bx = load ptr, ptr %i.aw, align 8
  %.tr.i.i.i.i = trunc i64 %.sroa.speculated.i.i.i to i32
  %i.by = shl i32 %.tr.i.i.i.i, 3
  %i.bz = add i32 %i.by, %i.bs
  %i.ca = lshr i32 %i.bz, 4
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.cc
  store i16 %i.bt, ptr %i.cd, align 2
  store i8 91, ptr %i.bp, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  store i8 0, ptr %i.ce, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 2 uses
  %i.cg = trunc i64 %3 to i16
  store i16 %i.cg, ptr %i.cf, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 5 uses
  %i.ci = icmp ugt i64 %3, 1
  br i1 %i.ci, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i.i = shl nuw nsw i64 %3, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr align 4 %2, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.cj = icmp eq i64 %3, 1
  br i1 %i.cj, label %bb.h, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

bb.h:                                             ; preds = %bb.g
  %i.ck = load i32, ptr %2, align 4
  store i32 %i.ck, ptr %i.ch, align 4
  br label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i8 %4, ptr %i.cl, align 4
  store ptr %i.av, ptr %i.au, align 8
  %i.cm = load ptr, ptr %i.aw, align 8
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.az
  store i16 %i.bb, ptr %i.cn, align 2
  %i.co = load ptr, ptr %i.aw, align 8
  %i.cp = zext i16 %i.bb to i32
end_hunk_7
