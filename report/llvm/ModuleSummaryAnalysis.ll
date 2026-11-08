Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ModuleSummaryAnalysis?download=true
inline.NumInlined: 6745
inline.NumDeleted: 3963
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_:bb.a
  %i.az = and i32 %i.ay, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1475

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1476

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !369
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !451
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !451
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.bf = zext i32 %i.ba to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bk, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !369
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEE4killEv.exit

_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm11GlobalValue14isInterposableEb(ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm12GlobalObject18getVCallVisibilityEv(ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL16findFuncPointersPKN4llvm8ConstantEmRKNS_6ModuleERNS_18ModuleSummaryIndexERSt6vectorINS_14VirtFuncOffsetESaIS9_EERKNS_14GlobalVariableE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(616) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(89) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.llvm::APSInt", align 8      ; 8 uses
  %7 = alloca %"class.llvm::APSInt", align 8      ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1482
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 255
  %i.h = icmp eq i32 %i.g, 15
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE9push_backEOS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #23 ; 4 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !215
  switch i8 %i.j, label %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE9push_backEOS1_.exit [
    i8 14, label %bb.d
    i8 15, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !176
  %i.m = load i8, ptr %i.l, align 8, !tbaa !215
  %i.n = icmp eq i8 %i.m, 14
  br i1 %i.n, label %bb.d, label %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = tail call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #23 ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 1
  %.not.i.i = icmp eq i64 %i.p, 18
  br i1 %.not.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.d
  %i.q = extractvalue { ptr, i64 } %i.o, 0        ; 2 uses
  %i.r = load i128, ptr %i.q, align 1
  %i.s = xor i128 %i.r, 156124302492711635605026811625993363295
  %i.t = getelementptr i8, ptr %i.q, i64 16
  %i.u = load i16, ptr %i.t, align 1
  %i.v = zext i16 %i.u to i128
  %i.w = xor i128 %i.v, 27745
  %i.x = or i128 %i.s, %i.w
  %i.y = icmp ne i128 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %.not160 = icmp eq i32 %i.z, 0
  br i1 %.not160, label %.critedge101, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %bb.d, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.aa = tail call i64 @_ZN4llvm18ModuleSummaryIndex20getOrInsertValueInfoEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(616) %3, ptr noundef nonnull %i.i) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !210 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !211
  %.not.i.i104 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i.i104, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !47
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %1, ptr %.sroa.5139.0..sroa_idx, align 8, !tbaa !141
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !210
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !210
  br label %.critedge101

bb.f:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ah = load ptr, ptr %4, align 8, !tbaa !209   ; 5 uses
  %i.ai = ptrtoint ptr %i.ac to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775792
  br i1 %i.al, label %bb.g, label %_ZNKSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #26
  unreachable

_ZNKSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.am = ashr exact i64 %i.ak, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 576460752303423487)
  %i.aq = select i1 %i.ao, i64 576460752303423487, i64 %i.ap ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #25 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak ; 2 uses
  store i64 %i.aa, ptr %i.at, align 8, !tbaa !47
  %.sroa.5139.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %1, ptr %.sroa.5139.0..sroa_idx140, align 8, !tbaa !141
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ac
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %i.as, %_ZNKSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %i.ah, %_ZNKSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !207, !alias.scope !1483
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ac
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1480

_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.as, %_ZNKSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !211
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.az) #24
  br label %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.as, ptr %4, align 8, !tbaa !209
  store ptr %i.aw, ptr %i.ab, align 8, !tbaa !210
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.ba, ptr %i.ad, align 8, !tbaa !211
  br label %.critedge101

_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %bb.c, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 5 uses
  %i.bc = load i8, ptr %0, align 8, !tbaa !215
  switch i8 %i.bc, label %.critedge101 [
    i8 12, label %bb.i
    i8 11, label %bb.n
    i8 19, label %bb.s
  ]

