Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_frame?download=true
inline.NumInlined: 8030
inline.NumDeleted: 4373
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3jxl32TectonicPlateSettingsMorePaletteERKNS_14CompressParamsE:_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit
bb.af:                                            ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit31
  %i.bx = call noundef ptr @_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEPS2_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(648) %2) #29
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit33

_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit33: ; preds = %bb.ae, %bb.af
  %.0.i32 = phi ptr [ %i.bw, %bb.ae ], [ %i.bx, %bb.af ] ; 4 uses
  store ptr %.0.i32, ptr %i.k, align 8, !tbaa !105
  store i32 3, ptr %i.i, align 4, !tbaa !98
  store i32 2, ptr %i.d, align 8, !tbaa !94
  %i.by = load ptr, ptr %i.l, align 8, !tbaa !101
  %i.bz = icmp ult ptr %.0.i32, %i.by
  br i1 %i.bz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit33
  call void @_ZN3jxl14CompressParamsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(648) %.0.i32, ptr noundef nonnull align 8 dereferenceable(648) %2) #29
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i32, i64 648
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit35

bb.ah:                                            ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit33
  %i.cb = call noundef ptr @_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEPS2_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(648) %2) #29
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit35

_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit35: ; preds = %bb.ag, %bb.ah
  %.0.i34 = phi ptr [ %i.ca, %bb.ag ], [ %i.cb, %bb.ah ] ; 4 uses
  store ptr %.0.i34, ptr %i.k, align 8, !tbaa !105
  store float 8.000000e+01, ptr %i.g, align 8, !tbaa !107
  store i32 3, ptr %i.d, align 8, !tbaa !94
  store i32 2, ptr %i.i, align 4, !tbaa !98
  %i.cc = load ptr, ptr %i.l, align 8, !tbaa !101
  %i.cd = icmp ult ptr %.0.i34, %i.cc
  br i1 %i.cd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit35
  call void @_ZN3jxl14CompressParamsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(648) %.0.i34, ptr noundef nonnull align 8 dereferenceable(648) %2) #29
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i34, i64 648
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit37

bb.aj:                                            ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit35
  %i.cf = call noundef ptr @_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEPS2_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(648) %2) #29
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit37

_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit37: ; preds = %bb.ai, %bb.aj
  %.0.i36 = phi ptr [ %i.ce, %bb.ai ], [ %i.cf, %bb.aj ] ; 4 uses
  store ptr %.0.i36, ptr %i.k, align 8, !tbaa !105
  store i32 3, ptr %i.i, align 4, !tbaa !98
  store i32 4, ptr %i.f, align 8, !tbaa !95
  store float 1.000000e+00, ptr %i.c, align 8, !tbaa !93
  %i.cg = load ptr, ptr %i.l, align 8, !tbaa !101
  %i.ch = icmp ult ptr %.0.i36, %i.cg
  br i1 %i.ch, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit37
  call void @_ZN3jxl14CompressParamsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(648) %.0.i36, ptr noundef nonnull align 8 dereferenceable(648) %2) #29
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i36, i64 648
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit39

bb.al:                                            ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit37
  %i.cj = call noundef ptr @_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEPS2_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(648) %2) #29
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit39

_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit39: ; preds = %bb.ak, %bb.al
  %.0.i38 = phi ptr [ %i.ci, %bb.ak ], [ %i.cj, %bb.al ]
  store ptr %.0.i38, ptr %i.k, align 8, !tbaa !105
  call void @_ZN3jxl14CompressParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(648) dereferenceable(648) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl11EncodeFrameEP22JxlMemoryManagerStructRKNS_14CompressParamsERKNS_9FrameInfoEPKNS_13CodecMetadataERNS_29JxlEncoderChunkedFrameAdapterERK15JxlCmsInterfacePNS_10ThreadPoolEP32JxlEncoderOutputProcessorWrapperPNS_6AuxOutE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(648) %1, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #2 {
