inline.NumInlined: 43590
inline.NumDeleted: 6060
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_10Date64TypeEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_10Date64TypeEEENS_6StatusERKT_.exit: ; preds = %bb.anq, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1155, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1150, %bb.anx
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #28, !noalias !21126
  call void @llvm.lifetime.end.p0(ptr nonnull %102)
  br label %bb.byj

bb.any:                                           ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21157)
  call void @llvm.lifetime.start.p0(ptr nonnull %97)
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #28, !noalias !21157
  %i.eau = load ptr, ptr %1, align 8, !tbaa !7282, !noalias !21157, !nonnull !83, !align !731 ; 3 uses
  %i.eav = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eaw = load ptr, ptr %i.eav, align 8, !tbaa !7666, !noalias !21157, !nonnull !83, !align !731 ; 2 uses
  %i.eax = getelementptr inbounds nuw i8, ptr %97, i64 8
  %i.eay = getelementptr inbounds nuw i8, ptr %i.eaw, i64 8
  %i.eaz = load ptr, ptr %i.eay, align 8, !tbaa !201, !noalias !21157 ; 2 uses
  %i.eba = load <2 x ptr>, ptr %i.eaw, align 8, !tbaa !200, !noalias !21157
  store <2 x ptr> %i.eba, ptr %97, align 16, !tbaa !200, !noalias !21157
  %.not.i.i.i.i1183 = icmp eq ptr %i.eaz, null
  br i1 %.not.i.i.i.i1183, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1185, label %bb.anz

bb.anz:                                           ; preds = %bb.any
  %i.ebb = getelementptr inbounds nuw i8, ptr %i.eaz, i64 8 ; 3 uses
  %i.ebc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66, !noalias !21157
  %.not.i.i.i.i.i1184 = icmp eq i8 %i.ebc, 0
  br i1 %.not.i.i.i.i.i1184, label %bb.aob, label %bb.aoa

bb.aoa:                                           ; preds = %bb.anz
  %i.ebd = load i32, ptr %i.ebb, align 4, !tbaa !3, !noalias !21157
  %i.ebe = add nsw i32 %i.ebd, 1
  store i32 %i.ebe, ptr %i.ebb, align 4, !tbaa !3, !noalias !21157
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1185

bb.aob:                                           ; preds = %bb.anz
  %i.ebf = atomicrmw volatile add ptr %i.ebb, i32 1 acq_rel, align 4, !noalias !21157 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1185

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1185: ; preds = %bb.aob, %bb.aoa, %bb.any
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21160)
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #28, !noalias !21163
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #28, !noalias !21163
  %i.ebg = getelementptr inbounds nuw i8, ptr %i.eau, i64 24
  %i.ebh = load ptr, ptr %i.ebg, align 8, !tbaa !33, !noalias !21163 ; 3 uses
  %i.ebi = getelementptr inbounds nuw i8, ptr %i.ebh, i64 72
  %i.ebj = load i32, ptr %i.ebi, align 8, !tbaa !2117, !noalias !21163
  store i32 %i.ebj, ptr %95, align 8, !tbaa !21164, !noalias !21163
  %i.ebk = getelementptr inbounds nuw i8, ptr %95, i64 8 ; 4 uses
  %i.ebl = getelementptr inbounds nuw i8, ptr %i.ebh, i64 80
  %i.ebm = getelementptr inbounds nuw i8, ptr %95, i64 24 ; 7 uses
  store ptr %i.ebm, ptr %i.ebk, align 8, !tbaa !198, !noalias !21163
  %i.ebn = load ptr, ptr %i.ebl, align 8, !tbaa !62, !noalias !21163 ; 2 uses
  %i.ebo = getelementptr inbounds nuw i8, ptr %i.ebh, i64 88
  %i.ebp = load i64, ptr %i.ebo, align 8, !tbaa !199, !noalias !21163 ; 8 uses
  %i.ebq = icmp ugt i64 %i.ebp, 15
  br i1 %i.ebq, label %bb.aoc, label %._crit_edge.i.i.i.i.i1186

bb.aoc:                                           ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1185
  %i.ebr = icmp slt i64 %i.ebp, 0
  br i1 %i.ebr, label %.noexc.i.i.i.i, label %bb.aod

.noexc.i.i.i.i:                                   ; preds = %bb.aoc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #30
          to label %.noexc.i1227 unwind label %bb.aqx, !noalias !21157

.noexc.i1227:                                     ; preds = %.noexc.i.i.i.i
  unreachable

bb.aod:                                           ; preds = %bb.aoc
  %i.ebs = add nuw i64 %i.ebp, 1                  ; 2 uses
  %i.ebt = icmp slt i64 %i.ebs, 0
  br i1 %i.ebt, label %.noexc6.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !209

.noexc6.i.i.i.i:                                  ; preds = %bb.aod
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc9.i1226 unwind label %bb.aqx, !noalias !21157

.noexc9.i1226:                                    ; preds = %.noexc6.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.aod
  %i.ebu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ebs) #31
          to label %.noexc10.i1225 unwind label %bb.aqx, !noalias !21157 ; 2 uses

.noexc10.i1225:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.ebu, ptr %i.ebk, align 8, !tbaa !62, !noalias !21163
  store i64 %i.ebp, ptr %i.ebm, align 8, !tbaa !66, !noalias !21163
  br label %._crit_edge.i.i.i.i.i1186

._crit_edge.i.i.i.i.i1186:                        ; preds = %.noexc10.i1225, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1185
  %i.ebv = phi ptr [ %i.ebu, %.noexc10.i1225 ], [ %i.ebm, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1185 ] ; 3 uses
  switch i64 %i.ebp, label %bb.aof [
    i64 1, label %bb.aoe
    i64 0, label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i
  ]

bb.aoe:                                           ; preds = %._crit_edge.i.i.i.i.i1186
  %i.ebw = load i8, ptr %i.ebn, align 1, !tbaa !66, !noalias !21163
  store i8 %i.ebw, ptr %i.ebv, align 1, !tbaa !66, !noalias !21163
  br label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i

bb.aof:                                           ; preds = %._crit_edge.i.i.i.i.i1186
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ebv, ptr align 1 %i.ebn, i64 %i.ebp, i1 false), !noalias !21163
  br label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i

_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i: ; preds = %bb.aof, %bb.aoe, %._crit_edge.i.i.i.i.i1186
  %i.ebx = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 2 uses
  store i64 %i.ebp, ptr %i.ebx, align 8, !tbaa !199, !noalias !21163
  %i.eby = getelementptr inbounds nuw i8, ptr %i.ebv, i64 %i.ebp
  store i8 0, ptr %i.eby, align 1, !tbaa !66, !noalias !21163
  %.val.i.i1187 = load i32, ptr %95, align 8, !noalias !21163
  %.val5.i.i1188 = load i64, ptr %i.ebx, align 8, !noalias !21163 ; 4 uses
  %i.ebz = getelementptr inbounds nuw i8, ptr %i.eau, i64 40
  %.val6.i.i = load i8, ptr %i.ebz, align 8, !tbaa !75, !range !82, !noalias !21163, !noundef !83
  %i.eca = getelementptr inbounds nuw i8, ptr %i.eau, i64 48
  %.val7.i.i = load i64, ptr %i.eca, align 8, !noalias !21163 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %93), !noalias !21163
  %i.ecb = trunc nuw i8 %.val6.i.i to i1
  br i1 %i.ecb, label %bb.aoi, label %._crit_edge.i.i.i8.i.i

._crit_edge.i.i.i8.i.i:                           ; preds = %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i
  %i.ecc = getelementptr inbounds nuw i8, ptr %93, i64 16 ; 6 uses
  store ptr %i.ecc, ptr %93, align 8, !tbaa !198, !noalias !21166
  store i32 1819047278, ptr %i.ecc, align 8, !noalias !21166
  %i.ecd = getelementptr inbounds nuw i8, ptr %93, i64 8
  store i64 4, ptr %i.ecd, align 8, !tbaa !199, !noalias !21166
  %i.ece = getelementptr inbounds nuw i8, ptr %93, i64 20
  store i8 0, ptr %i.ece, align 4, !tbaa !66, !noalias !21166
  invoke void @_ZN5arrow6Buffer10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.9") align 8 %94, ptr noundef nonnull %93)
          to label %bb.aog unwind label %bb.aoh, !noalias !21163

bb.aog:                                           ; preds = %._crit_edge.i.i.i8.i.i
  %i.ecf = load ptr, ptr %93, align 8, !tbaa !62, !noalias !21166 ; 2 uses
  %i.ecg = icmp eq ptr %i.ecf, %i.ecc
  br i1 %i.ecg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1194: ; preds = %bb.aog
  %i.ech = load i64, ptr %i.ecc, align 8, !tbaa !66, !noalias !21166
  %i.eci = add i64 %i.ech, 1
  call void @_ZdlPvm(ptr noundef %i.ecf, i64 noundef %i.eci) #29, !noalias !21163
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222

bb.aoh:                                           ; preds = %._crit_edge.i.i.i8.i.i
  %i.ecj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eck = load ptr, ptr %93, align 8, !tbaa !62, !noalias !21166 ; 2 uses
  %i.ecl = icmp eq ptr %i.eck, %i.ecc
  br i1 %i.ecl, label %.body.i.i1189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i: ; preds = %bb.aoh
  %i.ecm = load i64, ptr %i.ecc, align 8, !tbaa !66, !noalias !21166
  %i.ecn = add i64 %i.ecm, 1
  call void @_ZdlPvm(ptr noundef %i.eck, i64 noundef %i.ecn) #29, !noalias !21163
  br label %.body.i.i1189

bb.aoi:                                           ; preds = %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i
  switch i32 %.val.i.i1187, label %bb.aps [
    i32 3, label %bb.aph
    i32 1, label %bb.aoj
    i32 2, label %bb.aov
  ]

bb.aoj:                                           ; preds = %bb.aoi
  %i.eco = add i64 %.val7.i.i, 1096193779200000
  %spec.select.i.i.i.i.i.i.i = icmp ult i64 %i.eco, 2068084742400000
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.aok, label %.invoke.i.i, !prof !218

bb.aok:                                           ; preds = %bb.aoj
  %i.ecp = sdiv i64 %.val7.i.i, 86400000          ; 3 uses
  %i.ecq = trunc nsw i64 %i.ecp to i32            ; 2 uses
  %i.ecr = mul nsw i64 %i.ecp, 86400000           ; 2 uses
  %.not53.i.i.i.i.i.i = icmp sgt i64 %i.ecr, %.val7.i.i
  br i1 %.not53.i.i.i.i.i.i, label %bb.aom, label %bb.aol

bb.aol:                                           ; preds = %bb.aok
  %.neg.i.i.i.i.i.i.i.i = mul nsw i64 %i.ecp, -86400000
  %i.ecs = add nsw i64 %.neg.i.i.i.i.i.i.i.i, %.val7.i.i
  br label %bb.aon

bb.aom:                                           ; preds = %bb.aok
  %.neg.i.i.i.i.i.i = add nsw i64 %.val7.i.i, 86400000
  %i.ect = sub nsw i64 %.neg.i.i.i.i.i.i, %i.ecr
  %i.ecu = add nsw i32 %i.ecq, -1
  br label %bb.aon

bb.aon:                                           ; preds = %bb.aom, %bb.aol
  %.sroa.036.0.i.i.i.i.i.i = phi i64 [ %i.ecs, %bb.aol ], [ %i.ect, %bb.aom ]
  %.sroa.037.0.i.i.i.i.i.i = phi i32 [ %i.ecq, %bb.aol ], [ %i.ecu, %bb.aom ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #28, !noalias !21169
  %i.ecv = getelementptr inbounds nuw i8, ptr %92, i64 26 ; 2 uses
  %.not.i.i.i.i.i.i1223 = icmp eq i64 %.val5.i.i1188, 0
  br i1 %.not.i.i.i.i.i.i1223, label %bb.aop, label %bb.aoo

bb.aoo:                                           ; preds = %bb.aon
  %i.ecw = getelementptr inbounds nuw i8, ptr %92, i64 25 ; 2 uses
  store i8 90, ptr %i.ecw, align 1, !tbaa !66, !noalias !21169
  br label %bb.aop

bb.aop:                                           ; preds = %bb.aoo, %bb.aon
  %.0.i.i.i.i.i.i = phi ptr [ %i.ecv, %bb.aon ], [ %i.ecw, %bb.aoo ] ; 6 uses
  %.063.i.i.i.i.i.i = ptrtoaddr ptr %.0.i.i.i.i.i.i to i64 ; 3 uses
  %spec.select.i.i.i.i.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i.i.i.i.i.i, i1 true) ; 3 uses
  %i.ecx = udiv i64 %spec.select.i.i.i.i.i.i.i.i.i, 3600000 ; 3 uses
  %i.ecy = udiv i64 %spec.select.i.i.i.i.i.i.i.i.i, 60000
  %.neg.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ecx, -60
  %i.ecz = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i, %i.ecy ; 2 uses
  %.neg.i7.i.i.i.i.i.i.i.i = mul nsw i64 %i.ecx, -3600000
  %i.eda = add nsw i64 %.neg.i7.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i.i.i
  %.neg.i8.i.i.i.i.i.i.i.i = mul nsw i64 %i.ecz, -60000
  %i.edb = add nsw i64 %i.eda, %.neg.i8.i.i.i.i.i.i.i.i ; 2 uses
  %i.edc = sdiv i64 %i.edb, 1000                  ; 2 uses
  %.neg.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.edc, -1000
  %i.edd = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i, %i.edb ; 3 uses
  %i.ede = icmp sgt i64 %i.edd, 99
  br i1 %i.ede, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i1224

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.aop, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.1.idx.i.i.i.i.i.i = phi i64 [ %.1.add.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.aop ] ; 2 uses
  %.08.i.i.i.i.i.i.i.i.i = phi i64 [ %i.edm, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.edd, %bb.aop ] ; 3 uses
  %.1.ptr.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i, i64 %.1.idx.i.i.i.i.i.i
  %i.edf = urem i64 %.08.i.i.i.i.i.i.i.i.i, 100
  %i.edg = shl nuw nsw i64 %i.edf, 1
  %i.edh = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.edg ; 2 uses
  %i.edi = getelementptr inbounds nuw i8, ptr %i.edh, i64 1
  %i.edj = load i8, ptr %i.edi, align 1, !tbaa !66, !noalias !21169
  %i.edk = getelementptr inbounds i8, ptr %.1.ptr.i.i.i.i.i.i, i64 -1
  store i8 %i.edj, ptr %i.edk, align 1, !tbaa !66, !noalias !21169
  %i.edl = load i8, ptr %i.edh, align 1, !tbaa !66, !noalias !21169
  %.1.add.i.i.i.i.i.i = add nsw i64 %.1.idx.i.i.i.i.i.i, -2 ; 3 uses
  %.ptr55.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i, i64 %.1.add.i.i.i.i.i.i
  store i8 %i.edl, ptr %.ptr55.i.i.i.i.i.i, align 1, !tbaa !66, !noalias !21169
  %i.edm = udiv i64 %.08.i.i.i.i.i.i.i.i.i, 100   ; 2 uses
  %i.edn = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i.i.i, 9999
  br i1 %i.edn, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i1224, !llvm.loop !21176

