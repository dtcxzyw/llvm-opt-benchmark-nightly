Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Speculation?download=true
inline.NumInlined: 2256
inline.NumDeleted: 1277
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj:bb.a
  %i.an = load i32, ptr %i.am, align 4, !tbaa !19 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !25 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %notsub.i.i.i.i.i.i = add i64 %i.au, -1
  %i.av = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.av, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !241

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !242

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !189 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %2, align 16, !tbaa !180
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #14
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !180    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !189  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !180
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !189
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !19   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !19 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !302

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr null, ptr %i.at, align 8, !tbaa !25
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !37
  store ptr %i.au, ptr %i.at, align 8, !tbaa !37
  store ptr null, ptr %i.u, align 8, !tbaa !37
  %i.av = shl nuw i32 1, %.lcssa.i
  %i.aw = or i32 %i.av, %.lcssa11.i
  store i32 %i.aw, ptr %i.as, align 4, !tbaa !19
  %i.ax = add i32 %.0.i15, -1
  %i.ay = and i32 %i.ax, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !303

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !304

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !189
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.az = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !190
  %i.bd = icmp eq i32 %i.az, 0
  br i1 %i.bd, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.be = zext i32 %i.az to i64                   ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bj, i64 noundef 8) #14
  store i32 0, ptr %i.d, align 4, !tbaa !189
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 576460752303423487
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !238
  %i.d = load ptr, ptr %0, align 8, !tbaa !233    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE11_M_allocateEm.exit.i, label %bb.g

_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !236  ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 4
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #16 ; 4 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE20_M_allocate_and_copyIPKS5_EEPS5_mT_SC_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.p = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !25 ; 3 uses
  store ptr %i.p, ptr %.011.i.i.i.i.i, align 8, !tbaa !25
  %i.q = ptrtoint ptr %i.p to i64
  %notsub.i.i.i.i.i.i.i.i.i.i = add i64 %i.q, -1
  %i.r = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.r, label %bb.d, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = atomicrmw add ptr %i.s, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !270
  store i32 %i.w, ptr %i.u, align 8, !tbaa !270
  %i.x = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE20_M_allocate_and_copyIPKS5_EEPS5_mT_SC_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !305

_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE20_M_allocate_and_copyIPKS5_EEPS5_mT_SC_.exit: ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE11_M_allocateEm.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !233   ; 3 uses
  %.pre8 = load ptr, ptr %i.j, align 8, !tbaa !236 ; 2 uses
  %.not4.i.i = icmp eq ptr %.pre, %.pre8
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE20_M_allocate_and_copyIPKS5_EEPS5_mT_SC_.exit, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i ], [ %.pre, %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE20_M_allocate_and_copyIPKS5_EEPS5_mT_SC_.exit ] ; 2 uses
  %i.z = load ptr, ptr %.05.i.i, align 8, !tbaa !25 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.aa, -1
  %i.ab = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.ab, label %bb.e, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.ae, %.pre8
  br i1 %.not.i.i7, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !237

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !233
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split, %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE20_M_allocate_and_copyIPKS5_EEPS5_mT_SC_.exit
  %2 = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split ], [ %.pre, %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE20_M_allocate_and_copyIPKS5_EEPS5_mT_SC_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !238
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %2 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef %i.ai) #17
  br label %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !233
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.aj, ptr %i.j, align 8, !tbaa !236
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %1
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !238
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !236  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !233    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !37
  store ptr %i.r, ptr %i.q, align 8, !tbaa !37
  store ptr null, ptr %2, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !270
  store i32 %i.u, ptr %i.s, align 8, !tbaa !270
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %i.v = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !25 ; 3 uses
  store ptr %i.v, ptr %.011.i.i.i.i.i, align 8, !tbaa !25
  %i.w = ptrtoint ptr %i.v to i64
  %notsub.i.i.i.i.i.i.i.i.i.i = add i64 %i.w, -1
  %i.x = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.x, label %bb.c, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = atomicrmw add ptr %i.y, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !270
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !270
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !305

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.ae, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23
  %.011.i.i.i.i.i20 = phi ptr [ %i.ap, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %i.af, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 3 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.ao, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 3 uses
  %i.ag = load ptr, ptr %.0810.i.i.i.i.i21, align 8, !tbaa !25 ; 3 uses
  store ptr %i.ag, ptr %.011.i.i.i.i.i20, align 8, !tbaa !25
  %i.ah = ptrtoint ptr %i.ag to i64
  %notsub.i.i.i.i.i.i.i.i.i.i22 = add i64 %i.ah, -1
  %i.ai = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i22, -32
  br i1 %i.ai, label %bb.d, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = atomicrmw add ptr %i.aj, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23: ; preds = %bb.d, %.lr.ph.i.i.i.i.i19
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !270
  store i32 %i.an, ptr %i.al, align 8, !tbaa !270
  %i.ao = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i24, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26, label %.lr.ph.i.i.i.i.i19, !llvm.loop !305

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26: ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i.i.i.i25 = phi ptr [ %i.af, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.ap, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.av, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26 ] ; 2 uses
  %i.aq = load ptr, ptr %.05.i.i, align 8, !tbaa !25 ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.ar, -1
  %i.as = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.as, label %bb.e, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = atomicrmw sub ptr %i.at, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !237

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !238
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.az) #17
  br label %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !233
  store ptr %.0.lcssa.i.i.i.i.i25, ptr %i.a, align 8, !tbaa !236
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !238
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZNS4_10Speculator13launchCompileENS4_12ExecutorAddrEEUlSC_E_SH_EET_NSD_8CalledAsIT0_EEENUlPKSD_RSC_E_8__invokeESN_SO_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(25) %1) #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEE9takeErrorEv.exit.i.i, label %_ZZN4llvm3orc10Speculator13launchCompileENS0_12ExecutorAddrEENKUlNS_8ExpectedINS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEEEEE_clESD_.exit.i

_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEE9takeErrorEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !306    ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !54
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZNS4_10Speculator13launchCompileENS4_12ExecutorAddrEEUlSC_E_SH_EET_NSD_8CalledAsIT0_EEENKUlPKSD_RSC_E_clESN_SO_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEE9takeErrorEv.exit.i.i
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %0, align 8, !tbaa !307
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !222, !nonnull !106, !align !107 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %i.e, ptr %2, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !309
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %2) #14, !inline_history !311
  %i.l = load ptr, ptr %2, align 8, !tbaa !70     ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN4llvm5ErrorD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #14, !inline_history !312
  br label %_ZN4llvm5ErrorD2Ev.exit.i.i

_ZN4llvm5ErrorD2Ev.exit.i.i:                      ; preds = %bb.c, %bb.b
end_hunk_0