bb.a:
  %9 = alloca %"class.jxl::ThreadPool", align 8   ; 6 uses
  %10 = alloca %"class.jxl::ThreadPool", align 8  ; 6 uses
  %11 = alloca %class.anon.1034, align 1          ; 4 uses
  %12 = alloca %class.anon.1034, align 1          ; 4 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %13 = alloca %"struct.jxl::CompressParams", align 8 ; 30 uses
  %14 = alloca %"class.std::__1::vector.43", align 8 ; 24 uses
  %15 = alloca %"struct.jxl::CompressParams", align 8 ; 19 uses
  %16 = alloca %"class.std::__1::vector.8", align 8 ; 15 uses
  %17 = alloca %class.anon, align 8               ; 15 uses
  %18 = alloca %"class.std::__1::vector.43", align 8 ; 7 uses
  %19 = alloca %"class.std::__1::vector.8", align 8 ; 4 uses
  %20 = alloca %"class.std::__1::vector.43", align 8 ; 5 uses
  %21 = alloca %"class.std::__1::vector.43", align 8 ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !120
  store ptr %3, ptr %i.b, align 8, !tbaa !122
  store ptr %8, ptr %i.c, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @_ZN3jxl14CompressParamsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(648) %13, ptr noundef nonnull align 8 dereferenceable(648) %1) #29
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 52 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !91
  switch i32 %i.e, label %.thread [
    i32 -1, label %bb.b
    i32 9, label %.thread.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 76
  %i.g = load i8, ptr %i.f, align 4, !tbaa !83, !range !84, !noundef !85
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %bb.b
  %i.i = load float, ptr %13, align 8, !tbaa !86
  %.fr26.i.i = freeze float %i.i
  %i.j = fcmp une float %.fr26.i.i, 0.000000e+00
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, 0
  %or.cond.i.i = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond.i.i, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %.not17.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not17.i.i, label %.thread192, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.d
  %i.r = load float, ptr %i.o, align 4, !tbaa !96
  %i.s = fcmp ogt float %i.r, 0.000000e+00
  br i1 %i.s, label %.thread.sink.split, label %.critedge.us.i.i

bb.e:                                             ; preds = %.critedge.us.i.i
  %i.t = load float, ptr %i.v, align 4, !tbaa !96
  %i.u = fcmp ogt float %i.t, 0.000000e+00
  br i1 %i.u, label %.thread.sink.split, label %.critedge.us.i.i

.critedge.us.i.i:                                 ; preds = %.lr.ph.split.us.i.i, %bb.e
  %.sroa.012.018.us24.i.i = phi ptr [ %i.v, %bb.e ], [ %i.o, %.lr.ph.split.us.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.018.us24.i.i, i64 4 ; 3 uses
  %.not.us.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not.us.i.i, label %.thread192, label %bb.e

.thread192:                                       ; preds = %.critedge.us.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN3jxl14CompressParamsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(648) %15, ptr noundef nonnull align 8 dereferenceable(648) %1) #29
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 52
  store i32 0, ptr %i.w, align 4, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 228
  store i32 4, ptr %i.x, align 4, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 224 ; 2 uses
  store float 1.000000e+00, ptr %i.y, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 80
  store i32 3, ptr %i.z, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 380 ; 2 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !97
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 272 ; 2 uses
  store i32 15, ptr %i.ab, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 372
  store <2 x float> <float 9.500000e+01, float 8.000000e+01>, ptr %i.ac, align 4, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 284 ; 2 uses
  store i32 3, ptr %i.ad, align 4, !tbaa !98
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 87 ; 2 uses
  store i8 -1, ptr %i.ae, align 1, !tbaa !99
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 17 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !105 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !101
  %i.aj = icmp ult ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread192
  call void @_ZN3jxl14CompressParamsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(648) %i.ag, ptr noundef nonnull align 8 dereferenceable(648) %15) #29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 648
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit

bb.g:                                             ; preds = %.thread192
  %i.al = call noundef ptr @_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEPS2_OT_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(648) %15) #29
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit

_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit: ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.ak, %bb.f ], [ %i.al, %bb.g ] ; 4 uses
  store ptr %.0.i, ptr %i.af, align 8, !tbaa !105
  store i32 0, ptr %i.ab, align 8, !tbaa !95
  store float f0x3C23D70A, ptr %i.y, align 8, !tbaa !93
  store i32 70000, ptr %i.aa, align 4, !tbaa !97
  store i8 0, ptr %i.ae, align 1, !tbaa !99
  store i32 2, ptr %i.ad, align 4, !tbaa !98
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !101
  %i.an = icmp ult ptr %.0.i, %i.am
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit
  call void @_ZN3jxl14CompressParamsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(648) %.0.i, ptr noundef nonnull align 8 dereferenceable(648) %15) #29
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 648
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit61

bb.i:                                             ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit
  %i.ap = call noundef ptr @_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEPS2_OT_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(648) %15) #29
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit61

_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit61: ; preds = %bb.h, %bb.i
  %.0.i60 = phi ptr [ %i.ao, %bb.h ], [ %i.ap, %bb.i ] ; 5 uses
  store ptr %.0.i60, ptr %i.af, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.aq = load ptr, ptr %14, align 8, !tbaa !125  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %.not191 = icmp eq ptr %.0.i60, %i.aq
  br i1 %.not191, label %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit61
  %i.as = ptrtoint ptr %.0.i60 to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 648
  call void @_ZNSt3__16vectorImNS_9allocatorImEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %i.av) #29
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !105
  %.pre146 = load ptr, ptr %14, align 8, !tbaa !125
  br label %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit

