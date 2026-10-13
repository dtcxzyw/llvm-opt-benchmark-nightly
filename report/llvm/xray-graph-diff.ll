Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/xray-graph-diff?download=true
inline.NumInlined: 3008
inline.NumDeleted: 1554
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4growEj:bb.a
  %i.aj = mul nuw nsw i64 %i.ai, 48
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapISt4pairINS_9StringRefES2_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairINS_9StringRefES2_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !113  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !112  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !113
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES6_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !75   ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.bf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.t ; 6 uses
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.u, align 8, !tbaa !63
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !64
  %i.v = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.01.0.copyload.i.i, i64 %.sroa.22.0.copyload.i.i) #21
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.w, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !64
  %i.x = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #21
  %i.y = zext i32 %i.v to i64
  %i.z = shl nuw i64 %i.y, 32
  %i.aa = zext i32 %i.x to i64
  %i.ab = or disjoint i64 %i.z, %i.aa
  %i.ac = mul i64 %i.ab, -4658895280553007687     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.k, %i.af                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5                       ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !75
  %i.al = and i32 %i.ag, 31                       ; 2 uses
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ap, %.lr.ph.i ], [ %i.ag, %bb.b ]
  %i.ao = add i32 %.014.i, 1
  %i.ap = and i32 %i.ao, %i.k                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !75
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !619

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ai, %bb.b ], [ %i.ar, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !161
  %i.ba = shl nuw i32 1, %.lcssa.i
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !75
  %i.bd = or i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !75
  %i.be = add i32 %.0.i19, -1
  %i.bf = and i32 %i.be, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !620

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES6_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !621

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES6_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !113
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES6_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES6_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES6_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bg = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES6_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !114
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !114
  %i.bk = icmp eq i32 %i.bg, 0
  br i1 %i.bk, label %_ZN4llvm8DenseMapISt4pairINS_9StringRefES2_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES6_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bl = load ptr, ptr %1, align 8, !tbaa !111
  %i.bm = zext i32 %i.bg to i64                   ; 2 uses
  %i.bn = mul nuw nsw i64 %i.bm, 48
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #21
  store i32 0, ptr %i.d, align 4, !tbaa !113
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairINS_9StringRefES2_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit

_ZN4llvm8DenseMapISt4pairINS_9StringRefES2_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES6_ENS_4xray17GraphDiffRenderer13EdgeAttributeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #4

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFN4llvm5ErrorEvE3$_0E9_M_invokeERKSt9_Any_data"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.std::array.237", align 8   ; 22 uses
  %3 = alloca %"struct.std::array.243", align 8   ; 14 uses
  %4 = alloca %"struct.std::array.244", align 8   ; 15 uses
  %5 = alloca %"class.llvm::Expected.245", align 8 ; 16 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Expected.248", align 8 ; 17 uses
  %9 = alloca %"class.llvm::xray::GraphRenderer", align 8 ; 14 uses
  %10 = alloca %"class.llvm::xray::GraphDiffRenderer::Factory", align 8 ; 5 uses
  %11 = alloca %"class.llvm::Expected", align 8   ; 8 uses
  %12 = alloca %"class.std::error_code", align 8  ; 7 uses
  %13 = alloca %"class.llvm::raw_fd_ostream", align 8 ; 5 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !662
  %_ZL20GraphDiffKeepGoing1A.val.i.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL20GraphDiffKeepGoing1A, i64 12), align 4, !noalias !662
  %i.e = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL19GraphDiffKeepGoing1, i64 12), align 4, !tbaa !143, !noalias !662
  %i.f = icmp eq i16 %i.e, 0
  %i.g = icmp eq i16 %_ZL20GraphDiffKeepGoing1A.val.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.f, i1 %i.g, i1 false
  %.val.i.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL18GraphDiffKeepGoing, i64 120), align 8, !range !40, !noalias !662
  %.val7.i.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL19GraphDiffKeepGoing1, i64 120), align 8, !range !40, !noalias !662
  %i.h = select i1 %or.cond.i.i.i.i, i8 %.val.i.i.i, i8 %.val7.i.i.i
  store i8 %i.h, ptr %2, align 8, !tbaa !669, !noalias !662
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %_ZL29GraphDiffDeduceSiblingCalls1A.val.i.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL29GraphDiffDeduceSiblingCalls1A, i64 12), align 4, !noalias !662
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL28GraphDiffDeduceSiblingCalls1, i64 12), align 4, !tbaa !143, !noalias !662
  %i.k = icmp eq i16 %i.j, 0
  %i.l = icmp eq i16 %_ZL29GraphDiffDeduceSiblingCalls1A.val.i.i.i, 0
  %or.cond.i13.i.i.i = select i1 %i.k, i1 %i.l, i1 false
  %.val8.i.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL27GraphDiffDeduceSiblingCalls, i64 120), align 8, !range !40, !noalias !662
  %.val9.i.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL28GraphDiffDeduceSiblingCalls1, i64 120), align 8, !range !40, !noalias !662
  %i.m = select i1 %or.cond.i13.i.i.i, i8 %.val8.i.i.i, i8 %.val9.i.i.i
  store i8 %i.m, ptr %i.i, align 1, !tbaa !670, !noalias !662
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %_ZL19GraphDiffInstrMap1A.val.i.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL19GraphDiffInstrMap1A, i64 12), align 4, !noalias !662
  %i.o = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL18GraphDiffInstrMap1B5cxx11, i64 12), align 4, !tbaa !143, !noalias !662
  %i.p = icmp eq i16 %i.o, 0
  %i.q = icmp eq i16 %_ZL19GraphDiffInstrMap1A.val.i.i.i, 0
  %or.cond.i15.i.i.i = select i1 %i.p, i1 %i.q, i1 false ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %16, ptr %i.n, align 8, !tbaa !126, !noalias !662
  %.val10.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL17GraphDiffInstrMapB5cxx11, i64 120), align 8, !noalias !662
  %.val11.i.i.i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18GraphDiffInstrMap1B5cxx11, i64 120), align 8, !noalias !662
  %17 = select i1 %or.cond.i15.i.i.i, ptr %.val10.i.i.i, ptr %.val11.i.i.i.a ; 2 uses
  %.val12.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17GraphDiffInstrMapB5cxx11, i64 128), align 8, !noalias !662
  %.val13.i.i.i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL18GraphDiffInstrMap1B5cxx11, i64 128), align 8, !noalias !662
  %18 = select i1 %or.cond.i15.i.i.i, i64 %.val12.i.i.i, i64 %.val13.i.i.i.a ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21, !noalias !662
  store i64 %18, ptr %i.d, align 8, !tbaa !64, !noalias !662
  %i.r = icmp ugt i64 %18, 15
  %indvars.iv.i.sroa.gep1.i.i = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 3 uses
  %indvars.iv.i.sroa.gep4.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  %indvars.iv.i.sroa.gep7.i.i = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  br i1 %i.r, label %bb.b, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #21, !noalias !662 ; 2 uses
  store ptr %i.s, ptr %i.n, align 8, !tbaa !34, !noalias !662
  %i.t = load i64, ptr %i.d, align 8, !tbaa !64, !noalias !662
  store i64 %i.t, ptr %16, align 8, !tbaa !35, !noalias !662
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.b, %bb.a
  %i.u = phi ptr [ %i.s, %bb.b ], [ %16, %bb.a ]  ; 2 uses
  switch i64 %18, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.v = load i8, ptr %17, align 1, !tbaa !35, !noalias !662
  store i8 %i.v, ptr %i.u, align 1, !tbaa !35, !noalias !662
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %17, i64 %18, i1 false), !noalias !662
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i
  %i.w = load i64, ptr %i.d, align 8, !tbaa !64, !noalias !662 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !83, !noalias !662
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !34, !noalias !662
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !35, !noalias !662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21, !noalias !662
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i8 0, i64 56, i1 false), !noalias !662
  %_ZL20GraphDiffKeepGoing2A.val.i.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL20GraphDiffKeepGoing2A, i64 12), align 4, !noalias !662
  %i.ab = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL19GraphDiffKeepGoing2, i64 12), align 4, !tbaa !143, !noalias !662
  %i.ac = icmp eq i16 %i.ab, 0
  %i.ad = icmp eq i16 %_ZL20GraphDiffKeepGoing2A.val.i.i.i, 0
  %or.cond.i17.i.i.i = select i1 %i.ac, i1 %i.ad, i1 false
  %.val14.i.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL18GraphDiffKeepGoing, i64 120), align 8, !range !40, !noalias !662
  %.val15.i.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL19GraphDiffKeepGoing2, i64 120), align 8, !range !40, !noalias !662
  %i.ae = select i1 %or.cond.i17.i.i.i, i8 %.val14.i.i.i, i8 %.val15.i.i.i
  store i8 %i.ae, ptr %indvars.iv.i.sroa.gep7.i.i, align 8, !tbaa !669, !noalias !662
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 97
  %_ZL29GraphDiffDeduceSiblingCalls2A.val.i.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL29GraphDiffDeduceSiblingCalls2A, i64 12), align 4, !noalias !662
  %i.ag = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL28GraphDiffDeduceSiblingCalls2, i64 12), align 4, !tbaa !143, !noalias !662
  %i.ah = icmp eq i16 %i.ag, 0
  %i.ai = icmp eq i16 %_ZL29GraphDiffDeduceSiblingCalls2A.val.i.i.i, 0
  %or.cond.i19.i.i.i = select i1 %i.ah, i1 %i.ai, i1 false
  %.val16.i.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL27GraphDiffDeduceSiblingCalls, i64 120), align 8, !range !40, !noalias !662
  %.val17.i.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL28GraphDiffDeduceSiblingCalls2, i64 120), align 8, !range !40, !noalias !662
  %i.aj = select i1 %or.cond.i19.i.i.i, i8 %.val16.i.i.i, i8 %.val17.i.i.i
  store i8 %i.aj, ptr %i.af, align 1, !tbaa !670, !noalias !662
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %_ZL19GraphDiffInstrMap2A.val.i.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL19GraphDiffInstrMap2A, i64 12), align 4, !noalias !662
  %i.al = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL18GraphDiffInstrMap2B5cxx11, i64 12), align 4, !tbaa !143, !noalias !662
  %i.am = icmp eq i16 %i.al, 0
  %i.an = icmp eq i16 %_ZL19GraphDiffInstrMap2A.val.i.i.i, 0
  %or.cond.i21.i.i.i = select i1 %i.am, i1 %i.an, i1 false ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  store ptr %19, ptr %i.ak, align 8, !tbaa !126, !noalias !662
  %.val18.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL17GraphDiffInstrMapB5cxx11, i64 120), align 8, !noalias !662
  %.val19.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18GraphDiffInstrMap2B5cxx11, i64 120), align 8, !noalias !662
  %20 = select i1 %or.cond.i21.i.i.i, ptr %.val18.i.i.i, ptr %.val19.i.i.i ; 2 uses
  %.val20.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17GraphDiffInstrMapB5cxx11, i64 128), align 8, !noalias !662
  %.val21.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL18GraphDiffInstrMap2B5cxx11, i64 128), align 8, !noalias !662
  %21 = select i1 %or.cond.i21.i.i.i, i64 %.val20.i.i.i, i64 %.val21.i.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21, !noalias !662
  store i64 %21, ptr %i.c, align 8, !tbaa !64, !noalias !662
  %i.ao = icmp ugt i64 %21, 15
  br i1 %i.ao, label %bb.e, label %._crit_edge.i.i23.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #21, !noalias !662 ; 2 uses
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !34, !noalias !662
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !64, !noalias !662
  store i64 %i.aq, ptr %19, align 8, !tbaa !35, !noalias !662
  br label %._crit_edge.i.i23.i.i.i

