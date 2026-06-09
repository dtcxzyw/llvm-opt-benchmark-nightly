inline.NumInlined: 14179
inline.NumDeleted: 6830
begin_hunk_0_@_ZN6duckdb11ZSTDStorage13VisitBlockIdsERKNS_13ColumnSegmentERNS_14BlockIdVisitorE:bb.a
._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.06.010 = phi ptr [ %i.l, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %i.h = load i64, ptr %.sroa.06.010, align 8, !tbaa !21
  %i.i = load ptr, ptr %1, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.h)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb7ZSTDFun11GetFunctionENS_12PhysicalTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::CompressionFunction") align 8 captures(none) initializes((0, 2), (8, 193)) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  store i8 12, ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %1, ptr %i.a, align 1, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN6duckdb11ZSTDStorage17StringInitAnalyzeERNS_10ColumnDataENS_12PhysicalTypeE, ptr %i.b, align 8, !tbaa !274
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN6duckdb11ZSTDStorage13StringAnalyzeERNS_12AnalyzeStateERNS_6VectorEm, ptr %i.c, align 8, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6duckdb11ZSTDStorage18StringFinalAnalyzeERNS_12AnalyzeStateE, ptr %i.d, align 8, !tbaa !276
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN6duckdb11ZSTDStorage15InitCompressionERNS_24ColumnDataCheckpointDataENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS4_ELb1EEE, ptr %i.e, align 8, !tbaa !277
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN6duckdb11ZSTDStorage8CompressERNS_16CompressionStateERNS_6VectorEm, ptr %i.f, align 8, !tbaa !278
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN6duckdb11ZSTDStorage16FinalizeCompressERNS_16CompressionStateE, ptr %i.g, align 8, !tbaa !279
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.h, align 8, !tbaa !280
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZN6duckdb11ZSTDStorage14StringInitScanERKNS_12QueryContextERNS_13ColumnSegmentE, ptr %i.i, align 8, !tbaa !79
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @_ZN6duckdb11ZSTDStorage10StringScanERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE, ptr %i.j, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @_ZN6duckdb11ZSTDStorage17StringScanPartialERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm, ptr %i.k, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store ptr @_ZN6duckdb11ZSTDStorage14StringFetchRowERNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm, ptr %i.m, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZN6duckdb11ZSTDStorage10StringSkipERNS_13ColumnSegmentERNS_15ColumnScanStateEm, ptr %i.n, align 8, !tbaa !85
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.s, i8 0, i64 65, i1 false)
  store ptr @_ZN6duckdb11ZSTDStorage17StringInitSegmentERNS_13ColumnSegmentElNS_12optional_ptrINS_18ColumnSegmentStateELb1EEE, ptr %i.o, align 8, !tbaa !281
  store ptr @_ZN6duckdb11ZSTDStorage14SerializeStateERNS_13ColumnSegmentE, ptr %i.p, align 8, !tbaa !498
  store ptr @_ZN6duckdb11ZSTDStorage16DeserializeStateERNS_12DeserializerE, ptr %i.q, align 8, !tbaa !499
  store ptr @_ZN6duckdb11ZSTDStorage13VisitBlockIdsERKNS_13ColumnSegmentERNS_14BlockIdVisitorE, ptr %i.r, align 8, !tbaa !500
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb11ZSTDStorage10StringSkipERNS_13ColumnSegmentERNS_15ColumnScanStateEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2) #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN6duckdb7ZSTDFun15TypeIsSupportedENS_12PhysicalTypeE(i8 noundef zeroext %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp eq i8 %0, -56
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb16GetAlpRDFunctionIfEENS_19CompressionFunctionENS_12PhysicalTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::CompressionFunction") align 8 captures(none) initializes((0, 2), (8, 193)) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  store i8 11, ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %1, ptr %i.a, align 1, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN6duckdb16AlpRDInitAnalyzeIfEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE, ptr %i.b, align 8, !tbaa !274
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN6duckdb12AlpRDAnalyzeIfEEbRNS_12AnalyzeStateERNS_6VectorEm, ptr %i.c, align 8, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6duckdb17AlpRDFinalAnalyzeIfEEmRNS_12AnalyzeStateE, ptr %i.d, align 8, !tbaa !276
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN6duckdb20AlpRDInitCompressionIfEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE, ptr %i.e, align 8, !tbaa !277
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN6duckdb13AlpRDCompressIfEEvRNS_16CompressionStateERNS_6VectorEm, ptr %i.f, align 8, !tbaa !278
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN6duckdb21AlpRDFinalizeCompressIfEEvRNS_16CompressionStateE, ptr %i.g, align 8, !tbaa !279
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.h, align 8, !tbaa !280
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZN6duckdb13AlpRDInitScanIfEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE, ptr %i.i, align 8, !tbaa !79
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @_ZN6duckdb9AlpRDScanIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE, ptr %i.j, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @_ZN6duckdb16AlpRDScanPartialIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm, ptr %i.k, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store ptr @_ZN6duckdb13AlpRDFetchRowIfEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm, ptr %i.m, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZN6duckdb9AlpRDSkipIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm, ptr %i.n, align 8, !tbaa !85
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.o, i8 0, i64 73, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb16AlpRDInitAnalyzeIfEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.121") align 8 %0, ptr noundef nonnull align 8 dereferenceable(296) %1, i8 noundef zeroext %2) #1 comdat personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb17AlpRDAnalyzeStateIfEESt14default_deleteIS2_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86, !nonnull !55, !align !133
  %i.c = tail call noalias noundef nonnull dereferenceable(20648) ptr @_Znwm(i64 noundef 20648) #33, !noalias !821 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %i.d, align 8, !tbaa !137, !noalias !821
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb17AlpRDAnalyzeStateIfEE, i64 16), ptr %i.c, align 8, !tbaa !48, !noalias !821
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 20584
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 20632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.f, i8 0, i64 52, i1 false), !noalias !821
  store ptr %i.h, ptr %i.g, align 8, !tbaa !824, !noalias !821
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20592
  store i64 1, ptr %i.i, align 8, !tbaa !826, !noalias !821
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 20600
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 20616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !noalias !821
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !478, !noalias !821
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 20624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !noalias !821
  store ptr %i.c, ptr %0, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb12AlpRDAnalyzeIfEEbRNS_12AnalyzeStateERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %4 = alloca %"class.duckdb::vector.2221", align 8 ; 11 uses
  %5 = alloca %"class.duckdb::vector.414", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185, !nonnull !55, !align !133 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.f = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = sub i64 %i.d, %i.f
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !185, !nonnull !55, !align !133
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !827
  %.not.i.i = icmp eq i64 %i.j, -1
  br i1 %.not.i.i, label %_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit

_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.k, %bb.b ], [ 8, %bb.a ]
  %i.l = add i64 %i.g, %.0.i.i
  %i.m = icmp ugt i64 %i.l, 262143                ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.ay

bb.c:                                             ; preds = %_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !828  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !837
  %i.r = urem i64 %i.o, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = icmp ult i64 %2, 32
  %i.u = icmp ne i64 %i.q, 0
  %or.cond.i = and i1 %i.t, %i.u
  %.0.i = or i1 %i.s, %or.cond.i
  %i.v = add i64 %i.o, 1
  store i64 %i.v, ptr %i.n, align 8, !tbaa !828
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !838
  %i.y = add i64 %i.x, %2
  store i64 %i.y, ptr %i.w, align 8, !tbaa !838
  br i1 %.0.i, label %bb.ay, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !429 ; 2 uses
  %i.ab = call noundef i64 @llvm.umin.i64(i64 %2, i64 1024)
  %i.ac = invoke noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.ab)
          to label %bb.g unwind label %bb.l       ; 5 uses

bb.g:                                             ; preds = %bb.f
  %i.ad = uitofp i32 %i.ac to double              ; 2 uses
  %i.ae = fmul nnan double %i.ad, 3.125000e-02
  %i.af = call double @llvm.ceil.f64(double %i.ae)
  %i.ag = fptoui double %i.af to i32
  %i.ah = call noundef i32 @llvm.umax.i32(i32 %i.ag, i32 1) ; 4 uses
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = fdiv double %i.ad, %i.ai
  %i.ak = call double @llvm.ceil.f64(double %i.aj)
  %i.al = fptoui double %i.ak to i32              ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.ah to i64 ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.ac to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.ac, 0          ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.loopexit109, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = shl nuw nsw i64 %.sroa.0.0.insert.ext.i, 1 ; 3 uses
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #33
          to label %.noexc unwind label %bb.m     ; 4 uses

.noexc:                                           ; preds = %bb.h
  store ptr %i.an, ptr %4, align 8, !tbaa !839
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %.sroa.0.0.insert.ext.i
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !842
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.an, i8 0, i64 %i.am, i1 false), !tbaa !670
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  br label %.loopexit109

.loopexit109:                                     ; preds = %.noexc, %bb.g
  %.0.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.g ], [ %i.aq, %.noexc ]
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.ar, align 8, !tbaa !843
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.as = zext i32 %i.al to i64                   ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i77 = icmp eq i32 %i.al, 0        ; 2 uses
  br i1 %.not.i.i.i.i.i77, label %.loopexit108, label %bb.i

bb.i:                                             ; preds = %.loopexit109
  %i.at = shl nuw nsw i64 %i.as, 2                ; 3 uses
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #33
          to label %.noexc82 unwind label %bb.n   ; 5 uses

.noexc82:                                         ; preds = %bb.i
  store ptr %i.au, ptr %5, align 8, !tbaa !844
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !845
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.au, i8 0, i64 %i.at, i1 false), !tbaa !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  br label %.loopexit108