_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit: ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit61, %bb.j
  %22 = phi ptr [ %.0.i60, %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit61 ], [ %.pre146, %bb.j ]
  %23 = phi ptr [ %.0.i60, %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit61 ], [ %.pre, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  store ptr %i.a, ptr %17, align 8, !tbaa !128
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %14, ptr %i.aw, align 8, !tbaa !711
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %2, ptr %i.ax, align 8, !tbaa !712
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %i.b, ptr %i.ay, align 8, !tbaa !713
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr %4, ptr %i.az, align 8, !tbaa !714
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 40
  store ptr %5, ptr %i.ba, align 8, !tbaa !133
  %i.bb = getelementptr inbounds nuw i8, ptr %17, i64 48
  store ptr %i.c, ptr %i.bb, align 8, !tbaa !135
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 56
  store ptr %16, ptr %i.bc, align 8, !tbaa !137
  %24 = ptrtoint ptr %23 to i64
  %25 = ptrtoint ptr %22 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 648
  %28 = trunc i64 %27 to i32                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.bd = icmp eq ptr %6, null                    ; 2 uses
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store ptr null, ptr %10, align 8, !tbaa !139
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %10, ptr %i.be, align 8, !tbaa !140
  %i.bf = call fastcc i32 @"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_11EncodeFrameEP22JxlMemoryManagerStructRKNS_14CompressParamsERKNS_9FrameInfoEPKNS_13CodecMetadataERNS_29JxlEncoderChunkedFrameAdapterERK15JxlCmsInterfacePS0_P32JxlEncoderOutputProcessorWrapperPNS_6AuxOutEE3$_0EENS_6StatusESJ_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SO_EESP_jjSV_RKT0_SX_"(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(64) %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_11EncodeFrameEP22JxlMemoryManagerStructRKNS_14CompressParamsERKNS_9FrameInfoEPKNS_13CodecMetadataERNS_29JxlEncoderChunkedFrameAdapterERK15JxlCmsInterfacePNS_10ThreadPoolEP32JxlEncoderOutputProcessorWrapperPNS_6AuxOutEE3$_0EENS_6StatusESJ_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SO_EESP_SJ_jjSV_RKT0_SX_.exit"

bb.l:                                             ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit
  %i.bg = call fastcc i32 @"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_11EncodeFrameEP22JxlMemoryManagerStructRKNS_14CompressParamsERKNS_9FrameInfoEPKNS_13CodecMetadataERNS_29JxlEncoderChunkedFrameAdapterERK15JxlCmsInterfacePS0_P32JxlEncoderOutputProcessorWrapperPNS_6AuxOutEE3$_0EENS_6StatusESJ_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SO_EESP_jjSV_RKT0_SX_"(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(64) %17) #29
  br label %"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_11EncodeFrameEP22JxlMemoryManagerStructRKNS_14CompressParamsERKNS_9FrameInfoEPKNS_13CodecMetadataERNS_29JxlEncoderChunkedFrameAdapterERK15JxlCmsInterfacePNS_10ThreadPoolEP32JxlEncoderOutputProcessorWrapperPNS_6AuxOutEE3$_0EENS_6StatusESJ_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SO_EESP_SJ_jjSV_RKT0_SX_.exit"

"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_11EncodeFrameEP22JxlMemoryManagerStructRKNS_14CompressParamsERKNS_9FrameInfoEPKNS_13CodecMetadataERNS_29JxlEncoderChunkedFrameAdapterERK15JxlCmsInterfacePNS_10ThreadPoolEP32JxlEncoderOutputProcessorWrapperPNS_6AuxOutEE3$_0EENS_6StatusESJ_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SO_EESP_SJ_jjSV_RKT0_SX_.exit": ; preds = %bb.k, %bb.l
  %.sroa.0.0.i = phi i32 [ %i.bf, %bb.k ], [ %i.bg, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.bh = icmp eq i32 %.sroa.0.0.i, 0
  br i1 %i.bh, label %bb.o, label %.critedge

.critedge:                                        ; preds = %"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_11EncodeFrameEP22JxlMemoryManagerStructRKNS_14CompressParamsERKNS_9FrameInfoEPKNS_13CodecMetadataERNS_29JxlEncoderChunkedFrameAdapterERK15JxlCmsInterfacePNS_10ThreadPoolEP32JxlEncoderOutputProcessorWrapperPNS_6AuxOutEE3$_0EENS_6StatusESJ_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SO_EESP_SJ_jjSV_RKT0_SX_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.bi = load ptr, ptr %16, align 8, !tbaa !112  ; 4 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit, label %bb.m

bb.m:                                             ; preds = %.critedge
  store ptr %i.bi, ptr %i.ar, align 8, !tbaa !113
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !114
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #33
  br label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit

_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit: ; preds = %.critedge, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @_ZN3jxl14CompressParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(648) dereferenceable(648) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.bo = load ptr, ptr %14, align 8, !tbaa !125  ; 5 uses
  %.not.i.i62 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i62, label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit
  %i.bp = load ptr, ptr %i.af, align 8, !tbaa !105 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bo, %i.bp
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i ], [ %i.bp, %bb.n ]
  %i.bq = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -648 ; 3 uses
  call void @_ZN3jxl14CompressParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(648) dereferenceable(648) %i.bq) #30
  %.not.i.i.i.i = icmp eq ptr %i.bo, %i.bq
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !707

_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %14, align 8, !tbaa !125
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i

_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i, %bb.n
  %i.br = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i ], [ %i.bo, %bb.n ] ; 2 uses
  store ptr %i.bo, ptr %i.af, align 8, !tbaa !105
  %i.bs = load ptr, ptr %i.ah, align 8, !tbaa !101
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #33
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit, %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %_ZN3jxl14ParamsPostInitEPNS_14CompressParamsE.exit

