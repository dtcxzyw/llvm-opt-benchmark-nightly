inline.NumInlined: 43590
inline.NumDeleted: 6060
begin_hunk_0_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
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
  %.063.i.i.i.i.i.i = ptrtoint ptr %.0.i.i.i.i.i.i to i64 ; 3 uses
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
  %199 = load <2 x i8>, ptr %i.eeg, align 1, !tbaa !66, !noalias !21169
  %200 = shufflevector <2 x i8> %199, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %201 = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %200, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %201, ptr %i.eeh, align 1, !tbaa !66, !noalias !21169
  %i.eei = shl nsw i64 %i.ecz, 1
  %i.eej = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eei
  %i.eek = shl nuw nsw i64 %i.ecx, 1
  %i.eel = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eek
  %i.eem = add nsw i32 %.sroa.037.0.i.i.i.i.i.i, 719468 ; 2 uses
  %i.een = icmp sgt i32 %.sroa.037.0.i.i.i.i.i.i, -719469
  %i.eeo = add nuw nsw i32 %.sroa.037.0.i.i.i.i.i.i, 573372
  %i.eep = select i1 %i.een, i32 %i.eem, i32 %i.eeo
  %i.eeq = sdiv i32 %i.eep, 146097                ; 2 uses
  %.neg.i.i16.i.i.i.i.i.i = mul nsw i32 %i.eeq, -146097
  %i.eer = add nsw i32 %.neg.i.i16.i.i.i.i.i.i, %i.eem ; 5 uses
  %i.ees = udiv i32 %i.eer, 1460
  %i.eet = udiv i32 %i.eer, 36524
  %i.eeu = udiv i32 %i.eer, 146096
  %.neg38 = add nsw i32 %i.eet, %i.eer
  %i.eev = add nuw nsw i32 %i.eeu, %i.ees
  %i.eew = sub nsw i32 %.neg38, %i.eev            ; 3 uses
  %i.eex = udiv i32 %i.eew, 365                   ; 2 uses
  %i.eey = mul nsw i32 %i.eeq, 400
  %i.eez = add nsw i32 %i.eex, %i.eey
  %i.efa = udiv i32 %i.eew, 1460
  %i.efb = udiv i32 %i.eew, 36500
  %.neg36.i.i.i.i.i.i.i.i = mul i32 %i.eex, -365
  %.neg37.i.i.i.i.i.i.i.i = sub nsw i32 %i.eer, %i.efa
  %.neg25.i.i.i.i.i.i.i.i = add nsw i32 %.neg37.i.i.i.i.i.i.i.i, %i.efb
  %i.efc = add i32 %.neg25.i.i.i.i.i.i.i.i, %.neg36.i.i.i.i.i.i.i.i ; 2 uses
  %i.efd = mul i32 %i.efc, 5
  %i.efe = add i32 %i.efd, 2                      ; 2 uses
  %i.eff = udiv i32 %i.efe, 153                   ; 2 uses
  %i.efg = mul nuw i32 %i.eff, 153
  %i.efh = add nuw i32 %i.efg, 2
  %i.efi = udiv i32 %i.efh, 5
  %i.efj = sub i32 %i.efc, %i.efi
  %i.efk = icmp ult i32 %i.efe, 1530
  %.v.i.i.i.i.i.i.i.i = select i1 %i.efk, i32 3, i32 -9
  %i.efl = add nsw i32 %.v.i.i.i.i.i.i.i.i, %i.eff ; 2 uses
  %i.efm = icmp ult i32 %i.efl, 3
  %i.efn = zext i1 %i.efm to i32
  %i.efo = add nsw i32 %i.eez, %i.efn
  %i.efp = shl i32 %i.efj, 24
  %.sroa.3.0.insert.ext.i.i.i.i.i.i.i.i = add i32 %i.efp, 16777216
  %i.efq = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i.i.i.i.i.i, 23
  %i.efr = zext nneg i32 %i.efq to i64
  %i.efs = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.efr
  %i.eft = shl nsw i32 %i.efl, 1
  %i.efu = and i32 %i.eft, 510
  %i.efv = zext nneg i32 %i.efu to i64
  %i.efw = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.efv
  %sext.i.i.i.i.i.i.i = shl i32 %i.efo, 16
  %202 = ashr exact i32 %sext.i.i.i.i.i.i.i, 16   ; 2 uses
  %203 = icmp slt i32 %202, 0
  %204 = call i32 @llvm.abs.i32(i32 %202, i1 true) ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i = trunc nuw i32 %204 to i16 ; 3 uses
  %205 = urem i16 %.lhs.trunc.i.i.i.i.i.i.i, 100
  %206 = shl nuw nsw i16 %205, 1
  %207 = zext nneg i16 %206 to i64
  %208 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %207
  %209 = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i, 100
  %i.efx = urem i16 %209, 100
  %i.efy = shl nuw nsw i16 %i.efx, 1
  %i.efz = zext nneg i16 %i.efy to i64
  %i.ega = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.efz
  %i.egb = getelementptr i8, ptr %i.eee, i64 -21  ; 2 uses
  %210 = load <2 x i8>, ptr %i.eej, align 1, !tbaa !66, !noalias !21169
  %211 = load <2 x i8>, ptr %i.eel, align 1, !tbaa !66, !noalias !21169
  %212 = load <2 x i8>, ptr %i.efs, align 1, !tbaa !66, !noalias !21169
  %213 = load <2 x i8>, ptr %i.efw, align 1, !tbaa !66, !noalias !21169
  %214 = load <2 x i8>, ptr %208, align 1, !tbaa !66, !noalias !21169
  %215 = load <2 x i8>, ptr %i.ega, align 1, !tbaa !66, !noalias !21169
  %216 = shufflevector <2 x i8> %215, <2 x i8> %214, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %217 = shufflevector <16 x i8> %216, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %218 = shufflevector <2 x i8> %213, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %219 = shufflevector <16 x i8> %217, <16 x i8> %218, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %220 = shufflevector <2 x i8> %212, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %221 = shufflevector <16 x i8> %219, <16 x i8> %220, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %222 = shufflevector <2 x i8> %211, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %223 = shufflevector <16 x i8> %221, <16 x i8> %222, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %224 = shufflevector <2 x i8> %210, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %225 = shufflevector <16 x i8> %223, <16 x i8> %224, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %225, ptr %i.egb, align 1, !tbaa !66, !noalias !21169
  %i.egc = icmp samesign ugt i32 %204, 9999
  br i1 %i.egc, label %bb.aos, label %bb.aot

bb.aos:                                           ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %i.egd = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i, 10000
  %i.ege = trunc nuw nsw i16 %i.egd to i8
  %i.egf = or disjoint i8 %i.ege, 48
  %i.egg = getelementptr i8, ptr %i.eee, i64 -22  ; 2 uses
  store i8 %i.egf, ptr %i.egg, align 1, !tbaa !66, !noalias !21169
  br label %bb.aot

bb.aot:                                           ; preds = %bb.aos, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %.4.i.i.i.i.i.i = phi ptr [ %i.egg, %bb.aos ], [ %i.egb, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i ] ; 2 uses
  br i1 %203, label %bb.aou, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i