.loopexit108:                                     ; preds = %.noexc82, %.loopexit109
  %i.ay = phi ptr [ null, %.loopexit109 ], [ %i.au, %.noexc82 ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i81 = phi ptr [ null, %.loopexit109 ], [ %i.ax, %.noexc82 ]
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i.i81, ptr %i.az, align 8, !tbaa !846
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %.preheader, label %.preheader107

.preheader107:                                    ; preds = %.loopexit108
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader107
  %.lhs.trunc153 = add i32 %i.ac, -1
  %6 = udiv i32 %.lhs.trunc153, %i.ah
  %.zext155 = zext i32 %6 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %.loopexit108
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %.preheader
  %.lhs.trunc = add i32 %i.ac, -1
  %7 = udiv i32 %.lhs.trunc, %i.ah
  %.zext = zext i32 %7 to i64
  br label %.lr.ph118

bb.j:                                             ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.k:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.l:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.m:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit99

bb.n:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit97

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %bb.p
  %.062117 = phi i64 [ %i.bp, %bb.p ], [ 0, %.lr.ph118.preheader ] ; 3 uses
  %.066116 = phi i64 [ %i.bq, %bb.p ], [ 0, %.lr.ph118.preheader ] ; 3 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !438
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !439 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bi, null
  br i1 %.not.i83, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph118
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.066116
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = zext i32 %i.bk to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.o, %.lr.ph118
  %i.bm = phi i64 [ %i.bl, %bb.o ], [ %.066116, %.lr.ph118 ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bm
  %.0.copyload.i = load i32, ptr %i.bn, align 1
  %i.bo = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN6duckdb6vectorIjLb1ESaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.062117)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  store i32 %.0.copyload.i, ptr %i.bo, align 4, !tbaa !3
  %i.bp = add nuw nsw i64 %.062117, 1
  %i.bq = add nuw nsw i64 %.066116, %.sroa.2.0.insert.ext.i
  %exitcond127.not = icmp eq i64 %.062117, %.zext
  br i1 %exitcond127.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit.loopexit, label %.lr.ph118, !llvm.loop !847

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

._crit_edge:                                      ; preds = %bb.x
  %.pre = load ptr, ptr %5, align 8, !tbaa !844   ; 9 uses
  %.pre128.a = load ptr, ptr %4, align 8, !tbaa !839 ; 6 uses
  %i.bs = icmp eq i64 %i.do, 0
  br i1 %i.bs, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  br i1 %.not.i.i.i.i.i77, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIjEET_PKS3_PKtm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %bb.t
  %.010.i.i = phi i64 [ %i.by, %bb.t ], [ 0, %bb.r ] ; 4 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.pre128.a, i64 %.010.i.i
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !670
  %i.bv = zext i16 %i.bu to i64
  %.not.i.i84 = icmp eq i64 %.010.i.i, %i.bv
  br i1 %.not.i.i84, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.010.i.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  br label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIjEET_PKS3_PKtm.exit.i

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.by = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.by, %i.as
  br i1 %exitcond.not.i.i, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIjEET_PKS3_PKtm.exit.i, label %.lr.ph.i.i, !llvm.loop !848

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIjEET_PKS3_PKtm.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  %.08.i.i = phi i32 [ %i.bx, %bb.s ], [ 0, %bb.r ], [ 0, %bb.t ] ; 5 uses
  %i.bz = add nsw i64 %.0.i89, -1
  %i.ca = add i64 %i.bz, %.065113
  %xtraiter = and i64 %i.do, 3                    ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 3
  br i1 %i.cb, label %.lr.ph.i8.i.epil.preheader, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIjEET_PKS3_PKtm.exit.i.new

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIjEET_PKS3_PKtm.exit.i.new: ; preds = %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIjEET_PKS3_PKtm.exit.i
  %unroll_iter = and i64 %i.do, -4
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIjEET_PKS3_PKtm.exit.i.new
  %.07.i.i = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIjEET_PKS3_PKtm.exit.i.new ], [ %i.cv, %.lr.ph.i8.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIjEET_PKS3_PKtm.exit.i.new ], [ %niter.next.3, %.lr.ph.i8.i ]
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %.pre128.a, i64 %.07.i.i
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !670
  %i.ce = zext i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ce
  store i32 %.08.i.i, ptr %i.cf, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.pre128.a, i64 %.07.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !670
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cj
  store i32 %.08.i.i, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.pre128.a, i64 %.07.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !670
  %i.co = zext i16 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.co
  store i32 %.08.i.i, ptr %i.cp, align 4, !tbaa !3
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %.pre128.a, i64 %.07.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 6
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !670
  %i.ct = zext i16 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ct
  store i32 %.08.i.i, ptr %i.cu, align 4, !tbaa !3
  %i.cv = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit.loopexit160.unr-lcssa, label %.lr.ph.i8.i, !llvm.loop !849

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %.163115 = phi i64 [ %i.dp, %bb.x ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.064114 = phi i64 [ %i.dq, %bb.x ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.065113 = phi i64 [ %i.do, %bb.x ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.cw = load ptr, ptr %3, align 8, !tbaa !438
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !439 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cx, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.064114
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.u, %.lr.ph
  %i.db = phi i64 [ %i.da, %bb.u ], [ %.064114, %.lr.ph ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.db
  %.0.copyload.i87 = load i32, ptr %i.dc, align 1
  %i.dd = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN6duckdb6vectorIjLb1ESaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.163115)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  store i32 %.0.copyload.i87, ptr %i.dd, align 4, !tbaa !3
  %i.de = load ptr, ptr %i.ba, align 8, !tbaa !11 ; 2 uses
  %.not.i88 = icmp eq ptr %i.de, null
  br i1 %.not.i88, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.df = lshr i64 %i.db, 6
  %i.dg = and i64 %i.db, 63
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.df
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !21
  %i.dj = xor i64 %i.di, -1
  %i.dk = lshr i64 %i.dj, %i.dg
  %i.dl = and i64 %i.dk, 1
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %bb.w, %bb.v
  %.0.i89 = phi i64 [ %i.dl, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.dm = invoke noundef nonnull align 2 dereferenceable(2) ptr @_ZN6duckdb6vectorItLb1ESaItEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.065113)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.dn = trunc i64 %.163115 to i16
  store i16 %i.dn, ptr %i.dm, align 2, !tbaa !670
  %i.do = add i64 %.0.i89, %.065113               ; 4 uses
  %i.dp = add nuw nsw i64 %.163115, 1
  %i.dq = add nuw nsw i64 %.064114, %.sroa.2.0.insert.ext.i
  %exitcond.not = icmp eq i64 %.163115, %.zext155
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !850

bb.y:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit.loopexit: ; preds = %bb.p
  %.pre129.a = load ptr, ptr %5, align 8, !tbaa !851
  br label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit.loopexit160.unr-lcssa: ; preds = %.lr.ph.i8.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil.preheader

.lr.ph.i8.i.epil.preheader:                       ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit.loopexit160.unr-lcssa, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIjEET_PKS3_PKtm.exit.i
  %.07.i.i.epil.init = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIjEET_PKS3_PKtm.exit.i ], [ %i.cv, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit.loopexit160.unr-lcssa ]
  %lcmp.mod165 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod165)
  br label %.lr.ph.i8.i.epil

.lr.ph.i8.i.epil:                                 ; preds = %.lr.ph.i8.i.epil, %.lr.ph.i8.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.dx, %.lr.ph.i8.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i8.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i8.i.epil ], [ 0, %.lr.ph.i8.i.epil.preheader ]
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.pre128.a, i64 %.07.i.i.epil
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !670
  %i.dv = zext i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dv
  store i32 %.08.i.i, ptr %i.dw, align 4, !tbaa !3
  %i.dx = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil, !llvm.loop !852

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit: ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit.loopexit160.unr-lcssa, %.lr.ph.i8.i.epil, %.preheader107, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit.loopexit, %.preheader, %._crit_edge
  %i.dy = phi ptr [ %i.ay, %.preheader107 ], [ %.pre129.a, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit.loopexit ], [ %i.ay, %.preheader ], [ %.pre, %._crit_edge ], [ %.pre, %.lr.ph.i8.i.epil ], [ %.pre, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit.loopexit160.unr-lcssa ] ; 3 uses
  %i.dz = load ptr, ptr %i.az, align 8, !tbaa !851 ; 2 uses
  %.not119 = icmp eq ptr %i.dy, %i.dz
  br i1 %.not119, label %._crit_edge122, label %.lr.ph121

