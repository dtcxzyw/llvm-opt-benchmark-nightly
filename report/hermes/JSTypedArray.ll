inline.NumInlined: 1686
inline.NumDeleted: 641
begin_hunk_0_@_ZN6hermes2vm16JSTypedArrayBase20allocateToSameBufferERNS0_7RuntimeENS0_6HandleIS1_EEjj:bb.a
  %i.g = getelementptr [8 x i8], ptr @_ZZN6hermes2vm16JSTypedArrayBase15allocateSpeciesERNS0_7RuntimeENS0_6HandleIS1_EEjE11allocateFns, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -280
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !306
  %i.j = tail call ptr %i.i(ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.a) #11, !inline_history !307 ; 3 uses
  %.not = icmp eq ptr %i.j, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.e, label %bb.b

end_hunk_0
begin_hunk_1_@_ZN6hermes2vm16JSTypedArrayBase17setToCopyOfBufferERNS0_7RuntimeENS0_6HandleIS1_EEjNS4_INS0_13JSArrayBufferEEEjj:bb.a
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i6, 281474976710655
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !308
  %i.h = load i32, ptr %i.c, align 4
  %i.i = lshr i32 %i.h, 24
  %i.j = zext nneg i32 %i.i to i64
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm16JSTypedArrayBase21setToCopyOfTypedArrayERNS0_7RuntimeENS0_6HandleIS1_EEjS5_jj:bb.a
  %i.aw = lshr i32 %i.av, 24
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !309
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !311
  %i.bc = tail call i64 %i.bb(ptr nonnull %i.au, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %.02335) #11, !inline_history !315
  store i64 %i.bc, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !273
  %.sroa.0.0.copyload.i.i.i26 = load i64, ptr %1, align 8, !tbaa !270
  %i.bd = and i64 %.sroa.0.0.copyload.i.i.i26, 281474976710655
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm16JSTypedArrayBase21setToCopyOfTypedArrayERNS0_7RuntimeENS0_6HandleIS1_EEjS5_jj:bb.a
  %i.bg = lshr i32 %i.bf, 24
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !309
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !316
  %i.bm = tail call i32 %i.bl(ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %.02136, ptr nonnull %.0.i.i.i.i.i.i) #11, !inline_history !317
  %.mask = and i32 %i.bm, 255
  %i.bn = icmp eq i32 %.mask, 0
  br i1 %i.bn, label %.thread, label %bb.g
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm16JSTypedArrayBase21setToCopyOfTypedArrayERNS0_7RuntimeENS0_6HandleIS1_EEjS5_jj:bb.a
  %i.bo = add i32 %.02136, 1
  %i.bp = add i32 %.02335, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.bp, %i.as
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !318

.thread:                                          ; preds = %.lr.ph, %bb.g, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.c, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ 0, %.lr.ph ], [ 1, %bb.g ]
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm18Int8ArrayBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE2vtE, ptr %i.f, align 8, !tbaa !320
  ret void
}

end_hunk_5
begin_hunk_6_@_ZN6hermes2vm19Int16ArrayBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE2vtE, ptr %i.f, align 8, !tbaa !320
  ret void
}

end_hunk_6
begin_hunk_7_@_ZN6hermes2vm19Int32ArrayBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE2vtE, ptr %i.f, align 8, !tbaa !320
  ret void
}

end_hunk_7
begin_hunk_8_@_ZN6hermes2vm19Uint8ArrayBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE2vtE, ptr %i.f, align 8, !tbaa !320
  ret void
}

end_hunk_8
begin_hunk_9_@_ZN6hermes2vm26Uint8ClampedArrayBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE2vtE, ptr %i.f, align 8, !tbaa !320
  ret void
}

end_hunk_9
begin_hunk_10_@_ZN6hermes2vm20Uint16ArrayBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE2vtE, ptr %i.f, align 8, !tbaa !320
  ret void
}

end_hunk_10
begin_hunk_11_@_ZN6hermes2vm20Uint32ArrayBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE2vtE, ptr %i.f, align 8, !tbaa !320
  ret void
}

end_hunk_11
begin_hunk_12_@_ZN6hermes2vm21Float32ArrayBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE2vtE, ptr %i.f, align 8, !tbaa !320
  ret void
}

end_hunk_12
begin_hunk_13_@_ZN6hermes2vm21Float64ArrayBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE2vtE, ptr %i.f, align 8, !tbaa !320
  ret void
}

end_hunk_13
begin_hunk_14_@_ZN6hermes2vm22BigInt64ArrayBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE2vtE, ptr %i.f, align 8, !tbaa !320
  ret void
}

end_hunk_14
begin_hunk_15_@_ZN6hermes2vm23BigUint64ArrayBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE2vtE, ptr %i.f, align 8, !tbaa !320
  ret void
}

end_hunk_15
begin_hunk_16_@_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE
!304 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !26, i64 4}
!305 = !{!26, !26, i64 0}
!306 = !{!34, !34, i64 0}
!307 = !{ptr @_ZN6hermes2vm16JSTypedArrayBase15allocateSpeciesERNS0_7RuntimeENS0_6HandleIS1_EEj}
!308 = !{!23, !4, i64 32}
!309 = !{!310, !310, i64 0}
!310 = !{!"p1 _ZTSN6hermes2vm6VTableE", !34, i64 0}
!311 = !{!312, !34, i64 64}
!312 = !{!"_ZTSN6hermes2vm12ObjectVTableE", !313, i64 0, !34, i64 40, !34, i64 48, !34, i64 56, !34, i64 64, !34, i64 72, !34, i64 80, !34, i64 88}
!313 = !{!"_ZTSN6hermes2vm6VTableE", !25, i64 0, !314, i64 8, !4, i64 12, !34, i64 16, !34, i64 24, !34, i64 32}
!314 = !{!"_ZTSN6hermes2vm8CellKindE", !5, i64 0}
!315 = distinct !{null}
!316 = !{!312, !34, i64 72}
!317 = distinct !{null}
!318 = distinct !{!318, !319}
!319 = !{!"llvm.loop.mustprogress"}
!320 = !{!321, !310, i64 216}
!321 = !{!"_ZTSN6hermes2vm8Metadata7BuilderE", !84, i64 0, !322, i64 8, !322, i64 56, !322, i64 104, !322, i64 152, !331, i64 200, !304, i64 208, !310, i64 216}
!322 = !{!"_ZTSSt3mapIhPKcSt4lessIhESaISt4pairIKhS1_EEE", !323, i64 0}
!323 = !{!"_ZTSSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE", !324, i64 0}
!324 = !{!"_ZTSNSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !325, i64 0, !327, i64 8}
!325 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIhEE", !326, i64 0}
!326 = !{!"_ZTSSt4lessIhE"}
!327 = !{!"_ZTSSt15_Rb_tree_header", !328, i64 0, !25, i64 32}
!328 = !{!"_ZTSSt18_Rb_tree_node_base", !329, i64 0, !330, i64 8, !330, i64 16, !330, i64 24}
!329 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!330 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !34, i64 0}
!331 = !{!"_ZTSN6hermes8OptValueINS_2vm8Metadata9ArrayDataEEE", !332, i64 0, !26, i64 4}
!332 = !{!"_ZTSN6hermes2vm8Metadata9ArrayDataE", !333, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!333 = !{!"_ZTSN6hermes2vm8Metadata9ArrayData9ArrayTypeE", !5, i64 0}
end_hunk_16