bb.o:                                             ; preds = %"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_11EncodeFrameEP22JxlMemoryManagerStructRKNS_14CompressParamsERKNS_9FrameInfoEPKNS_13CodecMetadataERNS_29JxlEncoderChunkedFrameAdapterERK15JxlCmsInterfacePNS_10ThreadPoolEP32JxlEncoderOutputProcessorWrapperPNS_6AuxOutEE3$_0EENS_6StatusESJ_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SO_EESP_SJ_jjSV_RKT0_SX_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.bw = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.by = load ptr, ptr %14, align 8, !tbaa !125  ; 3 uses
  %i.bz = load ptr, ptr %i.af, align 8, !tbaa !105 ; 3 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 3 uses
  %.not.i.i63 = icmp eq ptr %i.bz, %i.by
  br i1 %.not.i.i63, label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEEC2ERKS5_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = sdiv exact i64 %i.cc, 648
  %i.ce = icmp ugt i64 %i.cd, 28467197644613505
  br i1 %i.ce, label %bb.q, label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZNKSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #31
  unreachable

_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i: ; preds = %bb.p
  %i.cf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #32 ; 6 uses
  store ptr %i.cf, ptr %18, align 8, !tbaa !125
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cc ; 2 uses
  store ptr %i.cg, ptr %i.bx, align 8, !tbaa !101
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i ], [ %i.by, %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i ] ; 2 uses
  %.01113.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i ], [ %i.cf, %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i ] ; 2 uses
  call void @_ZN3jxl14CompressParamsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(648) %.01113.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(648) %.014.i.i.i.i.i) #29
  %i.ch = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 648 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01113.i.i.i.i.i, i64 648 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, %i.bz
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !708

_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cf to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cf, i64 %i.cl ; 2 uses
  store ptr %i.cm, ptr %i.bw, align 8, !tbaa !105
  %i.cn = ptrtoint ptr %i.cg to i64
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEEC2ERKS5_.exit

_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEEC2ERKS5_.exit: ; preds = %bb.o, %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.i.i
  %i.co = phi i64 [ 0, %bb.o ], [ %i.cn, %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.i.i ]
  %i.cp = phi ptr [ null, %bb.o ], [ %i.cm, %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.i.i ] ; 2 uses
  %.pre1.i.i101 = phi ptr [ null, %bb.o ], [ %i.cf, %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.cq = load ptr, ptr %16, align 8, !tbaa !112  ; 3 uses
  %i.cr = load ptr, ptr %i.ar, align 8, !tbaa !113 ; 2 uses
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 4 uses
  %.not.i.i64 = icmp ne ptr %i.cr, %i.cq
  call void @llvm.assume(i1 %.not.i.i64)
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %bb.r, label %_ZNSt3__16vectorImNS_9allocatorImEEE11__vallocateB8nn180100Em.exit.i.i

bb.r:                                             ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEEC2ERKS5_.exit
  call void @_ZNKSt3__16vectorImNS_9allocatorImEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #31
  unreachable

_ZNSt3__16vectorImNS_9allocatorImEEE11__vallocateB8nn180100Em.exit.i.i: ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEEC2ERKS5_.exit
  %i.cw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #32 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr align 8 %i.cq, i64 %i.cu, i1 false)
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !142
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !142
  %.not = icmp ugt i64 %i.cx, %i.cz
  br i1 %.not, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEE11__vallocateB8nn180100Em.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @_ZN3jxl32TectonicPlateSettingsLessPaletteERKNS_14CompressParamsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.43") align 8 %20, ptr noundef nonnull align 8 dereferenceable(648) %1) #29
  %i.da = load ptr, ptr %14, align 8, !tbaa !125  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEED2B8nn180100Ev.exit73, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = load ptr, ptr %i.af, align 8, !tbaa !105 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.da, %i.db
  br i1 %.not6.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i ], [ %i.db, %bb.t ]
  %i.dc = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -648 ; 3 uses
  call void @_ZN3jxl14CompressParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(648) dereferenceable(648) %i.dc) #30
  %.not.i.i.i.i.i.i = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !707

_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %14, align 8, !tbaa !125
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.loopexit.i.i.i, %bb.t
  %i.dd = phi ptr [ %.pre.i.i.i, %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.loopexit.i.i.i ], [ %i.da, %bb.t ] ; 2 uses
  store ptr %i.da, ptr %i.af, align 8, !tbaa !105
  %i.de = load ptr, ptr %i.ah, align 8, !tbaa !101
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #33
  br label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEED2B8nn180100Ev.exit73

_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEED2B8nn180100Ev.exit73: ; preds = %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i, %bb.s
  %i.di = load ptr, ptr %20, align 8, !tbaa !125  ; 2 uses
  store ptr %i.di, ptr %14, align 8, !tbaa !125
  %i.dj = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.dk = load <2 x ptr>, ptr %i.dj, align 8, !tbaa !101
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !105
  store <2 x ptr> %i.dk, ptr %i.af, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.w

