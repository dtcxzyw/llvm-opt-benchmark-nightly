inline.NumInlined: 3208
inline.NumDeleted: 695
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %i.fas = trunc nuw i8 %i.far to i1
  br i1 %i.fas, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit131.i1196, label %bb.qo

bb.qo:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i123.i1195
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %30) #20, !noalias !1120
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit131.i1196

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit131.i1196: ; preds = %bb.qo, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i123.i1195, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i128.i1201, %bb.qh
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20, !noalias !1120
  br label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

_ZN5arrow6StatusD2Ev.exit133.i1165:               ; preds = %.lr.ph17.i1163
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20, !noalias !1120
  %i.fat = load ptr, ptr %i.etm, align 8, !tbaa !180, !noalias !1120 ; 2 uses
  %i.fau = load ptr, ptr %i.fat, align 8, !tbaa !93, !noalias !1120
  %i.fav = getelementptr inbounds nuw i8, ptr %i.fau, i64 40
  %i.faw = load ptr, ptr %i.fav, align 8, !noalias !1120
  call void %i.faw(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %33, ptr noundef nonnull align 8 dereferenceable(144) %i.fat), !noalias !1120, !inline_history !1143
  %i.fax = load ptr, ptr %33, align 8, !tbaa !53, !noalias !1120 ; 2 uses
  store ptr %i.fax, ptr %0, align 8, !tbaa !53, !alias.scope !1120
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20, !noalias !1120
  %i.fay = icmp eq ptr %i.fax, null
  br i1 %i.fay, label %.critedge84.i1166, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

.critedge84.i1166:                                ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i1218, %_ZN5arrow6StatusD2Ev.exit133.i1165, %_ZN5arrow6StatusD2Ev.exit101.preheader.i1173
  %i.faz = getelementptr inbounds nuw i8, ptr %.05215.i1164, i64 48 ; 3 uses
  %i.fba = load ptr, ptr %i.etp, align 8, !tbaa !178, !noalias !1120
  %.not69.i1167 = icmp eq ptr %i.faz, %i.fba
  br i1 %.not69.i1167, label %.critedge87.loopexit.i1168, label %.lr.ph17.i1163, !llvm.loop !1144

.critedge87.loopexit.i1168:                       ; preds = %.critedge84.i1166
  %.pre.i1169 = load i64, ptr %i.ett, align 8, !tbaa !179, !noalias !1120
  br label %.critedge87.i1170

.critedge87.i1170:                                ; preds = %.critedge87.loopexit.i1168, %.lr.ph20.split.i1160
  %i.fbb = phi i64 [ %.pre.i1169, %.critedge87.loopexit.i1168 ], [ %i.eva, %.lr.ph20.split.i1160 ] ; 2 uses
  %i.fbc = phi ptr [ %i.faz, %.critedge87.loopexit.i1168 ], [ %i.evb, %.lr.ph20.split.i1160 ]
  %i.fbd = add nuw nsw i64 %.05319.i1161, 1       ; 2 uses
  %.not78.i1171 = icmp slt i64 %i.fbd, %i.fbb
  br i1 %.not78.i1171, label %.lr.ph20.split.i1160, label %.critedge89.i1158, !llvm.loop !1145

.critedge89.i1158:                                ; preds = %.critedge87.i1170, %.lr.ph20.i1159, %_ZN5arrow6StatusD2Ev.exit95.i1156
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !1146
  br label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

bb.qp:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %i.fbe = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fbf = load ptr, ptr %i.fbe, align 8, !tbaa !315, !noalias !1149 ; 16 uses
  %i.fbg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.fbh = load i64, ptr %i.fbg, align 8, !tbaa !179, !noalias !1149
  %i.fbi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.fbj = load ptr, ptr %i.fbi, align 8, !tbaa !178, !noalias !1149
  %i.fbk = load ptr, ptr %2, align 8, !tbaa !174, !noalias !1149
  %i.fbl = ptrtoint ptr %i.fbj to i64
  %i.fbm = ptrtoint ptr %i.fbk to i64
  %i.fbn = sub i64 %i.fbl, %i.fbm
  %i.fbo = sdiv exact i64 %i.fbn, 48
  %i.fbp = mul nsw i64 %i.fbo, %i.fbh             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20, !noalias !1149
  %i.fbq = getelementptr inbounds nuw i8, ptr %i.fbf, i64 112 ; 2 uses
  %i.fbr = load i64, ptr %i.fbq, align 8, !tbaa !107, !noalias !1152 ; 2 uses
  %i.fbs = load ptr, ptr %i.fbf, align 8, !tbaa !93, !noalias !1152
  %i.fbt = getelementptr inbounds nuw i8, ptr %i.fbs, i64 16
  %i.fbu = load ptr, ptr %i.fbt, align 8, !noalias !1152
  %i.fbv = tail call noundef i64 %i.fbu(ptr noundef nonnull align 8 dereferenceable(144) %i.fbf), !noalias !1152, !inline_history !1155
  %i.fbw = add nsw i64 %i.fbv, %i.fbp             ; 2 uses
  %.not.i.i1231 = icmp sgt i64 %i.fbw, %i.fbr
  br i1 %.not.i.i1231, label %_ZN5arrow6StatusD2Ev.exit.i1248, label %_ZN5arrow6StatusD2Ev.exit.thread.i1232

_ZN5arrow6StatusD2Ev.exit.thread.i1232:           ; preds = %bb.qp
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !1149
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !1149
  br label %_ZN5arrow6StatusD2Ev.exit94.i

_ZN5arrow6StatusD2Ev.exit.i1248:                  ; preds = %bb.qp
  %i.fbx = shl nsw i64 %i.fbr, 1
  %.sroa.speculated.i.i.i1249 = tail call noundef i64 @llvm.smax.i64(i64 %i.fbw, i64 %i.fbx)
  %i.fby = load ptr, ptr %i.fbf, align 8, !tbaa !93, !noalias !1152
  %i.fbz = getelementptr inbounds nuw i8, ptr %i.fby, i64 24
  %i.fca = load ptr, ptr %i.fbz, align 8, !noalias !1152
  call void %i.fca(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %24, ptr noundef nonnull align 8 dereferenceable(144) %i.fbf, i64 noundef %.sroa.speculated.i.i.i1249), !noalias !1149, !inline_history !1155
  %.pr.i1250 = load ptr, ptr %24, align 8, !tbaa !53, !noalias !1149 ; 2 uses
  store ptr %.pr.i1250, ptr %0, align 8, !tbaa !53, !alias.scope !1149
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !1149
  %i.fcb = icmp eq ptr %.pr.i1250, null
  br i1 %i.fcb, label %_ZN5arrow6StatusD2Ev.exit94.i, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

_ZN5arrow6StatusD2Ev.exit94.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i1248, %_ZN5arrow6StatusD2Ev.exit.thread.i1232
  %i.fcc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.fcd = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.fce = load ptr, ptr %i.fcd, align 8, !tbaa !1156, !noalias !1149
  %i.fcf = load ptr, ptr %i.fcc, align 8, !tbaa !1157, !noalias !1149
  %i.fcg = ptrtoint ptr %i.fce to i64
  %i.fch = ptrtoint ptr %i.fcf to i64
  %i.fci = sub i64 %i.fcg, %i.fch
  %i.fcj = lshr exact i64 %i.fci, 4
  %i.fck = trunc i64 %i.fcj to i32
  %.not173.i = icmp sgt i32 %i.fck, 0
  br i1 %.not173.i, label %.lr.ph.i1245, label %.critedge77.preheader.i

.lr.ph.i1245:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit94.i
  %i.fcl = getelementptr inbounds nuw i8, ptr %i.fbf, i64 120
  br label %bb.qq

.critedge77.preheader.i:                          ; preds = %_ZN5arrow6StatusD2Ev.exit103.i1246, %_ZN5arrow6StatusD2Ev.exit94.i
  %i.fcm = load i64, ptr %i.fbg, align 8, !tbaa !179, !noalias !1149 ; 2 uses
  %.not74180.i = icmp sgt i64 %i.fcm, 0
  br i1 %.not74180.i, label %.lr.ph182.i, label %.critedge.sink.split.i

.lr.ph182.i:                                      ; preds = %.critedge77.preheader.i
  %i.fcn = getelementptr inbounds nuw i8, ptr %i.fbf, i64 120 ; 2 uses
  %i.fco = getelementptr inbounds nuw i8, ptr %i.fbf, i64 48
  %i.fcp = getelementptr inbounds nuw i8, ptr %i.fbf, i64 80 ; 4 uses
  %i.fcq = getelementptr inbounds nuw i8, ptr %i.fbf, i64 88 ; 2 uses
  %i.fcr = getelementptr inbounds nuw i8, ptr %i.fbf, i64 104 ; 2 uses
  %i.fcs = load ptr, ptr %2, align 8, !tbaa !174, !noalias !1149
  %i.fct = load ptr, ptr %i.fbi, align 8, !tbaa !178, !noalias !1149 ; 2 uses
  %i.fcu = icmp eq ptr %i.fcs, %i.fct
  br i1 %i.fcu, label %.critedge.sink.split.i, label %.lr.ph182.split.i