bb.aou:                                           ; preds = %bb.aot
  %i.egh = getelementptr inbounds i8, ptr %.4.i.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.egh, align 1, !tbaa !66, !noalias !21169
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i: ; preds = %bb.aou, %bb.aot
  %.5.i.i.i.i.i.i = phi ptr [ %i.egh, %bb.aou ], [ %.4.i.i.i.i.i.i, %bb.aot ] ; 2 uses
  %i.egi = ptrtoint ptr %i.ecv to i64
  %i.egj = ptrtoint ptr %.5.i.i.i.i.i.i to i64
  %i.egk = sub i64 %i.egi, %i.egj
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_13TimestampTypeEvEENS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %94, i64 %i.egk, ptr nonnull %.5.i.i.i.i.i.i)
          to label %.noexc9.i.i unwind label %bb.aqo, !noalias !21163

.noexc9.i.i:                                      ; preds = %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #28, !noalias !21169
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222

bb.aov:                                           ; preds = %bb.aoi
  %i.egl = add i64 %.val7.i.i, 1096193779200000000
  %spec.select.i.i18.i.i.i.i.i = icmp ult i64 %i.egl, 2068084742400000000
  br i1 %spec.select.i.i18.i.i.i.i.i, label %bb.aow, label %.invoke.i.i, !prof !218

bb.aow:                                           ; preds = %bb.aov
  %i.egm = sdiv i64 %.val7.i.i, 86400000000       ; 3 uses
  %i.egn = trunc nsw i64 %i.egm to i32            ; 2 uses
  %i.ego = mul nsw i64 %i.egm, 86400000000        ; 2 uses
  %.not53.i19.i.i.i.i.i = icmp sgt i64 %i.ego, %.val7.i.i
  br i1 %.not53.i19.i.i.i.i.i, label %bb.aoy, label %bb.aox

bb.aox:                                           ; preds = %bb.aow
  %.neg.i.i.i20.i.i.i.i.i = mul nsw i64 %i.egm, -86400000000
  %i.egp = add nsw i64 %.neg.i.i.i20.i.i.i.i.i, %.val7.i.i
  br label %bb.aoz

bb.aoy:                                           ; preds = %bb.aow
  %.neg.i62.i.i.i.i.i = add nsw i64 %.val7.i.i, 86400000000
  %i.egq = sub nsw i64 %.neg.i62.i.i.i.i.i, %i.ego
  %i.egr = add nsw i32 %i.egn, -1
  br label %bb.aoz

bb.aoz:                                           ; preds = %bb.aoy, %bb.aox
  %.sroa.036.0.i21.i.i.i.i.i = phi i64 [ %i.egp, %bb.aox ], [ %i.egq, %bb.aoy ]
  %.sroa.037.0.i22.i.i.i.i.i = phi i32 [ %i.egn, %bb.aox ], [ %i.egr, %bb.aoy ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #28, !noalias !21177
  %i.egs = getelementptr inbounds nuw i8, ptr %91, i64 29 ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq i64 %.val5.i.i1188, 0
  br i1 %.not.i23.i.i.i.i.i, label %bb.apb, label %bb.apa

bb.apa:                                           ; preds = %bb.aoz
  %i.egt = getelementptr inbounds nuw i8, ptr %91, i64 28 ; 2 uses
  store i8 90, ptr %i.egt, align 1, !tbaa !66, !noalias !21177
  br label %bb.apb

bb.apb:                                           ; preds = %bb.apa, %bb.aoz
  %.0.i24.i.i.i.i.i = phi ptr [ %i.egs, %bb.aoz ], [ %i.egt, %bb.apa ] ; 6 uses
  %.063.i25.i.i.i.i.i = ptrtoint ptr %.0.i24.i.i.i.i.i to i64 ; 3 uses
  %spec.select.i.i.i.i26.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i21.i.i.i.i.i, i1 true) ; 3 uses
  %i.egu = udiv i64 %spec.select.i.i.i.i26.i.i.i.i.i, 3600000000 ; 3 uses
  %i.egv = udiv i64 %spec.select.i.i.i.i26.i.i.i.i.i, 60000000
  %.neg.i.i.i.i27.i.i.i.i.i = mul nsw i64 %i.egu, -60
  %i.egw = add nsw i64 %.neg.i.i.i.i27.i.i.i.i.i, %i.egv ; 2 uses
  %.neg.i7.i.i.i28.i.i.i.i.i = mul nsw i64 %i.egu, -3600000000
  %i.egx = add nsw i64 %.neg.i7.i.i.i28.i.i.i.i.i, %spec.select.i.i.i.i26.i.i.i.i.i
  %.neg.i8.i.i.i29.i.i.i.i.i = mul nsw i64 %i.egw, -60000000
  %i.egy = add nsw i64 %i.egx, %.neg.i8.i.i.i29.i.i.i.i.i ; 2 uses
  %i.egz = sdiv i64 %i.egy, 1000000               ; 2 uses
  %.neg.i.i.i.i.i30.i.i.i.i.i = mul nsw i64 %i.egz, -1000000
  %i.eha = add nsw i64 %.neg.i.i.i.i.i30.i.i.i.i.i, %i.egy ; 3 uses
  %i.ehb = icmp sgt i64 %i.eha, 99
  br i1 %i.ehb, label %.lr.ph.i.i.i.i56.i.i.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i.i.i

.lr.ph.i.i.i.i56.i.i.i.i.i:                       ; preds = %bb.apb, %.lr.ph.i.i.i.i56.i.i.i.i.i
  %.1.idx.i57.i.i.i.i.i = phi i64 [ %.1.add.i60.i.i.i.i.i, %.lr.ph.i.i.i.i56.i.i.i.i.i ], [ 0, %bb.apb ] ; 2 uses
  %.08.i.i.i.i58.i.i.i.i.i = phi i64 [ %i.ehj, %.lr.ph.i.i.i.i56.i.i.i.i.i ], [ %i.eha, %bb.apb ] ; 3 uses
  %.1.ptr.i59.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i.i.i, i64 %.1.idx.i57.i.i.i.i.i
  %i.ehc = urem i64 %.08.i.i.i.i58.i.i.i.i.i, 100
  %i.ehd = shl nuw nsw i64 %i.ehc, 1
  %i.ehe = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ehd ; 2 uses
  %i.ehf = getelementptr inbounds nuw i8, ptr %i.ehe, i64 1
  %i.ehg = load i8, ptr %i.ehf, align 1, !tbaa !66, !noalias !21177
  %i.ehh = getelementptr inbounds i8, ptr %.1.ptr.i59.i.i.i.i.i, i64 -1
  store i8 %i.ehg, ptr %i.ehh, align 1, !tbaa !66, !noalias !21177
  %i.ehi = load i8, ptr %i.ehe, align 1, !tbaa !66, !noalias !21177
  %.1.add.i60.i.i.i.i.i = add nsw i64 %.1.idx.i57.i.i.i.i.i, -2 ; 3 uses
  %.ptr55.i61.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i.i.i, i64 %.1.add.i60.i.i.i.i.i
  store i8 %i.ehi, ptr %.ptr55.i61.i.i.i.i.i, align 1, !tbaa !66, !noalias !21177
  %i.ehj = udiv i64 %.08.i.i.i.i58.i.i.i.i.i, 100 ; 2 uses
  %i.ehk = icmp samesign ugt i64 %.08.i.i.i.i58.i.i.i.i.i, 9999
  br i1 %i.ehk, label %.lr.ph.i.i.i.i56.i.i.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i.i.i, !llvm.loop !21176