._crit_edge.i.i23.i.i.i:                          ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  %i.ar = phi ptr [ %i.ap, %bb.e ], [ %19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i ] ; 2 uses
  switch i64 %21, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit24.i.i.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i23.i.i.i
  %i.as = load i8, ptr %20, align 1, !tbaa !35, !noalias !662
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !35, !noalias !662
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit24.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i23.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %20, i64 %21, i1 false), !noalias !662
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit24.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit24.i.i.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i23.i.i.i
  %i.at = load i64, ptr %i.c, align 8, !tbaa !64, !noalias !662 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 %i.at, ptr %i.au, align 8, !tbaa !83, !noalias !662
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !34, !noalias !662
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !35, !noalias !662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21, !noalias !662
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i8 0, i64 56, i1 false), !noalias !662
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !662
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ay, ptr %3, align 8, !tbaa !126, !noalias !662
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15GraphDiffInput1B5cxx11, i64 120), align 8, !tbaa !34, !noalias !662 ; 2 uses
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL15GraphDiffInput1B5cxx11, i64 128), align 8, !tbaa !83, !noalias !662 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21, !noalias !662
  store i64 %i.ba, ptr %i.b, align 8, !tbaa !64, !noalias !662
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %bb.h, label %._crit_edge.i.i25.i.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit24.i.i.i
  %i.bc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #21, !noalias !662 ; 2 uses
  store ptr %i.bc, ptr %3, align 8, !tbaa !34, !noalias !662
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !64, !noalias !662
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !35, !noalias !662
  br label %._crit_edge.i.i25.i.i.i

