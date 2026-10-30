Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SyntheticCountsUtils?download=true
inline.NumInlined: 2759
inline.NumDeleted: 1593
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !172  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !48
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !70   ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !70
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !70
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !489

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !57
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !70
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !70
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !70
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !70
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !490

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !491

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !48
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !173
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !173
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #17
  store i32 0, ptr %i.d, align 4, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm11GraphTraitsIPKNS_13CallGraphNodeEE11CGNGetValueESt4pairISt8optionalINS_14WeakTrackingVHEEPS1_E(ptr nofree noundef align 8 dereferenceable(40) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm12scc_iteratorIPKNS_9CallGraphENS_11GraphTraitsIS3_EEE16DFSVisitChildrenEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::pair", align 8        ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -24 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !170
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %.not15 = icmp eq ptr %i.h, %i.g
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.p = phi ptr [ %i.h, %.lr.ph ], [ %i.ca, %bb.k ] ; 5 uses
  %i.q = phi ptr [ %i.d, %.lr.ph ], [ %i.bw, %bb.k ]
  %i.r = phi ptr [ %i.b, %.lr.ph ], [ %i.bu, %bb.k ]
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds i8, ptr %i.r, i64 -16
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..0..sroa_idx.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.s, ptr %i.q, align 8, !tbaa !502
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 0, ptr %i.i, align 8, !tbaa !503
  %i.u = load i8, ptr %i.t, align 8, !tbaa !503, !range !93, !noundef !89
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %_ZNSt4pairISt8optionalIN4llvm14WeakTrackingVHEEPNS1_13CallGraphNodeEEC2ERKS6_.exit.i.i

bb.c:                                             ; preds = %bb.b
  store i64 6, ptr %1, align 8
  store ptr null, ptr %i.j, align 8, !tbaa !509
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !510  ; 2 uses
  store ptr %i.x, ptr %i.k, align 8, !tbaa !510
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN4llvm14WeakTrackingVHEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.z = inttoptr i64 %i.y to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.z) #17
  br label %_ZNSt22_Optional_payload_baseIN4llvm14WeakTrackingVHEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN4llvm14WeakTrackingVHEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  store i8 1, ptr %i.i, align 8, !tbaa !503
  br label %_ZNSt4pairISt8optionalIN4llvm14WeakTrackingVHEEPNS1_13CallGraphNodeEEC2ERKS6_.exit.i.i

_ZNSt4pairISt8optionalIN4llvm14WeakTrackingVHEEPNS1_13CallGraphNodeEEC2ERKS6_.exit.i.i: ; preds = %_ZNSt22_Optional_payload_baseIN4llvm14WeakTrackingVHEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !80
  store ptr %i.ab, ptr %i.l, align 8, !tbaa !80
  %i.ac = call noundef ptr %.sroa.2.0.copyload.i(ptr nofree noundef nonnull align 8 dereferenceable(40) %1) #17, !inline_history !492 ; 3 uses
  %i.ad = load i8, ptr %i.i, align 8, !tbaa !503, !range !93, !noundef !89
  %i.ae = trunc nuw i8 %i.ad to i1
  store i8 0, ptr %i.i, align 8, !tbaa !503
  %2 = load ptr, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i = icmp ne ptr %2, null
  %or.cond.not.i.i.i.i.i.i = select i1 %i.ae, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.e, label %_ZNK4llvm15mapped_iteratorIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt8optionalINS_14WeakTrackingVHEEPNS_13CallGraphNodeEESt6vectorIS9_SaIS9_EEEEPFPKS7_S9_ESH_EdeEv.exit

bb.e:                                             ; preds = %_ZNSt4pairISt8optionalIN4llvm14WeakTrackingVHEEPNS1_13CallGraphNodeEEC2ERKS6_.exit.i.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #17
  br label %_ZNK4llvm15mapped_iteratorIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt8optionalINS_14WeakTrackingVHEEPNS_13CallGraphNodeEESt6vectorIS9_SaIS9_EEEEPFPKS7_S9_ESH_EdeEv.exit