bb.qq:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit103.i1246, %.lr.ph.i1245
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i1245 ], [ %indvars.iv.next.i, %_ZN5arrow6StatusD2Ev.exit103.i1246 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20, !noalias !1149
  %i.fcv = load ptr, ptr %i.fcl, align 8, !tbaa !229, !noalias !1149
  %i.fcw = getelementptr inbounds nuw [16 x i8], ptr %i.fcv, i64 %indvars.iv.i
  %i.fcx = load ptr, ptr %i.fcw, align 8, !tbaa !919, !noalias !1149 ; 5 uses
  %i.fcy = getelementptr inbounds nuw i8, ptr %i.fcx, i64 112
  %i.fcz = load i64, ptr %i.fcy, align 8, !tbaa !107, !noalias !1158 ; 2 uses
  %i.fda = load ptr, ptr %i.fcx, align 8, !tbaa !93, !noalias !1158
  %i.fdb = getelementptr inbounds nuw i8, ptr %i.fda, i64 16
  %i.fdc = load ptr, ptr %i.fdb, align 8, !noalias !1158
  %i.fdd = call noundef i64 %i.fdc(ptr noundef nonnull align 8 dereferenceable(144) %i.fcx), !noalias !1158, !inline_history !1155
  %i.fde = add nsw i64 %i.fdd, %i.fbp             ; 2 uses
  %.not.i95.i = icmp sgt i64 %i.fde, %i.fcz
  br i1 %.not.i95.i, label %_ZN5arrow6StatusD2Ev.exit99.i, label %_ZN5arrow6StatusD2Ev.exit99.thread.i

_ZN5arrow6StatusD2Ev.exit99.thread.i:             ; preds = %bb.qq
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !1149
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20, !noalias !1149
  br label %_ZN5arrow6StatusD2Ev.exit103.i1246

_ZN5arrow6StatusD2Ev.exit99.i:                    ; preds = %bb.qq
  %i.fdf = shl nsw i64 %i.fcz, 1
  %.sroa.speculated.i.i96.i = call noundef i64 @llvm.smax.i64(i64 %i.fde, i64 %i.fdf)
  %i.fdg = load ptr, ptr %i.fcx, align 8, !tbaa !93, !noalias !1158
  %i.fdh = getelementptr inbounds nuw i8, ptr %i.fdg, i64 24
  %i.fdi = load ptr, ptr %i.fdh, align 8, !noalias !1158
  call void %i.fdi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %25, ptr noundef nonnull align 8 dereferenceable(144) %i.fcx, i64 noundef %.sroa.speculated.i.i96.i), !noalias !1149, !inline_history !1155
  %.pr167.i = load ptr, ptr %25, align 8, !tbaa !53, !noalias !1149 ; 2 uses
  store ptr %.pr167.i, ptr %0, align 8, !tbaa !53, !alias.scope !1149
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20, !noalias !1149
  %i.fdj = icmp eq ptr %.pr167.i, null
  br i1 %i.fdj, label %_ZN5arrow6StatusD2Ev.exit103.i1246, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

_ZN5arrow6StatusD2Ev.exit103.i1246:               ; preds = %_ZN5arrow6StatusD2Ev.exit99.i, %_ZN5arrow6StatusD2Ev.exit99.thread.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fdk = load ptr, ptr %i.fcd, align 8, !tbaa !1156, !noalias !1149
  %i.fdl = load ptr, ptr %i.fcc, align 8, !tbaa !1157, !noalias !1149
  %i.fdm = ptrtoint ptr %i.fdk to i64
  %i.fdn = ptrtoint ptr %i.fdl to i64
  %i.fdo = sub i64 %i.fdm, %i.fdn
  %sext.i = shl i64 %i.fdo, 28
  %i.fdp = ashr i64 %sext.i, 32
  %.not.i1247 = icmp slt i64 %indvars.iv.next.i, %i.fdp
  br i1 %.not.i1247, label %bb.qq, label %.critedge77.preheader.i, !llvm.loop !1161

.lr.ph182.split.i:                                ; preds = %.lr.ph182.i, %.critedge87.i1242
  %i.fdq = phi i64 [ %i.fgn, %.critedge87.i1242 ], [ %i.fcm, %.lr.ph182.i ]
  %i.fdr = phi ptr [ %i.fgo, %.critedge87.i1242 ], [ %i.fct, %.lr.ph182.i ] ; 2 uses
  %.058181.i = phi i64 [ %i.fgp, %.critedge87.i1242 ], [ 0, %.lr.ph182.i ]
  %i.fds = load ptr, ptr %2, align 8, !tbaa !174, !noalias !1149 ; 2 uses
  %.not68178.i = icmp eq ptr %i.fds, %i.fdr
  br i1 %.not68178.i, label %.critedge87.i1242, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph182.split.i, %_ZN5arrow6StatusD2Ev.exit121.i
  %.057179.i = phi ptr [ %i.fgl, %_ZN5arrow6StatusD2Ev.exit121.i ], [ %i.fds, %.lr.ph182.split.i ] ; 4 uses
  %i.fdt = load ptr, ptr %i.fcd, align 8, !tbaa !1156, !noalias !1149
  %i.fdu = load ptr, ptr %i.fcc, align 8, !tbaa !1157, !noalias !1149
  %i.fdv = ptrtoint ptr %i.fdt to i64
  %i.fdw = ptrtoint ptr %i.fdu to i64
  %i.fdx = sub i64 %i.fdv, %i.fdw
  %i.fdy = lshr exact i64 %i.fdx, 4
  %i.fdz = trunc i64 %i.fdy to i32
  %.not70175.i = icmp sgt i32 %i.fdz, 0
  br i1 %.not70175.i, label %.lr.ph177.i, label %.critedge82.i1233

.lr.ph177.i:                                      ; preds = %.preheader.i
  %i.fea = getelementptr inbounds nuw i8, ptr %.057179.i, i64 40
  %i.feb = getelementptr inbounds nuw i8, ptr %.057179.i, i64 48
  br label %bb.qr

bb.qr:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit109.i, %.lr.ph177.i
  %indvars.iv186.i = phi i64 [ 0, %.lr.ph177.i ], [ %indvars.iv.next187.i, %_ZN5arrow6StatusD2Ev.exit109.i ] ; 4 uses
  %i.fec = load i8, ptr %i.fea, align 8, !tbaa !326, !range !101, !noalias !1149, !noundef !102
  %i.fed = trunc nuw i8 %i.fec to i1
  br i1 %i.fed, label %bb.qs, label %_ZN5arrow6StatusD2Ev.exit105.i

bb.qs:                                            ; preds = %bb.qr
  %i.fee = load ptr, ptr %i.feb, align 8, !tbaa !1162, !noalias !1149
  %i.fef = getelementptr inbounds nuw [16 x i8], ptr %i.fee, i64 %indvars.iv186.i ; 2 uses
  %i.feg = load ptr, ptr %i.fef, align 8, !tbaa !190, !noalias !1149
  %.not168.i = icmp eq ptr %i.feg, null
  br i1 %.not168.i, label %_ZN5arrow6StatusD2Ev.exit105.i, label %_ZN5arrow6StatusD2Ev.exit111.i

_ZN5arrow6StatusD2Ev.exit105.i:                   ; preds = %bb.qs, %bb.qr
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20, !noalias !1149
  %i.feh = load ptr, ptr %i.fcn, align 8, !tbaa !229, !noalias !1149
  %i.fei = getelementptr inbounds nuw [16 x i8], ptr %i.feh, i64 %indvars.iv186.i
  %i.fej = load ptr, ptr %i.fei, align 8, !tbaa !919, !noalias !1149 ; 2 uses
  %i.fek = load ptr, ptr %i.fej, align 8, !tbaa !93, !noalias !1149
  %i.fel = getelementptr inbounds nuw i8, ptr %i.fek, i64 40
  %i.fem = load ptr, ptr %i.fel, align 8, !noalias !1149
  call void %i.fem(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %26, ptr noundef nonnull align 8 dereferenceable(144) %i.fej), !noalias !1149, !inline_history !1164
  %i.fen = load ptr, ptr %26, align 8, !tbaa !53, !noalias !1149 ; 2 uses
  store ptr %i.fen, ptr %0, align 8, !tbaa !53, !alias.scope !1149
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20, !noalias !1149
  %i.feo = icmp eq ptr %i.fen, null
  br i1 %i.feo, label %_ZN5arrow6StatusD2Ev.exit109.i, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

