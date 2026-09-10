Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/quant_weights?download=true
inline.NumInlined: 1046
inline.NumDeleted: 338
loop-unroll.NumCompletelyUnrolled: 97
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN3jxl15DequantMatricesC2Ev:_ZNSt3__16vectorIN3jxl13QuantEncodingENS_9allocatorIS2_EEE6resizeEmRKS2_.exit
  %i.h = icmp eq i32 %.pre, 7
  br i1 %i.h, label %bb.a, label %_ZN3jxl13QuantEncodingD2Ev.exit

bb.a:                                             ; preds = %_ZNSt3__16vectorIN3jxl13QuantEncodingENS_9allocatorIS2_EEE6resizeEmRKS2_.exit
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !15   ; 5 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN3jxl13QuantEncodingD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 4 uses
  %.not.i.i.i28 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i28, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i: ; preds = %bb.c, %bb.b
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 24) #36
  br label %_ZN3jxl13QuantEncodingD2Ev.exit

_ZN3jxl13QuantEncodingD2Ev.exit:                  ; preds = %_ZNSt3__16vectorIN3jxl13QuantEncodingENS_9allocatorIS2_EEE6resizeEmRKS2_.exit, %bb.a, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.q, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !38
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 128, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 192, ptr %i.r, align 8, !tbaa !38
  %.sroa.8.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 256, ptr %.sroa.8.24..sroa_idx, align 8, !tbaa !38
  %.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 320, ptr %.sroa.9.24..sroa_idx, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 384, ptr %i.s, align 8, !tbaa !38
  %.sroa.12.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 448, ptr %.sroa.12.48..sroa_idx, align 8, !tbaa !38
  %.sroa.13.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 512, ptr %.sroa.13.48..sroa_idx, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 576, ptr %i.t, align 8, !tbaa !38
  %.sroa.16.72..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 640, ptr %.sroa.16.72..sroa_idx, align 8, !tbaa !38
  %.sroa.17.72..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 704, ptr %.sroa.17.72..sroa_idx, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 768, ptr %i.u, align 8, !tbaa !38
  %.sroa.20.96..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 1024, ptr %.sroa.20.96..sroa_idx, align 8, !tbaa !38
  %.sroa.21.96..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 1280, ptr %.sroa.21.96..sroa_idx, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 1536, ptr %i.v, align 8, !tbaa !38
  %.sroa.24.120..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 2560, ptr %.sroa.24.120..sroa_idx, align 8, !tbaa !38
  %.sroa.25.120..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 3584, ptr %.sroa.25.120..sroa_idx, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 4608, ptr %i.w, align 8, !tbaa !38
  %.sroa.29.144..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 4736, ptr %.sroa.29.144..sroa_idx, align 8, !tbaa !38
  %.sroa.30.144..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 4864, ptr %.sroa.30.144..sroa_idx, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 4608, ptr %i.x, align 8, !tbaa !38
  %.sroa.29.144..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 4736, ptr %.sroa.29.144..sroa_idx36, align 8, !tbaa !38
  %.sroa.30.144..sroa_idx38 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 4864, ptr %.sroa.30.144..sroa_idx38, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 4992, ptr %i.y, align 8, !tbaa !38
  %.sroa.34.168..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 5248, ptr %.sroa.34.168..sroa_idx, align 8, !tbaa !38
  %.sroa.35.168..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 5504, ptr %.sroa.35.168..sroa_idx, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 4992, ptr %i.z, align 8, !tbaa !38
  %.sroa.34.168..sroa_idx41 = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 5248, ptr %.sroa.34.168..sroa_idx41, align 8, !tbaa !38
  %.sroa.35.168..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 5504, ptr %.sroa.35.168..sroa_idx43, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 5760, ptr %i.aa, align 8, !tbaa !38
  %.sroa.39.192..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 6272, ptr %.sroa.39.192..sroa_idx, align 8, !tbaa !38
  %.sroa.40.192..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 6784, ptr %.sroa.40.192..sroa_idx, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 5760, ptr %i.ab, align 8, !tbaa !38
  %.sroa.39.192..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 6272, ptr %.sroa.39.192..sroa_idx46, align 8, !tbaa !38
  %.sroa.40.192..sroa_idx48 = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 6784, ptr %.sroa.40.192..sroa_idx48, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 7296, ptr %i.ac, align 8, !tbaa !38
  %.sroa.44.216..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 7360, ptr %.sroa.44.216..sroa_idx, align 8, !tbaa !38
  %.sroa.45.216..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 7424, ptr %.sroa.45.216..sroa_idx, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 7296, ptr %i.ad, align 8, !tbaa !38
  %.sroa.44.216..sroa_idx51 = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 7360, ptr %.sroa.44.216..sroa_idx51, align 8, !tbaa !38
  %.sroa.45.216..sroa_idx53 = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 7424, ptr %.sroa.45.216..sroa_idx53, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 7488, ptr %i.ae, align 8, !tbaa !38
  %.sroa.51.240..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 7552, ptr %.sroa.51.240..sroa_idx, align 8, !tbaa !38
  %.sroa.52.240..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 7616, ptr %.sroa.52.240..sroa_idx, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 7488, ptr %i.af, align 8, !tbaa !38
  %.sroa.51.240..sroa_idx58 = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 7552, ptr %.sroa.51.240..sroa_idx58, align 8, !tbaa !38
  %.sroa.52.240..sroa_idx64 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i64 7616, ptr %.sroa.52.240..sroa_idx64, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 7488, ptr %i.ag, align 8, !tbaa !38
  %.sroa.51.240..sroa_idx60 = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 7552, ptr %.sroa.51.240..sroa_idx60, align 8, !tbaa !38
  %.sroa.52.240..sroa_idx66 = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i64 7616, ptr %.sroa.52.240..sroa_idx66, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 7488, ptr %i.ah, align 8, !tbaa !38
  %.sroa.51.240..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 7552, ptr %.sroa.51.240..sroa_idx62, align 8, !tbaa !38
  %.sroa.52.240..sroa_idx68 = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 7616, ptr %.sroa.52.240..sroa_idx68, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 7680, ptr %i.ai, align 8, !tbaa !38
  %.sroa.55.264..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 11776, ptr %.sroa.55.264..sroa_idx, align 8, !tbaa !38
  %.sroa.56.264..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i64 15872, ptr %.sroa.56.264..sroa_idx, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 19968, ptr %i.aj, align 8, !tbaa !38
  %.sroa.60.288..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 22016, ptr %.sroa.60.288..sroa_idx, align 8, !tbaa !38
  %.sroa.61.288..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 24064, ptr %.sroa.61.288..sroa_idx, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 19968, ptr %i.ak, align 8, !tbaa !38
  %.sroa.60.288..sroa_idx71 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i64 22016, ptr %.sroa.60.288..sroa_idx71, align 8, !tbaa !38
  %.sroa.61.288..sroa_idx73 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 24064, ptr %.sroa.61.288..sroa_idx73, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i64 26112, ptr %i.al, align 8, !tbaa !38
  %.sroa.64.312..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 42496, ptr %.sroa.64.312..sroa_idx, align 8, !tbaa !38
  %.sroa.65.312..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i64 58880, ptr %.sroa.65.312..sroa_idx, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i64 75264, ptr %i.am, align 8, !tbaa !38
  %.sroa.69.336..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i64 83456, ptr %.sroa.69.336..sroa_idx, align 8, !tbaa !38
  %.sroa.70.336..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 91648, ptr %.sroa.70.336..sroa_idx, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i64 75264, ptr %i.an, align 8, !tbaa !38
  %.sroa.69.336..sroa_idx76 = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i64 83456, ptr %.sroa.69.336..sroa_idx76, align 8, !tbaa !38
  %.sroa.70.336..sroa_idx78 = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i64 91648, ptr %.sroa.70.336..sroa_idx78, align 8, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i64 99840, ptr %i.ao, align 8, !tbaa !38
  %.sroa.73.360..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 165376, ptr %.sroa.73.360..sroa_idx, align 8, !tbaa !38
  %.sroa.74.360..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i64 230912, ptr %.sroa.74.360..sroa_idx, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i64 296448, ptr %i.ap, align 8, !tbaa !38
  %.sroa.78.384..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i64 329216, ptr %.sroa.78.384..sroa_idx, align 8, !tbaa !38
  %.sroa.79.384..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i64 361984, ptr %.sroa.79.384..sroa_idx, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 296448, ptr %i.aq, align 8, !tbaa !38
  %.sroa.78.384..sroa_idx81 = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 329216, ptr %.sroa.78.384..sroa_idx81, align 8, !tbaa !38
  %.sroa.79.384..sroa_idx83 = getelementptr inbounds nuw i8, ptr %0, i64 712
  store i64 361984, ptr %.sroa.79.384..sroa_idx83, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl15DequantMatrices14EnsureComputedEP22JxlMemoryManagerStructj(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #17 align 2 {
bb.a:
  %3 = alloca %"class.jxl::StatusOr.36", align 8  ; 7 uses
  %4 = alloca %"class.jxl::AlignedMemory", align 8 ; 5 uses
  %i.a = alloca [52 x i64], align 16              ; 21 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = load atomic i8, ptr @_ZGVZN3jxl15DequantMatrices7LibraryEvE15kDequantLibrary acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN3jxl15DequantMatrices7LibraryEv.exit, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3jxl15DequantMatrices7LibraryEvE15kDequantLibrary) #32
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN3jxl15DequantMatrices7LibraryEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3jxl15DequantMatrices11LibraryInitEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::array.34") align 8 @_ZZN3jxl15DequantMatrices7LibraryEvE15kDequantLibrary) #35
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 9520, ptr nonnull @_ZZN3jxl15DequantMatrices7LibraryEvE15kDequantLibrary) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3jxl15DequantMatrices7LibraryEvE15kDequantLibrary) #32
  br label %_ZN3jxl15DequantMatrices7LibraryEv.exit