bb.i:                                             ; preds = %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE9push_backEOS1_.exit
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !1482 ; 3 uses
  %i.be = tail call noundef ptr @_ZNK4llvm10DataLayout15getStructLayoutEPNS_10StructTypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.bb, ptr noundef %i.bd) #23 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1487 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !1488 ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %.idx = shl nuw nsw i64 %i.bj, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  %.not152164 = icmp eq i32 %i.bi, 0
  br i1 %.not152164, label %.critedge101, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bn = getelementptr inbounds i8, ptr %0, i64 -8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph167, %_ZNK4llvm8TypeSizecvmEv.exit109
  %.sroa.0127.0166 = phi ptr [ %i.bg, %.lr.ph167 ], [ %i.ce, %_ZNK4llvm8TypeSizecvmEv.exit109 ]
  %.sroa.7130.0165 = phi i64 [ 0, %.lr.ph167 ], [ %i.cd, %_ZNK4llvm8TypeSizecvmEv.exit109 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.sroa.7130.0165 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.bo, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bp = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.bp, label %bb.k, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.36) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.j
  %i.bq = tail call noundef i32 @_ZNK4llvm12StructLayout26getElementContainingOffsetEm(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %.sroa.0.0.copyload.i) #23
  %i.br = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bs = and i32 %i.br, 1073741824
  %.not.i.i108 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i108, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !257
  br label %_ZNK4llvm8TypeSizecvmEv.exit109

bb.m:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.bu = and i32 %i.br, 268435455
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bw
  br label %_ZNK4llvm8TypeSizecvmEv.exit109

_ZNK4llvm8TypeSizecvmEv.exit109:                  ; preds = %bb.m, %bb.l
  %i.by = phi ptr [ %i.bt, %bb.l ], [ %i.bx, %bb.m ]
  %i.bz = zext i32 %i.bq to i64
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !176
  %i.cc = add i64 %.sroa.0.0.copyload.i, %1
  tail call fastcc void @_ZL16findFuncPointersPKN4llvm8ConstantEmRKNS_6ModuleERNS_18ModuleSummaryIndexERSt6vectorINS_14VirtFuncOffsetESaIS9_EERKNS_14GlobalVariableE(ptr noundef %i.cb, i64 noundef %i.cc, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(616) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(89) %5)
  %i.cd = add nuw nsw i64 %.sroa.7130.0165, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0127.0166, i64 8 ; 2 uses
  %.not152 = icmp eq ptr %i.ce, %i.bk
  br i1 %.not152, label %.critedge101, label %bb.j

bb.n:                                             ; preds = %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE9push_backEOS1_.exit
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !1482 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1490
  %i.ci = tail call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.bb, ptr noundef %i.ch) #23 ; 2 uses
  %.fca.0.extract16 = extractvalue { i64, i8 } %i.ci, 0
  %.fca.1.extract17 = extractvalue { i64, i8 } %i.ci, 1
  %i.cj = trunc nuw i8 %.fca.1.extract17 to i1
  br i1 %i.cj, label %bb.o, label %_ZNK4llvm8TypeSizecvmEv.exit111

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.36) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit111:                  ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1491 ; 2 uses
  %i.cm = and i64 %i.cl, 4294967295
  %.not98162 = icmp eq i64 %i.cm, 0
  br i1 %.not98162, label %.critedge101, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm8TypeSizecvmEv.exit111
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.co = getelementptr inbounds i8, ptr %0, i64 -8
  %i.cp = and i64 %i.cl, 4294967295
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_ZNK4llvm4User10getOperandEj.exit113
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK4llvm4User10getOperandEj.exit113 ] ; 3 uses
  %i.cq = load i32, ptr %i.cn, align 4            ; 2 uses
  %i.cr = and i32 %i.cq, 1073741824
  %.not.i.i112 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i112, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !257
  br label %_ZNK4llvm4User10getOperandEj.exit113

bb.r:                                             ; preds = %bb.p
  %i.ct = and i32 %i.cq, 268435455
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr inbounds [32 x i8], ptr %0, i64 %i.cv
  br label %_ZNK4llvm4User10getOperandEj.exit113