_ZN5arrow6StatusD2Ev.exit111.i:                   ; preds = %bb.qs
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20, !noalias !1149
  %i.fep = load ptr, ptr %i.fcn, align 8, !tbaa !229, !noalias !1149
  %i.feq = getelementptr inbounds nuw [16 x i8], ptr %i.fep, i64 %indvars.iv186.i
  %107 = load ptr, ptr %i.feq, align 8, !tbaa !919, !noalias !1149 ; 2 uses
  %i.fer = load ptr, ptr %i.fef, align 8, !tbaa !190, !noalias !1149
  %i.fes = load ptr, ptr %107, align 8, !tbaa !93, !noalias !1165
  %i.fet = getelementptr inbounds nuw i8, ptr %i.fes, i64 72
  %i.feu = load ptr, ptr %i.fet, align 8, !noalias !1165
  call void %i.feu(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %27, ptr noundef nonnull align 8 dereferenceable(144) %107, ptr noundef nonnull align 8 dereferenceable(41) %i.fer, i64 noundef 1), !noalias !1149, !inline_history !1168
  %i.fev = load ptr, ptr %27, align 8, !tbaa !53, !noalias !1149 ; 2 uses
  store ptr %i.fev, ptr %0, align 8, !tbaa !53, !alias.scope !1149
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20, !noalias !1149
  %i.few = icmp eq ptr %i.fev, null
  br i1 %i.few, label %_ZN5arrow6StatusD2Ev.exit109.i, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

_ZN5arrow6StatusD2Ev.exit109.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit111.i, %_ZN5arrow6StatusD2Ev.exit105.i
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 2 uses
  %i.fex = load ptr, ptr %i.fcd, align 8, !tbaa !1156, !noalias !1149
  %i.fey = load ptr, ptr %i.fcc, align 8, !tbaa !1157, !noalias !1149
  %i.fez = ptrtoint ptr %i.fex to i64
  %i.ffa = ptrtoint ptr %i.fey to i64
  %i.ffb = sub i64 %i.fez, %i.ffa
  %sext202.i = shl i64 %i.ffb, 28
  %i.ffc = ashr i64 %sext202.i, 32
  %.not70.i1244 = icmp slt i64 %indvars.iv.next187.i, %i.ffc
  br i1 %.not70.i1244, label %bb.qr, label %.critedge82.i1233, !llvm.loop !1169

.critedge82.i1233:                                ; preds = %_ZN5arrow6StatusD2Ev.exit109.i, %.preheader.i
  %i.ffd = getelementptr inbounds nuw i8, ptr %.057179.i, i64 40
  %i.ffe = load i8, ptr %i.ffd, align 8, !tbaa !326, !range !101, !noalias !1149, !noundef !102 ; 2 uses
  %i.fff = trunc nuw i8 %i.ffe to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20, !noalias !1170
  %i.ffg = load i64, ptr %i.fbq, align 8, !tbaa !107, !noalias !1173 ; 2 uses
  %i.ffh = load ptr, ptr %i.fbf, align 8, !tbaa !93, !noalias !1173
  %i.ffi = getelementptr inbounds nuw i8, ptr %i.ffh, i64 16
  %i.ffj = load ptr, ptr %i.ffi, align 8, !noalias !1173
  %i.ffk = call noundef i64 %i.ffj(ptr noundef nonnull align 8 dereferenceable(160) %i.fbf), !noalias !1173, !inline_history !1176 ; 2 uses
  %.not.i.not.i.i1234 = icmp slt i64 %i.ffk, %i.ffg
  br i1 %.not.i.not.i.i1234, label %_ZN5arrow6StatusD2Ev.exit10.thread.i.i1243, label %_ZN5arrow6StatusD2Ev.exit.i.i1235

_ZN5arrow6StatusD2Ev.exit10.thread.i.i1243:       ; preds = %.critedge82.i1233
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !1170
  br label %bb.qt

_ZN5arrow6StatusD2Ev.exit.i.i1235:                ; preds = %.critedge82.i1233
  %i.ffl = add nsw i64 %i.ffk, 1
  %i.ffm = shl nsw i64 %i.ffg, 1
  %.sroa.speculated.i.i.i.i1236 = call noundef i64 @llvm.smax.i64(i64 %i.ffl, i64 %i.ffm)
  %i.ffn = load ptr, ptr %i.fbf, align 8, !tbaa !93, !noalias !1173
  %i.ffo = getelementptr inbounds nuw i8, ptr %i.ffn, i64 24
  %i.ffp = load ptr, ptr %i.ffo, align 8, !noalias !1173
  call void %i.ffp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %23, ptr noundef nonnull align 8 dereferenceable(160) %i.fbf, i64 noundef %.sroa.speculated.i.i.i.i1236), !noalias !1170, !inline_history !1176
  %.pr.i.i1237 = load ptr, ptr %23, align 8, !tbaa !53, !noalias !1170 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !1170
  %i.ffq = icmp eq ptr %.pr.i.i1237, null
  br i1 %i.ffq, label %bb.qt, label %.critedge.sink.split.i

bb.qt:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i1235, %_ZN5arrow6StatusD2Ev.exit10.thread.i.i1243
  %i.ffr = load ptr, ptr %i.fco, align 8, !tbaa !124, !noalias !1170
  %i.ffs = load i64, ptr %i.fcp, align 8, !tbaa !125, !noalias !1170 ; 2 uses
  %.neg.i.i.i.i.i1238 = sub nsw i8 0, %i.ffe
  %i.fft = sdiv i64 %i.ffs, 8
  %i.ffu = getelementptr inbounds i8, ptr %i.ffr, i64 %i.fft ; 2 uses
  %i.ffv = load i8, ptr %i.ffu, align 1, !tbaa !52, !noalias !1170 ; 2 uses
  %i.ffw = xor i8 %i.ffv, %.neg.i.i.i.i.i1238
  %i.ffx = srem i64 %i.ffs, 8
  %i.ffy = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ffx
  %i.ffz = load i8, ptr %i.ffy, align 1, !tbaa !52, !noalias !1170
  %i.fga = and i8 %i.ffw, %i.ffz
  %i.fgb = xor i8 %i.fga, %i.ffv
  store i8 %i.fgb, ptr %i.ffu, align 1, !tbaa !52, !noalias !1170
  br i1 %i.fff, label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEb.exit.thread.i.i.i, label %bb.qu

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEb.exit.thread.i.i.i: ; preds = %bb.qt
  %i.fgc = load i64, ptr %i.fcp, align 8, !tbaa !125, !noalias !1170
  br label %_ZN5arrow6StatusD2Ev.exit121.i

bb.qu:                                            ; preds = %bb.qt
  %i.fgd = load i64, ptr %i.fcq, align 8, !tbaa !126, !noalias !1170
  %i.fge = add nsw i64 %i.fgd, 1
  store i64 %i.fge, ptr %i.fcq, align 8, !tbaa !126, !noalias !1170
  %i.fgf = load i64, ptr %i.fcp, align 8, !tbaa !125, !noalias !1170
  %i.fgg = load i64, ptr %i.fcr, align 8, !tbaa !127, !noalias !1170
  %i.fgh = add nsw i64 %i.fgg, 1
  store i64 %i.fgh, ptr %i.fcr, align 8, !tbaa !127, !noalias !1170
  br label %_ZN5arrow6StatusD2Ev.exit121.i

_ZN5arrow6StatusD2Ev.exit121.i:                   ; preds = %bb.qu, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEb.exit.thread.i.i.i
  %.sink.in.i.i = phi i64 [ %i.fgc, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEb.exit.thread.i.i.i ], [ %i.fgf, %bb.qu ]
  %.sink4.i.i.i = phi i64 [ 104, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEb.exit.thread.i.i.i ], [ 96, %bb.qu ]
  %.sink.i.i1239 = add nsw i64 %.sink.in.i.i, 1
  store i64 %.sink.i.i1239, ptr %i.fcp, align 8, !tbaa !125, !noalias !1170
  %i.fgi = getelementptr inbounds nuw i8, ptr %i.fbf, i64 %.sink4.i.i.i ; 2 uses
  %i.fgj = load i64, ptr %i.fgi, align 8, !tbaa !128, !noalias !1170
  %i.fgk = add nsw i64 %i.fgj, 1
  store i64 %i.fgk, ptr %i.fgi, align 8, !tbaa !128, !noalias !1170
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !1149
  %i.fgl = getelementptr inbounds nuw i8, ptr %.057179.i, i64 48 ; 3 uses
  %i.fgm = load ptr, ptr %i.fbi, align 8, !tbaa !178, !noalias !1149
  %.not68.i = icmp eq ptr %i.fgl, %i.fgm
  br i1 %.not68.i, label %.critedge87.loopexit.i1240, label %.preheader.i, !llvm.loop !1177

