inline.NumInlined: 4977
inline.NumDeleted: 2626
begin_hunk_0_@_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = icmp eq i8 %i.aa, 8
  %spec.select.i4 = select i1 %i.ab, i32 282380, i32 282383
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.i:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = icmp eq i8 %i.ad, 2
  %spec.select.i5 = select i1 %i.ae, i32 486483, i32 487263
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.j:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !range !5, !noundef !7 ; 2 uses
  %i.ah = trunc nuw i8 %i.ag to i1
  %spec.select.i6 = select i1 %i.ah, i8 67, i8 3  ; 2 uses
  %spec.select28.i = shl nuw nsw i8 %i.ag, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.aj = load i8, ptr %i.ai, align 1, !range !5, !noundef !7
  %i.ak = trunc nuw i8 %i.aj to i1                ; 2 uses
  %.sroa.0.0.insert.insert.i17.i.i7 = or disjoint i8 %spec.select.i6, 12
  %.sroa.013.1.i = select i1 %i.ak, i8 %.sroa.0.0.insert.insert.i17.i.i7, i8 %spec.select.i6
  %i.al = zext nneg i8 %spec.select28.i to i32
  %i.am = shl nuw nsw i32 %i.al, 16
  %i.an = or disjoint i32 %i.am, 19456
  %.sroa.6.0.insert.insert.i8 = select i1 %i.ak, i32 282368, i32 %i.an
  %.sroa.013.0.insert.ext.i = zext nneg i8 %.sroa.013.1.i to i32
  %.sroa.013.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.insert.i8, %.sroa.013.0.insert.ext.i
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.k:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i8, ptr %i.ao, align 4, !range !5, !noundef !7
  %i.aq = trunc nuw i8 %i.ap to i1
  %.sroa.09.0.insert.insert.i = select i1 %i.aq, i32 282447, i32 282380
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.l:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.as = load i8, ptr %i.ar, align 1, !range !5, !noundef !7
  %i.at = trunc nuw i8 %i.as to i1
  %.sroa.015.0.insert.insert.i9 = select i1 %i.at, i32 282447, i32 282383
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.m:                                             ; preds = %bb.b
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.n:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.av = load i8, ptr %i.au, align 4, !range !5, !noundef !7 ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1
  %spec.select17.i = shl nuw nsw i8 %i.av, 2
  %.sroa.512.0.insert.ext.i = zext nneg i8 %spec.select17.i to i32
  %.sroa.512.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 16
  %.sroa.07.0.insert.ext.i = select i1 %i.aw, i32 67, i32 3
  %.sroa.49.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.shift.i, %.sroa.07.0.insert.ext.i
  %.sroa.07.0.insert.insert.i = or disjoint i32 %.sroa.49.0.insert.insert.i, 19456
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.o:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = load i8, ptr %i.ax, align 4, !range !5, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %.sroa.0.0.insert.insert.i.i = select i1 %i.az, i32 282380, i32 19459 ; 4 uses
  %.sroa.8.0.extract.shift21.i = and i32 %.sroa.0.0.insert.insert.i.i, 262144
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = and i8 %i.bb, 4
  %.not.i10 = icmp eq i8 %i.bc, 0                 ; 2 uses
  %.sroa.013.0.extract.trunc.i = or i32 %.sroa.0.0.insert.insert.i.i, 67
  %spec.select.i11 = select i1 %.not.i10, i32 %.sroa.0.0.insert.insert.i.i, i32 %.sroa.013.0.extract.trunc.i
  %spec.select39.i = select i1 %.not.i10, i32 %.sroa.8.0.extract.shift21.i, i32 262144
  %.sroa.616.0.insert.ext.i = and i32 %.sroa.0.0.insert.insert.i.i, 20224
  %.sroa.616.0.insert.insert.i = or disjoint i32 %spec.select39.i, %.sroa.616.0.insert.ext.i
  %.sroa.013.0.insert.ext.i12 = and i32 %spec.select.i11, 79
  %.sroa.013.0.insert.insert.i13 = or disjoint i32 %.sroa.616.0.insert.insert.i, %.sroa.013.0.insert.ext.i12
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.p:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = load i8, ptr %i.bd, align 4
  %i.bf = and i8 %i.be, 4                         ; 2 uses
  %.not.i14 = icmp eq i8 %i.bf, 0
  %spec.select.i15 = select i1 %.not.i14, i32 3, i32 67
  %.sroa.512.0.insert.ext.i16 = zext nneg i8 %i.bf to i32
  %.sroa.512.0.insert.shift.i17 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i16, 16
  %.sroa.49.0.insert.insert.i18 = or disjoint i32 %.sroa.512.0.insert.shift.i17, %spec.select.i15
  %.sroa.07.0.insert.insert.i19 = or disjoint i32 %.sroa.49.0.insert.insert.i18, 19456
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.q:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = load i8, ptr %i.bg, align 4
  %i.bi = and i8 %i.bh, 4                         ; 2 uses
  %.not.i20 = icmp eq i8 %i.bi, 0
  %spec.select.i21 = select i1 %.not.i20, i32 3, i32 67
  %.sroa.512.0.insert.ext.i22 = zext nneg i8 %i.bi to i32
  %.sroa.512.0.insert.shift.i23 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i22, 16
  %.sroa.49.0.insert.insert.i24 = or disjoint i32 %.sroa.512.0.insert.shift.i23, %spec.select.i21
  %.sroa.07.0.insert.insert.i25 = or disjoint i32 %.sroa.49.0.insert.insert.i24, 19456
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.r:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9) #25
  unreachable

_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit: ; preds = %switch.lookup, %bb.b, %bb.a, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.1 = phi i32 [ %.sroa.014.0.insert.insert.i, %bb.c ], [ %.sroa.021.0.insert.insert.i, %bb.d ], [ %.sroa.0.0.copyload.i, %bb.e ], [ %.sroa.0.0.copyload.i3, %bb.f ], [ %.sroa.0.0.copyload26, %bb.a ], [ %.sroa.015.0.insert.insert.i, %bb.g ], [ %spec.select.i4, %bb.h ], [ %spec.select.i5, %bb.i ], [ %switch.ext, %switch.lookup ], [ %.sroa.013.0.insert.insert.i, %bb.j ], [ %.sroa.09.0.insert.insert.i, %bb.k ], [ %.sroa.015.0.insert.insert.i9, %bb.l ], [ 282383, %bb.m ], [ %.sroa.07.0.insert.insert.i, %bb.n ], [ %.sroa.013.0.insert.insert.i13, %bb.o ], [ %.sroa.07.0.insert.insert.i19, %bb.p ], [ %.sroa.07.0.insert.insert.i25, %bb.q ], [ 487263, %bb.b ]
  ret i32 %.sroa.0.1
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer30InvalidateAllNonAliasingInputsERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(1512) %0, ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 2              ; 2 uses
  %i.h = zext i16 %i.g to i64
  %.idx = shl nuw nsw i64 %i.h, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not10 = icmp eq i16 %i.g, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi ptr [ %i.j, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %.011, align 4
  tail call void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer17InvalidateIfAliasENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %.sroa.01.0.copyload)
  %i.j = getelementptr inbounds nuw i8, ptr %.011, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable10InvalidateENS2_7OpIndexENS2_15OptionalOpIndexEi(ptr noundef nonnull align 8 dereferenceable(496) %0, i32 %1, i32 %2, i32 noundef %3) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !align !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = lshr i32 %1, 4
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i, label %_ZN2v88internal8compiler10turboshaft18MemoryContentTable11ResolveBaseENS2_7OpIndexE.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.j = phi i64 [ %i.n, %.lr.ph.i ], [ %i.f, %bb.a ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.l, align 4 ; 2 uses
  %i.m = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %.lr.ph.i, label %_ZN2v88internal8compiler10turboshaft18MemoryContentTable11ResolveBaseENS2_7OpIndexE.exit, !llvm.loop !25

_ZN2v88internal8compiler10turboshaft18MemoryContentTable11ResolveBaseENS2_7OpIndexE.exit: ; preds = %.lr.ph.i, %bb.a
  %.sroa.03.0.lcssa.i = phi i32 [ %1, %bb.a ], [ %.sroa.0.0.copyload.i.i, %.lr.ph.i ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !7, !align !8
  %i.t = tail call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.s, i32 %.sroa.03.0.lcssa.i)
  br i1 %i.t, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18MemoryContentTable11ResolveBaseENS2_7OpIndexE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = icmp ult i64 %i.v, 2
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.y = load i64, ptr %i.x, align 8
  %.not.i.i.i = icmp ult i64 %i.y, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.z, align 8 ; 2 uses
  %i.aa = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 4
  %i.ab = icmp eq i32 %i.aa, %.sroa.03.0.lcssa.i
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.ab, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ac, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ae = load i64, ptr %i.ad, align 8
  %sext.i = shl i64 %i.ae, 48
  %i.af = ashr exact i64 %sext.i, 48
  %i.ag = zext i32 %.sroa.03.0.lcssa.i to i64
  %i.ah = xor i64 %i.af, %i.ag
  %i.ai = zext i64 %i.ah to i128
  %i.aj = mul nuw nsw i128 %i.ai, 8779197792823184629 ; 2 uses
  %i.ak = lshr i128 %i.aj, 64
  %i.al = xor i128 %i.ak, %i.aj
  %i.am = trunc i128 %i.al to i64                 ; 2 uses
  %i.an = lshr i64 %i.am, 57
  %i.ao = trunc nuw nsw i64 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.ap, align 8 ; 2 uses
  %i.aq = insertelement <16 x i8> poison, i8 %i.ao, i64 0
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i8.i = phi i64 [ %i.am, %bb.e ], [ %i.bk, %bb.h ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.e ], [ %i.bj, %bb.h ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.v        ; 4 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.as, i32 0, i32 3, i32 1)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.au = load <16 x i8>, ptr %i.at, align 1      ; 2 uses
  %i.av = icmp eq <16 x i8> %i.ar, %i.au
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.sroa.017.047.i.i = phi i16 [ %i.bg, %bb.g ], [ %i.aw, %bb.f ] ; 3 uses
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = add i64 %.sroa.6.0.i.i, %i.ay
  %i.ba = and i64 %i.az, %i.v                     ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = icmp eq i32 %i.bc, %.sroa.03.0.lcssa.i
  br i1 %i.bd, label %.thread33.i.i, label %bb.g, !prof !6

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ba ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.bf = add i16 %.sroa.017.047.i.i, -1
  %i.bg = and i16 %i.bf, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %i.bh = icmp eq <16 x i8> %i.au, splat (i8 -128)
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %.not44.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not44.i.i, label %bb.h, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i, !prof !9

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.bj = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.6.0.i.i
  br label %bb.f, !llvm.loop !26

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.be, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.bb, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit: ; preds = %bb.c, %bb.d, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i ], [ { ptr null, ptr undef }, %bb.c ], [ %spec.select.i.i, %bb.d ] ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %.pn.i, 0     ; 6 uses
  %i.bm = extractvalue { ptr, ptr } %.pn.i, 1     ; 2 uses
  %i.bn = icmp eq ptr %i.bl, null                 ; 2 uses
  %i.bo = icmp eq ptr %i.bl, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.bn, %i.bo
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i

bb.i:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit
  %i.bp = load i8, ptr %i.bl, align 1
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit
  br i1 %i.bo, label %bb.k, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorESN_.exit, !prof !9

bb.k:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.bn, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorESN_.exit
  %i.br = load i8, ptr %i.bl, align 1
  %i.bs = icmp sgt i8 %i.br, -1
  br i1 %i.bs, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit, label %bb.m, !prof !6

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit: ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bt, align 8
  %.not86 = icmp eq i32 %2, -1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit16

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit16: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit, %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit
  %.sroa.066.092 = phi ptr [ %.sroa.0.0.copyload.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit ], [ %.sroa.066.1, %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit ] ; 9 uses
  %.not.i = icmp eq ptr %.sroa.066.092, null
  br i1 %.not.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit27.lr.ph, label %bb.o

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit27.lr.ph: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.0.0.copyload.i19 = load ptr, ptr %i.by, align 8
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit27

bb.o:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit16
  br i1 %.not86, label %bb.p, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit21

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.066.092, i64 8
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = icmp eq i32 %3, %i.ca
  br i1 %i.cb, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit21, label %bb.ac

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit21: ; preds = %bb.o, %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.066.092, i64 24 ; 2 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %i.cc, align 8 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.066.092, i64 16 ; 6 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE8RemoveAtERNSA_8iteratorE.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit21
  %i.cg = ptrtoint ptr %.sroa.03.0.copyload.i to i64
  store i64 %i.cg, ptr %i.ce, align 8
  %.not.i.i23 = icmp eq ptr %.sroa.03.0.copyload.i, null
  br i1 %.not.i.i23, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = load ptr, ptr %i.cd, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 16
  store ptr %i.ch, ptr %i.ci, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE8RemoveAtERNSA_8iteratorE.exit

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE8RemoveAtERNSA_8iteratorE.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit21, %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.066.092, i64 48 ; 2 uses
  %.sroa.07.0.copyload.i = load i32, ptr %i.cj, align 8 ; 2 uses
  %.not.i24 = icmp eq i32 %.sroa.07.0.copyload.i, -1
  br i1 %.not.i24, label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE8RemoveAtERNSA_8iteratorE.exit
  %i.ck = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.cl = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.cm = icmp ult ptr %i.ck, %i.cl
  br i1 %i.cm, label %bb.v, label %bb.u, !prof !6

