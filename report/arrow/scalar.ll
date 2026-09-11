Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/scalar?download=true
inline.NumInlined: 43590
inline.NumDeleted: 6060
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a

._crit_edge.i.i.i.i.i1186:                        ; preds = %.noexc10.i1225, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1185
  %i.ebv = phi ptr [ %i.ebu, %.noexc10.i1225 ], [ %i.ebm, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1185 ] ; 3 uses
  switch i64 %i.ebp, label %bb.aof [
    i64 1, label %bb.aoe
    i64 0, label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i
  ]

bb.aoe:                                           ; preds = %._crit_edge.i.i.i.i.i1186
  %i.ebw = load i8, ptr %i.ebn, align 1, !tbaa !142, !noalias !21586
  store i8 %i.ebw, ptr %i.ebv, align 1, !tbaa !142, !noalias !21586
  br label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i

bb.aof:                                           ; preds = %._crit_edge.i.i.i.i.i1186
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ebv, ptr align 1 %i.ebn, i64 %i.ebp, i1 false), !noalias !21586
  br label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i

_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i: ; preds = %bb.aof, %bb.aoe, %._crit_edge.i.i.i.i.i1186
  %i.ebx = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 2 uses
  store i64 %i.ebp, ptr %i.ebx, align 8, !tbaa !161, !noalias !21586
  %i.eby = getelementptr inbounds nuw i8, ptr %i.ebv, i64 %i.ebp
  store i8 0, ptr %i.eby, align 1, !tbaa !142, !noalias !21586
  %.val.i.i1187 = load i32, ptr %95, align 8, !noalias !21586
  %.val5.i.i1188 = load i64, ptr %i.ebx, align 8, !noalias !21586 ; 4 uses
  %i.ebz = getelementptr inbounds nuw i8, ptr %i.eau, i64 40
  %.val6.i.i = load i8, ptr %i.ebz, align 8, !tbaa !154, !range !155, !noalias !21586, !noundef !156
  %i.eca = getelementptr inbounds nuw i8, ptr %i.eau, i64 48
  %.val7.i.i = load i64, ptr %i.eca, align 8, !noalias !21586 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %93), !noalias !21586
  %i.ecb = trunc nuw i8 %.val6.i.i to i1
  br i1 %i.ecb, label %bb.aoi, label %._crit_edge.i.i.i8.i.i

._crit_edge.i.i.i8.i.i:                           ; preds = %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i
  %i.ecc = getelementptr inbounds nuw i8, ptr %93, i64 16 ; 6 uses
  store ptr %i.ecc, ptr %93, align 8, !tbaa !160, !noalias !21589
  store i32 1819047278, ptr %i.ecc, align 8, !noalias !21589
  %i.ecd = getelementptr inbounds nuw i8, ptr %93, i64 8
  store i64 4, ptr %i.ecd, align 8, !tbaa !161, !noalias !21589
  %i.ece = getelementptr inbounds nuw i8, ptr %93, i64 20
  store i8 0, ptr %i.ece, align 4, !tbaa !142, !noalias !21589
  invoke void @_ZN5arrow6Buffer10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.9") align 8 %94, ptr noundef nonnull %93)
          to label %bb.aog unwind label %bb.aoh, !noalias !21586

bb.aog:                                           ; preds = %._crit_edge.i.i.i8.i.i
  %i.ecf = load ptr, ptr %93, align 8, !tbaa !141, !noalias !21589 ; 2 uses
  %i.ecg = icmp eq ptr %i.ecf, %i.ecc
  br i1 %i.ecg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1194: ; preds = %bb.aog
  %i.ech = load i64, ptr %i.ecc, align 8, !tbaa !142, !noalias !21589
  %i.eci = add i64 %i.ech, 1
  call void @_ZdlPvm(ptr noundef %i.ecf, i64 noundef %i.eci) #29, !noalias !21586
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222

bb.aoh:                                           ; preds = %._crit_edge.i.i.i8.i.i
  %i.ecj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eck = load ptr, ptr %93, align 8, !tbaa !141, !noalias !21589 ; 2 uses
  %i.ecl = icmp eq ptr %i.eck, %i.ecc
  br i1 %i.ecl, label %.body.i.i1189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i: ; preds = %bb.aoh
  %i.ecm = load i64, ptr %i.ecc, align 8, !tbaa !142, !noalias !21589
  %i.ecn = add i64 %i.ecm, 1
  call void @_ZdlPvm(ptr noundef %i.eck, i64 noundef %i.ecn) #29, !noalias !21586
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
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.aok, label %.invoke.i.i, !prof !179

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
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #28, !noalias !21590
  %i.ecv = getelementptr inbounds nuw i8, ptr %92, i64 26 ; 2 uses
  %.not.i.i.i.i.i.i1223 = icmp eq i64 %.val5.i.i1188, 0
  br i1 %.not.i.i.i.i.i.i1223, label %bb.aop, label %bb.aoo

bb.aoo:                                           ; preds = %bb.aon
  %i.ecw = getelementptr inbounds nuw i8, ptr %92, i64 25 ; 2 uses
  store i8 90, ptr %i.ecw, align 1, !tbaa !142, !noalias !21590
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
  %i.edj = load i8, ptr %i.edi, align 1, !tbaa !142, !noalias !21590
  %i.edk = getelementptr inbounds i8, ptr %.1.ptr.i.i.i.i.i.i, i64 -1
  store i8 %i.edj, ptr %i.edk, align 1, !tbaa !142, !noalias !21590
  %i.edl = load i8, ptr %i.edh, align 1, !tbaa !142, !noalias !21590
  %.1.add.i.i.i.i.i.i = add nsw i64 %.1.idx.i.i.i.i.i.i, -2 ; 3 uses
  %.ptr55.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i, i64 %.1.add.i.i.i.i.i.i
  store i8 %i.edl, ptr %.ptr55.i.i.i.i.i.i, align 1, !tbaa !142, !noalias !21590
  %i.edm = udiv i64 %.08.i.i.i.i.i.i.i.i.i, 100   ; 2 uses
  %i.edn = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i.i.i, 9999
  br i1 %i.edn, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i1224, !llvm.loop !21024

._crit_edge.i.i.i.i.i.i.i.i.i1224:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.aop
  %.2.idx.i.i.i.i.i.i = phi i64 [ 0, %bb.aop ], [ %.1.add.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ %i.edd, %bb.aop ], [ %i.edm, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.edo = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, 9
  br i1 %i.edo, label %bb.aoq, label %bb.aor

bb.aoq:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i1224
  %i.edp = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, 1
  %i.edq = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.edp ; 2 uses
  %i.edr = getelementptr inbounds nuw i8, ptr %i.edq, i64 1
  %i.eds = load i8, ptr %i.edr, align 1, !tbaa !142, !noalias !21590
  %.2.add.i.i.i.i.i.i = add nsw i64 %.2.idx.i.i.i.i.i.i, -1 ; 2 uses
  %.ptr54.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i, i64 %.2.add.i.i.i.i.i.i
  store i8 %i.eds, ptr %.ptr54.i.i.i.i.i.i, align 1, !tbaa !142, !noalias !21590
  %i.edt = load i8, ptr %i.edq, align 1, !tbaa !142, !noalias !21590
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
  store i8 %.sink.i.i.i.i.i.i.i.i.i, ptr %.ptr.i.i.i.i.i.i, align 1, !tbaa !142, !noalias !21590
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
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i.i.i, i8 48, i64 %i.eed, i1 false), !tbaa !142, !noalias !21590
  %scevgep65.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i
  %i.eee = phi ptr [ %i.edw, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i ], [ %scevgep65.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.eef = shl nsw i64 %i.edc, 1
  %i.eeg = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eef
  %i.eeh = getelementptr i8, ptr %i.eee, i64 -5
  %i.eei = load <2 x i8>, ptr %i.eeg, align 1, !tbaa !142, !noalias !21590
  %i.eej = shufflevector <2 x i8> %i.eei, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.eek = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %i.eej, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.eek, ptr %i.eeh, align 1, !tbaa !142, !noalias !21590
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
  %i.egn = load <2 x i8>, ptr %i.eem, align 1, !tbaa !142, !noalias !21590
  %i.ego = load <2 x i8>, ptr %i.eeo, align 1, !tbaa !142, !noalias !21590
  %i.egp = load <2 x i8>, ptr %i.efv, align 1, !tbaa !142, !noalias !21590
  %i.egq = load <2 x i8>, ptr %i.efz, align 1, !tbaa !142, !noalias !21590
  %i.egr = load <2 x i8>, ptr %i.egg, align 1, !tbaa !142, !noalias !21590
  %i.egs = load <2 x i8>, ptr %i.egl, align 1, !tbaa !142, !noalias !21590
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
  store <16 x i8> %i.ehc, ptr %i.egm, align 1, !tbaa !142, !noalias !21590
  %i.ehd = icmp samesign ugt i32 %i.egc, 9999
  br i1 %i.ehd, label %bb.aos, label %bb.aot

bb.aos:                                           ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %i.ehe = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i, 10000
  %i.ehf = trunc nuw nsw i16 %i.ehe to i8
  %i.ehg = or disjoint i8 %i.ehf, 48
  %i.ehh = getelementptr i8, ptr %i.eee, i64 -22  ; 2 uses
  store i8 %i.ehg, ptr %i.ehh, align 1, !tbaa !142, !noalias !21590
  br label %bb.aot

bb.aot:                                           ; preds = %bb.aos, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %.4.i.i.i.i.i.i = phi ptr [ %i.ehh, %bb.aos ], [ %i.egm, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.egb, label %bb.aou, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i

bb.aou:                                           ; preds = %bb.aot
  %i.ehi = getelementptr inbounds i8, ptr %.4.i.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.ehi, align 1, !tbaa !142, !noalias !21590
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i: ; preds = %bb.aou, %bb.aot
  %.5.i.i.i.i.i.i = phi ptr [ %i.ehi, %bb.aou ], [ %.4.i.i.i.i.i.i, %bb.aot ] ; 2 uses
  %i.ehj = ptrtoint ptr %i.ecv to i64
  %i.ehk = ptrtoint ptr %.5.i.i.i.i.i.i to i64
  %i.ehl = sub i64 %i.ehj, %i.ehk
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_13TimestampTypeEvEENS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %94, i64 %i.ehl, ptr nonnull %.5.i.i.i.i.i.i)
          to label %.noexc9.i.i unwind label %bb.aqo, !noalias !21586

.noexc9.i.i:                                      ; preds = %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #28, !noalias !21590
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222

bb.aov:                                           ; preds = %bb.aoi
  %i.ehm = add i64 %.val7.i.i, 1096193779200000000
  %spec.select.i.i18.i.i.i.i.i = icmp ult i64 %i.ehm, 2068084742400000000
  br i1 %spec.select.i.i18.i.i.i.i.i, label %bb.aow, label %.invoke.i.i, !prof !179

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
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #28, !noalias !21591
  %i.eht = getelementptr inbounds nuw i8, ptr %91, i64 29 ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq i64 %.val5.i.i1188, 0
  br i1 %.not.i23.i.i.i.i.i, label %bb.apb, label %bb.apa

bb.apa:                                           ; preds = %bb.aoz
  %i.ehu = getelementptr inbounds nuw i8, ptr %91, i64 28 ; 2 uses
  store i8 90, ptr %i.ehu, align 1, !tbaa !142, !noalias !21591
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
  %i.eih = load i8, ptr %i.eig, align 1, !tbaa !142, !noalias !21591
  %i.eii = getelementptr inbounds i8, ptr %.1.ptr.i59.i.i.i.i.i, i64 -1
  store i8 %i.eih, ptr %i.eii, align 1, !tbaa !142, !noalias !21591
  %i.eij = load i8, ptr %i.eif, align 1, !tbaa !142, !noalias !21591
  %.1.add.i60.i.i.i.i.i = add nsw i64 %.1.idx.i57.i.i.i.i.i, -2 ; 3 uses
  %.ptr55.i61.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i.i.i, i64 %.1.add.i60.i.i.i.i.i
  store i8 %i.eij, ptr %.ptr55.i61.i.i.i.i.i, align 1, !tbaa !142, !noalias !21591
  %i.eik = udiv i64 %.08.i.i.i.i58.i.i.i.i.i, 100 ; 2 uses
  %i.eil = icmp samesign ugt i64 %.08.i.i.i.i58.i.i.i.i.i, 9999
  br i1 %i.eil, label %.lr.ph.i.i.i.i56.i.i.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i.i.i, !llvm.loop !21024

._crit_edge.i.i.i.i31.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i56.i.i.i.i.i, %bb.apb
  %.2.idx.i32.i.i.i.i.i = phi i64 [ 0, %bb.apb ], [ %.1.add.i60.i.i.i.i.i, %.lr.ph.i.i.i.i56.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i33.i.i.i.i.i = phi i64 [ %i.eib, %bb.apb ], [ %i.eik, %.lr.ph.i.i.i.i56.i.i.i.i.i ] ; 3 uses
  %i.eim = icmp sgt i64 %.0.lcssa.i.i.i.i33.i.i.i.i.i, 9
  br i1 %i.eim, label %bb.apc, label %bb.apd

bb.apc:                                           ; preds = %._crit_edge.i.i.i.i31.i.i.i.i.i
  %i.ein = shl nuw nsw i64 %.0.lcssa.i.i.i.i33.i.i.i.i.i, 1
  %i.eio = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ein ; 2 uses
  %i.eip = getelementptr inbounds nuw i8, ptr %i.eio, i64 1
  %i.eiq = load i8, ptr %i.eip, align 1, !tbaa !142, !noalias !21591
  %.2.add.i54.i.i.i.i.i = add nsw i64 %.2.idx.i32.i.i.i.i.i, -1 ; 2 uses
  %.ptr54.i55.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i.i.i, i64 %.2.add.i54.i.i.i.i.i
  store i8 %i.eiq, ptr %.ptr54.i55.i.i.i.i.i, align 1, !tbaa !142, !noalias !21591
  %i.eir = load i8, ptr %i.eio, align 1, !tbaa !142, !noalias !21591
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  store i8 %i.enn, ptr %.ptr54.i98.i.i.i.i.i, align 1, !tbaa !142, !noalias !21592
  %i.eno = load i8, ptr %i.enl, align 1, !tbaa !142, !noalias !21592
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
  store i8 %.sink.i.i.i.i80.i.i.i.i.i, ptr %.ptr.i81.i.i.i.i.i, align 1, !tbaa !142, !noalias !21592
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
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i95.i.i.i.i.i, i8 48, i64 %i.eny, i1 false), !tbaa !142, !noalias !21592
  %scevgep65.i96.i.i.i.i.i = getelementptr i8, ptr %scevgep.i95.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i93.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i78.i.i.i.i.i
  %i.enz = phi ptr [ %i.enr, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i78.i.i.i.i.i ], [ %scevgep65.i96.i.i.i.i.i, %.lr.ph.i.i.preheader.i93.i.i.i.i.i ] ; 3 uses
  %i.eoa = shl nsw i64 %i.emx, 1
  %i.eob = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eoa
  %i.eoc = getelementptr i8, ptr %i.enz, i64 -5
  %i.eod = load <2 x i8>, ptr %i.eob, align 1, !tbaa !142, !noalias !21592
  %i.eoe = shufflevector <2 x i8> %i.eod, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.eof = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %i.eoe, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.eof, ptr %i.eoc, align 1, !tbaa !142, !noalias !21592
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
  %i.eqf = load <2 x i8>, ptr %i.eoh, align 1, !tbaa !142, !noalias !21592
  %i.eqg = load <2 x i8>, ptr %i.eoj, align 1, !tbaa !142, !noalias !21592
  %i.eqh = load <2 x i8>, ptr %i.epn, align 1, !tbaa !142, !noalias !21592
  %i.eqi = load <2 x i8>, ptr %i.epr, align 1, !tbaa !142, !noalias !21592
  %i.eqj = load <2 x i8>, ptr %i.epy, align 1, !tbaa !142, !noalias !21592
  %i.eqk = load <2 x i8>, ptr %i.eqd, align 1, !tbaa !142, !noalias !21592
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
  store <16 x i8> %i.equ, ptr %i.eqe, align 1, !tbaa !142, !noalias !21592
  %i.eqv = icmp samesign ugt i32 %i.epu, 9999
  br i1 %i.eqv, label %bb.app, label %bb.apq

bb.app:                                           ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %i.eqw = udiv i16 %.lhs.trunc.i.i90.i.i.i.i.i, 10000
  %i.eqx = trunc nuw nsw i16 %i.eqw to i8
  %i.eqy = or disjoint i8 %i.eqx, 48
  %i.eqz = getelementptr i8, ptr %i.enz, i64 -22  ; 2 uses
  store i8 %i.eqy, ptr %i.eqz, align 1, !tbaa !142, !noalias !21592
  br label %bb.apq

bb.apq:                                           ; preds = %bb.app, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i
  %.4.i91.i.i.i.i.i = phi ptr [ %i.eqz, %bb.app ], [ %i.eqe, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.ept, label %bb.apr, label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZNS_12_GLOBAL__N_114FormatToBufferIS3_NS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISI_EEtlSO_EEESG_lOSI_.exit.i.i.i.i.i

bb.apr:                                           ; preds = %bb.apq
  %i.era = getelementptr inbounds i8, ptr %.4.i91.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.era, align 1, !tbaa !142, !noalias !21592
  br label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZNS_12_GLOBAL__N_114FormatToBufferIS3_NS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISI_EEtlSO_EEESG_lOSI_.exit.i.i.i.i.i

_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZNS_12_GLOBAL__N_114FormatToBufferIS3_NS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISI_EEtlSO_EEESG_lOSI_.exit.i.i.i.i.i: ; preds = %bb.apr, %bb.apq
  %.5.i92.i.i.i.i.i = phi ptr [ %i.era, %bb.apr ], [ %.4.i91.i.i.i.i.i, %bb.apq ] ; 2 uses
  %i.erb = ptrtoint ptr %i.emq to i64
  %i.erc = ptrtoint ptr %.5.i92.i.i.i.i.i to i64
  %i.erd = sub i64 %i.erb, %i.erc
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_13TimestampTypeEvEENS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %94, i64 %i.erd, ptr nonnull %.5.i92.i.i.i.i.i)
          to label %.noexc12.i.i unwind label %bb.aqo, !noalias !21586

.noexc12.i.i:                                     ; preds = %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZNS_12_GLOBAL__N_114FormatToBufferIS3_NS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISI_EEtlSO_EEESG_lOSI_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #28, !noalias !21592
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222

bb.aps:                                           ; preds = %bb.aoi
  %i.ere = add i64 %.val7.i.i, 1096193779200
  %spec.select.i.i106.i.i.i.i.i = icmp ult i64 %i.ere, 2068084742400
  %.sroa.gep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %89, i64 23 ; 2 uses
  %.sroa.gep52.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %89, i64 22 ; 2 uses
  br i1 %spec.select.i.i106.i.i.i.i.i, label %bb.apt, label %.invoke.i.i, !prof !179

.invoke.i.i:                                      ; preds = %bb.aps, %bb.aov, %bb.aoj
  invoke fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZNS_12_GLOBAL__N_114FormatToBufferINS0_15StringFormatterINS_13TimestampTypeEvEENS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISF_EEtlSL_EEESE_OSF_(ptr dead_on_unwind noalias nonnull writable align 8 %94, i64 %.val7.i.i)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222 unwind label %bb.aqo, !noalias !21586

bb.apt:                                           ; preds = %bb.aps
  %i.erf = sdiv i64 %.val7.i.i, 86400             ; 3 uses
  %i.erg = trunc nsw i64 %i.erf to i32            ; 2 uses
  %i.erh = mul nsw i64 %i.erf, 86400              ; 2 uses
  %.not46.i.i.i.i.i.i = icmp sgt i64 %i.erh, %.val7.i.i
  br i1 %.not46.i.i.i.i.i.i, label %bb.apv, label %bb.apu

bb.apu:                                           ; preds = %bb.apt
  %.neg.i.i.i107.i.i.i.i.i = mul nsw i64 %i.erf, -86400
  %i.eri = add nsw i64 %.neg.i.i.i107.i.i.i.i.i, %.val7.i.i
  br label %bb.apw

bb.apv:                                           ; preds = %bb.apt
  %.neg.i122.i.i.i.i.i = add nsw i64 %.val7.i.i, 86400
  %i.erj = sub nsw i64 %.neg.i122.i.i.i.i.i, %i.erh
  %i.erk = add nsw i32 %i.erg, -1
  br label %bb.apw

bb.apw:                                           ; preds = %bb.apv, %bb.apu
  %.sroa.029.0.i.i.i.i.i.i = phi i64 [ %i.eri, %bb.apu ], [ %i.erj, %bb.apv ]
  %.sroa.030.0.i.i.i.i.i.i = phi i32 [ %i.erg, %bb.apu ], [ %i.erk, %bb.apv ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #28, !noalias !21593
  %.not.i108.i.i.i.i.i = icmp eq i64 %.val5.i.i1188, 0
  br i1 %.not.i108.i.i.i.i.i, label %bb.apy, label %bb.apx

bb.apx:                                           ; preds = %bb.apw
  store i8 90, ptr %.sroa.gep52.i.i.i.i.i.i, align 1, !tbaa !142, !noalias !21593
  br label %bb.apy

bb.apy:                                           ; preds = %bb.apx, %bb.apw
  %.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sroa.gep.i.i.i.i.i.i, %bb.apw ], [ %.sroa.gep52.i.i.i.i.i.i, %bb.apx ] ; 5 uses
  %spec.select.i.i.i.i109.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.029.0.i.i.i.i.i.i, i1 true) ; 3 uses
  %i.erl = udiv i64 %spec.select.i.i.i.i109.i.i.i.i.i, 3600 ; 3 uses
  %i.erm = udiv i64 %spec.select.i.i.i.i109.i.i.i.i.i, 60
  %.neg.i.i.i.i110.i.i.i.i.i = mul nsw i64 %i.erl, -60
  %i.ern = add nsw i64 %.neg.i.i.i.i110.i.i.i.i.i, %i.erm ; 2 uses
  %.neg.i7.i.i.i111.i.i.i.i.i = mul nsw i64 %i.erl, -3600
  %i.ero = add nsw i64 %.neg.i7.i.i.i111.i.i.i.i.i, %spec.select.i.i.i.i109.i.i.i.i.i
  %.neg.i8.i.i.i112.i.i.i.i.i = mul nsw i64 %i.ern, -60
  %i.erp = add nsw i64 %i.ero, %.neg.i8.i.i.i112.i.i.i.i.i
  %i.erq = shl nsw i64 %i.erp, 1
  %i.err = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.erq ; 2 uses
  %i.ers = getelementptr inbounds nuw i8, ptr %i.err, i64 1
  %i.ert = load i8, ptr %i.ers, align 1, !tbaa !142, !noalias !21593
  %i.eru = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i, i64 -1
  store i8 %i.ert, ptr %i.eru, align 1, !tbaa !142, !noalias !21593
  %i.erv = load i8, ptr %i.err, align 1, !tbaa !142, !noalias !21593
  %i.erw = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i, i64 -2
  store i8 %i.erv, ptr %i.erw, align 1, !tbaa !142, !noalias !21593
  %i.erx = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i, i64 -3
  store i8 58, ptr %i.erx, align 1, !tbaa !142, !noalias !21593
  %i.ery = shl nsw i64 %i.ern, 1
  %i.erz = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ery
  %i.esa = shl nuw nsw i64 %i.erl, 1
  %i.esb = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.esa
  %i.esc = add nsw i32 %.sroa.030.0.i.i.i.i.i.i, 719468 ; 2 uses
  %i.esd = icmp sgt i32 %.sroa.030.0.i.i.i.i.i.i, -719469
  %i.ese = add nuw nsw i32 %.sroa.030.0.i.i.i.i.i.i, 573372
  %i.esf = select i1 %i.esd, i32 %i.esc, i32 %i.ese
  %i.esg = sdiv i32 %i.esf, 146097                ; 2 uses
  %.neg.i.i16.i113.i.i.i.i.i = mul nsw i32 %i.esg, -146097
  %i.esh = add nsw i32 %.neg.i.i16.i113.i.i.i.i.i, %i.esc ; 5 uses
  %i.esi = udiv i32 %i.esh, 1460
  %i.esj = udiv i32 %i.esh, 36524
  %i.esk = udiv i32 %i.esh, 146096
  %.neg48 = add nsw i32 %i.esj, %i.esh
  %i.esl = add nuw nsw i32 %i.esk, %i.esi
  %i.esm = sub nsw i32 %.neg48, %i.esl            ; 3 uses
  %i.esn = udiv i32 %i.esm, 365                   ; 2 uses
  %i.eso = mul nsw i32 %i.esg, 400
  %i.esp = add nsw i32 %i.esn, %i.eso
  %i.esq = udiv i32 %i.esm, 1460
  %i.esr = udiv i32 %i.esm, 36500
  %.neg36.i.i.i114.i.i.i.i.i = mul i32 %i.esn, -365
  %.neg37.i.i.i115.i.i.i.i.i = sub nsw i32 %i.esh, %i.esq
  %.neg25.i.i.i116.i.i.i.i.i = add nsw i32 %.neg37.i.i.i115.i.i.i.i.i, %i.esr
  %i.ess = add i32 %.neg25.i.i.i116.i.i.i.i.i, %.neg36.i.i.i114.i.i.i.i.i ; 2 uses
  %i.est = mul i32 %i.ess, 5
  %i.esu = add i32 %i.est, 2                      ; 2 uses
  %i.esv = udiv i32 %i.esu, 153                   ; 2 uses
  %i.esw = mul nuw i32 %i.esv, 153
  %i.esx = add nuw i32 %i.esw, 2
  %i.esy = udiv i32 %i.esx, 5
  %i.esz = sub i32 %i.ess, %i.esy
  %i.eta = icmp ult i32 %i.esu, 1530
  %.v.i.i.i117.i.i.i.i.i = select i1 %i.eta, i32 3, i32 -9
  %i.etb = add nsw i32 %.v.i.i.i117.i.i.i.i.i, %i.esv ; 2 uses
  %i.etc = icmp ult i32 %i.etb, 3
  %i.etd = zext i1 %i.etc to i32
  %i.ete = add nsw i32 %i.esp, %i.etd
  %i.etf = shl i32 %i.esz, 24
  %.sroa.3.0.insert.ext.i.i.i118.i.i.i.i.i = add i32 %i.etf, 16777216
  %i.etg = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i118.i.i.i.i.i, 23
  %i.eth = zext nneg i32 %i.etg to i64
  %i.eti = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eth
  %i.etj = shl nsw i32 %i.etb, 1
  %i.etk = and i32 %i.etj, 510
  %i.etl = zext nneg i32 %i.etk to i64
  %i.etm = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.etl
  %sext.i.i119.i.i.i.i.i = shl i32 %i.ete, 16
  %i.etn = ashr exact i32 %sext.i.i119.i.i.i.i.i, 16 ; 2 uses
  %i.eto = icmp slt i32 %i.etn, 0
  %i.etp = call i32 @llvm.abs.i32(i32 %i.etn, i1 true) ; 2 uses
  %.lhs.trunc.i.i120.i.i.i.i.i = trunc nuw i32 %i.etp to i16 ; 3 uses
  %i.etq = urem i16 %.lhs.trunc.i.i120.i.i.i.i.i, 100
  %i.etr = shl nuw nsw i16 %i.etq, 1
  %i.ets = zext nneg i16 %i.etr to i64
  %i.ett = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ets
  %i.etu = udiv i16 %.lhs.trunc.i.i120.i.i.i.i.i, 100
  %i.etv = urem i16 %i.etu, 100
  %i.etw = shl nuw nsw i16 %i.etv, 1
  %i.etx = zext nneg i16 %i.etw to i64
  %i.ety = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.etx
  %i.etz = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i, i64 -19 ; 2 uses
  %i.eua = load <2 x i8>, ptr %i.erz, align 1, !tbaa !142, !noalias !21593
  %i.eub = load <2 x i8>, ptr %i.esb, align 1, !tbaa !142, !noalias !21593
  %i.euc = load <2 x i8>, ptr %i.eti, align 1, !tbaa !142, !noalias !21593
  %i.eud = load <2 x i8>, ptr %i.etm, align 1, !tbaa !142, !noalias !21593
  %i.eue = load <2 x i8>, ptr %i.ett, align 1, !tbaa !142, !noalias !21593
  %i.euf = load <2 x i8>, ptr %i.ety, align 1, !tbaa !142, !noalias !21593
  %i.eug = shufflevector <2 x i8> %i.euf, <2 x i8> %i.eue, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.euh = shufflevector <16 x i8> %i.eug, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.eui = shufflevector <2 x i8> %i.eud, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.euj = shufflevector <16 x i8> %i.euh, <16 x i8> %i.eui, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.euk = shufflevector <2 x i8> %i.euc, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eul = shufflevector <16 x i8> %i.euj, <16 x i8> %i.euk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.eum = shufflevector <2 x i8> %i.eub, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eun = shufflevector <16 x i8> %i.eul, <16 x i8> %i.eum, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.euo = shufflevector <2 x i8> %i.eua, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eup = shufflevector <16 x i8> %i.eun, <16 x i8> %i.euo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.eup, ptr %i.etz, align 1, !tbaa !142, !noalias !21593
  %i.euq = icmp samesign ugt i32 %i.etp, 9999
  br i1 %i.euq, label %bb.apz, label %bb.aqa