.critedge87.loopexit.i1240:                       ; preds = %_ZN5arrow6StatusD2Ev.exit121.i
  %.pre.i1241 = load i64, ptr %i.fbg, align 8, !tbaa !179, !noalias !1149
  br label %.critedge87.i1242

.critedge87.i1242:                                ; preds = %.critedge87.loopexit.i1240, %.lr.ph182.split.i
  %i.fgn = phi i64 [ %.pre.i1241, %.critedge87.loopexit.i1240 ], [ %i.fdq, %.lr.ph182.split.i ] ; 2 uses
  %i.fgo = phi ptr [ %i.fgl, %.critedge87.loopexit.i1240 ], [ %i.fdr, %.lr.ph182.split.i ]
  %i.fgp = add nuw nsw i64 %.058181.i, 1          ; 2 uses
  %.not74.i = icmp slt i64 %i.fgp, %i.fgn
  br i1 %.not74.i, label %.lr.ph182.split.i, label %.critedge.sink.split.i, !llvm.loop !1178

.critedge.sink.split.i:                           ; preds = %.critedge87.i1242, %_ZN5arrow6StatusD2Ev.exit.i.i1235, %.lr.ph182.i, %.critedge77.preheader.i
  %.pr.i.lcssa.sink.i = phi ptr [ null, %.critedge77.preheader.i ], [ %.pr.i.i1237, %_ZN5arrow6StatusD2Ev.exit.i.i1235 ], [ null, %.lr.ph182.i ], [ null, %.critedge87.i1242 ]
  store ptr %.pr.i.lcssa.sink.i, ptr %0, align 8, !tbaa !53, !alias.scope !1149
  br label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

bb.qv:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %i.fgq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fgr = load ptr, ptr %i.fgq, align 8, !tbaa !315, !noalias !1185 ; 11 uses
  %i.fgs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.fgt = load i64, ptr %i.fgs, align 8, !tbaa !179, !noalias !1185
  %i.fgu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.fgv = load ptr, ptr %i.fgu, align 8, !tbaa !178, !noalias !1185
  %i.fgw = load ptr, ptr %2, align 8, !tbaa !174, !noalias !1185
  %i.fgx = ptrtoint ptr %i.fgv to i64
  %i.fgy = ptrtoint ptr %i.fgw to i64
  %i.fgz = sub i64 %i.fgx, %i.fgy
  %i.fha = sdiv exact i64 %i.fgz, 48
  %i.fhb = mul nsw i64 %i.fha, %i.fgt             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !1185
  %i.fhc = getelementptr inbounds nuw i8, ptr %i.fgr, i64 112
  %i.fhd = load i64, ptr %i.fhc, align 8, !tbaa !107, !noalias !1186 ; 2 uses
  %i.fhe = load ptr, ptr %i.fgr, align 8, !tbaa !93, !noalias !1186
  %i.fhf = getelementptr inbounds nuw i8, ptr %i.fhe, i64 16
  %i.fhg = load ptr, ptr %i.fhf, align 8, !noalias !1186
  %i.fhh = tail call noundef i64 %i.fhg(ptr noundef nonnull align 8 dereferenceable(144) %i.fgr), !noalias !1186, !inline_history !1189
  %i.fhi = add nsw i64 %i.fhh, %i.fhb             ; 2 uses
  %.not.i.i.i1251 = icmp sgt i64 %i.fhi, %i.fhd
  br i1 %.not.i.i.i1251, label %_ZN5arrow6StatusD2Ev.exit.i.i1257, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i1252

_ZN5arrow6StatusD2Ev.exit.thread.i.i1252:         ; preds = %bb.qv
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !1185
  br label %_ZN5arrow6StatusD2Ev.exit54.i.i

_ZN5arrow6StatusD2Ev.exit.i.i1257:                ; preds = %bb.qv
  %i.fhj = shl nsw i64 %i.fhd, 1
  %.sroa.speculated.i.i.i.i1258 = tail call noundef i64 @llvm.smax.i64(i64 %i.fhi, i64 %i.fhj)
  %i.fhk = load ptr, ptr %i.fgr, align 8, !tbaa !93, !noalias !1186
  %i.fhl = getelementptr inbounds nuw i8, ptr %i.fhk, i64 24
  %i.fhm = load ptr, ptr %i.fhl, align 8, !noalias !1186
  call void %i.fhm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %21, ptr noundef nonnull align 8 dereferenceable(144) %i.fgr, i64 noundef %.sroa.speculated.i.i.i.i1258), !noalias !1185, !inline_history !1189
  %.pr.i.i1259 = load ptr, ptr %21, align 8, !tbaa !53, !noalias !1185 ; 2 uses
  store ptr %.pr.i.i1259, ptr %0, align 8, !tbaa !53, !alias.scope !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !1185
  %i.fhn = icmp eq ptr %.pr.i.i1259, null
  br i1 %i.fhn, label %_ZN5arrow6StatusD2Ev.exit54.i.i, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplIPKNS_6ScalarEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKS9_.exit

_ZN5arrow6StatusD2Ev.exit54.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i1257, %_ZN5arrow6StatusD2Ev.exit.thread.i.i1252
  %i.fho = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.fhp = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.fhq = load ptr, ptr %i.fhp, align 8, !tbaa !1156, !noalias !1185
  %i.fhr = load ptr, ptr %i.fho, align 8, !tbaa !1157, !noalias !1185
  %i.fhs = ptrtoint ptr %i.fhq to i64
  %i.fht = ptrtoint ptr %i.fhr to i64
  %i.fhu = sub i64 %i.fhs, %i.fht
  %i.fhv = lshr exact i64 %i.fhu, 4
  %i.fhw = trunc i64 %i.fhv to i32
  %.not89.i.i = icmp sgt i32 %i.fhw, 0
  br i1 %.not89.i.i, label %.lr.ph.i.i1254, label %.critedge44.preheader.i.i

.lr.ph.i.i1254:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit54.i.i
  %i.fhx = getelementptr inbounds nuw i8, ptr %i.fgr, i64 120
  br label %bb.qw

.critedge44.preheader.i.i:                        ; preds = %_ZN5arrow6StatusD2Ev.exit63.i.i, %_ZN5arrow6StatusD2Ev.exit54.i.i
  %i.fhy = load i64, ptr %i.fgs, align 8, !tbaa !179, !noalias !1185 ; 2 uses
  %.not4194.i.i = icmp sgt i64 %i.fhy, 0
  br i1 %.not4194.i.i, label %.lr.ph96.i.i, label %.critedge.sink.split.i.i

.lr.ph96.i.i:                                     ; preds = %.critedge44.preheader.i.i
  %i.fhz = getelementptr inbounds nuw i8, ptr %i.fgr, i64 296 ; 4 uses
  %i.fia = getelementptr inbounds nuw i8, ptr %i.fgr, i64 288
  %i.fib = getelementptr inbounds nuw i8, ptr %i.fgr, i64 256
  %i.fic = getelementptr inbounds nuw i8, ptr %i.fgr, i64 280
  %i.fid = getelementptr inbounds nuw i8, ptr %i.fgr, i64 120
  %i.fie = load ptr, ptr %2, align 8, !tbaa !174, !noalias !1185
  %i.fif = load ptr, ptr %i.fgu, align 8, !tbaa !178, !noalias !1185 ; 2 uses
  %i.fig = icmp eq ptr %i.fie, %i.fif
  br i1 %i.fig, label %.critedge.sink.split.i.i, label %.lr.ph96.split.i.i

bb.qw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit63.i.i, %.lr.ph.i.i1254
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i1254 ], [ %indvars.iv.next.i.i, %_ZN5arrow6StatusD2Ev.exit63.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20, !noalias !1185
  %i.fih = load ptr, ptr %i.fhx, align 8, !tbaa !229, !noalias !1185
  %i.fii = getelementptr inbounds nuw [16 x i8], ptr %i.fih, i64 %indvars.iv.i.i
  %i.fij = load ptr, ptr %i.fii, align 8, !tbaa !919, !noalias !1185 ; 5 uses
  %i.fik = getelementptr inbounds nuw i8, ptr %i.fij, i64 112
  %i.fil = load i64, ptr %i.fik, align 8, !tbaa !107, !noalias !1190 ; 2 uses
  %i.fim = load ptr, ptr %i.fij, align 8, !tbaa !93, !noalias !1190
  %i.fin = getelementptr inbounds nuw i8, ptr %i.fim, i64 16
  %i.fio = load ptr, ptr %i.fin, align 8, !noalias !1190
  %i.fip = call noundef i64 %i.fio(ptr noundef nonnull align 8 dereferenceable(144) %i.fij), !noalias !1190, !inline_history !1189
  %i.fiq = add nsw i64 %i.fip, %i.fhb             ; 2 uses
  %.not.i55.i.i = icmp sgt i64 %i.fiq, %i.fil
  br i1 %.not.i55.i.i, label %_ZN5arrow6StatusD2Ev.exit59.i.i, label %_ZN5arrow6StatusD2Ev.exit59.thread.i.i
end_hunk_0
begin_hunk_1_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_116AppendScalarImplINS1_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS8_SaIS8_EEEEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %i.erg = trunc nuw i8 %i.erf to i1
  br i1 %i.erg, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit126.i1404, label %bb.sa

bb.sa:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i118.i1403
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %30) #20, !noalias !2033
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit126.i1404

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit126.i1404: ; preds = %bb.sa, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i118.i1403, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i123.i1409, %bb.rt
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20, !noalias !2033
  br label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