._crit_edge.i.i.i.i.i.i.i.i.i1224:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.aop
  %.2.idx.i.i.i.i.i.i = phi i64 [ 0, %bb.aop ], [ %.1.add.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ %i.edd, %bb.aop ], [ %i.edm, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.edo = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, 9
  br i1 %i.edo, label %bb.aoq, label %bb.aor

bb.aoq:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i1224
  %i.edp = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, 1
  %i.edq = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.edp ; 2 uses
  %i.edr = getelementptr inbounds nuw i8, ptr %i.edq, i64 1
  %i.eds = load i8, ptr %i.edr, align 1, !tbaa !66, !noalias !21169
  %.2.add.i.i.i.i.i.i = add nsw i64 %.2.idx.i.i.i.i.i.i, -1 ; 2 uses
  %.ptr54.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i, i64 %.2.add.i.i.i.i.i.i
  store i8 %i.eds, ptr %.ptr54.i.i.i.i.i.i, align 1, !tbaa !66, !noalias !21169
  %i.edt = load i8, ptr %i.edq, align 1, !tbaa !66, !noalias !21169
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i

bb.aor:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i1224
  %i.edu = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i.i to i8
  %i.edv = add i8 %i.edu, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aor, %bb.aoq
  %.3.idx.i.i.i.i.i.i = phi i64 [ %.2.add.i.i.i.i.i.i, %bb.aoq ], [ %.2.idx.i.i.i.i.i.i, %bb.aor ] ; 3 uses
  %.sink.i.i.i.i.i.i.i.i.i = phi i8 [ %i.edt, %bb.aoq ], [ %i.edv, %bb.aor ]
  %i.edw = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %.3.idx.i.i.i.i.i.i ; 2 uses
  %.ptr.i.i.i.i.i.i = getelementptr i8, ptr %i.edw, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i.i.i, ptr %.ptr.i.i.i.i.i.i, align 1, !tbaa !66, !noalias !21169
  %i.edx = icmp sgt i64 %.3.idx.i.i.i.i.i.i, -2
  br i1 %i.edx, label %.lr.ph.i.i.preheader.i.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i.i.i:                 ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i
  %i.edy = add i64 %.3.idx.i.i.i.i.i.i, %.063.i.i.i.i.i.i ; 2 uses
  %i.edz = add i64 %i.edy, -2
  %i.eea = add i64 %.063.i.i.i.i.i.i, -3
  %umin.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.edz, i64 %i.eea) ; 2 uses
  %i.eeb = sub i64 %umin.i.i.i.i.i.i, %.063.i.i.i.i.i.i
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %i.eeb ; 2 uses
  %i.eec = xor i64 %umin.i.i.i.i.i.i, -1
  %i.eed = add i64 %i.edy, %i.eec
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i.i.i, i8 48, i64 %i.eed, i1 false), !tbaa !66, !noalias !21169
  %scevgep65.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i
  %i.eee = phi ptr [ %i.edw, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i ], [ %scevgep65.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.eef = shl nsw i64 %i.edc, 1
  %i.eeg = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eef
  %i.eeh = getelementptr i8, ptr %i.eee, i64 -5
  %i.eei = load <2 x i8>, ptr %i.eeg, align 1, !tbaa !66, !noalias !21169
  %i.eej = shufflevector <2 x i8> %i.eei, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.eek = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %i.eej, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.eek, ptr %i.eeh, align 1, !tbaa !66, !noalias !21169
  %i.eel = shl nsw i64 %i.ecz, 1
  %i.eem = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eel
  %i.een = shl nuw nsw i64 %i.ecx, 1
  %i.eeo = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.een
  %i.eep = add nsw i32 %.sroa.037.0.i.i.i.i.i.i, 719468 ; 2 uses
  %i.eeq = icmp sgt i32 %.sroa.037.0.i.i.i.i.i.i, -719469
  %i.eer = add nuw nsw i32 %.sroa.037.0.i.i.i.i.i.i, 573372
  %i.ees = select i1 %i.eeq, i32 %i.eep, i32 %i.eer
  %i.eet = sdiv i32 %i.ees, 146097                ; 2 uses
  %.neg.i.i16.i.i.i.i.i.i = mul nsw i32 %i.eet, -146097
  %i.eeu = add nsw i32 %.neg.i.i16.i.i.i.i.i.i, %i.eep ; 5 uses
  %i.eev = udiv i32 %i.eeu, 1460
  %i.eew = udiv i32 %i.eeu, 36524
  %i.eex = udiv i32 %i.eeu, 146096
  %.neg38 = add nsw i32 %i.eew, %i.eeu
  %i.eey = add nuw nsw i32 %i.eex, %i.eev
  %i.eez = sub nsw i32 %.neg38, %i.eey            ; 3 uses
  %i.efa = udiv i32 %i.eez, 365                   ; 2 uses
  %i.efb = mul nsw i32 %i.eet, 400
  %i.efc = add nsw i32 %i.efa, %i.efb
  %i.efd = udiv i32 %i.eez, 1460
  %i.efe = udiv i32 %i.eez, 36500
  %.neg36.i.i.i.i.i.i.i.i = mul i32 %i.efa, -365
  %.neg37.i.i.i.i.i.i.i.i = sub nsw i32 %i.eeu, %i.efd
  %.neg25.i.i.i.i.i.i.i.i = add nsw i32 %.neg37.i.i.i.i.i.i.i.i, %i.efe
  %i.eff = add i32 %.neg25.i.i.i.i.i.i.i.i, %.neg36.i.i.i.i.i.i.i.i ; 2 uses
  %i.efg = mul i32 %i.eff, 5
  %i.efh = add i32 %i.efg, 2                      ; 2 uses
  %i.efi = udiv i32 %i.efh, 153                   ; 2 uses
  %i.efj = mul nuw i32 %i.efi, 153
  %i.efk = add nuw i32 %i.efj, 2
  %i.efl = udiv i32 %i.efk, 5
  %i.efm = sub i32 %i.eff, %i.efl
  %i.efn = icmp ult i32 %i.efh, 1530
  %.v.i.i.i.i.i.i.i.i = select i1 %i.efn, i32 3, i32 -9
  %i.efo = add nsw i32 %.v.i.i.i.i.i.i.i.i, %i.efi ; 2 uses
  %i.efp = icmp ult i32 %i.efo, 3
  %i.efq = zext i1 %i.efp to i32
  %i.efr = add nsw i32 %i.efc, %i.efq
  %i.efs = shl i32 %i.efm, 24
  %.sroa.3.0.insert.ext.i.i.i.i.i.i.i.i = add i32 %i.efs, 16777216
  %i.eft = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i.i.i.i.i.i, 23
  %i.efu = zext nneg i32 %i.eft to i64
  %i.efv = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.efu
  %i.efw = shl nsw i32 %i.efo, 1
  %i.efx = and i32 %i.efw, 510
  %i.efy = zext nneg i32 %i.efx to i64
  %i.efz = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.efy
  %sext.i.i.i.i.i.i.i = shl i32 %i.efr, 16
  %i.ega = ashr exact i32 %sext.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.egb = icmp slt i32 %i.ega, 0
  %i.egc = call i32 @llvm.abs.i32(i32 %i.ega, i1 true) ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i = trunc nuw i32 %i.egc to i16 ; 3 uses
  %i.egd = urem i16 %.lhs.trunc.i.i.i.i.i.i.i, 100
  %i.ege = shl nuw nsw i16 %i.egd, 1
  %i.egf = zext nneg i16 %i.ege to i64
  %i.egg = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.egf
  %i.egh = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i, 100
  %i.egi = urem i16 %i.egh, 100
  %i.egj = shl nuw nsw i16 %i.egi, 1
  %i.egk = zext nneg i16 %i.egj to i64
  %i.egl = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.egk
  %i.egm = getelementptr i8, ptr %i.eee, i64 -21  ; 2 uses
  %i.egn = load <2 x i8>, ptr %i.eem, align 1, !tbaa !66, !noalias !21169
  %i.ego = load <2 x i8>, ptr %i.eeo, align 1, !tbaa !66, !noalias !21169
  %i.egp = load <2 x i8>, ptr %i.efv, align 1, !tbaa !66, !noalias !21169
  %i.egq = load <2 x i8>, ptr %i.efz, align 1, !tbaa !66, !noalias !21169
  %i.egr = load <2 x i8>, ptr %i.egg, align 1, !tbaa !66, !noalias !21169
  %i.egs = load <2 x i8>, ptr %i.egl, align 1, !tbaa !66, !noalias !21169
  %i.egt = shufflevector <2 x i8> %i.egs, <2 x i8> %i.egr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.egu = shufflevector <16 x i8> %i.egt, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.egv = shufflevector <2 x i8> %i.egq, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.egw = shufflevector <16 x i8> %i.egu, <16 x i8> %i.egv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.egx = shufflevector <2 x i8> %i.egp, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.egy = shufflevector <16 x i8> %i.egw, <16 x i8> %i.egx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.egz = shufflevector <2 x i8> %i.ego, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eha = shufflevector <16 x i8> %i.egy, <16 x i8> %i.egz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.ehb = shufflevector <2 x i8> %i.egn, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ehc = shufflevector <16 x i8> %i.eha, <16 x i8> %i.ehb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.ehc, ptr %i.egm, align 1, !tbaa !66, !noalias !21169
  %i.ehd = icmp samesign ugt i32 %i.egc, 9999
  br i1 %i.ehd, label %bb.aos, label %bb.aot

bb.aos:                                           ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %i.ehe = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i, 10000
  %i.ehf = trunc nuw nsw i16 %i.ehe to i8
  %i.ehg = or disjoint i8 %i.ehf, 48
  %i.ehh = getelementptr i8, ptr %i.eee, i64 -22  ; 2 uses
  store i8 %i.ehg, ptr %i.ehh, align 1, !tbaa !66, !noalias !21169
  br label %bb.aot

bb.aot:                                           ; preds = %bb.aos, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %.4.i.i.i.i.i.i = phi ptr [ %i.ehh, %bb.aos ], [ %i.egm, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.egb, label %bb.aou, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i

bb.aou:                                           ; preds = %bb.aot
  %i.ehi = getelementptr inbounds i8, ptr %.4.i.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.ehi, align 1, !tbaa !66, !noalias !21169
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i: ; preds = %bb.aou, %bb.aot
  %.5.i.i.i.i.i.i = phi ptr [ %i.ehi, %bb.aou ], [ %.4.i.i.i.i.i.i, %bb.aot ] ; 2 uses
  %i.ehj = ptrtoint ptr %i.ecv to i64
  %i.ehk = ptrtoint ptr %.5.i.i.i.i.i.i to i64
  %i.ehl = sub i64 %i.ehj, %i.ehk
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_13TimestampTypeEvEENS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %94, i64 %i.ehl, ptr nonnull %.5.i.i.i.i.i.i)
          to label %.noexc9.i.i unwind label %bb.aqo, !noalias !21163

.noexc9.i.i:                                      ; preds = %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #28, !noalias !21169
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222

bb.aov:                                           ; preds = %bb.aoi
  %i.ehm = add i64 %.val7.i.i, 1096193779200000000
  %spec.select.i.i18.i.i.i.i.i = icmp ult i64 %i.ehm, 2068084742400000000
  br i1 %spec.select.i.i18.i.i.i.i.i, label %bb.aow, label %.invoke.i.i, !prof !218

bb.aow:                                           ; preds = %bb.aov
  %i.ehn = sdiv i64 %.val7.i.i, 86400000000       ; 3 uses
  %i.eho = trunc nsw i64 %i.ehn to i32            ; 2 uses
  %i.ehp = mul nsw i64 %i.ehn, 86400000000        ; 2 uses
  %.not53.i19.i.i.i.i.i = icmp sgt i64 %i.ehp, %.val7.i.i
  br i1 %.not53.i19.i.i.i.i.i, label %bb.aoy, label %bb.aox

bb.aox:                                           ; preds = %bb.aow
  %.neg.i.i.i20.i.i.i.i.i = mul nsw i64 %i.ehn, -86400000000
  %i.ehq = add nsw i64 %.neg.i.i.i20.i.i.i.i.i, %.val7.i.i
  br label %bb.aoz

bb.aoy:                                           ; preds = %bb.aow
  %.neg.i62.i.i.i.i.i = add nsw i64 %.val7.i.i, 86400000000
  %i.ehr = sub nsw i64 %.neg.i62.i.i.i.i.i, %i.ehp
  %i.ehs = add nsw i32 %i.eho, -1
  br label %bb.aoz

bb.aoz:                                           ; preds = %bb.aoy, %bb.aox
  %.sroa.036.0.i21.i.i.i.i.i = phi i64 [ %i.ehq, %bb.aox ], [ %i.ehr, %bb.aoy ]
  %.sroa.037.0.i22.i.i.i.i.i = phi i32 [ %i.eho, %bb.aox ], [ %i.ehs, %bb.aoy ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #28, !noalias !21177
  %i.eht = getelementptr inbounds nuw i8, ptr %91, i64 29 ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq i64 %.val5.i.i1188, 0
  br i1 %.not.i23.i.i.i.i.i, label %bb.apb, label %bb.apa

bb.apa:                                           ; preds = %bb.aoz
  %i.ehu = getelementptr inbounds nuw i8, ptr %91, i64 28 ; 2 uses
  store i8 90, ptr %i.ehu, align 1, !tbaa !66, !noalias !21177
  br label %bb.apb

bb.apb:                                           ; preds = %bb.apa, %bb.aoz
  %.0.i24.i.i.i.i.i = phi ptr [ %i.eht, %bb.aoz ], [ %i.ehu, %bb.apa ] ; 6 uses
  %.063.i25.i.i.i.i.i = ptrtoaddr ptr %.0.i24.i.i.i.i.i to i64 ; 3 uses
  %spec.select.i.i.i.i26.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i21.i.i.i.i.i, i1 true) ; 3 uses
  %i.ehv = udiv i64 %spec.select.i.i.i.i26.i.i.i.i.i, 3600000000 ; 3 uses
  %i.ehw = udiv i64 %spec.select.i.i.i.i26.i.i.i.i.i, 60000000
  %.neg.i.i.i.i27.i.i.i.i.i = mul nsw i64 %i.ehv, -60
  %i.ehx = add nsw i64 %.neg.i.i.i.i27.i.i.i.i.i, %i.ehw ; 2 uses
  %.neg.i7.i.i.i28.i.i.i.i.i = mul nsw i64 %i.ehv, -3600000000
  %i.ehy = add nsw i64 %.neg.i7.i.i.i28.i.i.i.i.i, %spec.select.i.i.i.i26.i.i.i.i.i
  %.neg.i8.i.i.i29.i.i.i.i.i = mul nsw i64 %i.ehx, -60000000
  %i.ehz = add nsw i64 %i.ehy, %.neg.i8.i.i.i29.i.i.i.i.i ; 2 uses
  %i.eia = sdiv i64 %i.ehz, 1000000               ; 2 uses
  %.neg.i.i.i.i.i30.i.i.i.i.i = mul nsw i64 %i.eia, -1000000
  %i.eib = add nsw i64 %.neg.i.i.i.i.i30.i.i.i.i.i, %i.ehz ; 3 uses
  %i.eic = icmp sgt i64 %i.eib, 99
  br i1 %i.eic, label %.lr.ph.i.i.i.i56.i.i.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i.i.i

.lr.ph.i.i.i.i56.i.i.i.i.i:                       ; preds = %bb.apb, %.lr.ph.i.i.i.i56.i.i.i.i.i
  %.1.idx.i57.i.i.i.i.i = phi i64 [ %.1.add.i60.i.i.i.i.i, %.lr.ph.i.i.i.i56.i.i.i.i.i ], [ 0, %bb.apb ] ; 2 uses
  %.08.i.i.i.i58.i.i.i.i.i = phi i64 [ %i.eik, %.lr.ph.i.i.i.i56.i.i.i.i.i ], [ %i.eib, %bb.apb ] ; 3 uses
  %.1.ptr.i59.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i.i.i, i64 %.1.idx.i57.i.i.i.i.i
  %i.eid = urem i64 %.08.i.i.i.i58.i.i.i.i.i, 100
  %i.eie = shl nuw nsw i64 %i.eid, 1
  %i.eif = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eie ; 2 uses
  %i.eig = getelementptr inbounds nuw i8, ptr %i.eif, i64 1
  %i.eih = load i8, ptr %i.eig, align 1, !tbaa !66, !noalias !21177
  %i.eii = getelementptr inbounds i8, ptr %.1.ptr.i59.i.i.i.i.i, i64 -1
  store i8 %i.eih, ptr %i.eii, align 1, !tbaa !66, !noalias !21177
  %i.eij = load i8, ptr %i.eif, align 1, !tbaa !66, !noalias !21177
  %.1.add.i60.i.i.i.i.i = add nsw i64 %.1.idx.i57.i.i.i.i.i, -2 ; 3 uses
  %.ptr55.i61.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i.i.i, i64 %.1.add.i60.i.i.i.i.i
  store i8 %i.eij, ptr %.ptr55.i61.i.i.i.i.i, align 1, !tbaa !66, !noalias !21177
  %i.eik = udiv i64 %.08.i.i.i.i58.i.i.i.i.i, 100 ; 2 uses
  %i.eil = icmp samesign ugt i64 %.08.i.i.i.i58.i.i.i.i.i, 9999
  br i1 %i.eil, label %.lr.ph.i.i.i.i56.i.i.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i.i.i, !llvm.loop !21176

._crit_edge.i.i.i.i31.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i56.i.i.i.i.i, %bb.apb
  %.2.idx.i32.i.i.i.i.i = phi i64 [ 0, %bb.apb ], [ %.1.add.i60.i.i.i.i.i, %.lr.ph.i.i.i.i56.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i33.i.i.i.i.i = phi i64 [ %i.eib, %bb.apb ], [ %i.eik, %.lr.ph.i.i.i.i56.i.i.i.i.i ] ; 3 uses
  %i.eim = icmp sgt i64 %.0.lcssa.i.i.i.i33.i.i.i.i.i, 9
  br i1 %i.eim, label %bb.apc, label %bb.apd

bb.apc:                                           ; preds = %._crit_edge.i.i.i.i31.i.i.i.i.i
  %i.ein = shl nuw nsw i64 %.0.lcssa.i.i.i.i33.i.i.i.i.i, 1
  %i.eio = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ein ; 2 uses
  %i.eip = getelementptr inbounds nuw i8, ptr %i.eio, i64 1
  %i.eiq = load i8, ptr %i.eip, align 1, !tbaa !66, !noalias !21177
  %.2.add.i54.i.i.i.i.i = add nsw i64 %.2.idx.i32.i.i.i.i.i, -1 ; 2 uses
  %.ptr54.i55.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i.i.i, i64 %.2.add.i54.i.i.i.i.i
  store i8 %i.eiq, ptr %.ptr54.i55.i.i.i.i.i, align 1, !tbaa !66, !noalias !21177
  %i.eir = load i8, ptr %i.eio, align 1, !tbaa !66, !noalias !21177
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i

bb.apd:                                           ; preds = %._crit_edge.i.i.i.i31.i.i.i.i.i
  %i.eis = trunc i64 %.0.lcssa.i.i.i.i33.i.i.i.i.i to i8
  %i.eit = add i8 %i.eis, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i: ; preds = %bb.apd, %bb.apc
  %.3.idx.i35.i.i.i.i.i = phi i64 [ %.2.add.i54.i.i.i.i.i, %bb.apc ], [ %.2.idx.i32.i.i.i.i.i, %bb.apd ] ; 3 uses
  %.sink.i.i.i.i36.i.i.i.i.i = phi i8 [ %i.eir, %bb.apc ], [ %i.eit, %bb.apd ]
  %i.eiu = getelementptr i8, ptr %.0.i24.i.i.i.i.i, i64 %.3.idx.i35.i.i.i.i.i ; 2 uses
  %.ptr.i37.i.i.i.i.i = getelementptr i8, ptr %i.eiu, i64 -1
  store i8 %.sink.i.i.i.i36.i.i.i.i.i, ptr %.ptr.i37.i.i.i.i.i, align 1, !tbaa !66, !noalias !21177
  %i.eiv = icmp sgt i64 %.3.idx.i35.i.i.i.i.i, -5
  br i1 %i.eiv, label %.lr.ph.i.i.preheader.i50.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i

.lr.ph.i.i.preheader.i50.i.i.i.i.i:               ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i
  %i.eiw = add i64 %.3.idx.i35.i.i.i.i.i, %.063.i25.i.i.i.i.i ; 2 uses
  %i.eix = add i64 %i.eiw, -2
  %i.eiy = add i64 %.063.i25.i.i.i.i.i, -6
  %umin.i51.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.eix, i64 %i.eiy) ; 2 uses
  %i.eiz = sub i64 %umin.i51.i.i.i.i.i, %.063.i25.i.i.i.i.i
  %scevgep.i52.i.i.i.i.i = getelementptr i8, ptr %.0.i24.i.i.i.i.i, i64 %i.eiz ; 2 uses
  %i.eja = xor i64 %umin.i51.i.i.i.i.i, -1
  %i.ejb = add i64 %i.eiw, %i.eja
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i52.i.i.i.i.i, i8 48, i64 %i.ejb, i1 false), !tbaa !66, !noalias !21177
  %scevgep65.i53.i.i.i.i.i = getelementptr i8, ptr %scevgep.i52.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i50.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i
  %i.ejc = phi ptr [ %i.eiu, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i ], [ %scevgep65.i53.i.i.i.i.i, %.lr.ph.i.i.preheader.i50.i.i.i.i.i ] ; 3 uses
  %i.ejd = shl nsw i64 %i.eia, 1
  %i.eje = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ejd
  %i.ejf = getelementptr i8, ptr %i.ejc, i64 -5
  %i.ejg = load <2 x i8>, ptr %i.eje, align 1, !tbaa !66, !noalias !21177
  %i.ejh = shufflevector <2 x i8> %i.ejg, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.eji = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %i.ejh, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.eji, ptr %i.ejf, align 1, !tbaa !66, !noalias !21177
  %i.ejj = shl nsw i64 %i.ehx, 1
  %i.ejk = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ejj
  %i.ejl = shl nuw nsw i64 %i.ehv, 1
  %i.ejm = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ejl
  %i.ejn = add nsw i32 %.sroa.037.0.i22.i.i.i.i.i, 719468 ; 2 uses
  %i.ejo = icmp sgt i32 %.sroa.037.0.i22.i.i.i.i.i, -719469
  %i.ejp = add nuw nsw i32 %.sroa.037.0.i22.i.i.i.i.i, 573372
  %i.ejq = select i1 %i.ejo, i32 %i.ejn, i32 %i.ejp
  %i.ejr = sdiv i32 %i.ejq, 146097                ; 2 uses
  %.neg.i.i16.i38.i.i.i.i.i = mul nsw i32 %i.ejr, -146097
  %i.ejs = add nsw i32 %.neg.i.i16.i38.i.i.i.i.i, %i.ejn ; 5 uses
  %i.ejt = udiv i32 %i.ejs, 1460
  %i.eju = udiv i32 %i.ejs, 36524
  %i.ejv = udiv i32 %i.ejs, 146096
  %.neg33 = add nsw i32 %i.eju, %i.ejs
  %i.ejw = add nuw nsw i32 %i.ejv, %i.ejt
  %i.ejx = sub nsw i32 %.neg33, %i.ejw            ; 3 uses
  %i.ejy = udiv i32 %i.ejx, 365                   ; 2 uses
  %i.ejz = mul nsw i32 %i.ejr, 400
  %i.eka = add nsw i32 %i.ejy, %i.ejz
  %i.ekb = udiv i32 %i.ejx, 1460
  %i.ekc = udiv i32 %i.ejx, 36500
  %.neg36.i.i.i40.i.i.i.i.i = mul i32 %i.ejy, -365
  %.neg37.i.i.i41.i.i.i.i.i = sub nsw i32 %i.ejs, %i.ekb
  %.neg25.i.i.i42.i.i.i.i.i = add nsw i32 %.neg37.i.i.i41.i.i.i.i.i, %i.ekc
  %i.ekd = add i32 %.neg25.i.i.i42.i.i.i.i.i, %.neg36.i.i.i40.i.i.i.i.i ; 2 uses
  %i.eke = mul i32 %i.ekd, 5
  %i.ekf = add i32 %i.eke, 2                      ; 2 uses
  %i.ekg = udiv i32 %i.ekf, 153                   ; 2 uses
  %i.ekh = mul nuw i32 %i.ekg, 153
  %i.eki = add nuw i32 %i.ekh, 2
  %i.ekj = udiv i32 %i.eki, 5
  %i.ekk = sub i32 %i.ekd, %i.ekj
  %i.ekl = icmp ult i32 %i.ekf, 1530
  %.v.i.i.i43.i.i.i.i.i = select i1 %i.ekl, i32 3, i32 -9
  %i.ekm = add nsw i32 %.v.i.i.i43.i.i.i.i.i, %i.ekg ; 2 uses
  %i.ekn = icmp ult i32 %i.ekm, 3
  %i.eko = zext i1 %i.ekn to i32
  %i.ekp = add nsw i32 %i.eka, %i.eko
  %i.ekq = shl i32 %i.ekk, 24
  %.sroa.3.0.insert.ext.i.i.i44.i.i.i.i.i = add i32 %i.ekq, 16777216
  %i.ekr = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i44.i.i.i.i.i, 23
  %i.eks = zext nneg i32 %i.ekr to i64
  %i.ekt = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eks
  %i.eku = shl nsw i32 %i.ekm, 1
  %i.ekv = and i32 %i.eku, 510
  %i.ekw = zext nneg i32 %i.ekv to i64
  %i.ekx = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ekw
  %sext.i.i45.i.i.i.i.i = shl i32 %i.ekp, 16
  %i.eky = ashr exact i32 %sext.i.i45.i.i.i.i.i, 16 ; 2 uses
  %i.ekz = icmp slt i32 %i.eky, 0
  %i.ela = call i32 @llvm.abs.i32(i32 %i.eky, i1 true) ; 2 uses
  %.lhs.trunc.i.i46.i.i.i.i.i = trunc nuw i32 %i.ela to i16 ; 3 uses
  %i.elb = urem i16 %.lhs.trunc.i.i46.i.i.i.i.i, 100
  %i.elc = shl nuw nsw i16 %i.elb, 1
  %i.eld = zext nneg i16 %i.elc to i64
  %i.ele = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eld
  %i.elf = udiv i16 %.lhs.trunc.i.i46.i.i.i.i.i, 100
  %i.elg = urem i16 %i.elf, 100
  %i.elh = shl nuw nsw i16 %i.elg, 1
  %i.eli = zext nneg i16 %i.elh to i64
  %i.elj = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eli
  %i.elk = getelementptr i8, ptr %i.ejc, i64 -21  ; 2 uses
  %i.ell = load <2 x i8>, ptr %i.ejk, align 1, !tbaa !66, !noalias !21177
  %i.elm = load <2 x i8>, ptr %i.ejm, align 1, !tbaa !66, !noalias !21177
  %i.eln = load <2 x i8>, ptr %i.ekt, align 1, !tbaa !66, !noalias !21177
  %i.elo = load <2 x i8>, ptr %i.ekx, align 1, !tbaa !66, !noalias !21177
  %i.elp = load <2 x i8>, ptr %i.ele, align 1, !tbaa !66, !noalias !21177
  %i.elq = load <2 x i8>, ptr %i.elj, align 1, !tbaa !66, !noalias !21177
  %i.elr = shufflevector <2 x i8> %i.elq, <2 x i8> %i.elp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.els = shufflevector <16 x i8> %i.elr, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.elt = shufflevector <2 x i8> %i.elo, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.elu = shufflevector <16 x i8> %i.els, <16 x i8> %i.elt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.elv = shufflevector <2 x i8> %i.eln, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.elw = shufflevector <16 x i8> %i.elu, <16 x i8> %i.elv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.elx = shufflevector <2 x i8> %i.elm, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ely = shufflevector <16 x i8> %i.elw, <16 x i8> %i.elx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.elz = shufflevector <2 x i8> %i.ell, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ema = shufflevector <16 x i8> %i.ely, <16 x i8> %i.elz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.ema, ptr %i.elk, align 1, !tbaa !66, !noalias !21177
  %i.emb = icmp samesign ugt i32 %i.ela, 9999
  br i1 %i.emb, label %bb.ape, label %bb.apf