._crit_edge.i.i.i.i31.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i56.i.i.i.i.i, %bb.apb
  %.2.idx.i32.i.i.i.i.i = phi i64 [ 0, %bb.apb ], [ %.1.add.i60.i.i.i.i.i, %.lr.ph.i.i.i.i56.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i33.i.i.i.i.i = phi i64 [ %i.eha, %bb.apb ], [ %i.ehj, %.lr.ph.i.i.i.i56.i.i.i.i.i ] ; 3 uses
  %i.ehl = icmp sgt i64 %.0.lcssa.i.i.i.i33.i.i.i.i.i, 9
  br i1 %i.ehl, label %bb.apc, label %bb.apd

bb.apc:                                           ; preds = %._crit_edge.i.i.i.i31.i.i.i.i.i
  %i.ehm = shl nuw nsw i64 %.0.lcssa.i.i.i.i33.i.i.i.i.i, 1
  %i.ehn = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ehm ; 2 uses
  %i.eho = getelementptr inbounds nuw i8, ptr %i.ehn, i64 1
  %i.ehp = load i8, ptr %i.eho, align 1, !tbaa !66, !noalias !21177
  %.2.add.i54.i.i.i.i.i = add nsw i64 %.2.idx.i32.i.i.i.i.i, -1 ; 2 uses
  %.ptr54.i55.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i.i.i, i64 %.2.add.i54.i.i.i.i.i
  store i8 %i.ehp, ptr %.ptr54.i55.i.i.i.i.i, align 1, !tbaa !66, !noalias !21177
  %i.ehq = load i8, ptr %i.ehn, align 1, !tbaa !66, !noalias !21177
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i

bb.apd:                                           ; preds = %._crit_edge.i.i.i.i31.i.i.i.i.i
  %i.ehr = trunc i64 %.0.lcssa.i.i.i.i33.i.i.i.i.i to i8
  %i.ehs = add i8 %i.ehr, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i: ; preds = %bb.apd, %bb.apc
  %.3.idx.i35.i.i.i.i.i = phi i64 [ %.2.add.i54.i.i.i.i.i, %bb.apc ], [ %.2.idx.i32.i.i.i.i.i, %bb.apd ] ; 3 uses
  %.sink.i.i.i.i36.i.i.i.i.i = phi i8 [ %i.ehq, %bb.apc ], [ %i.ehs, %bb.apd ]
  %i.eht = getelementptr i8, ptr %.0.i24.i.i.i.i.i, i64 %.3.idx.i35.i.i.i.i.i ; 2 uses
  %.ptr.i37.i.i.i.i.i = getelementptr i8, ptr %i.eht, i64 -1
  store i8 %.sink.i.i.i.i36.i.i.i.i.i, ptr %.ptr.i37.i.i.i.i.i, align 1, !tbaa !66, !noalias !21177
  %i.ehu = icmp sgt i64 %.3.idx.i35.i.i.i.i.i, -5
  br i1 %i.ehu, label %.lr.ph.i.i.preheader.i50.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i

.lr.ph.i.i.preheader.i50.i.i.i.i.i:               ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i
  %i.ehv = add i64 %.3.idx.i35.i.i.i.i.i, %.063.i25.i.i.i.i.i ; 2 uses
  %i.ehw = add i64 %i.ehv, -2
  %i.ehx = add i64 %.063.i25.i.i.i.i.i, -6
  %umin.i51.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ehw, i64 %i.ehx) ; 2 uses
  %i.ehy = sub i64 %umin.i51.i.i.i.i.i, %.063.i25.i.i.i.i.i
  %scevgep.i52.i.i.i.i.i = getelementptr i8, ptr %.0.i24.i.i.i.i.i, i64 %i.ehy ; 2 uses
  %i.ehz = xor i64 %umin.i51.i.i.i.i.i, -1
  %i.eia = add i64 %i.ehv, %i.ehz
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i52.i.i.i.i.i, i8 48, i64 %i.eia, i1 false), !tbaa !66, !noalias !21177
  %scevgep65.i53.i.i.i.i.i = getelementptr i8, ptr %scevgep.i52.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i50.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i
  %i.eib = phi ptr [ %i.eht, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i ], [ %scevgep65.i53.i.i.i.i.i, %.lr.ph.i.i.preheader.i50.i.i.i.i.i ] ; 3 uses
  %i.eic = shl nsw i64 %i.egz, 1
  %i.eid = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eic
  %i.eie = getelementptr i8, ptr %i.eib, i64 -5
  %226 = load <2 x i8>, ptr %i.eid, align 1, !tbaa !66, !noalias !21177
  %227 = shufflevector <2 x i8> %226, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %228 = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %227, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %228, ptr %i.eie, align 1, !tbaa !66, !noalias !21177
  %i.eif = shl nsw i64 %i.egw, 1
  %i.eig = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eif
  %i.eih = shl nuw nsw i64 %i.egu, 1
  %i.eii = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eih
  %i.eij = add nsw i32 %.sroa.037.0.i22.i.i.i.i.i, 719468 ; 2 uses
  %i.eik = icmp sgt i32 %.sroa.037.0.i22.i.i.i.i.i, -719469
  %i.eil = add nuw nsw i32 %.sroa.037.0.i22.i.i.i.i.i, 573372
  %i.eim = select i1 %i.eik, i32 %i.eij, i32 %i.eil
  %i.ein = sdiv i32 %i.eim, 146097                ; 2 uses
  %.neg.i.i16.i38.i.i.i.i.i = mul nsw i32 %i.ein, -146097
  %i.eio = add nsw i32 %.neg.i.i16.i38.i.i.i.i.i, %i.eij ; 5 uses
  %i.eip = udiv i32 %i.eio, 1460
  %i.eiq = udiv i32 %i.eio, 36524
  %i.eir = udiv i32 %i.eio, 146096
  %.neg33 = add nsw i32 %i.eiq, %i.eio
  %i.eis = add nuw nsw i32 %i.eir, %i.eip
  %i.eit = sub nsw i32 %.neg33, %i.eis            ; 3 uses
  %i.eiu = udiv i32 %i.eit, 365                   ; 2 uses
  %i.eiv = mul nsw i32 %i.ein, 400
  %i.eiw = add nsw i32 %i.eiu, %i.eiv
  %i.eix = udiv i32 %i.eit, 1460
  %i.eiy = udiv i32 %i.eit, 36500
  %.neg36.i.i.i40.i.i.i.i.i = mul i32 %i.eiu, -365
  %.neg37.i.i.i41.i.i.i.i.i = sub nsw i32 %i.eio, %i.eix
  %.neg25.i.i.i42.i.i.i.i.i = add nsw i32 %.neg37.i.i.i41.i.i.i.i.i, %i.eiy
  %i.eiz = add i32 %.neg25.i.i.i42.i.i.i.i.i, %.neg36.i.i.i40.i.i.i.i.i ; 2 uses
  %i.eja = mul i32 %i.eiz, 5
  %i.ejb = add i32 %i.eja, 2                      ; 2 uses
  %i.ejc = udiv i32 %i.ejb, 153                   ; 2 uses
  %i.ejd = mul nuw i32 %i.ejc, 153
  %i.eje = add nuw i32 %i.ejd, 2
  %i.ejf = udiv i32 %i.eje, 5
  %i.ejg = sub i32 %i.eiz, %i.ejf
  %i.ejh = icmp ult i32 %i.ejb, 1530
  %.v.i.i.i43.i.i.i.i.i = select i1 %i.ejh, i32 3, i32 -9
  %i.eji = add nsw i32 %.v.i.i.i43.i.i.i.i.i, %i.ejc ; 2 uses
  %i.ejj = icmp ult i32 %i.eji, 3
  %i.ejk = zext i1 %i.ejj to i32
  %i.ejl = add nsw i32 %i.eiw, %i.ejk
  %i.ejm = shl i32 %i.ejg, 24
  %.sroa.3.0.insert.ext.i.i.i44.i.i.i.i.i = add i32 %i.ejm, 16777216
  %i.ejn = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i44.i.i.i.i.i, 23
  %i.ejo = zext nneg i32 %i.ejn to i64
  %i.ejp = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ejo
  %i.ejq = shl nsw i32 %i.eji, 1
  %i.ejr = and i32 %i.ejq, 510
  %i.ejs = zext nneg i32 %i.ejr to i64
  %i.ejt = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ejs
  %sext.i.i45.i.i.i.i.i = shl i32 %i.ejl, 16
  %229 = ashr exact i32 %sext.i.i45.i.i.i.i.i, 16 ; 2 uses
  %230 = icmp slt i32 %229, 0
  %231 = call i32 @llvm.abs.i32(i32 %229, i1 true) ; 2 uses
  %.lhs.trunc.i.i46.i.i.i.i.i = trunc nuw i32 %231 to i16 ; 3 uses
  %232 = urem i16 %.lhs.trunc.i.i46.i.i.i.i.i, 100
  %233 = shl nuw nsw i16 %232, 1
  %234 = zext nneg i16 %233 to i64
  %235 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %234
  %236 = udiv i16 %.lhs.trunc.i.i46.i.i.i.i.i, 100
  %i.eju = urem i16 %236, 100
  %i.ejv = shl nuw nsw i16 %i.eju, 1
  %i.ejw = zext nneg i16 %i.ejv to i64
  %i.ejx = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ejw
  %i.ejy = getelementptr i8, ptr %i.eib, i64 -21  ; 2 uses
  %237 = load <2 x i8>, ptr %i.eig, align 1, !tbaa !66, !noalias !21177
  %238 = load <2 x i8>, ptr %i.eii, align 1, !tbaa !66, !noalias !21177
  %239 = load <2 x i8>, ptr %i.ejp, align 1, !tbaa !66, !noalias !21177
  %240 = load <2 x i8>, ptr %i.ejt, align 1, !tbaa !66, !noalias !21177
  %241 = load <2 x i8>, ptr %235, align 1, !tbaa !66, !noalias !21177
  %242 = load <2 x i8>, ptr %i.ejx, align 1, !tbaa !66, !noalias !21177
  %243 = shufflevector <2 x i8> %242, <2 x i8> %241, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %244 = shufflevector <16 x i8> %243, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %245 = shufflevector <2 x i8> %240, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %246 = shufflevector <16 x i8> %244, <16 x i8> %245, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %247 = shufflevector <2 x i8> %239, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %248 = shufflevector <16 x i8> %246, <16 x i8> %247, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %249 = shufflevector <2 x i8> %238, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %250 = shufflevector <16 x i8> %248, <16 x i8> %249, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %251 = shufflevector <2 x i8> %237, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %252 = shufflevector <16 x i8> %250, <16 x i8> %251, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %252, ptr %i.ejy, align 1, !tbaa !66, !noalias !21177
  %i.ejz = icmp samesign ugt i32 %231, 9999
  br i1 %i.ejz, label %bb.ape, label %bb.apf