_ZN5arrow6StatusD2Ev.exit128.i1371:               ; preds = %.lr.ph21.i1368
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20, !noalias !2033
  %i.erh = load ptr, ptr %i.ekd, align 8, !tbaa !201, !noalias !2033 ; 2 uses
  %i.eri = load ptr, ptr %i.erh, align 8, !tbaa !93, !noalias !2033
  %i.erj = getelementptr inbounds nuw i8, ptr %i.eri, i64 40
  %i.erk = load ptr, ptr %i.erj, align 8, !noalias !2033
  call void %i.erk(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %33, ptr noundef nonnull align 8 dereferenceable(144) %i.erh), !noalias !2033, !inline_history !2056
  %i.erl = load ptr, ptr %33, align 8, !tbaa !53, !noalias !2033 ; 2 uses
  store ptr %i.erl, ptr %0, align 8, !tbaa !53, !alias.scope !2033
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20, !noalias !2033
  %i.erm = icmp eq ptr %i.erl, null
  br i1 %i.erm, label %.critedge72.i1372, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

.critedge72.i1372:                                ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i1426, %_ZN5arrow6StatusD2Ev.exit128.i1371, %_ZN5arrow6StatusD2Ev.exit96.preheader.i1381
  %i.ern = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i1369, i64 16 ; 3 uses
  %.val81.i1373 = load ptr, ptr %i.ekh, align 8, !tbaa !185, !noalias !2033
  %.not7.i1374 = icmp eq ptr %i.ern, %.val81.i1373
  br i1 %.not7.i1374, label %.critedge75.loopexit.i1375, label %.lr.ph21.i1368, !llvm.loop !2057

.critedge75.loopexit.i1375:                       ; preds = %.critedge72.i1372
  %.pre.i1376 = load i64, ptr %i.ekk, align 8, !tbaa !197, !noalias !2033
  br label %.critedge75.i1377

.critedge75.i1377:                                ; preds = %.critedge75.loopexit.i1375, %bb.qf
  %i.ero = phi i64 [ %.pre.i1376, %.critedge75.loopexit.i1375 ], [ %i.elo, %bb.qf ] ; 2 uses
  %.val811725.i1378 = phi ptr [ %i.ern, %.critedge75.loopexit.i1375 ], [ %.val8117.i1365, %bb.qf ]
  %i.erp = add nuw nsw i64 %.04423.i1366, 1       ; 2 uses
  %.not66.i1379 = icmp slt i64 %i.erp, %i.ero
  br i1 %.not66.i1379, label %bb.qf, label %.critedge77.i1362, !llvm.loop !2058

.critedge77.i1362:                                ; preds = %.critedge75.i1377, %_ZN5arrow6StatusD2Ev.exit90.i1360
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !2059
  br label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

bb.sb:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2062)
  %i.erq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.err = load ptr, ptr %i.erq, align 8, !tbaa !315, !noalias !2062 ; 16 uses
  %i.ers = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ert = load i64, ptr %i.ers, align 8, !tbaa !197, !noalias !2062
  %i.eru = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.eru, align 8, !tbaa !185, !noalias !2062
  %.val85.i = load ptr, ptr %2, align 8, !tbaa !185, !noalias !2062
  %i.erv = ptrtoint ptr %.val.i to i64
  %i.erw = ptrtoint ptr %.val85.i to i64
  %i.erx = sub i64 %i.erv, %i.erw
  %i.ery = ashr exact i64 %i.erx, 4
  %i.erz = mul nsw i64 %i.ery, %i.ert             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20, !noalias !2062
  %i.esa = getelementptr inbounds nuw i8, ptr %i.err, i64 112 ; 2 uses
  %i.esb = load i64, ptr %i.esa, align 8, !tbaa !107, !noalias !2065 ; 2 uses
  %i.esc = load ptr, ptr %i.err, align 8, !tbaa !93, !noalias !2065
  %i.esd = getelementptr inbounds nuw i8, ptr %i.esc, i64 16
  %i.ese = load ptr, ptr %i.esd, align 8, !noalias !2065
  %i.esf = tail call noundef i64 %i.ese(ptr noundef nonnull align 8 dereferenceable(144) %i.err), !noalias !2065, !inline_history !2068
  %i.esg = add nsw i64 %i.esf, %i.erz             ; 2 uses
  %.not.i.i1439 = icmp sgt i64 %i.esg, %i.esb
  br i1 %.not.i.i1439, label %_ZN5arrow6StatusD2Ev.exit.i1455, label %_ZN5arrow6StatusD2Ev.exit.thread.i1440

_ZN5arrow6StatusD2Ev.exit.thread.i1440:           ; preds = %bb.sb
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !2062
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !2062
  br label %_ZN5arrow6StatusD2Ev.exit93.i1441

_ZN5arrow6StatusD2Ev.exit.i1455:                  ; preds = %bb.sb
  %i.esh = shl nsw i64 %i.esb, 1
  %.sroa.speculated.i.i.i1456 = tail call noundef i64 @llvm.smax.i64(i64 %i.esg, i64 %i.esh)
  %i.esi = load ptr, ptr %i.err, align 8, !tbaa !93, !noalias !2065
  %i.esj = getelementptr inbounds nuw i8, ptr %i.esi, i64 24
  %i.esk = load ptr, ptr %i.esj, align 8, !noalias !2065
  call void %i.esk(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %24, ptr noundef nonnull align 8 dereferenceable(144) %i.err, i64 noundef %.sroa.speculated.i.i.i1456), !noalias !2062, !inline_history !2068
  %.pr.i1457 = load ptr, ptr %24, align 8, !tbaa !53, !noalias !2062 ; 2 uses
  store ptr %.pr.i1457, ptr %0, align 8, !tbaa !53, !alias.scope !2062
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !2062
  %i.esl = icmp eq ptr %.pr.i1457, null
  br i1 %i.esl, label %_ZN5arrow6StatusD2Ev.exit93.i1441, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

_ZN5arrow6StatusD2Ev.exit93.i1441:                ; preds = %_ZN5arrow6StatusD2Ev.exit.i1455, %_ZN5arrow6StatusD2Ev.exit.thread.i1440
  %i.esm = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.esn = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.eso = load ptr, ptr %i.esn, align 8, !tbaa !1156, !noalias !2062
  %i.esp = load ptr, ptr %i.esm, align 8, !tbaa !1157, !noalias !2062
  %i.esq = ptrtoint ptr %i.eso to i64
  %i.esr = ptrtoint ptr %i.esp to i64
  %i.ess = sub i64 %i.esq, %i.esr
  %i.est = lshr exact i64 %i.ess, 4
  %i.esu = trunc i64 %i.est to i32
  %.not173.i = icmp sgt i32 %i.esu, 0
  br i1 %.not173.i, label %.lr.ph.i1451, label %.critedge72.preheader.i

.lr.ph.i1451:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit93.i1441
  %i.esv = getelementptr inbounds nuw i8, ptr %i.err, i64 120
  br label %bb.sc

.critedge72.preheader.i:                          ; preds = %_ZN5arrow6StatusD2Ev.exit102.i1452, %_ZN5arrow6StatusD2Ev.exit93.i1441
  %i.esw = load i64, ptr %i.ers, align 8, !tbaa !197, !noalias !2062 ; 2 uses
  %.not69182.i = icmp sgt i64 %i.esw, 0
  br i1 %.not69182.i, label %.lr.ph184.i, label %.critedge.sink.split.i

.lr.ph184.i:                                      ; preds = %.critedge72.preheader.i
  %i.esx = getelementptr inbounds nuw i8, ptr %i.err, i64 120 ; 2 uses
  %i.esy = getelementptr inbounds nuw i8, ptr %i.err, i64 48
  %i.esz = getelementptr inbounds nuw i8, ptr %i.err, i64 80 ; 4 uses
  %i.eta = getelementptr inbounds nuw i8, ptr %i.err, i64 88 ; 2 uses
  %i.etb = getelementptr inbounds nuw i8, ptr %i.err, i64 104 ; 2 uses
  %.val87178.pre.i = load ptr, ptr %i.eru, align 8, !tbaa !185, !noalias !2062
  br label %bb.sd

