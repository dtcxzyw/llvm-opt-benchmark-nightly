Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_quant_weights?download=true
inline.NumInlined: 573
inline.NumDeleted: 365
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN3jxl23DequantMatricesEncodeDCERKNS_15DequantMatricesEPNS_9BitWriterENS_9LayerTypeEPNS_6AuxOutE:bb.a
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::__1::function", align 16 ; 10 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !47
  %i.e = load float, ptr %i.d, align 8, !tbaa !49
  %i.f = fcmp oeq float %i.e, f0x39800000
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.h = load float, ptr %i.g, align 4, !tbaa !49
  %i.i = fcmp oeq float %i.h, f0x3B000000
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load float, ptr %i.j, align 8, !tbaa !49
  %i.l = fcmp oeq float %i.k, 3.906250e-03
  %i.m = select i1 %i.l, i1 %i.i, i1 false
  %narrow8 = select i1 %i.m, i1 %i.f, i1 false
  %spec.select.2 = zext i1 %narrow8 to i8
  store i8 %spec.select.2, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3jxl23DequantMatricesEncodeDCERKNS2_15DequantMatricesEPNS2_9BitWriterENS2_9LayerTypeEPNS2_6AuxOutEE3$_0NS_9allocatorISB_EEFNS2_6StatusEvEEE", i64 16), ptr %4, align 16, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.o, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 16, !tbaa !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !51
  store ptr %4, ptr %i.n, align 16, !tbaa !39
  %i.p = call i32 @_ZN3jxl9BitWriter11WithMaxBitsEmNS_9LayerTypeEPNS_6AuxOutERKNSt3__18functionIFNS_6StatusEvEEEb(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 97, i8 noundef zeroext %2, ptr noundef %3, ptr noundef nonnull align 16 dereferenceable(48) %4, i1 noundef zeroext false) #16
  %i.q = load ptr, ptr %i.n, align 16, !tbaa !39  ; 4 uses
  %i.r = icmp eq ptr %i.q, %4
  br i1 %i.r, label %.sink.split.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt3__18functionIFN3jxl6StatusEvEED2Ev.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.b, %bb.a
  %.sink2.i.i = phi i64 [ 32, %bb.a ], [ 40, %bb.b ]
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink2.i.i
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #16, !inline_history !0
  br label %_ZNSt3__18functionIFN3jxl6StatusEvEED2Ev.exit

_ZNSt3__18functionIFN3jxl6StatusEvEED2Ev.exit:    ; preds = %bb.b, %.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl26DequantMatricesSetCustomDCEP22JxlMemoryManagerStructPNS_15DequantMatricesEPKf(ptr noundef %0, ptr noundef initializes((48, 72)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 12
  %i.d = add i64 %i.a, 48
  %i.e = add i64 %i.a, 72
  %rt.bound0 = icmp ult i64 %i.d, %i.c
  %rt.bound1 = icmp ugt i64 %i.e, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca i8, align 1                       ; 7 uses
  %i.h = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %"class.std::__1::function", align 16 ; 18 uses
  %4 = alloca %"struct.jxl::BitWriter", align 8   ; 18 uses
  %5 = alloca %"class.jxl::BitReader", align 8    ; 14 uses
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !88

bb.b:                                             ; preds = %.rtcont
  %.not.i.i.i = icmp eq ptr %.rtmerge28, null
  br i1 %.not.i.i.i, label %_ZN3jxl23DequantMatricesEncodeDCERKNS_15DequantMatricesEPNS_9BitWriterENS_9LayerTypeEPNS_6AuxOutE.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.b, %.rtcont
  %.sink2.i.i.i = phi i64 [ 32, %.rtcont ], [ 40, %bb.b ]
  %i.i = load ptr, ptr %.rtmerge28, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink2.i.i.i
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %.rtmerge28) #16, !inline_history !87
  br label %_ZN3jxl23DequantMatricesEncodeDCERKNS_15DequantMatricesEPNS_9BitWriterENS_9LayerTypeEPNS_6AuxOutE.exit

_ZN3jxl23DequantMatricesEncodeDCERKNS_15DequantMatricesEPNS_9BitWriterENS_9LayerTypeEPNS_6AuxOutE.exit: ; preds = %bb.b, %.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.l = icmp eq i32 %.rtmerge, 0
  br i1 %i.l, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_ZN3jxl23DequantMatricesEncodeDCERKNS_15DequantMatricesEPNS_9BitWriterENS_9LayerTypeEPNS_6AuxOutE.exit
  %i.m = load i64, ptr %4, align 8, !tbaa !56     ; 3 uses
  %i.n = add i64 %i.m, 7                          ; 2 uses
  %i.o = and i64 %i.n, -8                         ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.m
  br i1 %i.p, label %_ZN3jxl9BitWriter13ZeroPadToByteEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = sub i64 %i.o, %i.m
  call void @_ZN3jxl9BitWriter5WriteEmm(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef %i.q, i64 noundef 0) #16
  %.pre = load i64, ptr %4, align 8, !tbaa !56
  %.pre21 = add i64 %.pre, 7
  br label %_ZN3jxl9BitWriter13ZeroPadToByteEv.exit

_ZN3jxl9BitWriter13ZeroPadToByteEv.exit:          ; preds = %bb.c, %bb.d
  %.pre-phi = phi i64 [ %i.n, %bb.c ], [ %.pre21, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 5 uses
  %i.t = lshr i64 %.pre-phi, 3
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 16, i1 false)
  store ptr %i.s, ptr %i.u, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.w = getelementptr i8, ptr %i.s, i64 %i.t
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  store ptr %i.x, ptr %i.v, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.s, ptr %i.y, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 0, ptr %i.z, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i8 0, ptr %i.aa, align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !66
  %i.ac = icmp ult i64 %.pre-phi, 64
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !67

bb.e:                                             ; preds = %_ZN3jxl9BitWriter13ZeroPadToByteEv.exit
  call void @_ZN3jxl9BitReader19BoundsCheckedRefillEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #16
  br label %_ZN3jxl9BitReaderC2INS_4SpanIKhEEEERKT_.exit

bb.f:                                             ; preds = %_ZN3jxl9BitWriter13ZeroPadToByteEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.0.copyload.i.i = load i64, ptr %i.s, align 1
  store i64 %.0.copyload.i.i, ptr %5, align 8, !tbaa !68
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 7
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !61
  store i64 56, ptr %i.ad, align 8, !tbaa !69
  br label %_ZN3jxl9BitReaderC2INS_4SpanIKhEEEERKT_.exit

_ZN3jxl9BitReaderC2INS_4SpanIKhEEEERKT_.exit:     ; preds = %bb.e, %bb.f
  %i.af = call i32 @_ZN3jxl15DequantMatrices8DecodeDCEPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull %5) #16 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %_ZN3jxl9BitReader5CloseEv.exit

