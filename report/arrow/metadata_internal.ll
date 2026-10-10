Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/metadata_internal?download=true
inline.NumInlined: 4741
inline.NumDeleted: 2175
loop-unroll.NumRuntimeUnrolled: 71
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZN3org6apache5arrow7flatbuf12CreateSchemaERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_10EndiannessENS4_6OffsetINS4_6VectorINS9_INS2_5FieldEEEjEEEENS9_INSA_INS9_INS2_8KeyValueEEEjEEEENS9_INSA_IljEEEE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.05.i.i.i.i.i.epil
  store i8 0, ptr %i.w, align 1, !tbaa !32
  %i.x = add nuw i64 %.05.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.i
  br i1 %epil.iter.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !888

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.epil
  %.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !110
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i
  %i.y = phi i32 [ %.pre.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i ], [ %i.c, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i ]
  %reass.sub = sub i32 %i.y, %4
  %i.z = add i32 %reass.sub, 4
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 10, i32 noundef %i.z, i32 noundef 0)
  br label %_ZN3org6apache5arrow7flatbuf13SchemaBuilder12add_featuresEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorIljEEEE.exit

_ZN3org6apache5arrow7flatbuf13SchemaBuilder12add_featuresEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorIljEEEE.exit: ; preds = %bb.a, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i
  %.not.i.i.i7 = icmp eq i32 %3, 0
  br i1 %.not.i.i.i7, label %_ZN3org6apache5arrow7flatbuf13SchemaBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3org6apache5arrow7flatbuf13SchemaBuilder12add_featuresEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorIljEEEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !116
  %i.ac = icmp ult i64 %i.ab, 4
  br i1 %i.ac, label %bb.g, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i8

bb.g:                                             ; preds = %bb.f
  store i64 4, ptr %i.aa, align 8, !tbaa !116
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i8

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i8: ; preds = %bb.g, %bb.f
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !110 ; 3 uses
  %i.ae = sub i32 0, %i.ad
  %i.af = and i32 %i.ae, 3                        ; 3 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 4 uses
  %.not.i.i.i.i.i.i9 = icmp eq i32 %i.af, 0
  %.phi.trans.insert.i.i.i.i.i.i10 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br i1 %.not.i.i.i.i.i.i9, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i18, label %bb.h

bb.h:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i8
  %.pre4.i.i.i.i.i.i11 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i10, align 8, !tbaa !178 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !196
  %i.aj = ptrtoint ptr %.pre4.i.i.i.i.i.i11 to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = and i64 %i.al, 4294967295
  %i.an = icmp samesign ult i64 %i.am, %i.ag
  br i1 %i.an, label %bb.i, label %.lr.ph.preheader.i.i.i.i.i12

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.ag)
  %.pre.i.i.i.i.i.i20 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i10, align 8, !tbaa !178
  %.pre.i.i.i.i21 = load i32, ptr %i.b, align 8, !tbaa !110
  br label %.lr.ph.preheader.i.i.i.i.i12

.lr.ph.preheader.i.i.i.i.i12:                     ; preds = %bb.i, %bb.h
  %i.ao = phi i32 [ %i.ad, %bb.h ], [ %.pre.i.i.i.i21, %bb.i ]
  %i.ap = phi ptr [ %.pre4.i.i.i.i.i.i11, %bb.h ], [ %.pre.i.i.i.i.i.i20, %bb.i ]
  %i.aq = sub nsw i64 0, %i.ag
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  store ptr %i.ar, ptr %.phi.trans.insert.i.i.i.i.i.i10, align 8, !tbaa !178
  %i.as = add i32 %i.ao, %i.af
  store i32 %i.as, ptr %i.b, align 8, !tbaa !110
  br label %.lr.ph.i.i.i.i.i13.epil

.lr.ph.i.i.i.i.i13.epil:                          ; preds = %.lr.ph.i.i.i.i.i13.epil, %.lr.ph.preheader.i.i.i.i.i12
  %.05.i.i.i.i.i14.epil = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i13.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i12 ] ; 2 uses
  %epil.iter55 = phi i64 [ %epil.iter55.next, %.lr.ph.i.i.i.i.i13.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i12 ]
  %i.at = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i10, align 8, !tbaa !178
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.05.i.i.i.i.i14.epil
  store i8 0, ptr %i.au, align 1, !tbaa !32
  %i.av = add nuw i64 %.05.i.i.i.i.i14.epil, 1
  %epil.iter55.next = add i64 %epil.iter55, 1     ; 2 uses
  %epil.iter55.cmp.not = icmp eq i64 %epil.iter55.next, %i.ag
  br i1 %epil.iter55.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i16, label %.lr.ph.i.i.i.i.i13.epil, !llvm.loop !889

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i16: ; preds = %.lr.ph.i.i.i.i.i13.epil
  %.pre.i.i.i17 = load i32, ptr %i.b, align 8, !tbaa !110
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i18

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i18: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i16, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i8
  %i.aw = phi i32 [ %.pre.i.i.i17, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i16 ], [ %i.ad, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i8 ]
  %reass.sub43 = sub i32 %i.aw, %3
  %i.ax = add i32 %reass.sub43, 4
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 8, i32 noundef %i.ax, i32 noundef 0)
  br label %_ZN3org6apache5arrow7flatbuf13SchemaBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit

_ZN3org6apache5arrow7flatbuf13SchemaBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit: ; preds = %_ZN3org6apache5arrow7flatbuf13SchemaBuilder12add_featuresEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorIljEEEE.exit, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i18
  %.not.i.i.i22 = icmp eq i32 %2, 0
  br i1 %.not.i.i.i22, label %_ZN3org6apache5arrow7flatbuf13SchemaBuilder10add_fieldsEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_5FieldEEEjEEEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3org6apache5arrow7flatbuf13SchemaBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !116
  %i.ba = icmp ult i64 %i.az, 4
  br i1 %i.ba, label %bb.k, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i23

bb.k:                                             ; preds = %bb.j
  store i64 4, ptr %i.ay, align 8, !tbaa !116
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i23

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i23: ; preds = %bb.k, %bb.j
  %i.bb = load i32, ptr %i.b, align 8, !tbaa !110 ; 3 uses
  %i.bc = sub i32 0, %i.bb
  %i.bd = and i32 %i.bc, 3                        ; 3 uses
  %i.be = zext nneg i32 %i.bd to i64              ; 4 uses
  %.not.i.i.i.i.i.i24 = icmp eq i32 %i.bd, 0
  %.phi.trans.insert.i.i.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br i1 %.not.i.i.i.i.i.i24, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i33, label %bb.l

