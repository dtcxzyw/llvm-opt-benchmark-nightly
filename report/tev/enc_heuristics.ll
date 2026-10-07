Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_heuristics?download=true
inline.NumInlined: 3479
inline.NumDeleted: 1819
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN3jxl17PassesSharedStateC2EP22JxlMemoryManagerStruct:.lr.ph.i.i.i.i
_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i, %.lr.ph.i.i.i.i
  %i.al = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #26, !noalias !843 ; 10 uses
  store ptr %1, ptr %i.al, align 8, !tbaa !260, !noalias !843
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !261, !noalias !843
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i32 1, ptr %i.an, align 8, !tbaa !262, !noalias !843
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  tail call void @_ZN3jxl22YCbCrChromaSubsamplingC1Ev(ptr noundef nonnull align 8 dereferenceable(22) %i.ao) #28, !noalias !843
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ap, i8 0, i64 18, i1 false), !noalias !843
  store i32 2, ptr %i.aq, align 4, !tbaa !263, !noalias !843
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ar, i8 0, i64 200, i1 false), !noalias !843
  tail call void @_ZN3jxl13ColorEncodingC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.as) #28, !noalias !843
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i8 0, i64 32, i1 false), !noalias !843
  %i.au = load ptr, ptr %.ptr.1.i, align 8, !tbaa !353 ; 3 uses
  store ptr %i.al, ptr %.ptr.1.i, align 8, !tbaa !353
  %.not.i.i.1 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.1, label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.1, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.1

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.1: ; preds = %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.au) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 504) #25
  br label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.1

_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.1: ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.1, %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit
  %i.av = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #26, !noalias !843 ; 10 uses
  store ptr %1, ptr %i.av, align 8, !tbaa !260, !noalias !843
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !261, !noalias !843
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i32 1, ptr %i.ax, align 8, !tbaa !262, !noalias !843
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  tail call void @_ZN3jxl22YCbCrChromaSubsamplingC1Ev(ptr noundef nonnull align 8 dereferenceable(22) %i.ay) #28, !noalias !843
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.az, i8 0, i64 18, i1 false), !noalias !843
  store i32 2, ptr %i.ba, align 4, !tbaa !263, !noalias !843
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bb, i8 0, i64 200, i1 false), !noalias !843
  tail call void @_ZN3jxl13ColorEncodingC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.bc) #28, !noalias !843
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i8 0, i64 32, i1 false), !noalias !843
  %i.be = load ptr, ptr %.ptr.2.i, align 8, !tbaa !353 ; 3 uses
  store ptr %i.av, ptr %.ptr.2.i, align 8, !tbaa !353
  %.not.i.i.2 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.2, label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.2, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.2

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.2: ; preds = %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.1
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.be) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 504) #25
  br label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.2

_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.2: ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.2, %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.1
  %i.bf = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #26, !noalias !843 ; 10 uses
  store ptr %1, ptr %i.bf, align 8, !tbaa !260, !noalias !843
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr null, ptr %i.bg, align 8, !tbaa !261, !noalias !843
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i32 1, ptr %i.bh, align 8, !tbaa !262, !noalias !843
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  tail call void @_ZN3jxl22YCbCrChromaSubsamplingC1Ev(ptr noundef nonnull align 8 dereferenceable(22) %i.bi) #28, !noalias !843
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.bj, i8 0, i64 18, i1 false), !noalias !843
  store i32 2, ptr %i.bk, align 4, !tbaa !263, !noalias !843
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bl, i8 0, i64 200, i1 false), !noalias !843
  tail call void @_ZN3jxl13ColorEncodingC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.bm) #28, !noalias !843
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i8 0, i64 32, i1 false), !noalias !843
  %i.bo = load ptr, ptr %.ptr.3.i, align 8, !tbaa !353 ; 3 uses
  store ptr %i.bf, ptr %.ptr.3.i, align 8, !tbaa !353
  %.not.i.i.3 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.3, label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.3, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.3

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.3: ; preds = %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.2
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.bo) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 504) #25
  br label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.3

_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.3: ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.3, %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.2
  ret void
}

declare void @_ZN3jxl9QuantizerC1ERKNS_15DequantMatricesE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK3jxl8ACImageTIiE4TypeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3jxl8ACImageTIiE8PlaneRowEmmm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.f, i64 64) ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.g, i64 64) ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK3jxl8ACImageTIiE8PlaneRowEmmm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.f, i64 64) ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.g, i64 64) ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK3jxl8ACImageTIiE12PixelsPerRowEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92
  %i.c = lshr i64 %i.b, 2
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiE8ZeroFillEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !89   ; 2 uses
  %.not13.i = icmp eq i32 %i.d, 0
  br i1 %.not13.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.g
  %.not13.1.i = icmp eq i32 %i.at, 0
  br i1 %.not13.1.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = icmp eq i32 %.pr.i, 0
  br i1 %i.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.split.1.i