bb.sc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit102.i1452, %.lr.ph.i1451
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i1451 ], [ %indvars.iv.next.i, %_ZN5arrow6StatusD2Ev.exit102.i1452 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20, !noalias !2062
  %i.etc = load ptr, ptr %i.esv, align 8, !tbaa !229, !noalias !2062
  %i.etd = getelementptr inbounds nuw [16 x i8], ptr %i.etc, i64 %indvars.iv.i
  %i.ete = load ptr, ptr %i.etd, align 8, !tbaa !919, !noalias !2062 ; 5 uses
  %i.etf = getelementptr inbounds nuw i8, ptr %i.ete, i64 112
  %i.etg = load i64, ptr %i.etf, align 8, !tbaa !107, !noalias !2069 ; 2 uses
  %i.eth = load ptr, ptr %i.ete, align 8, !tbaa !93, !noalias !2069
  %i.eti = getelementptr inbounds nuw i8, ptr %i.eth, i64 16
  %i.etj = load ptr, ptr %i.eti, align 8, !noalias !2069
  %i.etk = call noundef i64 %i.etj(ptr noundef nonnull align 8 dereferenceable(144) %i.ete), !noalias !2069, !inline_history !2068
  %i.etl = add nsw i64 %i.etk, %i.erz             ; 2 uses
  %.not.i94.i = icmp sgt i64 %i.etl, %i.etg
  br i1 %.not.i94.i, label %_ZN5arrow6StatusD2Ev.exit98.i1454, label %_ZN5arrow6StatusD2Ev.exit98.thread.i

_ZN5arrow6StatusD2Ev.exit98.thread.i:             ; preds = %bb.sc
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !2062
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20, !noalias !2062
  br label %_ZN5arrow6StatusD2Ev.exit102.i1452

_ZN5arrow6StatusD2Ev.exit98.i1454:                ; preds = %bb.sc
  %i.etm = shl nsw i64 %i.etg, 1
  %.sroa.speculated.i.i95.i = call noundef i64 @llvm.smax.i64(i64 %i.etl, i64 %i.etm)
  %i.etn = load ptr, ptr %i.ete, align 8, !tbaa !93, !noalias !2069
  %i.eto = getelementptr inbounds nuw i8, ptr %i.etn, i64 24
  %i.etp = load ptr, ptr %i.eto, align 8, !noalias !2069
  call void %i.etp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %25, ptr noundef nonnull align 8 dereferenceable(144) %i.ete, i64 noundef %.sroa.speculated.i.i95.i), !noalias !2062, !inline_history !2068
  %.pr166.i = load ptr, ptr %25, align 8, !tbaa !53, !noalias !2062 ; 2 uses
  store ptr %.pr166.i, ptr %0, align 8, !tbaa !53, !alias.scope !2062
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20, !noalias !2062
  %i.etq = icmp eq ptr %.pr166.i, null
  br i1 %i.etq, label %_ZN5arrow6StatusD2Ev.exit102.i1452, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

_ZN5arrow6StatusD2Ev.exit102.i1452:               ; preds = %_ZN5arrow6StatusD2Ev.exit98.i1454, %_ZN5arrow6StatusD2Ev.exit98.thread.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.etr = load ptr, ptr %i.esn, align 8, !tbaa !1156, !noalias !2062
  %i.ets = load ptr, ptr %i.esm, align 8, !tbaa !1157, !noalias !2062
  %i.ett = ptrtoint ptr %i.etr to i64
  %i.etu = ptrtoint ptr %i.ets to i64
  %i.etv = sub i64 %i.ett, %i.etu
  %sext.i = shl i64 %i.etv, 28
  %i.etw = ashr i64 %sext.i, 32
  %.not.i1453 = icmp slt i64 %indvars.iv.next.i, %i.etw
  br i1 %.not.i1453, label %bb.sc, label %.critedge72.preheader.i, !llvm.loop !2072

bb.sd:                                            ; preds = %.critedge82.i, %.lr.ph184.i
  %i.etx = phi i64 [ %i.esw, %.lr.ph184.i ], [ %i.ewt, %.critedge82.i ]
  %.val87178.i = phi ptr [ %.val87178.pre.i, %.lr.ph184.i ], [ %.val87178190.i, %.critedge82.i ] ; 2 uses
  %.054183.i = phi i64 [ 0, %.lr.ph184.i ], [ %i.ewu, %.critedge82.i ]
  %i.ety = load i64, ptr %2, align 8, !tbaa !185, !noalias !2062
  %i.etz = inttoptr i64 %i.ety to ptr             ; 2 uses
  %.not167179.i = icmp eq ptr %.val87178.i, %i.etz
  br i1 %.not167179.i, label %.critedge82.i, label %.lr.ph181.i

.lr.ph181.i:                                      ; preds = %bb.sd, %_ZN5arrow6StatusD2Ev.exit120.i
  %.sroa.0.0180.i = phi ptr [ %i.ews, %_ZN5arrow6StatusD2Ev.exit120.i ], [ %i.etz, %bb.sd ] ; 2 uses
  %.val88.val.i = load ptr, ptr %.sroa.0.0180.i, align 8, !tbaa !190, !noalias !2062 ; 3 uses
  %i.eua = load ptr, ptr %i.esn, align 8, !tbaa !1156, !noalias !2062
  %i.eub = load ptr, ptr %i.esm, align 8, !tbaa !1157, !noalias !2062
  %i.euc = ptrtoint ptr %i.eua to i64
  %i.eud = ptrtoint ptr %i.eub to i64
  %i.eue = sub i64 %i.euc, %i.eud
  %i.euf = lshr exact i64 %i.eue, 4
  %i.eug = trunc i64 %i.euf to i32
  %.not65175.i = icmp sgt i32 %i.eug, 0
  br i1 %.not65175.i, label %.lr.ph177.i, label %.critedge77.i1442

.lr.ph177.i:                                      ; preds = %.lr.ph181.i
  %i.euh = getelementptr inbounds nuw i8, ptr %.val88.val.i, i64 40
  %i.eui = getelementptr inbounds nuw i8, ptr %.val88.val.i, i64 48
  br label %bb.se

bb.se:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit108.i, %.lr.ph177.i
  %indvars.iv187.i = phi i64 [ 0, %.lr.ph177.i ], [ %indvars.iv.next188.i, %_ZN5arrow6StatusD2Ev.exit108.i ] ; 4 uses
  %i.euj = load i8, ptr %i.euh, align 8, !tbaa !326, !range !101, !noalias !2062, !noundef !102
  %i.euk = trunc nuw i8 %i.euj to i1
  br i1 %i.euk, label %bb.sf, label %_ZN5arrow6StatusD2Ev.exit104.i

bb.sf:                                            ; preds = %bb.se
  %i.eul = load ptr, ptr %i.eui, align 8, !tbaa !1162, !noalias !2062
  %i.eum = getelementptr inbounds nuw [16 x i8], ptr %i.eul, i64 %indvars.iv187.i ; 2 uses
  %i.eun = load ptr, ptr %i.eum, align 8, !tbaa !190, !noalias !2062
  %.not168.i = icmp eq ptr %i.eun, null
  br i1 %.not168.i, label %_ZN5arrow6StatusD2Ev.exit104.i, label %_ZN5arrow6StatusD2Ev.exit110.i

_ZN5arrow6StatusD2Ev.exit104.i:                   ; preds = %bb.sf, %bb.se
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20, !noalias !2062
  %i.euo = load ptr, ptr %i.esx, align 8, !tbaa !229, !noalias !2062
  %i.eup = getelementptr inbounds nuw [16 x i8], ptr %i.euo, i64 %indvars.iv187.i
  %i.euq = load ptr, ptr %i.eup, align 8, !tbaa !919, !noalias !2062 ; 2 uses
  %i.eur = load ptr, ptr %i.euq, align 8, !tbaa !93, !noalias !2062
  %i.eus = getelementptr inbounds nuw i8, ptr %i.eur, i64 40
  %i.eut = load ptr, ptr %i.eus, align 8, !noalias !2062
  call void %i.eut(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %26, ptr noundef nonnull align 8 dereferenceable(144) %i.euq), !noalias !2062, !inline_history !2073
  %i.euu = load ptr, ptr %26, align 8, !tbaa !53, !noalias !2062 ; 2 uses
  store ptr %i.euu, ptr %0, align 8, !tbaa !53, !alias.scope !2062
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20, !noalias !2062
  %i.euv = icmp eq ptr %i.euu, null
  br i1 %i.euv, label %_ZN5arrow6StatusD2Ev.exit108.i, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

