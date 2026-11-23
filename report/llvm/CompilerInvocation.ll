Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CompilerInvocation?download=true
inline.NumInlined: 19714
inline.NumDeleted: 4740
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8copyFromERKS9_:bb.a
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !649
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !650
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !251  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.s, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !634  ; 2 uses
  %magicptr.i.i.i = ptrtoint ptr %i.q to i64
  switch i64 %magicptr.i.i.i, label %bb.c [
    i64 -4096, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E10destroyAllEvENKUljE_clEj.exit.i
    i64 0, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E10destroyAllEvENKUljE_clEj.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b, %bb.b
  %i.r = add i32 %.0.i3.i, -1
  %i.s = and i32 %i.r, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.s, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !39

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !40

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !651  ; 2 uses
  %i.t = icmp eq i32 %.pr, 0
  br i1 %i.t, label %_ZN4llvm8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E10destroyAllEv.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !649
  %i.v = zext i32 %.pr to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = add nuw nsw i64 %i.v, 31
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741820
  %i.aa = add nuw nsw i64 %i.z, %i.w
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 8) #26
  store i32 0, ptr %i.a, align 4, !tbaa !651
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E10destroyAllEv.exit, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !648
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !651 ; 3 uses
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !651
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %_ZN4llvm8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit, label %bb.e

_ZN4llvm8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit: ; preds = %_ZN4llvm8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8copyFromERKSC_EUljE_EEvPKjjT_.exit

bb.e:                                             ; preds = %_ZN4llvm8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17deallocateBucketsEv.exit
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = add nuw nsw i64 %i.ae, 31
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = and i64 %i.ah, 1073741820
  %i.aj = add nuw nsw i64 %i.ai, %i.af
  %i.ak = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aj, i64 noundef 8) #26 ; 3 uses
  %i.al = load i32, ptr %i.a, align 4, !tbaa !651
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an ; 3 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !649
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !650
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !648
  store i32 %i.ar, ptr %i.ab, align 8, !tbaa !648
  %i.as = load ptr, ptr %1, align 8, !tbaa !649
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !650
  %i.av = add nuw nsw i64 %i.am, 31
  %i.aw = lshr i64 %i.av, 5                       ; 3 uses
  %i.ax = shl nuw nsw i64 %i.aw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %i.au, i64 %i.ax, i1 false)
  %.not.i16 = icmp eq i64 %i.aw, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8copyFromERKSC_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.e, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.e ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !251 ; 2 uses
  %.not11.i14 = icmp eq i32 %i.az, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ba = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8copyFromERKS9_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.az, %.lr.ph ], [ %i.bs, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8copyFromERKS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.bb = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.bc = or disjoint i32 %i.bb, %i.ba
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.bd ; 3 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.bd ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bi = load <2 x i32>, ptr %i.bh, align 8, !tbaa !251
  %i.bj = load i32, ptr %i.bh, align 8, !tbaa !635
  store <2 x i32> %i.bi, ptr %i.bg, align 8, !tbaa !251
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !634 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, inttoptr (i64 -4096 to ptr)
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.bk, ptr %i.be, align 8, !tbaa !634
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8copyFromERKS9_ENKUljE_clEj.exit

bb.h:                                             ; preds = %bb.f
  %i.bm = zext i32 %i.bj to i64
  %i.bn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bm) #25 ; 2 uses
  store ptr %i.bn, ptr %i.be, align 8, !tbaa !634
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !634
  %i.bp = load i32, ptr %i.bg, align 8, !tbaa !635
  %i.bq = zext i32 %i.bp to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %i.bo, i64 %i.bq, i1 false)
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8copyFromERKS9_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8copyFromERKS9_ENKUljE_clEj.exit: ; preds = %bb.g, %bb.h
  %i.br = add i32 %.0.i15, -1
  %i.bs = and i32 %i.br, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bs, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.f, !llvm.loop !3304

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8copyFromERKS9_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.aw
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8copyFromERKSC_EUljE_EEvPKjjT_.exit, label %.lr.ph19, !llvm.loop !3305

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8copyFromERKSC_EUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.e, %_ZN4llvm8DenseMapINS_16CachedHashStringENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_16CachedHashStringEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !135  ; 5 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !135  ; 4 uses
  %i.h = zext i32 %i.g to i64                     ; 4 uses
  %.not = icmp ult i32 %i.g, %i.d
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not29 = icmp eq i32 %i.d, 0
  br i1 %.not29, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !134
  %i.j = load ptr, ptr %0, align 8, !tbaa !134
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i
  %.014.i.i.i.i.i = phi i64 [ %i.w, %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i ], [ %i.e, %bb.d ] ; 2 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.v, %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i ], [ %i.j, %bb.d ] ; 4 uses
  %.0912.i.i.i.i.i = phi ptr [ %i.u, %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i ], [ %i.i, %bb.d ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0912.i.i.i.i.i, i64 8 ; 2 uses
  %i.l = load <2 x i32>, ptr %i.k, align 8, !tbaa !251
  %i.m = load ptr, ptr %.0912.i.i.i.i.i, align 8, !tbaa !634 ; 2 uses
  %i.n = icmp eq ptr %i.m, inttoptr (i64 -4096 to ptr)
  br i1 %i.n, label %_ZN4llvm16CachedHashStringC2ERKS0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = load i32, ptr %i.k, align 8, !tbaa !635
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #25 ; 2 uses
  %i.r = load ptr, ptr %.0912.i.i.i.i.i, align 8, !tbaa !634
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.r, i64 %i.p, i1 false)
  br label %_ZN4llvm16CachedHashStringC2ERKS0_.exit.i.i.i.i.i