bb.u:                                             ; preds = %bb.t
  %i.cn = load ptr, ptr %i.bx, align 8
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 4
  %i.cs = add nsw i64 %i.cr, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 noundef %i.cs)
  %.pre.i.i.i.i = load ptr, ptr %i.bu, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ct = phi ptr [ %i.ck, %bb.t ], [ %.pre.i.i.i.i, %bb.u ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store ptr %i.cu, ptr %i.bu, align 8
  store ptr %.sroa.066.092, ptr %i.ct, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 %.sroa.07.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  store i32 -1, ptr %i.cj, align 8
  %i.cv = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE6RemoveES8_.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = load i64, ptr %i.cc, align 8            ; 3 uses
  store i64 %i.cx, ptr %i.cv, align 8
  %.not.i.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = load ptr, ptr %i.cd, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.cz, ptr %i.da, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE6RemoveES8_.exit.i.i.i

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE6RemoveES8_.exit.i.i.i: ; preds = %bb.y, %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.066.092, i64 32 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit, label %bb.z

bb.z:                                             ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE6RemoveES8_.exit.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.066.092, i64 40
  %i.df = load i64, ptr %i.de, align 8            ; 3 uses
  store i64 %i.df, ptr %i.dc, align 8
  %.not.i3.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i3.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load ptr, ptr %i.db, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store ptr %i.dh, ptr %i.di, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i8 0, i64 16, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft18MemoryContentTable23InvalidateMaybeAliasingEv:bb.a

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.cd = phi ptr [ %i.bu, %bb.aa ], [ %.pre.i.i.i.i34, %bb.ab ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.ce, ptr %i.r, align 8
  store ptr %.sroa.0.057, ptr %i.cd, align 8
  %.sroa.4.0..sroa_idx.i.i35 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %.sroa.07.0.copyload.i32, ptr %.sroa.4.0..sroa_idx.i.i35, align 8
  %.sroa.5.0..sroa_idx.i.i36 = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i36, align 4
  store i32 -1, ptr %i.bt, align 8
  %i.cf = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE6RemoveES8_.exit.i.i.i39, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ch = load i64, ptr %i.bm, align 8            ; 3 uses
  store i64 %i.ch, ptr %i.cf, align 8
  %.not.i.i.i.i38 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.i38, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load ptr, ptr %i.bn, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %i.cj, ptr %i.ck, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE6RemoveES8_.exit.i.i.i39

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE6RemoveES8_.exit.i.i.i39: ; preds = %bb.af, %bb.ac
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.057, i64 32 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit41, label %bb.ag

bb.ag:                                            ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE6RemoveES8_.exit.i.i.i39
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.057, i64 40
  %i.cp = load i64, ptr %i.co, align 8            ; 3 uses
  store i64 %i.cp, ptr %i.cm, align 8
  %.not.i3.i.i.i40 = icmp eq i64 %i.cp, 0
  br i1 %.not.i3.i.i.i40, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load ptr, ptr %i.cl, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store ptr %i.cr, ptr %i.cs, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit41

_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit41: ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE8RemoveAtERNSA_8iteratorE.exit31, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE6RemoveES8_.exit.i.i.i39, %bb.ai
  %.not.i26 = icmp eq ptr %.sroa.03.0.copyload.i29, null
  br i1 %.not.i26, label %.loopexit, label %.lr.ph59, !llvm.loop !34

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit41, %._crit_edge, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratordeEv.exit
  %i.ct = load i8, ptr %.sroa.045.0, align 1
  %i.cu = icmp sgt i8 %i.ct, -1
  br i1 %i.cu, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator14assert_is_fullEPKc.exit.i, label %bb.aj, !prof !6

bb.aj:                                            ; preds = %.loopexit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.24) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator14assert_is_fullEPKc.exit.i: ; preds = %.loopexit
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 1 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 24 ; 2 uses
  %i.cx = load i8, ptr %i.cv, align 1             ; 2 uses
  %i.cy = icmp slt i8 %i.cx, -1
  br i1 %i.cy, label %.lr.ph.i.i42, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i42:                                     ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator14assert_is_fullEPKc.exit.i, %.lr.ph.i.i42
  %i.cz = phi ptr [ %i.dc, %.lr.ph.i.i42 ], [ %i.cw, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator14assert_is_fullEPKc.exit.i ]
  %i.da = phi ptr [ %i.db, %.lr.ph.i.i42 ], [ %i.cv, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator14assert_is_fullEPKc.exit.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  %i.dd = load i8, ptr %i.db, align 1             ; 2 uses
  %i.de = icmp slt i8 %i.dd, -1
  br i1 %i.de, label %.lr.ph.i.i42, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !32

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i42, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator14assert_is_fullEPKc.exit.i
  %.sroa.045.1 = phi ptr [ %i.cv, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator14assert_is_fullEPKc.exit.i ], [ %i.db, %.lr.ph.i.i42 ]
  %.sroa.9.1 = phi ptr [ %i.cw, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator14assert_is_fullEPKc.exit.i ], [ %i.dc, %.lr.ph.i.i42 ]
  %i.df = phi i8 [ %i.cx, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator14assert_is_fullEPKc.exit.i ], [ %i.dd, %.lr.ph.i.i42 ]
  %i.dg = icmp eq i8 %i.df, -1
  br i1 %i.dg, label %bb.ak, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorppEv.exit.backedge, !prof !9

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorppEv.exit.backedge: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator21skip_empty_or_deletedEv.exit.i, %bb.ak
  %.sroa.045.0.be = phi ptr [ null, %bb.ak ], [ %.sroa.045.1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator21skip_empty_or_deletedEv.exit.i ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorppEv.exit

bb.ak:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator21skip_empty_or_deletedEv.exit.i
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorppEv.exit.backedge
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertERKNS2_7StoreOpE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !align !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.lr.ph.i, label %_ZN2v88internal8compiler10turboshaft18MemoryContentTable11ResolveBaseENS2_7OpIndexE.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.k = phi i64 [ %i.o, %.lr.ph.i ], [ %i.g, %bb.a ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.0.0.copyload.i.i23 = load i32, ptr %i.m, align 4 ; 2 uses
  %i.n = lshr i32 %.sroa.0.0.copyload.i.i23, 4
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %.lr.ph.i, label %_ZN2v88internal8compiler10turboshaft18MemoryContentTable11ResolveBaseENS2_7OpIndexE.exit, !llvm.loop !25

_ZN2v88internal8compiler10turboshaft18MemoryContentTable11ResolveBaseENS2_7OpIndexE.exit: ; preds = %.lr.ph.i, %bb.a
  %.sroa.03.0.lcssa.i = phi i32 [ %.sroa.0.0.copyload.i.i, %bb.a ], [ %.sroa.0.0.copyload.i.i23, %.lr.ph.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.t = load i16, ptr %i.s, align 2
  %i.u = icmp eq i16 %i.t, 3
  br i1 %i.u, label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit, label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread

_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft18MemoryContentTable11ResolveBaseENS2_7OpIndexE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i24 = load i32, ptr %i.v, align 4
  %.sroa.0.0.copyload.i.i24.fr = freeze i32 %.sroa.0.0.copyload.i.i24 ; 2 uses
  %.not31 = icmp eq i32 %.sroa.0.0.copyload.i.i24.fr, -1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.x = load i8, ptr %i.w, align 1
  %spec.select = select i1 %.not31, i8 0, i8 %i.x
  br label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread

_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft18MemoryContentTable11ResolveBaseENS2_7OpIndexE.exit, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit
  %.sroa.01.0.i30 = phi i32 [ %.sroa.0.0.copyload.i.i24.fr, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft18MemoryContentTable11ResolveBaseENS2_7OpIndexE.exit ] ; 2 uses
  %i.y = phi i8 [ %spec.select, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit ], [ 0, %_ZN2v88internal8compiler10turboshaft18MemoryContentTable11ResolveBaseENS2_7OpIndexE.exit ] ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %.in, align 4              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i25 = load i32, ptr %i.aa, align 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext nneg i8 %i.ac to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertERKNS2_7StoreOpE, i64 %i.ad
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ae = shl nuw nsw i8 1, %switch.load          ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = and i8 %i.ag, 32
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread
  tail call void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable15InsertImmutableENS2_7OpIndexENS2_15OptionalOpIndexEihhS4_(ptr noundef nonnull align 8 dereferenceable(496) %0, i32 %.sroa.03.0.lcssa.i, i32 %.sroa.01.0.i30, i32 noundef %i.z, i8 noundef zeroext %i.y, i8 noundef zeroext %i.ae, i32 %.sroa.0.0.copyload.i.i25)
  br label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread
  tail call void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertENS2_7OpIndexENS2_15OptionalOpIndexEihhS4_(ptr noundef nonnull align 8 dereferenceable(496) %0, i32 %.sroa.03.0.lcssa.i, i32 %.sroa.01.0.i30, i32 noundef %i.z, i8 noundef zeroext %i.y, i8 noundef zeroext %i.ae, i32 %.sroa.0.0.copyload.i.i25)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE9HasKeyForENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #9 comdat align 2 {
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
  br i1 %i.ak, label %.thread33.i.i.i, label %bb.f, !prof !6

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
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit, !prof !9

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !35

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit: ; preds = %.thread33.i.i.i, %bb.c
  %.pn.i.i = phi ptr [ %i.i, %bb.c ], [ %i.al, %.thread33.i.i.i ] ; 4 uses
  %i.as = icmp eq ptr %.pn.i.i, null
  %i.at = icmp eq ptr %.pn.i.i, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i.i = or i1 %i.as, %i.at
  br i1 %or.cond.i.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit
  %i.au = load i8, ptr %.pn.i.i, align 1
  %i.av = icmp sgt i8 %i.au, -1
  br i1 %i.av, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit
  br i1 %i.at, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit, !prof !36

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  %.pn.i.i1113 = phi ptr [ %.pn.i.i, %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i ], [ null, %bb.b ], [ null, %._crit_edge.i.i.i ]
  %i.aw = icmp ne ptr %.pn.i.i1113, null
  ret i1 %i.aw
}

declare i64 @_ZN2v88internal8compiler10turboshaft15TryGetBuiltinIdEPKNS2_10ConstantOpEPNS1_12JSHeapBrokerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer17InvalidateIfAliasENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = tail call { ptr, i8 } @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE12TryGetKeyForENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.a, i32 %1) ; 2 uses
  %i.c = extractvalue { ptr, i8 } %i.b, 0         ; 3 uses
  %i.d = extractvalue { ptr, i8 } %i.b, 1
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.c, align 1, !range !5, !noundef !7
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
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
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !7, !align !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = zext i32 %1 to i64
  %i.ac = add i64 %i.aa, %i.ab
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %.not = icmp eq i8 %i.ae, 92
  br i1 %.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  %i.ai = zext i16 %i.ah to i64
  %.idx = shl nuw nsw i64 %i.ai, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx
  %.not1722 = icmp eq i16 %i.ah, 0
  br i1 %.not1722, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.023 = phi ptr [ %i.ak, %.lr.ph ], [ %i.af, %bb.f ] ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %.023, align 4
  tail call void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer17InvalidateIfAliasENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %.sroa.01.0.copyload)
  %i.ak = getelementptr inbounds nuw i8, ptr %.023, i64 4 ; 2 uses
  %.not17 = icmp eq ptr %i.ak, %i.aj
  br i1 %.not17, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE12TryGetKeyForENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #9 comdat align 2 {
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
  br i1 %i.aj, label %.thread33.i.i.i, label %bb.f, !prof !6

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
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i, !prof !9

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !35

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
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit, !prof !9

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
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

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer17InvalidateAllMapsEv(ptr noundef nonnull align 8 dereferenceable(1512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 888
  tail call void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable18InvalidateAtOffsetEiNS2_15OptionalOpIndexE(ptr noundef nonnull align 8 dereferenceable(496) %i.a, i32 noundef 0, i32 -1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.c = load i64, ptr %i.b, align 8
  %.not.i.i.i = icmp ult i64 %i.c, 131072
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ult i64 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8 ; 2 uses
  %i.i = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.j = icmp slt i8 %i.i, -1
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ]
  %i.l = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.o = load i8, ptr %i.m, align 1
  %i.p = icmp slt i8 %i.o, -1
  br i1 %i.p, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit, !llvm.loop !21

_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a, %bb.b, %bb.c
  %.sroa.6.0.i.i = phi ptr [ undef, %bb.a ], [ %i.g, %bb.b ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ], [ %i.n, %.lr.ph.i.i.i ]
  %.sroa.0.0.i.i = phi ptr [ null, %bb.a ], [ @_ZN4absl18container_internal11kSooControlE, %bb.b ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.c ], [ %i.m, %.lr.ph.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 712
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge, %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit
  %.sroa.05.0 = phi ptr [ %.sroa.0.0.i.i, %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit ], [ %.sroa.05.0.be, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge ] ; 6 uses
  %.sroa.9.0 = phi ptr [ %.sroa.6.0.i.i, %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit ], [ %.sroa.9.1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge ] ; 2 uses
  %i.u = icmp eq ptr %.sroa.05.0, null            ; 2 uses
  %i.v = icmp eq ptr %.sroa.05.0, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.u, %i.v
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit
  %i.w = load i8, ptr %.sroa.05.0, align 1
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.d, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit
  br i1 %i.v, label %bb.f, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit, !prof !9

bb.f:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit
  ret void

bb.h:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit
  %i.y = load i8, ptr %.sroa.05.0, align 1
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit: ; preds = %bb.h
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %i.aa = load i64, ptr %.sroa.3.0.copyload, align 8
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp ne i64 %i.ad, -1
  %.not10.i = select i1 %i.ab, i1 true, i1 %i.ae
  br i1 %.not10.i, label %bb.j, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i

bb.j:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit
  %.sroa.4.i.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.3.0.copyload, align 8
  %i.af = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.ag = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ah = icmp ult ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.t, align 8
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 40
  %i.an = add nsw i64 %i.am, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.an)
  %.pre.i.i.i = load ptr, ptr %i.q, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %bb.j, %bb.k
  %i.ao = phi ptr [ %i.af, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.ap, ptr %i.q, align 8
  store ptr %.sroa.3.0.copyload, ptr %i.ao, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store <2 x i64> %.sroa.4.i.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 -1, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8
  store i64 0, ptr %.sroa.3.0.copyload, align 8
  store i64 -1, ptr %i.ac, align 8
  %.pre = load i8, ptr %.sroa.05.0, align 1
  %i.aq = icmp sgt i8 %.pre, -1
  br i1 %i.aq, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i, label %bb.l, !prof !22

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.24) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 1 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 16 ; 2 uses
  %i.at = load i8, ptr %i.ar, align 1             ; 2 uses
  %i.au = icmp slt i8 %i.at, -1
  br i1 %i.au, label %.lr.ph.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i:                                       ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i, %.lr.ph.i.i
  %i.av = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %i.as, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i ]
  %i.aw = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %i.ar, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.az = load i8, ptr %i.ax, align 1             ; 2 uses
  %i.ba = icmp slt i8 %i.az, -1
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !21

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i
  %.sroa.05.1 = phi ptr [ %i.ar, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i ], [ %i.ax, %.lr.ph.i.i ]
  %.sroa.9.1 = phi ptr [ %i.as, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i ], [ %i.ay, %.lr.ph.i.i ]
  %i.bb = phi i8 [ %i.at, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i ], [ %i.az, %.lr.ph.i.i ]
  %i.bc = icmp eq i8 %i.bb, -1
  br i1 %i.bc, label %bb.m, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge, !prof !9

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i, %bb.m
  %.sroa.05.0.be = phi ptr [ null, %bb.m ], [ %.sroa.05.1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit

bb.m:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_14const_iteratorERSK_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_14const_iteratorERSK_.exit

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
  br i1 %i.aj, label %.thread33.i.i.i, label %bb.f, !prof !6

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ag ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.al = add i16 %.sroa.017.047.i.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i.i, !prof !9

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !37

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread33.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.ak, %.thread33.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.ah, %.thread33.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_14const_iteratorERSK_.exit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_14const_iteratorERSK_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_14const_iteratorERSK_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_14const_iteratorERSK_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorESQ_.exit, !prof !9

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorESQ_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorESQ_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorptEv.exit, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.az, align 8 ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %.sroa.0.0.copyload, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorESQ_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorptEv.exit
  %.sroa.01.0 = phi i64 [ %.sroa.01.0.copyload, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorptEv.exit ], [ 0, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorESQ_.exit ]
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.copyload, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorptEv.exit ], [ -1, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorESQ_.exit ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.01.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(328) %0, i32 %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %.0.copyload.i.i = load i64, ptr %2, align 4
  %i.a = and i64 %.0.copyload.i.i, -4294967041
  %i.b = icmp eq i64 %i.a, 281526516318277
  br i1 %i.b, label %bb.b, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.c, align 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.h = add i64 %i.f, %i.g
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %.0.copyload.i.i.i = load i64, ptr %i.i, align 4
  %i.j = and i64 %.0.copyload.i.i.i, 72057589743026175
  %or.cond = icmp eq i64 %i.j, 285881613156680
  br i1 %or.cond, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i27 = load i32, ptr %i.k, align 4
  %i.l = zext i32 %.sroa.0.0.copyload.i.i27 to i64
  %i.m = add i64 %i.l, %i.f
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4
  %.not35 = icmp eq i8 %i.o, 77
  br i1 %.not35, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.q = load i8, ptr %i.p, align 1
  switch i8 %i.q, label %bb.e [
    i8 0, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 1, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 2, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 3, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 8, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 4, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30
    i8 5, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30
    i8 9, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30
    i8 18, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30
    i8 6, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 7, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 10, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 19, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 11, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 12, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 13, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 17, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 14, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 15, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 16, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 20, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
    i8 21, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30: ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %.not25 = icmp eq ptr %3, null
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30
  store i32 %.sroa.0.0.copyload.i.i, ptr %3, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30
  %.not26 = icmp eq ptr %4, null
  br i1 %.not26, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i32 = load i32, ptr %i.k, align 4
  store i32 %.sroa.0.0.copyload.i.i32, ptr %4, align 4
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread

_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev.exit30.thread: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.b, %bb.g, %bb.h, %bb.c, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.g ], [ false, %bb.c ], [ true, %bb.h ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ]
  ret i1 %.2
}

declare void @_ZN2v88internal8compiler10turboshaft10LoopFinder3RunEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #2

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 4                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEA_S6_EEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #22
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEA_S6_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEA_S6_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEA_S6_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEA_S6_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEA_S6_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #9 comdat align 2 {
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
  br i1 %i.aj, label %.thread33.i.i.i, label %bb.f, !prof !6

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
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i, !prof !9

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !35

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
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit, !prof !9

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.az, align 8
  %i.ba = load i8, ptr %.sroa.0.0.copyload, align 1, !range !5, !noundef !7
  %i.bb = trunc nuw i8 %i.ba to i1
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit
  %.0 = phi i1 [ %i.bb, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit ], [ false, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable18InvalidateAtOffsetEiNS2_15OptionalOpIndexE(ptr noundef nonnull align 8 dereferenceable(496) %0, i32 noundef %1, i32 %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %2, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !align !8
  %i.c = tail call { i64, i64 } @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.b, i32 %2) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.018.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.7.0 = phi i64 [ %i.e, %bb.b ], [ -1, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.j = load i64, ptr %i.i, align 8
  %.not.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE4findIiEENSQ_8iteratorERSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.k, 1
  %spec.select.i.i = select i1 %i.m, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE4findIiEENSQ_8iteratorERSN_.exit

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.p = load i64, ptr %i.o, align 8
  %sext.i = shl i64 %i.p, 48
  %i.q = ashr exact i64 %sext.i, 48
  %i.r = zext i32 %1 to i64
  %i.s = xor i64 %i.q, %i.r
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw nsw i128 %i.t, 8779197792823184629 ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = xor i128 %i.v, %i.u
  %i.x = trunc i128 %i.w to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 472
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.aa, align 8 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i7.i = phi i64 [ %i.x, %bb.f ], [ %i.av, %bb.i ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.f ], [ %i.au, %bb.i ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.g        ; 4 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1      ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.sroa.017.047.i.i = phi i16 [ %i.ar, %bb.h ], [ %i.ah, %bb.g ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.6.0.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.g                     ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp eq i32 %i.an, %1
  br i1 %i.ao, label %.thread33.i.i, label %bb.h, !prof !6

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE10find_largeIiEENSQ_8iteratorERSN_m.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.aq = add i16 %.sroa.017.047.i.i, -1
  %i.ar = and i16 %i.aq, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.g
  %i.as = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.at = bitcast <16 x i1> %i.as to i16
  %.not44.i.i = icmp eq i16 %i.at, 0
  br i1 %.not44.i.i, label %bb.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE10find_largeIiEENSQ_8iteratorERSN_m.exit.i, !prof !9

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.au = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.av = add i64 %i.au, %.sroa.6.0.i.i
  br label %bb.g, !llvm.loop !38

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE10find_largeIiEENSQ_8iteratorERSN_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ap, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.am, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE4findIiEENSQ_8iteratorERSN_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE4findIiEENSQ_8iteratorERSN_.exit: ; preds = %bb.d, %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE10find_largeIiEENSQ_8iteratorERSN_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE10find_largeIiEENSQ_8iteratorERSN_m.exit.i ], [ { ptr null, ptr undef }, %bb.d ], [ %spec.select.i.i, %bb.e ] ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %.pn.i, 0     ; 6 uses
  %i.ax = extractvalue { ptr, ptr } %.pn.i, 1
  %i.ay = icmp eq ptr %i.aw, null                 ; 2 uses
  %i.az = icmp eq ptr %i.aw, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.ay, %i.az
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.j

bb.j:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE4findIiEENSQ_8iteratorERSN_.exit
  %i.ba = load i8, ptr %i.aw, align 1
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.j, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE4findIiEENSQ_8iteratorERSN_.exit
  br i1 %i.az, label %bb.l, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorEST_.exit, !prof !9

bb.l:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorEST_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.ay, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorEST_.exit
  %i.bc = load i8, ptr %i.aw, align 1
  %i.bd = icmp sgt i8 %i.bc, -1
  br i1 %i.bd, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit, label %bb.n, !prof !6

bb.n:                                             ; preds = %bb.m
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit: ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.0.0.copyload.i23 = load ptr, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bh = icmp eq i64 %.sroa.018.0, 0
  %i.bi = icmp eq i64 %.sroa.7.0, -1
  %i.bj = select i1 %i.bh, i1 %i.bi, i1 false
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit24

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit24: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit, %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit
  %.sroa.036.054 = phi ptr [ %.sroa.0.0.copyload.i23, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit ], [ %.sroa.036.1, %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit ] ; 11 uses
  %.not.i = icmp eq ptr %.sroa.036.054, null
  br i1 %.not.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit24
  %i.bo = load ptr, ptr %i.bf, align 8, !nonnull !7, !align !8
  %.sroa.015.0.copyload = load i32, ptr %.sroa.036.054, align 8
  %i.bp = tail call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.bo, i32 %.sroa.015.0.copyload)
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.036.054, i64 40
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = inttoptr i64 %i.br to ptr
  br label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit, !llvm.loop !39

bb.r:                                             ; preds = %bb.p
  %.sroa.012.0.copyload = load i32, ptr %.sroa.036.054, align 8 ; 2 uses
  %i.bt = icmp eq i32 %.sroa.012.0.copyload, %2
  br i1 %i.bt, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bg, align 8, !nonnull !7, !align !8
  %i.bv = tail call { i64, i64 } @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.bu, i32 %.sroa.012.0.copyload) ; 2 uses
  %i.bw = extractvalue { i64, i64 } %i.bv, 0
  %i.bx = extractvalue { i64, i64 } %i.bv, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sroa.013.0 = phi i64 [ %i.bw, %bb.s ], [ %.sroa.018.0, %bb.r ] ; 2 uses
  %.sroa.6.0 = phi i64 [ %i.bx, %bb.s ], [ %.sroa.7.0, %bb.r ] ; 3 uses
  br i1 %i.bj, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = icmp eq i64 %.sroa.013.0, 0
  %i.bz = icmp eq i64 %.sroa.6.0, -1
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = and i64 %.sroa.013.0, %.sroa.7.0
  %i.cc = icmp eq i64 %i.cb, %.sroa.7.0
  %i.cd = and i64 %.sroa.6.0, %.sroa.018.0
  %i.ce = icmp eq i64 %i.cd, %.sroa.6.0
  %i.cf = select i1 %i.cc, i1 true, i1 %i.ce
  br i1 %i.cf, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.036.054, i64 40
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = inttoptr i64 %i.ch to ptr
  br label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit, !llvm.loop !39

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.cj = load i8, ptr %i.aw, align 1
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit30, label %bb.y, !prof !6

bb.y:                                             ; preds = %bb.x
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit30: ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.036.054, i64 40 ; 2 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %i.cl, align 8 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.036.054, i64 32 ; 6 uses
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_16OffsetListTraitsEE8RemoveAtERNSA_8iteratorE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit30
  %i.cp = ptrtoint ptr %.sroa.03.0.copyload.i to i64
  store i64 %i.cp, ptr %i.cn, align 8
  %.not.i.i31 = icmp eq ptr %.sroa.03.0.copyload.i, null
  br i1 %.not.i.i31, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = load ptr, ptr %i.cm, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 32
  store ptr %i.cq, ptr %i.cr, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_16OffsetListTraitsEE8RemoveAtERNSA_8iteratorE.exit

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_16OffsetListTraitsEE8RemoveAtERNSA_8iteratorE.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit30, %bb.ab
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.036.054, i64 48 ; 2 uses
  %.sroa.07.0.copyload.i = load i32, ptr %i.cs, align 8 ; 2 uses
  %.not.i32 = icmp eq i32 %.sroa.07.0.copyload.i, -1
  br i1 %.not.i32, label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_16OffsetListTraitsEE8RemoveAtERNSA_8iteratorE.exit
  %i.ct = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.cu = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.cv = icmp ult ptr %i.ct, %i.cu
  br i1 %i.cv, label %bb.ae, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %bb.ac
  %i.cw = load ptr, ptr %i.bn, align 8
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 4
  %i.db = add nsw i64 %i.da, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 noundef %i.db)
  %.pre.i.i.i.i = load ptr, ptr %i.bk, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.dc = phi ptr [ %i.ct, %bb.ac ], [ %.pre.i.i.i.i, %bb.ad ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %i.dd, ptr %i.bk, align 8
  store ptr %.sroa.036.054, ptr %i.dc, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i32 %.sroa.07.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  store i32 -1, ptr %i.cs, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.036.054, i64 16 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE6RemoveES8_.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.036.054, i64 24
  %i.di = load i64, ptr %i.dh, align 8            ; 3 uses
  store i64 %i.di, ptr %i.df, align 8
  %.not.i.i.i.i = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load ptr, ptr %i.de, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr %i.dk, ptr %i.dl, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false)
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE6RemoveES8_.exit.i.i.i

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE6RemoveES8_.exit.i.i.i: ; preds = %bb.ah, %bb.ae
  %i.dm = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE6RemoveES8_.exit.i.i.i
  %i.do = load i64, ptr %i.cl, align 8            ; 3 uses
  store i64 %i.do, ptr %i.dm, align 8
  %.not.i3.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i3.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = load ptr, ptr %i.cm, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store ptr %i.dq, ptr %i.dr, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit

_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit: ; preds = %bb.ak, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE6RemoveES8_.exit.i.i.i, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_16OffsetListTraitsEE8RemoveAtERNSA_8iteratorE.exit, %bb.w, %bb.q
  %.sroa.036.1 = phi ptr [ %i.bs, %bb.q ], [ %i.ci, %bb.w ], [ %.sroa.03.0.copyload.i, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_16OffsetListTraitsEE8RemoveAtERNSA_8iteratorE.exit ], [ %.sroa.03.0.copyload.i, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE6RemoveES8_.exit.i.i.i ], [ %.sroa.03.0.copyload.i, %bb.ak ]
  %.pr = load i8, ptr %i.aw, align 1
  %i.ds = icmp sgt i8 %.pr, -1
  br i1 %i.ds, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit24, label %bb.o, !prof !27

.loopexit:                                        ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit24, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorEST_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #13

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 4                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_7KeyDataEE8LogEntryEA_S9_EEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #22
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_7KeyDataEE8LogEntryEA_S9_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_7KeyDataEE8LogEntryEA_S9_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_7KeyDataEE8LogEntryEA_S9_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_7KeyDataEE8LogEntryEA_S9_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_7KeyDataEE8LogEntryEA_S9_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable22AddKeyInBaseOffsetMapsENS2_16SnapshotTableKeyINS2_7OpIndexENS2_7KeyDataEEE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey.312", align 8 ; 5 uses
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %4 = alloca %"struct.v8::internal::compiler::turboshaft::BaseData", align 8 ; 9 uses
  %5 = alloca %"struct.std::pair.266", align 8    ; 11 uses
  %6 = alloca %"struct.std::pair.276", align 8    ; 6 uses
  %i.a = load i32, ptr %1, align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.f = load i64, ptr %i.e, align 8
  %.not.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.g, align 8 ; 2 uses
  %i.h = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 4
  %i.i = icmp eq i32 %i.h, %i.a
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.i, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.l = load i64, ptr %i.k, align 8
  %sext.i = shl i64 %i.l, 48
  %i.m = ashr exact i64 %sext.i, 48
  %i.n = zext i32 %i.a to i64
  %i.o = xor i64 %i.m, %i.n
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.t, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.c        ; 4 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.an, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.c                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, %i.a
  br i1 %i.ak, label %.thread33.i.i, label %bb.f, !prof !6

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ah ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = add i16 %.sroa.017.047.i.i, -1
  %i.an = and i16 %i.am, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ao = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not44.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i, !prof !9

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aq = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !26

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.al, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ai, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i, 1     ; 2 uses
  %i.au = icmp eq ptr %i.as, null                 ; 2 uses
  %i.av = icmp eq ptr %i.as, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.au, %i.av
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit
  %i.aw = load i8, ptr %i.as, align 1
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit
  br i1 %i.av, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorESN_.exit, !prof !9

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.au, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorESN_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.az = load i32, ptr %i.ay, align 4
  %.not122 = icmp eq i32 %i.az, -1
  %i.ba = load i8, ptr %i.as, align 1
  %i.bb = icmp sgt i8 %i.ba, -1                   ; 2 uses
  br i1 %.not122, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.bb, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit, label %bb.m, !prof !6

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit: ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.be = load i64, ptr %i.bc, align 8
  store i64 %i.be, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.bc, ptr %i.bf, align 8
  %.sroa.02.0.copyload.i = load ptr, ptr %i.bc, align 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.02.0.copyload.i, null
  br i1 %.not.i, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE9PushFrontES8_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 16
  store ptr %i.bd, ptr %i.bg, align 8
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE9PushFrontES8_.exit

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE9PushFrontES8_.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit, %bb.n
  store ptr %1, ptr %i.bc, align 8
  br label %bb.ac

bb.o:                                             ; preds = %bb.k
  br i1 %i.bb, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit7, label %bb.p, !prof !6

bb.p:                                             ; preds = %bb.o
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit7: ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bj = load i64, ptr %i.bh, align 8
  store i64 %i.bj, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.bh, ptr %i.bk, align 8
  %.sroa.02.0.copyload.i8 = load ptr, ptr %i.bh, align 8 ; 2 uses
  %.not.i9 = icmp eq ptr %.sroa.02.0.copyload.i8, null
  br i1 %.not.i9, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE9PushFrontES8_.exit10, label %bb.q

bb.q:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit7
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i8, i64 16
  store ptr %i.bi, ptr %i.bl, align 8
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE9PushFrontES8_.exit10

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE9PushFrontES8_.exit10: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorptEv.exit7, %bb.q
  store ptr %1, ptr %i.bh, align 8
  br label %bb.ac

bb.r:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorESN_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = load i32, ptr %i.bm, align 4
  %.not121 = icmp eq i32 %i.bn, -1
  br i1 %.not121, label %bb.s, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %4, ptr %i.bp, align 8
  %i.bq = ptrtoint ptr %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i32 %i.a, ptr %5, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.bq, ptr %i.br, align 8
  %.not.i.i.i17 = icmp eq ptr %1, null
  br i1 %.not.i.i.i17, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.br, ptr %i.bs, align 8
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.thread

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.thread: ; preds = %bb.t, %bb.s
  store i64 0, ptr %4, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.bt, align 8
  br label %_ZNSt4pairIN2v88internal8compiler10turboshaft7OpIndexENS3_8BaseDataEEC2IRS4_S5_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS9_SA_EEEEOT_OT0_.exit

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i: ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.bv, ptr %i.bx, align 8
  %i.by = ptrtoint ptr %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i32 %i.a, ptr %5, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.bz, align 8
  store i64 0, ptr %4, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.by, ptr %i.ca, align 8
  %.not.i3.i.i = icmp eq ptr %1, null
  br i1 %.not.i3.i.i, label %_ZNSt4pairIN2v88internal8compiler10turboshaft7OpIndexENS3_8BaseDataEEC2IRS4_S5_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS9_SA_EEEEOT_OT0_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ca, ptr %i.cc, align 8
  br label %_ZNSt4pairIN2v88internal8compiler10turboshaft7OpIndexENS3_8BaseDataEEC2IRS4_S5_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS9_SA_EEEEOT_OT0_.exit

_ZNSt4pairIN2v88internal8compiler10turboshaft7OpIndexENS3_8BaseDataEEC2IRS4_S5_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS9_SA_EEEEOT_OT0_.exit: ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.thread, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i, %bb.u
  %i.cd = phi ptr [ %i.bu, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.thread ], [ %i.cb, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i ], [ %i.cb, %bb.u ]
  %i.ce = phi ptr [ %i.bt, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.thread ], [ %i.ca, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i ], [ %i.ca, %bb.u ] ; 2 uses
  %i.cf = phi ptr [ %i.br, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.thread ], [ %i.bz, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i ], [ %i.bz, %bb.u ] ; 2 uses
  store i64 0, ptr %i.cd, align 8
  %i.cg = load i64, ptr %i.b, align 8, !noalias !40 ; 4 uses
  %i.ch = icmp ult i64 %i.cg, 2
  br i1 %i.ch, label %bb.v, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i

bb.v:                                             ; preds = %_ZNSt4pairIN2v88internal8compiler10turboshaft7OpIndexENS3_8BaseDataEEC2IRS4_S5_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS9_SA_EEEEOT_OT0_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !51
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.cj, 131072
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_.exit.thread.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ck, align 8, !noalias !51
  %i.cl = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !51
  %i.cm = icmp eq i32 %i.cl, %i.a
  br i1 %i.cm, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE6insertEOSG_IS7_S8_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_.exit.thread.i.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_.exit.thread.i.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !51
  store ptr %i.b, ptr %3, align 8, !noalias !51
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %5, ptr %i.cn, align 8, !noalias !51
  %i.co = call { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #22, !noalias !51
  %i.cp = extractvalue { ptr, ptr } %i.co, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !51
  br label %bb.z

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i: ; preds = %_ZNSt4pairIN2v88internal8compiler10turboshaft7OpIndexENS3_8BaseDataEEC2IRS4_S5_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS9_SA_EEEEOT_OT0_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.0.0.copyload.i.i.i.i.i59 = load ptr, ptr %i.cq, align 8, !noalias !54 ; 2 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i59, i32 0, i32 1, i32 1), !noalias !54
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !54
  %sext.i60 = shl i64 %i.cs, 48
  %i.ct = ashr exact i64 %sext.i60, 48
  %i.cu = zext i32 %i.a to i64
  %i.cv = xor i64 %i.ct, %i.cu
  %i.cw = zext i64 %i.cv to i128
  %i.cx = mul nuw nsw i128 %i.cw, 8779197792823184629 ; 2 uses
  %i.cy = lshr i128 %i.cx, 64
  %i.cz = xor i128 %i.cy, %i.cx
  %i.da = trunc i128 %i.cz to i64                 ; 3 uses
  %i.db = lshr i64 %i.da, 57
  %i.dc = trunc nuw nsw i64 %i.db to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.dd, align 8, !noalias !54 ; 2 uses
  %i.de = insertelement <16 x i8> poison, i8 %i.dc, i64 0
  %i.df = shufflevector <16 x i8> %i.de, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i
  %.pn.i62 = phi i64 [ %i.da, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i ], [ %i.dx, %bb.y ]
  %.sroa.15.0.i = phi i64 [ 0, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i ], [ %i.dw, %bb.y ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i62, %i.cg          ; 5 uses
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.dg, i32 0, i32 3, i32 1), !noalias !54
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i59, i64 %.sroa.7.0.i
  %i.di = load <16 x i8>, ptr %i.dh, align 1, !noalias !54 ; 2 uses
  %i.dj = icmp eq <16 x i8> %i.df, %i.di
  %i.dk = bitcast <16 x i1> %i.dj to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.dk, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.dt, %.critedge.i ], [ %i.dk, %bb.x ] ; 3 uses
  %i.dl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.dm = zext nneg i16 %i.dl to i64
  %i.dn = add i64 %.sroa.7.0.i, %i.dm
  %i.do = and i64 %i.dn, %i.cg
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !noalias !54
  %i.dr = icmp eq i32 %i.dq, %i.a
  br i1 %i.dr, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE6insertEOSG_IS7_S8_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %.critedge.i, !prof !6

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ds = add i16 %.sroa.035.065.i, -1
  %i.dt = and i16 %i.ds, %.sroa.035.065.i         ; 2 uses
  %.not.i63 = icmp eq i16 %i.dt, 0
  br i1 %.not.i63, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.x
  %i.du = icmp eq <16 x i8> %i.di, splat (i8 -128)
  %i.dv = bitcast <16 x i1> %i.du to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.dv, 0
  br i1 %.not57.i, label %bb.y, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_.exit.i._crit_edge.i.i.i, !prof !9

bb.y:                                             ; preds = %.critedge19.i
  %i.dw = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.dx = add i64 %i.dw, %.sroa.7.0.i
  br label %bb.x

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_.exit.i._crit_edge.i.i.i: ; preds = %.critedge19.i
  %i.dy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dv, i1 true)
  %i.dz = zext nneg i16 %i.dy to i64
  %i.ea = add i64 %.sroa.7.0.i, %i.dz
  %i.eb = and i64 %i.ea, %i.cg
  %i.ec = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.da, i64 %i.eb, i64 %.sroa.15.0.i) #22, !noalias !54
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.dd, align 8, !noalias !54
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.ec
  br label %bb.z