bb.ape:                                           ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %i.eka = udiv i16 %.lhs.trunc.i.i46.i.i.i.i.i, 10000
  %i.ekb = trunc nuw nsw i16 %i.eka to i8
  %i.ekc = or disjoint i8 %i.ekb, 48
  %i.ekd = getelementptr i8, ptr %i.eib, i64 -22  ; 2 uses
  store i8 %i.ekc, ptr %i.ekd, align 1, !tbaa !66, !noalias !21177
  br label %bb.apf

bb.apf:                                           ; preds = %bb.ape, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %.4.i47.i.i.i.i.i = phi ptr [ %i.ekd, %bb.ape ], [ %i.ejy, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i ] ; 2 uses
  br i1 %230, label %bb.apg, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i

bb.apg:                                           ; preds = %bb.apf
  %i.eke = getelementptr inbounds i8, ptr %.4.i47.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.eke, align 1, !tbaa !66, !noalias !21177
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i: ; preds = %bb.apg, %bb.apf
  %.5.i49.i.i.i.i.i = phi ptr [ %i.eke, %bb.apg ], [ %.4.i47.i.i.i.i.i, %bb.apf ] ; 2 uses
  %i.ekf = ptrtoint ptr %i.egs to i64
  %i.ekg = ptrtoint ptr %.5.i49.i.i.i.i.i to i64
  %i.ekh = sub i64 %i.ekf, %i.ekg
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_13TimestampTypeEvEENS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %94, i64 %i.ekh, ptr nonnull %.5.i49.i.i.i.i.i)
          to label %.noexc11.i.i unwind label %bb.aqo, !noalias !21163

.noexc11.i.i:                                     ; preds = %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #28, !noalias !21177
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222

bb.aph:                                           ; preds = %bb.aoi
  %i.eki = sdiv i64 %.val7.i.i, 86400000000000    ; 3 uses
  %i.ekj = trunc nsw i64 %i.eki to i32            ; 2 uses
  %i.ekk = mul nsw i64 %i.eki, 86400000000000     ; 2 uses
  %.not53.i63.i.i.i.i.i = icmp sgt i64 %i.ekk, %.val7.i.i
  br i1 %.not53.i63.i.i.i.i.i, label %bb.apj, label %bb.api

bb.api:                                           ; preds = %bb.aph
  %.neg.i.i.i64.i.i.i.i.i = mul nsw i64 %i.eki, -86400000000000
  %i.ekl = add i64 %.neg.i.i.i64.i.i.i.i.i, %.val7.i.i
  br label %bb.apk

bb.apj:                                           ; preds = %bb.aph
  %.neg.i105.i.i.i.i.i = add i64 %.val7.i.i, 86400000000000
  %i.ekm = sub i64 %.neg.i105.i.i.i.i.i, %i.ekk
  %i.ekn = add nsw i32 %i.ekj, -1
  br label %bb.apk

bb.apk:                                           ; preds = %bb.apj, %bb.api
  %.sroa.036.0.i65.i.i.i.i.i = phi i64 [ %i.ekl, %bb.api ], [ %i.ekm, %bb.apj ]
  %.sroa.037.0.i66.i.i.i.i.i = phi i32 [ %i.ekj, %bb.api ], [ %i.ekn, %bb.apj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #28, !noalias !21180
  %i.eko = getelementptr inbounds nuw i8, ptr %90, i64 32 ; 2 uses
  %.not.i67.i.i.i.i.i = icmp eq i64 %.val5.i.i1188, 0
  br i1 %.not.i67.i.i.i.i.i, label %bb.apm, label %bb.apl

bb.apl:                                           ; preds = %bb.apk
  %i.ekp = getelementptr inbounds nuw i8, ptr %90, i64 31 ; 2 uses
  store i8 90, ptr %i.ekp, align 1, !tbaa !66, !noalias !21180
  br label %bb.apm

bb.apm:                                           ; preds = %bb.apl, %bb.apk
  %.0.i68.i.i.i.i.i = phi ptr [ %i.eko, %bb.apk ], [ %i.ekp, %bb.apl ] ; 6 uses
  %.063.i69.i.i.i.i.i = ptrtoint ptr %.0.i68.i.i.i.i.i to i64 ; 3 uses
  %spec.select.i.i.i.i70.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i65.i.i.i.i.i, i1 true) ; 3 uses
  %i.ekq = udiv i64 %spec.select.i.i.i.i70.i.i.i.i.i, 3600000000000 ; 3 uses
  %i.ekr = udiv i64 %spec.select.i.i.i.i70.i.i.i.i.i, 60000000000
  %.neg.i.i.i.i71.i.i.i.i.i = mul nsw i64 %i.ekq, -60
  %i.eks = add nsw i64 %.neg.i.i.i.i71.i.i.i.i.i, %i.ekr ; 2 uses
  %.neg.i7.i.i.i72.i.i.i.i.i = mul nsw i64 %i.ekq, -3600000000000
  %i.ekt = add nsw i64 %.neg.i7.i.i.i72.i.i.i.i.i, %spec.select.i.i.i.i70.i.i.i.i.i
  %.neg.i8.i.i.i73.i.i.i.i.i = mul nsw i64 %i.eks, -60000000000
  %i.eku = add i64 %i.ekt, %.neg.i8.i.i.i73.i.i.i.i.i ; 2 uses
  %i.ekv = sdiv i64 %i.eku, 1000000000            ; 2 uses
  %.neg.i.i.i.i.i74.i.i.i.i.i = mul nsw i64 %i.ekv, -1000000000
  %i.ekw = add i64 %.neg.i.i.i.i.i74.i.i.i.i.i, %i.eku ; 3 uses
  %i.ekx = icmp sgt i64 %i.ekw, 99
  br i1 %i.ekx, label %.lr.ph.i.i.i.i99.i.i.i.i.i, label %._crit_edge.i.i.i.i75.i.i.i.i.i