bb.g:                                             ; preds = %_ZN3jxl9BitReaderC2INS_4SpanIKhEEEERKT_.exit
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !63  ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZN3jxl9BitReader5CloseEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !61
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = load i64, ptr %i.z, align 8, !tbaa !64
  %i.an = add i64 %i.al, %i.am
  %i.ao = shl i64 %i.an, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !69
  %i.ar = sub i64 %i.ao, %i.aq                    ; 2 uses
  %i.as = load i64, ptr %i.ab, align 8, !tbaa !66
  %i.at = icmp ugt i64 %i.ar, %i.as
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ak
  %i.ay = shl i64 %i.ax, 3
  %i.az = icmp ugt i64 %i.ar, %i.ay
  br i1 %i.az, label %_ZN3jxl9BitReader5CloseEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %_ZN3jxl9BitReader5CloseEv.exit

_ZN3jxl9BitReader5CloseEv.exit:                   ; preds = %bb.g, %bb.j, %bb.i, %_ZN3jxl9BitReaderC2INS_4SpanIKhEEEERKT_.exit
  %.sroa.010.0 = phi i32 [ 1, %bb.i ], [ %i.af, %_ZN3jxl9BitReaderC2INS_4SpanIKhEEEERKT_.exit ], [ 0, %bb.j ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.k

bb.k:                                             ; preds = %_ZN3jxl23DequantMatricesEncodeDCERKNS_15DequantMatricesEPNS_9BitWriterENS_9LayerTypeEPNS_6AuxOutE.exit, %_ZN3jxl9BitReader5CloseEv.exit
  %.sroa.010.1 = phi i32 [ %.sroa.010.0, %_ZN3jxl9BitReader5CloseEv.exit ], [ %.rtmerge, %_ZN3jxl23DequantMatricesEncodeDCERKNS_15DequantMatricesEPNS_9BitWriterENS_9LayerTypeEPNS_6AuxOutE.exit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ba) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret i32 %.sroa.010.1

.rtvec:                                           ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !49
  %i.bg = load float, ptr %2, align 4, !tbaa !49
  %i.bh = load <2 x float>, ptr %2, align 4, !tbaa !49
  %6 = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bi = insertelement <4 x float> %6, float %i.bf, i64 2
  %7 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, %i.bi ; 4 uses
  %8 = insertelement <4 x float> %7, float %i.bg, i64 3
  store <4 x float> %8, ptr %i.bb, align 4, !tbaa !49
  %i.bj = load <2 x float>, ptr %i.bc, align 4, !tbaa !49
  store <2 x float> %i.bj, ptr %i.bd, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store i64 0, ptr %4, align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.bk, align 8, !tbaa !70
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %4, ptr %i.f, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store ptr %i.bb, ptr %i.h, align 8, !tbaa !47
  %i.bm = extractelement <4 x float> %7, i64 0
  %i.bn = fcmp oeq float %i.bm, f0x39800000
  %i.bo = extractelement <4 x float> %7, i64 1
  %i.bp = fcmp oeq float %i.bo, f0x3B000000
  %i.bq = extractelement <4 x float> %7, i64 2
  %i.br = fcmp oeq float %i.bq, 3.906250e-03
  %i.bs = select i1 %i.br, i1 %i.bp, i1 false
  %narrow8.i = select i1 %i.bs, i1 %i.bn, i1 false
  %spec.select.2.i = zext i1 %narrow8.i to i8
  store i8 %spec.select.2.i, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3jxl23DequantMatricesEncodeDCERKNS2_15DequantMatricesEPNS2_9BitWriterENS2_9LayerTypeEPNS2_6AuxOutEE3$_0NS_9allocatorISB_EEFNS2_6StatusEvEEE", i64 16), ptr %3, align 16, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.f, ptr %i.bu, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx.i, align 16, !tbaa !29
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !51
  store ptr %3, ptr %i.bt, align 16, !tbaa !39
  %i.bv = call i32 @_ZN3jxl9BitWriter11WithMaxBitsEmNS_9LayerTypeEPNS_6AuxOutERKNSt3__18functionIFNS_6StatusEvEEEb(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef 97, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull align 16 dereferenceable(48) %3, i1 noundef zeroext false) #16
  %i.bw = load ptr, ptr %i.bt, align 16, !tbaa !39
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bz = load float, ptr %2, align 4, !tbaa !49
  %i.ca = fdiv float 1.000000e+00, %i.bz          ; 2 uses
  store float %i.ca, ptr %i.bx, align 4, !tbaa !49
  %i.cb = load float, ptr %2, align 4, !tbaa !49
  store float %i.cb, ptr %i.by, align 4, !tbaa !49
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !49
  %i.ce = fdiv float 1.000000e+00, %i.cd          ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %i.ce, ptr %i.cf, align 4, !tbaa !49
  %i.cg = load float, ptr %i.cc, align 4, !tbaa !49
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 64
  store float %i.cg, ptr %i.ch, align 4, !tbaa !49
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !49
  %i.ck = fdiv float 1.000000e+00, %i.cj          ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.ck, ptr %i.cl, align 4, !tbaa !49
  %i.cm = load float, ptr %i.ci, align 4, !tbaa !49
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.cm, ptr %i.cn, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store i64 0, ptr %4, align 8, !tbaa !56
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.co, align 8, !tbaa !70
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cp, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %4, ptr %i.f, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store ptr %i.bx, ptr %i.h, align 8, !tbaa !47
  %i.cq = fcmp oeq float %i.ca, f0x39800000
  %i.cr = fcmp oeq float %i.ce, f0x3B000000
  %i.cs = fcmp oeq float %i.ck, 3.906250e-03
  %i.ct = select i1 %i.cs, i1 %i.cr, i1 false
  %narrow8.i.scalar = select i1 %i.ct, i1 %i.cq, i1 false
  %spec.select.2.i.scalar = zext i1 %narrow8.i.scalar to i8
  store i8 %spec.select.2.i.scalar, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3jxl23DequantMatricesEncodeDCERKNS2_15DequantMatricesEPNS2_9BitWriterENS2_9LayerTypeEPNS2_6AuxOutEE3$_0NS_9allocatorISB_EEFNS2_6StatusEvEEE", i64 16), ptr %3, align 16, !tbaa !24
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.f, ptr %i.cv, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i.scalar = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx.i.scalar, align 16, !tbaa !29
  %.sroa.5.0..sroa_idx.i.scalar = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i.scalar, align 8, !tbaa !51
  store ptr %3, ptr %i.cu, align 16, !tbaa !39
  %i.cw = call i32 @_ZN3jxl9BitWriter11WithMaxBitsEmNS_9LayerTypeEPNS_6AuxOutERKNSt3__18functionIFNS_6StatusEvEEEb(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef 97, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull align 16 dereferenceable(48) %3, i1 noundef zeroext false) #16
  %i.cx = load ptr, ptr %i.cu, align 16, !tbaa !39
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  %.rtmerge = phi i32 [ %i.bv, %.rtvec ], [ %i.cw, %.rtscalar ] ; 2 uses
  %.rtmerge28 = phi ptr [ %i.bw, %.rtvec ], [ %i.cx, %.rtscalar ] ; 4 uses
  %.rtmerge29 = icmp eq ptr %.rtmerge28, %3
  br i1 %.rtmerge29, label %.sink.split.i.i.i, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @_ZN3jxl15DequantMatrices8DecodeDCEPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(744), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl22DequantMatricesScaleDCEP22JxlMemoryManagerStructPNS_15DequantMatricesEf(ptr noundef %0, ptr noundef initializes((48, 60)) %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.c = fdiv float 1.000000e+00, %2              ; 2 uses
  %i.d = load <2 x float>, ptr %i.b, align 4, !tbaa !49
  %i.e = insertelement <2 x float> poison, float %i.c, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = fmul <2 x float> %i.f, %i.d
  store <2 x float> %i.g, ptr %i.a, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = load float, ptr %i.h, align 4, !tbaa !49
  %i.j = fmul float %i.c, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.j, ptr %i.k, align 8, !tbaa !49
  %i.l = call i32 @_ZN3jxl26DequantMatricesSetCustomDCEP22JxlMemoryManagerStructPNS_15DequantMatricesEPKf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl24DequantMatricesRoundtripEP22JxlMemoryManagerStructPNS_15DequantMatricesE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__1::function", align 16 ; 5 uses
  %3 = alloca %"struct.jxl::BitWriter", align 8   ; 12 uses
  %4 = alloca %"class.jxl::BitReader", align 8    ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i64 0, ptr %3, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.a, align 8, !tbaa !12
  store ptr %3, ptr %i.b, align 8, !tbaa !14
  store ptr null, ptr %i.c, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %.not1718.i = icmp eq ptr %i.h, %i.j
  br i1 %.not1718.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i8 [ 1, %bb.a ], [ %spec.select.i, %.lr.ph.i ]
  store i8 %.lcssa.i, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.l = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3jxl21DequantMatricesEncodeEP22JxlMemoryManagerStructRKNS2_15DequantMatricesEPNS2_9BitWriterENS2_9LayerTypeEPNS2_6AuxOutEPNS2_19ModularFrameEncoderEE3$_0NS_9allocatorISF_EEFNS2_6StatusEvEEE", i64 16), ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.b, ptr %i.m, align 8, !tbaa !27
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.d, ptr %.sroa.415.0..sroa_idx.i, align 8, !tbaa !29
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.g, ptr %.sroa.516.0..sroa_idx.i, align 8, !tbaa !31
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.a, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !33
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !35
  store ptr %i.l, ptr %i.k, align 16, !tbaa !39
  %i.n = call i32 @_ZN3jxl9BitWriter11WithMaxBitsEmNS_9LayerTypeEPNS_6AuxOutERKNSt3__18functionIFNS_6StatusEvEEEb(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef 524288, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull align 16 dereferenceable(48) %2, i1 noundef zeroext false) #16 ; 2 uses
  %i.o = load ptr, ptr %i.k, align 16, !tbaa !39  ; 4 uses
  %i.p = icmp eq ptr %i.o, %2
  br i1 %i.p, label %.sink.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN3jxl21DequantMatricesEncodeEP22JxlMemoryManagerStructRKNS_15DequantMatricesEPNS_9BitWriterENS_9LayerTypeEPNS_6AuxOutEPNS_19ModularFrameEncoderE.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.b, %._crit_edge.i
  %.sink2.i.i.i = phi i64 [ 32, %._crit_edge.i ], [ 40, %bb.b ]
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sink2.i.i.i
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #16, !inline_history !89
  br label %_ZN3jxl21DequantMatricesEncodeEP22JxlMemoryManagerStructRKNS_15DequantMatricesEPNS_9BitWriterENS_9LayerTypeEPNS_6AuxOutEPNS_19ModularFrameEncoderE.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.011.019.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.h, %bb.a ] ; 3 uses
  %i.t = phi i8 [ %spec.select.i, %.lr.ph.i ], [ 1, %bb.a ]
  %i.u = load i32, ptr %.sroa.011.019.i, align 8, !tbaa !45
  %.not.i = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i, i64 552
  %i.w = load i8, ptr %i.v, align 8
  %.not8.i = icmp eq i8 %i.w, 0
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  %spec.select.i = select i1 %or.cond.i, i8 %i.t, i8 0 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i, i64 560 ; 2 uses
  %.not17.i = icmp eq ptr %i.x, %i.j
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

_ZN3jxl21DequantMatricesEncodeEP22JxlMemoryManagerStructRKNS_15DequantMatricesEPNS_9BitWriterENS_9LayerTypeEPNS_6AuxOutEPNS_19ModularFrameEncoderE.exit: ; preds = %bb.b, %.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = icmp eq i32 %i.n, 0
  br i1 %i.y, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_ZN3jxl21DequantMatricesEncodeEP22JxlMemoryManagerStructRKNS_15DequantMatricesEPNS_9BitWriterENS_9LayerTypeEPNS_6AuxOutEPNS_19ModularFrameEncoderE.exit
  %i.z = load i64, ptr %3, align 8, !tbaa !56     ; 3 uses
  %i.aa = add i64 %i.z, 7                         ; 2 uses
end_hunk_0