bb.z:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_.exit.i._crit_edge.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_.exit.thread.i.i.i.i
  %.sroa.2.0.copyload.i.i.i.i = phi ptr [ %i.ed, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_.exit.i._crit_edge.i.i.i ], [ %i.cp, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_.exit.thread.i.i.i.i ] ; 3 uses
  %i.ee = load i32, ptr %5, align 8, !noalias !57
  store i32 %i.ee, ptr %.sroa.2.0.copyload.i.i.i.i, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i, i64 8 ; 3 uses
  store ptr null, ptr %i.ef, align 8
  %i.eg = load i64, ptr %i.cf, align 8, !noalias !57 ; 3 uses
  store i64 %i.eg, ptr %i.ef, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store ptr %i.ef, ptr %i.ei, align 8
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  store i64 0, ptr %i.cf, align 8, !noalias !57
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i, i64 16 ; 3 uses
  store ptr null, ptr %i.ej, align 8
  %i.ek = load i64, ptr %i.ce, align 8, !noalias !57 ; 3 uses
  store i64 %i.ek, ptr %i.ej, align 8
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJOS7_EESP_IJOS8_EEEEEvNSK_8iteratorEDpOT_.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store ptr %i.ej, ptr %i.em, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJOS7_EESP_IJOS8_EEEEEvNSK_8iteratorEDpOT_.exit.i.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJOS7_EESP_IJOS8_EEEEEvNSK_8iteratorEDpOT_.exit.i.i.i.i: ; preds = %bb.ab, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.ce, align 8, !noalias !57
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE6insertEOSG_IS7_S8_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE6insertEOSG_IS7_S8_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit: ; preds = %.lr.ph.i, %bb.w, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJOS7_EESP_IJOS8_EEEEEvNSK_8iteratorEDpOT_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE9PushFrontES8_.exit, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEE9PushFrontES8_.exit10, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE6insertEOSG_IS7_S8_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.eo = load i32, ptr %i.en, align 4
  %.not123 = icmp eq i32 %i.eo, -1
  br i1 %.not123, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.er = load i64, ptr %i.ep, align 8
  store i64 %i.er, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.ep, ptr %i.es, align 8
  %.sroa.02.0.copyload.i18 = load ptr, ptr %i.ep, align 8 ; 2 uses
  %.not.i19 = icmp eq ptr %.sroa.02.0.copyload.i18, null
  br i1 %.not.i19, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_16OffsetListTraitsEE9PushFrontES8_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i18, i64 32
  store ptr %i.eq, ptr %i.et, align 8
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_16OffsetListTraitsEE9PushFrontES8_.exit

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_16OffsetListTraitsEE9PushFrontES8_.exit: ; preds = %bb.ad, %bb.ae
  store ptr %1, ptr %i.ep, align 8
  br label %bb.ba