.lr.ph.i.i.i.i99.i.i.i.i.i:                       ; preds = %bb.apm, %.lr.ph.i.i.i.i99.i.i.i.i.i
  %.1.idx.i100.i.i.i.i.i = phi i64 [ %.1.add.i103.i.i.i.i.i, %.lr.ph.i.i.i.i99.i.i.i.i.i ], [ 0, %bb.apm ] ; 2 uses
  %.08.i.i.i.i101.i.i.i.i.i = phi i64 [ %i.elf, %.lr.ph.i.i.i.i99.i.i.i.i.i ], [ %i.ekw, %bb.apm ] ; 3 uses
  %.1.ptr.i102.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i68.i.i.i.i.i, i64 %.1.idx.i100.i.i.i.i.i
  %i.eky = urem i64 %.08.i.i.i.i101.i.i.i.i.i, 100
  %i.ekz = shl nuw nsw i64 %i.eky, 1
  %i.ela = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ekz ; 2 uses
  %i.elb = getelementptr inbounds nuw i8, ptr %i.ela, i64 1
  %i.elc = load i8, ptr %i.elb, align 1, !tbaa !66, !noalias !21180
  %i.eld = getelementptr inbounds i8, ptr %.1.ptr.i102.i.i.i.i.i, i64 -1
  store i8 %i.elc, ptr %i.eld, align 1, !tbaa !66, !noalias !21180
  %i.ele = load i8, ptr %i.ela, align 1, !tbaa !66, !noalias !21180
  %.1.add.i103.i.i.i.i.i = add nsw i64 %.1.idx.i100.i.i.i.i.i, -2 ; 3 uses
  %.ptr55.i104.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i68.i.i.i.i.i, i64 %.1.add.i103.i.i.i.i.i
  store i8 %i.ele, ptr %.ptr55.i104.i.i.i.i.i, align 1, !tbaa !66, !noalias !21180
  %i.elf = udiv i64 %.08.i.i.i.i101.i.i.i.i.i, 100 ; 2 uses
  %i.elg = icmp samesign ugt i64 %.08.i.i.i.i101.i.i.i.i.i, 9999
  br i1 %i.elg, label %.lr.ph.i.i.i.i99.i.i.i.i.i, label %._crit_edge.i.i.i.i75.i.i.i.i.i, !llvm.loop !21176