bb.apz:                                           ; preds = %bb.apy
  %i.eur = udiv i16 %.lhs.trunc.i.i120.i.i.i.i.i, 10000
  %i.eus = trunc nuw nsw i16 %i.eur to i8
  %i.eut = or disjoint i8 %i.eus, 48
  %i.euu = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i, i64 -20 ; 2 uses
  store i8 %i.eut, ptr %i.euu, align 1, !tbaa !142, !noalias !21593
  br label %bb.aqa

bb.aqa:                                           ; preds = %bb.apz, %bb.apy
  %.1.i.i.i.i.i.i = phi ptr [ %i.euu, %bb.apz ], [ %i.etz, %bb.apy ] ; 2 uses
  br i1 %i.eto, label %bb.aqb, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i121.i.i.i.i.i

bb.aqb:                                           ; preds = %bb.aqa
  %i.euv = getelementptr inbounds i8, ptr %.1.i.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.euv, align 1, !tbaa !142, !noalias !21593
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i121.i.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i121.i.i.i.i.i: ; preds = %bb.aqb, %bb.aqa
  %.2.i.i.i.i.i.i = phi ptr [ %i.euv, %bb.aqb ], [ %.1.i.i.i.i.i.i, %bb.aqa ] ; 2 uses
  %i.euw = ptrtoint ptr %.sroa.gep.i.i.i.i.i.i to i64
  %i.eux = ptrtoint ptr %.2.i.i.i.i.i.i to i64
  %i.euy = sub i64 %i.euw, %i.eux
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_13TimestampTypeEvEENS_15TimestampScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %94, i64 %i.euy, ptr nonnull %.2.i.i.i.i.i.i)
          to label %.noexc14.i.i unwind label %bb.aqo, !noalias !21586

.noexc14.i.i:                                     ; preds = %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i121.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #28, !noalias !21593
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222: ; preds = %bb.aog, %.noexc14.i.i, %.invoke.i.i, %.noexc12.i.i, %.noexc11.i.i, %.noexc9.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1194
  call void @llvm.lifetime.end.p0(ptr nonnull %93), !noalias !21586
  %i.euz = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %.noexc15.i.i unwind label %bb.aqp, !noalias !21586 ; 12 uses

.noexc15.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i1222
  %i.eva = getelementptr inbounds nuw i8, ptr %i.euz, i64 8
  store i32 1, ptr %i.eva, align 8, !tbaa !168, !noalias !21594
  %i.evb = getelementptr inbounds nuw i8, ptr %i.euz, i64 12 ; 3 uses
  store i32 1, ptr %i.evb, align 4, !tbaa !169, !noalias !21594
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12StringScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.euz, align 8, !tbaa !137, !noalias !21594
  %i.evc = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.evd = getelementptr inbounds nuw i8, ptr %i.euz, i64 24
  %i.eve = getelementptr inbounds nuw i8, ptr %i.euz, i64 32 ; 3 uses
  %i.evf = getelementptr inbounds nuw i8, ptr %i.euz, i64 40
  %i.evg = getelementptr inbounds nuw i8, ptr %i.euz, i64 56
  %i.evh = getelementptr inbounds nuw i8, ptr %i.euz, i64 64
  %i.evi = load <2 x ptr>, ptr %94, align 16, !tbaa !162, !noalias !21594
  %i.evj = load ptr, ptr %94, align 16, !tbaa !166, !noalias !21594 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %94, i8 0, i64 16, i1 false), !noalias !21594
  %i.evk = load <2 x ptr>, ptr %97, align 16, !tbaa !162, !noalias !21594
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %97, i8 0, i64 16, i1 false), !noalias !21594
  store i64 0, ptr %i.eve, align 8, !noalias !21594
  store <2 x ptr> %i.evk, ptr %i.evf, align 8, !tbaa !162, !noalias !21594
  store i8 1, ptr %i.evg, align 8, !tbaa !154, !noalias !21594
  store <2 x ptr> %i.evi, ptr %i.evh, align 8, !tbaa !162, !noalias !21594
  %.not.i.i8.i.i.i.i.i.i.i.i.i.i1195 = icmp eq ptr %i.evj, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i.i.i.i1195, label %bb.aqd, label %bb.aqc

bb.aqc:                                           ; preds = %.noexc15.i.i
  %i.evl = getelementptr inbounds nuw i8, ptr %i.evj, i64 24
  %i.evm = load i64, ptr %i.evl, align 8, !tbaa !177, !noalias !21594
  %i.evn = shl i64 %i.evm, 32
  br label %bb.aqd

bb.aqd:                                           ; preds = %bb.aqc, %.noexc15.i.i
  %.sroa.4.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i1196 = phi i64 [ %i.evn, %bb.aqc ], [ 0, %.noexc15.i.i ]
  %i.evo = getelementptr inbounds nuw i8, ptr %i.euz, i64 16 ; 3 uses
  %i.evp = getelementptr inbounds nuw i8, ptr %i.euz, i64 80
  store i64 %.sroa.4.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i1196, ptr %i.evp, align 8, !noalias !21594
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12StringScalarE, i64 16), ptr %i.evo, align 8, !tbaa !137, !noalias !21594
  store ptr %i.evo, ptr %i.evd, align 8, !tbaa !229, !noalias !21594
  %i.evq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !142, !noalias !21594
  %.not.i.i3.i.i.i.i.i.i.i.i1197 = icmp eq i8 %i.evq, 0
  br i1 %.not.i.i3.i.i.i.i.i.i.i.i1197, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1216, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i1198

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i1198: ; preds = %bb.aqd
  store i32 2, ptr %i.evb, align 4, !tbaa !94, !noalias !21594
  br label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1199

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1216: ; preds = %bb.aqd
  %i.evr = atomicrmw volatile add ptr %i.evb, i32 1 acq_rel, align 4, !noalias !21594 ; 0 uses
  %.pre.i.i.i.i.i.i.i.i1217 = load ptr, ptr %i.eve, align 8, !tbaa !230, !noalias !21594 ; 4 uses
  %.not6.i.i.i.i.i.i.i.i.i1218 = icmp eq ptr %.pre.i.i.i.i.i.i.i.i1217, null
  br i1 %.not6.i.i.i.i.i.i.i.i.i1218, label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1199, label %bb.aqe