_ZNK4llvm15mapped_iteratorIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt8optionalINS_14WeakTrackingVHEEPNS_13CallGraphNodeEESt6vectorIS9_SaIS9_EEEEPFPKS7_S9_ESH_EdeEv.exit: ; preds = %_ZNSt4pairISt8optionalIN4llvm14WeakTrackingVHEEPNS1_13CallGraphNodeEEC2ERKS6_.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !49, !noalias !511 ; 3 uses
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !172, !noalias !511 ; 2 uses
  %i.ah = load i32, ptr %i.o, align 4, !tbaa !48, !noalias !511 ; 4 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm15mapped_iteratorIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt8optionalINS_14WeakTrackingVHEEPNS_13CallGraphNodeEESt6vectorIS9_SaIS9_EEEEPFPKS7_S9_ESH_EdeEv.exit
  %i.aj = add i32 %i.ah, -1                       ; 2 uses
  %i.ak = ptrtoint ptr %i.ac to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.aj, %i.ao                    ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !70, !noalias !512
  %i.au = and i32 %i.ap, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !81

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %i.ax = phi i64 [ %i.bd, %bb.g ], [ %i.aq, %bb.f ]
  %.017.i.i.i.i = phi i32 [ %i.bc, %bb.g ], [ %i.ap, %bb.f ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !57, !noalias !512
  %i.ba = icmp eq ptr %i.ac, %i.az
  br i1 %i.ba, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit, label %bb.g, !prof !56

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bb = add nuw i32 %.017.i.i.i.i, 1
  %i.bc = and i32 %i.bb, %i.aj                    ; 3 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 5
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !70, !noalias !512
  %i.bh = and i32 %i.bc, 31
  %i.bi = lshr i32 %i.bg, %i.bh
  %i.bj = trunc i32 %i.bi to i1
  br i1 %i.bj, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !82

.loopexit.i.i:                                    ; preds = %bb.g, %bb.f, %_ZNK4llvm15mapped_iteratorIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt8optionalINS_14WeakTrackingVHEEPNS_13CallGraphNodeEESt6vectorIS9_SaIS9_EEEEPFPKS7_S9_ESH_EdeEv.exit
  %i.bk = zext i32 %i.ah to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.bk
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre17 = zext i32 %i.ah to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre17, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit ], [ %i.bk, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.ay, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit ], [ %i.bl, %.loopexit.i.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %.pre-phi
  %i.bn = icmp eq ptr %.lcssa.sink.i.i, %i.bm
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit
  call void @_ZN4llvm12scc_iteratorIPKNS_9CallGraphENS_11GraphTraitsIS3_EEE11DFSVisitOneEPKNS_13CallGraphNodeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.ac)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !164
  br label %bb.k, !llvm.loop !501

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13CallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !514 ; 2 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !164 ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !171
  %i.bt = icmp ugt i32 %i.bs, %i.bp
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.bp, ptr %i.br, align 8, !tbaa !171
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.bu = phi ptr [ %i.bq, %bb.i ], [ %i.bq, %bb.j ], [ %.pre, %bb.h ] ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -32
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -24 ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !170
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !72
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !72 ; 2 uses
  %.not = icmp eq ptr %i.ca, %i.bz
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.k, %bb.a
  ret void
}

declare void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IPKN4llvm13CallGraphNodeESaIS3_EESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !59     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IPKN4llvm13CallGraphNodeESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

_ZNKSt6vectorIS_IPKN4llvm13CallGraphNodeESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55   ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !46     ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPKN4llvm13CallGraphNodeESaIS3_EEC2EmRKS4_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IPKN4llvm13CallGraphNodeESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.d, label %_ZNSt15__new_allocatorIPKN4llvm13CallGraphNodeEE8allocateEmPKv.exit.i.i.i.i, !prof !54

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt15__new_allocatorIPKN4llvm13CallGraphNodeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #20
  %.pre = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %.pre29 = load ptr, ptr %i.r, align 8, !tbaa !43
  %.pre30 = ptrtoint ptr %.pre29 to i64
  %.pre31 = ptrtoint ptr %.pre to i64
  br label %_ZNSt12_Vector_baseIPKN4llvm13CallGraphNodeESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIPKN4llvm13CallGraphNodeESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIPKN4llvm13CallGraphNodeEE8allocateEmPKv.exit.i.i.i.i, %_ZNKSt6vectorIS_IPKN4llvm13CallGraphNodeESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.pre-phi32 = phi i64 [ %.pre31, %_ZNSt15__new_allocatorIPKN4llvm13CallGraphNodeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIS_IPKN4llvm13CallGraphNodeESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit ]
  %.pre-phi = phi i64 [ %.pre30, %_ZNSt15__new_allocatorIPKN4llvm13CallGraphNodeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IPKN4llvm13CallGraphNodeESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit ]
  %i.z = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPKN4llvm13CallGraphNodeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIS_IPKN4llvm13CallGraphNodeESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %i.aa = phi ptr [ %i.y, %_ZNSt15__new_allocatorIPKN4llvm13CallGraphNodeEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNKSt6vectorIS_IPKN4llvm13CallGraphNodeESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !47
  %i.ae = sub i64 %.pre-phi, %.pre-phi32          ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 8
  br i1 %i.af, label %bb.e, label %bb.f, !prof !56

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPKN4llvm13CallGraphNodeESaIS3_EEC2EmRKS4_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aa, ptr align 8 %i.z, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIPKN4llvm13CallGraphNodeESaIS3_EEC2ERKS5_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPKN4llvm13CallGraphNodeESaIS3_EEC2EmRKS4_.exit.i
  %i.ag = icmp eq i64 %i.ae, 8
  br i1 %i.ag, label %bb.g, label %_ZNSt6vectorIPKN4llvm13CallGraphNodeESaIS3_EEC2ERKS5_.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !57
  store ptr %i.ah, ptr %i.aa, align 8, !tbaa !57
  br label %_ZNSt6vectorIPKN4llvm13CallGraphNodeESaIS3_EEC2ERKS5_.exit

_ZNSt6vectorIPKN4llvm13CallGraphNodeESaIS3_EEC2ERKS5_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !55
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IPKN4llvm13CallGraphNodeESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPKN4llvm13CallGraphNodeESaIS3_EEC2ERKS5_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt6vectorIPKN4llvm13CallGraphNodeESaIS3_EEC2ERKS5_.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt6vectorIPKN4llvm13CallGraphNodeESaIS3_EEC2ERKS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.aj = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !43, !alias.scope !523
  store <2 x ptr> %i.aj, ptr %.012.i.i.i, align 8, !tbaa !43, !alias.scope !522
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !47, !alias.scope !523
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !47, !alias.scope !522
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !523
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %1
end_hunk_0
