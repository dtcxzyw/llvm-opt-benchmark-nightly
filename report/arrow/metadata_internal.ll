Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/metadata_internal?download=true
inline.NumInlined: 4741
inline.NumDeleted: 2175
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN3org6apache5arrow7flatbuf12CreateSchemaERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_10EndiannessENS4_6OffsetINS4_6VectorINS9_INS2_5FieldEEEjEEEENS9_INSA_INS9_INS2_8KeyValueEEEjEEEENS9_INSA_IljEEEE:bb.a
bb.k:                                             ; preds = %bb.j
  store i64 4, ptr %i.bc, align 8, !tbaa !210
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i23

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i23: ; preds = %bb.k, %bb.j
  %i.bf = load i32, ptr %i.b, align 8, !tbaa !204 ; 3 uses
  %i.bg = sub i32 0, %i.bf
  %i.bh = and i32 %i.bg, 3                        ; 5 uses
  %i.bi = zext nneg i32 %i.bh to i64              ; 3 uses
  %.not.i.i.i.i.i.i24 = icmp eq i32 %i.bh, 0
  %.phi.trans.insert.i.i.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  br i1 %.not.i.i.i.i.i.i24, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i33, label %bb.l

bb.l:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i23
  %.pre4.i.i.i.i.i.i26 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i25, align 8, !tbaa !272 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !290
  %i.bl = ptrtoint ptr %.pre4.i.i.i.i.i.i26 to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = and i64 %i.bn, 4294967295
  %i.bp = icmp samesign ult i64 %i.bo, %i.bi
  br i1 %i.bp, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i27

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.bi)
  %.pre.i.i.i.i.i.i35 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i25, align 8, !tbaa !272
  %.pre.i.i.i.i36 = load i32, ptr %i.b, align 8, !tbaa !204
  br label %.lr.ph.preheader.i.i.i.i.i27

.lr.ph.preheader.i.i.i.i.i27:                     ; preds = %bb.m, %bb.l
  %i.bq = phi i32 [ %i.bf, %bb.l ], [ %.pre.i.i.i.i36, %bb.m ]
  %i.br = phi ptr [ %.pre4.i.i.i.i.i.i26, %bb.l ], [ %.pre.i.i.i.i.i.i35, %bb.m ]
  %i.bs = sub nsw i64 0, %i.bi
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 %i.bs
  store ptr %i.bt, ptr %.phi.trans.insert.i.i.i.i.i.i25, align 8, !tbaa !272
  %i.bu = add i32 %i.bq, %i.bh
  store i32 %i.bu, ptr %i.b, align 8, !tbaa !204
  %i.bv = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i25, align 8, !tbaa !272
  store i8 0, ptr %i.bv, align 1, !tbaa !126
  %exitcond.not.i.i.i.i.i30 = icmp eq i32 %i.bh, 1
  br i1 %exitcond.not.i.i.i.i.i30, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i31, label %.lr.ph.i.i.i.i.i28.1

.lr.ph.i.i.i.i.i28.1:                             ; preds = %.lr.ph.preheader.i.i.i.i.i27
  %i.bw = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i25, align 8, !tbaa !272
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store i8 0, ptr %i.bx, align 1, !tbaa !126
  %exitcond.not.i.i.i.i.i30.1 = icmp eq i32 %i.bh, 2
  br i1 %exitcond.not.i.i.i.i.i30.1, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i31, label %.lr.ph.i.i.i.i.i28.2

.lr.ph.i.i.i.i.i28.2:                             ; preds = %.lr.ph.i.i.i.i.i28.1
  %i.by = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i25, align 8, !tbaa !272
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i8 0, ptr %i.bz, align 1, !tbaa !126
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i31

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i28.2, %.lr.ph.i.i.i.i.i28.1, %.lr.ph.preheader.i.i.i.i.i27
  %.pre.i.i.i32 = load i32, ptr %i.b, align 8, !tbaa !204
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i33

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i33: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i31, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i23
  %i.ca = phi i32 [ %.pre.i.i.i32, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i31 ], [ %i.bf, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i23 ]
  %reass.sub44 = sub i32 %i.ca, %2
  %i.cb = add i32 %reass.sub44, 4
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 6, i32 noundef %i.cb, i32 noundef 0)
  br label %_ZN3org6apache5arrow7flatbuf13SchemaBuilder10add_fieldsEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_5FieldEEEjEEEE.exit