bb.ape:                                           ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %i.emc = udiv i16 %.lhs.trunc.i.i46.i.i.i.i.i, 10000
  %i.emd = trunc nuw nsw i16 %i.emc to i8
  %i.eme = or disjoint i8 %i.emd, 48
  %i.emf = getelementptr i8, ptr %i.ejc, i64 -22  ; 2 uses
  store i8 %i.eme, ptr %i.emf, align 1, !tbaa !66, !noalias !21177
  br label %bb.apf

bb.apf:                                           ; preds = %bb.ape, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %.4.i47.i.i.i.i.i = phi ptr [ %i.emf, %bb.ape ], [ %i.elk, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.ekz, label %bb.apg, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i

bb.apg:                                           ; preds = %bb.apf
  %i.emg = getelementptr inbounds i8, ptr %.4.i47.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.emg, align 1, !tbaa !66, !noalias !21177
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i: ; preds = %bb.apg, %bb.apf
  %.5.i49.i.i.i.i.i = phi ptr [ %i.emg, %bb.apg ], [ %.4.i47.i.i.i.i.i, %bb.apf ] ; 2 uses
  %i.emh = ptrtoint ptr %i.eht to i64
  %i.emi = ptrtoint ptr %.5.i49.i.i.i.i.i to i64
  %i.emj = sub i64 %i.emh, %i.emi
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_13TimestampTypeEvEENS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %94, i64 %i.emj, ptr nonnull %.5.i49.i.i.i.i.i)
          to label %.noexc11.i.i unwind label %bb.aqo, !noalias !21163

.noexc11.i.i:                                     ; preds = %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #28, !noalias !21177
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222

bb.aph:                                           ; preds = %bb.aoi
  %i.emk = sdiv i64 %.val7.i.i, 86400000000000    ; 3 uses
  %i.eml = trunc nsw i64 %i.emk to i32            ; 2 uses
  %i.emm = mul nsw i64 %i.emk, 86400000000000     ; 2 uses
  %.not53.i63.i.i.i.i.i = icmp sgt i64 %i.emm, %.val7.i.i
  br i1 %.not53.i63.i.i.i.i.i, label %bb.apj, label %bb.api

bb.api:                                           ; preds = %bb.aph
  %.neg.i.i.i64.i.i.i.i.i = mul nsw i64 %i.emk, -86400000000000
  %i.emn = add i64 %.neg.i.i.i64.i.i.i.i.i, %.val7.i.i
  br label %bb.apk

bb.apj:                                           ; preds = %bb.aph
  %.neg.i105.i.i.i.i.i = add i64 %.val7.i.i, 86400000000000
  %i.emo = sub i64 %.neg.i105.i.i.i.i.i, %i.emm
  %i.emp = add nsw i32 %i.eml, -1
  br label %bb.apk

bb.apk:                                           ; preds = %bb.apj, %bb.api
  %.sroa.036.0.i65.i.i.i.i.i = phi i64 [ %i.emn, %bb.api ], [ %i.emo, %bb.apj ]
  %.sroa.037.0.i66.i.i.i.i.i = phi i32 [ %i.eml, %bb.api ], [ %i.emp, %bb.apj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #28, !noalias !21180
  %i.emq = getelementptr inbounds nuw i8, ptr %90, i64 32 ; 2 uses
  %.not.i67.i.i.i.i.i = icmp eq i64 %.val5.i.i1188, 0
  br i1 %.not.i67.i.i.i.i.i, label %bb.apm, label %bb.apl

bb.apl:                                           ; preds = %bb.apk
  %i.emr = getelementptr inbounds nuw i8, ptr %90, i64 31 ; 2 uses
  store i8 90, ptr %i.emr, align 1, !tbaa !66, !noalias !21180
  br label %bb.apm

bb.apm:                                           ; preds = %bb.apl, %bb.apk
  %.0.i68.i.i.i.i.i = phi ptr [ %i.emq, %bb.apk ], [ %i.emr, %bb.apl ] ; 6 uses
  %.063.i69.i.i.i.i.i = ptrtoaddr ptr %.0.i68.i.i.i.i.i to i64 ; 3 uses
  %spec.select.i.i.i.i70.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i65.i.i.i.i.i, i1 true) ; 3 uses
  %i.ems = udiv i64 %spec.select.i.i.i.i70.i.i.i.i.i, 3600000000000 ; 3 uses
  %i.emt = udiv i64 %spec.select.i.i.i.i70.i.i.i.i.i, 60000000000
  %.neg.i.i.i.i71.i.i.i.i.i = mul nsw i64 %i.ems, -60
  %i.emu = add nsw i64 %.neg.i.i.i.i71.i.i.i.i.i, %i.emt ; 2 uses
  %.neg.i7.i.i.i72.i.i.i.i.i = mul nsw i64 %i.ems, -3600000000000
  %i.emv = add nsw i64 %.neg.i7.i.i.i72.i.i.i.i.i, %spec.select.i.i.i.i70.i.i.i.i.i
  %.neg.i8.i.i.i73.i.i.i.i.i = mul nsw i64 %i.emu, -60000000000
  %i.emw = add i64 %i.emv, %.neg.i8.i.i.i73.i.i.i.i.i ; 2 uses
  %i.emx = sdiv i64 %i.emw, 1000000000            ; 2 uses
  %.neg.i.i.i.i.i74.i.i.i.i.i = mul nsw i64 %i.emx, -1000000000
  %i.emy = add i64 %.neg.i.i.i.i.i74.i.i.i.i.i, %i.emw ; 3 uses
  %i.emz = icmp sgt i64 %i.emy, 99
  br i1 %i.emz, label %.lr.ph.i.i.i.i99.i.i.i.i.i, label %._crit_edge.i.i.i.i75.i.i.i.i.i

.lr.ph.i.i.i.i99.i.i.i.i.i:                       ; preds = %bb.apm, %.lr.ph.i.i.i.i99.i.i.i.i.i
  %.1.idx.i100.i.i.i.i.i = phi i64 [ %.1.add.i103.i.i.i.i.i, %.lr.ph.i.i.i.i99.i.i.i.i.i ], [ 0, %bb.apm ] ; 2 uses
  %.08.i.i.i.i101.i.i.i.i.i = phi i64 [ %i.enh, %.lr.ph.i.i.i.i99.i.i.i.i.i ], [ %i.emy, %bb.apm ] ; 3 uses
  %.1.ptr.i102.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i68.i.i.i.i.i, i64 %.1.idx.i100.i.i.i.i.i
  %i.ena = urem i64 %.08.i.i.i.i101.i.i.i.i.i, 100
  %i.enb = shl nuw nsw i64 %i.ena, 1
  %i.enc = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.enb ; 2 uses
  %i.end = getelementptr inbounds nuw i8, ptr %i.enc, i64 1
  %i.ene = load i8, ptr %i.end, align 1, !tbaa !66, !noalias !21180
  %i.enf = getelementptr inbounds i8, ptr %.1.ptr.i102.i.i.i.i.i, i64 -1
  store i8 %i.ene, ptr %i.enf, align 1, !tbaa !66, !noalias !21180
  %i.eng = load i8, ptr %i.enc, align 1, !tbaa !66, !noalias !21180
  %.1.add.i103.i.i.i.i.i = add nsw i64 %.1.idx.i100.i.i.i.i.i, -2 ; 3 uses
  %.ptr55.i104.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i68.i.i.i.i.i, i64 %.1.add.i103.i.i.i.i.i
  store i8 %i.eng, ptr %.ptr55.i104.i.i.i.i.i, align 1, !tbaa !66, !noalias !21180
  %i.enh = udiv i64 %.08.i.i.i.i101.i.i.i.i.i, 100 ; 2 uses
  %i.eni = icmp samesign ugt i64 %.08.i.i.i.i101.i.i.i.i.i, 9999
  br i1 %i.eni, label %.lr.ph.i.i.i.i99.i.i.i.i.i, label %._crit_edge.i.i.i.i75.i.i.i.i.i, !llvm.loop !21176

._crit_edge.i.i.i.i75.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i99.i.i.i.i.i, %bb.apm
  %.2.idx.i76.i.i.i.i.i = phi i64 [ 0, %bb.apm ], [ %.1.add.i103.i.i.i.i.i, %.lr.ph.i.i.i.i99.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i77.i.i.i.i.i = phi i64 [ %i.emy, %bb.apm ], [ %i.enh, %.lr.ph.i.i.i.i99.i.i.i.i.i ] ; 3 uses
  %i.enj = icmp sgt i64 %.0.lcssa.i.i.i.i77.i.i.i.i.i, 9
  br i1 %i.enj, label %bb.apn, label %bb.apo

bb.apn:                                           ; preds = %._crit_edge.i.i.i.i75.i.i.i.i.i
  %i.enk = shl nuw nsw i64 %.0.lcssa.i.i.i.i77.i.i.i.i.i, 1
  %i.enl = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.enk ; 2 uses
  %i.enm = getelementptr inbounds nuw i8, ptr %i.enl, i64 1
  %i.enn = load i8, ptr %i.enm, align 1, !tbaa !66, !noalias !21180
  %.2.add.i97.i.i.i.i.i = add nsw i64 %.2.idx.i76.i.i.i.i.i, -1 ; 2 uses
  %.ptr54.i98.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i68.i.i.i.i.i, i64 %.2.add.i97.i.i.i.i.i
  store i8 %i.enn, ptr %.ptr54.i98.i.i.i.i.i, align 1, !tbaa !66, !noalias !21180
  %i.eno = load i8, ptr %i.enl, align 1, !tbaa !66, !noalias !21180
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i78.i.i.i.i.i

bb.apo:                                           ; preds = %._crit_edge.i.i.i.i75.i.i.i.i.i
  %i.enp = trunc i64 %.0.lcssa.i.i.i.i77.i.i.i.i.i to i8
  %i.enq = add i8 %i.enp, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i78.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i78.i.i.i.i.i: ; preds = %bb.apo, %bb.apn
  %.3.idx.i79.i.i.i.i.i = phi i64 [ %.2.add.i97.i.i.i.i.i, %bb.apn ], [ %.2.idx.i76.i.i.i.i.i, %bb.apo ] ; 3 uses
  %.sink.i.i.i.i80.i.i.i.i.i = phi i8 [ %i.eno, %bb.apn ], [ %i.enq, %bb.apo ]
  %i.enr = getelementptr i8, ptr %.0.i68.i.i.i.i.i, i64 %.3.idx.i79.i.i.i.i.i ; 2 uses
  %.ptr.i81.i.i.i.i.i = getelementptr i8, ptr %i.enr, i64 -1
  store i8 %.sink.i.i.i.i80.i.i.i.i.i, ptr %.ptr.i81.i.i.i.i.i, align 1, !tbaa !66, !noalias !21180
  %i.ens = icmp sgt i64 %.3.idx.i79.i.i.i.i.i, -8
  br i1 %i.ens, label %.lr.ph.i.i.preheader.i93.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i

.lr.ph.i.i.preheader.i93.i.i.i.i.i:               ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i78.i.i.i.i.i
  %i.ent = add i64 %.3.idx.i79.i.i.i.i.i, %.063.i69.i.i.i.i.i ; 2 uses
  %i.enu = add i64 %i.ent, -2
  %i.env = add i64 %.063.i69.i.i.i.i.i, -9
  %umin.i94.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.enu, i64 %i.env) ; 2 uses
  %i.enw = sub i64 %umin.i94.i.i.i.i.i, %.063.i69.i.i.i.i.i
  %scevgep.i95.i.i.i.i.i = getelementptr i8, ptr %.0.i68.i.i.i.i.i, i64 %i.enw ; 2 uses
  %i.enx = xor i64 %umin.i94.i.i.i.i.i, -1
  %i.eny = add i64 %i.ent, %i.enx
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i95.i.i.i.i.i, i8 48, i64 %i.eny, i1 false), !tbaa !66, !noalias !21180
  %scevgep65.i96.i.i.i.i.i = getelementptr i8, ptr %scevgep.i95.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i93.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i78.i.i.i.i.i
  %i.enz = phi ptr [ %i.enr, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i78.i.i.i.i.i ], [ %scevgep65.i96.i.i.i.i.i, %.lr.ph.i.i.preheader.i93.i.i.i.i.i ] ; 3 uses
  %i.eoa = shl nsw i64 %i.emx, 1
  %i.eob = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eoa
  %i.eoc = getelementptr i8, ptr %i.enz, i64 -5
  %i.eod = load <2 x i8>, ptr %i.eob, align 1, !tbaa !66, !noalias !21180
  %i.eoe = shufflevector <2 x i8> %i.eod, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.eof = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %i.eoe, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.eof, ptr %i.eoc, align 1, !tbaa !66, !noalias !21180
  %i.eog = shl nsw i64 %i.emu, 1
  %i.eoh = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eog
  %i.eoi = shl nuw nsw i64 %i.ems, 1
  %i.eoj = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eoi
  %i.eok = add nsw i32 %.sroa.037.0.i66.i.i.i.i.i, 719468 ; 2 uses
  %i.eol = udiv i32 %i.eok, 146097                ; 2 uses
  %.neg.i.i16.i82.i.i.i.i.i = mul nsw i32 %i.eol, -146097
  %i.eom = add nsw i32 %.neg.i.i16.i82.i.i.i.i.i, %i.eok ; 5 uses
  %i.eon = udiv i32 %i.eom, 1460
  %i.eoo = udiv i32 %i.eom, 36524
  %i.eop = udiv i32 %i.eom, 146096
  %.neg43 = add nsw i32 %i.eoo, %i.eom
  %i.eoq = add nuw nsw i32 %i.eop, %i.eon
  %i.eor = sub nsw i32 %.neg43, %i.eoq            ; 3 uses
  %i.eos = udiv i32 %i.eor, 365                   ; 2 uses
  %i.eot = mul nuw nsw i32 %i.eol, 400
  %i.eou = add nuw nsw i32 %i.eos, %i.eot
  %i.eov = udiv i32 %i.eor, 1460
  %i.eow = udiv i32 %i.eor, 36500
  %.neg36.i.i.i84.i.i.i.i.i = mul i32 %i.eos, -365
  %.neg37.i.i.i85.i.i.i.i.i = sub nsw i32 %i.eom, %i.eov
  %.neg25.i.i.i86.i.i.i.i.i = add nsw i32 %.neg37.i.i.i85.i.i.i.i.i, %i.eow
  %i.eox = add i32 %.neg25.i.i.i86.i.i.i.i.i, %.neg36.i.i.i84.i.i.i.i.i ; 2 uses
  %i.eoy = mul i32 %i.eox, 5
  %i.eoz = add i32 %i.eoy, 2                      ; 2 uses
  %i.epa = udiv i32 %i.eoz, 153                   ; 2 uses
  %i.epb = mul nuw i32 %i.epa, 153
  %i.epc = add nuw i32 %i.epb, 2
  %i.epd = udiv i32 %i.epc, 5
  %i.epe = sub i32 %i.eox, %i.epd
  %i.epf = icmp ult i32 %i.eoz, 1530
  %.v.i.i.i87.i.i.i.i.i = select i1 %i.epf, i32 3, i32 -9
  %i.epg = add nsw i32 %.v.i.i.i87.i.i.i.i.i, %i.epa ; 2 uses
  %i.eph = icmp ult i32 %i.epg, 3
  %i.epi = zext i1 %i.eph to i32
  %i.epj = add nuw nsw i32 %i.eou, %i.epi
  %i.epk = shl i32 %i.epe, 24
  %.sroa.3.0.insert.ext.i.i.i88.i.i.i.i.i = add i32 %i.epk, 16777216
  %i.epl = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i88.i.i.i.i.i, 23
  %i.epm = zext nneg i32 %i.epl to i64
  %i.epn = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.epm
  %i.epo = shl nsw i32 %i.epg, 1
  %i.epp = and i32 %i.epo, 510
  %i.epq = zext nneg i32 %i.epp to i64
  %i.epr = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.epq
  %sext.i.i89.i.i.i.i.i = shl i32 %i.epj, 16
  %i.eps = ashr exact i32 %sext.i.i89.i.i.i.i.i, 16 ; 2 uses
  %i.ept = icmp slt i32 %i.eps, 0
  %i.epu = call i32 @llvm.abs.i32(i32 %i.eps, i1 true) ; 2 uses
  %.lhs.trunc.i.i90.i.i.i.i.i = trunc nuw i32 %i.epu to i16 ; 3 uses
  %i.epv = urem i16 %.lhs.trunc.i.i90.i.i.i.i.i, 100
  %i.epw = shl nuw nsw i16 %i.epv, 1
  %i.epx = zext nneg i16 %i.epw to i64
  %i.epy = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.epx
  %i.epz = udiv i16 %.lhs.trunc.i.i90.i.i.i.i.i, 100
  %i.eqa = urem i16 %i.epz, 100
  %i.eqb = shl nuw nsw i16 %i.eqa, 1
  %i.eqc = zext nneg i16 %i.eqb to i64
  %i.eqd = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eqc
  %i.eqe = getelementptr i8, ptr %i.enz, i64 -21  ; 2 uses
  %i.eqf = load <2 x i8>, ptr %i.eoh, align 1, !tbaa !66, !noalias !21180
  %i.eqg = load <2 x i8>, ptr %i.eoj, align 1, !tbaa !66, !noalias !21180
  %i.eqh = load <2 x i8>, ptr %i.epn, align 1, !tbaa !66, !noalias !21180
  %i.eqi = load <2 x i8>, ptr %i.epr, align 1, !tbaa !66, !noalias !21180
  %i.eqj = load <2 x i8>, ptr %i.epy, align 1, !tbaa !66, !noalias !21180
  %i.eqk = load <2 x i8>, ptr %i.eqd, align 1, !tbaa !66, !noalias !21180
  %i.eql = shufflevector <2 x i8> %i.eqk, <2 x i8> %i.eqj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eqm = shufflevector <16 x i8> %i.eql, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.eqn = shufflevector <2 x i8> %i.eqi, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eqo = shufflevector <16 x i8> %i.eqm, <16 x i8> %i.eqn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.eqp = shufflevector <2 x i8> %i.eqh, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eqq = shufflevector <16 x i8> %i.eqo, <16 x i8> %i.eqp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.eqr = shufflevector <2 x i8> %i.eqg, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eqs = shufflevector <16 x i8> %i.eqq, <16 x i8> %i.eqr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.eqt = shufflevector <2 x i8> %i.eqf, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.equ = shufflevector <16 x i8> %i.eqs, <16 x i8> %i.eqt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.equ, ptr %i.eqe, align 1, !tbaa !66, !noalias !21180
  %i.eqv = icmp samesign ugt i32 %i.epu, 9999
  br i1 %i.eqv, label %bb.app, label %bb.apq