.lr.ph.split.1.i:                                 ; preds = %.lr.ph.1.i, %bb.c
  %.pr41.i5 = phi i32 [ %.pr41.i, %bb.c ], [ %.pr.i, %.lr.ph.1.i ]
  %i.j = phi i32 [ %i.r, %bb.c ], [ %i.at, %.lr.ph.1.i ]
  %i.k = phi i32 [ %i.s, %bb.c ], [ %.pr.i, %.lr.ph.1.i ] ; 2 uses
  %.011.1.i = phi i64 [ %i.t, %bb.c ], [ 0, %.lr.ph.1.i ] ; 2 uses
  %.not.1.i = icmp eq i32 %i.k, 0
  br i1 %.not.1.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.1.i
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !91
  %i.n = load i64, ptr %i.c, align 8, !tbaa !92
  %i.o = mul i64 %i.n, %.011.1.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.q, i1 false)
  %.pre17.i = load i32, ptr %i.a, align 8, !tbaa !88 ; 2 uses
  %.pre19.i = load i32, ptr %i.b, align 4, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.1.i
  %.pr41.i = phi i32 [ %.pre17.i, %bb.b ], [ %.pr41.i5, %.lr.ph.split.1.i ] ; 3 uses
  %i.r = phi i32 [ %.pre19.i, %bb.b ], [ %i.j, %.lr.ph.split.1.i ] ; 4 uses
  %i.s = phi i32 [ %.pre17.i, %bb.b ], [ 0, %.lr.ph.split.1.i ]
  %i.t = add nuw nsw i64 %.011.1.i, 1             ; 2 uses
  %i.u = zext i32 %i.r to i64
  %i.v = icmp samesign ult i64 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.split.1.i, label %._crit_edge.1.i, !llvm.loop !844

._crit_edge.1.i:                                  ; preds = %bb.c
  %.not13.2.i = icmp eq i32 %i.r, 0
  br i1 %.not13.2.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.x = icmp eq i32 %.pr41.i, 0
  br i1 %i.x, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.split.2.i

.lr.ph.split.2.i:                                 ; preds = %.lr.ph.2.i, %bb.e
  %i.y = phi i32 [ %i.ag, %bb.e ], [ %i.r, %.lr.ph.2.i ]
  %i.z = phi i32 [ %i.ah, %bb.e ], [ %.pr41.i, %.lr.ph.2.i ] ; 2 uses
  %.011.2.i = phi i64 [ %i.ai, %bb.e ], [ 0, %.lr.ph.2.i ] ; 2 uses
  %.not.2.i = icmp eq i32 %i.z, 0
  br i1 %.not.2.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.2.i
  %i.aa = zext i32 %i.z to i64
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !91
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !92
  %i.ad = mul i64 %i.ac, %.011.2.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.af = shl nuw nsw i64 %i.aa, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 0, i64 %i.af, i1 false)
  %.pre20.i = load i32, ptr %i.a, align 8, !tbaa !88
  %.pre22.i = load i32, ptr %i.b, align 4, !tbaa !89
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.2.i
  %i.ag = phi i32 [ %.pre22.i, %bb.d ], [ %i.y, %.lr.ph.split.2.i ] ; 2 uses
  %i.ah = phi i32 [ %.pre20.i, %bb.d ], [ 0, %.lr.ph.split.2.i ]
  %i.ai = add nuw nsw i64 %.011.2.i, 1            ; 2 uses
  %i.aj = zext i32 %i.ag to i64
  %i.ak = icmp samesign ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %.lr.ph.split.2.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, !llvm.loop !844

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.g
  %.pr.i3 = phi i32 [ %.pr.i, %bb.g ], [ %i.f, %.lr.ph.i ]
  %i.al = phi i32 [ %i.at, %bb.g ], [ %i.d, %.lr.ph.i ]
  %i.am = phi i32 [ %i.au, %bb.g ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.011.i = phi i64 [ %i.av, %bb.g ], [ 0, %.lr.ph.i ] ; 2 uses
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.an = zext i32 %i.am to i64
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !92
  %i.aq = mul i64 %i.ap, %.011.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %i.as = shl nuw nsw i64 %i.an, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ar, i8 0, i64 %i.as, i1 false)
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !88 ; 2 uses
  %.pre16.i = load i32, ptr %i.b, align 4, !tbaa !89
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.i
  %.pr.i = phi i32 [ %.pre.i, %bb.f ], [ %.pr.i3, %.lr.ph.split.i ] ; 4 uses
  %i.at = phi i32 [ %.pre16.i, %bb.f ], [ %i.al, %.lr.ph.split.i ] ; 4 uses
  %i.au = phi i32 [ %.pre.i, %bb.f ], [ 0, %.lr.ph.split.i ]
  %i.av = add nuw nsw i64 %.011.i, 1              ; 2 uses
  %i.aw = zext i32 %i.at to i64
  %i.ax = icmp samesign ult i64 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !844

_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit: ; preds = %bb.e, %bb.a, %.lr.ph.i, %._crit_edge.i, %.lr.ph.1.i, %._crit_edge.1.i, %.lr.ph.2.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiE13ZeroFillPlaneEm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %1 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !88
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !89
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !91
  %i.j = load i64, ptr %i.h, align 8, !tbaa !92
  %i.k = mul i64 %i.j, %.07.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.l, i64 64) ]
  %i.m = load i32, ptr %i.b, align 8, !tbaa !88
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.l, i8 0, i64 %i.o, i1 false)
  %i.p = add nuw nsw i64 %.07.i, 1                ; 2 uses
  %i.q = load i32, ptr %i.e, align 4, !tbaa !89
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit, !llvm.loop !846