._crit_edge.i.i25.i.i.i:                          ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit24.i.i.i
  %i.be = phi ptr [ %i.bc, %bb.h ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit24.i.i.i ] ; 2 uses
  switch i64 %i.ba, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit26.i.i.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i25.i.i.i
  %i.bf = load i8, ptr %i.az, align 1, !tbaa !35, !noalias !662
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !35, !noalias !662
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit26.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i25.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.az, i64 %i.ba, i1 false), !noalias !662
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit26.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit26.i.i.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i25.i.i.i
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !64, !noalias !662 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !83, !noalias !662
  %i.bi = load ptr, ptr %3, align 8, !tbaa !34, !noalias !662
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1, !tbaa !35, !noalias !662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21, !noalias !662
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  store ptr %i.bk, ptr %indvars.iv.i.sroa.gep4.i.i, align 8, !tbaa !126, !noalias !662
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15GraphDiffInput2B5cxx11, i64 120), align 8, !tbaa !34, !noalias !662 ; 2 uses
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL15GraphDiffInput2B5cxx11, i64 128), align 8, !tbaa !83, !noalias !662 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !662
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !64, !noalias !662
  %i.bn = icmp ugt i64 %i.bm, 15
  br i1 %i.bn, label %bb.k, label %._crit_edge.i.i27.i.i.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit26.i.i.i
  %i.bo = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %indvars.iv.i.sroa.gep4.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21, !noalias !662 ; 2 uses
  store ptr %i.bo, ptr %indvars.iv.i.sroa.gep4.i.i, align 8, !tbaa !34, !noalias !662
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !64, !noalias !662
  store i64 %i.bp, ptr %i.bk, align 8, !tbaa !35, !noalias !662
  br label %._crit_edge.i.i27.i.i.i