_ZN4llvm16CachedHashStringC2ERKS0_.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.m, %.lr.ph.i.i.i.i.i ]
  %i.s = load ptr, ptr %.0813.i.i.i.i.i, align 8, !tbaa !282 ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %.0813.i.i.i.i.i, align 8, !tbaa !282
  %i.t = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 8
  store <2 x i32> %i.l, ptr %i.t, align 8, !tbaa !251
  %magicptr.i.i.i.i.i.i = ptrtoint ptr %i.s to i64
  switch i64 %magicptr.i.i.i.i.i.i, label %bb.f [
    i64 -4096, label %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i
    i64 0, label %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i
  ]

bb.f:                                             ; preds = %_ZN4llvm16CachedHashStringC2ERKS0_.exit.i.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #27
  br label %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i

_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i:    ; preds = %bb.f, %_ZN4llvm16CachedHashStringC2ERKS0_.exit.i.i.i.i.i, %_ZN4llvm16CachedHashStringC2ERKS0_.exit.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0912.i.i.i.i.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 16 ; 2 uses
  %i.w = add nsw i64 %.014.i.i.i.i.i, -1
  %i.x = icmp sgt i64 %.014.i.i.i.i.i, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !3306

bb.g:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %0, align 8, !tbaa !134    ; 2 uses
  br label %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit

_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit.loopexit: ; preds = %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !134
  %.pre40 = load i32, ptr %i.f, align 8, !tbaa !135
  %.pre43 = zext i32 %.pre40 to i64
  br label %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit

_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit: ; preds = %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit.loopexit, %bb.g
  %.pre-phi = phi i64 [ %.pre43, %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit.loopexit ], [ %i.h, %bb.g ]
  %i.z = phi ptr [ %.pre, %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit.loopexit ], [ %i.y, %bb.g ]
  %.0 = phi ptr [ %i.v, %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit.loopexit ], [ %i.y, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.pre-phi ; 2 uses
  %.not4.i = icmp eq ptr %.0, %i.aa
  br i1 %.not4.i, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit, %_ZN4llvm16CachedHashStringD2Ev.exit.i
  %.05.i = phi ptr [ %i.ab, %_ZN4llvm16CachedHashStringD2Ev.exit.i ], [ %i.aa, %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit ]
  %i.ab = getelementptr inbounds i8, ptr %.05.i, i64 -16 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !634 ; 2 uses
  %magicptr.i.i = ptrtoint ptr %i.ac to i64
  switch i64 %magicptr.i.i, label %bb.h [
    i64 -4096, label %_ZN4llvm16CachedHashStringD2Ev.exit.i
    i64 0, label %_ZN4llvm16CachedHashStringD2Ev.exit.i
  ]

bb.h:                                             ; preds = %.lr.ph.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #27
  br label %_ZN4llvm16CachedHashStringD2Ev.exit.i

_ZN4llvm16CachedHashStringD2Ev.exit.i:            ; preds = %bb.h, %.lr.ph.i, %.lr.ph.i
  %.not.i = icmp eq ptr %.0, %i.ab
  br i1 %.not.i, label %.sink.split, label %.lr.ph.i, !llvm.loop !37

bb.i:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !136
  %i.af = icmp ult i32 %i.ae, %i.d
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %0, align 8, !tbaa !134   ; 2 uses
  %.not4.i.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i.i, label %_ZN4llvm15SmallVectorImplINS_16CachedHashStringEE5clearEv.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.j
  %.idx.i = shl nuw nsw i64 %i.h, 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm16CachedHashStringD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ai, %_ZN4llvm16CachedHashStringD2Ev.exit.i.i ], [ %i.ah, %.lr.ph.i.preheader.i ]
  %i.ai = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !634 ; 2 uses
  %magicptr.i.i.i = ptrtoint ptr %i.aj to i64
  switch i64 %magicptr.i.i.i, label %bb.k [
    i64 -4096, label %_ZN4llvm16CachedHashStringD2Ev.exit.i.i
    i64 0, label %_ZN4llvm16CachedHashStringD2Ev.exit.i.i
  ]

bb.k:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.aj) #27
  br label %_ZN4llvm16CachedHashStringD2Ev.exit.i.i

_ZN4llvm16CachedHashStringD2Ev.exit.i.i:          ; preds = %bb.k, %.lr.ph.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplINS_16CachedHashStringEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !37

_ZN4llvm15SmallVectorImplINS_16CachedHashStringEE5clearEv.exit: ; preds = %_ZN4llvm16CachedHashStringD2Ev.exit.i.i, %bb.j
  store i32 0, ptr %i.f, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ak, i64 noundef %i.e, i64 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26 ; 4 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !134   ; 5 uses
  %i.an = load i32, ptr %i.f, align 8, !tbaa !135 ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %.idx.i.i = shl nuw nsw i64 %i.ao, 4            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_16CachedHashStringELb0EE19moveElementsForGrowEPS1_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN4llvm15SmallVectorImplINS_16CachedHashStringEE5clearEv.exit
  %i.aq = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.ar = lshr exact i64 %i.aq, 4
  %i.as = add nuw nsw i64 %i.ar, 1
  %xtraiter = and i64 %i.as, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.at = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i.i.prol, align 8, !tbaa !634
  store ptr %i.at, ptr %.09.i.i.i.i.i.i.i.prol, align 8, !tbaa !634
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.prol, i64 8
  %i.aw = load <2 x i32>, ptr %i.av, align 8, !tbaa !251
  store <2 x i32> %i.aw, ptr %i.au, align 8, !tbaa !251
  store ptr inttoptr (i64 -4096 to ptr), ptr %.sroa.04.08.i.i.i.i.i.i.i.prol, align 8, !tbaa !634
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !3307

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.04.08.i.i.i.i.i.i.i.unr = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.az = icmp ult i64 %i.aq, 48
  br i1 %i.az, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %i.ba = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !tbaa !634
  store ptr %i.ba, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !634
  %i.bb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8
  %i.bd = load <2 x i32>, ptr %i.bc, align 8, !tbaa !251
  store <2 x i32> %i.bd, ptr %i.bb, align 8, !tbaa !251
  store ptr inttoptr (i64 -4096 to ptr), ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !tbaa !634
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !634
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !634
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 24
  %i.bj = load <2 x i32>, ptr %i.bi, align 8, !tbaa !251
  store <2 x i32> %i.bj, ptr %i.bh, align 8, !tbaa !251
  store ptr inttoptr (i64 -4096 to ptr), ptr %i.be, align 8, !tbaa !634
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !634
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !634
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 40
  %i.bp = load <2 x i32>, ptr %i.bo, align 8, !tbaa !251
  store <2 x i32> %i.bp, ptr %i.bn, align 8, !tbaa !251
  store ptr inttoptr (i64 -4096 to ptr), ptr %i.bk, align 8, !tbaa !634
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 48
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !634
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !634
  %i.bt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 56
  %i.bv = load <2 x i32>, ptr %i.bu, align 8, !tbaa !251
  store <2 x i32> %i.bv, ptr %i.bt, align 8, !tbaa !251
  store ptr inttoptr (i64 -4096 to ptr), ptr %i.bq, align 8, !tbaa !634
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.bw, %i.ap
  br i1 %.not.i.i.i.i.i.i.i.3, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !36

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.by, %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.preheader ]
  %i.by = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !634 ; 2 uses
  %magicptr.i.i.i.i = ptrtoint ptr %i.bz to i64
  switch i64 %magicptr.i.i.i.i, label %bb.l [
    i64 -4096, label %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i
    i64 0, label %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i
  ]