_ZN3org6apache5arrow7flatbuf13SchemaBuilder10add_fieldsEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_5FieldEEEjEEEE.exit: ; preds = %_ZN3org6apache5arrow7flatbuf13SchemaBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i33
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIsEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 4, i16 noundef signext %1, i16 noundef signext 0)
  %i.cc = tail call noundef i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.c)
  ret i32 %i.cc
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema8metadataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZNK5arrow3ipc21DictionaryFieldMapper10GetFieldIdESt6vectorIiSaIiEE(ptr dead_on_unwind writable sret(%"class.arrow::Result.158") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_122AppendKeyValueMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS_16KeyValueMetadataEPSt6vectorINS4_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISI_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 !guid !1049 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 4 uses
  %i.b = icmp ugt i64 %i.a, 2305843009213693951
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.e = load ptr, ptr %2, align 8, !tbaa !260
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE7reserveEm.exit

_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !338
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.g
  %i.o = shl nuw nsw i64 %i.a, 2
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 6 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !260    ; 8 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !338  ; 3 uses
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
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader41, label %vector.ph

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  %i.ac = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep22, align 4, !tbaa !24, !alias.scope !1051
  %wide.load23 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !24, !alias.scope !1051
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !24, !alias.scope !1050
  store <4 x i32> %wide.load23, ptr %i.ad, align 4, !tbaa !24, !alias.scope !1050
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1041

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i, label %.lr.ph.i.i.i.i.preheader41

.lr.ph.i.i.i.i.preheader41:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader41, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader41 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader41 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  %i.af = load i32, ptr %.0911.i.i.i.i, align 4, !tbaa !24, !alias.scope !1051
  store i32 %i.af, ptr %.012.i.i.i.i, align 4, !tbaa !24, !alias.scope !1050
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1042

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE13_M_deallocateEPS8_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.q to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.al) #24
  br label %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE13_M_deallocateEPS8_m.exit.i

_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE13_M_deallocateEPS8_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i
  store ptr %i.p, ptr %2, align 8, !tbaa !260
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store ptr %i.am, ptr %i.k, align 8, !tbaa !338
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.a
  store ptr %i.an, ptr %i.c, align 8, !tbaa !261
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
  %.val = load ptr, ptr %i.as, align 8, !tbaa !158
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val11 = load i64, ptr %i.au, align 8, !tbaa !157
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %.val, i64 noundef %.val11)
  %i.av = load i32, ptr %i.aq, align 8, !tbaa !204
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !158
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !157
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %i.aw, i64 noundef %i.ay)
  %i.az = load i32, ptr %i.aq, align 8, !tbaa !204
  %i.ba = tail call i32 @_ZN3org6apache5arrow7flatbuf14CreateKeyValueERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS4_6StringEEESA_(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 %i.av, i32 %i.az) ; 2 uses
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !338 ; 6 uses
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !261
  %.not.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store ptr %i.bd, ptr %i.ar, align 8, !tbaa !338
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit

bb.g:                                             ; preds = %bb.e
  %i.be = load ptr, ptr %2, align 8, !tbaa !260   ; 7 uses
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
  %min.iters.check26 = icmp ult i64 %i.bt, 28
  %i.bw = sub i64 %i.bg, %i.br
  %diff.check = icmp ugt i64 %i.bw, -32
  %or.cond = or i1 %min.iters.check26, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader40, label %vector.ph27