._crit_edge.i.i27.i.i.i:                          ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit26.i.i.i
  %i.bq = phi ptr [ %i.bo, %bb.k ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit26.i.i.i ] ; 2 uses
  switch i64 %i.bm, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit28.i.i.i
  ]

bb.l:                                             ; preds = %._crit_edge.i.i27.i.i.i
  %i.br = load i8, ptr %i.bl, align 1, !tbaa !35, !noalias !662
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !35, !noalias !662
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit28.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i27.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bl, i64 %i.bm, i1 false), !noalias !662
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit28.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit28.i.i.i: ; preds = %bb.m, %bb.l, %._crit_edge.i.i27.i.i.i
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !64, !noalias !662 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !83, !noalias !662
  %i.bu = load ptr, ptr %indvars.iv.i.sroa.gep4.i.i, align 8, !tbaa !34, !noalias !662
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bs
  store i8 0, ptr %i.bv, align 1, !tbaa !35, !noalias !662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !662
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !662
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %4, i8 0, i64 416, i1 false), !noalias !662
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 10 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 368 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !662
  %i.cf = load ptr, ptr %3, align 8, !tbaa !34, !noalias !662
  %i.cg = load i64, ptr %i.bh, align 8, !tbaa !83, !noalias !662
  call void @_ZN4llvm4xray13loadTraceFileENS_9StringRefEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.245") align 8 %5, ptr %i.cf, i64 %i.cg, i1 noundef zeroext true) #21, !noalias !662
  %i.ch = load i8, ptr %i.bw, align 8, !noalias !662
  %i.ci = trunc i8 %i.ch to i1
  br i1 %i.ci, label %_ZN4llvmplERKNS_5TwineES2_.exit43.i.i.i, label %bb.ac