bb.aqe:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1216
  %i.evs = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i1217, i64 12 ; 3 uses
  %i.evt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !142, !noalias !21594
  %.not.i7.i.i.i.i.i.i.i.i.i1219 = icmp eq i8 %i.evt, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i1219, label %bb.aqg, label %bb.aqf

bb.aqf:                                           ; preds = %bb.aqe
  %i.evu = load i32, ptr %i.evs, align 4, !tbaa !94, !noalias !21594 ; 2 uses
  %i.evv = add nsw i32 %i.evu, -1
  store i32 %i.evv, ptr %i.evs, align 4, !tbaa !94, !noalias !21594
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1220

bb.aqg:                                           ; preds = %bb.aqe
  %i.evw = atomicrmw volatile add ptr %i.evs, i32 -1 acq_rel, align 4, !noalias !21594
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1220

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1220: ; preds = %bb.aqg, %bb.aqf
  %.0.i.i.i.i.i.i.i.i.i.i.i1221 = phi i32 [ %i.evu, %bb.aqf ], [ %i.evw, %bb.aqg ]
  %i.evx = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i1221, 1
  br i1 %i.evx, label %bb.aqh, label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1199

bb.aqh:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1220
  %i.evy = load ptr, ptr %.pre.i.i.i.i.i.i.i.i1217, align 8, !tbaa !137, !noalias !21594
  %i.evz = getelementptr inbounds nuw i8, ptr %i.evy, i64 24
  %i.ewa = load ptr, ptr %i.evz, align 8, !noalias !21594
  call void %i.ewa(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i.i.i1217) #28, !noalias !21594, !inline_history !21033
  br label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1199

_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1199: ; preds = %bb.aqh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1220, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1216, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i1198
  store ptr %i.euz, ptr %i.eve, align 8, !tbaa !230, !noalias !21594
  store ptr null, ptr %96, align 8, !tbaa !159, !alias.scope !21585, !noalias !21584
  %i.ewb = getelementptr inbounds nuw i8, ptr %96, i64 8 ; 3 uses
  store ptr %i.evo, ptr %i.ewb, align 8, !tbaa !225, !alias.scope !21585, !noalias !21584
  %i.ewc = getelementptr inbounds nuw i8, ptr %96, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %.not.i.i20.i, label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_13TimestampTypeEEENS_6StatusERKT_.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1206, !prof !236

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1206: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1210, %_ZN5arrow6StatusC2ERKS0_.exit.i1205
  %i.ezi = phi ptr [ %.pr.i.pr.i1211, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1210 ], [ %i.eyq, %_ZN5arrow6StatusC2ERKS0_.exit.i1205 ]
  %i.ezj = getelementptr inbounds nuw i8, ptr %i.ezi, i64 1
  %i.ezk = load i8, ptr %i.ezj, align 1, !tbaa !222, !range !155, !noundef !156
  %i.ezl = trunc nuw i8 %i.ezk to i1
  br i1 %i.ezl, label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_13TimestampTypeEEENS_6StatusERKT_.exit, label %bb.arn

bb.arn:                                           ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1206
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %96) #28
  br label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_13TimestampTypeEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_13TimestampTypeEEENS_6StatusERKT_.exit: ; preds = %bb.arg, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1210, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1206, %bb.arn
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #28, !noalias !21584
  call void @llvm.lifetime.end.p0(ptr nonnull %97)
  br label %bb.byj

bb.aro:                                           ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21597)
  call void @llvm.lifetime.start.p0(ptr nonnull %88)
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #28, !noalias !21597
  %i.ezm = load ptr, ptr %1, align 8, !tbaa !447, !noalias !21597, !nonnull !156, !align !319 ; 3 uses
  %i.ezn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ezo = load ptr, ptr %i.ezn, align 8, !tbaa !448, !noalias !21597, !nonnull !156, !align !319 ; 2 uses
  %i.ezp = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.ezq = getelementptr inbounds nuw i8, ptr %i.ezo, i64 8
  %i.ezr = load ptr, ptr %i.ezq, align 8, !tbaa !163, !noalias !21597 ; 2 uses
  %i.ezs = load <2 x ptr>, ptr %i.ezo, align 8, !tbaa !162, !noalias !21597
  store <2 x ptr> %i.ezs, ptr %88, align 16, !tbaa !162, !noalias !21597
  %.not.i.i.i.i1228 = icmp eq ptr %i.ezr, null
  br i1 %.not.i.i.i.i1228, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1230, label %bb.arp

bb.arp:                                           ; preds = %bb.aro
  %i.ezt = getelementptr inbounds nuw i8, ptr %i.ezr, i64 8 ; 3 uses
  %i.ezu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !142, !noalias !21597
  %.not.i.i.i.i.i1229 = icmp eq i8 %i.ezu, 0
  br i1 %.not.i.i.i.i.i1229, label %bb.arr, label %bb.arq

bb.arq:                                           ; preds = %bb.arp
  %i.ezv = load i32, ptr %i.ezt, align 4, !tbaa !94, !noalias !21597
  %i.ezw = add nsw i32 %i.ezv, 1
  store i32 %i.ezw, ptr %i.ezt, align 4, !tbaa !94, !noalias !21597
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1230

bb.arr:                                           ; preds = %bb.arp
  %i.ezx = atomicrmw volatile add ptr %i.ezt, i32 1 acq_rel, align 4, !noalias !21597 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1230

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1230: ; preds = %bb.arr, %bb.arq, %bb.aro
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21598)
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #28, !noalias !21599
  %i.ezy = getelementptr inbounds nuw i8, ptr %i.ezm, i64 24
  %i.ezz = load ptr, ptr %i.ezy, align 8, !tbaa !119, !noalias !21599
  %i.faa = getelementptr inbounds nuw i8, ptr %i.ezz, i64 72
  %i.fab = load i32, ptr %i.faa, align 8, !tbaa !443, !noalias !21599
  %i.fac = getelementptr inbounds nuw i8, ptr %i.ezm, i64 40
  %.val3.i.i1231 = load i8, ptr %i.fac, align 8, !tbaa !154, !range !155, !noalias !21599, !noundef !156
  %i.fad = getelementptr inbounds nuw i8, ptr %i.ezm, i64 44
  %.val4.i.i = load i32, ptr %i.fad, align 4, !noalias !21599 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %85), !noalias !21599
  %i.fae = trunc nuw i8 %.val3.i.i1231 to i1
  br i1 %i.fae, label %bb.aru, label %._crit_edge.i.i.i.i.i1232

._crit_edge.i.i.i.i.i1232:                        ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1230
  %i.faf = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 6 uses
  store ptr %i.faf, ptr %85, align 8, !tbaa !160, !noalias !21600
  store i32 1819047278, ptr %i.faf, align 8, !noalias !21600
  %i.fag = getelementptr inbounds nuw i8, ptr %85, i64 8
  store i64 4, ptr %i.fag, align 8, !tbaa !161, !noalias !21600
  %i.fah = getelementptr inbounds nuw i8, ptr %85, i64 20
  store i8 0, ptr %i.fah, align 4, !tbaa !142, !noalias !21600
  invoke void @_ZN5arrow6Buffer10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.9") align 8 %86, ptr noundef nonnull %85)
          to label %bb.ars unwind label %bb.art, !noalias !21599

bb.ars:                                           ; preds = %._crit_edge.i.i.i.i.i1232
  %i.fai = load ptr, ptr %85, align 8, !tbaa !141, !noalias !21600 ; 2 uses
  %i.faj = icmp eq ptr %i.fai, %i.faf
  br i1 %i.faj, label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1238: ; preds = %bb.ars
  %i.fak = load i64, ptr %i.faf, align 8, !tbaa !142, !noalias !21600
  %i.fal = add i64 %i.fak, 1
  call void @_ZdlPvm(ptr noundef %i.fai, i64 noundef %i.fal) #29, !noalias !21599
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.art:                                           ; preds = %._crit_edge.i.i.i.i.i1232
  %i.fam = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fan = load ptr, ptr %85, align 8, !tbaa !141, !noalias !21600 ; 2 uses
  %i.fao = icmp eq ptr %i.fan, %i.faf
  br i1 %i.fao, label %.body.i1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i1233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i1233: ; preds = %bb.art
  %i.fap = load i64, ptr %i.faf, align 8, !tbaa !142, !noalias !21600
  %i.faq = add i64 %i.fap, 1
  call void @_ZdlPvm(ptr noundef %i.fan, i64 noundef %i.faq) #29, !noalias !21599
  br label %.body.i1234

bb.aru:                                           ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1230
  switch i32 %i.fab, label %bb.ash [
    i32 3, label %bb.asd
    i32 1, label %bb.arv
    i32 2, label %bb.arz
  ]

bb.arv:                                           ; preds = %bb.aru
  %i.far = ptrtoaddr ptr %84 to i64               ; 3 uses
  %spec.select.i.i.i.i.i.i.i1268 = icmp ult i32 %.val4.i.i, 86400000
  br i1 %spec.select.i.i.i.i.i.i.i1268, label %bb.arw, label %.invoke.i, !prof !179

bb.arw:                                           ; preds = %bb.arv
  %i.fas = zext nneg i32 %.val4.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #28, !noalias !21601
  %.ptr26.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %84, i64 12
  %i.fat = udiv i32 %.val4.i.i, 3600000
  %.zext.i.i.i.i.i.i = zext nneg i32 %i.fat to i64 ; 3 uses
  %i.fau = udiv i32 %.val4.i.i, 60000
  %.zext23.i.i.i.i.i.i = zext nneg i32 %i.fau to i64
  %.neg.i.i.i.i.i.i.i.i.i1269 = mul nsw i64 %.zext.i.i.i.i.i.i, -60
  %i.fav = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i1269, %.zext23.i.i.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i.i.i.i.i.i1270 = mul nsw i64 %.zext.i.i.i.i.i.i, -3600000
  %i.faw = add nsw i64 %.neg.i7.i.i.i.i.i.i.i.i1270, %i.fas
  %.neg.i8.i.i.i.i.i.i.i.i1271 = mul nsw i64 %i.fav, -60000
  %i.fax = add nsw i64 %i.faw, %.neg.i8.i.i.i.i.i.i.i.i1271 ; 2 uses
  %.lhs.trunc24.i.i.i.i.i.i = trunc nsw i64 %i.fax to i32
  %i.fay = sdiv i32 %.lhs.trunc24.i.i.i.i.i.i, 1000
  %.sext.i.i.i.i.i.i = sext i32 %i.fay to i64     ; 2 uses
  %.neg.i.i.i.i.i.i.i.i.i.i1272 = mul nsw i64 %.sext.i.i.i.i.i.i, -1000
  %i.faz = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i1272, %i.fax ; 3 uses
  %i.fba = icmp sgt i64 %i.faz, 99
  br i1 %i.fba, label %.lr.ph.i.i.i.i.i.i.i.i.i1286, label %._crit_edge.i.i.i.i.i.i.i.i.i1273

.lr.ph.i.i.i.i.i.i.i.i.i1286:                     ; preds = %bb.arw, %.lr.ph.i.i.i.i.i.i.i.i.i1286
  %.0.idx.i.i.i.i.i.i = phi i64 [ %.0.add.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i1286 ], [ 12, %bb.arw ] ; 2 uses
  %.08.i.i.i.i.i.i.i.i.i1287 = phi i64 [ %i.fbi, %.lr.ph.i.i.i.i.i.i.i.i.i1286 ], [ %i.faz, %bb.arw ] ; 3 uses
  %.0.ptr.i.i.i.i.i.i = getelementptr inbounds i8, ptr %84, i64 %.0.idx.i.i.i.i.i.i
  %i.fbb = urem i64 %.08.i.i.i.i.i.i.i.i.i1287, 100
  %i.fbc = shl nuw nsw i64 %i.fbb, 1
  %i.fbd = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fbc ; 2 uses
  %i.fbe = getelementptr inbounds nuw i8, ptr %i.fbd, i64 1
  %i.fbf = load i8, ptr %i.fbe, align 1, !tbaa !142, !noalias !21601
  %i.fbg = getelementptr inbounds i8, ptr %.0.ptr.i.i.i.i.i.i, i64 -1
  store i8 %i.fbf, ptr %i.fbg, align 1, !tbaa !142, !noalias !21601
  %i.fbh = load i8, ptr %i.fbd, align 1, !tbaa !142, !noalias !21601
  %.0.add.i.i.i.i.i.i = add nsw i64 %.0.idx.i.i.i.i.i.i, -2 ; 3 uses
  %.ptr27.i.i.i.i.i.i = getelementptr inbounds i8, ptr %84, i64 %.0.add.i.i.i.i.i.i
  store i8 %i.fbh, ptr %.ptr27.i.i.i.i.i.i, align 1, !tbaa !142, !noalias !21601
  %i.fbi = udiv i64 %.08.i.i.i.i.i.i.i.i.i1287, 100 ; 2 uses
  %i.fbj = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i.i.i1287, 9999
  br i1 %i.fbj, label %.lr.ph.i.i.i.i.i.i.i.i.i1286, label %._crit_edge.i.i.i.i.i.i.i.i.i1273, !llvm.loop !21024

._crit_edge.i.i.i.i.i.i.i.i.i1273:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1286, %bb.arw
  %.1.idx.i.i.i.i.i.i1274 = phi i64 [ 12, %bb.arw ], [ %.0.add.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i1286 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i1275 = phi i64 [ %i.faz, %bb.arw ], [ %i.fbi, %.lr.ph.i.i.i.i.i.i.i.i.i1286 ] ; 3 uses
  %i.fbk = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i1275, 9
  br i1 %i.fbk, label %bb.arx, label %bb.ary

bb.arx:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i1273
  %i.fbl = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i1275, 1
  %i.fbm = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fbl ; 2 uses
  %i.fbn = getelementptr inbounds nuw i8, ptr %i.fbm, i64 1
  %i.fbo = load i8, ptr %i.fbn, align 1, !tbaa !142, !noalias !21601
  %.1.add.i.i.i.i.i.i1285 = add nsw i64 %.1.idx.i.i.i.i.i.i1274, -1 ; 2 uses
  %.ptr25.i.i.i.i.i.i = getelementptr inbounds i8, ptr %84, i64 %.1.add.i.i.i.i.i.i1285
  store i8 %i.fbo, ptr %.ptr25.i.i.i.i.i.i, align 1, !tbaa !142, !noalias !21601
  %i.fbp = load i8, ptr %i.fbm, align 1, !tbaa !142, !noalias !21601
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1276

bb.ary:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i1273
  %i.fbq = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i.i1275 to i8
  %i.fbr = add i8 %i.fbq, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1276

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1276: ; preds = %bb.ary, %bb.arx
  %.2.idx.i.i.i.i.i.i1277 = phi i64 [ %.1.add.i.i.i.i.i.i1285, %bb.arx ], [ %.1.idx.i.i.i.i.i.i1274, %bb.ary ] ; 3 uses
  %.sink.i.i.i.i.i.i.i.i.i1278 = phi i8 [ %i.fbp, %bb.arx ], [ %i.fbr, %bb.ary ]
  %i.fbs = getelementptr i8, ptr %84, i64 %.2.idx.i.i.i.i.i.i1277 ; 2 uses
  %.ptr.i.i.i.i.i.i1279 = getelementptr i8, ptr %i.fbs, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i.i.i1278, ptr %.ptr.i.i.i.i.i.i1279, align 1, !tbaa !142, !noalias !21601
  %i.fbt = icmp sgt i64 %.2.idx.i.i.i.i.i.i1277, 10
  br i1 %i.fbt, label %.lr.ph.i.i.preheader.i.i.i.i.i.i1282, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1280

.lr.ph.i.i.preheader.i.i.i.i.i.i1282:             ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1276
  %i.fbu = add i64 %.2.idx.i.i.i.i.i.i1277, %i.far ; 2 uses
  %i.fbv = add i64 %i.fbu, -2
  %i.fbw = add nuw i64 %i.far, 9
  %umin.i.i.i.i.i.i1283 = call i64 @llvm.umin.i64(i64 %i.fbv, i64 %i.fbw) ; 2 uses
  %i.fbx = sub i64 %umin.i.i.i.i.i.i1283, %i.far
  %scevgep.i.i.i.i.i.i1284 = getelementptr i8, ptr %84, i64 %i.fbx ; 2 uses
  %i.fby = xor i64 %umin.i.i.i.i.i.i1283, -1
  %i.fbz = add i64 %i.fbu, %i.fby
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i.i.i1284, i8 48, i64 %i.fbz, i1 false), !tbaa !142, !noalias !21601
  %scevgep31.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i.i.i1284, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1280

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1280: ; preds = %.lr.ph.i.i.preheader.i.i.i.i.i.i1282, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1276
  %i.fca = phi ptr [ %i.fbs, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1276 ], [ %scevgep31.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i.i1282 ] ; 2 uses
  %i.fcb = shl nsw i64 %.sext.i.i.i.i.i.i, 1
  %i.fcc = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fcb
  %i.fcd = shl nsw i64 %i.fav, 1
  %i.fce = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fcd
  %i.fcf = shl nuw nsw i64 %.zext.i.i.i.i.i.i, 1
  %i.fcg = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fcf ; 2 uses
  %i.fch = getelementptr inbounds nuw i8, ptr %i.fcg, i64 1
  %i.fci = load i8, ptr %i.fch, align 1, !tbaa !142, !noalias !21601
  %i.fcj = getelementptr i8, ptr %i.fca, i64 -9
  %i.fck = load <2 x i8>, ptr %i.fcc, align 1, !tbaa !142, !noalias !21601
  %i.fcl = load <2 x i8>, ptr %i.fce, align 1, !tbaa !142, !noalias !21601
  %i.fcm = shufflevector <2 x i8> %i.fcl, <2 x i8> %i.fck, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.fcn = shufflevector <8 x i8> %i.fcm, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.fco = insertelement <8 x i8> %i.fcn, i8 %i.fci, i64 0
  store <8 x i8> %i.fco, ptr %i.fcj, align 1, !tbaa !142, !noalias !21601
  %i.fcp = load i8, ptr %i.fcg, align 1, !tbaa !142, !noalias !21601
  %i.fcq = getelementptr i8, ptr %i.fca, i64 -10  ; 3 uses
  store i8 %i.fcp, ptr %i.fcq, align 1, !tbaa !142, !noalias !21601
  %i.fcr = ptrtoint ptr %.ptr26.i.i.i.i.i.i to i64
  %i.fcs = ptrtoint ptr %i.fcq to i64
  %i.fct = sub i64 %i.fcr, %i.fcs
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %86, i64 %i.fct, ptr nonnull %i.fcq)
          to label %.noexc9.i1281 unwind label %bb.atg, !noalias !21597