bb.u:                                             ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEE11__vallocateB8nn180100Em.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  call void @_ZN3jxl32TectonicPlateSettingsMorePaletteERKNS_14CompressParamsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.43") align 8 %21, ptr noundef nonnull align 8 dereferenceable(648) %1) #29
  %i.dm = load ptr, ptr %14, align 8, !tbaa !125  ; 5 uses
  %.not.i.i.i74 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i74, label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEED2B8nn180100Ev.exit91, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dn = load ptr, ptr %i.af, align 8, !tbaa !105 ; 2 uses
  %.not6.i.i.i.i.i.i75 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not6.i.i.i.i.i.i75, label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i81, label %.lr.ph.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i76:                             ; preds = %bb.v, %.lr.ph.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i77 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i76 ], [ %i.dn, %bb.v ]
  %i.do = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i77, i64 -648 ; 3 uses
  call void @_ZN3jxl14CompressParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(648) dereferenceable(648) %i.do) #30
  %.not.i.i.i.i.i.i78 = icmp eq ptr %i.dm, %i.do
  br i1 %.not.i.i.i.i.i.i78, label %_ZNSt3__16vectorIN3jxl14CompressParamsENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.loopexit.i.i.i79, label %.lr.ph.i.i.i.i.i.i76, !llvm.loop !707