bb.n:                                             ; preds = %_ZN4llvm8ExpectedINS_4xray5TraceEED2Ev.exit62.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !662
  %i.cj = load ptr, ptr %indvars.iv.i.sroa.gep4.i.i, align 8, !tbaa !34, !noalias !662
  %i.ck = load i64, ptr %i.bt, align 8, !tbaa !83, !noalias !662
  call void @_ZN4llvm4xray13loadTraceFileENS_9StringRefEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.245") align 8 %5, ptr %i.cj, i64 %i.ck, i1 noundef zeroext true) #21, !noalias !662
  %i.cl = load i8, ptr %i.bw, align 8, !noalias !662
  %i.cm = trunc i8 %i.cl to i1
  br i1 %i.cm, label %_ZN4llvmplERKNS_5TwineES2_.exit43.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 32, i1 false), !tbaa.struct !673, !noalias !662
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !165, !noalias !662 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !166, !noalias !662 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !167, !noalias !662
  %i.ct = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !674, !noalias !662
  store <2 x ptr> %i.ct, ptr %i.cn, align 8, !tbaa !674, !noalias !662
  %i.cu = load ptr, ptr %i.bz, align 8, !tbaa !167, !noalias !662
  store ptr %i.cu, ptr %i.cr, align 8, !tbaa !167, !noalias !662
  %.not4.i.i.i.i.i.i.i.1.i.i = icmp eq ptr %i.co, %i.cq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false), !noalias !662
  br i1 %.not4.i.i.i.i.i.i.i.1.i.i, label %_ZSt8_DestroyIPN4llvm4xray10XRayRecordEEvT_S4_.exit.i.i.i.i.i.1.i.i, label %.lr.ph.i.i.i.i.i.i.i.1.i.i

.lr.ph.i.i.i.i.i.i.i.1.i.i:                       ; preds = %bb.o, %_ZSt8_DestroyIN4llvm4xray10XRayRecordEEvPT_.exit.i.i.i.i.i.i.i.1.i.i
  %.05.i.i.i.i.i.i.i.1.i.i = phi ptr [ %i.di, %_ZSt8_DestroyIN4llvm4xray10XRayRecordEEvPT_.exit.i.i.i.i.i.i.i.1.i.i ], [ %i.co, %bb.o ] ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.1.i.i, i64 56
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !34, !noalias !662 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.1.i.i, i64 72 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.1.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.1.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !35, !noalias !662
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #22, !noalias !662
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.1.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.1.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.1.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.1.i.i, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !170, !noalias !662 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.1.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.1.i.i, label %_ZSt8_DestroyIN4llvm4xray10XRayRecordEEvPT_.exit.i.i.i.i.i.i.i.1.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.1.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.1.i.i, i64 48
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !171, !noalias !662
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #22, !noalias !662
  br label %_ZSt8_DestroyIN4llvm4xray10XRayRecordEEvPT_.exit.i.i.i.i.i.i.i.1.i.i