_ZN3jxl15DequantMatrices7LibraryEv.exit:          ; preds = %bb.a, %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !255
  %.not88 = icmp eq ptr %i.i, null
  br i1 %.not88, label %bb.d, label %.preheader91.preheader

bb.d:                                             ; preds = %_ZN3jxl15DequantMatrices7LibraryEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.36") align 8 %3, ptr noundef %1, i64 noundef 3158016, i64 noundef 0) #37
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !257  ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(28) %3) #37
  %i.m = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %4) #37 ; 0 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !255  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !258
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1579008
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %i.q, align 8, !tbaa !259
  %.pr = load i32, ptr %i.j, align 8, !tbaa !257
  %i.r = icmp eq i32 %.pr, 0
  br i1 %i.r, label %bb.f, label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(28) %3) #37
  br label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit.thread

_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit.thread: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.preheader91.preheader

_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit:   ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.o

.preheader91.preheader:                           ; preds = %_ZN3jxl15DequantMatrices7LibraryEv.exit, %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 0, ptr %i.a, align 16, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 192, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 384, ptr %i.t, align 16, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 576, ptr %i.u, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 768, ptr %i.v, align 16, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 1536, ptr %i.w, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 4608, ptr %i.x, align 16, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i64 4992, ptr %i.y, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i64 5760, ptr %i.z, align 16, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i64 7296, ptr %i.aa, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 7488, ptr %i.ab, align 16, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i64 7680, ptr %i.ac, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i64 19968, ptr %i.ad, align 16, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store i64 26112, ptr %i.ae, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i64 75264, ptr %i.af, align 16, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store i64 99840, ptr %i.ag, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store i64 296448, ptr %i.ah, align 16, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  store i64 394752, ptr %i.ai, align 8, !tbaa !38
  %.170.6 = and i32 %2, 127
  %i.aj = lshr i32 %2, 1
  %i.ak = and i32 %i.aj, 64
  %.170.7 = or i32 %.170.6, %i.ak
  %i.al = lshr i32 %2, 1
  %i.am = and i32 %i.al, 128
  %i.an = and i32 %2, 512
  %.not74.9 = icmp eq i32 %i.an, 0
  %.170.9.v = select i1 %.not74.9, i32 %i.am, i32 128
  %.170.9 = or disjoint i32 %.170.7, %.170.9.v
  %i.ao = lshr i32 %2, 2
  %i.ap = and i32 %i.ao, 256
  %i.aq = and i32 %2, 2048
  %.not74.11 = icmp eq i32 %i.aq, 0
  %.170.11.v = select i1 %.not74.11, i32 %i.ap, i32 256
  %.170.11 = or disjoint i32 %.170.9, %.170.11.v
  %i.ar = lshr i32 %2, 3
  %i.as = and i32 %i.ar, 512
  %i.at = and i32 %2, 8192
  %.not74.13 = icmp eq i32 %i.at, 0
  %.170.13.v = select i1 %.not74.13, i32 %i.as, i32 512
  %.170.13 = or disjoint i32 %.170.11, %.170.13.v
  %i.au = lshr i32 %2, 4
  %i.av = and i32 %i.au, 1024
  %i.aw = and i32 %2, 229376
  %i.ax = icmp eq i32 %i.aw, 0
  %.170.17.v = select i1 %i.ax, i32 %i.av, i32 1024
  %.170.17 = or disjoint i32 %.170.13, %.170.17.v
  %i.ay = lshr i32 %2, 7
  %i.az = and i32 %i.ay, 2048
  %.170.18 = or i32 %.170.17, %i.az
  %i.ba = lshr i32 %2, 7
  %i.bb = and i32 %i.ba, 4096
  %i.bc = and i32 %2, 1048576
  %.not74.20 = icmp eq i32 %i.bc, 0
  %.170.20.v = select i1 %.not74.20, i32 %i.bb, i32 4096
  %.170.20 = or i32 %.170.18, %.170.20.v
  %i.bd = lshr i32 %2, 8
  %i.be = and i32 %i.bd, 8192
  %.170.21 = or i32 %.170.20, %i.be
  %i.bf = lshr i32 %2, 8
  %i.bg = and i32 %i.bf, 16384
  %i.bh = and i32 %2, 8388608
  %.not74.23 = icmp eq i32 %i.bh, 0
  %.170.23.v = select i1 %.not74.23, i32 %i.bg, i32 16384
  %.170.23 = or i32 %.170.21, %.170.23.v
  %i.bi = lshr i32 %2, 9
  %i.bj = and i32 %i.bi, 32768
  %.170.24 = or i32 %.170.23, %i.bj
  %i.bk = lshr i32 %2, 9
  %i.bl = and i32 %i.bk, 65536
  %i.bm = and i32 %2, 67108864
  %.not74.26 = icmp eq i32 %i.bm, 0
  %.170.26.v = select i1 %.not74.26, i32 %i.bl, i32 65536
  %.170.26 = or i32 %.170.24, %.170.26.v
  %i.bn = load i32, ptr %0, align 8, !tbaa !64    ; 19 uses
  %.167.6 = and i32 %i.bn, 127
  %i.bo = lshr i32 %i.bn, 1
  %i.bp = and i32 %i.bo, 64
  %.167.7 = or i32 %.167.6, %i.bp
  %i.bq = lshr i32 %i.bn, 1
  %i.br = and i32 %i.bq, 128
  %i.bs = and i32 %i.bn, 512
  %.not73.9 = icmp eq i32 %i.bs, 0
  %.167.9.v = select i1 %.not73.9, i32 %i.br, i32 128
  %.167.9 = or disjoint i32 %.167.7, %.167.9.v
  %i.bt = lshr i32 %i.bn, 2
  %i.bu = and i32 %i.bt, 256
  %i.bv = and i32 %i.bn, 2048
  %.not73.11 = icmp eq i32 %i.bv, 0
  %.167.11.v = select i1 %.not73.11, i32 %i.bu, i32 256
  %.167.11 = or disjoint i32 %.167.9, %.167.11.v
  %i.bw = lshr i32 %i.bn, 3
  %i.bx = and i32 %i.bw, 512
  %i.by = and i32 %i.bn, 8192
  %.not73.13 = icmp eq i32 %i.by, 0
  %.167.13.v = select i1 %.not73.13, i32 %i.bx, i32 512
  %.167.13 = or disjoint i32 %.167.11, %.167.13.v
  %i.bz = lshr i32 %i.bn, 4
  %i.ca = and i32 %i.bz, 1024
  %i.cb = and i32 %i.bn, 229376
  %i.cc = icmp eq i32 %i.cb, 0
  %.167.17.v = select i1 %i.cc, i32 %i.ca, i32 1024
  %.167.17 = or disjoint i32 %.167.13, %.167.17.v
  %i.cd = lshr i32 %i.bn, 7
  %i.ce = and i32 %i.cd, 2048
  %.167.18 = or i32 %.167.17, %i.ce
  %i.cf = lshr i32 %i.bn, 7
  %i.cg = and i32 %i.cf, 4096
  %i.ch = and i32 %i.bn, 1048576
  %.not73.20 = icmp eq i32 %i.ch, 0
  %.167.20.v = select i1 %.not73.20, i32 %i.cg, i32 4096
  %.167.20 = or i32 %.167.18, %.167.20.v
  %i.ci = lshr i32 %i.bn, 8
  %i.cj = and i32 %i.ci, 8192
  %.167.21 = or i32 %.167.20, %i.cj
  %i.ck = lshr i32 %i.bn, 8
  %i.cl = and i32 %i.ck, 16384
  %i.cm = and i32 %i.bn, 8388608
  %.not73.23 = icmp eq i32 %i.cm, 0
  %.167.23.v = select i1 %.not73.23, i32 %i.cl, i32 16384
  %.167.23 = or i32 %.167.21, %.167.23.v
  %i.cn = lshr i32 %i.bn, 9
  %i.co = and i32 %i.cn, 32768
  %.167.24 = or i32 %.167.23, %i.co
  %i.cp = lshr i32 %i.bn, 9
  %i.cq = and i32 %i.cp, 65536
  %i.cr = and i32 %i.bn, 67108864
  %.not73.26 = icmp eq i32 %i.cr, 0
  %.167.26.v = select i1 %.not73.26, i32 %i.cq, i32 65536
  %.167.26 = or i32 %.167.24, %.167.26.v
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader91.preheader, %bb.m
  %.06499 = phi i64 [ 0, %.preheader91.preheader ], [ %i.dx, %bb.m ] ; 10 uses
  %i.ct = trunc nuw nsw i64 %.06499 to i32
  %i.cu = shl nuw nsw i32 1, %i.ct                ; 2 uses
  %i.cv = and i32 %i.cu, %.167.26
  %.not = icmp ne i32 %i.cv, 0
  %i.cw = and i32 %i.cu, %.170.26
  %.not72.not = icmp eq i32 %i.cw, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not72.not
  br i1 %or.cond, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %.idx89 = mul nuw nsw i64 %.06499, 24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx89 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !38
  store i64 %i.cy, ptr %i.b, align 8, !tbaa !38
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !255 ; 4 uses
  %i.da = load ptr, ptr %i.cs, align 8, !tbaa !57
  %i.db = getelementptr inbounds nuw [560 x i8], ptr %i.da, i64 %.06499
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !30
  %i.dd = icmp eq i32 %i.dc, 0
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #37
  %i.df = load atomic i64, ptr %i.de seq_cst, align 8
  %i.dg = and i64 %i.df, 103425
  %i.dh = call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.dg, i1 true)
  %i.di = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxl12_GLOBAL__N_137ComputeQuantTableHighwayDispatchTableE, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !66 ; 2 uses
  br i1 %i.dd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dk = getelementptr inbounds nuw [560 x i8], ptr @_ZZN3jxl15DequantMatrices7LibraryEvE15kDequantLibrary, i64 %.06499
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 1579008
  %i.dm = call i32 %i.dj(ptr noundef nonnull align 8 dereferenceable(560) %i.dk, ptr noundef %i.cz, ptr noundef nonnull %i.dl, i64 noundef %.06499, i64 noundef %.06499, ptr noundef nonnull %i.b) #37 ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.k, label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.do = load ptr, ptr %i.cs, align 8, !tbaa !57
  %i.dp = getelementptr inbounds nuw [560 x i8], ptr %i.do, i64 %.06499
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 1579008
  %i.dr = call i32 %i.dj(ptr noundef nonnull align 8 dereferenceable(560) %i.dp, ptr noundef %i.cz, ptr noundef nonnull %i.dq, i64 noundef %.06499, i64 noundef %.06499, ptr noundef nonnull %i.b) #37 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !38
  %i.du = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !38
  %i.dw = icmp eq i64 %i.dt, %i.dv
  br i1 %i.dw, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %i.dx = add nuw nsw i64 %.06499, 1              ; 2 uses
  %exitcond = icmp eq i64 %i.dx, 17
  br i1 %exitcond, label %.critedge76, label %bb.g, !llvm.loop !254

.critedge:                                        ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.078.0 = phi i32 [ %i.dr, %bb.j ], [ %i.dm, %bb.i ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.n

.critedge76:                                      ; preds = %bb.m
  %i.dy = load i32, ptr %0, align 8, !tbaa !64
  %i.dz = or i32 %i.dy, %2
  store i32 %i.dz, ptr %0, align 8, !tbaa !64
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %.critedge76
  %.sroa.078.1 = phi i32 [ 0, %.critedge76 ], [ %.sroa.078.0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.o

bb.o:                                             ; preds = %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit, %bb.n
  %.sroa.078.2 = phi i32 [ %.sroa.078.1, %bb.n ], [ %i.k, %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit ]
  ret i32 %.sroa.078.2
}

declare void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind writable sret(%"class.jxl::StatusOr.36") align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #18

end_hunk_0