.noexc9.i1281:                                    ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1280
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #28, !noalias !21601
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.arz:                                           ; preds = %bb.aru
  %i.fcu = ptrtoaddr ptr %83 to i64               ; 3 uses
  %spec.select.i.i15.i.i.i.i.i = icmp sgt i32 %.val4.i.i, -1
  br i1 %spec.select.i.i15.i.i.i.i.i, label %bb.asa, label %.invoke.i, !prof !179

bb.asa:                                           ; preds = %bb.arz
  %i.fcv = zext nneg i32 %.val4.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #28, !noalias !21602
  %.ptr24.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %83, i64 15
  %i.fcw = udiv i32 %.val4.i.i, 60000000
  %.zext.i16.i.i.i.i.i = zext nneg i32 %i.fcw to i64 ; 2 uses
  %.neg.i8.i.i.i17.i.i.i.i.i = mul nsw i64 %.zext.i16.i.i.i.i.i, -60000000
  %i.fcx = add nsw i64 %.neg.i8.i.i.i17.i.i.i.i.i, %i.fcv ; 2 uses
  %.lhs.trunc22.i.i.i.i.i.i = trunc nsw i64 %i.fcx to i32
  %i.fcy = sdiv i32 %.lhs.trunc22.i.i.i.i.i.i, 1000000
  %.sext.i18.i.i.i.i.i = sext i32 %i.fcy to i64   ; 2 uses
  %.neg.i.i.i.i.i19.i.i.i.i.i = mul nsw i64 %.sext.i18.i.i.i.i.i, -1000000
  %i.fcz = add nsw i64 %.neg.i.i.i.i.i19.i.i.i.i.i, %i.fcx ; 3 uses
  %i.fda = icmp sgt i64 %i.fcz, 99
  br i1 %i.fda, label %.lr.ph.i.i.i.i31.i.i.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i.i.i

.lr.ph.i.i.i.i31.i.i.i.i.i:                       ; preds = %bb.asa, %.lr.ph.i.i.i.i31.i.i.i.i.i
  %.0.idx.i32.i.i.i.i.i = phi i64 [ %.0.add.i35.i.i.i.i.i, %.lr.ph.i.i.i.i31.i.i.i.i.i ], [ 15, %bb.asa ] ; 2 uses
  %.08.i.i.i.i33.i.i.i.i.i = phi i64 [ %i.fdi, %.lr.ph.i.i.i.i31.i.i.i.i.i ], [ %i.fcz, %bb.asa ] ; 3 uses
  %.0.ptr.i34.i.i.i.i.i = getelementptr inbounds i8, ptr %83, i64 %.0.idx.i32.i.i.i.i.i
  %i.fdb = urem i64 %.08.i.i.i.i33.i.i.i.i.i, 100
  %i.fdc = shl nuw nsw i64 %i.fdb, 1
  %i.fdd = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fdc ; 2 uses
  %i.fde = getelementptr inbounds nuw i8, ptr %i.fdd, i64 1
  %i.fdf = load i8, ptr %i.fde, align 1, !tbaa !142, !noalias !21602
  %i.fdg = getelementptr inbounds i8, ptr %.0.ptr.i34.i.i.i.i.i, i64 -1
  store i8 %i.fdf, ptr %i.fdg, align 1, !tbaa !142, !noalias !21602
  %i.fdh = load i8, ptr %i.fdd, align 1, !tbaa !142, !noalias !21602
  %.0.add.i35.i.i.i.i.i = add nsw i64 %.0.idx.i32.i.i.i.i.i, -2 ; 3 uses
  %.ptr25.i36.i.i.i.i.i = getelementptr inbounds i8, ptr %83, i64 %.0.add.i35.i.i.i.i.i
  store i8 %i.fdh, ptr %.ptr25.i36.i.i.i.i.i, align 1, !tbaa !142, !noalias !21602
  %i.fdi = udiv i64 %.08.i.i.i.i33.i.i.i.i.i, 100 ; 2 uses
  %i.fdj = icmp samesign ugt i64 %.08.i.i.i.i33.i.i.i.i.i, 9999
  br i1 %i.fdj, label %.lr.ph.i.i.i.i31.i.i.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i.i.i, !llvm.loop !21024

._crit_edge.i.i.i.i20.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i31.i.i.i.i.i, %bb.asa
  %.1.idx.i21.i.i.i.i.i = phi i64 [ 15, %bb.asa ], [ %.0.add.i35.i.i.i.i.i, %.lr.ph.i.i.i.i31.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i22.i.i.i.i.i = phi i64 [ %i.fcz, %bb.asa ], [ %i.fdi, %.lr.ph.i.i.i.i31.i.i.i.i.i ] ; 3 uses
  %i.fdk = icmp sgt i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i, 9
  br i1 %i.fdk, label %bb.asb, label %bb.asc

bb.asb:                                           ; preds = %._crit_edge.i.i.i.i20.i.i.i.i.i
  %i.fdl = shl nuw nsw i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i, 1
  %i.fdm = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fdl ; 2 uses
  %i.fdn = getelementptr inbounds nuw i8, ptr %i.fdm, i64 1
  %i.fdo = load i8, ptr %i.fdn, align 1, !tbaa !142, !noalias !21602
  %.1.add.i30.i.i.i.i.i = add nsw i64 %.1.idx.i21.i.i.i.i.i, -1 ; 2 uses
  %.ptr23.i.i.i.i.i.i = getelementptr inbounds i8, ptr %83, i64 %.1.add.i30.i.i.i.i.i
  store i8 %i.fdo, ptr %.ptr23.i.i.i.i.i.i, align 1, !tbaa !142, !noalias !21602
  %i.fdp = load i8, ptr %i.fdm, align 1, !tbaa !142, !noalias !21602
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i

bb.asc:                                           ; preds = %._crit_edge.i.i.i.i20.i.i.i.i.i
  %i.fdq = trunc i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i to i8
  %i.fdr = add i8 %i.fdq, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i: ; preds = %bb.asc, %bb.asb
  %.2.idx.i24.i.i.i.i.i = phi i64 [ %.1.add.i30.i.i.i.i.i, %bb.asb ], [ %.1.idx.i21.i.i.i.i.i, %bb.asc ] ; 3 uses
  %.sink.i.i.i.i25.i.i.i.i.i = phi i8 [ %i.fdp, %bb.asb ], [ %i.fdr, %bb.asc ]
  %i.fds = getelementptr i8, ptr %83, i64 %.2.idx.i24.i.i.i.i.i ; 2 uses
  %.ptr.i26.i.i.i.i.i = getelementptr i8, ptr %i.fds, i64 -1
  store i8 %.sink.i.i.i.i25.i.i.i.i.i, ptr %.ptr.i26.i.i.i.i.i, align 1, !tbaa !142, !noalias !21602
  %i.fdt = icmp sgt i64 %.2.idx.i24.i.i.i.i.i, 10
  br i1 %i.fdt, label %.lr.ph.i.i.preheader.i27.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1267

.lr.ph.i.i.preheader.i27.i.i.i.i.i:               ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i
  %i.fdu = add i64 %.2.idx.i24.i.i.i.i.i, %i.fcu  ; 2 uses
  %i.fdv = add i64 %i.fdu, -2
  %i.fdw = add nuw i64 %i.fcu, 9
  %umin.i28.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.fdv, i64 %i.fdw) ; 2 uses
  %i.fdx = sub i64 %umin.i28.i.i.i.i.i, %i.fcu
  %scevgep.i29.i.i.i.i.i = getelementptr i8, ptr %83, i64 %i.fdx ; 2 uses
  %i.fdy = xor i64 %umin.i28.i.i.i.i.i, -1
  %i.fdz = add i64 %i.fdu, %i.fdy
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i29.i.i.i.i.i, i8 48, i64 %i.fdz, i1 false), !tbaa !142, !noalias !21602
  %scevgep29.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i29.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1267

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1267: ; preds = %.lr.ph.i.i.preheader.i27.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i
  %i.fea = phi ptr [ %i.fds, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i ], [ %scevgep29.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i27.i.i.i.i.i ] ; 2 uses
  %i.feb = shl nsw i64 %.sext.i18.i.i.i.i.i, 1
  %i.fec = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.feb
  %i.fed = shl nuw nsw i64 %.zext.i16.i.i.i.i.i, 1
  %i.fee = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fed
  %i.fef = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 1), align 1, !tbaa !142, !noalias !21602
  %i.feg = getelementptr i8, ptr %i.fea, i64 -9
  %i.feh = load <2 x i8>, ptr %i.fec, align 1, !tbaa !142, !noalias !21602
  %i.fei = load <2 x i8>, ptr %i.fee, align 1, !tbaa !142, !noalias !21602
  %i.fej = shufflevector <2 x i8> %i.fei, <2 x i8> %i.feh, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.fek = shufflevector <8 x i8> %i.fej, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.fel = insertelement <8 x i8> %i.fek, i8 %i.fef, i64 0
  store <8 x i8> %i.fel, ptr %i.feg, align 1, !tbaa !142, !noalias !21602
  %i.fem = load i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, align 1, !tbaa !142, !noalias !21602
  %i.fen = getelementptr i8, ptr %i.fea, i64 -10  ; 3 uses
  store i8 %i.fem, ptr %i.fen, align 1, !tbaa !142, !noalias !21602
  %i.feo = ptrtoint ptr %.ptr24.i.i.i.i.i.i to i64
  %i.fep = ptrtoint ptr %i.fen to i64
  %i.feq = sub i64 %i.feo, %i.fep
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %86, i64 %i.feq, ptr nonnull %i.fen)
          to label %.noexc11.i unwind label %bb.atg, !noalias !21597

.noexc11.i:                                       ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1267
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #28, !noalias !21602
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.asd:                                           ; preds = %bb.aru
  %i.fer = ptrtoaddr ptr %82 to i64               ; 3 uses
  %spec.select.i.i37.i.i.i.i.i = icmp sgt i32 %.val4.i.i, -1
  br i1 %spec.select.i.i37.i.i.i.i.i, label %bb.ase, label %.invoke.i, !prof !179

bb.ase:                                           ; preds = %bb.asd
  %i.fes = zext nneg i32 %.val4.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #28, !noalias !21603
  %.ptr23.i38.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %82, i64 18
  %i.fet = udiv i32 %.val4.i.i, 1000000000
  %.zext.i39.i.i.i.i.i = zext nneg i32 %i.fet to i64 ; 2 uses
  %.neg.i.i.i.i.i40.i.i.i.i.i = mul nsw i64 %.zext.i39.i.i.i.i.i, -1000000000
  %i.feu = add nsw i64 %.neg.i.i.i.i.i40.i.i.i.i.i, %i.fes ; 3 uses
  %i.fev = icmp sgt i64 %i.feu, 99
  br i1 %i.fev, label %.lr.ph.i.i.i.i52.i.i.i.i.i, label %._crit_edge.i.i.i.i41.i.i.i.i.i

.lr.ph.i.i.i.i52.i.i.i.i.i:                       ; preds = %bb.ase, %.lr.ph.i.i.i.i52.i.i.i.i.i
  %.0.idx.i53.i.i.i.i.i = phi i64 [ %.0.add.i56.i.i.i.i.i, %.lr.ph.i.i.i.i52.i.i.i.i.i ], [ 18, %bb.ase ] ; 2 uses
  %.08.i.i.i.i54.i.i.i.i.i = phi i64 [ %i.ffd, %.lr.ph.i.i.i.i52.i.i.i.i.i ], [ %i.feu, %bb.ase ] ; 3 uses
  %.0.ptr.i55.i.i.i.i.i = getelementptr inbounds i8, ptr %82, i64 %.0.idx.i53.i.i.i.i.i
  %i.few = urem i64 %.08.i.i.i.i54.i.i.i.i.i, 100
  %i.fex = shl nuw nsw i64 %i.few, 1
  %i.fey = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fex ; 2 uses
  %i.fez = getelementptr inbounds nuw i8, ptr %i.fey, i64 1
  %i.ffa = load i8, ptr %i.fez, align 1, !tbaa !142, !noalias !21603
  %i.ffb = getelementptr inbounds i8, ptr %.0.ptr.i55.i.i.i.i.i, i64 -1
  store i8 %i.ffa, ptr %i.ffb, align 1, !tbaa !142, !noalias !21603
  %i.ffc = load i8, ptr %i.fey, align 1, !tbaa !142, !noalias !21603
  %.0.add.i56.i.i.i.i.i = add nsw i64 %.0.idx.i53.i.i.i.i.i, -2 ; 3 uses
  %.ptr24.i57.i.i.i.i.i = getelementptr inbounds i8, ptr %82, i64 %.0.add.i56.i.i.i.i.i
  store i8 %i.ffc, ptr %.ptr24.i57.i.i.i.i.i, align 1, !tbaa !142, !noalias !21603
  %i.ffd = udiv i64 %.08.i.i.i.i54.i.i.i.i.i, 100 ; 2 uses
  %i.ffe = icmp samesign ugt i64 %.08.i.i.i.i54.i.i.i.i.i, 9999
  br i1 %i.ffe, label %.lr.ph.i.i.i.i52.i.i.i.i.i, label %._crit_edge.i.i.i.i41.i.i.i.i.i, !llvm.loop !21024

._crit_edge.i.i.i.i41.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i52.i.i.i.i.i, %bb.ase
  %.1.idx.i42.i.i.i.i.i = phi i64 [ 18, %bb.ase ], [ %.0.add.i56.i.i.i.i.i, %.lr.ph.i.i.i.i52.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i43.i.i.i.i.i = phi i64 [ %i.feu, %bb.ase ], [ %i.ffd, %.lr.ph.i.i.i.i52.i.i.i.i.i ] ; 3 uses
  %i.fff = icmp sgt i64 %.0.lcssa.i.i.i.i43.i.i.i.i.i, 9
  br i1 %i.fff, label %bb.asf, label %bb.asg

bb.asf:                                           ; preds = %._crit_edge.i.i.i.i41.i.i.i.i.i
  %i.ffg = shl nuw nsw i64 %.0.lcssa.i.i.i.i43.i.i.i.i.i, 1
  %i.ffh = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ffg ; 2 uses
  %i.ffi = getelementptr inbounds nuw i8, ptr %i.ffh, i64 1
  %i.ffj = load i8, ptr %i.ffi, align 1, !tbaa !142, !noalias !21603
  %.1.add.i51.i.i.i.i.i = add nsw i64 %.1.idx.i42.i.i.i.i.i, -1 ; 2 uses
  %.ptr22.i.i.i.i.i.i = getelementptr inbounds i8, ptr %82, i64 %.1.add.i51.i.i.i.i.i
  store i8 %i.ffj, ptr %.ptr22.i.i.i.i.i.i, align 1, !tbaa !142, !noalias !21603
  %i.ffk = load i8, ptr %i.ffh, align 1, !tbaa !142, !noalias !21603
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i

bb.asg:                                           ; preds = %._crit_edge.i.i.i.i41.i.i.i.i.i
  %i.ffl = trunc i64 %.0.lcssa.i.i.i.i43.i.i.i.i.i to i8
  %i.ffm = add i8 %i.ffl, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i: ; preds = %bb.asg, %bb.asf
  %.2.idx.i45.i.i.i.i.i = phi i64 [ %.1.add.i51.i.i.i.i.i, %bb.asf ], [ %.1.idx.i42.i.i.i.i.i, %bb.asg ] ; 3 uses
  %.sink.i.i.i.i46.i.i.i.i.i = phi i8 [ %i.ffk, %bb.asf ], [ %i.ffm, %bb.asg ]
  %i.ffn = getelementptr i8, ptr %82, i64 %.2.idx.i45.i.i.i.i.i ; 2 uses
  %.ptr.i47.i.i.i.i.i = getelementptr i8, ptr %i.ffn, i64 -1
  store i8 %.sink.i.i.i.i46.i.i.i.i.i, ptr %.ptr.i47.i.i.i.i.i, align 1, !tbaa !142, !noalias !21603
  %i.ffo = icmp sgt i64 %.2.idx.i45.i.i.i.i.i, 10
  br i1 %i.ffo, label %.lr.ph.i.i.preheader.i48.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1288

.lr.ph.i.i.preheader.i48.i.i.i.i.i:               ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i
  %i.ffp = add i64 %.2.idx.i45.i.i.i.i.i, %i.fer  ; 2 uses
  %i.ffq = add i64 %i.ffp, -2
  %i.ffr = add nuw i64 %i.fer, 9
  %umin.i49.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ffq, i64 %i.ffr) ; 2 uses
  %i.ffs = sub i64 %umin.i49.i.i.i.i.i, %i.fer
  %scevgep.i50.i.i.i.i.i = getelementptr i8, ptr %82, i64 %i.ffs ; 2 uses
  %i.fft = xor i64 %umin.i49.i.i.i.i.i, -1
  %i.ffu = add i64 %i.ffp, %i.fft
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i50.i.i.i.i.i, i8 48, i64 %i.ffu, i1 false), !tbaa !142, !noalias !21603
  %scevgep28.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i50.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1288

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1288: ; preds = %.lr.ph.i.i.preheader.i48.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i
  %i.ffv = phi ptr [ %i.ffn, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i ], [ %scevgep28.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i48.i.i.i.i.i ] ; 2 uses
  %i.ffw = getelementptr i8, ptr %i.ffv, i64 -2
  store i8 46, ptr %i.ffw, align 1, !tbaa !142, !noalias !21603
  %i.ffx = shl nuw nsw i64 %.zext.i39.i.i.i.i.i, 1
  %i.ffy = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ffx
  %i.ffz = getelementptr i8, ptr %i.ffv, i64 -10  ; 3 uses
  %i.fga = load <2 x i8>, ptr %i.ffy, align 1, !tbaa !142, !noalias !21603
  %i.fgb = load <2 x i8>, ptr @_ZN5arrow8internal6detail11digit_pairsE, align 1, !tbaa !142, !noalias !21603
  %i.fgc = shufflevector <2 x i8> %i.fgb, <2 x i8> %i.fga, <8 x i32> <i32 0, i32 1, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3>
  %i.fgd = shufflevector <8 x i8> %i.fgc, <8 x i8> <i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <8 x i32> <i32 0, i32 1, i32 10, i32 3, i32 4, i32 13, i32 6, i32 7>
  store <8 x i8> %i.fgd, ptr %i.ffz, align 1, !tbaa !142, !noalias !21603
  %i.fge = ptrtoint ptr %.ptr23.i38.i.i.i.i.i to i64
  %i.fgf = ptrtoint ptr %i.ffz to i64
  %i.fgg = sub i64 %i.fge, %i.fgf
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %86, i64 %i.fgg, ptr nonnull %i.ffz)
          to label %.noexc13.i unwind label %bb.atg, !noalias !21597

