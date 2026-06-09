inline.NumInlined: 4409
inline.NumDeleted: 2144
begin_hunk_0_@_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv:bb.a

bb.z:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.fca.0.insert.i.i196 = insertvalue { ptr, i64 } poison, ptr %i.ao, 0
  %.fca.1.insert.i.i197 = insertvalue { ptr, i64 } %.fca.0.insert.i.i196, i64 1, 1
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.aa:                                            ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.fca.0.insert.i.i198 = insertvalue { ptr, i64 } poison, ptr %i.ap, 0
  %.fca.1.insert.i.i199 = insertvalue { ptr, i64 } %.fca.0.insert.i.i198, i64 1, 1
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.ab:                                            ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.fca.0.insert.i.i200 = insertvalue { ptr, i64 } poison, ptr %i.aq, 0
  %.fca.1.insert.i.i201 = insertvalue { ptr, i64 } %.fca.0.insert.i.i200, i64 1, 1
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.ac:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.fca.0.insert.i.i202 = insertvalue { ptr, i64 } poison, ptr %i.ar, 0
  %.fca.1.insert.i.i203 = insertvalue { ptr, i64 } %.fca.0.insert.i.i202, i64 1, 1
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.ad:                                            ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.fca.0.insert.i.i204 = insertvalue { ptr, i64 } poison, ptr %i.as, 0
  %.fca.1.insert.i.i205 = insertvalue { ptr, i64 } %.fca.0.insert.i.i204, i64 1, 1
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.ae:                                            ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.at, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 1, 1
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.af:                                            ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = icmp eq i8 %i.av, 0
  %spec.select.i206 = select i1 %i.aw, { ptr, i64 } { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE4EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, { ptr, i64 } { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE1EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.ag:                                            ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.fca.0.insert.i.i207 = insertvalue { ptr, i64 } poison, ptr %i.ax, 0
  %.fca.1.insert.i.i208 = insertvalue { ptr, i64 } %.fca.0.insert.i.i207, i64 1, 1
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.ah:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.sroa.0.0.copyload.i209 = load ptr, ptr %i.az, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.fca.0.insert.i210 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i209, 0
  %.fca.1.insert.i211 = insertvalue { ptr, i64 } %.fca.0.insert.i210, i64 %.sroa.2.0.copyload.i, 1
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.ai:                                            ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.fca.0.insert.i.i212 = insertvalue { ptr, i64 } poison, ptr %i.ba, 0
  %.fca.1.insert.i.i213 = insertvalue { ptr, i64 } %.fca.0.insert.i.i212, i64 1, 1
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.aj:                                            ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.fca.0.insert.i.i214 = insertvalue { ptr, i64 } poison, ptr %i.bb, 0
  %.fca.1.insert.i.i215 = insertvalue { ptr, i64 } %.fca.0.insert.i.i214, i64 1, 1
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.ak:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bd = load i8, ptr %i.bc, align 4
  %i.be = icmp eq i8 %i.bd, 8                     ; 2 uses
  %spec.select.i216 = select i1 %i.be, ptr null, ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array
  %spec.select1.i = select i1 %i.be, i64 0, i64 2
  %.fca.0.insert.i217 = insertvalue { ptr, i64 } poison, ptr %spec.select.i216, 0
  %.fca.1.insert.i218 = insertvalue { ptr, i64 } %.fca.0.insert.i217, i64 %spec.select1.i, 1
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.al:                                            ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.fca.0.insert.i.i219 = insertvalue { ptr, i64 } poison, ptr %i.bf, 0
  %.fca.1.insert.i.i220 = insertvalue { ptr, i64 } %.fca.0.insert.i.i219, i64 1, 1
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.am:                                            ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = load i8, ptr %i.bg, align 4
  switch i8 %i.bh, label %bb.an [
    i8 0, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 1, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 3, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 5, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 6, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 4, label %bb.ar
    i8 2, label %bb.ar
    i8 7, label %bb.ar
    i8 8, label %bb.ar
    i8 9, label %bb.as
  ]

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = load i8, ptr %i.bi, align 4
  switch i8 %i.bj, label %bb.ap [
    i8 0, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 2, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 3, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 1, label %bb.ar
    i8 4, label %bb.as
  ]

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bl = load i8, ptr %i.bk, align 1
  switch i8 %i.bl, label %bb.at [
    i8 0, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 1, label %bb.ar
    i8 2, label %bb.ar
    i8 3, label %bb.as
    i8 4, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.k, %bb.am, %bb.am, %bb.am, %bb.am, %bb.ao, %bb.aq, %bb.aq, %bb.aq
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.as:                                            ; preds = %bb.a, %bb.k, %bb.am, %bb.ao, %bb.aq
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.at:                                            ; preds = %bb.aq
  unreachable

bb.au:                                            ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bn = load i8, ptr %i.bm, align 4
  %i.bo = icmp eq i8 %i.bn, 1
  %spec.select.i224 = select i1 %i.bo, { ptr, i64 } { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE1EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, { ptr, i64 } { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.av:                                            ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bq = load i8, ptr %i.bp, align 4
  %i.br = icmp eq i8 %i.bq, 1
  %spec.select.i225 = select i1 %i.br, { ptr, i64 } { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE1EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, { ptr, i64 } { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE4EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.aw:                                            ; preds = %bb.a
  %i.bs = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft21LoadDataViewElementOp11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(8) %0)
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.ax:                                            ; preds = %bb.a
  %i.bt = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(8) %0)
  br label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit

bb.ay:                                            ; preds = %bb.a
  unreachable

_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.as, %bb.ar, %bb.aq, %bb.ao, %bb.ao, %bb.ao, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.l, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.pn = phi { ptr, i64 } [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ %.fca.1.insert.i.i, %bb.b ], [ zeroinitializer, %bb.a ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE4EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.c ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.d ], [ zeroinitializer, %bb.a ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE1EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.ar ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.aq ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.ao ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.ao ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.am ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.am ], [ %i.e, %bb.e ], [ zeroinitializer, %bb.a ], [ %.fca.1.insert.i.i175, %bb.f ], [ %.fca.1.insert.i.i177, %bb.g ], [ zeroinitializer, %bb.a ], [ %.fca.1.insert.i.i180, %bb.h ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.am ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.am ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.k ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE4ELS5_1ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 3 }, %bb.i ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE6EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.j ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.k ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.k ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.k ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE2EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.l ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ %spec.select.i225, %bb.av ], [ zeroinitializer, %bb.a ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE3EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.as ], [ %spec.select.i, %bb.n ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE7EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.o ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ %.fca.1.insert.i.i220, %bb.al ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ %.fca.1.insert.i.i182, %bb.p ], [ %.fca.1.insert.i.i184, %bb.q ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 2 }, %bb.r ], [ %spec.select.i185, %bb.s ], [ %.fca.1.insert.i.i187, %bb.t ], [ %spec.select.i188, %bb.u ], [ %.fca.1.insert.i.i190, %bb.v ], [ %.fca.1.insert.i.i192, %bb.w ], [ zeroinitializer, %bb.a ], [ %.fca.1.insert.i.i194, %bb.x ], [ %spec.select.i195, %bb.y ], [ zeroinitializer, %bb.a ], [ %.fca.1.insert.i.i197, %bb.z ], [ %.fca.1.insert.i.i199, %bb.aa ], [ %.fca.1.insert.i.i201, %bb.ab ], [ %.fca.1.insert.i.i203, %bb.ac ], [ zeroinitializer, %bb.a ], [ %.fca.1.insert.i.i205, %bb.ad ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.k ], [ zeroinitializer, %bb.a ], [ %.fca.1.insert.i, %bb.ae ], [ %i.bt, %bb.ax ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.am ], [ { ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array, i64 1 }, %bb.ao ], [ %spec.select.i206, %bb.af ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ %spec.select.i224, %bb.au ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ %.fca.1.insert.i.i208, %bb.ag ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ %i.bs, %bb.aw ], [ %.fca.1.insert.i211, %bb.ah ], [ zeroinitializer, %bb.a ], [ %.fca.1.insert.i.i213, %bb.ai ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ %.fca.1.insert.i.i215, %bb.aj ], [ %.fca.1.insert.i218, %bb.ak ], [ zeroinitializer, %bb.a ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88internal8compiler33TurboshaftStateObjectDeduplicator11GetObjectIdEjNS1_10ObjectTypeE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %.0.v.i = select i1 %i.a, i64 8, i64 48
  %.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.v.i ; 6 uses
  %i.b = load i64, ptr %.0.i, align 8             ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE4findIjEENSG_8iteratorERSD_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE4findIjEENSG_8iteratorERSD_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
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
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.v, align 8 ; 3 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.s, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.b        ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not47.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not47.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.048.i.i = phi i16 [ %i.an, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.b                     ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !6

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE10find_largeIjEENSG_8iteratorERSD_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = add i16 %.sroa.017.048.i.i, -1
  %i.an = and i16 %i.am, %.sroa.017.048.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ao = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not44.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE10find_largeIjEENSG_8iteratorERSD_m.exit.i, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aq = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !189

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE10find_largeIjEENSG_8iteratorERSD_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.al, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ak, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE4findIjEENSG_8iteratorERSD_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE4findIjEENSG_8iteratorERSD_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE10find_largeIjEENSG_8iteratorERSD_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE10find_largeIjEENSG_8iteratorERSD_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i, 1
  %i.au = icmp eq ptr %i.as, null                 ; 2 uses
  %i.av = icmp eq ptr %i.as, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.au, %i.av
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE4findIjEENSG_8iteratorERSD_.exit
  %i.aw = load i8, ptr %i.as, align 1
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE4findIjEENSG_8iteratorERSD_.exit
  br i1 %i.av, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE8iteratorESJ_.exit, !prof !5

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.17, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.15) #29
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE8iteratorESJ_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.au, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE8iteratorESJ_.exit
  %i.ay = load i8, ptr %i.as, align 1
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE8iteratorptEv.exit, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.17, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19) #29
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE8iteratorptEv.exit: ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = zext i32 %i.bb to i64
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE8iteratorESJ_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE8iteratorptEv.exit
  %.0 = phi i64 [ %i.bc, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE8iteratorptEv.exit ], [ -1, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE8iteratorESJ_.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler14StateValueList18PushRecursiveFieldEPNS0_4ZoneEm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %_ZN2v88internal10ZoneVectorINS0_8compiler20StateValueDescriptorEE9push_backEOS3_.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4
  %i.l = add nsw i64 %i.k, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler20StateValueDescriptorEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l)
  %.pre.i.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler20StateValueDescriptorEE9push_backEOS3_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler20StateValueDescriptorEE9push_backEOS3_.exit: ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.a, align 8
  store i64 657669, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = sub i64 %i.p, %i.r
  %i.t = icmp ult i64 %i.s, 64
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4Zone3NewINS0_8compiler14StateValueListEJRPS1_EEEPT_DpOT0_.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler20StateValueDescriptorEE9push_backEOS3_.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 64) #29
  %.pre.i.i1 = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler14StateValueListEJRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler14StateValueListEJRPS1_EEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler20StateValueDescriptorEE9push_backEOS3_.exit, %bb.c
  %i.u = phi i64 [ %.pre.i.i1, %bb.c ], [ %i.r, %_ZN2v88internal10ZoneVectorINS0_8compiler20StateValueDescriptorEE9push_backEOS3_.exit ] ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 6 uses
  %i.w = add i64 %i.u, 64
  store i64 %i.w, ptr %i.q, align 8
  store ptr %1, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler14StateValueListEE9push_backERKS4_.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler14StateValueListEJRPS1_EEEPT_DpOT0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = add nsw i64 %i.al, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler14StateValueListEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.am)
  %.pre.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler14StateValueListEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler14StateValueListEE9push_backERKS4_.exit: ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler14StateValueListEJRPS1_EEEPT_DpOT0_.exit, %bb.d
  %i.an = phi ptr [ %i.ab, %_ZN2v88internal4Zone3NewINS0_8compiler14StateValueListEJRPS1_EEEPT_DpOT0_.exit ], [ %.pre.i, %bb.d ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.aa, align 8
  store ptr %i.v, ptr %i.an, align 8
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler14StateValueList16PushStringConcatEPNS0_4ZoneEm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %_ZN2v88internal10ZoneVectorINS0_8compiler20StateValueDescriptorEE9push_backEOS3_.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4
  %i.l = add nsw i64 %i.k, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler20StateValueDescriptorEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l)
  %.pre.i.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler20StateValueDescriptorEE9push_backEOS3_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler20StateValueDescriptorEE9push_backEOS3_.exit: ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.a, align 8
  store i64 657671, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = sub i64 %i.p, %i.r
  %i.t = icmp ult i64 %i.s, 64
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4Zone3NewINS0_8compiler14StateValueListEJRPS1_EEEPT_DpOT0_.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler20StateValueDescriptorEE9push_backEOS3_.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 64) #29
  %.pre.i.i1 = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler14StateValueListEJRPS1_EEEPT_DpOT0_.exit