bb.af:                                            ; preds = %bb.ac
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ev = load i32, ptr %i.eu, align 8            ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 5 uses
  %i.ex = load i64, ptr %i.ew, align 8            ; 3 uses
  %i.ey = icmp ult i64 %i.ex, 2
  br i1 %i.ey, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.fa = load i64, ptr %i.ez, align 8
  %.not.i.i.i37 = icmp ult i64 %i.fa, 131072
  br i1 %.not.i.i.i37, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE4findIiEENSQ_8iteratorERSN_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8
  %i.fd = icmp eq i32 %i.fc, %i.ev
  %.fca.1.insert.i.i.i38 = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.fb, 1
  %spec.select.i.i39 = select i1 %i.fd, { ptr, ptr } %.fca.1.insert.i.i.i38, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE4findIiEENSQ_8iteratorERSN_.exit

bb.ai:                                            ; preds = %bb.af
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.0.0.copyload.i.i.i.i.i20 = load ptr, ptr %i.fe, align 8 ; 3 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i20, i32 0, i32 1, i32 1)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.fg = load i64, ptr %i.ff, align 8
  %sext.i21 = shl i64 %i.fg, 48
  %i.fh = ashr exact i64 %sext.i21, 48
  %i.fi = zext i32 %i.ev to i64
  %i.fj = xor i64 %i.fh, %i.fi
  %i.fk = zext i64 %i.fj to i128
  %i.fl = mul nuw nsw i128 %i.fk, 8779197792823184629 ; 2 uses
  %i.fm = lshr i128 %i.fl, 64
  %i.fn = xor i128 %i.fm, %i.fl
  %i.fo = trunc i128 %i.fn to i64                 ; 2 uses
  %i.fp = lshr i64 %i.fo, 57
  %i.fq = trunc nuw nsw i64 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 472
  %.sroa.0.0.copyload.i.i.i14.i.i22 = load ptr, ptr %i.fr, align 8 ; 2 uses
  %i.fs = insertelement <16 x i8> poison, i8 %i.fq, i64 0
  %i.ft = shufflevector <16 x i8> %i.fs, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %.pn.i7.i = phi i64 [ %i.fo, %bb.ai ], [ %i.gm, %bb.al ]
  %.sroa.13.0.i.i23 = phi i64 [ 0, %bb.ai ], [ %i.gl, %bb.al ]
  %.sroa.6.0.i.i24 = and i64 %.pn.i7.i, %i.ex     ; 4 uses
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i22, i64 %.sroa.6.0.i.i24
  call void @llvm.prefetch.p0(ptr %i.fu, i32 0, i32 3, i32 1)
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i20, i64 %.sroa.6.0.i.i24
  %i.fw = load <16 x i8>, ptr %i.fv, align 1      ; 2 uses
  %i.fx = icmp eq <16 x i8> %i.ft, %i.fw
  %i.fy = bitcast <16 x i1> %i.fx to i16          ; 2 uses
  %.not46.i.i25 = icmp eq i16 %i.fy, 0
  br i1 %.not46.i.i25, label %._crit_edge.i.i29, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %bb.aj, %bb.ak
  %.sroa.017.047.i.i27 = phi i16 [ %i.gi, %bb.ak ], [ %i.fy, %bb.aj ] ; 3 uses
  %i.fz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i27, i1 true)
  %i.ga = zext nneg i16 %i.fz to i64
  %i.gb = add i64 %.sroa.6.0.i.i24, %i.ga
  %i.gc = and i64 %i.gb, %i.ex                    ; 2 uses
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i22, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = icmp eq i32 %i.ge, %i.ev
  br i1 %i.gf, label %.thread33.i.i36, label %bb.ak, !prof !6

.thread33.i.i36:                                  ; preds = %.lr.ph.i.i26
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i20, i64 %i.gc ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gg) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE10find_largeIiEENSQ_8iteratorERSN_m.exit.i

bb.ak:                                            ; preds = %.lr.ph.i.i26
  %i.gh = add i16 %.sroa.017.047.i.i27, -1
  %i.gi = and i16 %i.gh, %.sroa.017.047.i.i27     ; 2 uses
  %.not.i.i28 = icmp eq i16 %i.gi, 0
  br i1 %.not.i.i28, label %._crit_edge.i.i29, label %.lr.ph.i.i26

._crit_edge.i.i29:                                ; preds = %bb.ak, %bb.aj
  %i.gj = icmp eq <16 x i8> %i.fw, splat (i8 -128)
  %i.gk = bitcast <16 x i1> %i.gj to i16
  %.not44.i.i30 = icmp eq i16 %i.gk, 0
  br i1 %.not44.i.i30, label %bb.al, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE10find_largeIiEENSQ_8iteratorERSN_m.exit.i, !prof !9

bb.al:                                            ; preds = %._crit_edge.i.i29
  %i.gl = add i64 %.sroa.13.0.i.i23, 16           ; 2 uses
  %i.gm = add i64 %i.gl, %.sroa.6.0.i.i24
  br label %bb.aj, !llvm.loop !38

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE10find_largeIiEENSQ_8iteratorERSN_m.exit.i: ; preds = %._crit_edge.i.i29, %.thread33.i.i36
  %.sroa.0.4.ph.i.i31 = phi ptr [ %i.gg, %.thread33.i.i36 ], [ null, %._crit_edge.i.i29 ]
  %.sroa.3.4.ph.i.i32 = phi ptr [ %i.gd, %.thread33.i.i36 ], [ undef, %._crit_edge.i.i29 ]
  %.fca.0.insert.i.i33 = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i31, 0
  %.fca.1.insert.i.i34 = insertvalue { ptr, ptr } %.fca.0.insert.i.i33, ptr %.sroa.3.4.ph.i.i32, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE4findIiEENSQ_8iteratorERSN_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE4findIiEENSQ_8iteratorERSN_.exit: ; preds = %bb.ag, %bb.ah, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE10find_largeIiEENSQ_8iteratorERSN_m.exit.i
  %.pn.i35 = phi { ptr, ptr } [ %.fca.1.insert.i.i34, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE10find_largeIiEENSQ_8iteratorERSN_m.exit.i ], [ { ptr null, ptr undef }, %bb.ag ], [ %spec.select.i.i39, %bb.ah ] ; 2 uses
  %i.gn = extractvalue { ptr, ptr } %.pn.i35, 0   ; 4 uses
  %i.go = extractvalue { ptr, ptr } %.pn.i35, 1
  %i.gp = icmp eq ptr %i.gn, null                 ; 2 uses
  %i.gq = icmp eq ptr %i.gn, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i40 = or i1 %i.gp, %i.gq
  br i1 %or.cond.i.i.i40, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i43, label %bb.am