.lr.ph121:                                        ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.pre130.a = load ptr, ptr %i.eb, align 8, !tbaa !846
  %.pre131.a = load ptr, ptr %i.ec, align 8, !tbaa !845
  br label %bb.ao

._crit_edge122.loopexit:                          ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.pre132 = load ptr, ptr %5, align 8, !tbaa !844
  br label %._crit_edge122

._crit_edge122:                                   ; preds = %._crit_edge122.loopexit, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit
  %i.ed = phi ptr [ %.pre132, %._crit_edge122.loopexit ], [ %i.dy, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit ] ; 2 uses
  %i.ee = load i64, ptr %i.p, align 8, !tbaa !837
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %i.p, align 8, !tbaa !837
  %.not.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge122
  call void @_ZdlPv(ptr noundef nonnull %i.ed) #32
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge122, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.eg = load ptr, ptr %4, align 8, !tbaa !839   ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.eg) #32
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !234 ; 8 uses
  %.not.i.i.i.i.i91 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i91, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.ej, align 8, !tbaa !235
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !237
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !48
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #30, !inline_history !238
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !48
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #30, !inline_history !238
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.em, %bb.af ], [ %i.ew, %bb.ag ]
  %i.ex = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ex, label %bb.ah, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !67

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ad, %_ZNSt6vectorItSaItEED2Ev.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !234 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fb = load atomic i64, ptr %i.fa acquire, align 8 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 4294967297
  %i.fd = trunc i64 %i.fb to i32                  ; 2 uses
  br i1 %i.fc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.fa, align 8, !tbaa !235
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.fe, align 4, !tbaa !237
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !48
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #30, !inline_history !240
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !48
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #30, !inline_history !240
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = add nsw i32 %i.fd, -1
  store i32 %i.fm, ptr %i.fa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.am:                                            ; preds = %bb.ak
  %i.fn = atomicrmw volatile add ptr %i.fa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.fd, %bb.al ], [ %i.fn, %bb.am ]
  %i.fo = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fo, label %bb.an, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !67

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ay