end_hunk_0
begin_hunk_1_@_ZN2v88internal10ZoneVectorINS0_8compiler20StateValueDescriptorEE19PrepareForInsertionEPKS3_mPm:bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler20StateValueDescriptorEA_S4_EEPT_m.exit
  %i.ba = phi ptr [ %.pre, %bb.h ], [ %i.ar, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler20StateValueDescriptorEA_S4_EEPT_m.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ag
  store ptr %i.bb, ptr %i.m, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.bc = ashr exact i64 %i.l, 4
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.bc)
  store i64 %.sroa.speculated, ptr %3, align 8
  %.not25 = icmp eq ptr %i.b, %1
  br i1 %.not25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr nonnull align 8 %1, i64 %i.l, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.be = load ptr, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %2
  store ptr %i.bf, ptr %i.a, align 8
  %i.bg = load ptr, ptr %i.c, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.pn = phi ptr [ %i.ba, %bb.i ], [ %i.bg, %bb.l ]
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.k
  ret ptr %.0
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
  %i.j = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN2v88internal8compiler10turboshaft17RepresentationForENS0_4wasm9ValueTypeE(i32 %.sroa.0.0.copyload.i.i) #29
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

declare noundef nonnull align 1 dereferenceable(1) ptr @_ZN2v88internal8compiler10turboshaft17RepresentationForENS0_4wasm9ValueTypeE(i32) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler20StateValueDescriptorEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #14 comdat align 2 {
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 4                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler20StateValueDescriptorEA_S4_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #29
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler20StateValueDescriptorEA_S4_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler20StateValueDescriptorEA_S4_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler20StateValueDescriptorEA_S4_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler20StateValueDescriptorEA_S4_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler20StateValueDescriptorEA_S4_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #17

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE22find_or_prepare_insertIjEESC_INSG_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1002") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !236
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.c, align 8, !noalias !236
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE28find_or_prepare_insert_smallIjEESC_INSG_8iteratorEbERKT_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !noalias !236
  %i.h = load i32, ptr %2, align 4, !noalias !236
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE28find_or_prepare_insert_smallIjEESC_INSG_8iteratorEbERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !236
  store ptr %1, ptr %3, align 8, !noalias !236
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.j, align 8, !noalias !236
  %i.k = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIjEEjLb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #29, !noalias !236 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !236
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !236, !nonnull !10, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i = load ptr, ptr %i.m, align 8, !noalias !236
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i, i64 %i.k
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE28find_or_prepare_insert_smallIjEESC_INSG_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.o, align 8, !noalias !241 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !241
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !241
  %sext.i = shl i64 %i.q, 48
  %i.r = ashr exact i64 %sext.i, 48
  %i.s = load i32, ptr %2, align 4, !noalias !241 ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = xor i64 %i.r, %i.t
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw nsw i128 %i.v, 8779197792823184629 ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64                   ; 3 uses
  %i.aa = lshr i64 %i.z, 57
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.ac, align 8, !noalias !241 ; 3 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.z, %bb.f ], [ %i.bd, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bc, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1), !noalias !241
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !noalias !241 ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ae, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not65.i = icmp eq i16 %i.aj, 0
  br i1 %.not65.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.035.066.i = phi i16 [ %i.as, %.critedge.i ], [ %i.aj, %bb.g ] ; 3 uses
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.7.0.i, %i.al
  %i.an = and i64 %i.am, %i.a                     ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !241
  %i.aq = icmp eq i32 %i.ap, %i.s
  br i1 %i.aq, label %.critedge21.i, label %.critedge.i, !prof !6

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ar = add i16 %.sroa.035.066.i, -1
  %i.as = and i16 %i.ar, %.sroa.035.066.i         ; 2 uses
  %.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.g
  %i.at = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.au, 0
  br i1 %.not57.i, label %bb.h, label %.thread.i, !prof !5

