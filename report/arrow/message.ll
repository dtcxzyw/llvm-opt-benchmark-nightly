inline.NumInlined: 3211
inline.NumDeleted: 1159
begin_hunk_0_@_ZN5arrow3ipc11ReadMessageEliPNS_2io16RandomAccessFileERKSt8functionIFNS_6StatusEPKvS3_EE:bb.a
  br label %bb.cw

bb.ca:                                            ; preds = %bb.cn, %.lr.ph.i
  %.sroa.01.06.i = phi ptr [ %i.iz, %.lr.ph.i ], [ %i.lh, %bb.cn ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30, !noalias !320
  %i.jg = load i64, ptr %.sroa.01.06.i, align 8, !tbaa !369 ; 2 uses
  %i.jh = add nsw i64 %i.je, %i.jg
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl15ConsumeMetadataEv:bb.a

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit23.thread, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !16  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !664
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl21ConsumeMetadataChunksEv:bb.a
  %11 = alloca %"class.std::unique_ptr.51", align 8 ; 7 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !707  ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53   ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl21ConsumeMetadataChunksEv:bb.a
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit69, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72, %bb.bd
  %i.ex = load ptr, ptr %i.c, align 8, !tbaa !707 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 9
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !46, !range !42, !noundef !43
end_hunk_3
begin_hunk_4_@_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl21ConsumeMetadataChunksEv:bb.a
          to label %bb.cm unwind label %bb.df

bb.cm:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit106
  %i.ig = load ptr, ptr %i.c, align 8, !tbaa !707 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ij = load <2 x ptr>, ptr %8, align 16, !tbaa !11
end_hunk_4
begin_hunk_5_@_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl17ConsumeBodyChunksEv:bb.a
  %10 = alloca %"class.std::unique_ptr.51", align 8 ; 7 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !707  ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53   ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl17ConsumeBodyChunksEv:bb.a

_ZN5arrow6StatusD2Ev.exit66:                      ; preds = %_ZN5arrow6StatusD2Ev.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !707 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl17ConsumeBodyChunksEv:bb.a
          to label %.critedge52 unwind label %bb.aq

.critedge52:                                      ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit69
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !707 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load <2 x ptr>, ptr %6, align 16, !tbaa !11
end_hunk_7
begin_hunk_8_@_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl17ConsumeDataChunksElPv:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bg
  %.0150 = phi i64 [ 0, %.lr.ph ], [ %i.cm, %bb.bg ] ; 2 uses
  %.034149 = phi i64 [ 0, %.lr.ph ], [ %i.cl, %bb.bg ]
  %.0108148 = phi i64 [ %2, %.lr.ph ], [ %i.ew, %bb.bg ] ; 4 uses
  %.sroa.0102.0147 = phi ptr [ %i.b, %.lr.ph ], [ %i.ex, %bb.bg ] ; 7 uses
  %i.j = load ptr, ptr %.sroa.0102.0147, align 8, !tbaa !16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !46, !range !42, !noundef !43
end_hunk_8
begin_hunk_9_@_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl17ConsumeDataChunksElPv:bb.a
  %i.ch = phi ptr [ %spec.select, %bb.af ], [ %i.o, %.thread ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !53 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.cj, i64 %.0108148) ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 %.0150
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.ch, i64 %.sroa.speculated, i1 false)
  %i.cl = add i64 %.034149, 1                     ; 4 uses
  %i.cm = add i64 %.sroa.speculated, %.0150       ; 4 uses
  %.not128 = icmp sgt i64 %.0108148, %i.cj
  br i1 %.not128, label %bb.bg, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not.not = icmp sgt i64 %i.cj, %.0108148
  br i1 %.not.not, label %bb.ai, label %.thread115

bb.ai:                                            ; preds = %bb.ah
end_hunk_9
begin_hunk_10_@_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl17ConsumeDataChunksElPv:bb.a
  br label %bb.bv

bb.bg:                                            ; preds = %bb.ag
  %i.ew = sub nsw i64 %.0108148, %.sroa.speculated
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0102.0147, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.d
  br i1 %i.ey, label %.thread115, label %bb.b

.thread115:                                       ; preds = %bb.bg, %bb.a, %bb.ah, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82
  %.2121 = phi i64 [ %i.cm, %bb.ah ], [ %i.cm, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82 ], [ 0, %bb.a ], [ %i.cm, %bb.bg ]
  %.236120 = phi i64 [ %i.cl, %bb.ah ], [ %i.cl, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82 ], [ 0, %bb.a ], [ %i.cl, %bb.bg ]
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !747 ; 2 uses
  %i.fa = getelementptr inbounds [16 x i8], ptr %i.ez, i64 %.236120
  %i.fb = invoke ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EES9_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.ez, ptr %i.fa)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit unwind label %bb.bm ; 0 uses

end_hunk_10
begin_hunk_11_@_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl17ConsumeDataChunksElPv:bb.a
bb.bo:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !157
  %i.fq = sub i64 %i.fp, %.2121
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !157
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !790
  br label %.loopexit
end_hunk_11
begin_hunk_12_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_:bb.a
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit, !llvm.loop !807

_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load <2 x ptr>, ptr %2, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
end_hunk_12