_ZSt8_DestroyIN4llvm4xray10XRayRecordEEvPT_.exit.i.i.i.i.i.i.i.1.i.i: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.1.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.1.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i.i.i.i.1.i.i = icmp eq ptr %i.di, %i.cq
  br i1 %.not.i.i.i.i.i.i.i.1.i.i, label %_ZSt8_DestroyIPN4llvm4xray10XRayRecordEEvT_S4_.exit.i.i.i.i.i.1.i.i, label %.lr.ph.i.i.i.i.i.i.i.1.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4llvm4xray10XRayRecordEEvT_S4_.exit.i.i.i.i.i.1.i.i: ; preds = %_ZSt8_DestroyIN4llvm4xray10XRayRecordEEvPT_.exit.i.i.i.i.i.i.i.1.i.i, %bb.o
  %.not.i.i1.i.i.i.i.i.1.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i1.i.i.i.i.i.1.i.i, label %_ZN4llvm4xray5TraceaSEOS1_.exit.i.1.i.i, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN4llvm4xray10XRayRecordEEvT_S4_.exit.i.i.i.i.i.1.i.i
  %i.dj = ptrtoint ptr %i.cs to i64
  %i.dk = ptrtoint ptr %i.co to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.dl) #22, !noalias !662
  br label %_ZN4llvm4xray5TraceaSEOS1_.exit.i.1.i.i

_ZN4llvm4xray5TraceaSEOS1_.exit.i.1.i.i:          ; preds = %bb.q, %_ZSt8_DestroyIPN4llvm4xray10XRayRecordEEvT_S4_.exit.i.i.i.i.i.1.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !662
  call void @_ZN4llvm4xray13GraphRenderer7Factory16getGraphRendererEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.248") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %indvars.iv.i.sroa.gep7.i.i) #21, !noalias !662
  %i.dm = load i8, ptr %i.ca, align 8, !noalias !662 ; 2 uses
  %i.dn = trunc i8 %i.dm to i1                    ; 2 uses
  br i1 %i.dn, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.1.i.i, label %_ZN4llvm4xray13GraphRenderer6GraphTaSERKS2_.exit.i.1.i.i

_ZN4llvm4xray13GraphRenderer6GraphTaSERKS2_.exit.i.1.i.i: ; preds = %_ZN4llvm4xray5TraceaSEOS1_.exit.i.1.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21, !noalias !662
  call void @_ZN4llvm4xray13GraphRendererC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(368) %9, ptr noundef nonnull align 8 dereferenceable(368) %8), !noalias !662
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIiiENS_4xray13GraphRenderer9CallStatsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_(ptr noundef nonnull align 8 dereferenceable(208) %indvars.iv.i.sroa.gep1.i.i, ptr noundef nonnull align 8 dereferenceable(208) %9), !noalias !662
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 232
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_4xray13GraphRenderer13FunctionStatsENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS4_EEEEiS4_S6_S9_E8copyFromERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.cb), !noalias !662
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 256
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_8DenseSetIiNS_12DenseMapInfoIivEEEES4_NS_6detail12DenseMapPairIiS5_EEEEiS5_S4_S8_E8copyFromERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.cc), !noalias !662
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 280
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_8DenseSetIiNS_12DenseMapInfoIivEEEES4_NS_6detail12DenseMapPairIiS5_EEEEiS5_S4_S8_E8copyFromERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.cd), !noalias !662
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 304
end_hunk_0