bb.app:                                           ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %i.eqw = udiv i16 %.lhs.trunc.i.i90.i.i.i.i.i, 10000
  %i.eqx = trunc nuw nsw i16 %i.eqw to i8
  %i.eqy = or disjoint i8 %i.eqx, 48
  %i.eqz = getelementptr i8, ptr %i.enz, i64 -22  ; 2 uses
  store i8 %i.eqy, ptr %i.eqz, align 1, !tbaa !66, !noalias !21180
  br label %bb.apq

bb.apq:                                           ; preds = %bb.app, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %.4.i91.i.i.i.i.i = phi ptr [ %i.eqz, %bb.app ], [ %i.eqe, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.ept, label %bb.apr, label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZNS_12_GLOBAL__N_114FormatToBufferIS3_NS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISI_EEtlSO_EEESG_lOSI_.exit.i.i.i.i.i

bb.apr:                                           ; preds = %bb.apq
  %i.era = getelementptr inbounds i8, ptr %.4.i91.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.era, align 1, !tbaa !66, !noalias !21180
  br label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZNS_12_GLOBAL__N_114FormatToBufferIS3_NS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISI_EEtlSO_EEESG_lOSI_.exit.i.i.i.i.i

_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZNS_12_GLOBAL__N_114FormatToBufferIS3_NS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISI_EEtlSO_EEESG_lOSI_.exit.i.i.i.i.i: ; preds = %bb.apr, %bb.apq
  %.5.i92.i.i.i.i.i = phi ptr [ %i.era, %bb.apr ], [ %.4.i91.i.i.i.i.i, %bb.apq ] ; 2 uses
  %i.erb = ptrtoint ptr %i.emq to i64
  %i.erc = ptrtoint ptr %.5.i92.i.i.i.i.i to i64
  %i.erd = sub i64 %i.erb, %i.erc
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_13TimestampTypeEvEENS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %94, i64 %i.erd, ptr nonnull %.5.i92.i.i.i.i.i)
          to label %.noexc12.i.i unwind label %bb.aqo, !noalias !21163

.noexc12.i.i:                                     ; preds = %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZNS_12_GLOBAL__N_114FormatToBufferIS3_NS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISI_EEtlSO_EEESG_lOSI_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #28, !noalias !21180
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222

bb.aps:                                           ; preds = %bb.aoi
  %i.ere = add i64 %.val7.i.i, 1096193779200
  %spec.select.i.i106.i.i.i.i.i = icmp ult i64 %i.ere, 2068084742400
  %.sroa.gep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %89, i64 23 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %i.eyh = getelementptr inbounds nuw i8, ptr %i.eyg, i64 16
  %i.eyi = load ptr, ptr %i.eyh, align 8, !noalias !21157
  call void %i.eyi(ptr noundef nonnull align 8 dereferenceable(16) %i.eya) #28, !noalias !21157, !inline_history !21197
  %i.eyj = load ptr, ptr %i.eya, align 8, !tbaa !55, !noalias !21157
  %i.eyk = getelementptr inbounds nuw i8, ptr %i.eyj, i64 24
  %i.eyl = load ptr, ptr %i.eyk, align 8, !noalias !21157
  call void %i.eyl(ptr noundef nonnull align 8 dereferenceable(16) %i.eya) #28, !noalias !21157, !inline_history !21197
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1215

bb.arc:                                           ; preds = %bb.ara
  %i.eym = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66, !noalias !21157
  %.not.i.i.i.i.i14.i = icmp eq i8 %i.eym, 0
  br i1 %.not.i.i.i.i.i14.i, label %bb.are, label %bb.ard

bb.ard:                                           ; preds = %bb.arc
  %i.eyn = add nsw i32 %i.eye, -1
  store i32 %i.eyn, ptr %i.eyb, align 8, !tbaa !3, !noalias !21157
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1213

bb.are:                                           ; preds = %bb.arc
  %i.eyo = atomicrmw volatile add ptr %i.eyb, i32 -1 acq_rel, align 4, !noalias !21157
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1213

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1213: ; preds = %bb.are, %bb.ard
  %.0.i.i.i.i.i.i.i1214 = phi i32 [ %i.eye, %bb.ard ], [ %i.eyo, %bb.are ]
  %i.eyp = icmp eq i32 %.0.i.i.i.i.i.i.i1214, 1
  br i1 %i.eyp, label %bb.arf, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1215, !prof !209

bb.arf:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1213
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eya) #28, !noalias !21157
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1215

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1215: ; preds = %bb.arf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1213, %bb.arb, %bb.aqz
  store ptr null, ptr %0, align 8, !tbaa !84, !alias.scope !21198
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i1205

_ZN5arrow6StatusC2ERKS0_.exit.i1205:              ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1215, %bb.aqw
  %i.eyq = load ptr, ptr %96, align 8, !tbaa !84, !noalias !21157 ; 2 uses
  %i.eyr = icmp eq ptr %i.eyq, null
  br i1 %i.eyr, label %bb.arg, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1206, !prof !218

bb.arg:                                           ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i1205
  %i.eys = load ptr, ptr %i.ewc, align 8, !tbaa !201, !noalias !21157 ; 8 uses
  %.not.i.i.i.i.i19.i = icmp eq ptr %i.eys, null
  br i1 %.not.i.i.i.i.i19.i, label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_13TimestampTypeEEENS_6StatusERKT_.exit, label %bb.arh

bb.arh:                                           ; preds = %bb.arg
  %i.eyt = getelementptr inbounds nuw i8, ptr %i.eys, i64 8 ; 4 uses
  %i.eyu = load atomic i64, ptr %i.eyt acquire, align 8 ; 2 uses
  %i.eyv = icmp eq i64 %i.eyu, 4294967297
  %i.eyw = trunc i64 %i.eyu to i32                ; 2 uses
  br i1 %i.eyv, label %bb.ari, label %bb.arj

bb.ari:                                           ; preds = %bb.arh
  store i32 0, ptr %i.eyt, align 8, !tbaa !205
  %i.eyx = getelementptr inbounds nuw i8, ptr %i.eys, i64 12
  store i32 0, ptr %i.eyx, align 4, !tbaa !207
  %i.eyy = load ptr, ptr %i.eys, align 8, !tbaa !55
  %i.eyz = getelementptr inbounds nuw i8, ptr %i.eyy, i64 16
  %i.eza = load ptr, ptr %i.eyz, align 8
  call void %i.eza(ptr noundef nonnull align 8 dereferenceable(16) %i.eys) #28, !inline_history !21201
  %i.ezb = load ptr, ptr %i.eys, align 8, !tbaa !55
  %i.ezc = getelementptr inbounds nuw i8, ptr %i.ezb, i64 24
  %i.ezd = load ptr, ptr %i.ezc, align 8
  call void %i.ezd(ptr noundef nonnull align 8 dereferenceable(16) %i.eys) #28, !inline_history !21201
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1210

bb.arj:                                           ; preds = %bb.arh
  %i.eze = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66, !noalias !21157
  %.not.i.i.i.i.i.i.i1207 = icmp eq i8 %i.eze, 0
  br i1 %.not.i.i.i.i.i.i.i1207, label %bb.arl, label %bb.ark

bb.ark:                                           ; preds = %bb.arj
  %i.ezf = add nsw i32 %i.eyw, -1
  store i32 %i.ezf, ptr %i.eyt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i1208

bb.arl:                                           ; preds = %bb.arj
  %i.ezg = atomicrmw volatile add ptr %i.eyt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i1208

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i1208: ; preds = %bb.arl, %bb.ark
  %.0.i.i.i.i.i.i.i.i1209 = phi i32 [ %i.eyw, %bb.ark ], [ %i.ezg, %bb.arl ]
  %i.ezh = icmp eq i32 %.0.i.i.i.i.i.i.i.i1209, 1
  br i1 %i.ezh, label %bb.arm, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1210, !prof !209

bb.arm:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i1208
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eys) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1210

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1210: ; preds = %bb.arm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i1208, %bb.ari
  %.pr.i.pr.i1211 = load ptr, ptr %96, align 8, !tbaa !84, !noalias !21157 ; 2 uses
  %.not.i.i20.i = icmp eq ptr %.pr.i.pr.i1211, null
  br i1 %.not.i.i20.i, label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_13TimestampTypeEEENS_6StatusERKT_.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1206, !prof !300

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1206: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1210, %_ZN5arrow6StatusC2ERKS0_.exit.i1205
  %i.ezi = phi ptr [ %.pr.i.pr.i1211, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1210 ], [ %i.eyq, %_ZN5arrow6StatusC2ERKS0_.exit.i1205 ]
  %i.ezj = getelementptr inbounds nuw i8, ptr %i.ezi, i64 1
  %i.ezk = load i8, ptr %i.ezj, align 1, !tbaa !262, !range !82, !noundef !83
  %i.ezl = trunc nuw i8 %i.ezk to i1
  br i1 %i.ezl, label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_13TimestampTypeEEENS_6StatusERKT_.exit, label %bb.arn

bb.arn:                                           ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1206
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %96) #28
  br label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_13TimestampTypeEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_13TimestampTypeEEENS_6StatusERKT_.exit: ; preds = %bb.arg, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1210, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1206, %bb.arn
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #28, !noalias !21157
  call void @llvm.lifetime.end.p0(ptr nonnull %97)
  br label %bb.byj

bb.aro:                                           ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21202)
  call void @llvm.lifetime.start.p0(ptr nonnull %88)
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #28, !noalias !21202
  %i.ezm = load ptr, ptr %1, align 8, !tbaa !7282, !noalias !21202, !nonnull !83, !align !731 ; 3 uses
  %i.ezn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ezo = load ptr, ptr %i.ezn, align 8, !tbaa !7666, !noalias !21202, !nonnull !83, !align !731 ; 2 uses
  %i.ezp = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.ezq = getelementptr inbounds nuw i8, ptr %i.ezo, i64 8
  %i.ezr = load ptr, ptr %i.ezq, align 8, !tbaa !201, !noalias !21202 ; 2 uses
  %i.ezs = load <2 x ptr>, ptr %i.ezo, align 8, !tbaa !200, !noalias !21202
  store <2 x ptr> %i.ezs, ptr %88, align 16, !tbaa !200, !noalias !21202
  %.not.i.i.i.i1228 = icmp eq ptr %i.ezr, null
  br i1 %.not.i.i.i.i1228, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1230, label %bb.arp

bb.arp:                                           ; preds = %bb.aro
  %i.ezt = getelementptr inbounds nuw i8, ptr %i.ezr, i64 8 ; 3 uses
  %i.ezu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66, !noalias !21202
  %.not.i.i.i.i.i1229 = icmp eq i8 %i.ezu, 0
  br i1 %.not.i.i.i.i.i1229, label %bb.arr, label %bb.arq

bb.arq:                                           ; preds = %bb.arp
  %i.ezv = load i32, ptr %i.ezt, align 4, !tbaa !3, !noalias !21202
  %i.ezw = add nsw i32 %i.ezv, 1
  store i32 %i.ezw, ptr %i.ezt, align 4, !tbaa !3, !noalias !21202
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1230

bb.arr:                                           ; preds = %bb.arp
  %i.ezx = atomicrmw volatile add ptr %i.ezt, i32 1 acq_rel, align 4, !noalias !21202 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1230

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1230: ; preds = %bb.arr, %bb.arq, %bb.aro
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21205)
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #28, !noalias !21208
  %i.ezy = getelementptr inbounds nuw i8, ptr %i.ezm, i64 24
  %i.ezz = load ptr, ptr %i.ezy, align 8, !tbaa !33, !noalias !21208
  %i.faa = getelementptr inbounds nuw i8, ptr %i.ezz, i64 72
  %i.fab = load i32, ptr %i.faa, align 8, !tbaa !6936, !noalias !21208
  %i.fac = getelementptr inbounds nuw i8, ptr %i.ezm, i64 40
  %.val3.i.i1231 = load i8, ptr %i.fac, align 8, !tbaa !75, !range !82, !noalias !21208, !noundef !83
  %i.fad = getelementptr inbounds nuw i8, ptr %i.ezm, i64 44
  %.val4.i.i = load i32, ptr %i.fad, align 4, !noalias !21208 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %85), !noalias !21208
  %i.fae = trunc nuw i8 %.val3.i.i1231 to i1
  br i1 %i.fae, label %bb.aru, label %._crit_edge.i.i.i.i.i1232

._crit_edge.i.i.i.i.i1232:                        ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1230
  %i.faf = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 6 uses
  store ptr %i.faf, ptr %85, align 8, !tbaa !198, !noalias !21209
  store i32 1819047278, ptr %i.faf, align 8, !noalias !21209
  %i.fag = getelementptr inbounds nuw i8, ptr %85, i64 8
  store i64 4, ptr %i.fag, align 8, !tbaa !199, !noalias !21209
  %i.fah = getelementptr inbounds nuw i8, ptr %85, i64 20
  store i8 0, ptr %i.fah, align 4, !tbaa !66, !noalias !21209
  invoke void @_ZN5arrow6Buffer10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.9") align 8 %86, ptr noundef nonnull %85)
          to label %bb.ars unwind label %bb.art, !noalias !21208

bb.ars:                                           ; preds = %._crit_edge.i.i.i.i.i1232
  %i.fai = load ptr, ptr %85, align 8, !tbaa !62, !noalias !21209 ; 2 uses
  %i.faj = icmp eq ptr %i.fai, %i.faf
  br i1 %i.faj, label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1238: ; preds = %bb.ars
  %i.fak = load i64, ptr %i.faf, align 8, !tbaa !66, !noalias !21209
  %i.fal = add i64 %i.fak, 1
  call void @_ZdlPvm(ptr noundef %i.fai, i64 noundef %i.fal) #29, !noalias !21208
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.art:                                           ; preds = %._crit_edge.i.i.i.i.i1232
  %i.fam = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fan = load ptr, ptr %85, align 8, !tbaa !62, !noalias !21209 ; 2 uses
  %i.fao = icmp eq ptr %i.fan, %i.faf
  br i1 %i.fao, label %.body.i1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i1233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i1233: ; preds = %bb.art
  %i.fap = load i64, ptr %i.faf, align 8, !tbaa !66, !noalias !21209
  %i.faq = add i64 %i.fap, 1
  call void @_ZdlPvm(ptr noundef %i.fan, i64 noundef %i.faq) #29, !noalias !21208
  br label %.body.i1234

bb.aru:                                           ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1230
  switch i32 %i.fab, label %bb.ash [
    i32 3, label %bb.asd
    i32 1, label %bb.arv
    i32 2, label %bb.arz
  ]

bb.arv:                                           ; preds = %bb.aru
  %199 = ptrtoaddr ptr %84 to i64                 ; 3 uses
  %spec.select.i.i.i.i.i.i.i1268 = icmp ult i32 %.val4.i.i, 86400000
  br i1 %spec.select.i.i.i.i.i.i.i1268, label %bb.arw, label %.invoke.i, !prof !218

bb.arw:                                           ; preds = %bb.arv
  %i.far = zext nneg i32 %.val4.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #28, !noalias !21212
  %.ptr26.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %84, i64 12
  %i.fas = udiv i32 %.val4.i.i, 3600000
  %.zext.i.i.i.i.i.i = zext nneg i32 %i.fas to i64 ; 3 uses
  %i.fat = udiv i32 %.val4.i.i, 60000
  %.zext23.i.i.i.i.i.i = zext nneg i32 %i.fat to i64
  %.neg.i.i.i.i.i.i.i.i.i1269 = mul nsw i64 %.zext.i.i.i.i.i.i, -60
  %i.fau = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i1269, %.zext23.i.i.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i.i.i.i.i.i1270 = mul nsw i64 %.zext.i.i.i.i.i.i, -3600000
  %i.fav = add nsw i64 %.neg.i7.i.i.i.i.i.i.i.i1270, %i.far
  %.neg.i8.i.i.i.i.i.i.i.i1271 = mul nsw i64 %i.fau, -60000
  %i.faw = add nsw i64 %i.fav, %.neg.i8.i.i.i.i.i.i.i.i1271 ; 2 uses
  %.lhs.trunc24.i.i.i.i.i.i = trunc nsw i64 %i.faw to i32
  %i.fax = sdiv i32 %.lhs.trunc24.i.i.i.i.i.i, 1000
  %.sext.i.i.i.i.i.i = sext i32 %i.fax to i64     ; 2 uses
  %.neg.i.i.i.i.i.i.i.i.i.i1272 = mul nsw i64 %.sext.i.i.i.i.i.i, -1000
  %i.fay = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i1272, %i.faw ; 3 uses
  %i.faz = icmp sgt i64 %i.fay, 99
  br i1 %i.faz, label %.lr.ph.i.i.i.i.i.i.i.i.i1286, label %._crit_edge.i.i.i.i.i.i.i.i.i1273

.lr.ph.i.i.i.i.i.i.i.i.i1286:                     ; preds = %bb.arw, %.lr.ph.i.i.i.i.i.i.i.i.i1286
  %.0.idx.i.i.i.i.i.i = phi i64 [ %.0.add.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i1286 ], [ 12, %bb.arw ] ; 2 uses
  %.08.i.i.i.i.i.i.i.i.i1287 = phi i64 [ %i.fbh, %.lr.ph.i.i.i.i.i.i.i.i.i1286 ], [ %i.fay, %bb.arw ] ; 3 uses
  %.0.ptr.i.i.i.i.i.i = getelementptr inbounds i8, ptr %84, i64 %.0.idx.i.i.i.i.i.i
  %i.fba = urem i64 %.08.i.i.i.i.i.i.i.i.i1287, 100
  %i.fbb = shl nuw nsw i64 %i.fba, 1
  %i.fbc = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fbb ; 2 uses
  %i.fbd = getelementptr inbounds nuw i8, ptr %i.fbc, i64 1
  %i.fbe = load i8, ptr %i.fbd, align 1, !tbaa !66, !noalias !21212
  %i.fbf = getelementptr inbounds i8, ptr %.0.ptr.i.i.i.i.i.i, i64 -1
  store i8 %i.fbe, ptr %i.fbf, align 1, !tbaa !66, !noalias !21212
  %i.fbg = load i8, ptr %i.fbc, align 1, !tbaa !66, !noalias !21212
  %.0.add.i.i.i.i.i.i = add nsw i64 %.0.idx.i.i.i.i.i.i, -2 ; 3 uses
  %.ptr27.i.i.i.i.i.i = getelementptr inbounds i8, ptr %84, i64 %.0.add.i.i.i.i.i.i
  store i8 %i.fbg, ptr %.ptr27.i.i.i.i.i.i, align 1, !tbaa !66, !noalias !21212
  %i.fbh = udiv i64 %.08.i.i.i.i.i.i.i.i.i1287, 100 ; 2 uses
  %i.fbi = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i.i.i1287, 9999
  br i1 %i.fbi, label %.lr.ph.i.i.i.i.i.i.i.i.i1286, label %._crit_edge.i.i.i.i.i.i.i.i.i1273, !llvm.loop !21176