._crit_edge.i.i.i.i75.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i99.i.i.i.i.i, %bb.apm
  %.2.idx.i76.i.i.i.i.i = phi i64 [ 0, %bb.apm ], [ %.1.add.i103.i.i.i.i.i, %.lr.ph.i.i.i.i99.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i77.i.i.i.i.i = phi i64 [ %i.ekw, %bb.apm ], [ %i.elf, %.lr.ph.i.i.i.i99.i.i.i.i.i ] ; 3 uses
  %i.elh = icmp sgt i64 %.0.lcssa.i.i.i.i77.i.i.i.i.i, 9
  br i1 %i.elh, label %bb.apn, label %bb.apo

bb.apn:                                           ; preds = %._crit_edge.i.i.i.i75.i.i.i.i.i
  %i.eli = shl nuw nsw i64 %.0.lcssa.i.i.i.i77.i.i.i.i.i, 1
  %i.elj = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eli ; 2 uses
  %i.elk = getelementptr inbounds nuw i8, ptr %i.elj, i64 1
  %i.ell = load i8, ptr %i.elk, align 1, !tbaa !66, !noalias !21180
  %.2.add.i97.i.i.i.i.i = add nsw i64 %.2.idx.i76.i.i.i.i.i, -1 ; 2 uses
  %.ptr54.i98.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i68.i.i.i.i.i, i64 %.2.add.i97.i.i.i.i.i
  store i8 %i.ell, ptr %.ptr54.i98.i.i.i.i.i, align 1, !tbaa !66, !noalias !21180
  %i.elm = load i8, ptr %i.elj, align 1, !tbaa !66, !noalias !21180
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i78.i.i.i.i.i

bb.apo:                                           ; preds = %._crit_edge.i.i.i.i75.i.i.i.i.i
  %i.eln = trunc i64 %.0.lcssa.i.i.i.i77.i.i.i.i.i to i8
  %i.elo = add i8 %i.eln, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i78.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i78.i.i.i.i.i: ; preds = %bb.apo, %bb.apn
  %.3.idx.i79.i.i.i.i.i = phi i64 [ %.2.add.i97.i.i.i.i.i, %bb.apn ], [ %.2.idx.i76.i.i.i.i.i, %bb.apo ] ; 3 uses
  %.sink.i.i.i.i80.i.i.i.i.i = phi i8 [ %i.elm, %bb.apn ], [ %i.elo, %bb.apo ]
  %i.elp = getelementptr i8, ptr %.0.i68.i.i.i.i.i, i64 %.3.idx.i79.i.i.i.i.i ; 2 uses
  %.ptr.i81.i.i.i.i.i = getelementptr i8, ptr %i.elp, i64 -1
  store i8 %.sink.i.i.i.i80.i.i.i.i.i, ptr %.ptr.i81.i.i.i.i.i, align 1, !tbaa !66, !noalias !21180
  %i.elq = icmp sgt i64 %.3.idx.i79.i.i.i.i.i, -8
  br i1 %i.elq, label %.lr.ph.i.i.preheader.i93.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i

.lr.ph.i.i.preheader.i93.i.i.i.i.i:               ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i78.i.i.i.i.i
  %i.elr = add i64 %.3.idx.i79.i.i.i.i.i, %.063.i69.i.i.i.i.i ; 2 uses
  %i.els = add i64 %i.elr, -2
  %i.elt = add i64 %.063.i69.i.i.i.i.i, -9
  %umin.i94.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.els, i64 %i.elt) ; 2 uses
  %i.elu = sub i64 %umin.i94.i.i.i.i.i, %.063.i69.i.i.i.i.i
  %scevgep.i95.i.i.i.i.i = getelementptr i8, ptr %.0.i68.i.i.i.i.i, i64 %i.elu ; 2 uses
  %i.elv = xor i64 %umin.i94.i.i.i.i.i, -1
  %i.elw = add i64 %i.elr, %i.elv
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i95.i.i.i.i.i, i8 48, i64 %i.elw, i1 false), !tbaa !66, !noalias !21180
  %scevgep65.i96.i.i.i.i.i = getelementptr i8, ptr %scevgep.i95.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i93.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i78.i.i.i.i.i
  %i.elx = phi ptr [ %i.elp, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i78.i.i.i.i.i ], [ %scevgep65.i96.i.i.i.i.i, %.lr.ph.i.i.preheader.i93.i.i.i.i.i ] ; 3 uses
  %i.ely = shl nsw i64 %i.ekv, 1
  %i.elz = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ely
  %i.ema = getelementptr i8, ptr %i.elx, i64 -5
  %253 = load <2 x i8>, ptr %i.elz, align 1, !tbaa !66, !noalias !21180
  %254 = shufflevector <2 x i8> %253, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %255 = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %254, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %255, ptr %i.ema, align 1, !tbaa !66, !noalias !21180
  %i.emb = shl nsw i64 %i.eks, 1
  %i.emc = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.emb
  %i.emd = shl nuw nsw i64 %i.ekq, 1
  %i.eme = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.emd
  %i.emf = add nsw i32 %.sroa.037.0.i66.i.i.i.i.i, 719468 ; 2 uses
  %i.emg = udiv i32 %i.emf, 146097                ; 2 uses
  %.neg.i.i16.i82.i.i.i.i.i = mul nsw i32 %i.emg, -146097
  %i.emh = add nsw i32 %.neg.i.i16.i82.i.i.i.i.i, %i.emf ; 5 uses
  %i.emi = udiv i32 %i.emh, 1460
  %i.emj = udiv i32 %i.emh, 36524
  %i.emk = udiv i32 %i.emh, 146096
  %.neg43 = add nsw i32 %i.emj, %i.emh
  %i.eml = add nuw nsw i32 %i.emk, %i.emi
  %i.emm = sub nsw i32 %.neg43, %i.eml            ; 3 uses
  %i.emn = udiv i32 %i.emm, 365                   ; 2 uses
  %i.emo = mul nuw nsw i32 %i.emg, 400
  %i.emp = add nuw nsw i32 %i.emn, %i.emo
  %i.emq = udiv i32 %i.emm, 1460
  %i.emr = udiv i32 %i.emm, 36500
  %.neg36.i.i.i84.i.i.i.i.i = mul i32 %i.emn, -365
  %.neg37.i.i.i85.i.i.i.i.i = sub nsw i32 %i.emh, %i.emq
  %.neg25.i.i.i86.i.i.i.i.i = add nsw i32 %.neg37.i.i.i85.i.i.i.i.i, %i.emr
  %i.ems = add i32 %.neg25.i.i.i86.i.i.i.i.i, %.neg36.i.i.i84.i.i.i.i.i ; 2 uses
  %i.emt = mul i32 %i.ems, 5
  %i.emu = add i32 %i.emt, 2                      ; 2 uses
  %i.emv = udiv i32 %i.emu, 153                   ; 2 uses
  %i.emw = mul nuw i32 %i.emv, 153
  %i.emx = add nuw i32 %i.emw, 2
  %i.emy = udiv i32 %i.emx, 5
  %i.emz = sub i32 %i.ems, %i.emy
  %i.ena = icmp ult i32 %i.emu, 1530
  %.v.i.i.i87.i.i.i.i.i = select i1 %i.ena, i32 3, i32 -9
  %i.enb = add nsw i32 %.v.i.i.i87.i.i.i.i.i, %i.emv ; 2 uses
  %i.enc = icmp ult i32 %i.enb, 3
  %i.end = zext i1 %i.enc to i32
  %i.ene = add nuw nsw i32 %i.emp, %i.end
  %i.enf = shl i32 %i.emz, 24
  %.sroa.3.0.insert.ext.i.i.i88.i.i.i.i.i = add i32 %i.enf, 16777216
  %i.eng = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i88.i.i.i.i.i, 23
  %i.enh = zext nneg i32 %i.eng to i64
  %i.eni = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.enh
  %i.enj = shl nsw i32 %i.enb, 1
  %i.enk = and i32 %i.enj, 510
  %i.enl = zext nneg i32 %i.enk to i64
  %i.enm = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.enl
  %sext.i.i89.i.i.i.i.i = shl i32 %i.ene, 16
  %256 = ashr exact i32 %sext.i.i89.i.i.i.i.i, 16 ; 2 uses
  %257 = icmp slt i32 %256, 0
  %258 = call i32 @llvm.abs.i32(i32 %256, i1 true) ; 2 uses
  %.lhs.trunc.i.i90.i.i.i.i.i = trunc nuw i32 %258 to i16 ; 3 uses
  %259 = urem i16 %.lhs.trunc.i.i90.i.i.i.i.i, 100
  %260 = shl nuw nsw i16 %259, 1
  %261 = zext nneg i16 %260 to i64
  %262 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %261
  %263 = udiv i16 %.lhs.trunc.i.i90.i.i.i.i.i, 100
  %i.enn = urem i16 %263, 100
  %i.eno = shl nuw nsw i16 %i.enn, 1
  %i.enp = zext nneg i16 %i.eno to i64
  %i.enq = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.enp
  %i.enr = getelementptr i8, ptr %i.elx, i64 -21  ; 2 uses
  %264 = load <2 x i8>, ptr %i.emc, align 1, !tbaa !66, !noalias !21180
  %265 = load <2 x i8>, ptr %i.eme, align 1, !tbaa !66, !noalias !21180
  %266 = load <2 x i8>, ptr %i.eni, align 1, !tbaa !66, !noalias !21180
  %267 = load <2 x i8>, ptr %i.enm, align 1, !tbaa !66, !noalias !21180
  %268 = load <2 x i8>, ptr %262, align 1, !tbaa !66, !noalias !21180
  %269 = load <2 x i8>, ptr %i.enq, align 1, !tbaa !66, !noalias !21180
  %270 = shufflevector <2 x i8> %269, <2 x i8> %268, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %271 = shufflevector <16 x i8> %270, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %272 = shufflevector <2 x i8> %267, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %273 = shufflevector <16 x i8> %271, <16 x i8> %272, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %274 = shufflevector <2 x i8> %266, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %275 = shufflevector <16 x i8> %273, <16 x i8> %274, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %276 = shufflevector <2 x i8> %265, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %277 = shufflevector <16 x i8> %275, <16 x i8> %276, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %278 = shufflevector <2 x i8> %264, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %279 = shufflevector <16 x i8> %277, <16 x i8> %278, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %279, ptr %i.enr, align 1, !tbaa !66, !noalias !21180
  %i.ens = icmp samesign ugt i32 %258, 9999
  br i1 %i.ens, label %bb.app, label %bb.apq

bb.app:                                           ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %i.ent = udiv i16 %.lhs.trunc.i.i90.i.i.i.i.i, 10000
  %i.enu = trunc nuw nsw i16 %i.ent to i8
  %i.env = or disjoint i8 %i.enu, 48
  %i.enw = getelementptr i8, ptr %i.elx, i64 -22  ; 2 uses
  store i8 %i.env, ptr %i.enw, align 1, !tbaa !66, !noalias !21180
  br label %bb.apq

bb.apq:                                           ; preds = %bb.app, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %.4.i91.i.i.i.i.i = phi ptr [ %i.enw, %bb.app ], [ %i.enr, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i ] ; 2 uses
  br i1 %257, label %bb.apr, label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZNS_12_GLOBAL__N_114FormatToBufferIS3_NS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISI_EEtlSO_EEESG_lOSI_.exit.i.i.i.i.i