vector.ph27:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec28 = and i64 %i.bv, 9223372036854775800   ; 3 uses
  %i.bx = shl i64 %n.vec28, 2                     ; 2 uses
  %i.by = getelementptr i8, ptr %i.bp, i64 %i.bx  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.be, i64 %i.bx
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph27
  %index30 = phi i64 [ 0, %vector.ph27 ], [ %index.next35, %vector.body29 ] ; 2 uses
  %i.ca = shl i64 %index30, 2                     ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.bp, i64 %i.ca ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.be, i64 %i.ca ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  %i.cb = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load33 = load <4 x i32>, ptr %next.gep32, align 4, !tbaa !24, !alias.scope !1053
  %wide.load34 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !24, !alias.scope !1053
  %i.cc = getelementptr i8, ptr %next.gep31, i64 16
  store <4 x i32> %wide.load33, ptr %next.gep31, align 4, !tbaa !24, !alias.scope !1052
  store <4 x i32> %wide.load34, ptr %i.cc, align 4, !tbaa !24, !alias.scope !1052
  %index.next35 = add nuw i64 %index30, 8         ; 2 uses
  %i.cd = icmp eq i64 %index.next35, %n.vec28
  br i1 %i.cd, label %middle.block36, label %vector.body29, !llvm.loop !1046

middle.block36:                                   ; preds = %vector.body29
  %cmp.n37 = icmp eq i64 %i.bv, %n.vec28
  br i1 %cmp.n37, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader40

.lr.ph.i.i.i.i.i.i.preheader40:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block36
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.by, %middle.block36 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bz, %middle.block36 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader40, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader40 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader40 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  %i.ce = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !24, !alias.scope !1053
  store i32 %i.ce, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !24, !alias.scope !1052
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cf, %i.bb
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1047

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block36, %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bp, %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.by, %middle.block36 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4
  %.not.i23.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.ck) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  store ptr %i.bp, ptr %2, align 8, !tbaa !260
  store ptr %i.ch, ptr %i.ar, align 8, !tbaa !338
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.cl, ptr %i.c, align 8, !tbaa !261
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit: ; preds = %bb.f, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.cn = icmp sgt i64 %i.cm, %indvars.iv.next
  br i1 %i.cn, label %bb.e, label %._crit_edge, !llvm.loop !1048
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIN3org6apache5arrow7flatbuf5FieldEEENS0_6OffsetINS0_6VectorINS9_IT_EEjEEEEPKSC_m(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 !guid !1055 {
bb.a:
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11StartVectorINS0_6OffsetEjEEvmmm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %2, i64 noundef 4, i64 noundef 4)
  %.not6 = icmp eq i64 %2, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.a, align 8, !tbaa !208
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !210
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i

bb.b:                                             ; preds = %._crit_edge
  store i64 4, ptr %i.b, align 8, !tbaa !210
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i: ; preds = %bb.b, %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !204  ; 2 uses
  %i.g = sub i32 0, %i.f
  %i.h = and i32 %i.g, 3                          ; 5 uses
  %i.i = zext nneg i32 %i.h to i64                ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.h, 0
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  br i1 %.not.i.i.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i
  %.pre4.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !272 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !290
  %i.l = ptrtoint ptr %.pre4.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp samesign ult i64 %i.o, %i.i
  br i1 %i.p, label %bb.d, label %.lr.ph.preheader.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.i)
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !272
  %.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !204
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.f, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.r = phi ptr [ %.pre4.i.i.i.i.i, %bb.c ], [ %.pre.i.i.i.i.i, %bb.d ]
  %i.s = sub nsw i64 0, %i.i
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store ptr %i.t, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !272
  %i.u = add i32 %i.q, %i.h
  store i32 %i.u, ptr %i.e, align 8, !tbaa !204
  %i.v = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !272
  store i8 0, ptr %i.v, align 1, !tbaa !126
  %exitcond.not.i.i.i.i = icmp eq i32 %i.h, 1
  br i1 %exitcond.not.i.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.preheader.i.i.i.i
  %i.w = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !272
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 0, ptr %i.x, align 1, !tbaa !126
  %exitcond.not.i.i.i.i.1 = icmp eq i32 %i.h, 2
  br i1 %exitcond.not.i.i.i.i.1, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %i.y = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !272
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 0, ptr %i.z, align 1, !tbaa !126
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !272 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !290
  %i.ac = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = and i64 %i.ae, 4294967292
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.e, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE9EndVectorIjjEET0_m.exit