bb.am:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE4findIiEENSQ_8iteratorERSN_.exit
  %i.gr = load i8, ptr %i.gn, align 1
  %i.gs = icmp sgt i8 %i.gr, -1
  br i1 %i.gs, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i43, label %bb.an, !prof !6

bb.an:                                            ; preds = %bb.am
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i43: ; preds = %bb.am, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE4findIiEENSQ_8iteratorERSN_.exit
  br i1 %i.gq, label %bb.ao, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorEST_.exit, !prof !9

bb.ao:                                            ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i43
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorEST_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i43
  br i1 %i.gp, label %_ZNSt4pairIiN2v84base18DoublyThreadedListINS0_8internal8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_7KeyDataEEENS5_16OffsetListTraitsEEEEC2IRiSB_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorEST_.exit
  %i.gt = load i8, ptr %i.gn, align 1
  %i.gu = icmp sgt i8 %i.gt, -1
  br i1 %i.gu, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit, label %bb.aq, !prof !6

bb.aq:                                            ; preds = %bb.ap
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit: ; preds = %bb.ap
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.gx = load i64, ptr %i.gv, align 8
  store i64 %i.gx, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.gv, ptr %i.gy, align 8
  %.sroa.02.0.copyload.i52 = load ptr, ptr %i.gv, align 8 ; 2 uses
  %.not.i53 = icmp eq ptr %.sroa.02.0.copyload.i52, null
  br i1 %.not.i53, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_16OffsetListTraitsEE9PushFrontES8_.exit54, label %bb.ar

bb.ar:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i52, i64 32
  store ptr %i.gw, ptr %i.gz, align 8
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_16OffsetListTraitsEE9PushFrontES8_.exit54

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_16OffsetListTraitsEE9PushFrontES8_.exit54: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorptEv.exit, %bb.ar
  store ptr %1, ptr %i.gv, align 8
  br label %bb.ba

_ZNSt4pairIiN2v84base18DoublyThreadedListINS0_8internal8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_7KeyDataEEENS5_16OffsetListTraitsEEEEC2IRiSB_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit: ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8iteratorEST_.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 %i.ev, ptr %6, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.hd = ptrtoint ptr %1 to i64
  store i64 %i.hd, ptr %i.hc, align 8
  store ptr %i.hc, ptr %i.hb, align 8
  %i.he = load i64, ptr %i.ew, align 8, !noalias !58 ; 4 uses
  %i.hf = icmp ult i64 %i.he, 2
  br i1 %i.hf, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %_ZNSt4pairIiN2v84base18DoublyThreadedListINS0_8internal8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_7KeyDataEEENS5_16OffsetListTraitsEEEEC2IRiSB_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !noalias !75
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.hh, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i64 131072, ptr %i.hg, align 8, !noalias !75
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 464
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE22find_or_prepare_insertIiEESM_INSQ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.au:                                            ; preds = %bb.as
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.hk = load i32, ptr %i.hj, align 8, !noalias !75
  %i.hl = icmp eq i32 %i.hk, %i.ev
  br i1 %i.hl, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE6insertEOSM_IiSE_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !75
  store ptr %i.ew, ptr %2, align 8, !noalias !75
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %6, ptr %i.hm, align 8, !noalias !75
  %i.hn = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.ew, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIiEEiLb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #22, !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !75
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 472
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ho, align 8, !noalias !75
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.hn
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE22find_or_prepare_insertIiEESM_INSQ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.aw:                                            ; preds = %_ZNSt4pairIiN2v84base18DoublyThreadedListINS0_8internal8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_7KeyDataEEENS5_16OffsetListTraitsEEEEC2IRiSB_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.0.0.copyload.i.i.i.i.i64 = load ptr, ptr %i.hq, align 8, !noalias !80 ; 2 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i64, i32 0, i32 1, i32 1), !noalias !80
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.hs = load i64, ptr %i.hr, align 8, !noalias !80
  %sext.i65 = shl i64 %i.hs, 48
  %i.ht = ashr exact i64 %sext.i65, 48
  %i.hu = zext i32 %i.ev to i64
  %i.hv = xor i64 %i.ht, %i.hu
  %i.hw = zext i64 %i.hv to i128
  %i.hx = mul nuw nsw i128 %i.hw, 8779197792823184629 ; 2 uses
  %i.hy = lshr i128 %i.hx, 64
  %i.hz = xor i128 %i.hy, %i.hx
  %i.ia = trunc i128 %i.hz to i64                 ; 3 uses
  %i.ib = lshr i64 %i.ia, 57
  %i.ic = trunc nuw nsw i64 %i.ib to i8
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i66 = load ptr, ptr %i.id, align 8, !noalias !80 ; 2 uses
  %i.ie = insertelement <16 x i8> poison, i8 %i.ic, i64 0
  %i.if = shufflevector <16 x i8> %i.ie, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %.pn.i67 = phi i64 [ %i.ia, %bb.aw ], [ %i.jd, %bb.ay ]
  %.sroa.15.0.i68 = phi i64 [ 0, %bb.aw ], [ %i.jc, %bb.ay ] ; 2 uses
  %.sroa.7.0.i69 = and i64 %.pn.i67, %i.he        ; 5 uses
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i66, i64 %.sroa.7.0.i69
  call void @llvm.prefetch.p0(ptr %i.ig, i32 0, i32 3, i32 1), !noalias !80
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i64, i64 %.sroa.7.0.i69
  %i.ii = load <16 x i8>, ptr %i.ih, align 1, !noalias !80 ; 2 uses
  %i.ij = icmp eq <16 x i8> %i.if, %i.ii
  %i.ik = bitcast <16 x i1> %i.ij to i16          ; 2 uses
  %.not64.i70 = icmp eq i16 %i.ik, 0
  br i1 %.not64.i70, label %.critedge19.i75, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %bb.ax, %.critedge.i73
  %.sroa.035.065.i72 = phi i16 [ %i.it, %.critedge.i73 ], [ %i.ik, %bb.ax ] ; 3 uses
  %i.il = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i72, i1 true)
  %i.im = zext nneg i16 %i.il to i64
  %i.in = add i64 %.sroa.7.0.i69, %i.im
  %i.io = and i64 %i.in, %i.he
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i66, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !noalias !80
  %i.ir = icmp eq i32 %i.iq, %i.ev
  br i1 %i.ir, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE6insertEOSM_IiSE_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %.critedge.i73, !prof !6

.critedge.i73:                                    ; preds = %.lr.ph.i71
  %i.is = add i16 %.sroa.035.065.i72, -1
  %i.it = and i16 %i.is, %.sroa.035.065.i72       ; 2 uses
  %.not.i74 = icmp eq i16 %i.it, 0
  br i1 %.not.i74, label %.critedge19.i75, label %.lr.ph.i71

.critedge19.i75:                                  ; preds = %.critedge.i73, %bb.ax
  %i.iu = icmp eq <16 x i8> %i.ii, splat (i8 -128)
  %i.iv = bitcast <16 x i1> %i.iu to i16          ; 2 uses
  %.not57.i76 = icmp eq i16 %i.iv, 0
  br i1 %.not57.i76, label %bb.ay, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE22find_or_prepare_insertIiEESM_INSQ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread117, !prof !9

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE22find_or_prepare_insertIiEESM_INSQ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread117: ; preds = %.critedge19.i75
  %i.iw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.iv, i1 true)
  %i.ix = zext nneg i16 %i.iw to i64
  %i.iy = add i64 %.sroa.7.0.i69, %i.ix
  %i.iz = and i64 %i.iy, %i.he
  %i.ja = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.ew, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ia, i64 %i.iz, i64 %.sroa.15.0.i68) #22, !noalias !80
  %.sroa.0.0.copyload.i.i.i2.i26.i79 = load ptr, ptr %i.id, align 8, !noalias !80
  %i.jb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i79, i64 %i.ja
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE22find_or_prepare_insertIiEESM_INSQ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.ay:                                            ; preds = %.critedge19.i75
  %i.jc = add i64 %.sroa.15.0.i68, 16             ; 2 uses
  %i.jd = add i64 %i.jc, %.sroa.7.0.i69
  br label %bb.ax

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE22find_or_prepare_insertIiEESM_INSQ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread: ; preds = %bb.at, %bb.av, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE22find_or_prepare_insertIiEESM_INSQ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread117
  %.sroa.4.0114 = phi ptr [ %i.jb, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE22find_or_prepare_insertIiEESM_INSQ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread117 ], [ %i.hi, %bb.at ], [ %i.hp, %bb.av ] ; 2 uses
  %i.je = load i32, ptr %6, align 8, !noalias !83
  store i32 %i.je, ptr %.sroa.4.0114, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.4.0114, i64 8 ; 3 uses
  store ptr null, ptr %i.jf, align 8
  %i.jg = load i64, ptr %i.hc, align 8, !noalias !83 ; 3 uses
  store i64 %i.jg, ptr %i.jf, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE6insertEOSM_IiSE_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %bb.az

bb.az:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE22find_or_prepare_insertIiEESM_INSQ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread
  %i.jh = inttoptr i64 %i.jg to ptr
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  store ptr %i.jf, ptr %i.ji, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE6insertEOSM_IiSE_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE6insertEOSM_IiSE_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit: ; preds = %.lr.ph.i71, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE22find_or_prepare_insertIiEESM_INSQ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread, %bb.az, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_16OffsetListTraitsEE9PushFrontES8_.exit54, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE6insertEOSM_IiSE_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_16OffsetListTraitsEE9PushFrontES8_.exit
  ret void
}

declare { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr) local_unnamed_addr #2

declare noundef ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEES8_Lb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 1
  %i.a = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.b = xor i64 %2, %i.a
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw nsw i128 %i.c, 8779197792823184629 ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE19transfer_n_slots_fnEPvSL_SL_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8transferEPNS0_13map_slot_typeIS7_S8_EESN_.exit
  %.014 = phi i64 [ %i.l, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8transferEPNS0_13map_slot_typeIS7_S8_EESN_.exit ], [ %3, %bb.a ]
  %.0913 = phi ptr [ %i.n, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8transferEPNS0_13map_slot_typeIS7_S8_EESN_.exit ], [ %1, %bb.a ] ; 4 uses
  %.01012 = phi ptr [ %i.m, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8transferEPNS0_13map_slot_typeIS7_S8_EESN_.exit ], [ %2, %bb.a ] ; 4 uses
  %i.a = load i32, ptr %.01012, align 8
  store i32 %i.a, ptr %.0913, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.0913, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01012, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  store i64 %i.d, ptr %i.b, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.b, ptr %i.f, align 8
  br label %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph
  store i64 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.0913, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01012, i64 16 ; 2 uses
  store ptr null, ptr %i.g, align 8
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8transferEPNS0_13map_slot_typeIS7_S8_EESN_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.g, ptr %i.k, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8transferEPNS0_13map_slot_typeIS7_S8_EESN_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8transferEPNS0_13map_slot_typeIS7_S8_EESN_.exit: ; preds = %_ZN2v84base18DoublyThreadedListINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_7KeyDataEEENS4_14BaseListTraitsEEC2EOSA_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  store i64 0, ptr %i.h, align 8
  %i.l = add i64 %.014, -1                        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01012, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %.0913, i64 24
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !84

._crit_edge:                                      ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8transferEPNS0_13map_slot_typeIS7_S8_EESN_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m(ptr noundef %0, i64 noundef %1) #11 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = add i64 %1, 7                            ; 2 uses
  %.not.i = icmp ugt i64 %i.b, -9
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp ugt i64 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef %i.c) #22
  %.pre.i.i.i.i.i = load i64, ptr %i.f, align 8
  br label %_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit

_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit: ; preds = %bb.c, %bb.d
  %i.j = phi i64 [ %.pre.i.i.i.i.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = add i64 %i.j, %i.c
  store i64 %i.l, ptr %i.f, align 8
  ret ptr %i.k
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #11 comdat {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSQ_PFvSQ_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #9 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %bb.c
  %i.p = add nuw i64 %.062, 16                    ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !85

.lr.ph:                                           ; preds = %bb.c, %bb.l
  %.sroa.052.061 = phi i16 [ %i.bk, %bb.l ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.062, %i.s              ; 4 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.t ; 4 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.u, align 1
  %i.x = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.y = xor i64 %i.w, %i.x
  %i.z = zext i64 %i.y to i128
  %i.aa = mul nuw nsw i128 %i.z, 8779197792823184629 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64                 ; 6 uses
  %i.ae = lshr i64 %i.ad, 57
end_hunk_1
begin_hunk_2_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSW_PFvSW_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #9 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %i.p = add nuw i64 %.062, 16                    ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !88

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %.sroa.052.061 = phi i16 [ %i.bg, %bb.k ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.062, %i.s              ; 4 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.t ; 3 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %i.x = load i32, ptr %i.u, align 4
  %i.y = zext i32 %i.x to i64
  %i.z = xor i64 %i.w, %i.y
  %i.aa = zext i64 %i.z to i128
  %i.ab = mul nuw nsw i128 %i.aa, 8779197792823184629 ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab
  %i.ae = trunc i128 %i.ad to i64                 ; 6 uses
  %i.af = lshr i64 %i.ae, 57
  %i.ag = trunc nuw nsw i64 %i.af to i8           ; 2 uses
  %i.ah = sub i64 %i.t, %i.ae                     ; 2 uses
  %i.ai = and i64 %i.h, %i.ah
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %.lr.ph
  %i.ak = and i64 %i.ah, 15
  %i.al = add i64 %i.ak, %i.ae
  %i.am = and i64 %i.al, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.b, %i.ae
  %.not.i = icmp ult i64 %i.an, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.ao = and i64 %i.a, %i.ae                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ao
  %i.aq = load <16 x i8>, ptr %i.ap, align 1
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.as, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %i.ao, %i.au
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ag, i64 noundef %i.t, i64 noundef %i.ae) #22
  br label %bb.k

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.av, %bb.g ], [ %i.am, %bb.d ] ; 3 uses
  %i.aw = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ag, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i ; 2 uses
  %i.az = load i32, ptr %i.u, align 8
  store i32 %i.az, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr null, ptr %i.ba, align 8
  %i.bc = load i64, ptr %i.bb, align 8            ; 3 uses
  store i64 %i.bc, ptr %i.ba, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8transferEPNS0_13map_slot_typeIiSE_EEST_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr %i.ba, ptr %i.be, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8transferEPNS0_13map_slot_typeIiSE_EEST_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8transferEPNS0_13map_slot_typeIiSE_EEST_.exit: ; preds = %bb.i, %bb.j
  store i64 0, ptr %i.bb, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE8transferEPNS0_13map_slot_typeIiSE_EEST_.exit, %bb.h
  %i.bf = add i16 %.sroa.052.061, -1
  %i.bg = and i16 %i.bf, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.bg, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIiEEiLb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !align !86
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64
  %i.e = xor i64 %1, %i.d
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw nsw i128 %i.f, 8779197792823184629 ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64
  ret i64 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_8iteratorERSK_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(14) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_smallIS7_EENSN_8iteratorERSK_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8 ; 6 uses
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4
  %i.f = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 4
  %i.g = icmp eq i32 %i.f, %.sroa.02.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.g, label %bb.d, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_smallIS7_EENSN_8iteratorERSK_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 4
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.i, align 4
  %i.j = icmp eq i32 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.j, label %bb.e, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_smallIS7_EENSN_8iteratorERSK_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.f, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_smallIS7_EENSN_8iteratorERSK_.exit

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 12
  %i.q = load i8, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i8, ptr %i.r, align 4
  %i.t = icmp eq i8 %i.q, %i.s
  br i1 %i.t, label %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_smallIS7_EENSN_8iteratorERSK_.exit

_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 13
  %i.v = load i8, ptr %i.u, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.v, %i.x
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  %spec.select.i = select i1 %i.y, { ptr, ptr } %.fca.1.insert.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_smallIS7_EENSN_8iteratorERSK_.exit

bb.g:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.z, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %sext = shl i64 %i.ab, 48
  %i.ac = ashr exact i64 %sext, 48
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 13
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4 ; 2 uses
  %i.ah = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ai = xor i64 %i.ac, %i.ah
  %i.aj = zext i64 %i.ai to i128
  %i.ak = mul nuw nsw i128 %i.aj, 8779197792823184629 ; 2 uses
  %i.al = lshr i128 %i.ak, 64
  %i.am = xor i128 %i.al, %i.ak
  %i.an = trunc i128 %i.am to i64
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ad, align 4 ; 2 uses
  %i.ao = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ap = xor i64 %i.an, %i.ao
  %i.aq = zext i64 %i.ap to i128
  %i.ar = mul nuw nsw i128 %i.aq, 8779197792823184629 ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ae, align 4 ; 2 uses
  %i.av = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aw = xor i64 %i.au, %i.av
  %i.ax = zext i64 %i.aw to i128
  %i.ay = mul nuw nsw i128 %i.ax, 8779197792823184629 ; 2 uses
  %i.az = lshr i128 %i.ay, 64
  %i.ba = xor i128 %i.az, %i.ay
  %i.bb = trunc i128 %i.ba to i64
  %i.bc = load i8, ptr %i.af, align 4             ; 2 uses
  %i.bd = zext i8 %i.bc to i64
  %i.be = xor i64 %i.bb, %i.bd
  %i.bf = zext i64 %i.be to i128
  %i.bg = mul nuw nsw i128 %i.bf, 8779197792823184629 ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64
  %i.bk = load i8, ptr %i.ag, align 1             ; 2 uses
  %i.bl = zext i8 %i.bk to i64
  %i.bm = xor i64 %i.bj, %i.bl
  %i.bn = zext i64 %i.bm to i128
  %i.bo = mul nuw nsw i128 %i.bn, 8779197792823184629 ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = xor i128 %i.bp, %i.bo
  %i.br = trunc i128 %i.bq to i64                 ; 2 uses
  %i.bs = lshr i64 %i.br, 57
  %i.bt = trunc nuw nsw i64 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i = load ptr, ptr %i.bu, align 8 ; 2 uses
  %i.bv = insertelement <16 x i8> poison, i8 %i.bt, i64 0
  %i.bw = shufflevector <16 x i8> %i.bv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %.pn.i9 = phi i64 [ %i.br, %bb.g ], [ %i.da, %bb.l ]
  %.sroa.13.0.i = phi i64 [ 0, %bb.g ], [ %i.cz, %bb.l ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.a            ; 4 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.bx, i32 0, i32 3, i32 1)
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  %i.bz = load <16 x i8>, ptr %i.by, align 1      ; 2 uses
  %i.ca = icmp eq <16 x i8> %i.bw, %i.bz
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %.not49.i = icmp eq i16 %i.cb, 0
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.thread.i
  %.sroa.017.050.i = phi i16 [ %i.cw, %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.thread.i ], [ %i.cb, %bb.h ] ; 3 uses
  %i.cc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.050.i, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = add i64 %.sroa.6.0.i, %i.cd
  %i.cf = and i64 %i.ce, %i.a                     ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %i.cf ; 6 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = icmp eq i32 %i.ch, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ci, label %bb.i, label %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.thread.i, !prof !89

bb.i:                                             ; preds = %.lr.ph.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i10 = load i32, ptr %i.cj, align 4
  %i.ck = icmp eq i32 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i10, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ck, label %bb.j, label %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.thread.i, !prof !89

bb.j:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = icmp eq i32 %i.cm, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.cn, label %bb.k, label %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.thread.i, !prof !89

bb.k:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.cp = load i8, ptr %i.co, align 4
  %i.cq = icmp eq i8 %i.cp, %i.bc
  br i1 %i.cq, label %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i11, label %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.thread.i, !prof !89

_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i11: ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 13
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = icmp eq i8 %i.cs, %i.bk
  br i1 %i.ct, label %.thread35.i, label %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.thread.i, !prof !90

.thread35.i:                                      ; preds = %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i11
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.cf ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cu) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit

_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.thread.i: ; preds = %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i11, %bb.k, %bb.j, %bb.i, %.lr.ph.i
  %i.cv = add i16 %.sroa.017.050.i, -1
  %i.cw = and i16 %i.cv, %.sroa.017.050.i         ; 2 uses
  %.not.i = icmp eq i16 %i.cw, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.thread.i, %bb.h
  %i.cx = icmp eq <16 x i8> %i.bz, splat (i8 -128)
  %i.cy = bitcast <16 x i1> %i.cx to i16
  %.not47.i = icmp eq i16 %i.cy, 0
  br i1 %.not47.i, label %bb.l, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit, !prof !9

bb.l:                                             ; preds = %._crit_edge.i
  %i.cz = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.da = add i64 %i.cz, %.sroa.6.0.i
  br label %bb.h, !llvm.loop !91

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit: ; preds = %._crit_edge.i, %.thread35.i
  %.sroa.0.4.ph.i = phi ptr [ %i.cu, %.thread35.i ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %i.cg, %.thread35.i ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_smallIS7_EENSN_8iteratorERSK_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_smallIS7_EENSN_8iteratorERSK_.exit: ; preds = %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i, %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i ], [ { ptr null, ptr undef }, %bb.f ], [ { ptr null, ptr undef }, %bb.e ], [ { ptr null, ptr undef }, %bb.d ]
  ret { ptr, ptr } %.pn
}

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
  %i.j = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN2v88internal8compiler10turboshaft17RepresentationForENS0_4wasm9ValueTypeE(i32 %.sroa.0.0.copyload.i.i) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn6 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ]
  %.fca.0.insert.i.i.pn = insertvalue { ptr, i64 } poison, ptr %.pn6, 0
  %.pn = insertvalue { ptr, i64 } %.fca.0.insert.i.i.pn, i64 1, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft21LoadDataViewElementOp11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr i8, ptr @switch.table._ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN2v88internal8compiler10turboshaft12VectorForRepENS2_22RegisterRepresentationEE5table, i64 %switch.ext
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 1, 1
  ret { ptr, i64 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr i8, ptr @switch.table._ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN2v88internal8compiler10turboshaft12VectorForRepENS2_22RegisterRepresentationEE5table, i64 %switch.ext
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 1, 1
  ret { ptr, i64 } %.fca.1.insert.i.i
}