bb.l:                                             ; preds = %.lr.ph.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #27
  br label %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i

_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i:        ; preds = %bb.l, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.am, %i.by
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_16CachedHashStringELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZN4llvm23SmallVectorTemplateBaseINS_16CachedHashStringELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i: ; preds = %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !134
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_16CachedHashStringELb0EE19moveElementsForGrowEPS1_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_16CachedHashStringELb0EE19moveElementsForGrowEPS1_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_16CachedHashStringELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i, %_ZN4llvm15SmallVectorImplINS_16CachedHashStringEE5clearEv.exit
  %i.ca = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_16CachedHashStringELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i ], [ %i.am, %_ZN4llvm15SmallVectorImplINS_16CachedHashStringEE5clearEv.exit ] ; 2 uses
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !273
  %i.cc = icmp eq ptr %i.ca, %i.ak
  br i1 %i.cc, label %_ZN4llvm23SmallVectorTemplateBaseINS_16CachedHashStringELb0EE4growEm.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_16CachedHashStringELb0EE19moveElementsForGrowEPS1_.exit.i
  call void @free(ptr noundef %i.ca) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_16CachedHashStringELb0EE4growEm.exit

_ZN4llvm23SmallVectorTemplateBaseINS_16CachedHashStringELb0EE4growEm.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_16CachedHashStringELb0EE19moveElementsForGrowEPS1_.exit.i, %bb.m
  store ptr %i.al, ptr %0, align 8, !tbaa !134
  %i.cd = trunc i64 %i.cb to i32
  store i32 %i.cd, ptr %i.ad, align 4, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit39

bb.n:                                             ; preds = %bb.i
  %.not28 = icmp eq i32 %i.g, 0
  %.pre42 = load ptr, ptr %0, align 8, !tbaa !134 ; 2 uses
  br i1 %.not28, label %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit39, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = load ptr, ptr %1, align 8, !tbaa !134
  br label %.lr.ph.i.i.i.i.i31