.noexc13.i:                                       ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1288
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #28, !noalias !21603
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.ash:                                           ; preds = %bb.aru
  %spec.select.i.i58.i.i.i.i.i = icmp ult i32 %.val4.i.i, 86400
  br i1 %spec.select.i.i58.i.i.i.i.i, label %bb.asi, label %.invoke.i, !prof !179

.invoke.i:                                        ; preds = %bb.ash, %bb.asd, %bb.arz, %bb.arv
  invoke fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZNS_12_GLOBAL__N_114FormatToBufferINS0_15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISF_EEtlSL_EEESE_OSF_(ptr dead_on_unwind noalias nonnull writable align 8 %86, i32 %.val4.i.i)
          to label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i unwind label %bb.atg, !noalias !21597

bb.asi:                                           ; preds = %bb.ash
  %i.fgh = zext nneg i32 %.val4.i.i to i64
  %i.fgi = udiv i32 %.val4.i.i, 3600
  %.zext.i59.i.i.i.i.i = zext nneg i32 %i.fgi to i64 ; 3 uses
  %i.fgj = udiv i32 %.val4.i.i, 60
  %.zext16.i.i.i.i.i.i = zext nneg i32 %i.fgj to i64
  %.neg.i.i.i.i60.i.i.i.i.i = mul nsw i64 %.zext.i59.i.i.i.i.i, -60
  %i.fgk = add nsw i64 %.neg.i.i.i.i60.i.i.i.i.i, %.zext16.i.i.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i61.i.i.i.i.i = mul nsw i64 %.zext.i59.i.i.i.i.i, -3600
  %i.fgl = add nsw i64 %.neg.i7.i.i.i61.i.i.i.i.i, %i.fgh
  %.neg.i8.i.i.i62.i.i.i.i.i = mul nsw i64 %i.fgk, -60
  %i.fgm = add nsw i64 %i.fgl, %.neg.i8.i.i.i62.i.i.i.i.i
  %i.fgn = shl nsw i64 %i.fgm, 1
  %i.fgo = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fgn
  %i.fgp = shl nsw i64 %i.fgk, 1
  %i.fgq = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fgp
  %i.fgr = shl nuw nsw i64 %.zext.i59.i.i.i.i.i, 1
  %i.fgs = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fgr
  call void @llvm.lifetime.start.p0(ptr nonnull %81), !noalias !21604
  %i.fgt = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 6 uses
  store ptr %i.fgt, ptr %81, align 8, !tbaa !160, !noalias !21605
  %i.fgu = load <2 x i8>, ptr %i.fgo, align 1, !tbaa !142, !noalias !21606
  %i.fgv = load <2 x i8>, ptr %i.fgq, align 1, !tbaa !142, !noalias !21606
  %i.fgw = load <2 x i8>, ptr %i.fgs, align 1, !tbaa !142, !noalias !21606
  %i.fgx = shufflevector <2 x i8> %i.fgw, <2 x i8> %i.fgv, <8 x i32> <i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.fgy = shufflevector <8 x i8> %i.fgx, <8 x i8> <i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <8 x i32> <i32 0, i32 1, i32 10, i32 3, i32 4, i32 13, i32 poison, i32 poison>
  %i.fgz = shufflevector <2 x i8> %i.fgu, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fha = shufflevector <8 x i8> %i.fgy, <8 x i8> %i.fgz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  store <8 x i8> %i.fha, ptr %i.fgt, align 8, !noalias !21605
  %i.fhb = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i64 8, ptr %i.fhb, align 8, !tbaa !161, !noalias !21605
  %i.fhc = getelementptr inbounds nuw i8, ptr %81, i64 24
  store i8 0, ptr %i.fhc, align 8, !tbaa !142, !noalias !21605
  invoke void @_ZN5arrow6Buffer10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.9") align 8 %86, ptr noundef nonnull %81)
          to label %bb.asj unwind label %bb.ask, !noalias !21599

bb.asj:                                           ; preds = %bb.asi
  %i.fhd = load ptr, ptr %81, align 8, !tbaa !141, !noalias !21605 ; 2 uses
  %i.fhe = icmp eq ptr %i.fhd, %i.fgt
  br i1 %i.fhe, label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.asj
  %i.fhf = load i64, ptr %i.fgt, align 8, !tbaa !142, !noalias !21605
  %i.fhg = add i64 %i.fhf, 1
  call void @_ZdlPvm(ptr noundef %i.fhd, i64 noundef %i.fhg) #29, !noalias !21599
  br label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i

bb.ask:                                           ; preds = %bb.asi
  %i.fhh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fhi = load ptr, ptr %81, align 8, !tbaa !141, !noalias !21605 ; 2 uses
  %i.fhj = icmp eq ptr %i.fhi, %i.fgt
  br i1 %i.fhj, label %.body.i1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i: ; preds = %bb.ask
  %i.fhk = load i64, ptr %i.fgt, align 8, !tbaa !142, !noalias !21605
  %i.fhl = add i64 %i.fhk, 1
  call void @_ZdlPvm(ptr noundef %i.fhi, i64 noundef %i.fhl) #29, !noalias !21599
  br label %.body.i1234

_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i: ; preds = %bb.asj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %81), !noalias !21604
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i: ; preds = %bb.ars, %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i, %.invoke.i, %.noexc13.i, %.noexc11.i, %.noexc9.i1281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1238
  call void @llvm.lifetime.end.p0(ptr nonnull %85), !noalias !21599
  %i.fhm = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %.noexc.i.i1239 unwind label %bb.asx, !noalias !21599 ; 12 uses

.noexc.i.i1239:                                   ; preds = %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i
  %i.fhn = getelementptr inbounds nuw i8, ptr %i.fhm, i64 8
  store i32 1, ptr %i.fhn, align 8, !tbaa !168, !noalias !21607
  %i.fho = getelementptr inbounds nuw i8, ptr %i.fhm, i64 12 ; 3 uses
  store i32 1, ptr %i.fho, align 4, !tbaa !169, !noalias !21607
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12StringScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.fhm, align 8, !tbaa !137, !noalias !21607
  %i.fhp = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.fhq = getelementptr inbounds nuw i8, ptr %i.fhm, i64 24
  %i.fhr = getelementptr inbounds nuw i8, ptr %i.fhm, i64 32 ; 3 uses
  %i.fhs = getelementptr inbounds nuw i8, ptr %i.fhm, i64 40
  %i.fht = getelementptr inbounds nuw i8, ptr %i.fhm, i64 56
  %i.fhu = getelementptr inbounds nuw i8, ptr %i.fhm, i64 64
  %i.fhv = load <2 x ptr>, ptr %86, align 16, !tbaa !162, !noalias !21607
  %i.fhw = load ptr, ptr %86, align 16, !tbaa !166, !noalias !21607 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %86, i8 0, i64 16, i1 false), !noalias !21607
  %i.fhx = load <2 x ptr>, ptr %88, align 16, !tbaa !162, !noalias !21607
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %88, i8 0, i64 16, i1 false), !noalias !21607
  store i64 0, ptr %i.fhr, align 8, !noalias !21607
  store <2 x ptr> %i.fhx, ptr %i.fhs, align 8, !tbaa !162, !noalias !21607
  store i8 1, ptr %i.fht, align 8, !tbaa !154, !noalias !21607
  store <2 x ptr> %i.fhv, ptr %i.fhu, align 8, !tbaa !162, !noalias !21607
  %.not.i.i8.i.i.i.i.i.i.i.i.i.i1240 = icmp eq ptr %i.fhw, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i.i.i.i1240, label %bb.asm, label %bb.asl

bb.asl:                                           ; preds = %.noexc.i.i1239
  %i.fhy = getelementptr inbounds nuw i8, ptr %i.fhw, i64 24
  %i.fhz = load i64, ptr %i.fhy, align 8, !tbaa !177, !noalias !21607
  %i.fia = shl i64 %i.fhz, 32
  br label %bb.asm

bb.asm:                                           ; preds = %bb.asl, %.noexc.i.i1239
  %.sroa.4.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i1241 = phi i64 [ %i.fia, %bb.asl ], [ 0, %.noexc.i.i1239 ]
  %i.fib = getelementptr inbounds nuw i8, ptr %i.fhm, i64 16 ; 3 uses
  %i.fic = getelementptr inbounds nuw i8, ptr %i.fhm, i64 80
  store i64 %.sroa.4.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i1241, ptr %i.fic, align 8, !noalias !21607
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12StringScalarE, i64 16), ptr %i.fib, align 8, !tbaa !137, !noalias !21607
  store ptr %i.fib, ptr %i.fhq, align 8, !tbaa !229, !noalias !21607
  %i.fid = load i8, ptr @__libc_single_threaded, align 1, !tbaa !142, !noalias !21607
  %.not.i.i3.i.i.i.i.i.i.i.i1242 = icmp eq i8 %i.fid, 0
  br i1 %.not.i.i3.i.i.i.i.i.i.i.i1242, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1260, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i1243

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i1243: ; preds = %bb.asm
  store i32 2, ptr %i.fho, align 4, !tbaa !94, !noalias !21607
  br label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1244

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1260: ; preds = %bb.asm
  %i.fie = atomicrmw volatile add ptr %i.fho, i32 1 acq_rel, align 4, !noalias !21607 ; 0 uses
  %.pre.i.i.i.i.i.i.i.i1261 = load ptr, ptr %i.fhr, align 8, !tbaa !230, !noalias !21607 ; 4 uses
  %.not6.i.i.i.i.i.i.i.i.i1262 = icmp eq ptr %.pre.i.i.i.i.i.i.i.i1261, null
  br i1 %.not6.i.i.i.i.i.i.i.i.i1262, label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1244, label %bb.asn

bb.asn:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1260
  %i.fif = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i1261, i64 12 ; 3 uses
  %i.fig = load i8, ptr @__libc_single_threaded, align 1, !tbaa !142, !noalias !21607
  %.not.i7.i.i.i.i.i.i.i.i.i1263 = icmp eq i8 %i.fig, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i1263, label %bb.asp, label %bb.aso

bb.aso:                                           ; preds = %bb.asn
  %i.fih = load i32, ptr %i.fif, align 4, !tbaa !94, !noalias !21607 ; 2 uses
  %i.fii = add nsw i32 %i.fih, -1
  store i32 %i.fii, ptr %i.fif, align 4, !tbaa !94, !noalias !21607
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1264

bb.asp:                                           ; preds = %bb.asn
  %i.fij = atomicrmw volatile add ptr %i.fif, i32 -1 acq_rel, align 4, !noalias !21607
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1264

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1264: ; preds = %bb.asp, %bb.aso
  %.0.i.i.i.i.i.i.i.i.i.i.i1265 = phi i32 [ %i.fih, %bb.aso ], [ %i.fij, %bb.asp ]
  %i.fik = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i1265, 1
  br i1 %i.fik, label %bb.asq, label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1244

bb.asq:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1264
  %i.fil = load ptr, ptr %.pre.i.i.i.i.i.i.i.i1261, align 8, !tbaa !137, !noalias !21607
  %i.fim = getelementptr inbounds nuw i8, ptr %i.fil, i64 24
  %i.fin = load ptr, ptr %i.fim, align 8, !noalias !21607
  call void %i.fin(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i.i.i1261) #28, !noalias !21607, !inline_history !21066
  br label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1244

_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1244: ; preds = %bb.asq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1264, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1260, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i1243
  store ptr %i.fhm, ptr %i.fhr, align 8, !tbaa !230, !noalias !21607
  store ptr null, ptr %87, align 8, !tbaa !159, !alias.scope !21598, !noalias !21597
  %i.fio = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 3 uses
  store ptr %i.fib, ptr %i.fio, align 8, !tbaa !225, !alias.scope !21598, !noalias !21597
  %i.fip = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 2 uses
  store ptr %i.fhm, ptr %i.fip, align 8, !tbaa !163, !alias.scope !21598, !noalias !21597
  %i.fiq = load ptr, ptr %i.fhp, align 8, !tbaa !163, !noalias !21599 ; 8 uses
  %.not.i.i5.i.i = icmp eq ptr %i.fiq, null
  br i1 %.not.i.i5.i.i, label %bb.asy, label %bb.asr

bb.asr:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1244
  %i.fir = getelementptr inbounds nuw i8, ptr %i.fiq, i64 8 ; 4 uses
  %i.fis = load atomic i64, ptr %i.fir acquire, align 8, !noalias !21599 ; 2 uses
  %i.fit = icmp eq i64 %i.fis, 4294967297
  %i.fiu = trunc i64 %i.fis to i32                ; 2 uses
  br i1 %i.fit, label %bb.ass, label %bb.ast

bb.ass:                                           ; preds = %bb.asr
  store i32 0, ptr %i.fir, align 8, !tbaa !168, !noalias !21599
  %i.fiv = getelementptr inbounds nuw i8, ptr %i.fiq, i64 12
  store i32 0, ptr %i.fiv, align 4, !tbaa !169, !noalias !21599
  %i.fiw = load ptr, ptr %i.fiq, align 8, !tbaa !137, !noalias !21599
  %i.fix = getelementptr inbounds nuw i8, ptr %i.fiw, i64 16
  %i.fiy = load ptr, ptr %i.fix, align 8, !noalias !21599
  call void %i.fiy(ptr noundef nonnull align 8 dereferenceable(16) %i.fiq) #28, !noalias !21599, !inline_history !21067
  %i.fiz = load ptr, ptr %i.fiq, align 8, !tbaa !137, !noalias !21599
  %i.fja = getelementptr inbounds nuw i8, ptr %i.fiz, i64 24
  %i.fjb = load ptr, ptr %i.fja, align 8, !noalias !21599
  call void %i.fjb(ptr noundef nonnull align 8 dereferenceable(16) %i.fiq) #28, !noalias !21599, !inline_history !21067
  br label %bb.asy

bb.ast:                                           ; preds = %bb.asr
  %i.fjc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !142, !noalias !21599
  %.not.i.i.i6.i.i = icmp eq i8 %i.fjc, 0
  br i1 %.not.i.i.i6.i.i, label %bb.asv, label %bb.asu

bb.asu:                                           ; preds = %bb.ast
  %i.fjd = add nsw i32 %i.fiu, -1
  store i32 %i.fjd, ptr %i.fir, align 8, !tbaa !94, !noalias !21599
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i

bb.asv:                                           ; preds = %bb.ast
  %i.fje = atomicrmw volatile add ptr %i.fir, i32 -1 acq_rel, align 4, !noalias !21599
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i: ; preds = %bb.asv, %bb.asu
  %.0.i.i.i.i8.i.i = phi i32 [ %i.fiu, %bb.asu ], [ %i.fje, %bb.asv ]
  %i.fjf = icmp eq i32 %.0.i.i.i.i8.i.i, 1
  br i1 %i.fjf, label %bb.asw, label %bb.asy, !prof !170

bb.asw:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fiq) #28, !noalias !21599
  br label %bb.asy

bb.asx:                                           ; preds = %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i
  %i.fjg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %86) #28, !noalias !21599
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #28, !noalias !21599
  br label %.body.i1234

bb.asy:                                           ; preds = %bb.asw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i, %bb.ass, %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1244
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #28, !noalias !21599
  %i.fjh = load ptr, ptr %i.ezp, align 8, !tbaa !163, !noalias !21597 ; 8 uses
  %.not.i.i.i1245 = icmp eq ptr %i.fjh, null
  br i1 %.not.i.i.i1245, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1248, label %bb.asz

end_hunk_2
begin_hunk_3_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %.not.i.i23.i, label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_10Time32TypeEEENS_6StatusERKT_.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1250, !prof !236

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1250: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1254, %_ZN5arrow6StatusC2ERKS0_.exit.i1249
  %i.flm = phi ptr [ %.pr.i.pr.i1255, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1254 ], [ %i.fku, %_ZN5arrow6StatusC2ERKS0_.exit.i1249 ]
  %i.fln = getelementptr inbounds nuw i8, ptr %i.flm, i64 1
  %i.flo = load i8, ptr %i.fln, align 1, !tbaa !222, !range !155, !noundef !156
  %i.flp = trunc nuw i8 %i.flo to i1
  br i1 %i.flp, label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_10Time32TypeEEENS_6StatusERKT_.exit, label %bb.atw