._crit_edge.i.i.i.i.i.i.i.i.i1273:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1286, %bb.arw
  %.1.idx.i.i.i.i.i.i1274 = phi i64 [ 12, %bb.arw ], [ %.0.add.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i1286 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i1275 = phi i64 [ %i.fay, %bb.arw ], [ %i.fbh, %.lr.ph.i.i.i.i.i.i.i.i.i1286 ] ; 3 uses
  %i.fbj = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i1275, 9
  br i1 %i.fbj, label %bb.arx, label %bb.ary

bb.arx:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i1273
  %i.fbk = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i1275, 1
  %i.fbl = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fbk ; 2 uses
  %i.fbm = getelementptr inbounds nuw i8, ptr %i.fbl, i64 1
  %i.fbn = load i8, ptr %i.fbm, align 1, !tbaa !66, !noalias !21212
  %.1.add.i.i.i.i.i.i1285 = add nsw i64 %.1.idx.i.i.i.i.i.i1274, -1 ; 2 uses
  %.ptr25.i.i.i.i.i.i = getelementptr inbounds i8, ptr %84, i64 %.1.add.i.i.i.i.i.i1285
  store i8 %i.fbn, ptr %.ptr25.i.i.i.i.i.i, align 1, !tbaa !66, !noalias !21212
  %i.fbo = load i8, ptr %i.fbl, align 1, !tbaa !66, !noalias !21212
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1276

bb.ary:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i1273
  %i.fbp = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i.i1275 to i8
  %i.fbq = add i8 %i.fbp, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1276

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1276: ; preds = %bb.ary, %bb.arx
  %.2.idx.i.i.i.i.i.i1277 = phi i64 [ %.1.add.i.i.i.i.i.i1285, %bb.arx ], [ %.1.idx.i.i.i.i.i.i1274, %bb.ary ] ; 3 uses
  %.sink.i.i.i.i.i.i.i.i.i1278 = phi i8 [ %i.fbo, %bb.arx ], [ %i.fbq, %bb.ary ]
  %i.fbr = getelementptr i8, ptr %84, i64 %.2.idx.i.i.i.i.i.i1277 ; 2 uses
  %.ptr.i.i.i.i.i.i1279 = getelementptr i8, ptr %i.fbr, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i.i.i1278, ptr %.ptr.i.i.i.i.i.i1279, align 1, !tbaa !66, !noalias !21212
  %i.fbs = icmp sgt i64 %.2.idx.i.i.i.i.i.i1277, 10
  br i1 %i.fbs, label %.lr.ph.i.i.preheader.i.i.i.i.i.i1282, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1280

.lr.ph.i.i.preheader.i.i.i.i.i.i1282:             ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1276
  %i.fbt = add i64 %.2.idx.i.i.i.i.i.i1277, %199  ; 2 uses
  %i.fbu = add i64 %i.fbt, -2
  %i.fbv = add nuw i64 %199, 9
  %umin.i.i.i.i.i.i1283 = call i64 @llvm.umin.i64(i64 %i.fbu, i64 %i.fbv) ; 2 uses
  %i.fbw = sub i64 %umin.i.i.i.i.i.i1283, %199
  %scevgep.i.i.i.i.i.i1284 = getelementptr i8, ptr %84, i64 %i.fbw ; 2 uses
  %i.fbx = xor i64 %umin.i.i.i.i.i.i1283, -1
  %i.fby = add i64 %i.fbt, %i.fbx
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i.i.i1284, i8 48, i64 %i.fby, i1 false), !tbaa !66, !noalias !21212
  %scevgep31.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i.i.i1284, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1280

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1280: ; preds = %.lr.ph.i.i.preheader.i.i.i.i.i.i1282, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1276
  %i.fbz = phi ptr [ %i.fbr, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1276 ], [ %scevgep31.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i.i1282 ] ; 2 uses
  %i.fca = shl nsw i64 %.sext.i.i.i.i.i.i, 1
  %i.fcb = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fca
  %i.fcc = shl nsw i64 %i.fau, 1
  %i.fcd = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fcc
  %i.fce = shl nuw nsw i64 %.zext.i.i.i.i.i.i, 1
  %i.fcf = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fce ; 2 uses
  %i.fcg = getelementptr inbounds nuw i8, ptr %i.fcf, i64 1
  %i.fch = load i8, ptr %i.fcg, align 1, !tbaa !66, !noalias !21212
  %i.fci = getelementptr i8, ptr %i.fbz, i64 -9
  %i.fcj = load <2 x i8>, ptr %i.fcb, align 1, !tbaa !66, !noalias !21212
  %i.fck = load <2 x i8>, ptr %i.fcd, align 1, !tbaa !66, !noalias !21212
  %i.fcl = shufflevector <2 x i8> %i.fck, <2 x i8> %i.fcj, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.fcm = shufflevector <8 x i8> %i.fcl, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.fcn = insertelement <8 x i8> %i.fcm, i8 %i.fch, i64 0
  store <8 x i8> %i.fcn, ptr %i.fci, align 1, !tbaa !66, !noalias !21212
  %i.fco = load i8, ptr %i.fcf, align 1, !tbaa !66, !noalias !21212
  %i.fcp = getelementptr i8, ptr %i.fbz, i64 -10  ; 3 uses
  store i8 %i.fco, ptr %i.fcp, align 1, !tbaa !66, !noalias !21212
  %i.fcq = ptrtoint ptr %.ptr26.i.i.i.i.i.i to i64
  %i.fcr = ptrtoint ptr %i.fcp to i64
  %i.fcs = sub i64 %i.fcq, %i.fcr
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %86, i64 %i.fcs, ptr nonnull %i.fcp)
          to label %.noexc9.i1281 unwind label %bb.atg, !noalias !21202

.noexc9.i1281:                                    ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1280
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #28, !noalias !21212
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.arz:                                           ; preds = %bb.aru
  %200 = ptrtoaddr ptr %83 to i64                 ; 3 uses
  %spec.select.i.i15.i.i.i.i.i = icmp sgt i32 %.val4.i.i, -1
  br i1 %spec.select.i.i15.i.i.i.i.i, label %bb.asa, label %.invoke.i, !prof !218

bb.asa:                                           ; preds = %bb.arz
  %i.fct = zext nneg i32 %.val4.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #28, !noalias !21219
  %.ptr24.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %83, i64 15
  %i.fcu = udiv i32 %.val4.i.i, 60000000
  %.zext.i16.i.i.i.i.i = zext nneg i32 %i.fcu to i64 ; 2 uses
  %.neg.i8.i.i.i17.i.i.i.i.i = mul nsw i64 %.zext.i16.i.i.i.i.i, -60000000
  %i.fcv = add nsw i64 %.neg.i8.i.i.i17.i.i.i.i.i, %i.fct ; 2 uses
  %.lhs.trunc22.i.i.i.i.i.i = trunc nsw i64 %i.fcv to i32
  %i.fcw = sdiv i32 %.lhs.trunc22.i.i.i.i.i.i, 1000000
  %.sext.i18.i.i.i.i.i = sext i32 %i.fcw to i64   ; 2 uses
  %.neg.i.i.i.i.i19.i.i.i.i.i = mul nsw i64 %.sext.i18.i.i.i.i.i, -1000000
  %i.fcx = add nsw i64 %.neg.i.i.i.i.i19.i.i.i.i.i, %i.fcv ; 3 uses
  %i.fcy = icmp sgt i64 %i.fcx, 99
  br i1 %i.fcy, label %.lr.ph.i.i.i.i31.i.i.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i.i.i

.lr.ph.i.i.i.i31.i.i.i.i.i:                       ; preds = %bb.asa, %.lr.ph.i.i.i.i31.i.i.i.i.i
  %.0.idx.i32.i.i.i.i.i = phi i64 [ %.0.add.i35.i.i.i.i.i, %.lr.ph.i.i.i.i31.i.i.i.i.i ], [ 15, %bb.asa ] ; 2 uses
  %.08.i.i.i.i33.i.i.i.i.i = phi i64 [ %i.fdg, %.lr.ph.i.i.i.i31.i.i.i.i.i ], [ %i.fcx, %bb.asa ] ; 3 uses
  %.0.ptr.i34.i.i.i.i.i = getelementptr inbounds i8, ptr %83, i64 %.0.idx.i32.i.i.i.i.i
  %i.fcz = urem i64 %.08.i.i.i.i33.i.i.i.i.i, 100
  %i.fda = shl nuw nsw i64 %i.fcz, 1
  %i.fdb = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fda ; 2 uses
  %i.fdc = getelementptr inbounds nuw i8, ptr %i.fdb, i64 1
  %i.fdd = load i8, ptr %i.fdc, align 1, !tbaa !66, !noalias !21219
  %i.fde = getelementptr inbounds i8, ptr %.0.ptr.i34.i.i.i.i.i, i64 -1
  store i8 %i.fdd, ptr %i.fde, align 1, !tbaa !66, !noalias !21219
  %i.fdf = load i8, ptr %i.fdb, align 1, !tbaa !66, !noalias !21219
  %.0.add.i35.i.i.i.i.i = add nsw i64 %.0.idx.i32.i.i.i.i.i, -2 ; 3 uses
  %.ptr25.i36.i.i.i.i.i = getelementptr inbounds i8, ptr %83, i64 %.0.add.i35.i.i.i.i.i
  store i8 %i.fdf, ptr %.ptr25.i36.i.i.i.i.i, align 1, !tbaa !66, !noalias !21219
  %i.fdg = udiv i64 %.08.i.i.i.i33.i.i.i.i.i, 100 ; 2 uses
  %i.fdh = icmp samesign ugt i64 %.08.i.i.i.i33.i.i.i.i.i, 9999
  br i1 %i.fdh, label %.lr.ph.i.i.i.i31.i.i.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i.i.i, !llvm.loop !21176

._crit_edge.i.i.i.i20.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i31.i.i.i.i.i, %bb.asa
  %.1.idx.i21.i.i.i.i.i = phi i64 [ 15, %bb.asa ], [ %.0.add.i35.i.i.i.i.i, %.lr.ph.i.i.i.i31.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i22.i.i.i.i.i = phi i64 [ %i.fcx, %bb.asa ], [ %i.fdg, %.lr.ph.i.i.i.i31.i.i.i.i.i ] ; 3 uses
  %i.fdi = icmp sgt i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i, 9
  br i1 %i.fdi, label %bb.asb, label %bb.asc

bb.asb:                                           ; preds = %._crit_edge.i.i.i.i20.i.i.i.i.i
  %i.fdj = shl nuw nsw i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i, 1
  %i.fdk = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fdj ; 2 uses
  %i.fdl = getelementptr inbounds nuw i8, ptr %i.fdk, i64 1
  %i.fdm = load i8, ptr %i.fdl, align 1, !tbaa !66, !noalias !21219
  %.1.add.i30.i.i.i.i.i = add nsw i64 %.1.idx.i21.i.i.i.i.i, -1 ; 2 uses
  %.ptr23.i.i.i.i.i.i = getelementptr inbounds i8, ptr %83, i64 %.1.add.i30.i.i.i.i.i
  store i8 %i.fdm, ptr %.ptr23.i.i.i.i.i.i, align 1, !tbaa !66, !noalias !21219
  %i.fdn = load i8, ptr %i.fdk, align 1, !tbaa !66, !noalias !21219
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i

bb.asc:                                           ; preds = %._crit_edge.i.i.i.i20.i.i.i.i.i
  %i.fdo = trunc i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i to i8
  %i.fdp = add i8 %i.fdo, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i: ; preds = %bb.asc, %bb.asb
  %.2.idx.i24.i.i.i.i.i = phi i64 [ %.1.add.i30.i.i.i.i.i, %bb.asb ], [ %.1.idx.i21.i.i.i.i.i, %bb.asc ] ; 3 uses
  %.sink.i.i.i.i25.i.i.i.i.i = phi i8 [ %i.fdn, %bb.asb ], [ %i.fdp, %bb.asc ]
  %i.fdq = getelementptr i8, ptr %83, i64 %.2.idx.i24.i.i.i.i.i ; 2 uses
  %.ptr.i26.i.i.i.i.i = getelementptr i8, ptr %i.fdq, i64 -1
  store i8 %.sink.i.i.i.i25.i.i.i.i.i, ptr %.ptr.i26.i.i.i.i.i, align 1, !tbaa !66, !noalias !21219
  %i.fdr = icmp sgt i64 %.2.idx.i24.i.i.i.i.i, 10
  br i1 %i.fdr, label %.lr.ph.i.i.preheader.i27.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1267

.lr.ph.i.i.preheader.i27.i.i.i.i.i:               ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i
  %i.fds = add i64 %.2.idx.i24.i.i.i.i.i, %200    ; 2 uses
  %i.fdt = add i64 %i.fds, -2
  %i.fdu = add nuw i64 %200, 9
  %umin.i28.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.fdt, i64 %i.fdu) ; 2 uses
  %i.fdv = sub i64 %umin.i28.i.i.i.i.i, %200
  %scevgep.i29.i.i.i.i.i = getelementptr i8, ptr %83, i64 %i.fdv ; 2 uses
  %i.fdw = xor i64 %umin.i28.i.i.i.i.i, -1
  %i.fdx = add i64 %i.fds, %i.fdw
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i29.i.i.i.i.i, i8 48, i64 %i.fdx, i1 false), !tbaa !66, !noalias !21219
  %scevgep29.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i29.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1267

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1267: ; preds = %.lr.ph.i.i.preheader.i27.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i
  %i.fdy = phi ptr [ %i.fdq, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i ], [ %scevgep29.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i27.i.i.i.i.i ] ; 2 uses
  %i.fdz = shl nsw i64 %.sext.i18.i.i.i.i.i, 1
  %i.fea = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fdz
  %i.feb = shl nuw nsw i64 %.zext.i16.i.i.i.i.i, 1
  %i.fec = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.feb
  %i.fed = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 1), align 1, !tbaa !66, !noalias !21219
  %i.fee = getelementptr i8, ptr %i.fdy, i64 -9
  %i.fef = load <2 x i8>, ptr %i.fea, align 1, !tbaa !66, !noalias !21219
  %i.feg = load <2 x i8>, ptr %i.fec, align 1, !tbaa !66, !noalias !21219
  %i.feh = shufflevector <2 x i8> %i.feg, <2 x i8> %i.fef, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.fei = shufflevector <8 x i8> %i.feh, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.fej = insertelement <8 x i8> %i.fei, i8 %i.fed, i64 0
  store <8 x i8> %i.fej, ptr %i.fee, align 1, !tbaa !66, !noalias !21219
  %i.fek = load i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, align 1, !tbaa !66, !noalias !21219
  %i.fel = getelementptr i8, ptr %i.fdy, i64 -10  ; 3 uses
  store i8 %i.fek, ptr %i.fel, align 1, !tbaa !66, !noalias !21219
  %i.fem = ptrtoint ptr %.ptr24.i.i.i.i.i.i to i64
  %i.fen = ptrtoint ptr %i.fel to i64
  %i.feo = sub i64 %i.fem, %i.fen
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %86, i64 %i.feo, ptr nonnull %i.fel)
          to label %.noexc11.i unwind label %bb.atg, !noalias !21202

.noexc11.i:                                       ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1267
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #28, !noalias !21219
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.asd:                                           ; preds = %bb.aru
  %201 = ptrtoaddr ptr %82 to i64                 ; 3 uses
  %spec.select.i.i37.i.i.i.i.i = icmp sgt i32 %.val4.i.i, -1
  br i1 %spec.select.i.i37.i.i.i.i.i, label %bb.ase, label %.invoke.i, !prof !218

bb.ase:                                           ; preds = %bb.asd
  %i.fep = zext nneg i32 %.val4.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #28, !noalias !21222
  %.ptr23.i38.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %82, i64 18
  %i.feq = udiv i32 %.val4.i.i, 1000000000
  %.zext.i39.i.i.i.i.i = zext nneg i32 %i.feq to i64 ; 2 uses
  %.neg.i.i.i.i.i40.i.i.i.i.i = mul nsw i64 %.zext.i39.i.i.i.i.i, -1000000000
  %i.fer = add nsw i64 %.neg.i.i.i.i.i40.i.i.i.i.i, %i.fep ; 3 uses
  %i.fes = icmp sgt i64 %i.fer, 99
  br i1 %i.fes, label %.lr.ph.i.i.i.i52.i.i.i.i.i, label %._crit_edge.i.i.i.i41.i.i.i.i.i

.lr.ph.i.i.i.i52.i.i.i.i.i:                       ; preds = %bb.ase, %.lr.ph.i.i.i.i52.i.i.i.i.i
  %.0.idx.i53.i.i.i.i.i = phi i64 [ %.0.add.i56.i.i.i.i.i, %.lr.ph.i.i.i.i52.i.i.i.i.i ], [ 18, %bb.ase ] ; 2 uses
  %.08.i.i.i.i54.i.i.i.i.i = phi i64 [ %i.ffa, %.lr.ph.i.i.i.i52.i.i.i.i.i ], [ %i.fer, %bb.ase ] ; 3 uses
  %.0.ptr.i55.i.i.i.i.i = getelementptr inbounds i8, ptr %82, i64 %.0.idx.i53.i.i.i.i.i
  %i.fet = urem i64 %.08.i.i.i.i54.i.i.i.i.i, 100
  %i.feu = shl nuw nsw i64 %i.fet, 1
  %i.fev = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.feu ; 2 uses
  %i.few = getelementptr inbounds nuw i8, ptr %i.fev, i64 1
  %i.fex = load i8, ptr %i.few, align 1, !tbaa !66, !noalias !21222
  %i.fey = getelementptr inbounds i8, ptr %.0.ptr.i55.i.i.i.i.i, i64 -1
  store i8 %i.fex, ptr %i.fey, align 1, !tbaa !66, !noalias !21222
  %i.fez = load i8, ptr %i.fev, align 1, !tbaa !66, !noalias !21222
  %.0.add.i56.i.i.i.i.i = add nsw i64 %.0.idx.i53.i.i.i.i.i, -2 ; 3 uses
  %.ptr24.i57.i.i.i.i.i = getelementptr inbounds i8, ptr %82, i64 %.0.add.i56.i.i.i.i.i
  store i8 %i.fez, ptr %.ptr24.i57.i.i.i.i.i, align 1, !tbaa !66, !noalias !21222
  %i.ffa = udiv i64 %.08.i.i.i.i54.i.i.i.i.i, 100 ; 2 uses
  %i.ffb = icmp samesign ugt i64 %.08.i.i.i.i54.i.i.i.i.i, 9999
  br i1 %i.ffb, label %.lr.ph.i.i.i.i52.i.i.i.i.i, label %._crit_edge.i.i.i.i41.i.i.i.i.i, !llvm.loop !21176

