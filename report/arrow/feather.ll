inline.NumInlined: 2868
inline.NumDeleted: 1221
begin_hunk_0_@_ZN5arrow3ipc7feather10WriteTableERKNS_5TableEPNS_2io12OutputStreamERKNS1_15WritePropertiesE:bb.a
          to label %bb.f unwind label %bb.ai, !noalias !208

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr %15, align 8, !tbaa !236, !noalias !208, !nonnull !61, !noundef !61 ; 2 uses
  %.val.i = load ptr, ptr %i.bd, align 8, !tbaa !239, !noalias !208 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %.val90.i = load ptr, ptr %i.be, align 8, !tbaa !242, !noalias !208
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc7feather10WriteTableERKNS_5TableEPNS_2io12OutputStreamERKNS1_15WritePropertiesE:bb.a
          to label %_ZN5arrow6StatusD2Ev.exit99.i unwind label %bb.aj, !noalias !208

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.bl = load ptr, ptr %.val.i, align 8, !tbaa !246, !noalias !249, !nonnull !61, !noundef !61 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !249
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_112WriteArrayV1ERKNS_5ArrayEPNS_2io12OutputStreamEPNS2_13ArrayMetadataE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull %2, ptr noundef nonnull %13)
          to label %.noexc95.i unwind label %bb.aj, !noalias !208
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc7feather10WriteTableERKNS_5TableEPNS_2io12OutputStreamERKNS1_15WritePropertiesE:bb.a

_ZN5arrow6StatusD2Ev.exit45.i.i:                  ; preds = %.noexc95.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !250, !noalias !249 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !253, !noalias !249 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !256, !noalias !249
  switch i32 %i.bs, label %bb.v [
end_hunk_2
begin_hunk_3_@_ZN5arrow3ipc7feather10WriteTableERKNS_5TableEPNS_2io12OutputStreamERKNS1_15WritePropertiesE:bb.a
  br label %.body.i

_ZN5arrow6StatusD2Ev.exit51.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit47.i.i
  %i.cg = load ptr, ptr %i.bo, align 8, !tbaa !250, !noalias !249, !nonnull !61, !noundef !61
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !253, !noalias !249, !nonnull !61, !noundef !61
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 104
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !275, !range !60, !noalias !249, !noundef !61
  store i8 %i.cj, ptr %i.aj, align 8, !tbaa !279, !noalias !249
end_hunk_3
begin_hunk_4_@_ZN5arrow3ipc7feather10WriteTableERKNS_5TableEPNS_2io12OutputStreamERKNS1_15WritePropertiesE:bb.a

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit45.i.i
  store i32 4, ptr %i.af, align 8, !tbaa !270, !noalias !249
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.db = load i32, ptr %i.da, align 8, !tbaa !281, !noalias !249
  store i32 %i.db, ptr %i.ag, align 4, !tbaa !284, !noalias !249
  br label %.noexc97.i

bb.u:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit45.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  store i32 2, ptr %i.af, align 8, !tbaa !270, !noalias !249
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !285, !noalias !249
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIiSaIiEEaSERKS1_:bb.a
  store i32 %i.ak, ptr %i.ad, align 4, !tbaa !3
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.t, %bb.s, %bb.r, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_5
begin_hunk_6_@_ZN5arrow3ipc7feather12_GLOBAL__N_112WriteArrayV1ERKNS_5ArrayEPNS_2io12OutputStreamEPNS2_13ArrayMetadataE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr null, ptr %i.c, align 8, !tbaa !454
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !456, !nonnull !61, !noundef !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.o = invoke noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.d
end_hunk_6
begin_hunk_7_@_ZN5arrow3ipc7feather12_GLOBAL__N_112WriteArrayV1ERKNS_5ArrayEPNS_2io12OutputStreamEPNS2_13ArrayMetadataE:bb.a
          to label %.noexc18 unwind label %bb.js, !inline_history !469

.noexc18:                                         ; preds = %bb.h
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !246, !noalias !466, !nonnull !61, !noundef !61
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_112WriteArrayV1ERKNS_5ArrayEPNS_2io12OutputStreamEPNS2_13ArrayMetadataE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef %2, ptr noundef %3)
          to label %_ZN5arrow3ipc7feather12_GLOBAL__N_113ArrayWriterV15WriteEv.exit unwind label %bb.js, !inline_history !469