.lr.ph.i.i.i.i.i31:                               ; preds = %bb.o, %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i38
  %.014.i.i.i.i.i32 = phi i64 [ %i.cr, %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i38 ], [ %i.h, %bb.o ] ; 2 uses
  %.0813.i.i.i.i.i33 = phi ptr [ %i.cq, %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i38 ], [ %.pre42, %bb.o ] ; 4 uses
  %.0912.i.i.i.i.i34 = phi ptr [ %i.cp, %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i38 ], [ %i.ce, %bb.o ] ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0912.i.i.i.i.i34, i64 8 ; 2 uses
  %i.cg = load <2 x i32>, ptr %i.cf, align 8, !tbaa !251
  %i.ch = load ptr, ptr %.0912.i.i.i.i.i34, align 8, !tbaa !634 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, inttoptr (i64 -4096 to ptr)
  br i1 %i.ci, label %_ZN4llvm16CachedHashStringC2ERKS0_.exit.i.i.i.i.i35, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i31
  %i.cj = load i32, ptr %i.cf, align 8, !tbaa !635
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #25 ; 2 uses
  %i.cm = load ptr, ptr %.0912.i.i.i.i.i34, align 8, !tbaa !634
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr align 1 %i.cm, i64 %i.ck, i1 false)
  br label %_ZN4llvm16CachedHashStringC2ERKS0_.exit.i.i.i.i.i35

_ZN4llvm16CachedHashStringC2ERKS0_.exit.i.i.i.i.i35: ; preds = %bb.p, %.lr.ph.i.i.i.i.i31
  %.sroa.0.0.i.i.i.i.i36 = phi ptr [ %i.cl, %bb.p ], [ %i.ch, %.lr.ph.i.i.i.i.i31 ]
  %i.cn = load ptr, ptr %.0813.i.i.i.i.i33, align 8, !tbaa !282 ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i.i36, ptr %.0813.i.i.i.i.i33, align 8, !tbaa !282
  %i.co = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i33, i64 8
  store <2 x i32> %i.cg, ptr %i.co, align 8, !tbaa !251
  %magicptr.i.i.i.i.i.i37 = ptrtoint ptr %i.cn to i64
  switch i64 %magicptr.i.i.i.i.i.i37, label %bb.q [
    i64 -4096, label %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i38
    i64 0, label %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i38
  ]

bb.q:                                             ; preds = %_ZN4llvm16CachedHashStringC2ERKS0_.exit.i.i.i.i.i35
  tail call void @_ZdaPv(ptr noundef nonnull %i.cn) #27
  br label %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i38

_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i38:  ; preds = %bb.q, %_ZN4llvm16CachedHashStringC2ERKS0_.exit.i.i.i.i.i35, %_ZN4llvm16CachedHashStringC2ERKS0_.exit.i.i.i.i.i35
  %i.cp = getelementptr inbounds nuw i8, ptr %.0912.i.i.i.i.i34, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i33, i64 16
  %i.cr = add nsw i64 %.014.i.i.i.i.i32, -1
  %i.cs = icmp sgt i64 %.014.i.i.i.i.i32, 1
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i31, label %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit39.loopexit, !llvm.loop !3306

_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit39.loopexit: ; preds = %_ZN4llvm16CachedHashStringD2Ev.exit.i.i.i.i.i38
  %.pre41 = load ptr, ptr %0, align 8, !tbaa !134
  br label %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit39

