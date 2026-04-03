begin_hunk_0
  %124 = alloca %"class.std::shared_ptr", align 16 ; 23 uses
  %125 = alloca %"class.arrow::Status", align 8   ; 10 uses
  %126 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %i.ba = alloca i64, align 8                     ; 5 uses
  %127 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %128 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %129 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
end_hunk_0
begin_hunk_1
  %135 = alloca %"class.std::shared_ptr", align 16 ; 23 uses
  %136 = alloca %"class.arrow::Status", align 8   ; 10 uses
  %137 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %i.be = alloca i64, align 8                     ; 5 uses
  %138 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %139 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %140 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
end_hunk_1
begin_hunk_2
  store ptr %i.bhi, ptr %0, align 8, !tbaa !39, !alias.scope !783
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #29, !noalias !783
  %i.bhj = icmp eq ptr %i.bhi, null
  br i1 %i.bhj, label %_ZN5arrow6StatusD2Ev.exit52.i, label %.critedge38.i

bb.pt:                                            ; preds = %bb.ps
  %i.bhk = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3
  %i.bhm = sext i32 %i.bhl to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm) #29, !noalias !783
  br label %bb.pu

.critedge38.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm) #29, !noalias !783
  br label %bb.qp

bb.pu:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit52.i, %bb.pr, %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i
  %.123.i = phi i64 [ %i.bhm, %_ZN5arrow6StatusD2Ev.exit52.i ], [ 0, %bb.pr ], [ 0, %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i ] ; 2 uses
end_hunk_3
begin_hunk_4
          cleanup
  br label %bb.qw

bb.qp:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit69.i, %.critedge38.i
  %i.bkj = load ptr, ptr %i.bgt, align 8, !tbaa !118, !noalias !783 ; 8 uses
  %.not.i.i70.i = icmp eq ptr %i.bkj, null
  br i1 %.not.i.i70.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74.i, label %bb.qq
end_hunk_4
begin_hunk_5
  store ptr %i.bxd, ptr %0, align 8, !tbaa !39, !alias.scope !839
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #29, !noalias !839
  %i.bxe = icmp eq ptr %i.bxd, null
  br i1 %i.bxe, label %_ZN5arrow6StatusD2Ev.exit52.i476, label %.critedge38.i475

bb.uh:                                            ; preds = %bb.ug
  %i.bxf = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6
  %i.bxh = sext i32 %i.bxg to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #29, !noalias !839
  br label %bb.ui

.critedge38.i475:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit48.i474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #29, !noalias !839
  br label %bb.vd

bb.ui:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit52.i476, %bb.uf, %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i437
  %.123.i439 = phi i64 [ %i.bxh, %_ZN5arrow6StatusD2Ev.exit52.i476 ], [ 0, %bb.uf ], [ 0, %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i437 ] ; 2 uses
end_hunk_6
begin_hunk_7
          cleanup
  br label %bb.vk

bb.vd:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit69.i446, %.critedge38.i475
  %i.cae = load ptr, ptr %i.bwo, align 8, !tbaa !118, !noalias !839 ; 8 uses
  %.not.i.i70.i447 = icmp eq ptr %i.cae, null
  br i1 %.not.i.i70.i447, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74.i451, label %bb.ve
end_hunk_7
begin_hunk_8
  store ptr %i.clv, ptr %0, align 8, !tbaa !39, !alias.scope !888
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #29, !noalias !888
  %i.clw = icmp eq ptr %i.clv, null
  %186 = load i64, ptr %i.be, align 8, !noalias !888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #29, !noalias !888
  br i1 %i.clw, label %bb.yw, label %bb.zr

bb.yv:                                            ; preds = %bb.yu
  %i.clx = landingpad { ptr, i32 }
end_hunk_8
begin_hunk_9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #29, !noalias !888
  br label %bb.zy

bb.yw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit47.i, %bb.yt, %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i
  %.123.i554 = phi i64 [ %186, %_ZN5arrow6StatusD2Ev.exit47.i ], [ 0, %bb.yt ], [ 0, %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i ] ; 2 uses
  %i.cly = load ptr, ptr %137, align 16, !tbaa !33, !noalias !888 ; 3 uses
  %i.clz = icmp eq ptr %i.cly, null
  br i1 %i.clz, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i, label %bb.yx
end_hunk_9
begin_hunk_10
          cleanup
  br label %bb.zy

bb.zr:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit68.i, %_ZN5arrow6StatusD2Ev.exit47.i
  %i.cot = load ptr, ptr %i.clg, align 8, !tbaa !118, !noalias !888 ; 8 uses
  %.not.i.i69.i = icmp eq ptr %i.cot, null
  br i1 %.not.i.i69.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i, label %bb.zs
end_hunk_10
begin_hunk_11
  store ptr %i.dak, ptr %0, align 8, !tbaa !39, !alias.scope !937
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #29, !noalias !937
  %i.dal = icmp eq ptr %i.dak, null
  %187 = load i64, ptr %i.ba, align 8, !noalias !937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #29, !noalias !937
  br i1 %i.dal, label %bb.adj, label %bb.aee