bb.atw:                                           ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1250
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %87) #28
  br label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_10Time32TypeEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_10Time32TypeEEENS_6StatusERKT_.exit: ; preds = %bb.atp, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i1254, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i1250, %bb.atw
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #28, !noalias !21597
  call void @llvm.lifetime.end.p0(ptr nonnull %88)
  br label %bb.byj

bb.atx:                                           ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21610)
  call void @llvm.lifetime.start.p0(ptr nonnull %80)
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #28, !noalias !21610
  %i.flq = load ptr, ptr %1, align 8, !tbaa !447, !noalias !21610, !nonnull !156, !align !319 ; 3 uses
  %i.flr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fls = load ptr, ptr %i.flr, align 8, !tbaa !448, !noalias !21610, !nonnull !156, !align !319 ; 2 uses
  %i.flt = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.flu = getelementptr inbounds nuw i8, ptr %i.fls, i64 8
  %i.flv = load ptr, ptr %i.flu, align 8, !tbaa !163, !noalias !21610 ; 2 uses
  %i.flw = load <2 x ptr>, ptr %i.fls, align 8, !tbaa !162, !noalias !21610
  store <2 x ptr> %i.flw, ptr %80, align 16, !tbaa !162, !noalias !21610
  %.not.i.i.i.i1289 = icmp eq ptr %i.flv, null
  br i1 %.not.i.i.i.i1289, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1291, label %bb.aty

bb.aty:                                           ; preds = %bb.atx
  %i.flx = getelementptr inbounds nuw i8, ptr %i.flv, i64 8 ; 3 uses
  %i.fly = load i8, ptr @__libc_single_threaded, align 1, !tbaa !142, !noalias !21610
  %.not.i.i.i.i.i1290 = icmp eq i8 %i.fly, 0
  br i1 %.not.i.i.i.i.i1290, label %bb.aua, label %bb.atz

bb.atz:                                           ; preds = %bb.aty
  %i.flz = load i32, ptr %i.flx, align 4, !tbaa !94, !noalias !21610
  %i.fma = add nsw i32 %i.flz, 1
  store i32 %i.fma, ptr %i.flx, align 4, !tbaa !94, !noalias !21610
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1291

bb.aua:                                           ; preds = %bb.aty
  %i.fmb = atomicrmw volatile add ptr %i.flx, i32 1 acq_rel, align 4, !noalias !21610 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1291

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1291: ; preds = %bb.aua, %bb.atz, %bb.atx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21611)
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #28, !noalias !21612
  %i.fmc = getelementptr inbounds nuw i8, ptr %i.flq, i64 24
  %i.fmd = load ptr, ptr %i.fmc, align 8, !tbaa !119, !noalias !21612
  %i.fme = getelementptr inbounds nuw i8, ptr %i.fmd, i64 72
  %i.fmf = load i32, ptr %i.fme, align 8, !tbaa !443, !noalias !21612
  %i.fmg = getelementptr inbounds nuw i8, ptr %i.flq, i64 40
  %.val3.i.i1292 = load i8, ptr %i.fmg, align 8, !tbaa !154, !range !155, !noalias !21612, !noundef !156
  %i.fmh = getelementptr inbounds nuw i8, ptr %i.flq, i64 48
  %.val4.i.i1293 = load i64, ptr %i.fmh, align 8, !noalias !21612 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %77), !noalias !21612
  %i.fmi = trunc nuw i8 %.val3.i.i1292 to i1
  br i1 %i.fmi, label %bb.aud, label %._crit_edge.i.i.i.i.i1294

._crit_edge.i.i.i.i.i1294:                        ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1291
  %i.fmj = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 6 uses
  store ptr %i.fmj, ptr %77, align 8, !tbaa !160, !noalias !21613
  store i32 1819047278, ptr %i.fmj, align 8, !noalias !21613
  %i.fmk = getelementptr inbounds nuw i8, ptr %77, i64 8
  store i64 4, ptr %i.fmk, align 8, !tbaa !161, !noalias !21613
  %i.fml = getelementptr inbounds nuw i8, ptr %77, i64 20
  store i8 0, ptr %i.fml, align 4, !tbaa !142, !noalias !21613
  invoke void @_ZN5arrow6Buffer10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.9") align 8 %78, ptr noundef nonnull %77)
          to label %bb.aub unwind label %bb.auc, !noalias !21612

bb.aub:                                           ; preds = %._crit_edge.i.i.i.i.i1294
  %i.fmm = load ptr, ptr %77, align 8, !tbaa !141, !noalias !21613 ; 2 uses
  %i.fmn = icmp eq ptr %i.fmm, %i.fmj
  br i1 %i.fmn, label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1300: ; preds = %bb.aub
  %i.fmo = load i64, ptr %i.fmj, align 8, !tbaa !142, !noalias !21613
  %i.fmp = add i64 %i.fmo, 1
  call void @_ZdlPvm(ptr noundef %i.fmm, i64 noundef %i.fmp) #29, !noalias !21612
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.auc:                                           ; preds = %._crit_edge.i.i.i.i.i1294
  %i.fmq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fmr = load ptr, ptr %77, align 8, !tbaa !141, !noalias !21613 ; 2 uses
  %i.fms = icmp eq ptr %i.fmr, %i.fmj
  br i1 %i.fms, label %.body.i1296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i1295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i1295: ; preds = %bb.auc
  %i.fmt = load i64, ptr %i.fmj, align 8, !tbaa !142, !noalias !21613
  %i.fmu = add i64 %i.fmt, 1
  call void @_ZdlPvm(ptr noundef %i.fmr, i64 noundef %i.fmu) #29, !noalias !21612
  br label %.body.i1296

bb.aud:                                           ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i1291
  switch i32 %i.fmf, label %bb.auq [
    i32 3, label %bb.aum
    i32 1, label %bb.aue
    i32 2, label %bb.aui
  ]

bb.aue:                                           ; preds = %bb.aud
  %i.fmv = ptrtoaddr ptr %76 to i64               ; 3 uses
  %spec.select.i.i.i.i.i.i.i1362 = icmp ult i64 %.val4.i.i1293, 86400000
  br i1 %spec.select.i.i.i.i.i.i.i1362, label %bb.auf, label %.invoke.i1338, !prof !179

bb.auf:                                           ; preds = %bb.aue
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #28, !noalias !21614
  %.ptr26.i.i.i.i.i.i1363 = getelementptr inbounds nuw i8, ptr %76, i64 12
  %.lhs.trunc.i.i.i.i.i.i1364 = trunc nuw nsw i64 %.val4.i.i1293 to i32 ; 2 uses
  %i.fmw = udiv i32 %.lhs.trunc.i.i.i.i.i.i1364, 3600000
  %.zext.i.i.i.i.i.i1365 = zext nneg i32 %i.fmw to i64 ; 3 uses
  %i.fmx = udiv i32 %.lhs.trunc.i.i.i.i.i.i1364, 60000
  %.zext23.i.i.i.i.i.i1366 = zext nneg i32 %i.fmx to i64
  %.neg.i.i.i.i.i.i.i.i.i1367 = mul nsw i64 %.zext.i.i.i.i.i.i1365, -60
  %i.fmy = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i1367, %.zext23.i.i.i.i.i.i1366 ; 2 uses
  %.neg.i7.i.i.i.i.i.i.i.i1368 = mul nsw i64 %.zext.i.i.i.i.i.i1365, -3600000
  %i.fmz = add nsw i64 %.neg.i7.i.i.i.i.i.i.i.i1368, %.val4.i.i1293
  %.neg.i8.i.i.i.i.i.i.i.i1369 = mul nsw i64 %i.fmy, -60000
  %i.fna = add nsw i64 %i.fmz, %.neg.i8.i.i.i.i.i.i.i.i1369 ; 2 uses
  %.lhs.trunc24.i.i.i.i.i.i1370 = trunc nsw i64 %i.fna to i32
  %i.fnb = sdiv i32 %.lhs.trunc24.i.i.i.i.i.i1370, 1000
  %.sext.i.i.i.i.i.i1371 = sext i32 %i.fnb to i64 ; 2 uses
  %.neg.i.i.i.i.i.i.i.i.i.i1372 = mul nsw i64 %.sext.i.i.i.i.i.i1371, -1000
  %i.fnc = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i1372, %i.fna ; 3 uses
  %i.fnd = icmp sgt i64 %i.fnc, 99
  br i1 %i.fnd, label %.lr.ph.i.i.i.i.i.i.i.i.i1388, label %._crit_edge.i.i.i.i.i.i.i.i.i1373

.lr.ph.i.i.i.i.i.i.i.i.i1388:                     ; preds = %bb.auf, %.lr.ph.i.i.i.i.i.i.i.i.i1388
  %.0.idx.i.i.i.i.i.i1389 = phi i64 [ %.0.add.i.i.i.i.i.i1392, %.lr.ph.i.i.i.i.i.i.i.i.i1388 ], [ 12, %bb.auf ] ; 2 uses
  %.08.i.i.i.i.i.i.i.i.i1390 = phi i64 [ %i.fnl, %.lr.ph.i.i.i.i.i.i.i.i.i1388 ], [ %i.fnc, %bb.auf ] ; 3 uses
  %.0.ptr.i.i.i.i.i.i1391 = getelementptr inbounds i8, ptr %76, i64 %.0.idx.i.i.i.i.i.i1389
  %i.fne = urem i64 %.08.i.i.i.i.i.i.i.i.i1390, 100
  %i.fnf = shl nuw nsw i64 %i.fne, 1
  %i.fng = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fnf ; 2 uses
  %i.fnh = getelementptr inbounds nuw i8, ptr %i.fng, i64 1
  %i.fni = load i8, ptr %i.fnh, align 1, !tbaa !142, !noalias !21614
  %i.fnj = getelementptr inbounds i8, ptr %.0.ptr.i.i.i.i.i.i1391, i64 -1
  store i8 %i.fni, ptr %i.fnj, align 1, !tbaa !142, !noalias !21614
  %i.fnk = load i8, ptr %i.fng, align 1, !tbaa !142, !noalias !21614
  %.0.add.i.i.i.i.i.i1392 = add nsw i64 %.0.idx.i.i.i.i.i.i1389, -2 ; 3 uses
  %.ptr27.i.i.i.i.i.i1393 = getelementptr inbounds i8, ptr %76, i64 %.0.add.i.i.i.i.i.i1392
  store i8 %i.fnk, ptr %.ptr27.i.i.i.i.i.i1393, align 1, !tbaa !142, !noalias !21614
  %i.fnl = udiv i64 %.08.i.i.i.i.i.i.i.i.i1390, 100 ; 2 uses
  %i.fnm = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i.i.i1390, 9999
  br i1 %i.fnm, label %.lr.ph.i.i.i.i.i.i.i.i.i1388, label %._crit_edge.i.i.i.i.i.i.i.i.i1373, !llvm.loop !21024

._crit_edge.i.i.i.i.i.i.i.i.i1373:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1388, %bb.auf
  %.1.idx.i.i.i.i.i.i1374 = phi i64 [ 12, %bb.auf ], [ %.0.add.i.i.i.i.i.i1392, %.lr.ph.i.i.i.i.i.i.i.i.i1388 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i1375 = phi i64 [ %i.fnc, %bb.auf ], [ %i.fnl, %.lr.ph.i.i.i.i.i.i.i.i.i1388 ] ; 3 uses
  %i.fnn = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i1375, 9
  br i1 %i.fnn, label %bb.aug, label %bb.auh

bb.aug:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i1373
  %i.fno = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i1375, 1
  %i.fnp = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fno ; 2 uses
  %i.fnq = getelementptr inbounds nuw i8, ptr %i.fnp, i64 1
  %i.fnr = load i8, ptr %i.fnq, align 1, !tbaa !142, !noalias !21614
  %.1.add.i.i.i.i.i.i1386 = add nsw i64 %.1.idx.i.i.i.i.i.i1374, -1 ; 2 uses
  %.ptr25.i.i.i.i.i.i1387 = getelementptr inbounds i8, ptr %76, i64 %.1.add.i.i.i.i.i.i1386
  store i8 %i.fnr, ptr %.ptr25.i.i.i.i.i.i1387, align 1, !tbaa !142, !noalias !21614
  %i.fns = load i8, ptr %i.fnp, align 1, !tbaa !142, !noalias !21614
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1376

bb.auh:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i1373
  %i.fnt = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i.i1375 to i8
  %i.fnu = add i8 %i.fnt, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1376

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1376: ; preds = %bb.auh, %bb.aug
  %.2.idx.i.i.i.i.i.i1377 = phi i64 [ %.1.add.i.i.i.i.i.i1386, %bb.aug ], [ %.1.idx.i.i.i.i.i.i1374, %bb.auh ] ; 3 uses
  %.sink.i.i.i.i.i.i.i.i.i1378 = phi i8 [ %i.fns, %bb.aug ], [ %i.fnu, %bb.auh ]
  %i.fnv = getelementptr i8, ptr %76, i64 %.2.idx.i.i.i.i.i.i1377 ; 2 uses
  %.ptr.i.i.i.i.i.i1379 = getelementptr i8, ptr %i.fnv, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i.i.i1378, ptr %.ptr.i.i.i.i.i.i1379, align 1, !tbaa !142, !noalias !21614
  %i.fnw = icmp sgt i64 %.2.idx.i.i.i.i.i.i1377, 10
  br i1 %i.fnw, label %.lr.ph.i.i.preheader.i.i.i.i.i.i1382, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1380

.lr.ph.i.i.preheader.i.i.i.i.i.i1382:             ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1376
  %i.fnx = add i64 %.2.idx.i.i.i.i.i.i1377, %i.fmv ; 2 uses
  %i.fny = add i64 %i.fnx, -2
  %i.fnz = add nuw i64 %i.fmv, 9
  %umin.i.i.i.i.i.i1383 = call i64 @llvm.umin.i64(i64 %i.fny, i64 %i.fnz) ; 2 uses
  %i.foa = sub i64 %umin.i.i.i.i.i.i1383, %i.fmv
  %scevgep.i.i.i.i.i.i1384 = getelementptr i8, ptr %76, i64 %i.foa ; 2 uses
  %i.fob = xor i64 %umin.i.i.i.i.i.i1383, -1
  %i.foc = add i64 %i.fnx, %i.fob
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i.i.i1384, i8 48, i64 %i.foc, i1 false), !tbaa !142, !noalias !21614
  %scevgep31.i.i.i.i.i.i1385 = getelementptr i8, ptr %scevgep.i.i.i.i.i.i1384, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1380

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1380: ; preds = %.lr.ph.i.i.preheader.i.i.i.i.i.i1382, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1376
  %i.fod = phi ptr [ %i.fnv, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i1376 ], [ %scevgep31.i.i.i.i.i.i1385, %.lr.ph.i.i.preheader.i.i.i.i.i.i1382 ] ; 2 uses
  %i.foe = shl nsw i64 %.sext.i.i.i.i.i.i1371, 1
  %i.fof = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.foe
  %i.fog = shl nsw i64 %i.fmy, 1
  %i.foh = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fog
  %i.foi = shl nuw nsw i64 %.zext.i.i.i.i.i.i1365, 1
  %i.foj = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.foi ; 2 uses
  %i.fok = getelementptr inbounds nuw i8, ptr %i.foj, i64 1
  %i.fol = load i8, ptr %i.fok, align 1, !tbaa !142, !noalias !21614
  %i.fom = getelementptr i8, ptr %i.fod, i64 -9
  %i.fon = load <2 x i8>, ptr %i.fof, align 1, !tbaa !142, !noalias !21614
  %i.foo = load <2 x i8>, ptr %i.foh, align 1, !tbaa !142, !noalias !21614
  %i.fop = shufflevector <2 x i8> %i.foo, <2 x i8> %i.fon, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.foq = shufflevector <8 x i8> %i.fop, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.for = insertelement <8 x i8> %i.foq, i8 %i.fol, i64 0
  store <8 x i8> %i.for, ptr %i.fom, align 1, !tbaa !142, !noalias !21614
  %i.fos = load i8, ptr %i.foj, align 1, !tbaa !142, !noalias !21614
  %i.fot = getelementptr i8, ptr %i.fod, i64 -10  ; 3 uses
  store i8 %i.fos, ptr %i.fot, align 1, !tbaa !142, !noalias !21614
  %i.fou = ptrtoint ptr %.ptr26.i.i.i.i.i.i1363 to i64
  %i.fov = ptrtoint ptr %i.fot to i64
  %i.fow = sub i64 %i.fou, %i.fov
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %78, i64 %i.fow, ptr nonnull %i.fot)
          to label %.noexc9.i1381 unwind label %bb.avp, !noalias !21610

.noexc9.i1381:                                    ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1380
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #28, !noalias !21614
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.aui:                                           ; preds = %bb.aud
  %i.fox = ptrtoaddr ptr %75 to i64               ; 3 uses
  %spec.select.i.i15.i.i.i.i.i1337 = icmp ult i64 %.val4.i.i1293, 86400000000
  br i1 %spec.select.i.i15.i.i.i.i.i1337, label %bb.auj, label %.invoke.i1338, !prof !179

bb.auj:                                           ; preds = %bb.aui
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #28, !noalias !21615
  %.ptr23.i.i.i.i.i.i1339 = getelementptr inbounds nuw i8, ptr %75, i64 15
  %i.foy = udiv i64 %.val4.i.i1293, 3600000000    ; 3 uses
  %i.foz = udiv i64 %.val4.i.i1293, 60000000
  %.neg.i.i.i.i16.i.i.i.i.i = mul nsw i64 %i.foy, -60
  %i.fpa = add nsw i64 %.neg.i.i.i.i16.i.i.i.i.i, %i.foz ; 2 uses
  %.neg.i7.i.i.i17.i.i.i.i.i = mul nsw i64 %i.foy, -3600000000
  %i.fpb = add nsw i64 %.neg.i7.i.i.i17.i.i.i.i.i, %.val4.i.i1293
  %.neg.i8.i.i.i18.i.i.i.i.i = mul nsw i64 %i.fpa, -60000000
  %i.fpc = add nsw i64 %i.fpb, %.neg.i8.i.i.i18.i.i.i.i.i ; 2 uses
  %i.fpd = sdiv i64 %i.fpc, 1000000               ; 2 uses
  %.neg.i.i.i.i.i19.i.i.i.i.i1340 = mul nsw i64 %i.fpd, -1000000
  %i.fpe = add nsw i64 %.neg.i.i.i.i.i19.i.i.i.i.i1340, %i.fpc ; 3 uses
  %i.fpf = icmp sgt i64 %i.fpe, 99
  br i1 %i.fpf, label %.lr.ph.i.i.i.i31.i.i.i.i.i1356, label %._crit_edge.i.i.i.i20.i.i.i.i.i1341

