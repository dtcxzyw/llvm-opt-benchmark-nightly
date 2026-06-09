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
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 3 uses
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
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ah ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
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
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
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
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ag ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
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
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
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
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ag ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
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
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS5_22WasmMemoryContentTableES4_S6_E16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S6_EENS_4base6VectorIKS4_EEE_EEvNSL_IKNS7_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSL_IKT0_EEEEUlSJ_RSM_S11_E_EERNS7_12SnapshotDataESR_SU_:bb.a
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
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
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
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
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
  br label %bb.y

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
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

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
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE6NewKeyEb.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
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
  %i.dl = load i32, ptr %i.dk, align 4, !noalias !116
  %i.dm = icmp eq i32 %i.dl, %1
  br i1 %i.dm, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %.critedge.i, !prof !11

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.dn = add i16 %.sroa.035.065.i, -1
  %i.do = and i16 %i.dn, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.do, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.w
  %i.dp = icmp eq <16 x i8> %i.dd, splat (i8 -128)
  %i.dq = bitcast <16 x i1> %i.dp to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.dq, 0
  br i1 %.not57.i, label %bb.x, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19, !prof !14

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19: ; preds = %.critedge19.i
  %i.dr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dq, i1 true)
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = add i64 %.sroa.7.0.i, %i.ds
  %i.du = and i64 %i.dt, %i.bz
  %i.dv = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.cv, i64 %i.du, i64 %.sroa.15.0.i) #23, !noalias !116 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.cl, align 8, !noalias !116
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.dv
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.cy, align 8, !noalias !116
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.dv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.x:                                             ; preds = %.critedge19.i
  %i.dx = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.dy = add i64 %i.dx, %.sroa.7.0.i
  br label %bb.w

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread: ; preds = %bb.s, %bb.u, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19
  %i.dz = phi i32 [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19 ], [ %1, %bb.s ], [ %.pre, %bb.u ]
  %.sroa.4.016 = phi ptr [ %i.dw, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19 ], [ %i.cd, %bb.s ], [ %i.ck, %bb.u ] ; 2 uses
  store i32 %i.dz, ptr %.sroa.4.016, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.4.016, i64 8
  %i.eb = load i64, ptr %i.bx, align 8, !noalias !115
  store i64 %i.eb, ptr %i.ea, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit: ; preds = %.lr.ph.i, %bb.t, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.y

bb.y:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorptEv.exit
  %.sroa.014.0 = phi ptr [ %i.bb, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorptEv.exit ], [ %i.bw, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit ]
  ret ptr %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE16_M_push_back_auxIJS6_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 42
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 12
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 12
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1537228672809129301
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.ae, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.g, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = sub i64 %i.ag, %i.ak
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %bb.d, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE22_M_reserve_map_at_backEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %.not5.i.i.i = icmp ult i64 %i.aq, 42
  br i1 %.not5.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ao, align 8
  store ptr %i.ar, ptr %i.an, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE16_M_allocate_nodeEv.exit

bb.g:                                             ; preds = %bb.e, %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE22_M_reserve_map_at_backEm.exit
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = icmp ult i64 %i.ax, 504
  br i1 %i.ay, label %bb.h, label %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i, !prof !14

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.as, i64 noundef 504) #23
  %.pre.i.i.i.i.i.i = load i64, ptr %i.av, align 8
  br label %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i

_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.az = phi i64 [ %.pre.i.i.i.i.i.i, %bb.h ], [ %i.aw, %bb.g ] ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = add i64 %i.az, 504
  store i64 %i.bb, ptr %i.av, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE16_M_allocate_nodeEv.exit

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE16_M_allocate_nodeEv.exit: ; preds = %bb.f, %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.ba, %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i ]
  %i.bc = load ptr, ptr %i.c, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.0.i.i.i, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.be, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.bf = load ptr, ptr %i.c, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.c, align 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  store ptr %i.bh, ptr %i.o, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 504
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bi, ptr %i.bj, align 8
  store ptr %i.bh, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = add nsw i64 %i.i, 1                      ; 3 uses
  %i.k = add i64 %i.j, %1                         ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  %i.n = shl i64 %i.k, 1
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = sub i64 %i.m, %i.k
  %i.r = lshr i64 %i.q, 1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  %i.t = select i1 %2, i64 %1, i64 0
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 10 uses
  %i.v = icmp ult ptr %i.u, %i.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.g                       ; 3 uses
  %i.z = icmp sgt i64 %i.y, 8
  br i1 %i.z, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.u, ptr nonnull align 8 %i.e, i64 %i.y, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEES8_ET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.y, 8
  br i1 %i.aa, label %bb.f, label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEES8_ET0_T_SA_S9_.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.e, align 8
  store ptr %i.ab, ptr %i.u, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEES8_ET0_T_SA_S9_.exit