end_hunk_0
begin_hunk_1_@_ZN3jxl12_GLOBAL__N_115MakeFrameHeaderEmmRKNS_14CompressParamsERKNS_19ProgressiveSplitterERKNS_9FrameInfoEPKNS_4jpeg8JPEGDataEbPNS_11FrameHeaderE:bb.a
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 256
  store i8 1, ptr %i.if, align 8, !tbaa !923
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bb
  %i.ig = load i32, ptr %i.hd, align 4, !tbaa !88
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 268
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !472
  %i.ii = getelementptr inbounds nuw i8, ptr %6, i64 408
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !473 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 328 ; 5 uses
  %i.il = getelementptr inbounds nuw i8, ptr %6, i64 272 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 280
  %i.in = load ptr, ptr %i.il, align 8, !tbaa !109
  store ptr %i.in, ptr %i.im, align 8, !tbaa !110
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 336 ; 5 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !474
  %i.iq = load ptr, ptr %i.ik, align 8, !tbaa !475
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = sdiv exact i64 %i.it, 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.iv = load i32, ptr %i.hh, align 8, !tbaa !90
  store i32 %i.iv, ptr %i.a, align 4, !tbaa !297
  call void @_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.il, i64 noundef %i.iu, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !924
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = getelementptr inbounds nuw i8, ptr %6, i64 396
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !925
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !433, !range !84, !noundef !85
  %i.jc = trunc nuw i8 %i.jb to i1                ; 2 uses
  br i1 %i.jc, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jd = getelementptr inbounds nuw i8, ptr %6, i64 256
  %i.je = load i8, ptr %i.jd, align 8, !tbaa !923, !range !84, !noundef !85
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.bi, label %.loopexit

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.jg = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !926 ; 2 uses
  switch i32 %i.jh, label %bb.bl [
    i32 -1, label %bb.bj
    i32 0, label %.loopexit236
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.ji = load ptr, ptr %i.io, align 8, !tbaa !474
  %i.jj = load ptr, ptr %i.ik, align 8, !tbaa !475 ; 2 uses
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl
  %i.jn = sdiv exact i64 %i.jm, 96                ; 2 uses
  %i.jo = icmp ugt i64 %i.jn, 1
  br i1 %i.jo, label %.preheader, label %.loopexit236

.preheader:                                       ; preds = %bb.bj, %bb.bk
  %.0174238 = phi i64 [ %i.jt, %bb.bk ], [ 0, %bb.bj ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [96 x i8], ptr %i.jj, i64 %.0174238
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !478
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %.loopexit236, label %bb.bk

bb.bk:                                            ; preds = %.preheader
  %i.jt = add nuw i64 %.0174238, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.jt, %i.jn
  br i1 %exitcond.not, label %.loopexit236, label %.preheader, !llvm.loop !905

bb.bl:                                            ; preds = %bb.bi
  %i.ju = sext i32 %i.jh to i64                   ; 2 uses
  %i.jv = load ptr, ptr %i.io, align 8, !tbaa !474
  %i.jw = load ptr, ptr %i.ik, align 8, !tbaa !475
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = sdiv exact i64 %i.jz, 96
  %i.kb = icmp ugt i64 %i.ka, %i.ju
  br i1 %i.kb, label %.loopexit236, label %_ZNK3jxl19ProgressiveSplitter10InitPassesEPNS_6PassesE.exit

.loopexit236:                                     ; preds = %bb.bk, %.preheader, %bb.bi, %bb.bl, %bb.bj
  %.1 = phi i64 [ %i.ju, %bb.bl ], [ 0, %bb.bj ], [ 0, %bb.bi ], [ %.0174238, %.preheader ], [ 0, %bb.bk ] ; 2 uses
  %i.kc = trunc i64 %.1 to i32                    ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %6, i64 316
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !927
  br i1 %i.jc, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.loopexit236
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !435
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit236, %bb.bm
  %i.kg = phi i32 [ %i.kf, %bb.bm ], [ 0, %.loopexit236 ]
  %i.kh = getelementptr inbounds nuw i8, ptr %6, i64 312
  store i32 %i.kg, ptr %i.kh, align 8, !tbaa !928
  %i.ki = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !929
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = getelementptr inbounds nuw i8, ptr %6, i64 324
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !930
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.kn = load i8, ptr %i.km, align 8, !tbaa !931, !range !84, !noundef !85
  %i.ko = getelementptr inbounds nuw i8, ptr %6, i64 320
  store i8 %i.kn, ptr %i.ko, align 8, !tbaa !932
  %i.kp = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.kq = load ptr, ptr %i.io, align 8, !tbaa !474 ; 2 uses
  %i.kr = load ptr, ptr %i.ik, align 8, !tbaa !475 ; 2 uses
  %.not240 = icmp eq ptr %i.kq, %i.kr
  br i1 %.not240, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bn
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %6, i64 344 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %4, i64 60
  %.pre245.a = load ptr, ptr %i.ks, align 8, !tbaa !396
  %.pre247.a = load ptr, ptr %i.kp, align 8, !tbaa !395
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph, %bb.br
  %i.kv = phi ptr [ %i.kr, %.lr.ph ], [ %i.lv, %bb.br ] ; 2 uses
  %i.kw = phi ptr [ %i.kq, %.lr.ph ], [ %i.lw, %bb.br ]
  %i.kx = phi ptr [ %.pre247.a, %.lr.ph ], [ %i.lx, %bb.br ] ; 3 uses
  %i.ky = phi ptr [ %.pre245.a, %.lr.ph ], [ %i.ly, %bb.br ] ; 2 uses
  %.0171239 = phi i64 [ 0, %.lr.ph ], [ %i.lz, %bb.br ] ; 7 uses
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kx to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = sdiv exact i64 %i.lb, 40
  %i.ld = icmp ult i64 %.0171239, %i.lc
  br i1 %i.ld, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.le = getelementptr inbounds nuw [40 x i8], ptr %i.kx, i64 %.0171239
  %i.lf = load ptr, ptr %i.kt, align 8, !tbaa !395
  %i.lg = getelementptr inbounds nuw [40 x i8], ptr %i.lf, i64 %.0171239
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.lh, ptr noundef nonnull align 8 dereferenceable(25) %i.li, i64 25, i1 false)
  %.pre244 = load ptr, ptr %i.ks, align 8, !tbaa !396
  %.pre246 = load ptr, ptr %i.kp, align 8, !tbaa !395
  %.pre248.a = load ptr, ptr %i.io, align 8, !tbaa !474
  %.pre249 = load ptr, ptr %i.ik, align 8, !tbaa !475
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.lj = load ptr, ptr %i.kt, align 8, !tbaa !395
  %i.lk = getelementptr inbounds nuw [40 x i8], ptr %i.lj, i64 %.0171239 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  store i32 %i.kc, ptr %i.ll, align 4, !tbaa !933
  %i.lm = load i32, ptr %i.ku, align 4, !tbaa !435
  %i.ln = getelementptr inbounds nuw [96 x i8], ptr %i.kv, i64 %.0171239
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !478
  %.not205 = icmp eq i32 %i.lp, 4
  %.not206 = icmp eq i64 %.0171239, %.1
  %or.cond207 = or i1 %.not206, %.not205
  %.0 = select i1 %or.cond207, i32 %i.lm, i32 1
  %i.lq = load i8, ptr %i.ja, align 8, !tbaa !433, !range !84, !noundef !85
  %i.lr = trunc nuw i8 %i.lq to i1
  %i.ls = select i1 %i.lr, i32 %.0, i32 0
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store i32 %i.ls, ptr %i.lt, align 8, !tbaa !934
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lk, i64 20
  store i32 1, ptr %i.lu, align 4, !tbaa !935
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.lv = phi ptr [ %.pre249, %bb.bp ], [ %i.kv, %bb.bq ] ; 2 uses
  %i.lw = phi ptr [ %.pre248.a, %bb.bp ], [ %i.kw, %bb.bq ] ; 2 uses
  %i.lx = phi ptr [ %.pre246, %bb.bp ], [ %i.kx, %bb.bq ]
  %i.ly = phi ptr [ %.pre244, %bb.bp ], [ %i.ky, %bb.bq ]
  %i.lz = add nuw i64 %.0171239, 1                ; 2 uses
  %i.ma = ptrtoint ptr %i.lw to i64
  %i.mb = ptrtoint ptr %i.lv to i64
  %i.mc = sub i64 %i.ma, %i.mb
  %i.md = sdiv exact i64 %i.mc, 96
  %i.me = icmp ult i64 %i.lz, %i.md
  br i1 %i.me, label %bb.bo, label %.loopexit, !llvm.loop !906

.loopexit:                                        ; preds = %bb.br, %bb.bn, %bb.bh
  %i.mf = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.mg = getelementptr inbounds nuw i8, ptr %6, i64 376
  %i.mh = load <2 x i32>, ptr %i.mf, align 4, !tbaa !297
  store <2 x i32> %i.mh, ptr %i.mg, align 8, !tbaa !297
  br i1 %.not, label %_ZNK3jxl19ProgressiveSplitter10InitPassesEPNS_6PassesE.exit, label %bb.bs

bb.bs:                                            ; preds = %.loopexit
  %i.mi = load i64, ptr %i.ds, align 8, !tbaa !467
  %i.mj = and i64 %i.mi, -161
  %i.mk = or disjoint i64 %i.mj, 128
  store i64 %i.mk, ptr %i.ds, align 8, !tbaa !467
  br label %_ZNK3jxl19ProgressiveSplitter10InitPassesEPNS_6PassesE.exit

_ZNK3jxl19ProgressiveSplitter10InitPassesEPNS_6PassesE.exit: ; preds = %.loopexit, %bb.bs, %bb.bl, %bb.ba, %bb.az, %bb.ax, %bb.ay, %_ZN3jxl12_GLOBAL__N_120LoopFilterFromParamsERKNS_14CompressParamsEbPNS_11FrameHeaderE.exit, %bb.ab, %bb.ac, %bb.y, %bb.z, %bb.w, %bb.v, %bb.a
  %.sroa.0222.0 = phi i32 [ 1, %bb.ab ], [ 1, %bb.bl ], [ 1, %bb.ba ], [ 1, %bb.az ], [ 1, %bb.ax ], [ 1, %_ZN3jxl12_GLOBAL__N_120LoopFilterFromParamsERKNS_14CompressParamsEbPNS_11FrameHeaderE.exit ], [ 1, %bb.y ], [ %i.cg, %bb.w ], [ %i.cd, %bb.v ], [ 1, %bb.a ], [ 0, %.loopexit ], [ 1, %bb.z ], [ 1, %bb.ac ], [ 1, %bb.ay ], [ 0, %bb.bs ]
  ret i32 %.sroa.0222.0
}