bb.apr:                                           ; preds = %bb.apq
  %i.enx = getelementptr inbounds i8, ptr %.4.i91.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.enx, align 1, !tbaa !66, !noalias !21180
  br label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZNS_12_GLOBAL__N_114FormatToBufferIS3_NS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISI_EEtlSO_EEESG_lOSI_.exit.i.i.i.i.i

_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZNS_12_GLOBAL__N_114FormatToBufferIS3_NS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISI_EEtlSO_EEESG_lOSI_.exit.i.i.i.i.i: ; preds = %bb.apr, %bb.apq
  %.5.i92.i.i.i.i.i = phi ptr [ %i.enx, %bb.apr ], [ %.4.i91.i.i.i.i.i, %bb.apq ] ; 2 uses
  %i.eny = ptrtoint ptr %i.eko to i64
  %i.enz = ptrtoint ptr %.5.i92.i.i.i.i.i to i64
  %i.eoa = sub i64 %i.eny, %i.enz
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_13TimestampTypeEvEENS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %94, i64 %i.eoa, ptr nonnull %.5.i92.i.i.i.i.i)
          to label %.noexc12.i.i unwind label %bb.aqo, !noalias !21163

.noexc12.i.i:                                     ; preds = %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZNS_12_GLOBAL__N_114FormatToBufferIS3_NS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISI_EEtlSO_EEESG_lOSI_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #28, !noalias !21180
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222

bb.aps:                                           ; preds = %bb.aoi
  %i.eob = add i64 %.val7.i.i, 1096193779200
  %spec.select.i.i106.i.i.i.i.i = icmp ult i64 %i.eob, 2068084742400
  %.sroa.gep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %89, i64 23 ; 2 uses
  %.sroa.gep52.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %89, i64 22 ; 2 uses
  br i1 %spec.select.i.i106.i.i.i.i.i, label %bb.apt, label %.invoke.i.i, !prof !218

.invoke.i.i:                                      ; preds = %bb.aps, %bb.aov, %bb.aoj
  invoke fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZNS_12_GLOBAL__N_114FormatToBufferINS0_15StringFormatterINS_13TimestampTypeEvEENS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISF_EEtlSL_EEESE_OSF_(ptr dead_on_unwind noalias nonnull writable align 8 %94, i64 %.val7.i.i)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222 unwind label %bb.aqo, !noalias !21163

bb.apt:                                           ; preds = %bb.aps
  %i.eoc = sdiv i64 %.val7.i.i, 86400             ; 3 uses
  %i.eod = trunc nsw i64 %i.eoc to i32            ; 2 uses
  %i.eoe = mul nsw i64 %i.eoc, 86400              ; 2 uses
  %.not46.i.i.i.i.i.i = icmp sgt i64 %i.eoe, %.val7.i.i
  br i1 %.not46.i.i.i.i.i.i, label %bb.apv, label %bb.apu

bb.apu:                                           ; preds = %bb.apt
  %.neg.i.i.i107.i.i.i.i.i = mul nsw i64 %i.eoc, -86400
  %i.eof = add nsw i64 %.neg.i.i.i107.i.i.i.i.i, %.val7.i.i
  br label %bb.apw

bb.apv:                                           ; preds = %bb.apt
  %.neg.i122.i.i.i.i.i = add nsw i64 %.val7.i.i, 86400
  %i.eog = sub nsw i64 %.neg.i122.i.i.i.i.i, %i.eoe
  %i.eoh = add nsw i32 %i.eod, -1
  br label %bb.apw