bb.g:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.j ; 2 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.ad, %i.g                     ; 3 uses
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 1
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.e, i64 %i.ae, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEES8_ET0_T_SA_S9_.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = icmp eq i64 %i.ae, 8
  br i1 %i.aj, label %bb.j, label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEES8_ET0_T_SA_S9_.exit

bb.j:                                             ; preds = %bb.i
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE27SealAndSaveVariableSnapshotEv(ptr noundef nonnull align 8 dereferenceable(2192) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1928 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 4
  store i64 %i.l, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1952 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.n, %i.p
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.m, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %i.q = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.n, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1984
  store ptr %i.s, ptr %i.t, align 8
  store ptr %i.q, ptr %i.o, align 8
  %i.u = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.c, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.012.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.aa = load ptr, ptr %.012.i, align 8          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 -1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  store i32 -1, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.p
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.ae = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1856 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1864 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 4 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -32
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.an, 16
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 16, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.ak, align 8
  store ptr %i.ap, ptr %i.ai, align 8
  store ptr %i.ai, ptr %i.ak, align 8
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i

_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i: ; preds = %bb.g, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1880 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  store ptr %i.at, ptr %i.ah, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1872
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 480
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i

_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i: ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i, %bb.d
  %storemerge.i.i = phi ptr [ %i.aj, %bb.d ], [ %i.aw, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i ]
  store ptr %storemerge.i.i, ptr %i.af, align 8
  store ptr %i.ae, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit: ; preds = %._crit_edge.i, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i
  %.sroa.0.0.i = phi ptr [ %i.ae, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i ], [ %i.u, %._crit_edge.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 4
  %i.ba = zext i32 %.sroa.0.0.copyload.i to i64   ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2088 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 4
  %.not.i1 = icmp ugt i64 %i.bi, %i.ba
  br i1 %.not.i1, label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit, label %bb.h, !prof !11

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 2 uses
  %i.bk = lshr i64 %i.ba, 1
  %i.bl = add nuw nsw i64 %i.ba, 32
  %i.bm = add nuw nsw i64 %i.bl, %i.bk
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2104
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bd, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 4
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.bt)
  %.pre.i2 = load ptr, ptr %i.bd, align 8
  br label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit

_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit, %bb.h
  %i.bu = phi ptr [ %.pre.i2, %bb.h ], [ %i.be, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit ]
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.ba ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !5, !noundef !6
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = ptrtoint ptr %.sroa.0.0.i to i64
  br i1 %i.by, label %_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit
  store i8 1, ptr %i.bw, align 8
  br label %_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit

_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit, %bb.i
  store i64 %i.bz, ptr %i.bv, align 8
  store ptr null, ptr %i.ax, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey.1256", align 8 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !noalias !209 ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !216
  %.not.i.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !216 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4, !noalias !216
  %i.f = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4, !noalias !216
  %i.g = icmp eq i32 %i.f, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.g, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_.exit, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !216
  store ptr %0, ptr %2, align 8, !noalias !216
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.h, align 8, !noalias !216
  %i.i = call { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft10BlockIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #23, !noalias !216
  %i.j = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !216
  br label %bb.f

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !219 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !219
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !219
  %sext.i = shl i64 %i.m, 48
  %i.n = ashr exact i64 %sext.i, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4, !noalias !219 ; 2 uses
  %i.o = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.p = xor i64 %i.n, %i.o
  %i.q = zext i64 %i.p to i128
  %i.r = mul nuw nsw i128 %i.q, 8779197792823184629 ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = xor i128 %i.s, %i.r
  %i.u = trunc i128 %i.t to i64                   ; 3 uses
  %i.v = lshr i64 %i.u, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.x, align 8, !noalias !219 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i
  %.pn.i = phi i64 [ %i.u, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i ], [ %i.ar, %bb.e ]
  %.sroa.15.0.i = phi i64 [ 0, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i ], [ %i.aq, %bb.e ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1), !noalias !219
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !noalias !219 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.ae, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.an, %.critedge.i ], [ %i.ae, %bb.d ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.7.0.i, %i.ag
  %i.ai = and i64 %i.ah, %i.a
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !219
  %i.al = icmp eq i32 %i.ak, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.al, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_.exit, label %.critedge.i, !prof !11

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.am = add i16 %.sroa.035.065.i, -1
  %i.an = and i16 %i.am, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.an, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.d
  %i.ao = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.ap, 0
  br i1 %.not57.i, label %bb.e, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i._crit_edge.i, !prof !14

bb.e:                                             ; preds = %.critedge19.i
  %i.aq = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.7.0.i
  br label %bb.d

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i._crit_edge.i: ; preds = %.critedge19.i
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %.sroa.7.0.i, %i.at
  %i.av = and i64 %i.au, %i.a
  %i.aw = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.u, i64 %i.av, i64 %.sroa.15.0.i) #23, !noalias !219 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.k, align 8, !noalias !219
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.aw
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.x, align 8, !noalias !219
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i._crit_edge.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i
  %.sroa.6.0 = phi ptr [ %i.j, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i ], [ %i.ax, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i._crit_edge.i ] ; 3 uses
  %i.ay = load i32, ptr %1, align 4, !noalias !222
  store i32 %i.ay, ptr %.sroa.6.0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 40
  store i8 0, ptr %i.az, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_.exit: ; preds = %.lr.ph.i, %bb.c, %bb.f
  %.sroa.6.1 = phi ptr [ %.sroa.6.0, %bb.f ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.c ], [ %i.aj, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.6.1, i64 8
  ret ptr %i.ba
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %.not.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE14EnsureCapacityEm.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE14EnsureCapacityEm.exit

_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ]
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE14EnsureCapacityEm.exit
  store ptr %i.j, ptr %i.k, align 8
  ret void

.lr.ph:                                           ; preds = %_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE14EnsureCapacityEm.exit, %.lr.ph
  %.01012 = phi ptr [ %i.o, %.lr.ph ], [ %i.l, %_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE14EnsureCapacityEm.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01012, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.01012, i64 16 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.j
  br i1 %i.p, label %.lr.ph, label %.preheader, !llvm.loop !223
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
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
  %i.m = ashr exact i64 %i.l, 3
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 1152921504606846975
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 4                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE8SnapshotEEA_SB_EEPT_m.exit, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #23
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE8SnapshotEEA_SB_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE8SnapshotEEA_SB_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE8SnapshotEEA_SB_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE8SnapshotEEA_SB_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE8SnapshotEEA_SB_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
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
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #23
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #18 comdat {
bb.a:
  tail call void @abort() #22
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES9_SA_SD_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSF_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSQ_13VariableTableES4_S5_E16StartNewSnapshotISY_EEvNSV_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSV_IKT0_EEEEUlSU_RSW_S1F_E_EEvS15_S18_RS1D_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !11

end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE33AssembleOutputGraphCheckExceptionERKNS2_16CheckExceptionOpE:bb.a

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
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8 ; 2 uses
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
  br i1 %i.an, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a, label %bb.f, !prof !11

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
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8
  %i.av = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4
  %i.aw = icmp eq i32 %i.av, %i.g
  br i1 %i.aw, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a: ; preds = %.lr.ph.i.i.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %i.g, ptr %3, align 4
  %i.ax = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i8, ptr %i.ay, align 8, !range !5, !noundef !6
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not37 = icmp eq ptr %i.bc, %i.be
  br i1 %.not37, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.038 = phi ptr [ %i.bc, %.lr.ph ], [ %i.bq, %bb.i ] ; 3 uses
  %.sroa.0.0.copyload24 = load ptr, ptr %.038, align 8
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.038, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..0.sroa_idx, align 8 ; 2 uses
  %i.bg = load ptr, ptr %i.e, align 8, !nonnull !6, !align !10 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = zext i32 %.sroa.4.0.copyload to i64
  %i.bl = add i64 %i.bj, %i.bk
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bn, align 4
  store i32 %.sroa.0.0.copyload.i.i, ptr %4, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload24, i64 16
  %.sroa.02.0.copyload.i = load i32, ptr %i.bo, align 4
  store i32 %.sroa.02.0.copyload.i, ptr %i.bf, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.sroa.0.0.copyload = load i8, ptr %i.bp, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.bg, i32 %.sroa.4.0.copyload, ptr nonnull %4, i64 2, i8 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bq = getelementptr inbounds nuw i8, ptr %.038, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.be
  br i1 %.not, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.i

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.i, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, %bb.c, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit, %bb.a
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
end_hunk_4