_ZNK4llvm4User10getOperandEj.exit113:             ; preds = %bb.q, %bb.r
  %i.cx = phi ptr [ %i.cs, %bb.q ], [ %i.cw, %bb.r ]
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %indvars.iv
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !176
  %i.da = mul i64 %.fca.0.extract16, %indvars.iv
  %i.db = add i64 %i.da, %1
  tail call fastcc void @_ZL16findFuncPointersPKN4llvm8ConstantEmRKNS_6ModuleERNS_18ModuleSummaryIndexERSt6vectorINS_14VirtFuncOffsetESaIS9_EERKNS_14GlobalVariableE(ptr noundef %i.cz, i64 noundef %i.db, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(616) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(89) %5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not98 = icmp eq i64 %indvars.iv.next, %i.cp
  br i1 %.not98, label %.critedge101, label %bb.p, !llvm.loop !1481

bb.s:                                             ; preds = %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EE9push_backEOS1_.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !260
  %.not96 = icmp eq i16 %i.dd, 39
  br i1 %.not96, label %bb.t, label %.critedge101

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = and i32 %i.df, 268435455
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds [32 x i8], ptr %0, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !176 ; 5 uses
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !215
  %.not158 = icmp eq i8 %i.dl, 19
  br i1 %.not158, label %bb.u, label %.critedge101

bb.u:                                             ; preds = %bb.t
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !260
  %i.do = icmp eq i16 %i.dn, 16
  br i1 %i.do, label %bb.v, label %.critedge101

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 1, ptr %i.dp, align 8, !tbaa !57
  store i64 0, ptr %6, align 8, !tbaa !47
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.dq, align 4, !tbaa !453
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 1, ptr %i.dr, align 8, !tbaa !57
  store i64 0, ptr %7, align 8, !tbaa !47
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.ds, align 4, !tbaa !453
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = and i32 %i.du, 268435455
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = getelementptr inbounds [32 x i8], ptr %i.dk, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !176
  %i.ea = call noundef zeroext i1 @_ZN4llvm26IsConstantOffsetFromGlobalEPNS_8ConstantERPNS_11GlobalValueERNS_5APIntERKNS_10DataLayoutEPPNS_18DSOLocalEquivalentE(ptr noundef %i.dz, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(912) %i.bb, ptr noundef null) #23
  br i1 %i.ea, label %bb.w, label %.critedge6

bb.w:                                             ; preds = %bb.v
  %i.eb = load i32, ptr %i.dt, align 4
  %i.ec = and i32 %i.eb, 268435455
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = getelementptr inbounds [32 x i8], ptr %i.dk, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !176
  %i.ei = call noundef zeroext i1 @_ZN4llvm26IsConstantOffsetFromGlobalEPNS_8ConstantERPNS_11GlobalValueERNS_5APIntERKNS_10DataLayoutEPPNS_18DSOLocalEquivalentE(ptr noundef %i.eh, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(912) %i.bb, ptr noundef null) #23
  %i.ej = load ptr, ptr %i.b, align 8
  %i.ek = icmp eq ptr %i.ej, %5
  %or.cond = select i1 %i.ei, i1 %i.ek, i1 false
  br i1 %or.cond, label %bb.x, label %.critedge6

bb.x:                                             ; preds = %bb.w
  %i.el = call noundef zeroext i1 @_ZNK4llvm6APSInteqEl(ptr noundef nonnull align 8 dereferenceable(13) %6, i64 noundef 0)
  br i1 %i.el, label %bb.y, label %.critedge6

bb.y:                                             ; preds = %bb.x
  %i.em = getelementptr inbounds i8, ptr %5, i64 -32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !176
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1482
  %i.eq = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.bb, ptr noundef %i.ep) #23 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.eq, 1
  %i.er = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.er, label %bb.z, label %_ZNK4llvm8TypeSizecvmEv.exit116

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.36) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit116:                  ; preds = %bb.y
  %.fca.0.extract = extractvalue { i64, i8 } %i.eq, 0
  %i.es = call noundef zeroext i1 @_ZNK4llvm6APSIntleEl(ptr noundef nonnull align 8 dereferenceable(13) %7, i64 noundef %.fca.0.extract)
  br i1 %i.es, label %bb.aa, label %.critedge6

bb.aa:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit116
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !139
  call fastcc void @_ZL16findFuncPointersPKN4llvm8ConstantEmRKNS_6ModuleERNS_18ModuleSummaryIndexERSt6vectorINS_14VirtFuncOffsetESaIS9_EERKNS_14GlobalVariableE(ptr noundef %i.et, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(616) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(89) %5)
  br label %.critedge6

.critedge6:                                       ; preds = %bb.x, %bb.w, %bb.v, %bb.aa, %_ZNK4llvm8TypeSizecvmEv.exit116
  %i.eu = load i32, ptr %i.dr, align 8, !tbaa !57
  %i.ev = icmp ugt i32 %i.eu, 64
  br i1 %i.ev, label %bb.ab, label %_ZN4llvm5APIntD2Ev.exit

bb.ab:                                            ; preds = %.critedge6
  %i.ew = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZN4llvm5APIntD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #24
  br label %_ZN4llvm5APIntD2Ev.exit
end_hunk_0