bb.ao:                                            ; preds = %.lr.ph121, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.fp = phi ptr [ %.pre131.a, %.lr.ph121 ], [ %i.gk, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %i.fq = phi ptr [ %.pre130.a, %.lr.ph121 ], [ %i.gl, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %.sroa.0100.0120 = phi ptr [ %i.dy, %.lr.ph121 ], [ %i.gm, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %.not.i92 = icmp eq ptr %i.fq, %i.fp
  br i1 %.not.i92, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fr = load i32, ptr %.sroa.0100.0120, align 4, !tbaa !3
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4 ; 2 uses
  store ptr %i.fs, ptr %i.eb, align 8, !tbaa !846
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ft = load ptr, ptr %i.ea, align 8, !tbaa !844 ; 4 uses
  %i.fu = ptrtoint ptr %i.fp to i64
end_hunk_0
begin_hunk_1_@_ZN6duckdb9AlpRDSkipIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm:bb.a
  %.promoted.i = load i64, ptr %i.c, align 8      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24672
  %i.m = load i64, ptr %i.l, align 8, !tbaa !867  ; 5 uses
  %.promoted16.i = load ptr, ptr %i.k, align 8, !tbaa !868
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.n = icmp ult i64 %.012.i, 4096
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.j, 18014398509481980
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ah, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %i.o = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.r, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.p = sub i64 %i.m, %i.o
  %i.q = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 1024)
  %i.r = add i64 %i.q, %i.o                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.e, !llvm.loop !872

._crit_edge.i:                                    ; preds = %bb.e, %._crit_edge.i.unr-lcssa
  %.lcssa = phi i64 [ %i.ah, %._crit_edge.i.unr-lcssa ], [ %i.r, %bb.e ]
  %i.s = mul nsw i64 %i.j, -4
  %scevgep.i = getelementptr i8, ptr %.promoted16.i, i64 %i.s
  store ptr %scevgep.i, ptr %i.k, align 8, !tbaa !868
  store i64 %.lcssa, ptr %i.c, align 8, !tbaa !862
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.d
  %i.t = and i64 %.012.i, 1023                    ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN6duckdb14AlpRDScanStateIfE4SkipERNS_13ColumnSegmentEm.exit, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.v = phi i64 [ %.promoted.i, %.lr.ph.i.new ], [ %i.ah, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  %i.w = sub i64 %i.m, %i.v
  %i.x = tail call noundef i64 @llvm.umin.i64(i64 %i.w, i64 1024)
  %i.y = add i64 %i.x, %i.v                       ; 2 uses
  %i.z = sub i64 %i.m, %i.y
  %i.aa = tail call noundef i64 @llvm.umin.i64(i64 %i.z, i64 1024)
  %i.ab = add i64 %i.aa, %i.y                     ; 2 uses
  %i.ac = sub i64 %i.m, %i.ab
  %i.ad = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 1024)
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  %i.af = sub i64 %i.m, %i.ae
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 1024)
  %i.ah = add i64 %i.ag, %i.ae                    ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !870

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN6duckdb14AlpRDScanStateIfE10ScanVectorIjLb1EEEvPT_m(ptr noundef nonnull align 8 dereferenceable(24680) %i.b, ptr noundef null, i64 noundef %i.t)
  br label %_ZN6duckdb14AlpRDScanStateIfE4SkipERNS_13ColumnSegmentEm.exit

_ZN6duckdb14AlpRDScanStateIfE4SkipERNS_13ColumnSegmentEm.exit: ; preds = %bb.f, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb16GetAlpRDFunctionIdEENS_19CompressionFunctionENS_12PhysicalTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::CompressionFunction") align 8 captures(none) initializes((0, 2), (8, 193)) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  store i8 11, ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %1, ptr %i.a, align 1, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN6duckdb16AlpRDInitAnalyzeIdEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE, ptr %i.b, align 8, !tbaa !274
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN6duckdb12AlpRDAnalyzeIdEEbRNS_12AnalyzeStateERNS_6VectorEm, ptr %i.c, align 8, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6duckdb17AlpRDFinalAnalyzeIdEEmRNS_12AnalyzeStateE, ptr %i.d, align 8, !tbaa !276
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN6duckdb20AlpRDInitCompressionIdEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE, ptr %i.e, align 8, !tbaa !277
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN6duckdb13AlpRDCompressIdEEvRNS_16CompressionStateERNS_6VectorEm, ptr %i.f, align 8, !tbaa !278
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN6duckdb21AlpRDFinalizeCompressIdEEvRNS_16CompressionStateE, ptr %i.g, align 8, !tbaa !279
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.h, align 8, !tbaa !280
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZN6duckdb13AlpRDInitScanIdEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE, ptr %i.i, align 8, !tbaa !79
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @_ZN6duckdb9AlpRDScanIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE, ptr %i.j, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @_ZN6duckdb16AlpRDScanPartialIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm, ptr %i.k, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store ptr @_ZN6duckdb13AlpRDFetchRowIdEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm, ptr %i.m, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZN6duckdb9AlpRDSkipIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm, ptr %i.n, align 8, !tbaa !85
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.o, i8 0, i64 73, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb16AlpRDInitAnalyzeIdEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.121") align 8 %0, ptr noundef nonnull align 8 dereferenceable(296) %1, i8 noundef zeroext %2) #1 comdat personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb17AlpRDAnalyzeStateIdEESt14default_deleteIS2_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86, !nonnull !55, !align !133
  %i.c = tail call noalias noundef nonnull dereferenceable(20648) ptr @_Znwm(i64 noundef 20648) #33, !noalias !873 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %i.d, align 8, !tbaa !137, !noalias !873
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb17AlpRDAnalyzeStateIdEE, i64 16), ptr %i.c, align 8, !tbaa !48, !noalias !873
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 20584
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 20632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.f, i8 0, i64 52, i1 false), !noalias !873
  store ptr %i.h, ptr %i.g, align 8, !tbaa !824, !noalias !873
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20592
  store i64 1, ptr %i.i, align 8, !tbaa !826, !noalias !873
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 20600
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 20616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !noalias !873
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !478, !noalias !873
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 20624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !noalias !873
  store ptr %i.c, ptr %0, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb12AlpRDAnalyzeIdEEbRNS_12AnalyzeStateERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %4 = alloca %"class.duckdb::vector.2221", align 8 ; 11 uses
  %5 = alloca %"class.duckdb::vector.1019", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185, !nonnull !55, !align !133 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.f = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = sub i64 %i.d, %i.f
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !185, !nonnull !55, !align !133
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !827
  %.not.i.i = icmp eq i64 %i.j, -1
  br i1 %.not.i.i, label %_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit

_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.k, %bb.b ], [ 8, %bb.a ]
  %i.l = add i64 %i.g, %.0.i.i
  %i.m = icmp ugt i64 %i.l, 262143                ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.ay

bb.c:                                             ; preds = %_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !876  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !884
  %i.r = urem i64 %i.o, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = icmp ult i64 %2, 32
  %i.u = icmp ne i64 %i.q, 0
  %or.cond.i = and i1 %i.t, %i.u
  %.0.i = or i1 %i.s, %or.cond.i
  %i.v = add i64 %i.o, 1
  store i64 %i.v, ptr %i.n, align 8, !tbaa !876
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !885
  %i.y = add i64 %i.x, %2
  store i64 %i.y, ptr %i.w, align 8, !tbaa !885
  br i1 %.0.i, label %bb.ay, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !429 ; 2 uses
  %i.ab = call noundef i64 @llvm.umin.i64(i64 %2, i64 1024)
  %i.ac = invoke noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.ab)
          to label %bb.g unwind label %bb.l       ; 5 uses

bb.g:                                             ; preds = %bb.f
  %i.ad = uitofp i32 %i.ac to double              ; 2 uses
  %i.ae = fmul nnan double %i.ad, 3.125000e-02
  %i.af = call double @llvm.ceil.f64(double %i.ae)
  %i.ag = fptoui double %i.af to i32
  %i.ah = call noundef i32 @llvm.umax.i32(i32 %i.ag, i32 1) ; 4 uses
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = fdiv double %i.ad, %i.ai
  %i.ak = call double @llvm.ceil.f64(double %i.aj)
  %i.al = fptoui double %i.ak to i32              ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.ah to i64 ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.ac to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.ac, 0          ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.loopexit109, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = shl nuw nsw i64 %.sroa.0.0.insert.ext.i, 1 ; 3 uses
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #33
          to label %.noexc unwind label %bb.m     ; 4 uses

.noexc:                                           ; preds = %bb.h
  store ptr %i.an, ptr %4, align 8, !tbaa !839
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %.sroa.0.0.insert.ext.i
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !842
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.an, i8 0, i64 %i.am, i1 false), !tbaa !670
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  br label %.loopexit109

.loopexit109:                                     ; preds = %.noexc, %bb.g
  %.0.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.g ], [ %i.aq, %.noexc ]
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.ar, align 8, !tbaa !843
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.as = zext i32 %i.al to i64                   ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i77 = icmp eq i32 %i.al, 0        ; 2 uses
  br i1 %.not.i.i.i.i.i77, label %.loopexit108, label %bb.i

bb.i:                                             ; preds = %.loopexit109
  %i.at = shl nuw nsw i64 %i.as, 3                ; 3 uses
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #33
          to label %.noexc82 unwind label %bb.n   ; 5 uses

.noexc82:                                         ; preds = %bb.i
  store ptr %i.au, ptr %5, align 8, !tbaa !886
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !887
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.au, i8 0, i64 %i.at, i1 false), !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  br label %.loopexit108