._crit_edge.i.i.i.i41.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i52.i.i.i.i.i, %bb.ase
  %.1.idx.i42.i.i.i.i.i = phi i64 [ 18, %bb.ase ], [ %.0.add.i56.i.i.i.i.i, %.lr.ph.i.i.i.i52.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i43.i.i.i.i.i = phi i64 [ %i.fer, %bb.ase ], [ %i.ffa, %.lr.ph.i.i.i.i52.i.i.i.i.i ] ; 3 uses
  %i.ffc = icmp sgt i64 %.0.lcssa.i.i.i.i43.i.i.i.i.i, 9
  br i1 %i.ffc, label %bb.asf, label %bb.asg

bb.asf:                                           ; preds = %._crit_edge.i.i.i.i41.i.i.i.i.i
  %i.ffd = shl nuw nsw i64 %.0.lcssa.i.i.i.i43.i.i.i.i.i, 1
  %i.ffe = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ffd ; 2 uses
  %i.fff = getelementptr inbounds nuw i8, ptr %i.ffe, i64 1
  %i.ffg = load i8, ptr %i.fff, align 1, !tbaa !66, !noalias !21222
  %.1.add.i51.i.i.i.i.i = add nsw i64 %.1.idx.i42.i.i.i.i.i, -1 ; 2 uses
  %.ptr22.i.i.i.i.i.i = getelementptr inbounds i8, ptr %82, i64 %.1.add.i51.i.i.i.i.i
  store i8 %i.ffg, ptr %.ptr22.i.i.i.i.i.i, align 1, !tbaa !66, !noalias !21222
  %i.ffh = load i8, ptr %i.ffe, align 1, !tbaa !66, !noalias !21222
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i

bb.asg:                                           ; preds = %._crit_edge.i.i.i.i41.i.i.i.i.i
  %i.ffi = trunc i64 %.0.lcssa.i.i.i.i43.i.i.i.i.i to i8
  %i.ffj = add i8 %i.ffi, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i: ; preds = %bb.asg, %bb.asf
  %.2.idx.i45.i.i.i.i.i = phi i64 [ %.1.add.i51.i.i.i.i.i, %bb.asf ], [ %.1.idx.i42.i.i.i.i.i, %bb.asg ] ; 3 uses
  %.sink.i.i.i.i46.i.i.i.i.i = phi i8 [ %i.ffh, %bb.asf ], [ %i.ffj, %bb.asg ]
  %i.ffk = getelementptr i8, ptr %82, i64 %.2.idx.i45.i.i.i.i.i ; 2 uses
  %.ptr.i47.i.i.i.i.i = getelementptr i8, ptr %i.ffk, i64 -1
  store i8 %.sink.i.i.i.i46.i.i.i.i.i, ptr %.ptr.i47.i.i.i.i.i, align 1, !tbaa !66, !noalias !21222
  %i.ffl = icmp sgt i64 %.2.idx.i45.i.i.i.i.i, 10
  br i1 %i.ffl, label %.lr.ph.i.i.preheader.i48.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1288

.lr.ph.i.i.preheader.i48.i.i.i.i.i:               ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i
  %i.ffm = add i64 %.2.idx.i45.i.i.i.i.i, %201    ; 2 uses
  %i.ffn = add i64 %i.ffm, -2
  %i.ffo = add nuw i64 %201, 9
  %umin.i49.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ffn, i64 %i.ffo) ; 2 uses
  %i.ffp = sub i64 %umin.i49.i.i.i.i.i, %201
  %scevgep.i50.i.i.i.i.i = getelementptr i8, ptr %82, i64 %i.ffp ; 2 uses
  %i.ffq = xor i64 %umin.i49.i.i.i.i.i, -1
  %i.ffr = add i64 %i.ffm, %i.ffq
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i50.i.i.i.i.i, i8 48, i64 %i.ffr, i1 false), !tbaa !66, !noalias !21222
  %scevgep28.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i50.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1288

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1288: ; preds = %.lr.ph.i.i.preheader.i48.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i
  %i.ffs = phi ptr [ %i.ffk, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i ], [ %scevgep28.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i48.i.i.i.i.i ] ; 2 uses
  %i.fft = getelementptr i8, ptr %i.ffs, i64 -2
  store i8 46, ptr %i.fft, align 1, !tbaa !66, !noalias !21222
  %i.ffu = shl nuw nsw i64 %.zext.i39.i.i.i.i.i, 1
  %i.ffv = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ffu
  %i.ffw = getelementptr i8, ptr %i.ffs, i64 -10  ; 3 uses
  %i.ffx = load <2 x i8>, ptr %i.ffv, align 1, !tbaa !66, !noalias !21222
  %i.ffy = load <2 x i8>, ptr @_ZN5arrow8internal6detail11digit_pairsE, align 1, !tbaa !66, !noalias !21222
  %i.ffz = shufflevector <2 x i8> %i.ffy, <2 x i8> %i.ffx, <8 x i32> <i32 0, i32 1, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3>
  %i.fga = shufflevector <8 x i8> %i.ffz, <8 x i8> <i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <8 x i32> <i32 0, i32 1, i32 10, i32 3, i32 4, i32 13, i32 6, i32 7>
  store <8 x i8> %i.fga, ptr %i.ffw, align 1, !tbaa !66, !noalias !21222
  %i.fgb = ptrtoint ptr %.ptr23.i38.i.i.i.i.i to i64
  %i.fgc = ptrtoint ptr %i.ffw to i64
  %i.fgd = sub i64 %i.fgb, %i.fgc
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %86, i64 %i.fgd, ptr nonnull %i.ffw)
          to label %.noexc13.i unwind label %bb.atg, !noalias !21202

.noexc13.i:                                       ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1288
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #28, !noalias !21222
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.ash:                                           ; preds = %bb.aru
  %spec.select.i.i58.i.i.i.i.i = icmp ult i32 %.val4.i.i, 86400
  br i1 %spec.select.i.i58.i.i.i.i.i, label %bb.asi, label %.invoke.i, !prof !218

.invoke.i:                                        ; preds = %bb.ash, %bb.asd, %bb.arz, %bb.arv
  invoke fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZNS_12_GLOBAL__N_114FormatToBufferINS0_15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISF_EEtlSL_EEESE_OSF_(ptr dead_on_unwind noalias nonnull writable align 8 %86, i32 %.val4.i.i)
          to label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i unwind label %bb.atg, !noalias !21202

bb.asi:                                           ; preds = %bb.ash
  %i.fge = zext nneg i32 %.val4.i.i to i64
  %i.fgf = udiv i32 %.val4.i.i, 3600
  %.zext.i59.i.i.i.i.i = zext nneg i32 %i.fgf to i64 ; 3 uses
  %i.fgg = udiv i32 %.val4.i.i, 60
  %.zext16.i.i.i.i.i.i = zext nneg i32 %i.fgg to i64
  %.neg.i.i.i.i60.i.i.i.i.i = mul nsw i64 %.zext.i59.i.i.i.i.i, -60
  %i.fgh = add nsw i64 %.neg.i.i.i.i60.i.i.i.i.i, %.zext16.i.i.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i61.i.i.i.i.i = mul nsw i64 %.zext.i59.i.i.i.i.i, -3600
  %i.fgi = add nsw i64 %.neg.i7.i.i.i61.i.i.i.i.i, %i.fge
  %.neg.i8.i.i.i62.i.i.i.i.i = mul nsw i64 %i.fgh, -60
  %i.fgj = add nsw i64 %i.fgi, %.neg.i8.i.i.i62.i.i.i.i.i
  %i.fgk = shl nsw i64 %i.fgj, 1
  %i.fgl = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fgk
  %i.fgm = shl nsw i64 %i.fgh, 1
  %i.fgn = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fgm
  %i.fgo = shl nuw nsw i64 %.zext.i59.i.i.i.i.i, 1
  %i.fgp = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fgo
  call void @llvm.lifetime.start.p0(ptr nonnull %81), !noalias !21225
  %i.fgq = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 6 uses
  store ptr %i.fgq, ptr %81, align 8, !tbaa !198, !noalias !21226
  %i.fgr = load <2 x i8>, ptr %i.fgl, align 1, !tbaa !66, !noalias !21229
  %i.fgs = load <2 x i8>, ptr %i.fgn, align 1, !tbaa !66, !noalias !21229
  %i.fgt = load <2 x i8>, ptr %i.fgp, align 1, !tbaa !66, !noalias !21229
  %i.fgu = shufflevector <2 x i8> %i.fgt, <2 x i8> %i.fgs, <8 x i32> <i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.fgv = shufflevector <8 x i8> %i.fgu, <8 x i8> <i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <8 x i32> <i32 0, i32 1, i32 10, i32 3, i32 4, i32 13, i32 poison, i32 poison>
  %i.fgw = shufflevector <2 x i8> %i.fgr, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fgx = shufflevector <8 x i8> %i.fgv, <8 x i8> %i.fgw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  store <8 x i8> %i.fgx, ptr %i.fgq, align 8, !noalias !21226
  %i.fgy = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i64 8, ptr %i.fgy, align 8, !tbaa !199, !noalias !21226
  %i.fgz = getelementptr inbounds nuw i8, ptr %81, i64 24
  store i8 0, ptr %i.fgz, align 8, !tbaa !66, !noalias !21226
  invoke void @_ZN5arrow6Buffer10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.9") align 8 %86, ptr noundef nonnull %81)
          to label %bb.asj unwind label %bb.ask, !noalias !21208

bb.asj:                                           ; preds = %bb.asi
  %i.fha = load ptr, ptr %81, align 8, !tbaa !62, !noalias !21226 ; 2 uses
  %i.fhb = icmp eq ptr %i.fha, %i.fgq
  br i1 %i.fhb, label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.asj
  %i.fhc = load i64, ptr %i.fgq, align 8, !tbaa !66, !noalias !21226
  %i.fhd = add i64 %i.fhc, 1
  call void @_ZdlPvm(ptr noundef %i.fha, i64 noundef %i.fhd) #29, !noalias !21208
  br label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i

bb.ask:                                           ; preds = %bb.asi
  %i.fhe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fhf = load ptr, ptr %81, align 8, !tbaa !62, !noalias !21226 ; 2 uses
  %i.fhg = icmp eq ptr %i.fhf, %i.fgq
  br i1 %i.fhg, label %.body.i1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i: ; preds = %bb.ask
  %i.fhh = load i64, ptr %i.fgq, align 8, !tbaa !66, !noalias !21226
  %i.fhi = add i64 %i.fhh, 1
  call void @_ZdlPvm(ptr noundef %i.fhf, i64 noundef %i.fhi) #29, !noalias !21208
  br label %.body.i1234

_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i: ; preds = %bb.asj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %81), !noalias !21225
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i: ; preds = %bb.ars, %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i, %.invoke.i, %.noexc13.i, %.noexc11.i, %.noexc9.i1281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1238
  call void @llvm.lifetime.end.p0(ptr nonnull %85), !noalias !21208
  %i.fhj = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %.noexc.i.i1239 unwind label %bb.asx, !noalias !21208 ; 12 uses

.noexc.i.i1239:                                   ; preds = %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i
  %i.fhk = getelementptr inbounds nuw i8, ptr %i.fhj, i64 8
  store i32 1, ptr %i.fhk, align 8, !tbaa !205, !noalias !21232
  %i.fhl = getelementptr inbounds nuw i8, ptr %i.fhj, i64 12 ; 3 uses
  store i32 1, ptr %i.fhl, align 4, !tbaa !207, !noalias !21232
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12StringScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.fhj, align 8, !tbaa !55, !noalias !21232
  %i.fhm = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.fhn = getelementptr inbounds nuw i8, ptr %i.fhj, i64 24
  %i.fho = getelementptr inbounds nuw i8, ptr %i.fhj, i64 32 ; 3 uses
  %i.fhp = getelementptr inbounds nuw i8, ptr %i.fhj, i64 40
  %i.fhq = getelementptr inbounds nuw i8, ptr %i.fhj, i64 56
  %i.fhr = getelementptr inbounds nuw i8, ptr %i.fhj, i64 64
  %i.fhs = load <2 x ptr>, ptr %86, align 16, !tbaa !200, !noalias !21232
  %i.fht = load ptr, ptr %86, align 16, !tbaa !202, !noalias !21232 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %86, i8 0, i64 16, i1 false), !noalias !21232
  %i.fhu = load <2 x ptr>, ptr %88, align 16, !tbaa !200, !noalias !21232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %88, i8 0, i64 16, i1 false), !noalias !21232
  store i64 0, ptr %i.fho, align 8, !noalias !21232
  store <2 x ptr> %i.fhu, ptr %i.fhp, align 8, !tbaa !200, !noalias !21232
  store i8 1, ptr %i.fhq, align 8, !tbaa !75, !noalias !21232
  store <2 x ptr> %i.fhs, ptr %i.fhr, align 8, !tbaa !200, !noalias !21232
  %.not.i.i8.i.i.i.i.i.i.i.i.i.i1240 = icmp eq ptr %i.fht, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i.i.i.i1240, label %bb.asm, label %bb.asl

end_hunk_1
begin_hunk_2_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %i.fki = getelementptr inbounds nuw i8, ptr %i.fkh, i64 16
  %i.fkj = load ptr, ptr %i.fki, align 8, !noalias !21202
  call void %i.fkj(ptr noundef nonnull align 8 dereferenceable(16) %i.fkb) #28, !noalias !21202, !inline_history !21243
  %i.fkk = load ptr, ptr %i.fkb, align 8, !tbaa !55, !noalias !21202
  %i.fkl = getelementptr inbounds nuw i8, ptr %i.fkk, i64 24
  %i.fkm = load ptr, ptr %i.fkl, align 8, !noalias !21202
  call void %i.fkm(ptr noundef nonnull align 8 dereferenceable(16) %i.fkb) #28, !noalias !21202, !inline_history !21243
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1259

bb.atl:                                           ; preds = %bb.atj
  %i.fkn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66, !noalias !21202
  %.not.i.i.i.i.i.i1256 = icmp eq i8 %i.fkn, 0
  br i1 %.not.i.i.i.i.i.i1256, label %bb.atn, label %bb.atm

bb.atm:                                           ; preds = %bb.atl
  %i.fko = add nsw i32 %i.fkf, -1
  store i32 %i.fko, ptr %i.fkc, align 8, !tbaa !3, !noalias !21202
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1257

bb.atn:                                           ; preds = %bb.atl
  %i.fkp = atomicrmw volatile add ptr %i.fkc, i32 -1 acq_rel, align 4, !noalias !21202
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1257

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1257: ; preds = %bb.atn, %bb.atm
  %.0.i.i.i.i.i.i.i1258 = phi i32 [ %i.fkf, %bb.atm ], [ %i.fkp, %bb.atn ]
  %i.fkq = icmp eq i32 %.0.i.i.i.i.i.i.i1258, 1
  br i1 %i.fkq, label %bb.ato, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1259, !prof !209

bb.ato:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1257
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fkb) #28, !noalias !21202
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1259

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1259: ; preds = %bb.ato, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1257, %bb.atk, %bb.ati
  store ptr null, ptr %0, align 8, !tbaa !84, !alias.scope !21244
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i1249

_ZN5arrow6StatusC2ERKS0_.exit.i1249:              ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1259, %bb.atf
  %i.fkr = load ptr, ptr %87, align 8, !tbaa !84, !noalias !21202 ; 2 uses
  %i.fks = icmp eq ptr %i.fkr, null
  br i1 %i.fks, label %bb.atp, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1250, !prof !218

bb.atp:                                           ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i1249
  %i.fkt = load ptr, ptr %i.fim, align 8, !tbaa !201, !noalias !21202 ; 8 uses
  %.not.i.i.i.i.i22.i = icmp eq ptr %i.fkt, null
  br i1 %.not.i.i.i.i.i22.i, label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_10Time32TypeEEENS_6StatusERKT_.exit, label %bb.atq

bb.atq:                                           ; preds = %bb.atp
  %i.fku = getelementptr inbounds nuw i8, ptr %i.fkt, i64 8 ; 4 uses
  %i.fkv = load atomic i64, ptr %i.fku acquire, align 8 ; 2 uses
  %i.fkw = icmp eq i64 %i.fkv, 4294967297
  %i.fkx = trunc i64 %i.fkv to i32                ; 2 uses
  br i1 %i.fkw, label %bb.atr, label %bb.ats

bb.atr:                                           ; preds = %bb.atq
  store i32 0, ptr %i.fku, align 8, !tbaa !205
  %i.fky = getelementptr inbounds nuw i8, ptr %i.fkt, i64 12
  store i32 0, ptr %i.fky, align 4, !tbaa !207
  %i.fkz = load ptr, ptr %i.fkt, align 8, !tbaa !55
  %i.fla = getelementptr inbounds nuw i8, ptr %i.fkz, i64 16
  %i.flb = load ptr, ptr %i.fla, align 8
  call void %i.flb(ptr noundef nonnull align 8 dereferenceable(16) %i.fkt) #28, !inline_history !21247
  %i.flc = load ptr, ptr %i.fkt, align 8, !tbaa !55
  %i.fld = getelementptr inbounds nuw i8, ptr %i.flc, i64 24
  %i.fle = load ptr, ptr %i.fld, align 8
  call void %i.fle(ptr noundef nonnull align 8 dereferenceable(16) %i.fkt) #28, !inline_history !21247
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1254

bb.ats:                                           ; preds = %bb.atq
  %i.flf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66, !noalias !21202
  %.not.i.i.i.i.i.i.i1251 = icmp eq i8 %i.flf, 0
  br i1 %.not.i.i.i.i.i.i.i1251, label %bb.atu, label %bb.att

bb.att:                                           ; preds = %bb.ats
  %i.flg = add nsw i32 %i.fkx, -1
  store i32 %i.flg, ptr %i.fku, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i1252

bb.atu:                                           ; preds = %bb.ats
  %i.flh = atomicrmw volatile add ptr %i.fku, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i1252

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i1252: ; preds = %bb.atu, %bb.att
  %.0.i.i.i.i.i.i.i.i1253 = phi i32 [ %i.fkx, %bb.att ], [ %i.flh, %bb.atu ]
  %i.fli = icmp eq i32 %.0.i.i.i.i.i.i.i.i1253, 1
  br i1 %i.fli, label %bb.atv, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1254, !prof !209

bb.atv:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i1252
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fkt) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1254

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1254: ; preds = %bb.atv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i1252, %bb.atr
  %.pr.i.pr.i1255 = load ptr, ptr %87, align 8, !tbaa !84, !noalias !21202 ; 2 uses
  %.not.i.i23.i = icmp eq ptr %.pr.i.pr.i1255, null
  br i1 %.not.i.i23.i, label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_10Time32TypeEEENS_6StatusERKT_.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1250, !prof !300

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1250: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1254, %_ZN5arrow6StatusC2ERKS0_.exit.i1249
  %i.flj = phi ptr [ %.pr.i.pr.i1255, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1254 ], [ %i.fkr, %_ZN5arrow6StatusC2ERKS0_.exit.i1249 ]
  %i.flk = getelementptr inbounds nuw i8, ptr %i.flj, i64 1
  %i.fll = load i8, ptr %i.flk, align 1, !tbaa !262, !range !82, !noundef !83
  %i.flm = trunc nuw i8 %i.fll to i1
  br i1 %i.flm, label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_10Time32TypeEEENS_6StatusERKT_.exit, label %bb.atw

bb.atw:                                           ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1250
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %87) #28
  br label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_10Time32TypeEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_10Time32TypeEEENS_6StatusERKT_.exit: ; preds = %bb.atp, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1254, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1250, %bb.atw
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #28, !noalias !21202
  call void @llvm.lifetime.end.p0(ptr nonnull %88)
  br label %bb.byj

bb.atx:                                           ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21248)
  call void @llvm.lifetime.start.p0(ptr nonnull %80)
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #28, !noalias !21248
  %i.fln = load ptr, ptr %1, align 8, !tbaa !7282, !noalias !21248, !nonnull !83, !align !731 ; 3 uses
  %i.flo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.flp = load ptr, ptr %i.flo, align 8, !tbaa !7666, !noalias !21248, !nonnull !83, !align !731 ; 2 uses
  %i.flq = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.flr = getelementptr inbounds nuw i8, ptr %i.flp, i64 8
  %i.fls = load ptr, ptr %i.flr, align 8, !tbaa !201, !noalias !21248 ; 2 uses
  %i.flt = load <2 x ptr>, ptr %i.flp, align 8, !tbaa !200, !noalias !21248
  store <2 x ptr> %i.flt, ptr %80, align 16, !tbaa !200, !noalias !21248
  %.not.i.i.i.i1289 = icmp eq ptr %i.fls, null
  br i1 %.not.i.i.i.i1289, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1291, label %bb.aty

bb.aty:                                           ; preds = %bb.atx
  %i.flu = getelementptr inbounds nuw i8, ptr %i.fls, i64 8 ; 3 uses
  %i.flv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66, !noalias !21248
  %.not.i.i.i.i.i1290 = icmp eq i8 %i.flv, 0
  br i1 %.not.i.i.i.i.i1290, label %bb.aua, label %bb.atz

bb.atz:                                           ; preds = %bb.aty
  %i.flw = load i32, ptr %i.flu, align 4, !tbaa !3, !noalias !21248
  %i.flx = add nsw i32 %i.flw, 1
  store i32 %i.flx, ptr %i.flu, align 4, !tbaa !3, !noalias !21248
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1291

bb.aua:                                           ; preds = %bb.aty
  %i.fly = atomicrmw volatile add ptr %i.flu, i32 1 acq_rel, align 4, !noalias !21248 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1291

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1291: ; preds = %bb.aua, %bb.atz, %bb.atx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21251)
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #28, !noalias !21254
  %i.flz = getelementptr inbounds nuw i8, ptr %i.fln, i64 24
  %i.fma = load ptr, ptr %i.flz, align 8, !tbaa !33, !noalias !21254
  %i.fmb = getelementptr inbounds nuw i8, ptr %i.fma, i64 72
  %i.fmc = load i32, ptr %i.fmb, align 8, !tbaa !6936, !noalias !21254
  %i.fmd = getelementptr inbounds nuw i8, ptr %i.fln, i64 40
  %.val3.i.i1292 = load i8, ptr %i.fmd, align 8, !tbaa !75, !range !82, !noalias !21254, !noundef !83
  %i.fme = getelementptr inbounds nuw i8, ptr %i.fln, i64 48
  %.val4.i.i1293 = load i64, ptr %i.fme, align 8, !noalias !21254 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %77), !noalias !21254
  %i.fmf = trunc nuw i8 %.val3.i.i1292 to i1
  br i1 %i.fmf, label %bb.aud, label %._crit_edge.i.i.i.i.i1294