_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit:  ; preds = %bb.b, %bb.a, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3jxl8ACImageTIiE7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !88
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  ret i1 %i.g
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl18PassesDecoderStateD2Ev(ptr noundef nonnull align 8 dead_on_return(4552) dereferenceable(4552) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4064
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl13ColorEncodingE, i64 16), ptr %i.b, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN3jxl13ColorEncodingD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4104
  store ptr %i.d, ptr %i.e, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.j) #25
  br label %_ZN3jxl13ColorEncodingD2Ev.exit.i

_ZN3jxl13ColorEncodingD2Ev.exit.i:                ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3864
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl13ColorEncodingE, i64 16), ptr %i.k, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3896
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71   ; 4 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i1.i, label %_ZN3jxl13ColorEncodingD2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZN3jxl13ColorEncodingD2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3904
  store ptr %i.m, ptr %i.n, align 8, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3912
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.s) #25
  br label %_ZN3jxl13ColorEncodingD2Ev.exit2.i

_ZN3jxl13ColorEncodingD2Ev.exit2.i:               ; preds = %bb.c, %_ZN3jxl13ColorEncodingD2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl13ColorEncodingE, i64 16), ptr %i.a, align 8, !tbaa !114
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71   ; 4 uses
  %.not.i.i.i.i3.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i3.i, label %_ZN3jxl18OutputEncodingInfoD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3jxl13ColorEncodingD2Ev.exit2.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3656
  store ptr %i.u, ptr %i.v, align 8, !tbaa !72
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.aa) #25
  br label %_ZN3jxl18OutputEncodingInfoD2Ev.exit

_ZN3jxl18OutputEncodingInfoD2Ev.exit:             ; preds = %_ZN3jxl13ColorEncodingD2Ev.exit2.i, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3112
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.ab) #28
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3104 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !354 ; 3 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !354
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt3__110unique_ptrIN3jxl14RenderPipelineENS_14default_deleteIS2_EEED2B8nn180100Ev.exit, label %_ZNKSt3__114default_deleteIN3jxl14RenderPipelineEEclB8nn180100EPS2_.exit.i.i

_ZNKSt3__114default_deleteIN3jxl14RenderPipelineEEclB8nn180100EPS2_.exit.i.i: ; preds = %_ZN3jxl18OutputEncodingInfoD2Ev.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(256) %i.ad) #28, !inline_history !847
  br label %_ZNSt3__110unique_ptrIN3jxl14RenderPipelineENS_14default_deleteIS2_EEED2B8nn180100Ev.exit

_ZNSt3__110unique_ptrIN3jxl14RenderPipelineENS_14default_deleteIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZN3jxl18OutputEncodingInfoD2Ev.exit, %_ZNKSt3__114default_deleteIN3jxl14RenderPipelineEEclB8nn180100EPS2_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3096 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !851 ; 3 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !851
  %.not.i.i1 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1, label %_ZNSt3__110unique_ptrIN3jxl7ACImageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit, label %_ZNKSt3__114default_deleteIN3jxl7ACImageEEclB8nn180100EPS2_.exit.i.i

_ZNKSt3__114default_deleteIN3jxl7ACImageEEclB8nn180100EPS2_.exit.i.i: ; preds = %_ZNSt3__110unique_ptrIN3jxl14RenderPipelineENS_14default_deleteIS2_EEED2B8nn180100Ev.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !114
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #28, !inline_history !848
  br label %_ZNSt3__110unique_ptrIN3jxl7ACImageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit

_ZNSt3__110unique_ptrIN3jxl7ACImageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__110unique_ptrIN3jxl14RenderPipelineENS_14default_deleteIS2_EEED2B8nn180100Ev.exit, %_ZNKSt3__114default_deleteIN3jxl7ACImageEEclB8nn180100EPS2_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !281 ; 4 uses
  %.not.i.i2 = icmp eq ptr %i.an, null
  br i1 %.not.i.i2, label %_ZNSt3__16vectorIN3jxl11ImageOutputENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__110unique_ptrIN3jxl7ACImageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3048
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !282
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !852
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.at) #25
  br label %_ZNSt3__16vectorIN3jxl11ImageOutputENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl11ImageOutputENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__110unique_ptrIN3jxl7ACImageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit, %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2904
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.au) #28
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2848 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !853 ; 5 uses
  %.not.i.i3 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i3, label %_ZNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEED2B8nn180100Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIN3jxl11ImageOutputENS_9allocatorIS2_EEED2B8nn180100Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2856 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !854 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.aw, %i.ay
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEE7__clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIhNS1_IhEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.az, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIhNS1_IhEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i ], [ %i.ay, %bb.f ] ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -24 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !71 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIhNS1_IhEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bb = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16
end_hunk_0