_ZN5arrow6StatusD2Ev.exit110.i:                   ; preds = %bb.sf
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20, !noalias !2062
  %i.euw = load ptr, ptr %i.esx, align 8, !tbaa !229, !noalias !2062
  %i.eux = getelementptr inbounds nuw [16 x i8], ptr %i.euw, i64 %indvars.iv187.i
  %107 = load ptr, ptr %i.eux, align 8, !tbaa !919, !noalias !2062 ; 2 uses
  %i.euy = load ptr, ptr %i.eum, align 8, !tbaa !190, !noalias !2062
  %i.euz = load ptr, ptr %107, align 8, !tbaa !93, !noalias !2074
  %i.eva = getelementptr inbounds nuw i8, ptr %i.euz, i64 72
  %i.evb = load ptr, ptr %i.eva, align 8, !noalias !2074
  call void %i.evb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %27, ptr noundef nonnull align 8 dereferenceable(144) %107, ptr noundef nonnull align 8 dereferenceable(41) %i.euy, i64 noundef 1), !noalias !2062, !inline_history !2077
  %i.evc = load ptr, ptr %27, align 8, !tbaa !53, !noalias !2062 ; 2 uses
  store ptr %i.evc, ptr %0, align 8, !tbaa !53, !alias.scope !2062
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20, !noalias !2062
  %i.evd = icmp eq ptr %i.evc, null
  br i1 %i.evd, label %_ZN5arrow6StatusD2Ev.exit108.i, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

_ZN5arrow6StatusD2Ev.exit108.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit110.i, %_ZN5arrow6StatusD2Ev.exit104.i
  %indvars.iv.next188.i = add nuw nsw i64 %indvars.iv187.i, 1 ; 2 uses
  %i.eve = load ptr, ptr %i.esn, align 8, !tbaa !1156, !noalias !2062
  %i.evf = load ptr, ptr %i.esm, align 8, !tbaa !1157, !noalias !2062
  %i.evg = ptrtoint ptr %i.eve to i64
  %i.evh = ptrtoint ptr %i.evf to i64
  %i.evi = sub i64 %i.evg, %i.evh
  %sext203.i = shl i64 %i.evi, 28
  %i.evj = ashr i64 %sext203.i, 32
  %.not65.i = icmp slt i64 %indvars.iv.next188.i, %i.evj
  br i1 %.not65.i, label %bb.se, label %.critedge77.i1442, !llvm.loop !2078

.critedge77.i1442:                                ; preds = %_ZN5arrow6StatusD2Ev.exit108.i, %.lr.ph181.i
  %i.evk = getelementptr inbounds nuw i8, ptr %.val88.val.i, i64 40
  %i.evl = load i8, ptr %i.evk, align 8, !tbaa !326, !range !101, !noalias !2062, !noundef !102 ; 2 uses
  %i.evm = trunc nuw i8 %i.evl to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20, !noalias !2079
  %i.evn = load i64, ptr %i.esa, align 8, !tbaa !107, !noalias !2082 ; 2 uses
  %i.evo = load ptr, ptr %i.err, align 8, !tbaa !93, !noalias !2082
  %i.evp = getelementptr inbounds nuw i8, ptr %i.evo, i64 16
  %i.evq = load ptr, ptr %i.evp, align 8, !noalias !2082
  %i.evr = call noundef i64 %i.evq(ptr noundef nonnull align 8 dereferenceable(160) %i.err), !noalias !2082, !inline_history !2085 ; 2 uses
  %.not.i.not.i.i1443 = icmp slt i64 %i.evr, %i.evn
  br i1 %.not.i.not.i.i1443, label %_ZN5arrow6StatusD2Ev.exit10.thread.i.i1450, label %_ZN5arrow6StatusD2Ev.exit.i.i1444

_ZN5arrow6StatusD2Ev.exit10.thread.i.i1450:       ; preds = %.critedge77.i1442
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !2079
  br label %bb.sg

_ZN5arrow6StatusD2Ev.exit.i.i1444:                ; preds = %.critedge77.i1442
  %i.evs = add nsw i64 %i.evr, 1
  %i.evt = shl nsw i64 %i.evn, 1
  %.sroa.speculated.i.i.i.i1445 = call noundef i64 @llvm.smax.i64(i64 %i.evs, i64 %i.evt)
  %i.evu = load ptr, ptr %i.err, align 8, !tbaa !93, !noalias !2082
  %i.evv = getelementptr inbounds nuw i8, ptr %i.evu, i64 24
  %i.evw = load ptr, ptr %i.evv, align 8, !noalias !2082
  call void %i.evw(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %23, ptr noundef nonnull align 8 dereferenceable(160) %i.err, i64 noundef %.sroa.speculated.i.i.i.i1445), !noalias !2079, !inline_history !2085
  %.pr.i.i1446 = load ptr, ptr %23, align 8, !tbaa !53, !noalias !2079 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !2079
  %i.evx = icmp eq ptr %.pr.i.i1446, null
  br i1 %i.evx, label %bb.sg, label %.critedge.sink.split.i

bb.sg:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i1444, %_ZN5arrow6StatusD2Ev.exit10.thread.i.i1450
  %i.evy = load ptr, ptr %i.esy, align 8, !tbaa !124, !noalias !2079
  %i.evz = load i64, ptr %i.esz, align 8, !tbaa !125, !noalias !2079 ; 2 uses
  %.neg.i.i.i.i.i1447 = sub nsw i8 0, %i.evl
  %i.ewa = sdiv i64 %i.evz, 8
  %i.ewb = getelementptr inbounds i8, ptr %i.evy, i64 %i.ewa ; 2 uses
  %i.ewc = load i8, ptr %i.ewb, align 1, !tbaa !52, !noalias !2079 ; 2 uses
  %i.ewd = xor i8 %i.ewc, %.neg.i.i.i.i.i1447
  %i.ewe = srem i64 %i.evz, 8
  %i.ewf = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ewe
  %i.ewg = load i8, ptr %i.ewf, align 1, !tbaa !52, !noalias !2079
  %i.ewh = and i8 %i.ewd, %i.ewg
  %i.ewi = xor i8 %i.ewh, %i.ewc
  store i8 %i.ewi, ptr %i.ewb, align 1, !tbaa !52, !noalias !2079
  br i1 %i.evm, label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEb.exit.thread.i.i.i, label %bb.sh

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEb.exit.thread.i.i.i: ; preds = %bb.sg
  %i.ewj = load i64, ptr %i.esz, align 8, !tbaa !125, !noalias !2079
  br label %_ZN5arrow6StatusD2Ev.exit120.i

bb.sh:                                            ; preds = %bb.sg
  %i.ewk = load i64, ptr %i.eta, align 8, !tbaa !126, !noalias !2079
  %i.ewl = add nsw i64 %i.ewk, 1
  store i64 %i.ewl, ptr %i.eta, align 8, !tbaa !126, !noalias !2079
  %i.ewm = load i64, ptr %i.esz, align 8, !tbaa !125, !noalias !2079
  %i.ewn = load i64, ptr %i.etb, align 8, !tbaa !127, !noalias !2079
  %i.ewo = add nsw i64 %i.ewn, 1
  store i64 %i.ewo, ptr %i.etb, align 8, !tbaa !127, !noalias !2079
  br label %_ZN5arrow6StatusD2Ev.exit120.i

_ZN5arrow6StatusD2Ev.exit120.i:                   ; preds = %bb.sh, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEb.exit.thread.i.i.i
  %.sink.in.i.i = phi i64 [ %i.ewj, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEb.exit.thread.i.i.i ], [ %i.ewm, %bb.sh ]
  %.sink4.i.i.i = phi i64 [ 104, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEb.exit.thread.i.i.i ], [ 96, %bb.sh ]
  %.sink.i.i1448 = add nsw i64 %.sink.in.i.i, 1
  store i64 %.sink.i.i1448, ptr %i.esz, align 8, !tbaa !125, !noalias !2079
  %i.ewp = getelementptr inbounds nuw i8, ptr %i.err, i64 %.sink4.i.i.i ; 2 uses
  %i.ewq = load i64, ptr %i.ewp, align 8, !tbaa !128, !noalias !2079
  %i.ewr = add nsw i64 %i.ewq, 1
  store i64 %i.ewr, ptr %i.ewp, align 8, !tbaa !128, !noalias !2079
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !2062
  %i.ews = getelementptr inbounds nuw i8, ptr %.sroa.0.0180.i, i64 16 ; 3 uses
  %.val87.i = load ptr, ptr %i.eru, align 8, !tbaa !185, !noalias !2062
  %.not167.i = icmp eq ptr %i.ews, %.val87.i
  br i1 %.not167.i, label %.critedge82.loopexit.i, label %.lr.ph181.i, !llvm.loop !2086

.critedge82.loopexit.i:                           ; preds = %_ZN5arrow6StatusD2Ev.exit120.i
  %.pre.i1449 = load i64, ptr %i.ers, align 8, !tbaa !197, !noalias !2062
  br label %.critedge82.i