._crit_edge.i.i.i.i.i1294:                        ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1291
  %i.fmg = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 6 uses
  store ptr %i.fmg, ptr %77, align 8, !tbaa !198, !noalias !21255
  store i32 1819047278, ptr %i.fmg, align 8, !noalias !21255
  %i.fmh = getelementptr inbounds nuw i8, ptr %77, i64 8
  store i64 4, ptr %i.fmh, align 8, !tbaa !199, !noalias !21255
  %i.fmi = getelementptr inbounds nuw i8, ptr %77, i64 20
  store i8 0, ptr %i.fmi, align 4, !tbaa !66, !noalias !21255
  invoke void @_ZN5arrow6Buffer10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.9") align 8 %78, ptr noundef nonnull %77)
          to label %bb.aub unwind label %bb.auc, !noalias !21254

bb.aub:                                           ; preds = %._crit_edge.i.i.i.i.i1294
  %i.fmj = load ptr, ptr %77, align 8, !tbaa !62, !noalias !21255 ; 2 uses
  %i.fmk = icmp eq ptr %i.fmj, %i.fmg
  br i1 %i.fmk, label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1300: ; preds = %bb.aub
  %i.fml = load i64, ptr %i.fmg, align 8, !tbaa !66, !noalias !21255
  %i.fmm = add i64 %i.fml, 1
  call void @_ZdlPvm(ptr noundef %i.fmj, i64 noundef %i.fmm) #29, !noalias !21254
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.auc:                                           ; preds = %._crit_edge.i.i.i.i.i1294
  %i.fmn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fmo = load ptr, ptr %77, align 8, !tbaa !62, !noalias !21255 ; 2 uses
  %i.fmp = icmp eq ptr %i.fmo, %i.fmg
  br i1 %i.fmp, label %.body.i1296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i1295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i1295: ; preds = %bb.auc
  %i.fmq = load i64, ptr %i.fmg, align 8, !tbaa !66, !noalias !21255
  %i.fmr = add i64 %i.fmq, 1
  call void @_ZdlPvm(ptr noundef %i.fmo, i64 noundef %i.fmr) #29, !noalias !21254
  br label %.body.i1296

bb.aud:                                           ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1291
  switch i32 %i.fmc, label %bb.auq [
    i32 3, label %bb.aum
    i32 1, label %bb.aue
    i32 2, label %bb.aui
  ]

bb.aue:                                           ; preds = %bb.aud
  %202 = ptrtoaddr ptr %76 to i64                 ; 3 uses
  %spec.select.i.i.i.i.i.i.i1362 = icmp ult i64 %.val4.i.i1293, 86400000
  br i1 %spec.select.i.i.i.i.i.i.i1362, label %bb.auf, label %.invoke.i1338, !prof !218

bb.auf:                                           ; preds = %bb.aue
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #28, !noalias !21258
  %.ptr26.i.i.i.i.i.i1363 = getelementptr inbounds nuw i8, ptr %76, i64 12
  %.lhs.trunc.i.i.i.i.i.i1364 = trunc nuw nsw i64 %.val4.i.i1293 to i32 ; 2 uses
  %i.fms = udiv i32 %.lhs.trunc.i.i.i.i.i.i1364, 3600000
  %.zext.i.i.i.i.i.i1365 = zext nneg i32 %i.fms to i64 ; 3 uses
  %i.fmt = udiv i32 %.lhs.trunc.i.i.i.i.i.i1364, 60000
  %.zext23.i.i.i.i.i.i1366 = zext nneg i32 %i.fmt to i64
  %.neg.i.i.i.i.i.i.i.i.i1367 = mul nsw i64 %.zext.i.i.i.i.i.i1365, -60
  %i.fmu = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i1367, %.zext23.i.i.i.i.i.i1366 ; 2 uses
  %.neg.i7.i.i.i.i.i.i.i.i1368 = mul nsw i64 %.zext.i.i.i.i.i.i1365, -3600000
  %i.fmv = add nsw i64 %.neg.i7.i.i.i.i.i.i.i.i1368, %.val4.i.i1293
  %.neg.i8.i.i.i.i.i.i.i.i1369 = mul nsw i64 %i.fmu, -60000
  %i.fmw = add nsw i64 %i.fmv, %.neg.i8.i.i.i.i.i.i.i.i1369 ; 2 uses
  %.lhs.trunc24.i.i.i.i.i.i1370 = trunc nsw i64 %i.fmw to i32
  %i.fmx = sdiv i32 %.lhs.trunc24.i.i.i.i.i.i1370, 1000
  %.sext.i.i.i.i.i.i1371 = sext i32 %i.fmx to i64 ; 2 uses
  %.neg.i.i.i.i.i.i.i.i.i.i1372 = mul nsw i64 %.sext.i.i.i.i.i.i1371, -1000
  %i.fmy = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i1372, %i.fmw ; 3 uses
  %i.fmz = icmp sgt i64 %i.fmy, 99
  br i1 %i.fmz, label %.lr.ph.i.i.i.i.i.i.i.i.i1388, label %._crit_edge.i.i.i.i.i.i.i.i.i1373

.lr.ph.i.i.i.i.i.i.i.i.i1388:                     ; preds = %bb.auf, %.lr.ph.i.i.i.i.i.i.i.i.i1388
  %.0.idx.i.i.i.i.i.i1389 = phi i64 [ %.0.add.i.i.i.i.i.i1392, %.lr.ph.i.i.i.i.i.i.i.i.i1388 ], [ 12, %bb.auf ] ; 2 uses
  %.08.i.i.i.i.i.i.i.i.i1390 = phi i64 [ %i.fnh, %.lr.ph.i.i.i.i.i.i.i.i.i1388 ], [ %i.fmy, %bb.auf ] ; 3 uses
  %.0.ptr.i.i.i.i.i.i1391 = getelementptr inbounds i8, ptr %76, i64 %.0.idx.i.i.i.i.i.i1389
  %i.fna = urem i64 %.08.i.i.i.i.i.i.i.i.i1390, 100
  %i.fnb = shl nuw nsw i64 %i.fna, 1
  %i.fnc = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fnb ; 2 uses
  %i.fnd = getelementptr inbounds nuw i8, ptr %i.fnc, i64 1
  %i.fne = load i8, ptr %i.fnd, align 1, !tbaa !66, !noalias !21258
  %i.fnf = getelementptr inbounds i8, ptr %.0.ptr.i.i.i.i.i.i1391, i64 -1
  store i8 %i.fne, ptr %i.fnf, align 1, !tbaa !66, !noalias !21258
  %i.fng = load i8, ptr %i.fnc, align 1, !tbaa !66, !noalias !21258
  %.0.add.i.i.i.i.i.i1392 = add nsw i64 %.0.idx.i.i.i.i.i.i1389, -2 ; 3 uses
  %.ptr27.i.i.i.i.i.i1393 = getelementptr inbounds i8, ptr %76, i64 %.0.add.i.i.i.i.i.i1392
  store i8 %i.fng, ptr %.ptr27.i.i.i.i.i.i1393, align 1, !tbaa !66, !noalias !21258
  %i.fnh = udiv i64 %.08.i.i.i.i.i.i.i.i.i1390, 100 ; 2 uses
  %i.fni = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i.i.i1390, 9999
  br i1 %i.fni, label %.lr.ph.i.i.i.i.i.i.i.i.i1388, label %._crit_edge.i.i.i.i.i.i.i.i.i1373, !llvm.loop !21176

._crit_edge.i.i.i.i.i.i.i.i.i1373:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1388, %bb.auf
  %.1.idx.i.i.i.i.i.i1374 = phi i64 [ 12, %bb.auf ], [ %.0.add.i.i.i.i.i.i1392, %.lr.ph.i.i.i.i.i.i.i.i.i1388 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i1375 = phi i64 [ %i.fmy, %bb.auf ], [ %i.fnh, %.lr.ph.i.i.i.i.i.i.i.i.i1388 ] ; 3 uses
  %i.fnj = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i1375, 9
  br i1 %i.fnj, label %bb.aug, label %bb.auh

bb.aug:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i1373
  %i.fnk = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i1375, 1
  %i.fnl = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fnk ; 2 uses
  %i.fnm = getelementptr inbounds nuw i8, ptr %i.fnl, i64 1
  %i.fnn = load i8, ptr %i.fnm, align 1, !tbaa !66, !noalias !21258
  %.1.add.i.i.i.i.i.i1386 = add nsw i64 %.1.idx.i.i.i.i.i.i1374, -1 ; 2 uses
  %.ptr25.i.i.i.i.i.i1387 = getelementptr inbounds i8, ptr %76, i64 %.1.add.i.i.i.i.i.i1386
  store i8 %i.fnn, ptr %.ptr25.i.i.i.i.i.i1387, align 1, !tbaa !66, !noalias !21258
  %i.fno = load i8, ptr %i.fnl, align 1, !tbaa !66, !noalias !21258
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1376

bb.auh:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i1373
  %i.fnp = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i.i1375 to i8
  %i.fnq = add i8 %i.fnp, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1376

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1376: ; preds = %bb.auh, %bb.aug
  %.2.idx.i.i.i.i.i.i1377 = phi i64 [ %.1.add.i.i.i.i.i.i1386, %bb.aug ], [ %.1.idx.i.i.i.i.i.i1374, %bb.auh ] ; 3 uses
  %.sink.i.i.i.i.i.i.i.i.i1378 = phi i8 [ %i.fno, %bb.aug ], [ %i.fnq, %bb.auh ]
  %i.fnr = getelementptr i8, ptr %76, i64 %.2.idx.i.i.i.i.i.i1377 ; 2 uses
  %.ptr.i.i.i.i.i.i1379 = getelementptr i8, ptr %i.fnr, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i.i.i1378, ptr %.ptr.i.i.i.i.i.i1379, align 1, !tbaa !66, !noalias !21258
  %i.fns = icmp sgt i64 %.2.idx.i.i.i.i.i.i1377, 10
  br i1 %i.fns, label %.lr.ph.i.i.preheader.i.i.i.i.i.i1382, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1380

.lr.ph.i.i.preheader.i.i.i.i.i.i1382:             ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1376
  %i.fnt = add i64 %.2.idx.i.i.i.i.i.i1377, %202  ; 2 uses
  %i.fnu = add i64 %i.fnt, -2
  %i.fnv = add nuw i64 %202, 9
  %umin.i.i.i.i.i.i1383 = call i64 @llvm.umin.i64(i64 %i.fnu, i64 %i.fnv) ; 2 uses
  %i.fnw = sub i64 %umin.i.i.i.i.i.i1383, %202
  %scevgep.i.i.i.i.i.i1384 = getelementptr i8, ptr %76, i64 %i.fnw ; 2 uses
  %i.fnx = xor i64 %umin.i.i.i.i.i.i1383, -1
  %i.fny = add i64 %i.fnt, %i.fnx
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i.i.i1384, i8 48, i64 %i.fny, i1 false), !tbaa !66, !noalias !21258
  %scevgep31.i.i.i.i.i.i1385 = getelementptr i8, ptr %scevgep.i.i.i.i.i.i1384, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1380

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1380: ; preds = %.lr.ph.i.i.preheader.i.i.i.i.i.i1382, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1376
  %i.fnz = phi ptr [ %i.fnr, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1376 ], [ %scevgep31.i.i.i.i.i.i1385, %.lr.ph.i.i.preheader.i.i.i.i.i.i1382 ] ; 2 uses
  %i.foa = shl nsw i64 %.sext.i.i.i.i.i.i1371, 1
  %i.fob = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.foa
  %i.foc = shl nsw i64 %i.fmu, 1
  %i.fod = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.foc
  %i.foe = shl nuw nsw i64 %.zext.i.i.i.i.i.i1365, 1
  %i.fof = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.foe ; 2 uses
  %i.fog = getelementptr inbounds nuw i8, ptr %i.fof, i64 1
  %i.foh = load i8, ptr %i.fog, align 1, !tbaa !66, !noalias !21258
  %i.foi = getelementptr i8, ptr %i.fnz, i64 -9
  %i.foj = load <2 x i8>, ptr %i.fob, align 1, !tbaa !66, !noalias !21258
  %i.fok = load <2 x i8>, ptr %i.fod, align 1, !tbaa !66, !noalias !21258
  %i.fol = shufflevector <2 x i8> %i.fok, <2 x i8> %i.foj, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.fom = shufflevector <8 x i8> %i.fol, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.fon = insertelement <8 x i8> %i.fom, i8 %i.foh, i64 0
  store <8 x i8> %i.fon, ptr %i.foi, align 1, !tbaa !66, !noalias !21258
  %i.foo = load i8, ptr %i.fof, align 1, !tbaa !66, !noalias !21258
  %i.fop = getelementptr i8, ptr %i.fnz, i64 -10  ; 3 uses
  store i8 %i.foo, ptr %i.fop, align 1, !tbaa !66, !noalias !21258
  %i.foq = ptrtoint ptr %.ptr26.i.i.i.i.i.i1363 to i64
  %i.for = ptrtoint ptr %i.fop to i64
  %i.fos = sub i64 %i.foq, %i.for
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %78, i64 %i.fos, ptr nonnull %i.fop)
          to label %.noexc9.i1381 unwind label %bb.avp, !noalias !21248

.noexc9.i1381:                                    ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1380
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #28, !noalias !21258
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.aui:                                           ; preds = %bb.aud
  %203 = ptrtoaddr ptr %75 to i64                 ; 3 uses
  %spec.select.i.i15.i.i.i.i.i1337 = icmp ult i64 %.val4.i.i1293, 86400000000
  br i1 %spec.select.i.i15.i.i.i.i.i1337, label %bb.auj, label %.invoke.i1338, !prof !218

bb.auj:                                           ; preds = %bb.aui
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #28, !noalias !21265
  %.ptr23.i.i.i.i.i.i1339 = getelementptr inbounds nuw i8, ptr %75, i64 15
  %i.fot = udiv i64 %.val4.i.i1293, 3600000000    ; 3 uses
  %i.fou = udiv i64 %.val4.i.i1293, 60000000
  %.neg.i.i.i.i16.i.i.i.i.i = mul nsw i64 %i.fot, -60
  %i.fov = add nsw i64 %.neg.i.i.i.i16.i.i.i.i.i, %i.fou ; 2 uses
  %.neg.i7.i.i.i17.i.i.i.i.i = mul nsw i64 %i.fot, -3600000000
  %i.fow = add nsw i64 %.neg.i7.i.i.i17.i.i.i.i.i, %.val4.i.i1293
  %.neg.i8.i.i.i18.i.i.i.i.i = mul nsw i64 %i.fov, -60000000
  %i.fox = add nsw i64 %i.fow, %.neg.i8.i.i.i18.i.i.i.i.i ; 2 uses
  %i.foy = sdiv i64 %i.fox, 1000000               ; 2 uses
  %.neg.i.i.i.i.i19.i.i.i.i.i1340 = mul nsw i64 %i.foy, -1000000
  %i.foz = add nsw i64 %.neg.i.i.i.i.i19.i.i.i.i.i1340, %i.fox ; 3 uses
  %i.fpa = icmp sgt i64 %i.foz, 99
  br i1 %i.fpa, label %.lr.ph.i.i.i.i31.i.i.i.i.i1356, label %._crit_edge.i.i.i.i20.i.i.i.i.i1341

.lr.ph.i.i.i.i31.i.i.i.i.i1356:                   ; preds = %bb.auj, %.lr.ph.i.i.i.i31.i.i.i.i.i1356
  %.0.idx.i32.i.i.i.i.i1357 = phi i64 [ %.0.add.i35.i.i.i.i.i1360, %.lr.ph.i.i.i.i31.i.i.i.i.i1356 ], [ 15, %bb.auj ] ; 2 uses
  %.08.i.i.i.i33.i.i.i.i.i1358 = phi i64 [ %i.fpi, %.lr.ph.i.i.i.i31.i.i.i.i.i1356 ], [ %i.foz, %bb.auj ] ; 3 uses
  %.0.ptr.i34.i.i.i.i.i1359 = getelementptr inbounds i8, ptr %75, i64 %.0.idx.i32.i.i.i.i.i1357
  %i.fpb = urem i64 %.08.i.i.i.i33.i.i.i.i.i1358, 100
  %i.fpc = shl nuw nsw i64 %i.fpb, 1
  %i.fpd = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fpc ; 2 uses
  %i.fpe = getelementptr inbounds nuw i8, ptr %i.fpd, i64 1
  %i.fpf = load i8, ptr %i.fpe, align 1, !tbaa !66, !noalias !21265
  %i.fpg = getelementptr inbounds i8, ptr %.0.ptr.i34.i.i.i.i.i1359, i64 -1
  store i8 %i.fpf, ptr %i.fpg, align 1, !tbaa !66, !noalias !21265
  %i.fph = load i8, ptr %i.fpd, align 1, !tbaa !66, !noalias !21265
  %.0.add.i35.i.i.i.i.i1360 = add nsw i64 %.0.idx.i32.i.i.i.i.i1357, -2 ; 3 uses
  %.ptr24.i.i.i.i.i.i1361 = getelementptr inbounds i8, ptr %75, i64 %.0.add.i35.i.i.i.i.i1360
  store i8 %i.fph, ptr %.ptr24.i.i.i.i.i.i1361, align 1, !tbaa !66, !noalias !21265
  %i.fpi = udiv i64 %.08.i.i.i.i33.i.i.i.i.i1358, 100 ; 2 uses
  %i.fpj = icmp samesign ugt i64 %.08.i.i.i.i33.i.i.i.i.i1358, 9999
  br i1 %i.fpj, label %.lr.ph.i.i.i.i31.i.i.i.i.i1356, label %._crit_edge.i.i.i.i20.i.i.i.i.i1341, !llvm.loop !21176

._crit_edge.i.i.i.i20.i.i.i.i.i1341:              ; preds = %.lr.ph.i.i.i.i31.i.i.i.i.i1356, %bb.auj
  %.1.idx.i21.i.i.i.i.i1342 = phi i64 [ 15, %bb.auj ], [ %.0.add.i35.i.i.i.i.i1360, %.lr.ph.i.i.i.i31.i.i.i.i.i1356 ] ; 2 uses
  %.0.lcssa.i.i.i.i22.i.i.i.i.i1343 = phi i64 [ %i.foz, %bb.auj ], [ %i.fpi, %.lr.ph.i.i.i.i31.i.i.i.i.i1356 ] ; 3 uses
  %i.fpk = icmp sgt i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i1343, 9
  br i1 %i.fpk, label %bb.auk, label %bb.aul

bb.auk:                                           ; preds = %._crit_edge.i.i.i.i20.i.i.i.i.i1341
  %i.fpl = shl nuw nsw i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i1343, 1
  %i.fpm = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fpl ; 2 uses
  %i.fpn = getelementptr inbounds nuw i8, ptr %i.fpm, i64 1
  %i.fpo = load i8, ptr %i.fpn, align 1, !tbaa !66, !noalias !21265
  %.1.add.i30.i.i.i.i.i1354 = add nsw i64 %.1.idx.i21.i.i.i.i.i1342, -1 ; 2 uses
  %.ptr22.i.i.i.i.i.i1355 = getelementptr inbounds i8, ptr %75, i64 %.1.add.i30.i.i.i.i.i1354
  store i8 %i.fpo, ptr %.ptr22.i.i.i.i.i.i1355, align 1, !tbaa !66, !noalias !21265
  %i.fpp = load i8, ptr %i.fpm, align 1, !tbaa !66, !noalias !21265
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i1344

bb.aul:                                           ; preds = %._crit_edge.i.i.i.i20.i.i.i.i.i1341
  %i.fpq = trunc i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i1343 to i8
  %i.fpr = add i8 %i.fpq, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i1344

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i1344: ; preds = %bb.aul, %bb.auk
  %.2.idx.i24.i.i.i.i.i1345 = phi i64 [ %.1.add.i30.i.i.i.i.i1354, %bb.auk ], [ %.1.idx.i21.i.i.i.i.i1342, %bb.aul ] ; 3 uses
  %.sink.i.i.i.i25.i.i.i.i.i1346 = phi i8 [ %i.fpp, %bb.auk ], [ %i.fpr, %bb.aul ]
  %i.fps = getelementptr i8, ptr %75, i64 %.2.idx.i24.i.i.i.i.i1345 ; 2 uses
  %.ptr.i26.i.i.i.i.i1347 = getelementptr i8, ptr %i.fps, i64 -1
  store i8 %.sink.i.i.i.i25.i.i.i.i.i1346, ptr %.ptr.i26.i.i.i.i.i1347, align 1, !tbaa !66, !noalias !21265
  %i.fpt = icmp sgt i64 %.2.idx.i24.i.i.i.i.i1345, 10
  br i1 %i.fpt, label %.lr.ph.i.i.preheader.i27.i.i.i.i.i1350, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1348