.lr.ph.i.i.i.i31.i.i.i.i.i1356:                   ; preds = %bb.auj, %.lr.ph.i.i.i.i31.i.i.i.i.i1356
  %.0.idx.i32.i.i.i.i.i1357 = phi i64 [ %.0.add.i35.i.i.i.i.i1360, %.lr.ph.i.i.i.i31.i.i.i.i.i1356 ], [ 15, %bb.auj ] ; 2 uses
  %.08.i.i.i.i33.i.i.i.i.i1358 = phi i64 [ %i.fpn, %.lr.ph.i.i.i.i31.i.i.i.i.i1356 ], [ %i.fpe, %bb.auj ] ; 3 uses
  %.0.ptr.i34.i.i.i.i.i1359 = getelementptr inbounds i8, ptr %75, i64 %.0.idx.i32.i.i.i.i.i1357
  %i.fpg = urem i64 %.08.i.i.i.i33.i.i.i.i.i1358, 100
  %i.fph = shl nuw nsw i64 %i.fpg, 1
  %i.fpi = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fph ; 2 uses
  %i.fpj = getelementptr inbounds nuw i8, ptr %i.fpi, i64 1
  %i.fpk = load i8, ptr %i.fpj, align 1, !tbaa !142, !noalias !21615
  %i.fpl = getelementptr inbounds i8, ptr %.0.ptr.i34.i.i.i.i.i1359, i64 -1
  store i8 %i.fpk, ptr %i.fpl, align 1, !tbaa !142, !noalias !21615
  %i.fpm = load i8, ptr %i.fpi, align 1, !tbaa !142, !noalias !21615
  %.0.add.i35.i.i.i.i.i1360 = add nsw i64 %.0.idx.i32.i.i.i.i.i1357, -2 ; 3 uses
  %.ptr24.i.i.i.i.i.i1361 = getelementptr inbounds i8, ptr %75, i64 %.0.add.i35.i.i.i.i.i1360
  store i8 %i.fpm, ptr %.ptr24.i.i.i.i.i.i1361, align 1, !tbaa !142, !noalias !21615
  %i.fpn = udiv i64 %.08.i.i.i.i33.i.i.i.i.i1358, 100 ; 2 uses
  %i.fpo = icmp samesign ugt i64 %.08.i.i.i.i33.i.i.i.i.i1358, 9999
  br i1 %i.fpo, label %.lr.ph.i.i.i.i31.i.i.i.i.i1356, label %._crit_edge.i.i.i.i20.i.i.i.i.i1341, !llvm.loop !21024

._crit_edge.i.i.i.i20.i.i.i.i.i1341:              ; preds = %.lr.ph.i.i.i.i31.i.i.i.i.i1356, %bb.auj
  %.1.idx.i21.i.i.i.i.i1342 = phi i64 [ 15, %bb.auj ], [ %.0.add.i35.i.i.i.i.i1360, %.lr.ph.i.i.i.i31.i.i.i.i.i1356 ] ; 2 uses
  %.0.lcssa.i.i.i.i22.i.i.i.i.i1343 = phi i64 [ %i.fpe, %bb.auj ], [ %i.fpn, %.lr.ph.i.i.i.i31.i.i.i.i.i1356 ] ; 3 uses
  %i.fpp = icmp sgt i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i1343, 9
  br i1 %i.fpp, label %bb.auk, label %bb.aul

bb.auk:                                           ; preds = %._crit_edge.i.i.i.i20.i.i.i.i.i1341
  %i.fpq = shl nuw nsw i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i1343, 1
  %i.fpr = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fpq ; 2 uses
  %i.fps = getelementptr inbounds nuw i8, ptr %i.fpr, i64 1
  %i.fpt = load i8, ptr %i.fps, align 1, !tbaa !142, !noalias !21615
  %.1.add.i30.i.i.i.i.i1354 = add nsw i64 %.1.idx.i21.i.i.i.i.i1342, -1 ; 2 uses
  %.ptr22.i.i.i.i.i.i1355 = getelementptr inbounds i8, ptr %75, i64 %.1.add.i30.i.i.i.i.i1354
  store i8 %i.fpt, ptr %.ptr22.i.i.i.i.i.i1355, align 1, !tbaa !142, !noalias !21615
  %i.fpu = load i8, ptr %i.fpr, align 1, !tbaa !142, !noalias !21615
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i1344

bb.aul:                                           ; preds = %._crit_edge.i.i.i.i20.i.i.i.i.i1341
  %i.fpv = trunc i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i1343 to i8
  %i.fpw = add i8 %i.fpv, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i1344

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i1344: ; preds = %bb.aul, %bb.auk
  %.2.idx.i24.i.i.i.i.i1345 = phi i64 [ %.1.add.i30.i.i.i.i.i1354, %bb.auk ], [ %.1.idx.i21.i.i.i.i.i1342, %bb.aul ] ; 3 uses
  %.sink.i.i.i.i25.i.i.i.i.i1346 = phi i8 [ %i.fpu, %bb.auk ], [ %i.fpw, %bb.aul ]
  %i.fpx = getelementptr i8, ptr %75, i64 %.2.idx.i24.i.i.i.i.i1345 ; 2 uses
  %.ptr.i26.i.i.i.i.i1347 = getelementptr i8, ptr %i.fpx, i64 -1
  store i8 %.sink.i.i.i.i25.i.i.i.i.i1346, ptr %.ptr.i26.i.i.i.i.i1347, align 1, !tbaa !142, !noalias !21615
  %i.fpy = icmp sgt i64 %.2.idx.i24.i.i.i.i.i1345, 10
  br i1 %i.fpy, label %.lr.ph.i.i.preheader.i27.i.i.i.i.i1350, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1348

.lr.ph.i.i.preheader.i27.i.i.i.i.i1350:           ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i1344
  %i.fpz = add i64 %.2.idx.i24.i.i.i.i.i1345, %i.fox ; 2 uses
  %i.fqa = add i64 %i.fpz, -2
  %i.fqb = add nuw i64 %i.fox, 9
  %umin.i28.i.i.i.i.i1351 = call i64 @llvm.umin.i64(i64 %i.fqa, i64 %i.fqb) ; 2 uses
  %i.fqc = sub i64 %umin.i28.i.i.i.i.i1351, %i.fox
  %scevgep.i29.i.i.i.i.i1352 = getelementptr i8, ptr %75, i64 %i.fqc ; 2 uses
  %i.fqd = xor i64 %umin.i28.i.i.i.i.i1351, -1
  %i.fqe = add i64 %i.fpz, %i.fqd
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i29.i.i.i.i.i1352, i8 48, i64 %i.fqe, i1 false), !tbaa !142, !noalias !21615
  %scevgep28.i.i.i.i.i.i1353 = getelementptr i8, ptr %scevgep.i29.i.i.i.i.i1352, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1348

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1348: ; preds = %.lr.ph.i.i.preheader.i27.i.i.i.i.i1350, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i1344
  %i.fqf = phi ptr [ %i.fpx, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i1344 ], [ %scevgep28.i.i.i.i.i.i1353, %.lr.ph.i.i.preheader.i27.i.i.i.i.i1350 ] ; 2 uses
  %i.fqg = shl nsw i64 %i.fpd, 1
  %i.fqh = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fqg
  %i.fqi = shl nsw i64 %i.fpa, 1
  %i.fqj = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fqi
  %i.fqk = shl nuw nsw i64 %i.foy, 1
  %i.fql = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fqk ; 2 uses
  %i.fqm = getelementptr inbounds nuw i8, ptr %i.fql, i64 1
  %i.fqn = load i8, ptr %i.fqm, align 1, !tbaa !142, !noalias !21615
  %i.fqo = getelementptr i8, ptr %i.fqf, i64 -9
  %i.fqp = load <2 x i8>, ptr %i.fqh, align 1, !tbaa !142, !noalias !21615
  %i.fqq = load <2 x i8>, ptr %i.fqj, align 1, !tbaa !142, !noalias !21615
  %i.fqr = shufflevector <2 x i8> %i.fqq, <2 x i8> %i.fqp, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.fqs = shufflevector <8 x i8> %i.fqr, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.fqt = insertelement <8 x i8> %i.fqs, i8 %i.fqn, i64 0
  store <8 x i8> %i.fqt, ptr %i.fqo, align 1, !tbaa !142, !noalias !21615
  %i.fqu = load i8, ptr %i.fql, align 1, !tbaa !142, !noalias !21615
  %i.fqv = getelementptr i8, ptr %i.fqf, i64 -10  ; 3 uses
  store i8 %i.fqu, ptr %i.fqv, align 1, !tbaa !142, !noalias !21615
  %i.fqw = ptrtoint ptr %.ptr23.i.i.i.i.i.i1339 to i64
  %i.fqx = ptrtoint ptr %i.fqv to i64
  %i.fqy = sub i64 %i.fqw, %i.fqx
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %78, i64 %i.fqy, ptr nonnull %i.fqv)
          to label %.noexc11.i1349 unwind label %bb.avp, !noalias !21610

.noexc11.i1349:                                   ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1348
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #28, !noalias !21615
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.aum:                                           ; preds = %bb.aud
  %i.fqz = ptrtoaddr ptr %74 to i64               ; 3 uses
  %spec.select.i.i36.i.i.i.i.i = icmp ult i64 %.val4.i.i1293, 86400000000000
  br i1 %spec.select.i.i36.i.i.i.i.i, label %bb.aun, label %.invoke.i1338, !prof !179

bb.aun:                                           ; preds = %bb.aum
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #28, !noalias !21616
  %.ptr23.i37.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %74, i64 18
  %i.fra = udiv i64 %.val4.i.i1293, 3600000000000 ; 3 uses
  %i.frb = udiv i64 %.val4.i.i1293, 60000000000
  %.neg.i.i.i.i38.i.i.i.i.i = mul nsw i64 %i.fra, -60
  %i.frc = add nsw i64 %.neg.i.i.i.i38.i.i.i.i.i, %i.frb ; 2 uses
  %.neg.i7.i.i.i39.i.i.i.i.i = mul nsw i64 %i.fra, -3600000000000
  %i.frd = add nsw i64 %.neg.i7.i.i.i39.i.i.i.i.i, %.val4.i.i1293
  %.neg.i8.i.i.i40.i.i.i.i.i = mul nsw i64 %i.frc, -60000000000
  %i.fre = add nsw i64 %i.frd, %.neg.i8.i.i.i40.i.i.i.i.i ; 2 uses
  %i.frf = sdiv i64 %i.fre, 1000000000            ; 2 uses
  %.neg.i.i.i.i.i41.i.i.i.i.i = mul nsw i64 %i.frf, -1000000000
  %i.frg = add nsw i64 %.neg.i.i.i.i.i41.i.i.i.i.i, %i.fre ; 3 uses
  %i.frh = icmp sgt i64 %i.frg, 99
  br i1 %i.frh, label %.lr.ph.i.i.i.i55.i.i.i.i.i, label %._crit_edge.i.i.i.i42.i.i.i.i.i

.lr.ph.i.i.i.i55.i.i.i.i.i:                       ; preds = %bb.aun, %.lr.ph.i.i.i.i55.i.i.i.i.i
  %.0.idx.i56.i.i.i.i.i = phi i64 [ %.0.add.i59.i.i.i.i.i, %.lr.ph.i.i.i.i55.i.i.i.i.i ], [ 18, %bb.aun ] ; 2 uses
  %.08.i.i.i.i57.i.i.i.i.i = phi i64 [ %i.frp, %.lr.ph.i.i.i.i55.i.i.i.i.i ], [ %i.frg, %bb.aun ] ; 3 uses
  %.0.ptr.i58.i.i.i.i.i = getelementptr inbounds i8, ptr %74, i64 %.0.idx.i56.i.i.i.i.i
  %i.fri = urem i64 %.08.i.i.i.i57.i.i.i.i.i, 100
  %i.frj = shl nuw nsw i64 %i.fri, 1
  %i.frk = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.frj ; 2 uses
  %i.frl = getelementptr inbounds nuw i8, ptr %i.frk, i64 1
  %i.frm = load i8, ptr %i.frl, align 1, !tbaa !142, !noalias !21616
  %i.frn = getelementptr inbounds i8, ptr %.0.ptr.i58.i.i.i.i.i, i64 -1
  store i8 %i.frm, ptr %i.frn, align 1, !tbaa !142, !noalias !21616
  %i.fro = load i8, ptr %i.frk, align 1, !tbaa !142, !noalias !21616
  %.0.add.i59.i.i.i.i.i = add nsw i64 %.0.idx.i56.i.i.i.i.i, -2 ; 3 uses
  %.ptr24.i60.i.i.i.i.i = getelementptr inbounds i8, ptr %74, i64 %.0.add.i59.i.i.i.i.i
  store i8 %i.fro, ptr %.ptr24.i60.i.i.i.i.i, align 1, !tbaa !142, !noalias !21616
  %i.frp = udiv i64 %.08.i.i.i.i57.i.i.i.i.i, 100 ; 2 uses
  %i.frq = icmp samesign ugt i64 %.08.i.i.i.i57.i.i.i.i.i, 9999
  br i1 %i.frq, label %.lr.ph.i.i.i.i55.i.i.i.i.i, label %._crit_edge.i.i.i.i42.i.i.i.i.i, !llvm.loop !21024

._crit_edge.i.i.i.i42.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i55.i.i.i.i.i, %bb.aun
  %.1.idx.i43.i.i.i.i.i = phi i64 [ 18, %bb.aun ], [ %.0.add.i59.i.i.i.i.i, %.lr.ph.i.i.i.i55.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i44.i.i.i.i.i = phi i64 [ %i.frg, %bb.aun ], [ %i.frp, %.lr.ph.i.i.i.i55.i.i.i.i.i ] ; 3 uses
  %i.frr = icmp sgt i64 %.0.lcssa.i.i.i.i44.i.i.i.i.i, 9
  br i1 %i.frr, label %bb.auo, label %bb.aup

bb.auo:                                           ; preds = %._crit_edge.i.i.i.i42.i.i.i.i.i
  %i.frs = shl nuw nsw i64 %.0.lcssa.i.i.i.i44.i.i.i.i.i, 1
  %i.frt = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.frs ; 2 uses
  %i.fru = getelementptr inbounds nuw i8, ptr %i.frt, i64 1
  %i.frv = load i8, ptr %i.fru, align 1, !tbaa !142, !noalias !21616
  %.1.add.i53.i.i.i.i.i = add nsw i64 %.1.idx.i43.i.i.i.i.i, -1 ; 2 uses
  %.ptr22.i54.i.i.i.i.i = getelementptr inbounds i8, ptr %74, i64 %.1.add.i53.i.i.i.i.i
  store i8 %i.frv, ptr %.ptr22.i54.i.i.i.i.i, align 1, !tbaa !142, !noalias !21616
  %i.frw = load i8, ptr %i.frt, align 1, !tbaa !142, !noalias !21616
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i

bb.aup:                                           ; preds = %._crit_edge.i.i.i.i42.i.i.i.i.i
  %i.frx = trunc i64 %.0.lcssa.i.i.i.i44.i.i.i.i.i to i8
  %i.fry = add i8 %i.frx, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i: ; preds = %bb.aup, %bb.auo
  %.2.idx.i46.i.i.i.i.i = phi i64 [ %.1.add.i53.i.i.i.i.i, %bb.auo ], [ %.1.idx.i43.i.i.i.i.i, %bb.aup ] ; 3 uses
  %.sink.i.i.i.i47.i.i.i.i.i = phi i8 [ %i.frw, %bb.auo ], [ %i.fry, %bb.aup ]
  %i.frz = getelementptr i8, ptr %74, i64 %.2.idx.i46.i.i.i.i.i ; 2 uses
  %.ptr.i48.i.i.i.i.i = getelementptr i8, ptr %i.frz, i64 -1
  store i8 %.sink.i.i.i.i47.i.i.i.i.i, ptr %.ptr.i48.i.i.i.i.i, align 1, !tbaa !142, !noalias !21616
  %i.fsa = icmp sgt i64 %.2.idx.i46.i.i.i.i.i, 10
  br i1 %i.fsa, label %.lr.ph.i.i.preheader.i49.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1394

.lr.ph.i.i.preheader.i49.i.i.i.i.i:               ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i
  %i.fsb = add i64 %.2.idx.i46.i.i.i.i.i, %i.fqz  ; 2 uses
  %i.fsc = add i64 %i.fsb, -2
  %i.fsd = add nuw i64 %i.fqz, 9
  %umin.i50.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.fsc, i64 %i.fsd) ; 2 uses
  %i.fse = sub i64 %umin.i50.i.i.i.i.i, %i.fqz
  %scevgep.i51.i.i.i.i.i = getelementptr i8, ptr %74, i64 %i.fse ; 2 uses
  %i.fsf = xor i64 %umin.i50.i.i.i.i.i, -1
  %i.fsg = add i64 %i.fsb, %i.fsf
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i51.i.i.i.i.i, i8 48, i64 %i.fsg, i1 false), !tbaa !142, !noalias !21616
  %scevgep28.i52.i.i.i.i.i = getelementptr i8, ptr %scevgep.i51.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1394

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1394: ; preds = %.lr.ph.i.i.preheader.i49.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i
  %i.fsh = phi ptr [ %i.frz, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i ], [ %scevgep28.i52.i.i.i.i.i, %.lr.ph.i.i.preheader.i49.i.i.i.i.i ] ; 2 uses
  %i.fsi = shl nsw i64 %i.frf, 1
  %i.fsj = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fsi
  %i.fsk = shl nsw i64 %i.frc, 1
  %i.fsl = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fsk
  %i.fsm = shl nuw nsw i64 %i.fra, 1
  %i.fsn = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fsm ; 2 uses
  %i.fso = getelementptr inbounds nuw i8, ptr %i.fsn, i64 1
  %i.fsp = load i8, ptr %i.fso, align 1, !tbaa !142, !noalias !21616
  %i.fsq = getelementptr i8, ptr %i.fsh, i64 -9
  %i.fsr = load <2 x i8>, ptr %i.fsj, align 1, !tbaa !142, !noalias !21616
  %i.fss = load <2 x i8>, ptr %i.fsl, align 1, !tbaa !142, !noalias !21616
  %i.fst = shufflevector <2 x i8> %i.fss, <2 x i8> %i.fsr, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.fsu = shufflevector <8 x i8> %i.fst, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.fsv = insertelement <8 x i8> %i.fsu, i8 %i.fsp, i64 0
  store <8 x i8> %i.fsv, ptr %i.fsq, align 1, !tbaa !142, !noalias !21616
  %i.fsw = load i8, ptr %i.fsn, align 1, !tbaa !142, !noalias !21616
  %i.fsx = getelementptr i8, ptr %i.fsh, i64 -10  ; 3 uses
  store i8 %i.fsw, ptr %i.fsx, align 1, !tbaa !142, !noalias !21616
  %i.fsy = ptrtoint ptr %.ptr23.i37.i.i.i.i.i to i64
  %i.fsz = ptrtoint ptr %i.fsx to i64
  %i.fta = sub i64 %i.fsy, %i.fsz
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %78, i64 %i.fta, ptr nonnull %i.fsx)
          to label %.noexc13.i1395 unwind label %bb.avp, !noalias !21610