bb.l:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i23
  %.pre4.i.i.i.i.i.i26 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i25, align 8, !tbaa !178 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !196
  %i.bh = ptrtoint ptr %.pre4.i.i.i.i.i.i26 to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = icmp samesign ult i64 %i.bk, %i.be
  br i1 %i.bl, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i27

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.be)
  %.pre.i.i.i.i.i.i35 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i25, align 8, !tbaa !178
  %.pre.i.i.i.i36 = load i32, ptr %i.b, align 8, !tbaa !110
  br label %.lr.ph.preheader.i.i.i.i.i27

.lr.ph.preheader.i.i.i.i.i27:                     ; preds = %bb.m, %bb.l
  %i.bm = phi i32 [ %i.bb, %bb.l ], [ %.pre.i.i.i.i36, %bb.m ]
  %i.bn = phi ptr [ %.pre4.i.i.i.i.i.i26, %bb.l ], [ %.pre.i.i.i.i.i.i35, %bb.m ]
  %i.bo = sub nsw i64 0, %i.be
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo
  store ptr %i.bp, ptr %.phi.trans.insert.i.i.i.i.i.i25, align 8, !tbaa !178
  %i.bq = add i32 %i.bm, %i.bd
  store i32 %i.bq, ptr %i.b, align 8, !tbaa !110
  br label %.lr.ph.i.i.i.i.i28.epil

.lr.ph.i.i.i.i.i28.epil:                          ; preds = %.lr.ph.i.i.i.i.i28.epil, %.lr.ph.preheader.i.i.i.i.i27
  %.05.i.i.i.i.i29.epil = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i28.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i27 ] ; 2 uses
  %epil.iter61 = phi i64 [ %epil.iter61.next, %.lr.ph.i.i.i.i.i28.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i27 ]
  %i.br = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i25, align 8, !tbaa !178
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.05.i.i.i.i.i29.epil
  store i8 0, ptr %i.bs, align 1, !tbaa !32
  %i.bt = add nuw i64 %.05.i.i.i.i.i29.epil, 1
  %epil.iter61.next = add i64 %epil.iter61, 1     ; 2 uses
  %epil.iter61.cmp.not = icmp eq i64 %epil.iter61.next, %i.be
  br i1 %epil.iter61.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i31, label %.lr.ph.i.i.i.i.i28.epil, !llvm.loop !890

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i28.epil
  %.pre.i.i.i32 = load i32, ptr %i.b, align 8, !tbaa !110
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i33

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i33: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i31, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i23
  %i.bu = phi i32 [ %.pre.i.i.i32, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i31 ], [ %i.bb, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i23 ]
  %reass.sub44 = sub i32 %i.bu, %2
  %i.bv = add i32 %reass.sub44, 4
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 6, i32 noundef %i.bv, i32 noundef 0)
  br label %_ZN3org6apache5arrow7flatbuf13SchemaBuilder10add_fieldsEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_5FieldEEEjEEEE.exit

_ZN3org6apache5arrow7flatbuf13SchemaBuilder10add_fieldsEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_5FieldEEEjEEEE.exit: ; preds = %_ZN3org6apache5arrow7flatbuf13SchemaBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i33
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIsEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 4, i16 noundef signext %1, i16 noundef signext 0)
  %i.bw = tail call noundef i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.c)
  ret i32 %i.bw
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema8metadataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZNK5arrow3ipc21DictionaryFieldMapper10GetFieldIdESt6vectorIiSaIiEE(ptr dead_on_unwind writable sret(%"class.arrow::Result.158") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_122AppendKeyValueMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS_16KeyValueMetadataEPSt6vectorINS4_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISI_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 4 uses
  %i.b = icmp ugt i64 %i.a, 2305843009213693951
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.e = load ptr, ptr %2, align 8, !tbaa !166
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE7reserveEm.exit

_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !244
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.g
  %i.o = shl nuw nsw i64 %i.a, 2
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 6 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !166    ; 8 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !244  ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_M_allocateEm.exit.i
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = ptrtoaddr ptr %i.q to i64
  %i.u = add i64 %i.s, -4
  %i.v = sub i64 %i.u, %i.t                       ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.q, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.q, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.ac = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep22, align 4, !tbaa !24, !alias.scope !903, !noalias !902
  %wide.load23 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !24, !alias.scope !903, !noalias !902
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !24, !alias.scope !902, !noalias !903
  store <4 x i32> %wide.load23, ptr %i.ad, align 4, !tbaa !24, !alias.scope !902, !noalias !903
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !894

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i, label %.lr.ph.i.i.i.i.preheader44

.lr.ph.i.i.i.i.preheader44:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader44, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.af = load i32, ptr %.0911.i.i.i.i, align 4, !tbaa !24, !alias.scope !903, !noalias !902
  store i32 %i.af, ptr %.012.i.i.i.i, align 4, !tbaa !24, !alias.scope !902, !noalias !903
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !895

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE13_M_deallocateEPS8_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.q to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.al) #24
  br label %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE13_M_deallocateEPS8_m.exit.i

_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE13_M_deallocateEPS8_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i
  store ptr %i.p, ptr %2, align 8, !tbaa !166
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store ptr %i.am, ptr %i.k, align 8, !tbaa !244
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.a
  store ptr %i.an, ptr %i.c, align 8, !tbaa !167
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE7reserveEm.exit

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE13_M_deallocateEPS8_m.exit.i
  %i.ao = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE7reserveEm.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE7reserveEm.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit ] ; 3 uses
  %i.as = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow16KeyValueMetadata3keyB5cxx11El(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %indvars.iv) ; 2 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow16KeyValueMetadata5valueB5cxx11El(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %indvars.iv) ; 2 uses
  %.val = load ptr, ptr %i.as, align 8, !tbaa !64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val11 = load i64, ptr %i.au, align 8, !tbaa !63
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %.val, i64 noundef %.val11)
  %i.av = load i32, ptr %i.aq, align 8, !tbaa !110
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !63
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %i.aw, i64 noundef %i.ay)
  %i.az = load i32, ptr %i.aq, align 8, !tbaa !110
  %i.ba = tail call i32 @_ZN3org6apache5arrow7flatbuf14CreateKeyValueERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS4_6StringEEESA_(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 %i.av, i32 %i.az) ; 2 uses
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !244 ; 6 uses
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !167
  %.not.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store ptr %i.bd, ptr %i.ar, align 8, !tbaa !244
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit

bb.g:                                             ; preds = %bb.e
  %i.be = load ptr, ptr %2, align 8, !tbaa !166   ; 7 uses
  %i.bf = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64               ; 4 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775804
  br i1 %i.bi, label %bb.h, label %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bj = ashr exact i64 %i.bh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 2305843009213693951)
  %i.bn = select i1 %i.bl, i64 2305843009213693951, i64 %i.bm ; 3 uses
  %.not.i.i.i.i12 = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i12)
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #23 ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bh
  store i32 %i.ba, ptr %i.bq, align 4, !tbaa !24
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.be, %i.bb
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.br = ptrtoaddr ptr %i.bp to i64
  %i.bs = add i64 %i.bf, -4
  %i.bt = sub i64 %i.bs, %i.bg                    ; 2 uses
  %i.bu = lshr i64 %i.bt, 2
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check28 = icmp ult i64 %i.bt, 28
  %i.bw = sub i64 %i.bg, %i.br
  %diff.check26 = icmp ugt i64 %i.bw, -32
  %or.cond42 = or i1 %min.iters.check28, %diff.check26
  br i1 %or.cond42, label %.lr.ph.i.i.i.i.i.i.preheader43, label %vector.ph29

vector.ph29:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec30 = and i64 %i.bv, 9223372036854775800   ; 3 uses
  %i.bx = shl i64 %n.vec30, 2                     ; 2 uses
  %i.by = getelementptr i8, ptr %i.bp, i64 %i.bx  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.be, i64 %i.bx
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph29
  %index32 = phi i64 [ 0, %vector.ph29 ], [ %index.next37, %vector.body31 ] ; 2 uses
  %i.ca = shl i64 %index32, 2                     ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.bp, i64 %i.ca ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.be, i64 %i.ca ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.cb = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load35 = load <4 x i32>, ptr %next.gep34, align 4, !tbaa !24, !alias.scope !905, !noalias !904
  %wide.load36 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !24, !alias.scope !905, !noalias !904
  %i.cc = getelementptr i8, ptr %next.gep33, i64 16
  store <4 x i32> %wide.load35, ptr %next.gep33, align 4, !tbaa !24, !alias.scope !904, !noalias !905
  store <4 x i32> %wide.load36, ptr %i.cc, align 4, !tbaa !24, !alias.scope !904, !noalias !905
  %index.next37 = add nuw i64 %index32, 8         ; 2 uses
  %i.cd = icmp eq i64 %index.next37, %n.vec30
  br i1 %i.cd, label %middle.block38, label %vector.body31, !llvm.loop !899

middle.block38:                                   ; preds = %vector.body31
  %cmp.n39 = icmp eq i64 %i.bv, %n.vec30
  br i1 %cmp.n39, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader43

.lr.ph.i.i.i.i.i.i.preheader43:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block38
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.by, %middle.block38 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bz, %middle.block38 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader43, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader43 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.ce = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !24, !alias.scope !905, !noalias !904
  store i32 %i.ce, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !24, !alias.scope !904, !noalias !905
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cf, %i.bb
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !900

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block38, %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bp, %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.by, %middle.block38 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4
  %.not.i23.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.bg