declare noundef nonnull align 1 dereferenceable(1) ptr @_ZN2v88internal8compiler10turboshaft17RepresentationForENS0_4wasm9ValueTypeE(i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable15InsertImmutableENS2_7OpIndexENS2_15OptionalOpIndexEihhS4_(ptr noundef nonnull align 8 dereferenceable(496) %0, i32 %1, i32 %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry", align 8 ; 9 uses
  %8 = alloca %"struct.v8::internal::compiler::turboshaft::MemoryAddress", align 4 ; 10 uses
  %9 = alloca %"struct.std::pair.331", align 8    ; 5 uses
  %10 = alloca %"struct.std::pair.630", align 8   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store i32 %1, ptr %8, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %3, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i8 %4, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 13
  store i8 %5, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.f = call { ptr, ptr } @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_8iteratorERSK_(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 4 dereferenceable(14) %8) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 4 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  %i.i = icmp eq ptr %i.g, null                   ; 2 uses
  %i.j = icmp eq ptr %i.g, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.g, align 1
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.b, %bb.a
  br i1 %i.j, label %bb.d, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit, !prof !9

bb.d:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit
  %i.m = load i8, ptr %i.g, align 1
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorptEv.exit, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorptEv.exit: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.03.0.copyload = load ptr, ptr %i.o, align 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.q, %6
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE11SetNoNotifyENS2_16SnapshotTableKeyIS5_S6_EES5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorptEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp ult ptr %i.s, %i.u
  br i1 %i.v, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE8LogEntryEE9push_backEOS8_.exit.i.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 4
  %i.ad = add nsw i64 %i.ac, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 noundef %i.ad)
  %.pre.i.i.i.i = load ptr, ptr %i.r, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE8LogEntryEE9push_backEOS8_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE8LogEntryEE9push_backEOS8_.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ae = phi ptr [ %i.s, %bb.g ], [ %.pre.i.i.i.i, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.af, ptr %i.r, align 8
  store ptr %.sroa.03.0.copyload, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.q, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 %6, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  store i32 %6, ptr %i.p, align 8
  br label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE11SetNoNotifyENS2_16SnapshotTableKeyIS5_S6_EES5_.exit

bb.i:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp ugt i64 %i.ah, 1310851071
  br i1 %i.ai, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 515), align 1, !range !5, !noundef !7
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.k, label %_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_18MemoryContentTableENS2_7OpIndexENS2_7KeyDataEE11SetNoNotifyENS2_16SnapshotTableKeyIS5_S6_EES5_.exit, !prof !9

end_hunk_2
begin_hunk_3_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE7emplaceIJSJ_IS7_SB_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESJ_INSN_8iteratorEbEDpOSR_:bb.a
  %i.m = load i32, ptr %i.l, align 4, !noalias !108
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i32, ptr %i.n, align 8, !noalias !108
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 12
  %i.r = load i8, ptr %i.q, align 4, !noalias !108
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load i8, ptr %i.s, align 4, !noalias !108
  %i.u = icmp eq i8 %i.r, %i.t
  br i1 %i.u, label %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.thread.i

_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i.i.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 13
  %i.w = load i8, ptr %i.v, align 1, !noalias !108
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.y = load i8, ptr %i.x, align 1, !noalias !108
  %i.z = icmp eq i8 %i.w, %i.y
  br i1 %i.z, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.thread5.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.thread.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.thread5.i: ; preds = %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i.i.i
  store ptr @_ZN4absl18container_internal11kSooControlE, ptr %0, align 8, !alias.scope !108
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !alias.scope !108
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.aa, align 8, !alias.scope !108
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJOS7_EEST_IJOSB_EEEEESJ_INSN_8iteratorEbERKT_DpOT0_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.thread.i: ; preds = %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i.i.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !108
  store ptr %1, ptr %3, align 8, !noalias !108
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.ab, align 8, !noalias !108
  %i.ac = call { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft13MemoryAddressEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #22, !noalias !108 ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1      ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !alias.scope !108
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !108
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.af, align 8, !alias.scope !108
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !108
  br label %bb.g

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i: ; preds = %bb.a
  tail call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE28find_or_prepare_insert_largeIS7_EESJ_INSN_8iteratorEbERKT_(ptr dead_on_unwind writable sret(%"struct.std::pair.630") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !5, !alias.scope !98
  %i.ag = trunc nuw i8 %.pre.i to i1
  br i1 %i.ag, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i._crit_edge, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJOS7_EEST_IJOSB_EEEEESJ_INSN_8iteratorEbERKT_DpOT0_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i._crit_edge: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i
  %.sroa.2.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i.pre = load ptr, ptr %.sroa.2.0..sroa_idx.i.phi.trans.insert, align 8, !alias.scope !98
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i._crit_edge, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.thread.i
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i.pre, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i._crit_edge ], [ %i.ae, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.thread.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 16
  %i.ai = load i64, ptr %i.a, align 8
  store i64 %i.ai, ptr %i.ah, align 8
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJOS7_EEST_IJOSB_EEEEESJ_INSN_8iteratorEbERKT_DpOT0_.exit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJOS7_EEST_IJOSB_EEEEESJ_INSN_8iteratorEbERKT_DpOT0_.exit: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.thread5.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE28find_or_prepare_insert_largeIS7_EESJ_INSN_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.630") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(14) %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8 ; 3 uses
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %sext = shl i64 %i.d, 48
  %i.e = ashr exact i64 %sext, 48
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 13
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %2, align 4 ; 2 uses
  %i.j = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.k = xor i64 %i.e, %i.j
  %i.l = zext i64 %i.k to i128
  %i.m = mul nuw nsw i128 %i.l, 8779197792823184629 ; 2 uses
  %i.n = lshr i128 %i.m, 64
  %i.o = xor i128 %i.n, %i.m
  %i.p = trunc i128 %i.o to i64
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.f, align 4 ; 2 uses
  %i.q = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.r = xor i64 %i.p, %i.q
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.g, align 4 ; 2 uses
  %i.x = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.y = xor i64 %i.w, %i.x
  %i.z = zext i64 %i.y to i128
  %i.aa = mul nuw nsw i128 %i.z, 8779197792823184629 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64
  %i.ae = load i8, ptr %i.h, align 4              ; 2 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = xor i64 %i.ad, %i.af
  %i.ah = zext i64 %i.ag to i128
  %i.ai = mul nuw nsw i128 %i.ah, 8779197792823184629 ; 2 uses
  %i.aj = lshr i128 %i.ai, 64
  %i.ak = xor i128 %i.aj, %i.ai
  %i.al = trunc i128 %i.ak to i64
  %i.am = load i8, ptr %i.i, align 1              ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = xor i64 %i.al, %i.an
  %i.ap = zext i64 %i.ao to i128
  %i.aq = mul nuw nsw i128 %i.ap, 8779197792823184629 ; 2 uses
  %i.ar = lshr i128 %i.aq, 64
  %i.as = xor i128 %i.ar, %i.aq
  %i.at = trunc i128 %i.as to i64                 ; 3 uses
  %i.au = lshr i64 %i.at, 57
  %i.av = trunc nuw nsw i64 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22 = load ptr, ptr %i.aw, align 8 ; 2 uses
  %i.ax = insertelement <16 x i8> poison, i8 %i.av, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.pn = phi i64 [ %i.at, %bb.a ], [ %i.ci, %bb.f ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.ch, %bb.f ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.b                 ; 5 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i22, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.az, i32 0, i32 3, i32 1)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0
  %i.bb = load <16 x i8>, ptr %i.ba, align 1      ; 2 uses
  %i.bc = icmp eq <16 x i8> %i.ay, %i.bb
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %.not64 = icmp eq i16 %i.bd, 0
  br i1 %.not64, label %.critedge19, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.035.065 = phi i16 [ %i.bx, %.critedge ], [ %i.bd, %bb.b ] ; 3 uses
  %i.be = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = add i64 %.sroa.7.0, %i.bf
  %i.bh = and i64 %i.bg, %i.b                     ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i22, i64 %i.bh ; 6 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = icmp eq i32 %i.bj, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bk, label %bb.c, label %.critedge, !prof !89

bb.c:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.bl, align 4
  %i.bm = icmp eq i32 %.sroa.01.0.copyload.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bm, label %bb.d, label %.critedge, !prof !89

bb.d:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = icmp eq i32 %i.bo, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bp, label %bb.e, label %.critedge, !prof !89

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.br = load i8, ptr %i.bq, align 4
  %i.bs = icmp eq i8 %i.br, %i.ae
  br i1 %i.bs, label %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit, label %.critedge, !prof !89

_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit: ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 13
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = icmp eq i8 %i.bu, %i.am
  br i1 %i.bv, label %.critedge21, label %.critedge, !prof !90

.critedge:                                        ; preds = %.lr.ph, %bb.c, %bb.d, %bb.e, %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit
  %i.bw = add i16 %.sroa.035.065, -1
  %i.bx = and i16 %i.bw, %.sroa.035.065           ; 2 uses
  %.not = icmp eq i16 %i.bx, 0
  br i1 %.not, label %.critedge19, label %.lr.ph

.critedge19:                                      ; preds = %.critedge, %bb.b
  %i.by = icmp eq <16 x i8> %i.bb, splat (i8 -128)
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not57 = icmp eq i16 %i.bz, 0
  br i1 %.not57, label %bb.f, label %.thread, !prof !9

.thread:                                          ; preds = %.critedge19
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bz, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = add i64 %.sroa.7.0, %i.cb
  %i.cd = and i64 %i.cc, %i.b
  %i.ce = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.at, i64 %i.cd, i64 %.sroa.15.0) #22 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25 = load ptr, ptr %i.a, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25, i64 %i.ce
  %.sroa.0.0.copyload.i.i.i2.i26 = load ptr, ptr %i.aw, align 8
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26, i64 %i.ce
  br label %bb.g

bb.f:                                             ; preds = %.critedge19
  %i.ch = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.ci = add i64 %i.ch, %.sroa.7.0
  br label %bb.b

.critedge21:                                      ; preds = %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bh
  br label %bb.g

bb.g:                                             ; preds = %.thread, %.critedge21
  %.sink83 = phi ptr [ %i.cf, %.thread ], [ %i.cj, %.critedge21 ] ; 2 uses
  %.sink81 = phi ptr [ %i.cg, %.thread ], [ %i.bi, %.critedge21 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge21 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink83) ]
  store ptr %.sink83, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ck, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft13MemoryAddressEEES8_Lb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 13
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 1
  %i.e = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.f = xor i64 %2, %i.e
  %i.g = zext i64 %i.f to i128
  %i.h = mul nuw nsw i128 %i.g, 8779197792823184629 ; 2 uses
  %i.i = lshr i128 %i.h, 64
  %i.j = xor i128 %i.i, %i.h
  %i.k = trunc i128 %i.j to i64
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.a, align 1
  %i.l = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.m = xor i64 %i.k, %i.l
  %i.n = zext i64 %i.m to i128
  %i.o = mul nuw nsw i128 %i.n, 8779197792823184629 ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o
  %i.r = trunc i128 %i.q to i64
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.b, align 1
  %i.s = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.t = xor i64 %i.r, %i.s
  %i.u = zext i64 %i.t to i128
  %i.v = mul nuw nsw i128 %i.u, 8779197792823184629 ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = xor i128 %i.w, %i.v
  %i.y = trunc i128 %i.x to i64
  %i.z = load i8, ptr %i.c, align 1
  %i.aa = zext i8 %i.z to i64
  %i.ab = xor i64 %i.y, %i.aa
  %i.ac = zext i64 %i.ab to i128
  %i.ad = mul nuw nsw i128 %i.ac, 8779197792823184629 ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = xor i128 %i.ae, %i.ad
  %i.ag = trunc i128 %i.af to i64
  %i.ah = load i8, ptr %i.d, align 1
  %i.ai = zext i8 %i.ah to i64
  %i.aj = xor i64 %i.ag, %i.ai
  %i.ak = zext i64 %i.aj to i128
  %i.al = mul nuw nsw i128 %i.ak, 8779197792823184629 ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = xor i128 %i.am, %i.al
  %i.ao = trunc i128 %i.an to i64
  ret i64 %i.ao
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal20TransferNRelocatableILm24EEEvPvS2_S2_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #11 comdat {
bb.a:
  %i.a = mul i64 %3, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvST_PFvST_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #9 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.p = add nuw i64 %.062, 16                    ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !109

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.ch, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.062, %i.s              ; 4 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.t ; 6 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 13
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.u, align 1
  %i.ab = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = xor i64 %i.w, %i.ab
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw nsw i128 %i.ad, 8779197792823184629 ; 2 uses
  %i.af = lshr i128 %i.ae, 64
  %i.ag = xor i128 %i.af, %i.ae
  %i.ah = trunc i128 %i.ag to i64
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.x, align 1
  %i.ai = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aj = xor i64 %i.ah, %i.ai
  %i.ak = zext i64 %i.aj to i128
  %i.al = mul nuw nsw i128 %i.ak, 8779197792823184629 ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = xor i128 %i.am, %i.al
  %i.ao = trunc i128 %i.an to i64
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.y, align 1
  %i.ap = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aq = xor i64 %i.ao, %i.ap
  %i.ar = zext i64 %i.aq to i128
  %i.as = mul nuw nsw i128 %i.ar, 8779197792823184629 ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = xor i128 %i.at, %i.as
  %i.av = trunc i128 %i.au to i64
  %i.aw = load i8, ptr %i.z, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = xor i64 %i.av, %i.ax
  %i.az = zext i64 %i.ay to i128
  %i.ba = mul nuw nsw i128 %i.az, 8779197792823184629 ; 2 uses
  %i.bb = lshr i128 %i.ba, 64
  %i.bc = xor i128 %i.bb, %i.ba
  %i.bd = trunc i128 %i.bc to i64
  %i.be = load i8, ptr %i.aa, align 1
  %i.bf = zext i8 %i.be to i64
  %i.bg = xor i64 %i.bd, %i.bf
  %i.bh = zext i64 %i.bg to i128
  %i.bi = mul nuw nsw i128 %i.bh, 8779197792823184629 ; 2 uses
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = xor i128 %i.bj, %i.bi
  %i.bl = trunc i128 %i.bk to i64                 ; 6 uses
  %i.bm = lshr i64 %i.bl, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = sub i64 %i.t, %i.bl                     ; 2 uses
  %i.bp = and i64 %i.h, %i.bo
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %.lr.ph
  %i.br = and i64 %i.bo, 15
  %i.bs = add i64 %i.br, %i.bl
  %i.bt = and i64 %i.bs, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.bu = and i64 %i.b, %i.bl
  %.not.i = icmp ult i64 %i.bu, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.bv = and i64 %i.a, %i.bl                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.bv
  %i.bx = load <16 x i8>, ptr %i.bw, align 1
  %i.by = icmp slt <16 x i8> %i.bx, zeroinitializer
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.bz, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bz, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = add i64 %i.bv, %i.cb
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.bn, i64 noundef %i.t, i64 noundef %i.bl) #22
  br label %bb.j
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISM_ERS6_:bb.a
  %.not.i = icmp eq ptr %.021.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !162

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.m, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.020.lcssa30.i = phi ptr [ %.02125.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %.020.lcssa30.i, %i.o
  br i1 %i.p, label %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE24_M_get_insert_unique_posERS6_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i) #23 ; 2 uses
  %.sroa.0.0.copyload.i5.i.pre = load i32, ptr %2, align 4
  %.phi.trans.insert89 = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.pre90 = load i32, ptr %.phi.trans.insert89, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.r = phi i32 [ %.pre90, %bb.f ], [ %.sroa.0.0.copyload.i.i, %._crit_edge.i ]
  %.sroa.0.0.copyload.i5.i = phi i32 [ %.sroa.0.0.copyload.i5.i.pre, %bb.f ], [ %i.k, %._crit_edge.i ]
  %.020.lcssa29.i = phi ptr [ %.020.lcssa30.i, %bb.f ], [ %.02125.i, %._crit_edge.i ]
  %.sroa.06.0.i = phi ptr [ %i.q, %bb.f ], [ %.02125.i, %._crit_edge.i ]
  %i.s = icmp ult i32 %i.r, %.sroa.0.0.copyload.i5.i ; 2 uses
  %spec.select.i = select i1 %i.s, ptr null, ptr %.sroa.06.0.i
  %spec.select22.i = select i1 %i.s, ptr %.020.lcssa29.i, ptr null
  br label %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE24_M_get_insert_unique_posERS6_.exit

bb.h:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.t, align 4 ; 2 uses
  %i.u = load i32, ptr %2, align 4                ; 8 uses
  %i.v = icmp ult i32 %i.u, %.sroa.0.0.copyload.i10
  br i1 %i.v, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = icmp eq ptr %i.x, %1
  br i1 %i.y, label %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE24_M_get_insert_unique_posERS6_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp ult i32 %i.ab, %i.u
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, null                 ; 2 uses
  %spec.select = select i1 %i.af, ptr null, ptr %1
  %spec.select79 = select i1 %i.af, ptr %i.z, ptr %1
  br label %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE24_M_get_insert_unique_posERS6_.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02123.i12 = load ptr, ptr %i.ag, align 8      ; 2 uses
  %.not24.i13 = icmp eq ptr %.02123.i12, null
  br i1 %.not24.i13, label %._crit_edge.thread.i31, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.l, %.lr.ph.i14
  %.02125.i15 = phi ptr [ %.021.i19, %.lr.ph.i14 ], [ %.02123.i12, %bb.l ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.02125.i15, i64 32
  %.sroa.0.0.copyload.i.i16 = load i32, ptr %i.ah, align 4 ; 2 uses
  %i.ai = icmp ult i32 %i.u, %.sroa.0.0.copyload.i.i16 ; 2 uses
  %.in.v.i17 = select i1 %i.ai, i64 16, i64 24
  %.in.i18 = getelementptr inbounds nuw i8, ptr %.02125.i15, i64 %.in.v.i17
  %.021.i19 = load ptr, ptr %.in.i18, align 8     ; 2 uses
  %.not.i20 = icmp eq ptr %.021.i19, null
  br i1 %.not.i20, label %._crit_edge.i21, label %.lr.ph.i14, !llvm.loop !162

._crit_edge.i21:                                  ; preds = %.lr.ph.i14
  br i1 %i.ai, label %._crit_edge.thread.i31, label %bb.n

._crit_edge.thread.i31:                           ; preds = %._crit_edge.i21, %bb.l
  %.020.lcssa30.i32 = phi ptr [ %.02125.i15, %._crit_edge.i21 ], [ %i.a, %bb.l ] ; 4 uses
  %i.aj = icmp eq ptr %.020.lcssa30.i32, %i.x
  br i1 %i.aj, label %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE24_M_get_insert_unique_posERS6_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i31
  %i.ak = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i32) #23 ; 2 uses
  %.phi.trans.insert86 = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.pre87 = load i32, ptr %.phi.trans.insert86, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i21
  %i.al = phi i32 [ %.pre87, %bb.m ], [ %.sroa.0.0.copyload.i.i16, %._crit_edge.i21 ]
  %.020.lcssa29.i22 = phi ptr [ %.020.lcssa30.i32, %bb.m ], [ %.02125.i15, %._crit_edge.i21 ]
  %.sroa.06.0.i23 = phi ptr [ %i.ak, %bb.m ], [ %.02125.i15, %._crit_edge.i21 ]
  %i.am = icmp ult i32 %i.al, %i.u                ; 2 uses
  %spec.select.i25 = select i1 %i.am, ptr null, ptr %.sroa.06.0.i23
  %spec.select22.i26 = select i1 %i.am, ptr %.020.lcssa29.i22, ptr null
  br label %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE24_M_get_insert_unique_posERS6_.exit

bb.o:                                             ; preds = %bb.h
  %i.an = icmp ult i32 %.sroa.0.0.copyload.i10, %i.u
  br i1 %i.an, label %bb.p, label %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE24_M_get_insert_unique_posERS6_.exit

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %1
  br i1 %i.aq, label %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE24_M_get_insert_unique_posERS6_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.0.0.copyload.i35 = load i32, ptr %i.as, align 4
  %i.at = icmp ult i32 %i.u, %.sroa.0.0.copyload.i35
  br i1 %i.at, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = icmp eq ptr %i.av, null                 ; 2 uses
  %spec.select80 = select i1 %i.aw, ptr null, ptr %i.ar
  %spec.select81 = select i1 %i.aw, ptr %1, ptr %i.ar
  br label %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE24_M_get_insert_unique_posERS6_.exit