.thread.i:                                        ; preds = %.critedge19.i
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.au, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.a
  %i.az = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.z, i64 %i.ay, i64 %.sroa.15.0.i) #29, !noalias !241 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.o, align 8, !noalias !241, !nonnull !10, !noundef !10
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.az
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.ac, align 8, !noalias !241
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.az
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE28find_or_prepare_insert_smallIjEESC_INSG_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge19.i
  %i.bc = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bd = add i64 %i.bc, %.sroa.7.0.i
  br label %bb.g

.critedge21.i:                                    ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.an
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.an
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE28find_or_prepare_insert_smallIjEESC_INSG_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE28find_or_prepare_insert_smallIjEESC_INSG_8iteratorEbERKT_.exit: ; preds = %.critedge21.i, %.thread.i, %bb.e, %bb.d, %bb.c
  %.sink82.i.sink = phi ptr [ @_ZN4absl18container_internal11kSooControlE, %bb.d ], [ %i.l, %bb.e ], [ @_ZN4absl18container_internal11kSooControlE, %bb.c ], [ %i.ba, %.thread.i ], [ %i.bf, %.critedge21.i ]
  %.sink81.i.sink = phi ptr [ %i.f, %bb.d ], [ %i.n, %bb.e ], [ %i.e, %bb.c ], [ %i.bb, %.thread.i ], [ %i.be, %.critedge21.i ]
  %.sink.i.sink = phi i8 [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %.thread.i ], [ 0, %.critedge21.i ]
  store ptr %.sink82.i.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81.i.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i.sink, ptr %i.bg, align 8
  ret void
}

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #4

declare noundef ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIjEEjLb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = zext i32 %i.a to i64
  %i.c = xor i64 %2, %i.b
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw nsw i128 %i.d, 8779197792823184629 ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal20TransferNRelocatableILm8EEEvPvS2_S2_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #14 comdat {
bb.a:
  %i.a = shl i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m(ptr noundef %0, i64 noundef %1) #14 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = add i64 %1, 7                            ; 2 uses
  %.not.i = icmp ugt i64 %i.b, -9
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp ugt i64 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef %i.c) #29
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
define linkonce_odr hidden void @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #14 comdat {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSM_PFvSM_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #9 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !244

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.bb, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.062, %i.s              ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.t ; 2 uses
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
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %i.ao, %i.au
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ag, i64 noundef %i.t, i64 noundef %i.ae) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.av, %bb.g ], [ %i.am, %bb.d ] ; 3 uses
  %i.aw = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ag, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  %i.az = load i64, ptr %i.u, align 4
  store i64 %i.az, ptr %i.ay, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = add i16 %.sroa.052.061, -1
  %i.bb = and i16 %i.ba, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.bb, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIjEEjLb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !245
  %i.c = load i32, ptr %i.b, align 4
end_hunk_1
