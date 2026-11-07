Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/VC5Decompressor?download=true
inline.NumInlined: 1818
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBand31createLowpassReconstructionTaskERKb:bb.a
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.627.0.copyload = load i32, ptr %.sroa.627.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %i.w = icmp sgt i32 %.sroa.223.0.copyload, -1
  tail call void @llvm.assume(i1 %i.w)
  store ptr %.sroa.022.0.copyload, ptr %4, align 8, !tbaa !288
  %.sroa.2.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.223.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i8, align 8, !tbaa !289
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load <2 x i32>, ptr %.sroa.425.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  store <2 x i32> %i.y, ptr %i.x, align 8, !tbaa !289
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %.sroa.627.0.copyload, ptr %i.z, align 8, !tbaa !286
  %i.aa = extractelement <2 x i32> %i.y, i64 1    ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp sgt i32 %.sroa.627.0.copyload, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = extractelement <2 x i32> %i.y, i64 0    ; 3 uses
  %i.ae = icmp ne i32 %i.ad, 0
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp sge i32 %i.ad, %i.aa
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = mul nuw nsw i32 %.sroa.627.0.copyload, %i.ad
  %i.ah = icmp eq i32 %.sroa.223.0.copyload, %i.ag
  tail call void @llvm.assume(i1 %i.ah)
  call void @_ZN8rawspeed15VC5Decompressor7Wavelet15reconstructPassENS_10Array2DRefIKsEES4_(ptr dead_on_unwind nonnull writable sret(%"struct.rawspeed::VC5Decompressor::BandData") align 8 %2, ptr noundef nonnull byval(%"class.rawspeed::Array2DRef.2") align 8 %3, ptr noundef nonnull byval(%"class.rawspeed::Array2DRef.2") align 8 %4) #35
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !320, !range !305, !noundef !306
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.c, label %_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.ai, align 8, !tbaa !320
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !297 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !296
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #34
  br label %_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit

_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit:  ; preds = %bb.d, %bb.c, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load <2 x ptr>, ptr %i.at, align 8, !tbaa !288
  store <2 x ptr> %i.au, ptr %i.as, align 8, !tbaa !288
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !296
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !296
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false), !tbaa.struct !321
  store i8 1, ptr %i.ai, align 8, !tbaa !320
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBand32createHighpassReconstructionTaskERKb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(240) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.rawspeed::VC5Decompressor::BandData", align 8 ; 6 uses
  %3 = alloca %"class.rawspeed::Array2DRef.2", align 8 ; 5 uses
  %4 = alloca %"class.rawspeed::Array2DRef.2", align 8 ; 5 uses
  %.val = load i8, ptr %1, align 1, !tbaa !304, !range !305, !noundef !306
  %i.a = trunc nuw i8 %.val to i1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !315, !nonnull !306, !align !316
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !319  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !319  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.010.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !288
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %.sroa.613.0.copyload = load i32, ptr %.sroa.613.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %i.k = icmp sgt i32 %.sroa.2.0.copyload, -1
  tail call void @llvm.assume(i1 %i.k)
  store ptr %.sroa.010.0.copyload, ptr %3, align 8, !tbaa !288
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !289
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load <2 x i32>, ptr %.sroa.411.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  store <2 x i32> %i.m, ptr %i.l, align 8, !tbaa !289
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %.sroa.613.0.copyload, ptr %i.n, align 8, !tbaa !286
  %i.o = extractelement <2 x i32> %i.m, i64 1     ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp sgt i32 %.sroa.613.0.copyload, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = extractelement <2 x i32> %i.m, i64 0     ; 3 uses
  %i.s = icmp ne i32 %i.r, 0
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp sge i32 %i.r, %i.o
  tail call void @llvm.assume(i1 %i.t)
  %i.u = mul nuw nsw i32 %.sroa.613.0.copyload, %i.r
  %i.v = icmp eq i32 %.sroa.2.0.copyload, %i.u
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.022.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !288
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.223.0.copyload = load i32, ptr %.sroa.223.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %.sroa.627.0.copyload = load i32, ptr %.sroa.627.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %i.x = icmp sgt i32 %.sroa.223.0.copyload, -1
  tail call void @llvm.assume(i1 %i.x)
  store ptr %.sroa.022.0.copyload, ptr %4, align 8, !tbaa !288
  %.sroa.2.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.223.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i8, align 8, !tbaa !289
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load <2 x i32>, ptr %.sroa.425.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  store <2 x i32> %i.z, ptr %i.y, align 8, !tbaa !289
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %.sroa.627.0.copyload, ptr %i.aa, align 8, !tbaa !286
  %i.ab = extractelement <2 x i32> %i.z, i64 1    ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp sgt i32 %.sroa.627.0.copyload, -1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = extractelement <2 x i32> %i.z, i64 0    ; 3 uses
  %i.af = icmp ne i32 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp sge i32 %i.ae, %i.ab
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = mul nuw nsw i32 %.sroa.627.0.copyload, %i.ae
  %i.ai = icmp eq i32 %.sroa.223.0.copyload, %i.ah
  tail call void @llvm.assume(i1 %i.ai)
  call void @_ZN8rawspeed15VC5Decompressor7Wavelet15reconstructPassENS_10Array2DRefIKsEES4_(ptr dead_on_unwind nonnull writable sret(%"struct.rawspeed::VC5Decompressor::BandData") align 8 %2, ptr noundef nonnull byval(%"class.rawspeed::Array2DRef.2") align 8 %3, ptr noundef nonnull byval(%"class.rawspeed::Array2DRef.2") align 8 %4) #35
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !320, !range !305, !noundef !306
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.c, label %_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.aj, align 8, !tbaa !320
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !297 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !296
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #34
  br label %_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit

_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit:  ; preds = %bb.d, %bb.c, %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !288
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !288
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !296
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !296
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false), !tbaa.struct !321
  store i8 1, ptr %i.aj, align 8, !tbaa !320
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBand30createLowHighPassCombiningTaskERKb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(240) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.rawspeed::VC5Decompressor::BandData", align 8 ; 6 uses
  %3 = alloca %"class.rawspeed::Array2DRef.2", align 8 ; 5 uses
  %4 = alloca %"class.rawspeed::Array2DRef.2", align 8 ; 5 uses
  %.val6 = load i8, ptr %1, align 1, !tbaa !304, !range !305, !noundef !306
  %i.a = trunc nuw i8 %.val6 to i1
  br i1 %i.a, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EESaIS7_EE5clearEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !315, !nonnull !306, !align !316 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !322  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EESaIS7_EE5clearEv.exit.thread38, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !319 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !324
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(88) %i.h) #35, !call_target !329, !inline_history !6922
  br label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EESaIS7_EE5clearEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !260

_ZNSt6vectorISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EESaIS7_EE5clearEv.exit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  store ptr %i.e, ptr %i.f, align 8, !tbaa !322
  %.val.pre = load i8, ptr %1, align 1, !tbaa !304
  %i.m = trunc nuw i8 %.val.pre to i1
  br i1 %i.m, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EESaIS7_EE5clearEv.exit.thread, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EESaIS7_EE5clearEv.exit.thread38