.loopexit108:                                     ; preds = %.noexc82, %.loopexit109
  %i.ay = phi ptr [ null, %.loopexit109 ], [ %i.au, %.noexc82 ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i81 = phi ptr [ null, %.loopexit109 ], [ %i.ax, %.noexc82 ]
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i.i81, ptr %i.az, align 8, !tbaa !888
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %.preheader, label %.preheader107

.preheader107:                                    ; preds = %.loopexit108
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader107
  %.lhs.trunc153 = add i32 %i.ac, -1
  %6 = udiv i32 %.lhs.trunc153, %i.ah
  %.zext155 = zext i32 %6 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %.loopexit108
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %.preheader
  %.lhs.trunc = add i32 %i.ac, -1
  %7 = udiv i32 %.lhs.trunc, %i.ah
  %.zext = zext i32 %7 to i64
  br label %.lr.ph118

bb.j:                                             ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.k:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.l:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.m:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit99

bb.n:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit97

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %bb.p
  %.062117 = phi i64 [ %i.bp, %bb.p ], [ 0, %.lr.ph118.preheader ] ; 3 uses
  %.066116 = phi i64 [ %i.bq, %bb.p ], [ 0, %.lr.ph118.preheader ] ; 3 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !438
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !439 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bi, null
  br i1 %.not.i83, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph118
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.066116
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = zext i32 %i.bk to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.o, %.lr.ph118
  %i.bm = phi i64 [ %i.bl, %bb.o ], [ %.066116, %.lr.ph118 ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bm
  %.0.copyload.i = load i64, ptr %i.bn, align 1
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.062117)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  store i64 %.0.copyload.i, ptr %i.bo, align 8, !tbaa !21
  %i.bp = add nuw nsw i64 %.062117, 1
  %i.bq = add nuw nsw i64 %.066116, %.sroa.2.0.insert.ext.i
  %exitcond127.not = icmp eq i64 %.062117, %.zext
  br i1 %exitcond127.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit.loopexit, label %.lr.ph118, !llvm.loop !889

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

._crit_edge:                                      ; preds = %bb.x
  %.pre = load ptr, ptr %5, align 8, !tbaa !886   ; 9 uses
  %.pre128.a = load ptr, ptr %4, align 8, !tbaa !839 ; 6 uses
  %i.bs = icmp eq i64 %i.do, 0
  br i1 %i.bs, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  br i1 %.not.i.i.i.i.i77, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayImEET_PKS3_PKtm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %bb.t
  %.010.i.i = phi i64 [ %i.by, %bb.t ], [ 0, %bb.r ] ; 4 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.pre128.a, i64 %.010.i.i
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !670
  %i.bv = zext i16 %i.bu to i64
  %.not.i.i84 = icmp eq i64 %.010.i.i, %i.bv
  br i1 %.not.i.i84, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.010.i.i
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !21
  br label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayImEET_PKS3_PKtm.exit.i

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.by = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.by, %i.as
  br i1 %exitcond.not.i.i, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayImEET_PKS3_PKtm.exit.i, label %.lr.ph.i.i, !llvm.loop !890

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayImEET_PKS3_PKtm.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  %.08.i.i = phi i64 [ %i.bx, %bb.s ], [ 0, %bb.r ], [ 0, %bb.t ] ; 5 uses
  %i.bz = add nsw i64 %.0.i89, -1
  %i.ca = add i64 %i.bz, %.065113
  %xtraiter = and i64 %i.do, 3                    ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 3
  br i1 %i.cb, label %.lr.ph.i8.i.epil.preheader, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayImEET_PKS3_PKtm.exit.i.new

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayImEET_PKS3_PKtm.exit.i.new: ; preds = %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayImEET_PKS3_PKtm.exit.i
  %unroll_iter = and i64 %i.do, -4
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayImEET_PKS3_PKtm.exit.i.new
  %.07.i.i = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayImEET_PKS3_PKtm.exit.i.new ], [ %i.cv, %.lr.ph.i8.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayImEET_PKS3_PKtm.exit.i.new ], [ %niter.next.3, %.lr.ph.i8.i ]
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %.pre128.a, i64 %.07.i.i
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !670
  %i.ce = zext i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ce
  store i64 %.08.i.i, ptr %i.cf, align 8, !tbaa !21
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.pre128.a, i64 %.07.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !670
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cj
  store i64 %.08.i.i, ptr %i.ck, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.pre128.a, i64 %.07.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !670
  %i.co = zext i16 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.co
  store i64 %.08.i.i, ptr %i.cp, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %.pre128.a, i64 %.07.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 6
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !670
  %i.ct = zext i16 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ct
  store i64 %.08.i.i, ptr %i.cu, align 8, !tbaa !21
  %i.cv = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit.loopexit160.unr-lcssa, label %.lr.ph.i8.i, !llvm.loop !891

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %.163115 = phi i64 [ %i.dp, %bb.x ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.064114 = phi i64 [ %i.dq, %bb.x ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.065113 = phi i64 [ %i.do, %bb.x ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.cw = load ptr, ptr %3, align 8, !tbaa !438
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !439 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cx, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.064114
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.u, %.lr.ph
  %i.db = phi i64 [ %i.da, %bb.u ], [ %.064114, %.lr.ph ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.db
  %.0.copyload.i87 = load i64, ptr %i.dc, align 1
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.163115)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  store i64 %.0.copyload.i87, ptr %i.dd, align 8, !tbaa !21
  %i.de = load ptr, ptr %i.ba, align 8, !tbaa !11 ; 2 uses
  %.not.i88 = icmp eq ptr %i.de, null
  br i1 %.not.i88, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.df = lshr i64 %i.db, 6
  %i.dg = and i64 %i.db, 63
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.df
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !21
  %i.dj = xor i64 %i.di, -1
  %i.dk = lshr i64 %i.dj, %i.dg
  %i.dl = and i64 %i.dk, 1
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %bb.w, %bb.v
  %.0.i89 = phi i64 [ %i.dl, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.dm = invoke noundef nonnull align 2 dereferenceable(2) ptr @_ZN6duckdb6vectorItLb1ESaItEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.065113)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.dn = trunc i64 %.163115 to i16
  store i16 %i.dn, ptr %i.dm, align 2, !tbaa !670
  %i.do = add i64 %.0.i89, %.065113               ; 4 uses
  %i.dp = add nuw nsw i64 %.163115, 1
  %i.dq = add nuw nsw i64 %.064114, %.sroa.2.0.insert.ext.i
  %exitcond.not = icmp eq i64 %.163115, %.zext155
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !892

bb.y:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit.loopexit: ; preds = %bb.p
  %.pre129.a = load ptr, ptr %5, align 8, !tbaa !446
  br label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit.loopexit160.unr-lcssa: ; preds = %.lr.ph.i8.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil.preheader

.lr.ph.i8.i.epil.preheader:                       ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit.loopexit160.unr-lcssa, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayImEET_PKS3_PKtm.exit.i
  %.07.i.i.epil.init = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayImEET_PKS3_PKtm.exit.i ], [ %i.cv, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit.loopexit160.unr-lcssa ]
  %lcmp.mod165 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod165)
  br label %.lr.ph.i8.i.epil

.lr.ph.i8.i.epil:                                 ; preds = %.lr.ph.i8.i.epil, %.lr.ph.i8.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.dx, %.lr.ph.i8.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i8.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i8.i.epil ], [ 0, %.lr.ph.i8.i.epil.preheader ]
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.pre128.a, i64 %.07.i.i.epil
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !670
  %i.dv = zext i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dv
  store i64 %.08.i.i, ptr %i.dw, align 8, !tbaa !21
  %i.dx = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil, !llvm.loop !893

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit: ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit.loopexit160.unr-lcssa, %.lr.ph.i8.i.epil, %.preheader107, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit.loopexit, %.preheader, %._crit_edge
  %i.dy = phi ptr [ %i.ay, %.preheader107 ], [ %.pre129.a, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit.loopexit ], [ %i.ay, %.preheader ], [ %.pre, %._crit_edge ], [ %.pre, %.lr.ph.i8.i.epil ], [ %.pre, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit.loopexit160.unr-lcssa ] ; 3 uses
  %i.dz = load ptr, ptr %i.az, align 8, !tbaa !446 ; 2 uses
  %.not119 = icmp eq ptr %i.dy, %i.dz
  br i1 %.not119, label %._crit_edge122, label %.lr.ph121