end_hunk_0
begin_hunk_1_@bcmp
!695 = !{!644, !629, !607, !595}
!696 = !{!646, !629, !607, !595}
!697 = !{!649, !648}
!698 = !{!"_ZTSSt13_Ios_Fmtflags", !22, i64 0}
!699 = !{!"_ZTSSt12_Ios_Iostate", !22, i64 0}
!700 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !25, i64 0}
!701 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !51, i64 8}
!702 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !25, i64 0}
!703 = !{!"p1 _ZTSNSt6locale5_ImplE", !25, i64 0}
!704 = !{!"_ZTSSt6locale", !703, i64 0}
!705 = !{!"_ZTSSt8ios_base", !51, i64 8, !51, i64 16, !698, i64 24, !699, i64 28, !699, i64 32, !700, i64 40, !701, i64 48, !22, i64 64, !23, i64 192, !702, i64 200, !704, i64 208}
!706 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !25, i64 0}
!707 = !{!"p1 _ZTSSt5ctypeIcE", !25, i64 0}
!708 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!709 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!710 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !705, i64 0, !208, i64 216, !22, i64 224, !48, i64 225, !706, i64 232, !707, i64 240, !708, i64 248, !709, i64 256}
!711 = !{!710, !707, i64 240}
!712 = !{!"_ZTSNSt6locale5facetE", !23, i64 8}
!713 = !{!"p1 _ZTS15__locale_struct", !25, i64 0}
!714 = !{!"p1 short", !25, i64 0}
!715 = !{!"_ZTSSt5ctypeIcE", !712, i64 0, !713, i64 16, !48, i64 24, !209, i64 32, !209, i64 40, !714, i64 48, !22, i64 56, !22, i64 57, !22, i64 313, !22, i64 569}
!716 = !{!715, !22, i64 56}
!717 = !{!653}
!718 = !{!655}
!719 = !{!655, !653}
!720 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !704, i64 56}
!721 = !{!720, !49, i64 40}
!722 = !{!655, !653, !607, !595}
!723 = !{!720, !49, i64 32}
!724 = !{!"_ZTSSi", !51, i64 8}
!725 = !{!724, !51, i64 8}
!726 = distinct !{!726, i1 false, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE5ValueIS3_vEENS_6StatusEPT_"}
!727 = distinct !{!727, !726, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE5ValueIS3_vEENS_6StatusEPT_: argument 0"}
!728 = distinct !{!728, i1 false, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE6statusEv"}
!729 = distinct !{!729, !728, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE6statusEv: argument 0"}
!730 = distinct !{!730, i1 false, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!731 = distinct !{!731, !730, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!732 = !{!727}
!733 = !{!729}
!734 = !{!729, !727}
!735 = !{!731, !727}
!736 = distinct !{!736, !198}
!737 = !{!"p1 _ZTSN5arrow3ipc8internal9FileBlockE", !25, i64 0}
!738 = !{!737, !737, i64 0}
!739 = distinct !{!739, i1 false, !"_ZSt19__relocate_object_aIN3org6apache5arrow7flatbuf5BlockES4_SaIS4_EEvPT_PT0_RT1_"}
!740 = distinct !{!740, !739, !"_ZSt19__relocate_object_aIN3org6apache5arrow7flatbuf5BlockES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!741 = distinct !{!741, !739, !"_ZSt19__relocate_object_aIN3org6apache5arrow7flatbuf5BlockES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!742 = distinct !{!742, !93}
!743 = !{!"_ZTSN3org6apache5arrow7flatbuf5BlockE", !51, i64 0, !23, i64 8, !23, i64 12, !51, i64 16}
!744 = !{!743, !51, i64 0}
!745 = !{!743, !23, i64 8}
!746 = !{!743, !23, i64 12}
!747 = !{!743, !51, i64 16}
!748 = !{i64 0, i64 8, !185, i64 8, i64 4, !24, i64 12, i64 4, !24, i64 16, i64 8, !185}
!749 = !{!741, !740}
!750 = distinct !{!750, !198}
!751 = distinct !{!751, !198}
!752 = distinct !{!752, !198}
!753 = distinct !{!753, !198}
!754 = distinct !{!754, i1 false, !"_ZN5arrow6Status7IOErrorIJRA23_KcRA7_S2_RA32_S2_EEES0_DpOT_"}
!755 = distinct !{!755, !754, !"_ZN5arrow6Status7IOErrorIJRA23_KcRA7_S2_RA32_S2_EEES0_DpOT_: argument 0"}
!756 = distinct !{!756, i1 false, !"_ZN5arrow6Status8FromArgsIJRA23_KcRA7_S2_RA32_S2_EEES0_NS_10StatusCodeEDpOT_"}
!757 = distinct !{!757, !756, !"_ZN5arrow6Status8FromArgsIJRA23_KcRA7_S2_RA32_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!758 = distinct !{!758, i1 false, !"_ZN5arrow6Status7IOErrorIJRA23_KcRA14_S2_RA32_S2_EEES0_DpOT_"}
!759 = distinct !{!759, !758, !"_ZN5arrow6Status7IOErrorIJRA23_KcRA14_S2_RA32_S2_EEES0_DpOT_: argument 0"}
!760 = distinct !{!760, i1 false, !"_ZN5arrow6Status8FromArgsIJRA23_KcRA14_S2_RA32_S2_EEES0_NS_10StatusCodeEDpOT_"}
!761 = distinct !{!761, !760, !"_ZN5arrow6Status8FromArgsIJRA23_KcRA14_S2_RA32_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!762 = distinct !{!762, !93}
!763 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!764 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!765 = distinct !{!765, i1 false, !"_ZN5arrow6Status2OKEv"}
!766 = distinct !{!766, !765, !"_ZN5arrow6Status2OKEv: argument 0"}
!767 = !{!757, !755}
!768 = !{!761, !759}
!769 = !{!766}
!770 = distinct !{!770, !93}
!771 = distinct !{!771, i1 false, !"_ZN5arrow6Status7IOErrorIJRA23_KcRA11_S2_RA32_S2_EEES0_DpOT_"}
!772 = distinct !{!772, !771, !"_ZN5arrow6Status7IOErrorIJRA23_KcRA11_S2_RA32_S2_EEES0_DpOT_: argument 0"}
!773 = distinct !{!773, i1 false, !"_ZN5arrow6Status8FromArgsIJRA23_KcRA11_S2_RA32_S2_EEES0_NS_10StatusCodeEDpOT_"}
!774 = distinct !{!774, !773, !"_ZN5arrow6Status8FromArgsIJRA23_KcRA11_S2_RA32_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!775 = distinct !{!775, i1 false, !"_ZN5arrow6Status7IOErrorIJRA23_KcRA29_S2_RA32_S2_EEES0_DpOT_"}
!776 = distinct !{!776, !775, !"_ZN5arrow6Status7IOErrorIJRA23_KcRA29_S2_RA32_S2_EEES0_DpOT_: argument 0"}
!777 = distinct !{!777, i1 false, !"_ZN5arrow6Status8FromArgsIJRA23_KcRA29_S2_RA32_S2_EEES0_NS_10StatusCodeEDpOT_"}
!778 = distinct !{!778, !777, !"_ZN5arrow6Status8FromArgsIJRA23_KcRA29_S2_RA32_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!779 = distinct !{!779, i1 false, !"_ZNO5arrow6ResultISt10shared_ptrINS_8DataTypeEEE11ValueUnsafeEv"}
!780 = distinct !{!780, !779, !"_ZNO5arrow6ResultISt10shared_ptrINS_8DataTypeEEE11ValueUnsafeEv: argument 0"}
!781 = distinct !{!781, i1 false, !"_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE15MoveValueUnsafeEv"}
!782 = distinct !{!782, !781, !"_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE15MoveValueUnsafeEv: argument 0"}
!783 = distinct !{!783, i1 false, !"_ZNO5arrow6ResultISt10shared_ptrINS_8DataTypeEEE11ValueUnsafeEv"}
!784 = distinct !{!784, !783, !"_ZNO5arrow6ResultISt10shared_ptrINS_8DataTypeEEE11ValueUnsafeEv: argument 0"}
!785 = distinct !{!785, i1 false, !"_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE15MoveValueUnsafeEv"}
!786 = distinct !{!786, !785, !"_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE15MoveValueUnsafeEv: argument 0"}
!787 = distinct !{!787, i1 false, !"_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE"}
!788 = distinct !{!788, !787, !"_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE: argument 0"}
!789 = distinct !{!789, i1 false, !"_ZNK22arrow_vendored_private11flatbuffers6String3strB5cxx11Ev"}
!790 = distinct !{!790, !789, !"_ZNK22arrow_vendored_private11flatbuffers6String3strB5cxx11Ev: argument 0"}
!791 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!792 = distinct !{!792, i1 false, !"_ZNK5arrow3ipc8internal13FieldPosition4pathEv"}
!793 = distinct !{!793, !792, !"_ZNK5arrow3ipc8internal13FieldPosition4pathEv: argument 0"}
!794 = distinct !{!794, !198}
!795 = distinct !{!795, i1 false, !"_ZN5arrow6Status2OKEv"}
!796 = distinct !{!796, !795, !"_ZN5arrow6Status2OKEv: argument 0"}
!797 = !{!774, !772}
!798 = !{!778, !776}
!799 = !{!782, !780}
!800 = !{!"_ZTSSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EE", !77, i64 0, !28, i64 8}
!801 = !{!800, !77, i64 0}
!802 = !{!"p1 _ZTSN5arrow13ExtensionTypeE", !25, i64 0}
!803 = !{!"_ZTSSt12__shared_ptrIN5arrow13ExtensionTypeELN9__gnu_cxx12_Lock_policyE2EE", !802, i64 0, !28, i64 8}
!804 = !{!803, !802, i64 0}
!805 = !{!784}
!806 = !{!786}
!807 = !{!786, !784}
!808 = !{!788}
!809 = !{!790}
!810 = !{!790, !788}
!811 = !{!793}
!812 = !{!796}
!813 = distinct !{!813, i1 false, !"_ZN5arrow3ipc8internalL13VerifyMessageEPKhlPPKN3org6apache5arrow7flatbuf7MessageE"}
!814 = distinct !{!814, !813, !"_ZN5arrow3ipc8internalL13VerifyMessageEPKhlPPKN3org6apache5arrow7flatbuf7MessageE: argument 0"}
!815 = distinct !{!815, i1 false, !"_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE"}
!816 = distinct !{!816, !815, !"_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE: argument 0"}
!817 = distinct !{!817, i1 false, !"_ZNK22arrow_vendored_private11flatbuffers6String3strB5cxx11Ev"}
!818 = distinct !{!818, !817, !"_ZNK22arrow_vendored_private11flatbuffers6String3strB5cxx11Ev: argument 0"}
!819 = distinct !{!819, !93}
!820 = distinct !{!820, !93}
!821 = !{!814}
!822 = !{!816}
!823 = !{!818}
!824 = !{!818, !816}
!825 = !{!"_ZTSN22arrow_vendored_private11flatbuffers6VectorIljEE", !23, i64 0}
!826 = !{!825, !23, i64 0}
!827 = distinct !{!827, i1 false, !"_ZN5arrow6Status2OKEv"}
!828 = distinct !{!828, !827, !"_ZN5arrow6Status2OKEv: argument 0"}
!829 = !{!828}
!830 = distinct !{!830, i1 false, !"_ZN5arrow6Status2OKEv"}
!831 = distinct !{!831, !830, !"_ZN5arrow6Status2OKEv: argument 0"}
!832 = distinct !{!832, !93}
!833 = !{!831}
!834 = distinct !{!834, i1 false, !"_ZN5arrow3ipc8internalL13VerifyMessageEPKhlPPKN3org6apache5arrow7flatbuf7MessageE"}
!835 = distinct !{!835, !834, !"_ZN5arrow3ipc8internalL13VerifyMessageEPKhlPPKN3org6apache5arrow7flatbuf7MessageE: argument 0"}
!836 = distinct !{!836, i1 false, !"_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE"}
!837 = distinct !{!837, !836, !"_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE: argument 0"}
!838 = distinct !{!838, i1 false, !"_ZNK22arrow_vendored_private11flatbuffers6String3strB5cxx11Ev"}
!839 = distinct !{!839, !838, !"_ZNK22arrow_vendored_private11flatbuffers6String3strB5cxx11Ev: argument 0"}
!840 = distinct !{!840, !93}
!841 = distinct !{!841, i1 false, !"_ZN5arrow6Status2OKEv"}
!842 = distinct !{!842, !841, !"_ZN5arrow6Status2OKEv: argument 0"}
!843 = !{!835}
!844 = !{!837}
!845 = !{!839}
!846 = !{!839, !837}
!847 = !{!205, !205, i64 0}
!848 = !{!842}
!849 = distinct !{null}
!850 = distinct !{!850, i1 false, !"_ZN5arrow8internal12JoinToStringIJRA48_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!851 = distinct !{!851, !850, !"_ZN5arrow8internal12JoinToStringIJRA48_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!852 = !{!851}
!853 = distinct !{!853, i1 false, !"_ZN5arrow8internal12JoinToStringIJRA47_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!854 = distinct !{!854, !853, !"_ZN5arrow8internal12JoinToStringIJRA47_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!855 = !{!854}
!856 = distinct !{!856, i1 false, !"_ZN5arrow8internal12JoinToStringIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!857 = distinct !{!857, !856, !"_ZN5arrow8internal12JoinToStringIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!858 = !{!857}
!859 = distinct !{null}
!860 = distinct !{!860, i1 false, !"_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!861 = distinct !{!861, !860, !"_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!862 = !{!861}
!863 = distinct !{null}
!864 = distinct !{!864, i1 false, !"_ZNK5arrow3ipc8internal13FieldPosition4pathEv"}
!865 = distinct !{!865, !864, !"_ZNK5arrow3ipc8internal13FieldPosition4pathEv: argument 0"}
!866 = distinct !{!866, !198}
!867 = distinct !{!867, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_121GetDictionaryEncodingERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKSt10shared_ptrINS_5FieldEERKNS_14DictionaryTypeElPNS4_6OffsetIN3org6apache5arrow7flatbuf18DictionaryEncodingEEE"}
!868 = distinct !{!868, !867, !"_ZN5arrow3ipc8internal12_GLOBAL__N_121GetDictionaryEncodingERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKSt10shared_ptrINS_5FieldEERKNS_14DictionaryTypeElPNS4_6OffsetIN3org6apache5arrow7flatbuf18DictionaryEncodingEEE: argument 0"}
!869 = distinct !{null}
!870 = distinct !{!870, i1 false, !"_ZNK5arrow5Field8metadataEv"}
!871 = distinct !{!871, !870, !"_ZNK5arrow5Field8metadataEv: argument 0"}
!872 = distinct !{!872, i1 false, !"_ZSt19__relocate_object_aIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEES8_SaIS8_EEvPT_PT0_RT1_"}
!873 = distinct !{!873, !872, !"_ZSt19__relocate_object_aIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!874 = distinct !{!874, !872, !"_ZSt19__relocate_object_aIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!875 = distinct !{!875, !93, !154, !155}
!876 = distinct !{!876, !93, !154}
!877 = distinct !{!877, i1 false, !"_ZN5arrow6Status2OKEv"}
!878 = distinct !{!878, !877, !"_ZN5arrow6Status2OKEv: argument 0"}
!879 = !{!241, !142, i64 8}
!880 = !{!865}
!881 = !{!868}
!882 = !{!"_ZTSN5arrow14DictionaryTypeE", !243, i64 0, !76, i64 72, !76, i64 88, !48, i64 104}
!883 = !{!882, !48, i64 104}
!884 = !{!871}
!885 = !{!873}
!886 = !{!874}
!887 = !{!878}
!888 = distinct !{!888, !198}
!889 = distinct !{!889, !198}
!890 = distinct !{!890, !198}
!891 = distinct !{!891, i1 false, !"_ZSt19__relocate_object_aIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEES8_SaIS8_EEvPT_PT0_RT1_"}
!892 = distinct !{!892, !891, !"_ZSt19__relocate_object_aIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!893 = distinct !{!893, !891, !"_ZSt19__relocate_object_aIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!894 = distinct !{!894, !93, !154, !155}
!895 = distinct !{!895, !93, !155, !154}
!896 = distinct !{!896, i1 false, !"_ZSt19__relocate_object_aIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEES8_SaIS8_EEvPT_PT0_RT1_"}
!897 = distinct !{!897, !896, !"_ZSt19__relocate_object_aIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!898 = distinct !{!898, !896, !"_ZSt19__relocate_object_aIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!899 = distinct !{!899, !93, !154, !155}
!900 = distinct !{!900, !93, !154}
!901 = distinct !{!901, !93}
!902 = !{!892}
!903 = !{!893}
!904 = !{!897}
!905 = !{!898}
!906 = distinct !{!906, !198}
!907 = distinct !{!907, !93}
!908 = distinct !{!908, !198}
!909 = distinct !{!909, !198}
!910 = distinct !{!910, !198}
!911 = distinct !{!911, !198}
!912 = distinct !{!912, !198}
!913 = distinct !{!913, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_8NullTypeE"}
!914 = distinct !{!914, !913, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_8NullTypeE: argument 0"}
!915 = distinct !{!915, i1 false, !"_ZN5arrow6Status2OKEv"}
!916 = distinct !{!916, !915, !"_ZN5arrow6Status2OKEv: argument 0"}
!917 = distinct !{!917, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_11BooleanTypeE"}
!918 = distinct !{!918, !917, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_11BooleanTypeE: argument 0"}
!919 = distinct !{!919, i1 false, !"_ZN5arrow6Status2OKEv"}
!920 = distinct !{!920, !919, !"_ZN5arrow6Status2OKEv: argument 0"}
!921 = distinct !{!921, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_8Int8TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_"}
!922 = distinct !{!922, !921, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_8Int8TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_: argument 0"}
!923 = distinct !{!923, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi8ELb1ENS_8Int8TypeEEENS_6StatusERKT1_"}
!924 = distinct !{!924, !923, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi8ELb1ENS_8Int8TypeEEENS_6StatusERKT1_: argument 0"}
!925 = distinct !{!925, i1 false, !"_ZN5arrow6Status2OKEv"}
!926 = distinct !{!926, !925, !"_ZN5arrow6Status2OKEv: argument 0"}
!927 = distinct !{!927, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_9UInt8TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_"}
!928 = distinct !{!928, !927, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_9UInt8TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_: argument 0"}
!929 = distinct !{!929, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi8ELb0ENS_9UInt8TypeEEENS_6StatusERKT1_"}
!930 = distinct !{!930, !929, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi8ELb0ENS_9UInt8TypeEEENS_6StatusERKT1_: argument 0"}
!931 = distinct !{!931, i1 false, !"_ZN5arrow6Status2OKEv"}
!932 = distinct !{!932, !931, !"_ZN5arrow6Status2OKEv: argument 0"}
!933 = distinct !{!933, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_9Int16TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_"}
!934 = distinct !{!934, !933, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_9Int16TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_: argument 0"}
!935 = distinct !{!935, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi16ELb1ENS_9Int16TypeEEENS_6StatusERKT1_"}
!936 = distinct !{!936, !935, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi16ELb1ENS_9Int16TypeEEENS_6StatusERKT1_: argument 0"}
!937 = distinct !{!937, i1 false, !"_ZN5arrow6Status2OKEv"}
!938 = distinct !{!938, !937, !"_ZN5arrow6Status2OKEv: argument 0"}
!939 = distinct !{!939, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_10UInt16TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_"}
!940 = distinct !{!940, !939, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_10UInt16TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_: argument 0"}
!941 = distinct !{!941, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi16ELb0ENS_10UInt16TypeEEENS_6StatusERKT1_"}
!942 = distinct !{!942, !941, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi16ELb0ENS_10UInt16TypeEEENS_6StatusERKT1_: argument 0"}
!943 = distinct !{!943, i1 false, !"_ZN5arrow6Status2OKEv"}
!944 = distinct !{!944, !943, !"_ZN5arrow6Status2OKEv: argument 0"}
!945 = distinct !{!945, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_9Int32TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_"}
!946 = distinct !{!946, !945, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_9Int32TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_: argument 0"}
!947 = distinct !{!947, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi32ELb1ENS_9Int32TypeEEENS_6StatusERKT1_"}
!948 = distinct !{!948, !947, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi32ELb1ENS_9Int32TypeEEENS_6StatusERKT1_: argument 0"}
!949 = distinct !{!949, i1 false, !"_ZN5arrow6Status2OKEv"}
!950 = distinct !{!950, !949, !"_ZN5arrow6Status2OKEv: argument 0"}
!951 = distinct !{!951, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_10UInt32TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_"}
!952 = distinct !{!952, !951, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_10UInt32TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_: argument 0"}
!953 = distinct !{!953, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi32ELb0ENS_10UInt32TypeEEENS_6StatusERKT1_"}
!954 = distinct !{!954, !953, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi32ELb0ENS_10UInt32TypeEEENS_6StatusERKT1_: argument 0"}
!955 = distinct !{!955, i1 false, !"_ZN5arrow6Status2OKEv"}
!956 = distinct !{!956, !955, !"_ZN5arrow6Status2OKEv: argument 0"}
!957 = distinct !{!957, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_9Int64TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_"}
!958 = distinct !{!958, !957, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_9Int64TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_: argument 0"}
!959 = distinct !{!959, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi64ELb1ENS_9Int64TypeEEENS_6StatusERKT1_"}
!960 = distinct !{!960, !959, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi64ELb1ENS_9Int64TypeEEENS_6StatusERKT1_: argument 0"}
!961 = distinct !{!961, i1 false, !"_ZN5arrow6Status2OKEv"}
!962 = distinct !{!962, !961, !"_ZN5arrow6Status2OKEv: argument 0"}
!963 = distinct !{!963, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_10UInt64TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_"}
!964 = distinct !{!964, !963, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_10UInt64TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_: argument 0"}
!965 = distinct !{!965, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi64ELb0ENS_10UInt64TypeEEENS_6StatusERKT1_"}
!966 = distinct !{!966, !965, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitILi64ELb0ENS_10UInt64TypeEEENS_6StatusERKT1_: argument 0"}
!967 = distinct !{!967, i1 false, !"_ZN5arrow6Status2OKEv"}
!968 = distinct !{!968, !967, !"_ZN5arrow6Status2OKEv: argument 0"}
!969 = distinct !{!969, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_13HalfFloatTypeE"}
!970 = distinct !{!970, !969, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_13HalfFloatTypeE: argument 0"}
!971 = distinct !{!971, i1 false, !"_ZN5arrow6Status2OKEv"}
!972 = distinct !{!972, !971, !"_ZN5arrow6Status2OKEv: argument 0"}
!973 = distinct !{!973, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_9FloatTypeE"}
!974 = distinct !{!974, !973, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_9FloatTypeE: argument 0"}
!975 = distinct !{!975, i1 false, !"_ZN5arrow6Status2OKEv"}
!976 = distinct !{!976, !975, !"_ZN5arrow6Status2OKEv: argument 0"}
!977 = distinct !{!977, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10DoubleTypeE"}
!978 = distinct !{!978, !977, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10DoubleTypeE: argument 0"}
!979 = distinct !{!979, i1 false, !"_ZN5arrow6Status2OKEv"}
!980 = distinct !{!980, !979, !"_ZN5arrow6Status2OKEv: argument 0"}
!981 = distinct !{!981, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10StringTypeE"}
!982 = distinct !{!982, !981, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10StringTypeE: argument 0"}
!983 = distinct !{!983, i1 false, !"_ZN5arrow6Status2OKEv"}
!984 = distinct !{!984, !983, !"_ZN5arrow6Status2OKEv: argument 0"}
!985 = distinct !{!985, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_14StringViewTypeE"}
!986 = distinct !{!986, !985, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_14StringViewTypeE: argument 0"}
!987 = distinct !{!987, i1 false, !"_ZN5arrow6Status2OKEv"}
!988 = distinct !{!988, !987, !"_ZN5arrow6Status2OKEv: argument 0"}
!989 = distinct !{!989, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10BinaryTypeE"}
!990 = distinct !{!990, !989, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10BinaryTypeE: argument 0"}
!991 = distinct !{!991, i1 false, !"_ZN5arrow6Status2OKEv"}
!992 = distinct !{!992, !991, !"_ZN5arrow6Status2OKEv: argument 0"}
!993 = distinct !{!993, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_14BinaryViewTypeE"}
!994 = distinct !{!994, !993, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_14BinaryViewTypeE: argument 0"}
!995 = distinct !{!995, i1 false, !"_ZN5arrow6Status2OKEv"}
!996 = distinct !{!996, !995, !"_ZN5arrow6Status2OKEv: argument 0"}
!997 = distinct !{!997, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_15LargeStringTypeE"}
!998 = distinct !{!998, !997, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_15LargeStringTypeE: argument 0"}
!999 = distinct !{!999, i1 false, !"_ZN5arrow6Status2OKEv"}
!1000 = distinct !{!1000, !999, !"_ZN5arrow6Status2OKEv: argument 0"}
!1001 = distinct !{!1001, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_15LargeBinaryTypeE"}
!1002 = distinct !{!1002, !1001, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_15LargeBinaryTypeE: argument 0"}
!1003 = distinct !{!1003, i1 false, !"_ZN5arrow6Status2OKEv"}
!1004 = distinct !{!1004, !1003, !"_ZN5arrow6Status2OKEv: argument 0"}
!1005 = distinct !{!1005, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_19FixedSizeBinaryTypeE"}
!1006 = distinct !{!1006, !1005, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_19FixedSizeBinaryTypeE: argument 0"}
!1007 = distinct !{null}
!1008 = distinct !{!1008, i1 false, !"_ZN5arrow6Status2OKEv"}
!1009 = distinct !{!1009, !1008, !"_ZN5arrow6Status2OKEv: argument 0"}
!1010 = distinct !{!1010, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_12DurationTypeE"}
!1011 = distinct !{!1011, !1010, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_12DurationTypeE: argument 0"}
!1012 = distinct !{!1012, i1 false, !"_ZN5arrow6Status2OKEv"}
!1013 = distinct !{!1013, !1012, !"_ZN5arrow6Status2OKEv: argument 0"}
!1014 = distinct !{!1014, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10Date32TypeE"}
!1015 = distinct !{!1015, !1014, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10Date32TypeE: argument 0"}
!1016 = distinct !{!1016, i1 false, !"_ZN5arrow6Status2OKEv"}
!1017 = distinct !{!1017, !1016, !"_ZN5arrow6Status2OKEv: argument 0"}
!1018 = distinct !{!1018, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10Date64TypeE"}
!1019 = distinct !{!1019, !1018, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10Date64TypeE: argument 0"}
!1020 = distinct !{!1020, i1 false, !"_ZN5arrow6Status2OKEv"}
!1021 = distinct !{!1021, !1020, !"_ZN5arrow6Status2OKEv: argument 0"}
!1022 = distinct !{!1022, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_13TimestampTypeE"}
!1023 = distinct !{!1023, !1022, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_13TimestampTypeE: argument 0"}
!1024 = distinct !{!1024, !198}
!1025 = distinct !{!1025, i1 false, !"_ZN5arrow6Status2OKEv"}
!1026 = distinct !{!1026, !1025, !"_ZN5arrow6Status2OKEv: argument 0"}
!1027 = distinct !{!1027, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10Time32TypeE"}
!1028 = distinct !{!1028, !1027, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10Time32TypeE: argument 0"}
!1029 = distinct !{!1029, i1 false, !"_ZN5arrow6Status2OKEv"}
!1030 = distinct !{!1030, !1029, !"_ZN5arrow6Status2OKEv: argument 0"}
!1031 = distinct !{!1031, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10Time64TypeE"}
!1032 = distinct !{!1032, !1031, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10Time64TypeE: argument 0"}
!1033 = distinct !{!1033, i1 false, !"_ZN5arrow6Status2OKEv"}
!1034 = distinct !{!1034, !1033, !"_ZN5arrow6Status2OKEv: argument 0"}
!1035 = distinct !{!1035, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_24MonthDayNanoIntervalTypeE"}
!1036 = distinct !{!1036, !1035, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_24MonthDayNanoIntervalTypeE: argument 0"}
!1037 = distinct !{!1037, i1 false, !"_ZN5arrow6Status2OKEv"}
!1038 = distinct !{!1038, !1037, !"_ZN5arrow6Status2OKEv: argument 0"}
!1039 = distinct !{!1039, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_17MonthIntervalTypeE"}
!1040 = distinct !{!1040, !1039, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_17MonthIntervalTypeE: argument 0"}
!1041 = distinct !{!1041, i1 false, !"_ZN5arrow6Status2OKEv"}
!1042 = distinct !{!1042, !1041, !"_ZN5arrow6Status2OKEv: argument 0"}
!1043 = distinct !{!1043, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_19DayTimeIntervalTypeE"}
!1044 = distinct !{!1044, !1043, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_19DayTimeIntervalTypeE: argument 0"}
!1045 = distinct !{!1045, i1 false, !"_ZN5arrow6Status2OKEv"}
!1046 = distinct !{!1046, !1045, !"_ZN5arrow6Status2OKEv: argument 0"}
!1047 = distinct !{!1047, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_13Decimal32TypeE"}
!1048 = distinct !{!1048, !1047, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_13Decimal32TypeE: argument 0"}
!1049 = distinct !{!1049, i1 false, !"_ZN5arrow6Status2OKEv"}
!1050 = distinct !{!1050, !1049, !"_ZN5arrow6Status2OKEv: argument 0"}
!1051 = distinct !{!1051, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_13Decimal64TypeE"}
!1052 = distinct !{!1052, !1051, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_13Decimal64TypeE: argument 0"}
!1053 = distinct !{!1053, i1 false, !"_ZN5arrow6Status2OKEv"}
!1054 = distinct !{!1054, !1053, !"_ZN5arrow6Status2OKEv: argument 0"}
!1055 = distinct !{!1055, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_14Decimal128TypeE"}
!1056 = distinct !{!1056, !1055, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_14Decimal128TypeE: argument 0"}
!1057 = distinct !{!1057, i1 false, !"_ZN5arrow6Status2OKEv"}
!1058 = distinct !{!1058, !1057, !"_ZN5arrow6Status2OKEv: argument 0"}
!1059 = distinct !{!1059, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_14Decimal256TypeE"}
!1060 = distinct !{!1060, !1059, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_14Decimal256TypeE: argument 0"}
!1061 = distinct !{!1061, i1 false, !"_ZN5arrow6Status2OKEv"}
!1062 = distinct !{!1062, !1061, !"_ZN5arrow6Status2OKEv: argument 0"}
!1063 = distinct !{!1063, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_8ListTypeE"}
!1064 = distinct !{!1064, !1063, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_8ListTypeE: argument 0"}
!1065 = distinct !{null}
!1066 = distinct !{!1066, i1 false, !"_ZN5arrow6Status2OKEv"}
!1067 = distinct !{!1067, !1066, !"_ZN5arrow6Status2OKEv: argument 0"}
!1068 = distinct !{!1068, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_13LargeListTypeE"}
!1069 = distinct !{!1069, !1068, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_13LargeListTypeE: argument 0"}
!1070 = distinct !{null}
!1071 = distinct !{!1071, i1 false, !"_ZN5arrow6Status2OKEv"}
!1072 = distinct !{!1072, !1071, !"_ZN5arrow6Status2OKEv: argument 0"}
!1073 = distinct !{!1073, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_12ListViewTypeE"}
!1074 = distinct !{!1074, !1073, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_12ListViewTypeE: argument 0"}
!1075 = distinct !{null}
!1076 = distinct !{!1076, i1 false, !"_ZN5arrow6Status2OKEv"}
!1077 = distinct !{!1077, !1076, !"_ZN5arrow6Status2OKEv: argument 0"}
!1078 = distinct !{!1078, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_17LargeListViewTypeE"}
!1079 = distinct !{!1079, !1078, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_17LargeListViewTypeE: argument 0"}
!1080 = distinct !{null}
!1081 = distinct !{!1081, i1 false, !"_ZN5arrow6Status2OKEv"}
!1082 = distinct !{!1082, !1081, !"_ZN5arrow6Status2OKEv: argument 0"}
!1083 = distinct !{!1083, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_7MapTypeE"}
!1084 = distinct !{!1084, !1083, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_7MapTypeE: argument 0"}
!1085 = distinct !{null}
!1086 = distinct !{!1086, i1 false, !"_ZN5arrow6Status2OKEv"}
!1087 = distinct !{!1087, !1086, !"_ZN5arrow6Status2OKEv: argument 0"}
!1088 = distinct !{!1088, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_17FixedSizeListTypeE"}
!1089 = distinct !{!1089, !1088, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_17FixedSizeListTypeE: argument 0"}
!1090 = distinct !{null}
!1091 = distinct !{!1091, i1 false, !"_ZN5arrow6Status2OKEv"}
!1092 = distinct !{!1092, !1091, !"_ZN5arrow6Status2OKEv: argument 0"}
!1093 = distinct !{!1093, i1 false, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10StructTypeE"}
!1094 = distinct !{!1094, !1093, !"_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_10StructTypeE: argument 0"}
!1095 = distinct !{null}
end_hunk_1