bb.apw:                                           ; preds = %bb.apv, %bb.apu
  %.sroa.029.0.i.i.i.i.i.i = phi i64 [ %i.eof, %bb.apu ], [ %i.eog, %bb.apv ]
  %.sroa.030.0.i.i.i.i.i.i = phi i32 [ %i.eod, %bb.apu ], [ %i.eoh, %bb.apv ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #28, !noalias !21183
  %.not.i108.i.i.i.i.i = icmp eq i64 %.val5.i.i1188, 0
  br i1 %.not.i108.i.i.i.i.i, label %bb.apy, label %bb.apx

bb.apx:                                           ; preds = %bb.apw
  store i8 90, ptr %.sroa.gep52.i.i.i.i.i.i, align 1, !tbaa !66, !noalias !21183
  br label %bb.apy

bb.apy:                                           ; preds = %bb.apx, %bb.apw
  %.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sroa.gep.i.i.i.i.i.i, %bb.apw ], [ %.sroa.gep52.i.i.i.i.i.i, %bb.apx ] ; 5 uses
  %spec.select.i.i.i.i109.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.029.0.i.i.i.i.i.i, i1 true) ; 3 uses
  %i.eoi = udiv i64 %spec.select.i.i.i.i109.i.i.i.i.i, 3600 ; 3 uses
  %i.eoj = udiv i64 %spec.select.i.i.i.i109.i.i.i.i.i, 60
  %.neg.i.i.i.i110.i.i.i.i.i = mul nsw i64 %i.eoi, -60
  %i.eok = add nsw i64 %.neg.i.i.i.i110.i.i.i.i.i, %i.eoj ; 2 uses
  %.neg.i7.i.i.i111.i.i.i.i.i = mul nsw i64 %i.eoi, -3600
  %i.eol = add nsw i64 %.neg.i7.i.i.i111.i.i.i.i.i, %spec.select.i.i.i.i109.i.i.i.i.i
  %.neg.i8.i.i.i112.i.i.i.i.i = mul nsw i64 %i.eok, -60
  %i.eom = add nsw i64 %i.eol, %.neg.i8.i.i.i112.i.i.i.i.i
  %i.eon = shl nsw i64 %i.eom, 1
  %i.eoo = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eon ; 2 uses
  %i.eop = getelementptr inbounds nuw i8, ptr %i.eoo, i64 1
  %i.eoq = load i8, ptr %i.eop, align 1, !tbaa !66, !noalias !21183
  %i.eor = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i, i64 -1
  store i8 %i.eoq, ptr %i.eor, align 1, !tbaa !66, !noalias !21183
  %i.eos = load i8, ptr %i.eoo, align 1, !tbaa !66, !noalias !21183
  %i.eot = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i, i64 -2
  store i8 %i.eos, ptr %i.eot, align 1, !tbaa !66, !noalias !21183
  %i.eou = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i, i64 -3
  store i8 58, ptr %i.eou, align 1, !tbaa !66, !noalias !21183
  %i.eov = shl nsw i64 %i.eok, 1
  %i.eow = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eov
  %i.eox = shl nuw nsw i64 %i.eoi, 1
  %i.eoy = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eox
  %i.eoz = add nsw i32 %.sroa.030.0.i.i.i.i.i.i, 719468 ; 2 uses
  %i.epa = icmp sgt i32 %.sroa.030.0.i.i.i.i.i.i, -719469
  %i.epb = add nuw nsw i32 %.sroa.030.0.i.i.i.i.i.i, 573372
  %i.epc = select i1 %i.epa, i32 %i.eoz, i32 %i.epb
  %i.epd = sdiv i32 %i.epc, 146097                ; 2 uses
  %.neg.i.i16.i113.i.i.i.i.i = mul nsw i32 %i.epd, -146097
  %i.epe = add nsw i32 %.neg.i.i16.i113.i.i.i.i.i, %i.eoz ; 5 uses
  %i.epf = udiv i32 %i.epe, 1460
  %i.epg = udiv i32 %i.epe, 36524
  %i.eph = udiv i32 %i.epe, 146096
  %.neg48 = add nsw i32 %i.epg, %i.epe
  %i.epi = add nuw nsw i32 %i.eph, %i.epf
  %i.epj = sub nsw i32 %.neg48, %i.epi            ; 3 uses
  %i.epk = udiv i32 %i.epj, 365                   ; 2 uses
  %i.epl = mul nsw i32 %i.epd, 400
  %i.epm = add nsw i32 %i.epk, %i.epl
  %i.epn = udiv i32 %i.epj, 1460
  %i.epo = udiv i32 %i.epj, 36500
  %.neg36.i.i.i114.i.i.i.i.i = mul i32 %i.epk, -365
  %.neg37.i.i.i115.i.i.i.i.i = sub nsw i32 %i.epe, %i.epn
  %.neg25.i.i.i116.i.i.i.i.i = add nsw i32 %.neg37.i.i.i115.i.i.i.i.i, %i.epo
  %i.epp = add i32 %.neg25.i.i.i116.i.i.i.i.i, %.neg36.i.i.i114.i.i.i.i.i ; 2 uses
  %i.epq = mul i32 %i.epp, 5
  %i.epr = add i32 %i.epq, 2                      ; 2 uses
  %i.eps = udiv i32 %i.epr, 153                   ; 2 uses
  %i.ept = mul nuw i32 %i.eps, 153
  %i.epu = add nuw i32 %i.ept, 2
  %i.epv = udiv i32 %i.epu, 5
  %i.epw = sub i32 %i.epp, %i.epv
  %i.epx = icmp ult i32 %i.epr, 1530
  %.v.i.i.i117.i.i.i.i.i = select i1 %i.epx, i32 3, i32 -9
  %i.epy = add nsw i32 %.v.i.i.i117.i.i.i.i.i, %i.eps ; 2 uses
  %i.epz = icmp ult i32 %i.epy, 3
  %i.eqa = zext i1 %i.epz to i32
  %i.eqb = add nsw i32 %i.epm, %i.eqa
  %i.eqc = shl i32 %i.epw, 24
  %.sroa.3.0.insert.ext.i.i.i118.i.i.i.i.i = add i32 %i.eqc, 16777216
  %i.eqd = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i118.i.i.i.i.i, 23
  %i.eqe = zext nneg i32 %i.eqd to i64
  %i.eqf = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eqe
  %i.eqg = shl nsw i32 %i.epy, 1
  %i.eqh = and i32 %i.eqg, 510
  %i.eqi = zext nneg i32 %i.eqh to i64
  %i.eqj = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eqi
  %sext.i.i119.i.i.i.i.i = shl i32 %i.eqb, 16
  %i.eqk = ashr exact i32 %sext.i.i119.i.i.i.i.i, 16 ; 2 uses
  %i.eql = icmp slt i32 %i.eqk, 0
  %i.eqm = call i32 @llvm.abs.i32(i32 %i.eqk, i1 true) ; 2 uses
  %.lhs.trunc.i.i120.i.i.i.i.i = trunc nuw i32 %i.eqm to i16 ; 3 uses
  %i.eqn = urem i16 %.lhs.trunc.i.i120.i.i.i.i.i, 100
  %i.eqo = shl nuw nsw i16 %i.eqn, 1
  %i.eqp = zext nneg i16 %i.eqo to i64
  %i.eqq = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eqp
  %i.eqr = udiv i16 %.lhs.trunc.i.i120.i.i.i.i.i, 100
  %i.eqs = urem i16 %i.eqr, 100
  %i.eqt = shl nuw nsw i16 %i.eqs, 1
  %i.equ = zext nneg i16 %i.eqt to i64
  %i.eqv = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.equ
  %i.eqw = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i, i64 -19 ; 2 uses
  %i.eqx = load <2 x i8>, ptr %i.eow, align 1, !tbaa !66, !noalias !21183
  %i.eqy = load <2 x i8>, ptr %i.eoy, align 1, !tbaa !66, !noalias !21183
  %i.eqz = load <2 x i8>, ptr %i.eqf, align 1, !tbaa !66, !noalias !21183
  %i.era = load <2 x i8>, ptr %i.eqj, align 1, !tbaa !66, !noalias !21183
  %i.erb = load <2 x i8>, ptr %i.eqq, align 1, !tbaa !66, !noalias !21183
  %i.erc = load <2 x i8>, ptr %i.eqv, align 1, !tbaa !66, !noalias !21183
  %i.erd = shufflevector <2 x i8> %i.erc, <2 x i8> %i.erb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ere = shufflevector <16 x i8> %i.erd, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.erf = shufflevector <2 x i8> %i.era, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.erg = shufflevector <16 x i8> %i.ere, <16 x i8> %i.erf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.erh = shufflevector <2 x i8> %i.eqz, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eri = shufflevector <16 x i8> %i.erg, <16 x i8> %i.erh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.erj = shufflevector <2 x i8> %i.eqy, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.erk = shufflevector <16 x i8> %i.eri, <16 x i8> %i.erj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.erl = shufflevector <2 x i8> %i.eqx, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.erm = shufflevector <16 x i8> %i.erk, <16 x i8> %i.erl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.erm, ptr %i.eqw, align 1, !tbaa !66, !noalias !21183
  %i.ern = icmp samesign ugt i32 %i.eqm, 9999
  br i1 %i.ern, label %bb.apz, label %bb.aqa

bb.apz:                                           ; preds = %bb.apy
  %i.ero = udiv i16 %.lhs.trunc.i.i120.i.i.i.i.i, 10000
  %i.erp = trunc nuw nsw i16 %i.ero to i8
  %i.erq = or disjoint i8 %i.erp, 48
  %i.err = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i, i64 -20 ; 2 uses
  store i8 %i.erq, ptr %i.err, align 1, !tbaa !66, !noalias !21183
  br label %bb.aqa

bb.aqa:                                           ; preds = %bb.apz, %bb.apy
  %.1.i.i.i.i.i.i = phi ptr [ %i.err, %bb.apz ], [ %i.eqw, %bb.apy ] ; 2 uses
  br i1 %i.eql, label %bb.aqb, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i121.i.i.i.i.i

bb.aqb:                                           ; preds = %bb.aqa
  %i.ers = getelementptr inbounds i8, ptr %.1.i.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.ers, align 1, !tbaa !66, !noalias !21183
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i121.i.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i121.i.i.i.i.i: ; preds = %bb.aqb, %bb.aqa
  %.2.i.i.i.i.i.i = phi ptr [ %i.ers, %bb.aqb ], [ %.1.i.i.i.i.i.i, %bb.aqa ] ; 2 uses
  %i.ert = ptrtoint ptr %.sroa.gep.i.i.i.i.i.i to i64
  %i.eru = ptrtoint ptr %.2.i.i.i.i.i.i to i64
  %i.erv = sub i64 %i.ert, %i.eru
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_13TimestampTypeEvEENS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %94, i64 %i.erv, ptr nonnull %.2.i.i.i.i.i.i)
          to label %.noexc14.i.i unwind label %bb.aqo, !noalias !21163

.noexc14.i.i:                                     ; preds = %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i121.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #28, !noalias !21183
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222: ; preds = %bb.aog, %.noexc14.i.i, %.invoke.i.i, %.noexc12.i.i, %.noexc11.i.i, %.noexc9.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1194
  call void @llvm.lifetime.end.p0(ptr nonnull %93), !noalias !21163
  %i.erw = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %.noexc15.i.i unwind label %bb.aqp, !noalias !21163 ; 12 uses

.noexc15.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222
  %i.erx = getelementptr inbounds nuw i8, ptr %i.erw, i64 8
  store i32 1, ptr %i.erx, align 8, !tbaa !205, !noalias !21186
end_hunk_0