.critedge82.i:                                    ; preds = %.critedge82.loopexit.i, %bb.sd
  %i.ewt = phi i64 [ %.pre.i1449, %.critedge82.loopexit.i ], [ %i.etx, %bb.sd ] ; 2 uses
  %.val87178190.i = phi ptr [ %i.ews, %.critedge82.loopexit.i ], [ %.val87178.i, %bb.sd ]
  %i.ewu = add nuw nsw i64 %.054183.i, 1          ; 2 uses
  %.not69.i = icmp slt i64 %i.ewu, %i.ewt
  br i1 %.not69.i, label %bb.sd, label %.critedge.sink.split.i, !llvm.loop !2087

.critedge.sink.split.i:                           ; preds = %.critedge82.i, %_ZN5arrow6StatusD2Ev.exit.i.i1444, %.critedge72.preheader.i
  %.pr.i.lcssa.sink.i = phi ptr [ null, %.critedge72.preheader.i ], [ %.pr.i.i1446, %_ZN5arrow6StatusD2Ev.exit.i.i1444 ], [ null, %.critedge82.i ]
  store ptr %.pr.i.lcssa.sink.i, ptr %0, align 8, !tbaa !53, !alias.scope !2062
  br label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

bb.si:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2091)
  %i.ewv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eww = load ptr, ptr %i.ewv, align 8, !tbaa !315, !noalias !2094 ; 11 uses
  %i.ewx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ewy = load i64, ptr %i.ewx, align 8, !tbaa !197, !noalias !2094
  %i.ewz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.val.i.i1458 = load ptr, ptr %i.ewz, align 8, !tbaa !185, !noalias !2094
  %.val45.i.i = load ptr, ptr %2, align 8, !tbaa !185, !noalias !2094
  %i.exa = ptrtoint ptr %.val.i.i1458 to i64
  %i.exb = ptrtoint ptr %.val45.i.i to i64
  %i.exc = sub i64 %i.exa, %i.exb
  %i.exd = ashr exact i64 %i.exc, 4
  %i.exe = mul nsw i64 %i.exd, %i.ewy             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !2094
  %i.exf = getelementptr inbounds nuw i8, ptr %i.eww, i64 112
  %i.exg = load i64, ptr %i.exf, align 8, !tbaa !107, !noalias !2095 ; 2 uses
  %i.exh = load ptr, ptr %i.eww, align 8, !tbaa !93, !noalias !2095
  %i.exi = getelementptr inbounds nuw i8, ptr %i.exh, i64 16
  %i.exj = load ptr, ptr %i.exi, align 8, !noalias !2095
  %i.exk = tail call noundef i64 %i.exj(ptr noundef nonnull align 8 dereferenceable(144) %i.eww), !noalias !2095, !inline_history !2098
  %i.exl = add nsw i64 %i.exk, %i.exe             ; 2 uses
  %.not.i.i.i1459 = icmp sgt i64 %i.exl, %i.exg
  br i1 %.not.i.i.i1459, label %_ZN5arrow6StatusD2Ev.exit.i.i1465, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i1460

_ZN5arrow6StatusD2Ev.exit.thread.i.i1460:         ; preds = %bb.si
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !2094
  br label %_ZN5arrow6StatusD2Ev.exit53.i.i

_ZN5arrow6StatusD2Ev.exit.i.i1465:                ; preds = %bb.si
  %i.exm = shl nsw i64 %i.exg, 1
  %.sroa.speculated.i.i.i.i1466 = tail call noundef i64 @llvm.smax.i64(i64 %i.exl, i64 %i.exm)
  %i.exn = load ptr, ptr %i.eww, align 8, !tbaa !93, !noalias !2095
  %i.exo = getelementptr inbounds nuw i8, ptr %i.exn, i64 24
  %i.exp = load ptr, ptr %i.exo, align 8, !noalias !2095
  call void %i.exp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %21, ptr noundef nonnull align 8 dereferenceable(144) %i.eww, i64 noundef %.sroa.speculated.i.i.i.i1466), !noalias !2094, !inline_history !2098
  %.pr.i.i1467 = load ptr, ptr %21, align 8, !tbaa !53, !noalias !2094 ; 2 uses
  store ptr %.pr.i.i1467, ptr %0, align 8, !tbaa !53, !alias.scope !2094
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !2094
  %i.exq = icmp eq ptr %.pr.i.i1467, null
  br i1 %i.exq, label %_ZN5arrow6StatusD2Ev.exit53.i.i, label %_ZN5arrow12_GLOBAL__N_116AppendScalarImplINS0_18DerefConstIteratorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_6ScalarEESt6vectorIS7_SaIS7_EEEEEEE5VisitINS_11BooleanTypeEEENSt9enable_ifIXsr10has_c_typeIT_EE5valueENS_6StatusEE4typeERKSJ_.exit

_ZN5arrow6StatusD2Ev.exit53.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i1465, %_ZN5arrow6StatusD2Ev.exit.thread.i.i1460
  %i.exr = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.exs = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.ext = load ptr, ptr %i.exs, align 8, !tbaa !1156, !noalias !2094
  %i.exu = load ptr, ptr %i.exr, align 8, !tbaa !1157, !noalias !2094
  %i.exv = ptrtoint ptr %i.ext to i64
  %i.exw = ptrtoint ptr %i.exu to i64
  %i.exx = sub i64 %i.exv, %i.exw
  %i.exy = lshr exact i64 %i.exx, 4
  %i.exz = trunc i64 %i.exy to i32
  %.not89.i.i = icmp sgt i32 %i.exz, 0
  br i1 %.not89.i.i, label %.lr.ph.i.i1462, label %.critedge39.preheader.i.i

.lr.ph.i.i1462:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit53.i.i
  %i.eya = getelementptr inbounds nuw i8, ptr %i.eww, i64 120
  br label %bb.sj

.critedge39.preheader.i.i:                        ; preds = %_ZN5arrow6StatusD2Ev.exit62.i.i, %_ZN5arrow6StatusD2Ev.exit53.i.i
  %i.eyb = load i64, ptr %i.ewx, align 8, !tbaa !197, !noalias !2094 ; 2 uses
  %.not3695.i.i = icmp sgt i64 %i.eyb, 0
  br i1 %.not3695.i.i, label %.lr.ph97.i.i, label %.critedge.sink.split.i.i

.lr.ph97.i.i:                                     ; preds = %.critedge39.preheader.i.i
  %i.eyc = getelementptr inbounds nuw i8, ptr %i.eww, i64 296 ; 4 uses
  %i.eyd = getelementptr inbounds nuw i8, ptr %i.eww, i64 288
  %i.eye = getelementptr inbounds nuw i8, ptr %i.eww, i64 256
  %i.eyf = getelementptr inbounds nuw i8, ptr %i.eww, i64 280
  %i.eyg = getelementptr inbounds nuw i8, ptr %i.eww, i64 120
  %.val4791.pre.i.i = load ptr, ptr %i.ewz, align 8, !tbaa !185, !noalias !2094
  br label %bb.sk

bb.sj:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit62.i.i, %.lr.ph.i.i1462
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i1462 ], [ %indvars.iv.next.i.i, %_ZN5arrow6StatusD2Ev.exit62.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20, !noalias !2094
  %i.eyh = load ptr, ptr %i.eya, align 8, !tbaa !229, !noalias !2094
  %i.eyi = getelementptr inbounds nuw [16 x i8], ptr %i.eyh, i64 %indvars.iv.i.i
  %i.eyj = load ptr, ptr %i.eyi, align 8, !tbaa !919, !noalias !2094 ; 5 uses
  %i.eyk = getelementptr inbounds nuw i8, ptr %i.eyj, i64 112
  %i.eyl = load i64, ptr %i.eyk, align 8, !tbaa !107, !noalias !2099 ; 2 uses
  %i.eym = load ptr, ptr %i.eyj, align 8, !tbaa !93, !noalias !2099
  %i.eyn = getelementptr inbounds nuw i8, ptr %i.eym, i64 16
  %i.eyo = load ptr, ptr %i.eyn, align 8, !noalias !2099
  %i.eyp = call noundef i64 %i.eyo(ptr noundef nonnull align 8 dereferenceable(144) %i.eyj), !noalias !2099, !inline_history !2098
  %i.eyq = add nsw i64 %i.eyp, %i.exe             ; 2 uses
  %.not.i54.i.i = icmp sgt i64 %i.eyq, %i.eyl
  br i1 %.not.i54.i.i, label %_ZN5arrow6StatusD2Ev.exit58.i.i, label %_ZN5arrow6StatusD2Ev.exit58.thread.i.i

_ZN5arrow6StatusD2Ev.exit58.thread.i.i:           ; preds = %bb.sj
end_hunk_1