bb.adi:                                           ; preds = %bb.adh
  %i.dam = landingpad { ptr, i32 }
end_hunk_11
begin_hunk_12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #29, !noalias !937
  br label %bb.ael

bb.adj:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit47.i688, %bb.adg, %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i651
  %.123.i653 = phi i64 [ %187, %_ZN5arrow6StatusD2Ev.exit47.i688 ], [ 0, %bb.adg ], [ 0, %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i651 ] ; 2 uses
  %i.dan = load ptr, ptr %126, align 16, !tbaa !33, !noalias !937 ; 3 uses
  %i.dao = icmp eq ptr %i.dan, null
  br i1 %i.dao, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i656, label %bb.adk
end_hunk_12
begin_hunk_13
          cleanup
  br label %bb.ael

bb.aee:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit68.i660, %_ZN5arrow6StatusD2Ev.exit47.i688
  %i.ddi = load ptr, ptr %i.czv, align 8, !tbaa !118, !noalias !937 ; 8 uses
  %.not.i.i69.i661 = icmp eq ptr %i.ddi, null
  br i1 %.not.i.i69.i661, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i665, label %bb.aef
end_hunk_13
begin_hunk_14
  store ptr %i.frx, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #29, !noalias !1152
  %i.fry = icmp eq ptr %i.frx, null
  br i1 %i.fry, label %_ZN5arrow6StatusD2Ev.exit1213, label %.critedge54.i

bb.axy:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1219
  %i.frz = landingpad { ptr, i32 }
end_hunk_14
begin_hunk_15
  %i.fsd = sext i32 %i.fsc to i64
  %i.fse = sext i32 %i.fsb to i64
  br label %bb.axz

.critedge54.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit1217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #29, !noalias !1152
  br label %.critedge52.i

bb.axz:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1213, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit
  %i.fsf = phi i64 [ %i.fse, %_ZN5arrow6StatusD2Ev.exit1213 ], [ 0, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit ]
end_hunk_15
begin_hunk_16
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !1180
  br label %.critedge52.i

.critedge52.i:                                    ; preds = %.critedge54.i, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit1211, %_ZN5arrow6StatusD2Ev.exit1223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #29, !noalias !1152
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %85) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #29, !noalias !1152
end_hunk_16
begin_hunk_17
  store ptr %i.gck, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #29, !noalias !1183
  %i.gcl = icmp eq ptr %i.gck, null
  br i1 %i.gcl, label %_ZN5arrow6StatusD2Ev.exit1271, label %.critedge54.i1162

bb.bbb:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1277
  %i.gcm = landingpad { ptr, i32 }
end_hunk_17
begin_hunk_18
  %i.gcp = sub nsw i64 %i.gcn, %i.gco
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #29, !noalias !1183
  br label %bb.bbc

.critedge54.i1162:                                ; preds = %_ZN5arrow6StatusD2Ev.exit1275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #29, !noalias !1183
  br label %.critedge52.i1159

bb.bbc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1271, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1284
  %i.gcq = phi i64 [ %i.gco, %_ZN5arrow6StatusD2Ev.exit1271 ], [ 0, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1284 ]
end_hunk_18
begin_hunk_19
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !1208
  br label %.critedge52.i1159

.critedge52.i1159:                                ; preds = %.critedge54.i1162, %_ZN5arrow6StatusD2Ev.exit1265, %_ZN5arrow6StatusD2Ev.exit1269, %_ZN5arrow6StatusD2Ev.exit1281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #29, !noalias !1183
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %78) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #29, !noalias !1183
end_hunk_19
begin_hunk_20
  store ptr %i.hhf, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #29, !noalias !1283
  %i.hhg = icmp eq ptr %i.hhf, null
  br i1 %i.hhg, label %_ZN5arrow6StatusD2Ev.exit1526, label %.critedge54.i1190

bb.bjw:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1532
  %i.hhh = landingpad { ptr, i32 }
end_hunk_20
begin_hunk_21
  %i.hhl = sext i32 %i.hhk to i64
  %i.hhm = sext i32 %i.hhj to i64
  br label %bb.bjx

.critedge54.i1190:                                ; preds = %_ZN5arrow6StatusD2Ev.exit1530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #29, !noalias !1283
  br label %.critedge52.i1187

bb.bjx:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1526, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1539
  %i.hhn = phi i64 [ %i.hhm, %_ZN5arrow6StatusD2Ev.exit1526 ], [ 0, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1539 ]
end_hunk_21
begin_hunk_22
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !1307
  br label %.critedge52.i1187

.critedge52.i1187:                                ; preds = %.critedge54.i1190, %_ZN5arrow6StatusD2Ev.exit1520, %_ZN5arrow6StatusD2Ev.exit1524, %_ZN5arrow6StatusD2Ev.exit1536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #29, !noalias !1283
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %57) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #29, !noalias !1283
end_hunk_22