.lr.ph.i.i.preheader.i27.i.i.i.i.i1350:           ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i1344
  %i.fpu = add i64 %.2.idx.i24.i.i.i.i.i1345, %203 ; 2 uses
  %i.fpv = add i64 %i.fpu, -2
  %i.fpw = add nuw i64 %203, 9
  %umin.i28.i.i.i.i.i1351 = call i64 @llvm.umin.i64(i64 %i.fpv, i64 %i.fpw) ; 2 uses
  %i.fpx = sub i64 %umin.i28.i.i.i.i.i1351, %203
  %scevgep.i29.i.i.i.i.i1352 = getelementptr i8, ptr %75, i64 %i.fpx ; 2 uses
  %i.fpy = xor i64 %umin.i28.i.i.i.i.i1351, -1
  %i.fpz = add i64 %i.fpu, %i.fpy
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i29.i.i.i.i.i1352, i8 48, i64 %i.fpz, i1 false), !tbaa !66, !noalias !21265
  %scevgep28.i.i.i.i.i.i1353 = getelementptr i8, ptr %scevgep.i29.i.i.i.i.i1352, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1348

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1348: ; preds = %.lr.ph.i.i.preheader.i27.i.i.i.i.i1350, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i1344
  %i.fqa = phi ptr [ %i.fps, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i1344 ], [ %scevgep28.i.i.i.i.i.i1353, %.lr.ph.i.i.preheader.i27.i.i.i.i.i1350 ] ; 2 uses
  %i.fqb = shl nsw i64 %i.foy, 1
  %i.fqc = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fqb
  %i.fqd = shl nsw i64 %i.fov, 1
  %i.fqe = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fqd
  %i.fqf = shl nuw nsw i64 %i.fot, 1
  %i.fqg = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fqf ; 2 uses
  %i.fqh = getelementptr inbounds nuw i8, ptr %i.fqg, i64 1
  %i.fqi = load i8, ptr %i.fqh, align 1, !tbaa !66, !noalias !21265
  %i.fqj = getelementptr i8, ptr %i.fqa, i64 -9
  %i.fqk = load <2 x i8>, ptr %i.fqc, align 1, !tbaa !66, !noalias !21265
  %i.fql = load <2 x i8>, ptr %i.fqe, align 1, !tbaa !66, !noalias !21265
  %i.fqm = shufflevector <2 x i8> %i.fql, <2 x i8> %i.fqk, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.fqn = shufflevector <8 x i8> %i.fqm, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.fqo = insertelement <8 x i8> %i.fqn, i8 %i.fqi, i64 0
  store <8 x i8> %i.fqo, ptr %i.fqj, align 1, !tbaa !66, !noalias !21265
  %i.fqp = load i8, ptr %i.fqg, align 1, !tbaa !66, !noalias !21265
  %i.fqq = getelementptr i8, ptr %i.fqa, i64 -10  ; 3 uses
  store i8 %i.fqp, ptr %i.fqq, align 1, !tbaa !66, !noalias !21265
  %i.fqr = ptrtoint ptr %.ptr23.i.i.i.i.i.i1339 to i64
  %i.fqs = ptrtoint ptr %i.fqq to i64
  %i.fqt = sub i64 %i.fqr, %i.fqs
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %78, i64 %i.fqt, ptr nonnull %i.fqq)
          to label %.noexc11.i1349 unwind label %bb.avp, !noalias !21248

.noexc11.i1349:                                   ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1348
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #28, !noalias !21265
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.aum:                                           ; preds = %bb.aud
  %204 = ptrtoaddr ptr %74 to i64                 ; 3 uses
  %spec.select.i.i36.i.i.i.i.i = icmp ult i64 %.val4.i.i1293, 86400000000000
  br i1 %spec.select.i.i36.i.i.i.i.i, label %bb.aun, label %.invoke.i1338, !prof !218

bb.aun:                                           ; preds = %bb.aum
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #28, !noalias !21268
  %.ptr23.i37.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %74, i64 18
  %i.fqu = udiv i64 %.val4.i.i1293, 3600000000000 ; 3 uses
  %i.fqv = udiv i64 %.val4.i.i1293, 60000000000
  %.neg.i.i.i.i38.i.i.i.i.i = mul nsw i64 %i.fqu, -60
  %i.fqw = add nsw i64 %.neg.i.i.i.i38.i.i.i.i.i, %i.fqv ; 2 uses
  %.neg.i7.i.i.i39.i.i.i.i.i = mul nsw i64 %i.fqu, -3600000000000
  %i.fqx = add nsw i64 %.neg.i7.i.i.i39.i.i.i.i.i, %.val4.i.i1293
  %.neg.i8.i.i.i40.i.i.i.i.i = mul nsw i64 %i.fqw, -60000000000
  %i.fqy = add nsw i64 %i.fqx, %.neg.i8.i.i.i40.i.i.i.i.i ; 2 uses
  %i.fqz = sdiv i64 %i.fqy, 1000000000            ; 2 uses
  %.neg.i.i.i.i.i41.i.i.i.i.i = mul nsw i64 %i.fqz, -1000000000
  %i.fra = add nsw i64 %.neg.i.i.i.i.i41.i.i.i.i.i, %i.fqy ; 3 uses
  %i.frb = icmp sgt i64 %i.fra, 99
  br i1 %i.frb, label %.lr.ph.i.i.i.i55.i.i.i.i.i, label %._crit_edge.i.i.i.i42.i.i.i.i.i

.lr.ph.i.i.i.i55.i.i.i.i.i:                       ; preds = %bb.aun, %.lr.ph.i.i.i.i55.i.i.i.i.i
  %.0.idx.i56.i.i.i.i.i = phi i64 [ %.0.add.i59.i.i.i.i.i, %.lr.ph.i.i.i.i55.i.i.i.i.i ], [ 18, %bb.aun ] ; 2 uses
  %.08.i.i.i.i57.i.i.i.i.i = phi i64 [ %i.frj, %.lr.ph.i.i.i.i55.i.i.i.i.i ], [ %i.fra, %bb.aun ] ; 3 uses
  %.0.ptr.i58.i.i.i.i.i = getelementptr inbounds i8, ptr %74, i64 %.0.idx.i56.i.i.i.i.i
  %i.frc = urem i64 %.08.i.i.i.i57.i.i.i.i.i, 100
  %i.frd = shl nuw nsw i64 %i.frc, 1
  %i.fre = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.frd ; 2 uses
  %i.frf = getelementptr inbounds nuw i8, ptr %i.fre, i64 1
  %i.frg = load i8, ptr %i.frf, align 1, !tbaa !66, !noalias !21268
  %i.frh = getelementptr inbounds i8, ptr %.0.ptr.i58.i.i.i.i.i, i64 -1
  store i8 %i.frg, ptr %i.frh, align 1, !tbaa !66, !noalias !21268
  %i.fri = load i8, ptr %i.fre, align 1, !tbaa !66, !noalias !21268
  %.0.add.i59.i.i.i.i.i = add nsw i64 %.0.idx.i56.i.i.i.i.i, -2 ; 3 uses
  %.ptr24.i60.i.i.i.i.i = getelementptr inbounds i8, ptr %74, i64 %.0.add.i59.i.i.i.i.i
  store i8 %i.fri, ptr %.ptr24.i60.i.i.i.i.i, align 1, !tbaa !66, !noalias !21268
  %i.frj = udiv i64 %.08.i.i.i.i57.i.i.i.i.i, 100 ; 2 uses
  %i.frk = icmp samesign ugt i64 %.08.i.i.i.i57.i.i.i.i.i, 9999
  br i1 %i.frk, label %.lr.ph.i.i.i.i55.i.i.i.i.i, label %._crit_edge.i.i.i.i42.i.i.i.i.i, !llvm.loop !21176

._crit_edge.i.i.i.i42.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i55.i.i.i.i.i, %bb.aun
  %.1.idx.i43.i.i.i.i.i = phi i64 [ 18, %bb.aun ], [ %.0.add.i59.i.i.i.i.i, %.lr.ph.i.i.i.i55.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i44.i.i.i.i.i = phi i64 [ %i.fra, %bb.aun ], [ %i.frj, %.lr.ph.i.i.i.i55.i.i.i.i.i ] ; 3 uses
  %i.frl = icmp sgt i64 %.0.lcssa.i.i.i.i44.i.i.i.i.i, 9
  br i1 %i.frl, label %bb.auo, label %bb.aup

bb.auo:                                           ; preds = %._crit_edge.i.i.i.i42.i.i.i.i.i
  %i.frm = shl nuw nsw i64 %.0.lcssa.i.i.i.i44.i.i.i.i.i, 1
  %i.frn = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.frm ; 2 uses
  %i.fro = getelementptr inbounds nuw i8, ptr %i.frn, i64 1
  %i.frp = load i8, ptr %i.fro, align 1, !tbaa !66, !noalias !21268
  %.1.add.i53.i.i.i.i.i = add nsw i64 %.1.idx.i43.i.i.i.i.i, -1 ; 2 uses
  %.ptr22.i54.i.i.i.i.i = getelementptr inbounds i8, ptr %74, i64 %.1.add.i53.i.i.i.i.i
  store i8 %i.frp, ptr %.ptr22.i54.i.i.i.i.i, align 1, !tbaa !66, !noalias !21268
  %i.frq = load i8, ptr %i.frn, align 1, !tbaa !66, !noalias !21268
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i

bb.aup:                                           ; preds = %._crit_edge.i.i.i.i42.i.i.i.i.i
  %i.frr = trunc i64 %.0.lcssa.i.i.i.i44.i.i.i.i.i to i8
  %i.frs = add i8 %i.frr, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i: ; preds = %bb.aup, %bb.auo
  %.2.idx.i46.i.i.i.i.i = phi i64 [ %.1.add.i53.i.i.i.i.i, %bb.auo ], [ %.1.idx.i43.i.i.i.i.i, %bb.aup ] ; 3 uses
  %.sink.i.i.i.i47.i.i.i.i.i = phi i8 [ %i.frq, %bb.auo ], [ %i.frs, %bb.aup ]
  %i.frt = getelementptr i8, ptr %74, i64 %.2.idx.i46.i.i.i.i.i ; 2 uses
  %.ptr.i48.i.i.i.i.i = getelementptr i8, ptr %i.frt, i64 -1
  store i8 %.sink.i.i.i.i47.i.i.i.i.i, ptr %.ptr.i48.i.i.i.i.i, align 1, !tbaa !66, !noalias !21268
  %i.fru = icmp sgt i64 %.2.idx.i46.i.i.i.i.i, 10
  br i1 %i.fru, label %.lr.ph.i.i.preheader.i49.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1394

.lr.ph.i.i.preheader.i49.i.i.i.i.i:               ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i
  %i.frv = add i64 %.2.idx.i46.i.i.i.i.i, %204    ; 2 uses
  %i.frw = add i64 %i.frv, -2
  %i.frx = add nuw i64 %204, 9
  %umin.i50.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.frw, i64 %i.frx) ; 2 uses
  %i.fry = sub i64 %umin.i50.i.i.i.i.i, %204
  %scevgep.i51.i.i.i.i.i = getelementptr i8, ptr %74, i64 %i.fry ; 2 uses
  %i.frz = xor i64 %umin.i50.i.i.i.i.i, -1
  %i.fsa = add i64 %i.frv, %i.frz
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i51.i.i.i.i.i, i8 48, i64 %i.fsa, i1 false), !tbaa !66, !noalias !21268
  %scevgep28.i52.i.i.i.i.i = getelementptr i8, ptr %scevgep.i51.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1394

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1394: ; preds = %.lr.ph.i.i.preheader.i49.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i
  %i.fsb = phi ptr [ %i.frt, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i ], [ %scevgep28.i52.i.i.i.i.i, %.lr.ph.i.i.preheader.i49.i.i.i.i.i ] ; 2 uses
  %i.fsc = shl nsw i64 %i.fqz, 1
  %i.fsd = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fsc
  %i.fse = shl nsw i64 %i.fqw, 1
  %i.fsf = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fse
  %i.fsg = shl nuw nsw i64 %i.fqu, 1
  %i.fsh = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fsg ; 2 uses
  %i.fsi = getelementptr inbounds nuw i8, ptr %i.fsh, i64 1
  %i.fsj = load i8, ptr %i.fsi, align 1, !tbaa !66, !noalias !21268
  %i.fsk = getelementptr i8, ptr %i.fsb, i64 -9
  %i.fsl = load <2 x i8>, ptr %i.fsd, align 1, !tbaa !66, !noalias !21268
  %i.fsm = load <2 x i8>, ptr %i.fsf, align 1, !tbaa !66, !noalias !21268
  %i.fsn = shufflevector <2 x i8> %i.fsm, <2 x i8> %i.fsl, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.fso = shufflevector <8 x i8> %i.fsn, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.fsp = insertelement <8 x i8> %i.fso, i8 %i.fsj, i64 0
  store <8 x i8> %i.fsp, ptr %i.fsk, align 1, !tbaa !66, !noalias !21268
  %i.fsq = load i8, ptr %i.fsh, align 1, !tbaa !66, !noalias !21268
  %i.fsr = getelementptr i8, ptr %i.fsb, i64 -10  ; 3 uses
  store i8 %i.fsq, ptr %i.fsr, align 1, !tbaa !66, !noalias !21268
  %i.fss = ptrtoint ptr %.ptr23.i37.i.i.i.i.i to i64
  %i.fst = ptrtoint ptr %i.fsr to i64
  %i.fsu = sub i64 %i.fss, %i.fst
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %78, i64 %i.fsu, ptr nonnull %i.fsr)
          to label %.noexc13.i1395 unwind label %bb.avp, !noalias !21248

.noexc13.i1395:                                   ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1394
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #28, !noalias !21268
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.auq:                                           ; preds = %bb.aud
  %spec.select.i.i61.i.i.i.i.i = icmp ult i64 %.val4.i.i1293, 86400
  br i1 %spec.select.i.i61.i.i.i.i.i, label %bb.aur, label %.invoke.i1338, !prof !218

.invoke.i1338:                                    ; preds = %bb.auq, %bb.aum, %bb.aui, %bb.aue
  invoke fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZNS_12_GLOBAL__N_114FormatToBufferINS0_15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISF_EEtlSL_EEESE_OSF_(ptr dead_on_unwind noalias nonnull writable align 8 %78, i64 %.val4.i.i1293)
          to label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i unwind label %bb.avp, !noalias !21248

bb.aur:                                           ; preds = %bb.auq
  %.lhs.trunc.i62.i.i.i.i.i = trunc nuw nsw i64 %.val4.i.i1293 to i32 ; 2 uses
  %i.fsv = udiv i32 %.lhs.trunc.i62.i.i.i.i.i, 3600
  %.zext.i63.i.i.i.i.i = zext nneg i32 %i.fsv to i64 ; 3 uses
  %i.fsw = udiv i32 %.lhs.trunc.i62.i.i.i.i.i, 60
  %.zext16.i.i.i.i.i.i1396 = zext nneg i32 %i.fsw to i64
  %.neg.i.i.i.i64.i.i.i.i.i = mul nsw i64 %.zext.i63.i.i.i.i.i, -60
  %i.fsx = add nsw i64 %.neg.i.i.i.i64.i.i.i.i.i, %.zext16.i.i.i.i.i.i1396 ; 2 uses
  %.neg.i7.i.i.i65.i.i.i.i.i = mul nsw i64 %.zext.i63.i.i.i.i.i, -3600
  %i.fsy = add nsw i64 %.neg.i7.i.i.i65.i.i.i.i.i, %.val4.i.i1293
  %.neg.i8.i.i.i66.i.i.i.i.i = mul nsw i64 %i.fsx, -60
  %i.fsz = add nsw i64 %i.fsy, %.neg.i8.i.i.i66.i.i.i.i.i
  %i.fta = shl nsw i64 %i.fsz, 1
  %i.ftb = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fta
  %i.ftc = shl nsw i64 %i.fsx, 1
  %i.ftd = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ftc
  %i.fte = shl nuw nsw i64 %.zext.i63.i.i.i.i.i, 1
  %i.ftf = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fte
  call void @llvm.lifetime.start.p0(ptr nonnull %73), !noalias !21271
  %i.ftg = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 6 uses
  store ptr %i.ftg, ptr %73, align 8, !tbaa !198, !noalias !21272
  %i.fth = load <2 x i8>, ptr %i.ftb, align 1, !tbaa !66, !noalias !21275
  %i.fti = load <2 x i8>, ptr %i.ftd, align 1, !tbaa !66, !noalias !21275
  %i.ftj = load <2 x i8>, ptr %i.ftf, align 1, !tbaa !66, !noalias !21275
  %i.ftk = shufflevector <2 x i8> %i.ftj, <2 x i8> %i.fti, <8 x i32> <i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.ftl = shufflevector <8 x i8> %i.ftk, <8 x i8> <i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <8 x i32> <i32 0, i32 1, i32 10, i32 3, i32 4, i32 13, i32 poison, i32 poison>
  %i.ftm = shufflevector <2 x i8> %i.fth, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ftn = shufflevector <8 x i8> %i.ftl, <8 x i8> %i.ftm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  store <8 x i8> %i.ftn, ptr %i.ftg, align 8, !noalias !21272
  %i.fto = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i64 8, ptr %i.fto, align 8, !tbaa !199, !noalias !21272
  %i.ftp = getelementptr inbounds nuw i8, ptr %73, i64 24
  store i8 0, ptr %i.ftp, align 8, !tbaa !66, !noalias !21272
  invoke void @_ZN5arrow6Buffer10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.9") align 8 %78, ptr noundef nonnull %73)
          to label %bb.aus unwind label %bb.aut, !noalias !21254

bb.aus:                                           ; preds = %bb.aur
  %i.ftq = load ptr, ptr %73, align 8, !tbaa !62, !noalias !21272 ; 2 uses
  %i.ftr = icmp eq ptr %i.ftq, %i.ftg
  br i1 %i.ftr, label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1406: ; preds = %bb.aus
  %i.fts = load i64, ptr %i.ftg, align 8, !tbaa !66, !noalias !21272
  %i.ftt = add i64 %i.fts, 1
  call void @_ZdlPvm(ptr noundef %i.ftq, i64 noundef %i.ftt) #29, !noalias !21254
  br label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i

bb.aut:                                           ; preds = %bb.aur
  %i.ftu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ftv = load ptr, ptr %73, align 8, !tbaa !62, !noalias !21272 ; 2 uses
  %i.ftw = icmp eq ptr %i.ftv, %i.ftg
  br i1 %i.ftw, label %.body.i1296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i1404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i1404: ; preds = %bb.aut
  %i.ftx = load i64, ptr %i.ftg, align 8, !tbaa !66, !noalias !21272
  %i.fty = add i64 %i.ftx, 1
  call void @_ZdlPvm(ptr noundef %i.ftv, i64 noundef %i.fty) #29, !noalias !21254
  br label %.body.i1296

_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i: ; preds = %bb.aus, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1406
  call void @llvm.lifetime.end.p0(ptr nonnull %73), !noalias !21271
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i: ; preds = %bb.aub, %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i, %.invoke.i1338, %.noexc13.i1395, %.noexc11.i1349, %.noexc9.i1381, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1300
  call void @llvm.lifetime.end.p0(ptr nonnull %77), !noalias !21254
  %i.ftz = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %.noexc.i.i1301 unwind label %bb.avg, !noalias !21254 ; 12 uses

.noexc.i.i1301:                                   ; preds = %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i
  %i.fua = getelementptr inbounds nuw i8, ptr %i.ftz, i64 8
  store i32 1, ptr %i.fua, align 8, !tbaa !205, !noalias !21278
  %i.fub = getelementptr inbounds nuw i8, ptr %i.ftz, i64 12 ; 3 uses
  store i32 1, ptr %i.fub, align 4, !tbaa !207, !noalias !21278
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12StringScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ftz, align 8, !tbaa !55, !noalias !21278
  %i.fuc = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.fud = getelementptr inbounds nuw i8, ptr %i.ftz, i64 24
  %i.fue = getelementptr inbounds nuw i8, ptr %i.ftz, i64 32 ; 3 uses
  %i.fuf = getelementptr inbounds nuw i8, ptr %i.ftz, i64 40
end_hunk_2