_ZNSt6vectorISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EESaIS7_EE5clearEv.exit.thread38: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EESaIS7_EE5clearEv.exit
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !315, !nonnull !306, !align !316
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i16, ptr %i.o, align 8, !tbaa !6680
  %i.q = icmp eq i16 %i.p, 2
  %i.r = select i1 %i.q, i32 2, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.013.0.copyload = load ptr, ptr %i.s, align 8, !tbaa !288
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.616.0.copyload = load i32, ptr %.sroa.616.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %i.t = icmp sgt i32 %.sroa.2.0.copyload, -1
  tail call void @llvm.assume(i1 %i.t)
  store ptr %.sroa.013.0.copyload, ptr %3, align 8, !tbaa !288
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !289
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load <2 x i32>, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  store <2 x i32> %i.v, ptr %i.u, align 8, !tbaa !289
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %.sroa.616.0.copyload, ptr %i.w, align 8, !tbaa !286
  %i.x = extractelement <2 x i32> %i.v, i64 1     ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp sgt i32 %.sroa.616.0.copyload, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = extractelement <2 x i32> %i.v, i64 0    ; 3 uses
  %i.ab = icmp ne i32 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp sge i32 %i.aa, %i.x
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = mul nuw nsw i32 %.sroa.616.0.copyload, %i.aa
  %i.ae = icmp eq i32 %.sroa.2.0.copyload, %i.ad
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sroa.025.0.copyload = load ptr, ptr %i.af, align 8, !tbaa !288
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.226.0.copyload = load i32, ptr %.sroa.226.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.630.0.copyload = load i32, ptr %.sroa.630.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %i.ag = icmp sgt i32 %.sroa.226.0.copyload, -1
  tail call void @llvm.assume(i1 %i.ag)
  store ptr %.sroa.025.0.copyload, ptr %4, align 8, !tbaa !288
  %.sroa.2.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.226.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i10, align 8, !tbaa !289
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ai = load <2 x i32>, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  store <2 x i32> %i.ai, ptr %i.ah, align 8, !tbaa !289
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %.sroa.630.0.copyload, ptr %i.aj, align 8, !tbaa !286
  %i.ak = extractelement <2 x i32> %i.ai, i64 1   ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp sgt i32 %.sroa.630.0.copyload, -1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = extractelement <2 x i32> %i.ai, i64 0   ; 3 uses
  %i.ao = icmp ne i32 %i.an, 0
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp sge i32 %i.an, %i.ak
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = mul nuw nsw i32 %.sroa.630.0.copyload, %i.an
  %i.ar = icmp eq i32 %.sroa.226.0.copyload, %i.aq
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.at = load i8, ptr %i.as, align 8, !tbaa !6683, !range !305, !noundef !306
  %i.au = trunc nuw i8 %i.at to i1
  call void @_ZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibb(ptr dead_on_unwind nonnull writable sret(%"struct.rawspeed::VC5Decompressor::BandData") align 8 %2, ptr noundef nonnull byval(%"class.rawspeed::Array2DRef.2") align 8 %3, ptr noundef nonnull byval(%"class.rawspeed::Array2DRef.2") align 8 %4, i32 noundef %i.r, i1 noundef zeroext %i.au, i1 zeroext poison) #35
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !320, !range !305, !noundef !306
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.c, label %_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EESaIS7_EE5clearEv.exit.thread38
  store i8 0, ptr %i.av, align 8, !tbaa !320
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !297 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !296
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #34
  br label %_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit

_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit:  ; preds = %bb.d, %bb.c, %_ZNSt6vectorISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EESaIS7_EE5clearEv.exit.thread38
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !288
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !288
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !296
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !296
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false), !tbaa.struct !321
  store i8 1, ptr %i.av, align 8, !tbaa !320
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EESaIS7_EE5clearEv.exit.thread

_ZNSt6vectorISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EESaIS7_EE5clearEv.exit.thread: ; preds = %bb.a, %_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EESaIS7_EE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBand19createDecodingTasksERNS_8ErrorLogERb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(240) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %2) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBand31createLowpassReconstructionTaskERKb(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #35
  tail call void @_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBand32createHighpassReconstructionTaskERKb(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #35
  tail call void @_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBand30createLowHighPassCombiningTaskERKb(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed15VC5DecompressorC2ENS_10ByteStreamERKNS_8RawImageE(ptr noundef nonnull align 8 dereferenceable(1000) initializes((0, 40), (48, 72), (200, 201), (208, 210), (212, 213), (216, 217), (220, 221), (222, 230), (248, 276), (296, 324), (344, 372), (392, 420), (440, 468), (488, 516), (536, 564), (584, 612), (632, 660), (680, 708), (728, 756), (776, 804), (824, 852), (872, 900), (920, 948), (968, 996)) %0, ptr nofree noundef readonly byval(%"class.rawspeed::ByteStream") align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !6688   ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !6688
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6689 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !6689
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed8RawImageC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !6690
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !289
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !289
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !6688
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

_ZN8rawspeed8RawImageC2ERKS0_.exit:               ; preds = %bb.a, %bb.c, %bb.d
  %i.j = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %.pre, %bb.d ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 0, ptr %i.o, align 8, !tbaa !6934
  tail call void @llvm.masked.store.v21i8.p0(<21 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 0>, ptr align 8 %i.n, <21 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !304
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 222
  store <4 x i16> <i16 4, i16 2, i16 2, i16 1>, ptr %i.p, align 2, !tbaa !290
  %.ptr67 = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 28, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.r, i8 0, i64 28, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.s, i8 0, i64 28, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.u, i8 0, i64 28, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.v, i8 0, i64 28, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.w, i8 0, i64 28, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 584
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.x, i8 0, i64 28, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.z, i8 0, i64 28, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 728
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aa, i8 0, i64 28, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 776
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ab, i8 0, i64 28, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ad, i8 0, i64 28, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 920
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 968
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 592
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !6771
  %.not = icmp eq i32 %i.ah, 1
  br i1 %.not, label %bb.e, label %.invoke

bb.e:                                             ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
end_hunk_0