.lr.ph121:                                        ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.pre130.a = load ptr, ptr %i.eb, align 8, !tbaa !888
  %.pre131.a = load ptr, ptr %i.ec, align 8, !tbaa !887
  br label %bb.ao

._crit_edge122.loopexit:                          ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.pre132 = load ptr, ptr %5, align 8, !tbaa !886
  br label %._crit_edge122

._crit_edge122:                                   ; preds = %._crit_edge122.loopexit, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit
  %i.ed = phi ptr [ %.pre132, %._crit_edge122.loopexit ], [ %i.dy, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorImEEvPT_PKtmm.exit ] ; 2 uses
  %i.ee = load i64, ptr %i.p, align 8, !tbaa !884
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %i.p, align 8, !tbaa !884
  %.not.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge122
  call void @_ZdlPv(ptr noundef nonnull %i.ed) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge122, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.eg = load ptr, ptr %4, align 8, !tbaa !839   ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.eg) #32
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !234 ; 8 uses
  %.not.i.i.i.i.i91 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i91, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.ej, align 8, !tbaa !235
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !237
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !48
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #30, !inline_history !238
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !48
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #30, !inline_history !238
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.em, %bb.af ], [ %i.ew, %bb.ag ]
  %i.ex = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ex, label %bb.ah, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !67

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ad, %_ZNSt6vectorItSaItEED2Ev.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !234 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fb = load atomic i64, ptr %i.fa acquire, align 8 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 4294967297
  %i.fd = trunc i64 %i.fb to i32                  ; 2 uses
  br i1 %i.fc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.fa, align 8, !tbaa !235
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.fe, align 4, !tbaa !237
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !48
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #30, !inline_history !240
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !48
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #30, !inline_history !240
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = add nsw i32 %i.fd, -1
  store i32 %i.fm, ptr %i.fa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.am:                                            ; preds = %bb.ak
  %i.fn = atomicrmw volatile add ptr %i.fa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.fd, %bb.al ], [ %i.fn, %bb.am ]
  %i.fo = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fo, label %bb.an, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !67

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ay

bb.ao:                                            ; preds = %.lr.ph121, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.fp = phi ptr [ %.pre131.a, %.lr.ph121 ], [ %i.gk, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.fq = phi ptr [ %.pre130.a, %.lr.ph121 ], [ %i.gl, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %.sroa.0100.0120 = phi ptr [ %i.dy, %.lr.ph121 ], [ %i.gm, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %.not.i92 = icmp eq ptr %i.fq, %i.fp
  br i1 %.not.i92, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fr = load i64, ptr %.sroa.0100.0120, align 8, !tbaa !21
  store i64 %i.fr, ptr %i.fq, align 8, !tbaa !21
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  store ptr %i.fs, ptr %i.eb, align 8, !tbaa !888
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ft = load ptr, ptr %i.ea, align 8, !tbaa !886 ; 4 uses
  %i.fu = ptrtoint ptr %i.fp to i64
end_hunk_1
