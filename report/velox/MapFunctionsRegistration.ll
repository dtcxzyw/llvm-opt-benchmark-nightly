inline.NumInlined: 92650
inline.NumDeleted: 25950
begin_hunk_0_@_ZN8facebook5velox9functions17MapAppendFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EERKNSJ_ILb1ESC_EE:bb.a
  %13 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<facebook::velox::TypeVariable<1>>, facebook::velox::Generic<facebook::velox::TypeVariable<2>>>::Element", align 8 ; 10 uses
  %14 = alloca %"class.std::tuple.3444", align 8  ; 6 uses
  %15 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 8 uses
  %16 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %17 = alloca %"class.std::tuple.3444", align 8  ; 6 uses
  %18 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %19 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12077 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions17MapAppendFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EERKNSJ_ILb1ESC_EE:bb.a
.lr.ph295:                                        ; preds = %._crit_edge291
  %i.ky = load i32, ptr %i.bg, align 8, !tbaa !12100, !noalias !22493
  %i.kz = load i32, ptr %i.bi, align 8, !tbaa !22500, !noalias !22497
  %20 = getelementptr i8, ptr %i.kv, <2 x i64> <i64 8, i64 56>
  %21 = getelementptr i8, ptr %i.kv, <2 x i64> <i64 8, i64 56>
  %i.la = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.lc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.le = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.lf = getelementptr i8, ptr %i.kw, <2 x i64> <i64 8, i64 56>
  %i.lg = getelementptr inbounds nuw i8, ptr %19, i64 8
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox9functions17MapAppendFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EERKNSJ_ILb1ESC_EE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !22504)
  %i.nz = load ptr, ptr %i.kv, align 8, !tbaa !8391, !noalias !22507, !nonnull !552, !align !674
  store ptr %i.nz, ptr %16, align 8, !tbaa !1033, !alias.scope !22507
  store <2 x ptr> %21, ptr %i.la, align 8, !tbaa !533, !alias.scope !22507
  %i.oa = trunc nsw i64 %indvars.iv304 to i32
  store i32 %i.oa, ptr %i.lb, align 8, !tbaa !8644, !alias.scope !22507
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ny, ptr noundef nonnull align 8 dereferenceable(28) %16)
          to label %bb.bx unwind label %bb.bz

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox9functions17MapAppendFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EERKNSJ_ILb1ESC_EE:bb.a
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %.thread274
  %i.od = load ptr, ptr %i.lc, align 8, !tbaa !12117, !nonnull !552, !align !674
  %i.oe = load ptr, ptr %17, align 8, !tbaa !8634, !nonnull !552, !align !674
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !22508)
  call void @llvm.experimental.noalias.scope.decl(metadata !22511)
  %i.of = load ptr, ptr %i.kv, align 8, !tbaa !8391, !noalias !22514, !nonnull !552, !align !674
  store ptr %i.of, ptr %18, align 8, !tbaa !1033, !alias.scope !22514
  store <2 x ptr> %20, ptr %i.ld, align 8, !tbaa !533, !alias.scope !22514
  %i.og = trunc nsw i64 %indvars.iv304 to i32
  store i32 %i.og, ptr %i.le, align 8, !tbaa !8644, !alias.scope !22514
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.od, ptr noundef nonnull align 8 dereferenceable(28) %18)
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox9functions17MapUpdateFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EERKNSJ_ILb1ESC_EE:bb.a
  %14 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 8 uses
  %15 = alloca %"class.std::tuple.3444", align 8  ; 6 uses
  %16 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 8 uses
  %17 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %18 = alloca %"class.std::tuple.3444", align 8  ; 6 uses
  %19 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %20 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12077 ; 4 uses
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox9functions17MapUpdateFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EERKNSJ_ILb1ESC_EE:bb.a
  %i.mr = load i32, ptr %i.mn, align 8, !tbaa !12100, !noalias !26007
  %i.ms = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !22500, !noalias !26010
  %21 = getelementptr i8, ptr %i.mo, <2 x i64> <i64 8, i64 56>
  %22 = getelementptr i8, ptr %i.mo, <2 x i64> <i64 8, i64 56>
  %i.mu = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.mv = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.mw = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.mz = getelementptr i8, ptr %i.mp, <2 x i64> <i64 8, i64 56>
  %i.na = getelementptr inbounds nuw i8, ptr %20, i64 8
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox9functions17MapUpdateFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EERKNSJ_ILb1ESC_EE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !26020)
  %i.tl = load ptr, ptr %i.mo, align 8, !tbaa !8391, !noalias !26023, !nonnull !552, !align !674
  store ptr %i.tl, ptr %17, align 8, !tbaa !1033, !alias.scope !26023
  store <2 x ptr> %22, ptr %i.mu, align 8, !tbaa !533, !alias.scope !26023
  %i.tm = trunc nsw i64 %indvars.iv410 to i32
  store i32 %i.tm, ptr %i.mv, align 8, !tbaa !8644, !alias.scope !26023
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.tk, ptr noundef nonnull align 8 dereferenceable(28) %17)
          to label %bb.cv unwind label %bb.cx

end_hunk_6
begin_hunk_7_@_ZN8facebook5velox9functions17MapUpdateFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EERKNSJ_ILb1ESC_EE:bb.a
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %.thread371
  %i.tp = load ptr, ptr %i.mw, align 8, !tbaa !12117, !nonnull !552, !align !674
  %i.tq = load ptr, ptr %18, align 8, !tbaa !8634, !nonnull !552, !align !674
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !26024)
  call void @llvm.experimental.noalias.scope.decl(metadata !26027)
  %i.tr = load ptr, ptr %i.mo, align 8, !tbaa !8391, !noalias !26030, !nonnull !552, !align !674
  store ptr %i.tr, ptr %19, align 8, !tbaa !1033, !alias.scope !26030
  store <2 x ptr> %21, ptr %i.mx, align 8, !tbaa !533, !alias.scope !26030
  %i.ts = trunc nsw i64 %indvars.iv410 to i32
  store i32 %i.ts, ptr %i.my, align 8, !tbaa !8644, !alias.scope !26030
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.tp, ptr noundef nonnull align 8 dereferenceable(28) %19)
end_hunk_7