bb.s:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02123.i36 = load ptr, ptr %i.ax, align 8      ; 2 uses
  %.not24.i37 = icmp eq ptr %.02123.i36, null
  br i1 %.not24.i37, label %._crit_edge.thread.i55, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.s, %.lr.ph.i38
  %.02125.i39 = phi ptr [ %.021.i43, %.lr.ph.i38 ], [ %.02123.i36, %bb.s ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02125.i39, i64 32
  %.sroa.0.0.copyload.i.i40 = load i32, ptr %i.ay, align 4 ; 2 uses
  %i.az = icmp ult i32 %i.u, %.sroa.0.0.copyload.i.i40 ; 2 uses
  %.in.v.i41 = select i1 %i.az, i64 16, i64 24
  %.in.i42 = getelementptr inbounds nuw i8, ptr %.02125.i39, i64 %.in.v.i41
  %.021.i43 = load ptr, ptr %.in.i42, align 8     ; 2 uses
  %.not.i44 = icmp eq ptr %.021.i43, null
  br i1 %.not.i44, label %._crit_edge.i45, label %.lr.ph.i38, !llvm.loop !162

._crit_edge.i45:                                  ; preds = %.lr.ph.i38
  br i1 %i.az, label %._crit_edge.thread.i55, label %bb.u

._crit_edge.thread.i55:                           ; preds = %._crit_edge.i45, %bb.s
  %.020.lcssa30.i56 = phi ptr [ %.02125.i39, %._crit_edge.i45 ], [ %i.a, %bb.s ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %.020.lcssa30.i56, %i.bb
  br i1 %i.bc, label %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE24_M_get_insert_unique_posERS6_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i55
  %i.bd = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i56) #23 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i45
  %i.be = phi i32 [ %.pre, %bb.t ], [ %.sroa.0.0.copyload.i.i40, %._crit_edge.i45 ]
  %.020.lcssa29.i46 = phi ptr [ %.020.lcssa30.i56, %bb.t ], [ %.02125.i39, %._crit_edge.i45 ]
  %.sroa.06.0.i47 = phi ptr [ %i.bd, %bb.t ], [ %.02125.i39, %._crit_edge.i45 ]
  %i.bf = icmp ult i32 %i.be, %i.u                ; 2 uses
  %spec.select.i49 = select i1 %i.bf, ptr null, ptr %.sroa.06.0.i47
  %spec.select22.i50 = select i1 %i.bf, ptr %.020.lcssa29.i46, ptr null
  br label %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE24_M_get_insert_unique_posERS6_.exit

_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE24_M_get_insert_unique_posERS6_.exit: ; preds = %bb.u, %._crit_edge.thread.i55, %bb.n, %._crit_edge.thread.i31, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.078.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select80, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.x, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i31 ], [ %spec.select.i, %bb.g ], [ %spec.select.i25, %bb.n ], [ %spec.select.i49, %bb.u ], [ null, %._crit_edge.thread.i55 ]
  %.sroa.12.2 = phi ptr [ %i.ap, %bb.p ], [ %spec.select79, %bb.k ], [ %i.f, %bb.c ], [ %spec.select81, %bb.r ], [ %.020.lcssa30.i, %._crit_edge.thread.i ], [ %i.x, %bb.i ], [ null, %bb.o ], [ %.020.lcssa30.i32, %._crit_edge.thread.i31 ], [ %spec.select22.i, %bb.g ], [ %spec.select22.i26, %bb.n ], [ %spec.select22.i50, %bb.u ], [ %.020.lcssa30.i56, %._crit_edge.thread.i55 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.078.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %3 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry.686", align 4 ; 7 uses
  %4 = alloca %"struct.std::pair.251", align 8    ; 6 uses
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
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !6

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
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i, !prof !9

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ap = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !35

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
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit, !prof !9

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorptEv.exit, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %bb.y

bb.m:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
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
  %.pre.i.i.i = load ptr, ptr %i.be, align 8, !noalias !163
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bm = phi ptr [ %.pre.i.i.i, %bb.o ], [ %i.bk, %bb.n ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !163
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %bb.q, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE6NewKeyEb.exit

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !163
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 504
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE6NewKeyEb.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE6NewKeyEb.exit: ; preds = %bb.p, %bb.q
  %i.bv = phi ptr [ %i.bu, %bb.q ], [ %i.bm, %bb.p ]
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 %1, ptr %4, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  store i64 %i.by, ptr %i.bx, align 8
  %i.bz = load i64, ptr %i.a, align 8, !noalias !166 ; 4 uses
  %i.ca = icmp ult i64 %i.bz, 2
  br i1 %i.ca, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE6NewKeyEb.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !183
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.cc, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 131072, ptr %i.cb, align 8, !noalias !183
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.t:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cf = load i32, ptr %i.ce, align 8, !noalias !183
  %i.cg = icmp eq i32 %i.cf, %1
  br i1 %i.cg, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !183
  store ptr %i.a, ptr %2, align 8, !noalias !183
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %4, ptr %i.ch, align 8, !noalias !183
  %i.ci = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #22, !noalias !183
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !183
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cj, align 8, !noalias !183
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ci
  %.pre = load i32, ptr %4, align 8, !noalias !188
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE6NewKeyEb.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i2 = load ptr, ptr %i.cl, align 8, !noalias !189 ; 2 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i2, i32 0, i32 1, i32 1), !noalias !189
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !189
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
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.cy, align 8, !noalias !189 ; 2 uses
  %i.cz = insertelement <16 x i8> poison, i8 %i.cx, i64 0
  %i.da = shufflevector <16 x i8> %i.cz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.pn.i5 = phi i64 [ %i.cv, %bb.v ], [ %i.dy, %bb.x ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.v ], [ %i.dx, %bb.x ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i5, %i.bz           ; 5 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.db, i32 0, i32 3, i32 1), !noalias !189
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i2, i64 %.sroa.7.0.i
  %i.dd = load <16 x i8>, ptr %i.dc, align 1, !noalias !189 ; 2 uses
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
  %i.dl = load i32, ptr %i.dk, align 4, !noalias !189
  %i.dm = icmp eq i32 %i.dl, %1
  br i1 %i.dm, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %.critedge.i, !prof !6

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.dn = add i16 %.sroa.035.065.i, -1
  %i.do = and i16 %i.dn, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.do, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.w
  %i.dp = icmp eq <16 x i8> %i.dd, splat (i8 -128)
  %i.dq = bitcast <16 x i1> %i.dp to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.dq, 0
  br i1 %.not57.i, label %bb.x, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19, !prof !9

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19: ; preds = %.critedge19.i
  %i.dr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dq, i1 true)
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = add i64 %.sroa.7.0.i, %i.ds
  %i.du = and i64 %i.dt, %i.bz
  %i.dv = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.cv, i64 %i.du, i64 %.sroa.15.0.i) #22, !noalias !189
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.cy, align 8, !noalias !189
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.dv
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
  %i.eb = load i64, ptr %i.bx, align 8, !noalias !188
  store i64 %i.eb, ptr %i.ea, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit: ; preds = %.lr.ph.i, %bb.t, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #25
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
  br i1 %i.ay, label %bb.h, label %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.as, i64 noundef 504) #22
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
  br i1 %i.z, label %bb.d, label %bb.e, !prof !6

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
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.e, i64 %i.ae, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEES8_ET0_T_SA_S9_.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = icmp eq i64 %i.ae, 8
  br i1 %i.aj, label %bb.j, label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEES8_ET0_T_SA_S9_.exit

bb.j:                                             ; preds = %bb.i
end_hunk_4
begin_hunk_5_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSS_PFvSS_hmmE:bb.a
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.an = and i64 %i.a, %i.ad                     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.an
  %i.ap = load <16 x i8>, ptr %i.ao, align 1
  %i.aq = icmp slt <16 x i8> %i.ap, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.ar, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %i.an, %i.at
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.af, i64 noundef %i.t, i64 noundef %i.ad) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.au, %bb.g ], [ %i.al, %bb.d ] ; 3 uses
  %i.av = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.af, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ax, ptr noundef nonnull align 1 dereferenceable(16) %i.u, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = add i16 %.sroa.052.061, -1
  %i.az = and i16 %i.ay, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.az, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 {
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
  br i1 %i.j, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE11NewCapacityEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = sdiv exact i64 %i.l, 40
  %i.n = shl nsw i64 %i.m, 1
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE11NewCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE11NewCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 2, %bb.a ]
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %1) ; 3 uses
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  %i.r = icmp ult i64 %i.p, 461168601842738790
  br i1 %i.r, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE11NewCapacityEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #25
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE11NewCapacityEm.exit
  %i.s = mul nuw i64 %i.p, 40                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_12MapMaskAndOrENS4_9NoKeyDataEE8LogEntryEA_S9_EEPT_m.exit, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.s) #22
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_12MapMaskAndOrENS4_9NoKeyDataEE8LogEntryEA_S9_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_12MapMaskAndOrENS4_9NoKeyDataEE8LogEntryEA_S9_EEPT_m.exit: ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %.pre.i.i, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  store ptr %i.aa, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.g
  store ptr %i.ac, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_12MapMaskAndOrENS4_9NoKeyDataEE8LogEntryEA_S9_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aa, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_12MapMaskAndOrENS4_9NoKeyDataEE8LogEntryEA_S9_EEPT_m.exit
  %i.ad = phi ptr [ %.pre, %bb.f ], [ %i.aa, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_12MapMaskAndOrENS4_9NoKeyDataEE8LogEntryEA_S9_EEPT_m.exit ]
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.p
  store ptr %i.ae, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 4                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableIbNS4_9NoKeyDataEE8LogEntryEA_S8_EEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #22
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableIbNS4_9NoKeyDataEE8LogEntryEA_S8_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableIbNS4_9NoKeyDataEE8LogEntryEA_S8_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableIbNS4_9NoKeyDataEE8LogEntryEA_S8_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableIbNS4_9NoKeyDataEE8LogEntryEA_S8_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableIbNS4_9NoKeyDataEE8LogEntryEA_S8_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %3 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry.679", align 8 ; 6 uses
  %4 = alloca %"struct.std::pair.649", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_8iteratorERSK_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_8iteratorERSK_.exit

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
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !6

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.al = add i16 %.sroa.017.047.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i, !prof !9

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ap = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !37

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ak, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ah, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_8iteratorERSK_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_8iteratorERSK_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_8iteratorERSK_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_8iteratorERSK_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit, !prof !9

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorptEv.exit, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %bb.y

bb.m:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 0, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i.i, i8 -1, i64 16, i1 false)
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -24
  %.not.i.i.i1 = icmp eq ptr %i.bd, %i.bg
  br i1 %.not.i.i.i1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.bh = load ptr, ptr %i.bc, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  store ptr %i.bi, ptr %i.bc, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre.i.i.i = load ptr, ptr %i.bc, align 8, !noalias !193
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bk = phi ptr [ %.pre.i.i.i, %bb.o ], [ %i.bi, %bb.n ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !193
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.q, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE6NewKeyES4_.exit

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !193
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 504
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE6NewKeyES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE6NewKeyES4_.exit: ; preds = %bb.p, %bb.q
  %i.bt = phi ptr [ %i.bs, %bb.q ], [ %i.bk, %bb.p ]
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 %1, ptr %4, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  store i64 %i.bw, ptr %i.bv, align 8
  %i.bx = load i64, ptr %i.a, align 8, !noalias !196 ; 4 uses
  %i.by = icmp ult i64 %i.bx, 2
  br i1 %i.by, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE6NewKeyES4_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !213
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.ca, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 131072, ptr %i.bz, align 8, !noalias !213
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.t:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cd = load i32, ptr %i.cc, align 8, !noalias !213
  %i.ce = icmp eq i32 %i.cd, %1
  br i1 %i.ce, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE6insertEOSJ_IS7_SB_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !213
  store ptr %i.a, ptr %2, align 8, !noalias !213
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %4, ptr %i.cf, align 8, !noalias !213
  %i.cg = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #22, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !213
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !noalias !213
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cg
  %.pre = load i32, ptr %4, align 8, !noalias !218
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE6NewKeyES4_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i2 = load ptr, ptr %i.cj, align 8, !noalias !219 ; 2 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i2, i32 0, i32 1, i32 1), !noalias !219
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !219
  %sext.i3 = shl i64 %i.cl, 48
  %i.cm = ashr exact i64 %sext.i3, 48
  %i.cn = zext i32 %1 to i64
  %i.co = xor i64 %i.cm, %i.cn
  %i.cp = zext i64 %i.co to i128
  %i.cq = mul nuw nsw i128 %i.cp, 8779197792823184629 ; 2 uses
  %i.cr = lshr i128 %i.cq, 64
  %i.cs = xor i128 %i.cr, %i.cq
  %i.ct = trunc i128 %i.cs to i64                 ; 3 uses
  %i.cu = lshr i64 %i.ct, 57
  %i.cv = trunc nuw nsw i64 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.cw, align 8, !noalias !219 ; 2 uses
  %i.cx = insertelement <16 x i8> poison, i8 %i.cv, i64 0
  %i.cy = shufflevector <16 x i8> %i.cx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.pn.i5 = phi i64 [ %i.ct, %bb.v ], [ %i.dw, %bb.x ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.v ], [ %i.dv, %bb.x ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i5, %i.bx           ; 5 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.cz, i32 0, i32 3, i32 1), !noalias !219
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i2, i64 %.sroa.7.0.i
  %i.db = load <16 x i8>, ptr %i.da, align 1, !noalias !219 ; 2 uses
  %i.dc = icmp eq <16 x i8> %i.cy, %i.db
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.dd, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.dm, %.critedge.i ], [ %i.dd, %bb.w ] ; 3 uses
  %i.de = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.7.0.i, %i.df
  %i.dh = and i64 %i.dg, %i.bx
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !noalias !219
  %i.dk = icmp eq i32 %i.dj, %1
  br i1 %i.dk, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE6insertEOSJ_IS7_SB_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %.critedge.i, !prof !6

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.dl = add i16 %.sroa.035.065.i, -1
  %i.dm = and i16 %i.dl, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.dm, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.w
  %i.dn = icmp eq <16 x i8> %i.db, splat (i8 -128)
  %i.do = bitcast <16 x i1> %i.dn to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.do, 0
  br i1 %.not57.i, label %bb.x, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19, !prof !9

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19: ; preds = %.critedge19.i
  %i.dp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.do, i1 true)
  %i.dq = zext nneg i16 %i.dp to i64
  %i.dr = add i64 %.sroa.7.0.i, %i.dq
  %i.ds = and i64 %i.dr, %i.bx
  %i.dt = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ct, i64 %i.ds, i64 %.sroa.15.0.i) #22, !noalias !219
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.cw, align 8, !noalias !219
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.dt
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.x:                                             ; preds = %.critedge19.i
  %i.dv = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.dw = add i64 %i.dv, %.sroa.7.0.i
  br label %bb.w

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread: ; preds = %bb.s, %bb.u, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19
  %i.dx = phi i32 [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19 ], [ %1, %bb.s ], [ %.pre, %bb.u ]
  %.sroa.4.016 = phi ptr [ %i.du, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19 ], [ %i.cb, %bb.s ], [ %i.ci, %bb.u ] ; 2 uses
  store i32 %i.dx, ptr %.sroa.4.016, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.4.016, i64 8
  %i.dz = load i64, ptr %i.bv, align 8, !noalias !218
  store i64 %i.dz, ptr %i.dy, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE6insertEOSJ_IS7_SB_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE6insertEOSJ_IS7_SB_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit: ; preds = %.lr.ph.i, %bb.t, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.y

bb.y:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE6insertEOSJ_IS7_SB_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorptEv.exit
  %.sroa.014.0 = phi ptr [ %i.bb, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorptEv.exit ], [ %i.bu, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE6insertEOSJ_IS7_SB_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit ]
  ret ptr %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
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
  %i.m = mul nsw i64 %i.l, 21
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 768614336404564650
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #25
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
  br i1 %i.am, label %bb.d, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %.not5.i.i.i = icmp ult i64 %i.aq, 21
  br i1 %.not5.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ao, align 8
  store ptr %i.ar, ptr %i.an, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_allocate_nodeEv.exit

bb.g:                                             ; preds = %bb.e, %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = icmp ult i64 %i.ax, 504
  br i1 %i.ay, label %bb.h, label %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.as, i64 noundef 504) #22
  %.pre.i.i.i.i.i.i = load i64, ptr %i.av, align 8
  br label %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i

_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.az = phi i64 [ %.pre.i.i.i.i.i.i, %bb.h ], [ %i.aw, %bb.g ] ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = add i64 %i.az, 504
  store i64 %i.bb, ptr %i.av, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_allocate_nodeEv.exit

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_allocate_nodeEv.exit: ; preds = %bb.f, %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.ba, %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i ]
  %i.bc = load ptr, ptr %i.c, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.0.i.i.i, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
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
define linkonce_odr hidden void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
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
  br i1 %i.z, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.u, ptr nonnull align 8 %i.e, i64 %i.y, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEES9_ET0_T_SB_SA_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.y, 8
  br i1 %i.aa, label %bb.f, label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEES9_ET0_T_SB_SA_.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.e, align 8
  store ptr %i.ab, ptr %i.u, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEES9_ET0_T_SB_SA_.exit

bb.g:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.j ; 2 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.ad, %i.g                     ; 3 uses
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 1
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.e, i64 %i.ae, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEES9_ET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = icmp eq i64 %i.ae, 8
  br i1 %i.aj, label %bb.j, label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEES9_ET0_T_SB_SA_.exit

bb.j:                                             ; preds = %bb.i
end_hunk_5