_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit39: ; preds = %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit39.loopexit, %bb.n, %_ZN4llvm23SmallVectorTemplateBaseINS_16CachedHashStringELb0EE4growEm.exit
  %i.ct = phi ptr [ %i.al, %_ZN4llvm23SmallVectorTemplateBaseINS_16CachedHashStringELb0EE4growEm.exit ], [ %.pre42, %bb.n ], [ %.pre41, %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit39.loopexit ]
  %.022 = phi i64 [ 0, %_ZN4llvm23SmallVectorTemplateBaseINS_16CachedHashStringELb0EE4growEm.exit ], [ 0, %bb.n ], [ %i.h, %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit39.loopexit ] ; 3 uses
  %i.cu = load ptr, ptr %1, align 8, !tbaa !134   ; 2 uses
  %i.cv = load i32, ptr %i.c, align 8, !tbaa !135
  %i.cw = zext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cw
  %.not9.i.i.i.i = icmp samesign eq i64 %.022, %i.cw
  br i1 %.not9.i.i.i.i, label %.sink.split, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit39
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %.022
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.022
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN4llvm16CachedHashStringEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.dm, %_ZSt10_ConstructIN4llvm16CachedHashStringEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.cy, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %.0810.i.i.i.i = phi ptr [ %i.dl, %_ZSt10_ConstructIN4llvm16CachedHashStringEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.cz, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.dc = load <2 x i32>, ptr %i.db, align 8, !tbaa !251
  %i.dd = load i32, ptr %i.db, align 8, !tbaa !635
  store <2 x i32> %i.dc, ptr %i.da, align 8, !tbaa !251
  %i.de = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !634 ; 2 uses
  %i.df = icmp eq ptr %i.de, inttoptr (i64 -4096 to ptr)
  br i1 %i.df, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  store ptr %i.de, ptr %.011.i.i.i.i, align 8, !tbaa !634
  br label %_ZSt10_ConstructIN4llvm16CachedHashStringEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dg = zext i32 %i.dd to i64
  %i.dh = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dg) #25 ; 2 uses
  store ptr %i.dh, ptr %.011.i.i.i.i, align 8, !tbaa !634
  %i.di = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !634
  %i.dj = load i32, ptr %i.da, align 8, !tbaa !635
  %i.dk = zext i32 %i.dj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr align 1 %i.di, i64 %i.dk, i1 false)
  br label %_ZSt10_ConstructIN4llvm16CachedHashStringEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4llvm16CachedHashStringEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %i.dl = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.dl, %i.cx
  br i1 %.not.i.i.i.i, label %.sink.split, label %.lr.ph.i.i.i.i, !llvm.loop !3308

.sink.split:                                      ; preds = %_ZN4llvm16CachedHashStringD2Ev.exit.i, %_ZSt10_ConstructIN4llvm16CachedHashStringEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit39, %_ZSt4copyIPKN4llvm16CachedHashStringEPS1_ET0_T_S6_S5_.exit
  store i32 %i.d, ptr %i.f, align 8, !tbaa !135
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang19PreprocessorOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(352) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.g, ptr noundef nonnull align 8 dereferenceable(6) %i.h, i64 6, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !69
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !272  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load i64, ptr %i.m, align 8, !tbaa !72   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.n, ptr %i.b, align 8, !tbaa !273
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #26 ; 2 uses
  store ptr %i.p, ptr %i.i, align 8, !tbaa !272
  %i.q = load i64, ptr %i.b, align 8, !tbaa !273
  store i64 %i.q, ptr %i.k, align 8, !tbaa !92
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.r = phi ptr [ %i.p, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  switch i64 %i.n, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !92
  store i8 %i.s, ptr %i.r, align 1, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.t = load i64, ptr %i.b, align 8, !tbaa !273  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.t, ptr %i.u, align 8, !tbaa !72
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !272
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !69
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !272 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !72 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !273
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %bb.e, label %._crit_edge.i.i15

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !272
  %i.af = load i64, ptr %i.a, align 8, !tbaa !273
  store i64 %i.af, ptr %i.z, align 8, !tbaa !92
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ag = phi ptr [ %i.ae, %bb.e ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.ac, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit16
  ]

bb.f:                                             ; preds = %._crit_edge.i.i15
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !92
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit16

bb.g:                                             ; preds = %._crit_edge.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit16: ; preds = %._crit_edge.i.i15, %bb.f, %bb.g
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !273 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !72
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !272
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ao, ptr noundef nonnull align 8 dereferenceable(7) %i.ap, i64 7, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !99
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !100
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !101
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !102
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i64 0, ptr %i.au, align 8, !tbaa !170
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !100 ; 2 uses
end_hunk_0