bb.e:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !272
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE9EndVectorIjjEET0_m.exit

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE9EndVectorIjjEET0_m.exit: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, %bb.e
  %i.ah = phi ptr [ %.pre4.i.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i ], [ %.pre.i.i.i.i, %bb.e ]
  %i.ai = trunc i64 %2 to i32
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 2 uses
  store ptr %i.aj, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !272
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !204
  %i.al = add i32 %i.ak, 4
  store i32 %i.al, ptr %i.e, align 8, !tbaa !204
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !24
  %i.am = load i32, ptr %i.e, align 8, !tbaa !204
  ret i32 %i.am

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i64 [ %i.an, %.lr.ph ], [ %2, %bb.a ]
  %i.an = add i64 %.07, -1                        ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.an
  %.sroa.0.0.copyload = load i32, ptr %i.ao, align 4, !tbaa !24
  %i.ap = tail call noundef i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIN3org6apache5arrow7flatbuf5FieldENS0_6OffsetEEEjT0_IT_E(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 %.sroa.0.0.copyload) ; 0 uses
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1054
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr i32 @_ZN3org6apache5arrow7flatbuf11CreateFieldERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS4_6StringEEEbNS2_4TypeENS8_IvEENS8_INS2_18DictionaryEncodingEEENS8_INS4_6VectorINS8_INS2_5FieldEEEjEEEENS8_INSF_INS8_INS2_8KeyValueEEEjEEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 %1, i1 noundef zeroext %2, i8 noundef zeroext %3, i32 %4, i32 %5, i32 %6, i32 %7) local_unnamed_addr #5 comdat !guid !1056 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.a, align 8, !tbaa !208
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 26 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !204  ; 4 uses
  %.not.i.i.i = icmp eq i32 %7, 0
  br i1 %.not.i.i.i, label %_ZN3org6apache5arrow7flatbuf12FieldBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !210
  %i.f = icmp ult i64 %i.e, 4
  br i1 %i.f, label %bb.c, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  store i64 4, ptr %i.d, align 8, !tbaa !210
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.g = sub i32 0, %i.c
  %i.h = and i32 %i.g, 3                          ; 5 uses
  %i.i = zext nneg i32 %i.h to i64                ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i
  %.pre4.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !272 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !290
  %i.l = ptrtoint ptr %.pre4.i.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp samesign ult i64 %i.o, %i.i
  br i1 %i.p, label %bb.e, label %.lr.ph.preheader.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.i)
  %.pre.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !272
  %.pre.i.i.i.i = load i32, ptr %i.b, align 8, !tbaa !204
  br label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %i.c, %bb.d ], [ %.pre.i.i.i.i, %bb.e ]
  %i.r = phi ptr [ %.pre4.i.i.i.i.i.i, %bb.d ], [ %.pre.i.i.i.i.i.i, %bb.e ]
  %i.s = sub nsw i64 0, %i.i
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store ptr %i.t, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !272
  %i.u = add i32 %i.q, %i.h
  store i32 %i.u, ptr %i.b, align 8, !tbaa !204
  %i.v = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !272
  store i8 0, ptr %i.v, align 1, !tbaa !126
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.h, 1
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.w = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !272
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 0, ptr %i.x, align 1, !tbaa !126
  %exitcond.not.i.i.i.i.i.1 = icmp eq i32 %i.h, 2
  br i1 %exitcond.not.i.i.i.i.i.1, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.y = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !272
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 0, ptr %i.z, align 1, !tbaa !126
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.1, %.lr.ph.preheader.i.i.i.i.i
  %.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !204
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i
  %i.aa = phi i32 [ %.pre.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i ], [ %i.c, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i ]
  %reass.sub = sub i32 %i.aa, %7
  %i.ab = add i32 %reass.sub, 4
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 16, i32 noundef %i.ab, i32 noundef 0)
  br label %_ZN3org6apache5arrow7flatbuf12FieldBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit

_ZN3org6apache5arrow7flatbuf12FieldBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit: ; preds = %bb.a, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i
  %.not.i.i.i12 = icmp eq i32 %6, 0
  br i1 %.not.i.i.i12, label %_ZN3org6apache5arrow7flatbuf12FieldBuilder12add_childrenEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_5FieldEEEjEEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3org6apache5arrow7flatbuf12FieldBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit
end_hunk_0