.noexc13.i1395:                                   ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i1394
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #28, !noalias !21616
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.auq:                                           ; preds = %bb.aud
  %spec.select.i.i61.i.i.i.i.i = icmp ult i64 %.val4.i.i1293, 86400
  br i1 %spec.select.i.i61.i.i.i.i.i, label %bb.aur, label %.invoke.i1338, !prof !179

.invoke.i1338:                                    ; preds = %bb.auq, %bb.aum, %bb.aui, %bb.aue
  invoke fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZNS_12_GLOBAL__N_114FormatToBufferINS0_15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISF_EEtlSL_EEESE_OSF_(ptr dead_on_unwind noalias nonnull writable align 8 %78, i64 %.val4.i.i1293)
          to label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i unwind label %bb.avp, !noalias !21610

bb.aur:                                           ; preds = %bb.auq
  %.lhs.trunc.i62.i.i.i.i.i = trunc nuw nsw i64 %.val4.i.i1293 to i32 ; 2 uses
  %i.ftb = udiv i32 %.lhs.trunc.i62.i.i.i.i.i, 3600
  %.zext.i63.i.i.i.i.i = zext nneg i32 %i.ftb to i64 ; 3 uses
  %i.ftc = udiv i32 %.lhs.trunc.i62.i.i.i.i.i, 60
  %.zext16.i.i.i.i.i.i1396 = zext nneg i32 %i.ftc to i64
  %.neg.i.i.i.i64.i.i.i.i.i = mul nsw i64 %.zext.i63.i.i.i.i.i, -60
  %i.ftd = add nsw i64 %.neg.i.i.i.i64.i.i.i.i.i, %.zext16.i.i.i.i.i.i1396 ; 2 uses
  %.neg.i7.i.i.i65.i.i.i.i.i = mul nsw i64 %.zext.i63.i.i.i.i.i, -3600
  %i.fte = add nsw i64 %.neg.i7.i.i.i65.i.i.i.i.i, %.val4.i.i1293
  %.neg.i8.i.i.i66.i.i.i.i.i = mul nsw i64 %i.ftd, -60
  %i.ftf = add nsw i64 %i.fte, %.neg.i8.i.i.i66.i.i.i.i.i
  %i.ftg = shl nsw i64 %i.ftf, 1
  %i.fth = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ftg
  %i.fti = shl nsw i64 %i.ftd, 1
  %i.ftj = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fti
  %i.ftk = shl nuw nsw i64 %.zext.i63.i.i.i.i.i, 1
  %i.ftl = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ftk
  call void @llvm.lifetime.start.p0(ptr nonnull %73), !noalias !21617
  %i.ftm = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 6 uses
  store ptr %i.ftm, ptr %73, align 8, !tbaa !160, !noalias !21618
  %i.ftn = load <2 x i8>, ptr %i.fth, align 1, !tbaa !142, !noalias !21619
  %i.fto = load <2 x i8>, ptr %i.ftj, align 1, !tbaa !142, !noalias !21619
  %i.ftp = load <2 x i8>, ptr %i.ftl, align 1, !tbaa !142, !noalias !21619
  %i.ftq = shufflevector <2 x i8> %i.ftp, <2 x i8> %i.fto, <8 x i32> <i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.ftr = shufflevector <8 x i8> %i.ftq, <8 x i8> <i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <8 x i32> <i32 0, i32 1, i32 10, i32 3, i32 4, i32 13, i32 poison, i32 poison>
  %i.fts = shufflevector <2 x i8> %i.ftn, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ftt = shufflevector <8 x i8> %i.ftr, <8 x i8> %i.fts, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  store <8 x i8> %i.ftt, ptr %i.ftm, align 8, !noalias !21618
  %i.ftu = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i64 8, ptr %i.ftu, align 8, !tbaa !161, !noalias !21618
  %i.ftv = getelementptr inbounds nuw i8, ptr %73, i64 24
  store i8 0, ptr %i.ftv, align 8, !tbaa !142, !noalias !21618
  invoke void @_ZN5arrow6Buffer10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.9") align 8 %78, ptr noundef nonnull %73)
          to label %bb.aus unwind label %bb.aut, !noalias !21612

bb.aus:                                           ; preds = %bb.aur
  %i.ftw = load ptr, ptr %73, align 8, !tbaa !141, !noalias !21618 ; 2 uses
  %i.ftx = icmp eq ptr %i.ftw, %i.ftm
  br i1 %i.ftx, label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1406: ; preds = %bb.aus
  %i.fty = load i64, ptr %i.ftm, align 8, !tbaa !142, !noalias !21618
  %i.ftz = add i64 %i.fty, 1
  call void @_ZdlPvm(ptr noundef %i.ftw, i64 noundef %i.ftz) #29, !noalias !21612
  br label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i

bb.aut:                                           ; preds = %bb.aur
  %i.fua = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fub = load ptr, ptr %73, align 8, !tbaa !141, !noalias !21618 ; 2 uses
  %i.fuc = icmp eq ptr %i.fub, %i.ftm
  br i1 %i.fuc, label %.body.i1296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i1404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i1404: ; preds = %bb.aut
  %i.fud = load i64, ptr %i.ftm, align 8, !tbaa !142, !noalias !21618
  %i.fue = add i64 %i.fud, 1
  call void @_ZdlPvm(ptr noundef %i.fub, i64 noundef %i.fue) #29, !noalias !21612
  br label %.body.i1296

_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i: ; preds = %bb.aus, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1406
  call void @llvm.lifetime.end.p0(ptr nonnull %73), !noalias !21617
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i: ; preds = %bb.aub, %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i, %.invoke.i1338, %.noexc13.i1395, %.noexc11.i1349, %.noexc9.i1381, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1300
  call void @llvm.lifetime.end.p0(ptr nonnull %77), !noalias !21612
  %i.fuf = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %.noexc.i.i1301 unwind label %bb.avg, !noalias !21612 ; 12 uses

.noexc.i.i1301:                                   ; preds = %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i
  %i.fug = getelementptr inbounds nuw i8, ptr %i.fuf, i64 8
  store i32 1, ptr %i.fug, align 8, !tbaa !168, !noalias !21620
  %i.fuh = getelementptr inbounds nuw i8, ptr %i.fuf, i64 12 ; 3 uses
  store i32 1, ptr %i.fuh, align 4, !tbaa !169, !noalias !21620
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12StringScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.fuf, align 8, !tbaa !137, !noalias !21620
  %i.fui = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.fuj = getelementptr inbounds nuw i8, ptr %i.fuf, i64 24
  %i.fuk = getelementptr inbounds nuw i8, ptr %i.fuf, i64 32 ; 3 uses
  %i.ful = getelementptr inbounds nuw i8, ptr %i.fuf, i64 40
  %i.fum = getelementptr inbounds nuw i8, ptr %i.fuf, i64 56
  %i.fun = getelementptr inbounds nuw i8, ptr %i.fuf, i64 64
  %i.fuo = load <2 x ptr>, ptr %78, align 16, !tbaa !162, !noalias !21620
  %i.fup = load ptr, ptr %78, align 16, !tbaa !166, !noalias !21620 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %78, i8 0, i64 16, i1 false), !noalias !21620
  %i.fuq = load <2 x ptr>, ptr %80, align 16, !tbaa !162, !noalias !21620
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %80, i8 0, i64 16, i1 false), !noalias !21620
  store i64 0, ptr %i.fuk, align 8, !noalias !21620
  store <2 x ptr> %i.fuq, ptr %i.ful, align 8, !tbaa !162, !noalias !21620
  store i8 1, ptr %i.fum, align 8, !tbaa !154, !noalias !21620
  store <2 x ptr> %i.fuo, ptr %i.fun, align 8, !tbaa !162, !noalias !21620
  %.not.i.i8.i.i.i.i.i.i.i.i.i.i1302 = icmp eq ptr %i.fup, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i.i.i.i1302, label %bb.auv, label %bb.auu

bb.auu:                                           ; preds = %.noexc.i.i1301
  %i.fur = getelementptr inbounds nuw i8, ptr %i.fup, i64 24
  %i.fus = load i64, ptr %i.fur, align 8, !tbaa !177, !noalias !21620
  %i.fut = shl i64 %i.fus, 32
  br label %bb.auv

bb.auv:                                           ; preds = %bb.auu, %.noexc.i.i1301
  %.sroa.4.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i1303 = phi i64 [ %i.fut, %bb.auu ], [ 0, %.noexc.i.i1301 ]
  %i.fuu = getelementptr inbounds nuw i8, ptr %i.fuf, i64 16 ; 3 uses
  %i.fuv = getelementptr inbounds nuw i8, ptr %i.fuf, i64 80
  store i64 %.sroa.4.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i1303, ptr %i.fuv, align 8, !noalias !21620
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12StringScalarE, i64 16), ptr %i.fuu, align 8, !tbaa !137, !noalias !21620
  store ptr %i.fuu, ptr %i.fuj, align 8, !tbaa !229, !noalias !21620
  %i.fuw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !142, !noalias !21620
  %.not.i.i3.i.i.i.i.i.i.i.i1304 = icmp eq i8 %i.fuw, 0
  br i1 %.not.i.i3.i.i.i.i.i.i.i.i1304, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1330, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i1305

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i1305: ; preds = %bb.auv
  store i32 2, ptr %i.fuh, align 4, !tbaa !94, !noalias !21620
  br label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1306

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1330: ; preds = %bb.auv
  %i.fux = atomicrmw volatile add ptr %i.fuh, i32 1 acq_rel, align 4, !noalias !21620 ; 0 uses
  %.pre.i.i.i.i.i.i.i.i1331 = load ptr, ptr %i.fuk, align 8, !tbaa !230, !noalias !21620 ; 4 uses
  %.not6.i.i.i.i.i.i.i.i.i1332 = icmp eq ptr %.pre.i.i.i.i.i.i.i.i1331, null
  br i1 %.not6.i.i.i.i.i.i.i.i.i1332, label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1306, label %bb.auw

bb.auw:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1330
  %i.fuy = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i1331, i64 12 ; 3 uses
  %i.fuz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !142, !noalias !21620
  %.not.i7.i.i.i.i.i.i.i.i.i1333 = icmp eq i8 %i.fuz, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i1333, label %bb.auy, label %bb.aux

bb.aux:                                           ; preds = %bb.auw
  %i.fva = load i32, ptr %i.fuy, align 4, !tbaa !94, !noalias !21620 ; 2 uses
  %i.fvb = add nsw i32 %i.fva, -1
  store i32 %i.fvb, ptr %i.fuy, align 4, !tbaa !94, !noalias !21620
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1334

bb.auy:                                           ; preds = %bb.auw
  %i.fvc = atomicrmw volatile add ptr %i.fuy, i32 -1 acq_rel, align 4, !noalias !21620
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1334

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1334: ; preds = %bb.auy, %bb.aux
  %.0.i.i.i.i.i.i.i.i.i.i.i1335 = phi i32 [ %i.fva, %bb.aux ], [ %i.fvc, %bb.auy ]
  %i.fvd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i1335, 1
  br i1 %i.fvd, label %bb.auz, label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1306

bb.auz:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1334
  %i.fve = load ptr, ptr %.pre.i.i.i.i.i.i.i.i1331, align 8, !tbaa !137, !noalias !21620
  %i.fvf = getelementptr inbounds nuw i8, ptr %i.fve, i64 24
  %i.fvg = load ptr, ptr %i.fvf, align 8, !noalias !21620
  call void %i.fvg(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i.i.i1331) #28, !noalias !21620, !inline_history !21099
  br label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1306

_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1306: ; preds = %bb.auz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1334, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1330, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i1305
  store ptr %i.fuf, ptr %i.fuk, align 8, !tbaa !230, !noalias !21620
  store ptr null, ptr %79, align 8, !tbaa !159, !alias.scope !21611, !noalias !21610
  %i.fvh = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 3 uses
  store ptr %i.fuu, ptr %i.fvh, align 8, !tbaa !225, !alias.scope !21611, !noalias !21610
  %i.fvi = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  store ptr %i.fuf, ptr %i.fvi, align 8, !tbaa !163, !alias.scope !21611, !noalias !21610
  %i.fvj = load ptr, ptr %i.fui, align 8, !tbaa !163, !noalias !21612 ; 8 uses
  %.not.i.i5.i.i1307 = icmp eq ptr %i.fvj, null
  br i1 %.not.i.i5.i.i1307, label %bb.avh, label %bb.ava

bb.ava:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1306
  %i.fvk = getelementptr inbounds nuw i8, ptr %i.fvj, i64 8 ; 4 uses
  %i.fvl = load atomic i64, ptr %i.fvk acquire, align 8, !noalias !21612 ; 2 uses
  %i.fvm = icmp eq i64 %i.fvl, 4294967297
  %i.fvn = trunc i64 %i.fvl to i32                ; 2 uses
  br i1 %i.fvm, label %bb.avb, label %bb.avc

bb.avb:                                           ; preds = %bb.ava
  store i32 0, ptr %i.fvk, align 8, !tbaa !168, !noalias !21612
  %i.fvo = getelementptr inbounds nuw i8, ptr %i.fvj, i64 12
  store i32 0, ptr %i.fvo, align 4, !tbaa !169, !noalias !21612
  %i.fvp = load ptr, ptr %i.fvj, align 8, !tbaa !137, !noalias !21612
  %i.fvq = getelementptr inbounds nuw i8, ptr %i.fvp, i64 16
  %i.fvr = load ptr, ptr %i.fvq, align 8, !noalias !21612
  call void %i.fvr(ptr noundef nonnull align 8 dereferenceable(16) %i.fvj) #28, !noalias !21612, !inline_history !21100
  %i.fvs = load ptr, ptr %i.fvj, align 8, !tbaa !137, !noalias !21612
  %i.fvt = getelementptr inbounds nuw i8, ptr %i.fvs, i64 24
  %i.fvu = load ptr, ptr %i.fvt, align 8, !noalias !21612
  call void %i.fvu(ptr noundef nonnull align 8 dereferenceable(16) %i.fvj) #28, !noalias !21612, !inline_history !21100
  br label %bb.avh

bb.avc:                                           ; preds = %bb.ava
  %i.fvv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !142, !noalias !21612
  %.not.i.i.i6.i.i1308 = icmp eq i8 %i.fvv, 0
  br i1 %.not.i.i.i6.i.i1308, label %bb.ave, label %bb.avd

bb.avd:                                           ; preds = %bb.avc
  %i.fvw = add nsw i32 %i.fvn, -1
  store i32 %i.fvw, ptr %i.fvk, align 8, !tbaa !94, !noalias !21612
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i1309

bb.ave:                                           ; preds = %bb.avc
  %i.fvx = atomicrmw volatile add ptr %i.fvk, i32 -1 acq_rel, align 4, !noalias !21612
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i1309

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i1309: ; preds = %bb.ave, %bb.avd
  %.0.i.i.i.i8.i.i1310 = phi i32 [ %i.fvn, %bb.avd ], [ %i.fvx, %bb.ave ]
  %i.fvy = icmp eq i32 %.0.i.i.i.i8.i.i1310, 1
  br i1 %i.fvy, label %bb.avf, label %bb.avh, !prof !170

bb.avf:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i1309
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fvj) #28, !noalias !21612
  br label %bb.avh

bb.avg:                                           ; preds = %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i
  %i.fvz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %78) #28, !noalias !21612
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #28, !noalias !21612
  br label %.body.i1296

bb.avh:                                           ; preds = %bb.avf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i1309, %bb.avb, %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1306
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #28, !noalias !21612
  %i.fwa = load ptr, ptr %i.flt, align 8, !tbaa !163, !noalias !21610 ; 8 uses
  %.not.i.i.i1311 = icmp eq ptr %i.fwa, null
  br i1 %.not.i.i.i1311, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1315, label %bb.avi

end_hunk_3