declare void @_ZN3jxl19ModularFrameEncoder6CreateEP22JxlMemoryManagerStructRKNS_11FrameHeaderERKNS_14CompressParamsEb(ptr dead_on_unwind writable sret(%"class.jxl::StatusOr") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(576), ptr noundef nonnull align 8 dereferenceable(648), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3jxl11FrameHeader17ToFrameDimensionsEv(ptr dead_on_unwind noalias writable sret(%"struct.jxl::FrameDimensions") align 8 %0, ptr noundef nonnull align 8 dereferenceable(576) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !473  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK3jxl11FrameHeader13default_ysizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !459, !range !84, !noundef !85
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.g = tail call noundef i64 @_ZNK3jxl13PreviewHeader5xsizeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f) #30
  br label %_ZNK3jxl11FrameHeader13default_xsizeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.i = tail call noundef i64 @_ZNK3jxl10SizeHeader5xsizeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #30
  br label %_ZNK3jxl11FrameHeader13default_xsizeEv.exit

_ZNK3jxl11FrameHeader13default_xsizeEv.exit:      ; preds = %bb.c, %bb.d
  %.0.i.ph = phi i64 [ %i.i, %bb.d ], [ %i.g, %bb.c ] ; 3 uses
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !473  ; 7 uses
  %.not.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i12, label %_ZNK3jxl11FrameHeader13default_ysizeEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK3jxl11FrameHeader13default_xsizeEv.exit
  %i.j = load i8, ptr %i.c, align 8, !tbaa !459, !range !84, !noundef !85
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.pr, i64 360
  %i.m = load i8, ptr %i.l, align 8, !tbaa !479, !range !84, !noundef !85
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %.pr, i64 364
  %i.p = load i32, ptr %i.o, align 4
  %i.q = shl i32 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr %.pr, i64 368
  %i.s = load i32, ptr %i.r, align 8
  %i.t = select i1 %i.n, i32 %i.q, i32 %i.s
  br label %_ZNK3jxl11FrameHeader13default_ysizeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.pr, i64 432
  %i.v = load i8, ptr %i.u, align 8, !tbaa !480, !range !84, !noundef !85
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %.pr, i64 436
  %i.y = load i32, ptr %i.x, align 4
  %i.z = shl i32 %i.y, 3
  %i.aa = add i32 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.pr, i64 440
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = select i1 %i.w, i32 %i.aa, i32 %i.ac
  br label %_ZNK3jxl11FrameHeader13default_ysizeEv.exit

_ZNK3jxl11FrameHeader13default_ysizeEv.exit:      ; preds = %bb.a, %_ZNK3jxl11FrameHeader13default_xsizeEv.exit, %bb.f, %bb.g
  %.0.i16 = phi i64 [ %.0.i.ph, %bb.f ], [ %.0.i.ph, %bb.g ], [ %.0.i.ph, %_ZNK3jxl11FrameHeader13default_xsizeEv.exit ], [ 0, %bb.a ]
  %.0.shrunk.i = phi i32 [ %i.t, %bb.f ], [ %i.ad, %bb.g ], [ 0, %_ZNK3jxl11FrameHeader13default_xsizeEv.exit ], [ 0, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !470 ; 2 uses
  %.not = icmp eq i32 %i.af, 0
  %i.ag = zext i32 %i.af to i64
  %i.ah = select i1 %.not, i64 %.0.i16, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !471 ; 2 uses
  %.not10 = icmp eq i32 %i.aj, 0
  %.v = select i1 %.not10, i32 %.0.shrunk.i, i32 %i.aj
  %i.ak = zext i32 %.v to i64                     ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 404
  %i.am = load i32, ptr %i.al, align 4, !tbaa !469 ; 2 uses
  %.not11 = icmp eq i32 %i.am, 0
  br i1 %.not11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK3jxl11FrameHeader13default_ysizeEv.exit
  %i.an = mul i32 %i.am, 3
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = sext i32 %i.ao to i64                   ; 4 uses
  %i.aq = add i64 %i.ah, -1
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = udiv i64 %i.ar, %i.ap
  %i.at = add nsw i64 %i.ak, -1
  %i.au = add nsw i64 %i.at, %i.ap
  %i.av = udiv i64 %i.au, %i.ap
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK3jxl11FrameHeader13default_ysizeEv.exit
  %.06 = phi i64 [ %i.as, %bb.h ], [ %i.ah, %_ZNK3jxl11FrameHeader13default_ysizeEv.exit ] ; 2 uses
  %.0 = phi i64 [ %i.av, %bb.h ], [ %i.ak, %_ZNK3jxl11FrameHeader13default_ysizeEv.exit ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !461
  %i.ay = zext i32 %i.ax to i64                   ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !465
  %i.bb = zext i8 %i.ba to i64                    ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !466
  %i.be = zext i8 %i.bd to i64                    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !354
  %i.bh = icmp eq i32 %i.bg, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !472
  %i.bk = zext i32 %i.bj to i64                   ; 5 uses
  %i.bl = shl i64 128, %i.ay                      ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !296
  %i.bn = shl i64 1024, %i.ay
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !481
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.06, ptr %i.bp, align 8, !tbaa !482
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.0, ptr %i.bq, align 8, !tbaa !483
  %i.br = add nsw i64 %i.bk, -1                   ; 2 uses
  %i.bs = add i64 %i.br, %.06
  %i.bt = udiv i64 %i.bs, %i.bk                   ; 4 uses
  store i64 %i.bt, ptr %0, align 8, !tbaa !399
  %i.bu = add i64 %i.br, %.0
  %i.bv = udiv i64 %i.bu, %i.bk                   ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !400
  %i.bx = shl i64 8, %i.bb
  %i.by = add i64 %i.bt, -1                       ; 2 uses
  %i.bz = add i64 %i.by, %i.bx
  %i.ca = add nuw nsw i64 %i.bb, 3
  %i.cb = lshr i64 %i.bz, %i.ca
  %i.cc = shl i64 %i.cb, %i.bb                    ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !484
  %i.ce = shl i64 8, %i.be
  %i.cf = add i64 %i.bv, -1                       ; 2 uses
  %i.cg = add i64 %i.cf, %i.ce
  %i.ch = add nuw nsw i64 %i.be, 3
  %i.ci = lshr i64 %i.cg, %i.ch
  %i.cj = shl i64 %i.ci, %i.be                    ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !485
  %i.cl = shl i64 %i.cc, 3                        ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !486
  %i.cn = shl i64 %i.cj, 3                        ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !487
  br i1 %i.bh, label %bb.j, label %_ZN3jxl15FrameDimensions3SetEmmmmmbm.exit

bb.j:                                             ; preds = %bb.i
  store i64 %i.bt, ptr %i.cm, align 8, !tbaa !486
  store i64 %i.bv, ptr %i.co, align 8, !tbaa !487
  br label %_ZN3jxl15FrameDimensions3SetEmmmmmbm.exit

_ZN3jxl15FrameDimensions3SetEmmmmmbm.exit:        ; preds = %bb.i, %bb.j
  %i.cp = phi i64 [ %i.bv, %bb.j ], [ %i.cn, %bb.i ]
  %i.cq = phi i64 [ %i.bt, %bb.j ], [ %i.cl, %bb.i ]
  %i.cr = mul i64 %i.cq, %i.bk
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !488
  %i.ct = mul i64 %i.cp, %i.bk
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !489
  %i.cv = add i64 %i.by, %i.bl
  %i.cw = add nuw nsw i64 %i.ay, 7                ; 4 uses
  %i.cx = lshr i64 %i.cv, %i.cw                   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !490
  %i.cz = add i64 %i.cf, %i.bl
  %i.da = lshr i64 %i.cz, %i.cw                   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.da, ptr %i.db, align 8, !tbaa !491
  %i.dc = add i64 %i.bl, -1                       ; 2 uses
  %i.dd = add i64 %i.cc, %i.dc
  %i.de = lshr i64 %i.dd, %i.cw                   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.de, ptr %i.df, align 8, !tbaa !492
  %i.dg = add i64 %i.cj, %i.dc
  %i.dh = lshr i64 %i.dg, %i.cw                   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !493
  %i.dj = mul i64 %i.da, %i.cx
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !355
  %i.dl = mul i64 %i.dh, %i.de
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !398
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i32 @_ZN3jxl12_GLOBAL__N_119ComputeEncodingDataERKNS_14CompressParamsERKNS_9FrameInfoEPKNS_13CodecMetadataERNS_29JxlEncoderChunkedFrameAdapterEPKNS_4jpeg8JPEGDataEmmmmRK15JxlCmsInterfacePNS_10ThreadPoolERNS_11FrameHeaderERNS_19ModularFrameEncoderERNS_18PassesEncoderStateEPNSt3__16vectorINSR_10unique_ptrINS_9BitWriterENSR_14default_deleteISU_EEEENSR_9allocatorISX_EEEEPNS_6AuxOutE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(576) %11, ptr noundef nonnull align 8 dereferenceable(1296) %12, ptr noundef nonnull align 8 dereferenceable(3936) %13, ptr noundef nonnull %14, ptr noundef %15) unnamed_addr #2 {
bb.a:
  %16 = alloca %"class.jxl::Plane.148", align 8   ; 8 uses
end_hunk_1
