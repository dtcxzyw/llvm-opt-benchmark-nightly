inline.NumInlined: 872
inline.NumDeleted: 339
begin_hunk_0_@_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEES7_S3_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(176) initializes((0, 160), (168, 176)) %0, ptr noundef %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef readonly captures(none) %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.31", align 8 ; 9 uses
  %6 = alloca [2 x %"class.std::shared_ptr"], align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !33
end_hunk_0
begin_hunk_1_@_ZN5arrow20RunEndEncodedBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEES7_S3_INS_8DataTypeEE:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !158
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  store ptr null, ptr %5, align 8, !tbaa !164, !alias.scope !161
  %i.x = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #21
          to label %.noexc unwind label %bb.ab    ; 8 uses

end_hunk_1
begin_hunk_2_@_ZN5arrow20RunEndEncodedBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEES7_S3_INS_8DataTypeEE:bb.a
bb.f:                                             ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !56, !alias.scope !161
  store ptr %i.ab, ptr %5, align 8, !tbaa !166, !alias.scope !161
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow20RunEndEncodedBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEES7_S3_INS_8DataTypeEE:bb.a

bb.i:                                             ; preds = %bb.g
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !164
  %.pre19 = load ptr, ptr %i.ad, align 8, !tbaa !56
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

end_hunk_3
begin_hunk_4_@_ZN5arrow20RunEndEncodedBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEES7_S3_INS_8DataTypeEE:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.ad, align 8, !tbaa !56
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !56
  store ptr null, ptr %5, align 8, !tbaa !164
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 32
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull %6, ptr noundef nonnull %i.as)
end_hunk_4
begin_hunk_5_@_ZN5arrow20RunEndEncodedBuilder14ResizePhysicalEl:bb.a
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !170
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58, !noalias !170 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow20RunEndEncodedBuilder5ResetEv
define void @_ZN5arrow20RunEndEncodedBuilder5ResetEv(ptr noundef nonnull align 8 captures(none) dereferenceable(176) initializes((104, 120), (168, 176)) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_6
begin_hunk_7_@_ZN5arrow20RunEndEncodedBuilder11AppendNullsEl:_ZN5arrow6StatusD2Ev.exit
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_7
begin_hunk_8_@_ZN5arrow20RunEndEncodedBuilder11AppendNullsEl:_ZN5arrow6StatusD2Ev.exit
bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.i = load i64, ptr %i.h, align 8, !tbaa !151
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !167
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120
end_hunk_8
begin_hunk_9_@_ZN5arrow20RunEndEncodedBuilder17AppendEmptyValuesEl:_ZN5arrow6StatusD2Ev.exit
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_9
begin_hunk_10_@_ZN5arrow20RunEndEncodedBuilder12AppendScalarERKNS_6ScalarEl:bb.a
_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !167  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8
end_hunk_10
begin_hunk_11_@_ZN5arrow20RunEndEncodedBuilder12AppendScalarERKNS_6ScalarEl:bb.a
bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.s = load i64, ptr %i.r, align 8, !tbaa !151
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !167
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.v = load i64, ptr %i.u, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120
end_hunk_11
begin_hunk_12_@_ZN5arrow20RunEndEncodedBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE:_ZN5arrow6StatusD2Ev.exit
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = load i64, ptr %i.c, align 8, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
end_hunk_12
begin_hunk_13_@_ZN5arrow20RunEndEncodedBuilder16AppendArraySliceERKNS_9ArraySpanEll:_ZN5arrow6StatusD2Ev.exit
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_13
begin_hunk_14_@_ZN5arrow20RunEndEncodedBuilder18DoAppendArraySliceIsEENS_6StatusERKNS_9ArraySpanEll:bb.a

.critedge35:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit57, %_ZN5arrow6StatusD2Ev.exit50
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !167 ; 4 uses
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !223
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !237
end_hunk_14
begin_hunk_15_@_ZN5arrow20RunEndEncodedBuilder18DoAppendArraySliceIiEENS_6StatusERKNS_9ArraySpanEll:bb.a

.critedge35:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit57, %_ZN5arrow6StatusD2Ev.exit50
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !167 ; 4 uses
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !223
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !249
end_hunk_15
begin_hunk_16_@_ZN5arrow20RunEndEncodedBuilder18DoAppendArraySliceIlEENS_6StatusERKNS_9ArraySpanEll:bb.a

.critedge35:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit57, %_ZN5arrow6StatusD2Ev.exit50
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !167 ; 4 uses
  %i.dc = load ptr, ptr %i.d, align 8, !tbaa !223
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !272
end_hunk_16
begin_hunk_17_@_ZN5arrow20RunEndEncodedBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_17
begin_hunk_18_@_ZN5arrow20RunEndEncodedBuilder16FinishCurrentRunEv:_ZN5arrow6StatusD2Ev.exit
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_18
begin_hunk_19_@_ZN5arrow20RunEndEncodedBuilder6ResizeEl:bb.a
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !380 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !383
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58, !noalias !383 ; 2 uses
end_hunk_19
begin_hunk_20_@_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag:bb.a
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.g = load ptr, ptr %0, align 8, !tbaa !67     ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
end_hunk_20
begin_hunk_21_@_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !407

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_M_allocateEm.exit.i
  %3 = load ptr, ptr %0, align 8, !tbaa !67       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68   ; 2 uses
  %.not4.i.i = icmp eq ptr %3, %i.y
end_hunk_21
begin_hunk_22_@llvm.smin.i64
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZSt11make_sharedIN5arrow20RunEndEncodedBuilder15ValueRunBuilderEJRPNS0_10MemoryPoolERKSt10shared_ptrINS0_12ArrayBuilderEERKS6_INS0_8DataTypeEERS1_EES6_IT_EDpOT0_: argument 0"}
!163 = distinct !{!163, !"_ZSt11make_sharedIN5arrow20RunEndEncodedBuilder15ValueRunBuilderEJRPNS0_10MemoryPoolERKSt10shared_ptrINS0_12ArrayBuilderEERKS6_INS0_8DataTypeEERS1_EES6_IT_EDpOT0_"}
!164 = !{!165, !154, i64 0}
!165 = !{!"_ZTSSt12__shared_ptrIN5arrow20RunEndEncodedBuilder15ValueRunBuilderELN9__gnu_cxx12_Lock_policyE2EE", !154, i64 0, !42, i64 8}
!166 = !{!154, !154, i64 0}
!167 = !{!152, !154, i64 160}
!168 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!169 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow20RunEndEncodedBuilder15ValueRunBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!170 = !{!171}
end_hunk_22