end_hunk_7
begin_hunk_8_@_ZN5arrow3ipc7feather12_GLOBAL__N_112WriteArrayV1ERKNS_5ArrayEPNS_2io12OutputStreamEPNS2_13ArrayMetadataE:bb.a
  br label %.body39

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit138, %bb.aq
  %i.dy = load ptr, ptr %i.af, align 8, !tbaa !250, !nonnull !61, !noundef !61 ; 35 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !253, !nonnull !61, !noundef !61 ; 143 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !256, !noalias !484
end_hunk_8
begin_hunk_9_@_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj:bb.a
  %.pre45 = ptrtoint ptr %.pre to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, %bb.e
  %.pre-phi = phi i64 [ %i.aa, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre45, %bb.e ]
  %i.ae = phi ptr [ %.pre4.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre.i.i.i, %bb.e ]
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 4 uses
  store ptr %i.af, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !225
end_hunk_9
begin_hunk_10_@_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj:bb.a
  %.pre44 = load i32, ptr %i.d, align 8, !tbaa !225
  br label %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE8fill_bigEm.exit

_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE8fill_bigEm.exit: ; preds = %bb.g, %bb.f
  %i.ar = phi i32 [ %i.ai, %bb.f ], [ %.pre44, %bb.g ]
  %i.as = phi ptr [ %i.af, %bb.f ], [ %.pre.i.i30, %bb.g ]
  %i.at = sub nsw i64 0, %i.am
end_hunk_10
begin_hunk_11_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV14ReadERKSt6vectorIiSaIiEEPSt10shared_ptrINS_5TableEE:bb.a
  br label %bb.ch

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.095.098 = phi ptr [ %i.e, %.lr.ph ], [ %i.bb, %.critedge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.095.098) ]
  %i.n = load i32, ptr %.sroa.095.098, align 4, !tbaa !3 ; 3 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !3
  %i.o = icmp slt i32 %i.n, 0
end_hunk_11
begin_hunk_12_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV14ReadERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEPSt10shared_ptrINS_5TableEE:bb.a
  br label %bb.cl

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.0111.0129 = phi ptr [ %i.d, %.lr.ph ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0111.0129) ]
  store ptr %i.h, ptr %8, align 8, !tbaa !129
  %i.o = load ptr, ptr %.sroa.0111.0129, align 8, !tbaa !130 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0111.0129, i64 8
end_hunk_12
begin_hunk_13_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV19GetColumnEiPSt10shared_ptrINS_12ChunkedArrayEE:bb.a
.noexc:                                           ; preds = %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !136, !noalias !839
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !253, !noalias !839, !nonnull !61, !noundef !61 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 88
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 96
end_hunk_13
begin_hunk_14_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV110LoadValuesESt10shared_ptrINS_8DataTypeEEPKNS1_3fbs14PrimitiveArrayENS7_12TypeMetadataEPKvPS4_INS_9ArrayDataEE:bb.a
  store ptr null, ptr %i.an, align 8, !tbaa !73, !noalias !870
  store <2 x ptr> %i.ao, ptr %7, align 16, !tbaa !68, !alias.scope !870
  store ptr null, ptr %i.al, align 8, !tbaa !70, !noalias !870
  %i.ap = load ptr, ptr %2, align 8, !tbaa !253   ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !256
  %i.as = icmp eq i32 %i.ar, 29
  br i1 %i.as, label %bb.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !253
  store ptr %i.au, ptr %2, align 8, !tbaa !253
end_hunk_14
begin_hunk_15_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEPSt10shared_ptrINS_5TableEE:bb.a
  %i.o = phi ptr [ null, %.lr.ph ], [ %i.bj, %bb.b ] ; 6 uses
  %i.p = phi ptr [ null, %.lr.ph ], [ %i.bk, %bb.b ] ; 4 uses
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.bl, %bb.b ] ; 4 uses
  %.sroa.033.052 = phi ptr [ %i.d, %.lr.ph ], [ %i.m, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.033.052) ]
  store ptr %i.h, ptr %7, align 8, !tbaa !129
  %i.r = load ptr, ptr %.sroa.033.052, align 8, !tbaa !130 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.033.052, i64 8
end_hunk_15
begin_hunk_16_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKNS0_14IpcReadOptionsEPSt10shared_ptrINS_5TableEE:bb.a
  %i.an = load <2 x ptr>, ptr %i.u, align 8, !tbaa !68, !noalias !960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.ao = load ptr, ptr %6, align 8, !tbaa !955
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %indvars.iv ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73 ; 8 uses
  store <2 x ptr> %i.an, ptr %i.ap, align 8, !tbaa !68
end_hunk_16
