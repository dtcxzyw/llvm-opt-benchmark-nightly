Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MSFBuilder?download=true
inline.NumInlined: 1562
inline.NumDeleted: 772
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm3msf10MSFBuilder14generateLayoutEv:bb.a
  %.not.i.i.i67 = icmp ult i32 %i.jl, %i.jj
  br i1 %.not.i.i.i67, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %.not29.i.i.i = icmp eq i32 %i.jj, 0
  br i1 %.not29.i.i.i, label %_ZN4llvm9BitVectoraSERKS0_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jn = load ptr, ptr %i.de, align 8, !tbaa !38 ; 2 uses
  %i.jo = load ptr, ptr %i.k, align 8, !tbaa !38  ; 2 uses
  %.not31.i.i.i = icmp eq i32 %i.jj, 1
  br i1 %.not31.i.i.i, label %bb.ac, label %bb.ab, !prof !60

bb.ab:                                            ; preds = %bb.aa
  %.idx.i.i.i = shl nuw nsw i64 %i.jk, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jo, ptr align 8 %i.jn, i64 %.idx.i.i.i, i1 false)
  br label %_ZN4llvm9BitVectoraSERKS0_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !42
  store i64 %i.jp, ptr %i.jo, align 8, !tbaa !42
  br label %_ZN4llvm9BitVectoraSERKS0_.exit

bb.ad:                                            ; preds = %.loopexit
  %i.jq = load i32, ptr %i.n, align 4, !tbaa !39
  %i.jr = icmp ult i32 %i.jq, %i.jj
  br i1 %i.jr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.m, align 8, !tbaa !40
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.k, ptr noundef nonnull %i.l, i64 noundef %i.jk, i64 noundef 8) #19
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i

bb.af:                                            ; preds = %bb.ad
  %.not28.i.i.i = icmp eq i32 %i.jl, 0
  br i1 %.not28.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.js = load ptr, ptr %i.de, align 8, !tbaa !38 ; 2 uses
  %i.jt = load ptr, ptr %i.k, align 8, !tbaa !38  ; 2 uses
  %.not33.i.i.i = icmp eq i32 %i.jl, 1
  br i1 %.not33.i.i.i, label %bb.ai, label %bb.ah, !prof !60

bb.ah:                                            ; preds = %bb.ag
  %.idx32.i.i.i = shl nuw nsw i64 %i.jm, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jt, ptr align 8 %i.js, i64 %.idx32.i.i.i, i1 false)
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ju = load i64, ptr %i.js, align 8, !tbaa !42
  store i64 %i.ju, ptr %i.jt, align 8, !tbaa !42
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i:         ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ae
  %.022.i.i.i = phi i64 [ 0, %bb.ae ], [ 0, %bb.af ], [ %i.jm, %bb.ah ], [ 1, %bb.ai ] ; 4 uses
  %i.jv = load i32, ptr %i.ji, align 8, !tbaa !40
  %i.jw = zext i32 %i.jv to i64                   ; 2 uses
  %.not.i.i.i.i = icmp samesign eq i64 %.022.i.i.i, %i.jw
  br i1 %.not.i.i.i.i, label %_ZN4llvm9BitVectoraSERKS0_.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i
  %i.jx = load ptr, ptr %i.de, align 8, !tbaa !38
  %.idx35.i.i.i = shl nuw nsw i64 %.022.i.i.i, 3
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.idx35.i.i.i
  %i.jz = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.022.i.i.i
  %i.kb = sub nsw i64 %i.jw, %.022.i.i.i
  %gepdiff.i.i.i = shl nsw i64 %i.kb, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ka, ptr align 8 %i.jy, i64 %gepdiff.i.i.i, i1 false)
  br label %_ZN4llvm9BitVectoraSERKS0_.exit

_ZN4llvm9BitVectoraSERKS0_.exit:                  ; preds = %bb.z, %bb.ab, %bb.ac, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i, %bb.aj
  store i32 %i.jj, ptr %i.m, align 8, !tbaa !40
  %i.kc = load i32, ptr %i.df, align 8, !tbaa !43 ; 2 uses
  store i32 %i.kc, ptr %i.o, align 8, !tbaa !43
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ke = load i8, ptr %i.kd, align 8
  %i.kf = and i8 %i.ke, -2
  store i8 %i.kf, ptr %i.kd, align 8
  %i.kg = load ptr, ptr %2, align 8, !tbaa !99
  store ptr %i.kg, ptr %0, align 8, !tbaa !99
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ki, ptr %i.kh, align 8, !tbaa !38
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.kj, align 8, !tbaa !40
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 6, ptr %i.kk, align 4, !tbaa !39
  %.not.i.i.i.i.i = icmp eq i32 %i.jj, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm8ExpectedINS_3msf9MSFLayoutEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm9BitVectoraSERKS0_.exit
  %i.kl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.kh, ptr noundef nonnull align 8 dereferenceable(68) %i.k) ; 0 uses
  %.pre112 = load i32, ptr %i.o, align 8, !tbaa !43
  br label %_ZN4llvm8ExpectedINS_3msf9MSFLayoutEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit

_ZN4llvm8ExpectedINS_3msf9MSFLayoutEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit: ; preds = %_ZN4llvm9BitVectoraSERKS0_.exit, %bb.ak
  %i.km = phi i32 [ %i.kc, %_ZN4llvm9BitVectoraSERKS0_.exit ], [ %.pre112, %bb.ak ]
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.km, ptr %i.kn, align 8, !tbaa !43
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ko, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.kr = load <2 x ptr>, ptr %i.kq, align 8, !tbaa !103
  store <2 x ptr> %i.kr, ptr %i.kp, align 8, !tbaa !103
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !102
  store ptr %i.ku, ptr %i.ks, align 8, !tbaa !102
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kq, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.f, %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm8ExpectedINS_3msf9MSFLayoutEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit
  %i.kv = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i.i68 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i.i68, label %_ZNSt6vectorIN4llvm8ArrayRefINS0_7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEEEESaIS7_EED2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !102
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kw to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.lb) #21
  br label %_ZNSt6vectorIN4llvm8ArrayRefINS0_7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEEEESaIS7_EED2Ev.exit.i

_ZNSt6vectorIN4llvm8ArrayRefINS0_7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEEEESaIS7_EED2Ev.exit.i: ; preds = %bb.al, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.lc = load ptr, ptr %i.k, align 8, !tbaa !38  ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.l
  br i1 %i.ld, label %_ZN4llvm3msf9MSFLayoutD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN4llvm8ArrayRefINS0_7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEEEESaIS7_EED2Ev.exit.i
  call void @free(ptr noundef %i.lc) #19
  br label %_ZN4llvm3msf9MSFLayoutD2Ev.exit

_ZN4llvm3msf9MSFLayoutD2Ev.exit:                  ; preds = %_ZNSt6vectorIN4llvm8ArrayRefINS0_7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEEEESaIS7_EED2Ev.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %.not.i69 = icmp eq ptr %i.a, null
  br i1 %.not.i69, label %_ZN4llvm14TimeTraceScopeD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm3msf9MSFLayoutD2Ev.exit
  call void @_ZN4llvm20timeTraceProfilerEndEPNS_22TimeTraceProfilerEntryE(ptr noundef nonnull %i.a) #19
  br label %_ZN4llvm14TimeTraceScopeD2Ev.exit

_ZN4llvm14TimeTraceScopeD2Ev.exit:                ; preds = %_ZN4llvm3msf9MSFLayoutD2Ev.exit, %bb.an
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3msf10MSFBuilder6commitENS_9StringRefERNS0_9MSFLayoutE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.33") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(136) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.56", align 8 ; 5 uses
  %6 = alloca %"class.llvm::WritableBinaryStreamRef", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.56", align 8 ; 4 uses
  %8 = alloca %"class.llvm::WritableBinaryStreamRef", align 8 ; 5 uses
  %9 = alloca %"class.llvm::BinaryStreamWriter", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %10 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvm::Expected.24", align 8 ; 17 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %14 = alloca %"class.llvm::formatv_object", align 8 ; 14 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %15 = alloca %"class.llvm::formatv_object", align 8 ; 14 uses
  %16 = alloca %"class.llvm::Expected.53", align 8 ; 7 uses
  %17 = alloca %"class.llvm::FileBufferByteStream", align 8 ; 16 uses
  %18 = alloca %"class.llvm::BinaryStreamWriter", align 8 ; 8 uses
  %19 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %20 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %21 = alloca %"class.std::unique_ptr.56", align 8 ; 5 uses
  %22 = alloca %"class.llvm::WritableBinaryStreamRef", align 8 ; 3 uses
  %23 = alloca %"class.llvm::BinaryStreamWriter", align 8 ; 7 uses
  %24 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %25 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %26 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %i.d = tail call noundef ptr @_ZN4llvm22timeTraceProfilerBeginENS_9StringRefES0_(ptr nonnull @.str.8, i64 10, ptr null, i64 0) #19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @_ZN4llvm3msf10MSFBuilder14generateLayoutEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.24") align 8 %13, ptr noundef nonnull align 8 dereferenceable(152) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 136 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.a
  %i.h = load i64, ptr %13, align 8, !tbaa !52, !noalias !281
  %i.i = inttoptr i64 %i.h to ptr
  store ptr null, ptr %13, align 8, !tbaa !52, !noalias !281
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = or i8 %i.k, 1
  store i8 %i.l, ptr %i.j, align 8
  store ptr %i.i, ptr %0, align 8, !tbaa !52, !alias.scope !282
  br label %bb.as

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %13, align 8, !tbaa !99
  store ptr %i.m, ptr %4, align 8, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.p = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.n, ptr noundef nonnull align 8 dereferenceable(68) %i.o) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 %i.r, ptr %i.s, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 2 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !101  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !102
  %i.ab = load <2 x ptr>, ptr %i.w, align 8, !tbaa !103
  store <2 x ptr> %i.ab, ptr %i.v, align 8, !tbaa !103
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !102
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !102
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm3msf9MSFLayoutaSEOS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ag) #21
  br label %_ZN4llvm3msf9MSFLayoutaSEOS1_.exit

_ZN4llvm3msf9MSFLayoutaSEOS1_.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.ah = load ptr, ptr %4, align 8, !tbaa !99    ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  %.0.copyload.i.i.i = load i32, ptr %i.ai, align 1 ; 3 uses
  %i.aj = zext i32 %.0.copyload.i.i.i to i64      ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.0.copyload.i.i.i59 = load i32, ptr %i.ak, align 1
  %i.al = zext i32 %.0.copyload.i.i.i59 to i64
  %i.am = mul nuw i64 %i.al, %i.aj                ; 3 uses
  store i64 %i.am, ptr %i.b, align 8, !tbaa !42
  switch i32 %.0.copyload.i.i.i, label %bb.f [
    i32 8192, label %_ZN4llvm3msf27getMaxFileSizeFromBlockSizeEj.exit
    i32 16384, label %bb.d
    i32 32768, label %bb.e
  ]

bb.d:                                             ; preds = %_ZN4llvm3msf9MSFLayoutaSEOS1_.exit
  br label %_ZN4llvm3msf27getMaxFileSizeFromBlockSizeEj.exit

bb.e:                                             ; preds = %_ZN4llvm3msf9MSFLayoutaSEOS1_.exit
  br label %_ZN4llvm3msf27getMaxFileSizeFromBlockSizeEj.exit

bb.f:                                             ; preds = %_ZN4llvm3msf9MSFLayoutaSEOS1_.exit
  br label %_ZN4llvm3msf27getMaxFileSizeFromBlockSizeEj.exit

_ZN4llvm3msf27getMaxFileSizeFromBlockSizeEj.exit: ; preds = %_ZN4llvm3msf9MSFLayoutaSEOS1_.exit, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ 4294967295, %bb.f ], [ 17179869180, %bb.e ], [ 12884901885, %bb.d ], [ 8589934590, %_ZN4llvm3msf9MSFLayoutaSEOS1_.exit ]
  %i.an = icmp ugt i64 %i.am, %.0.i
  br i1 %i.an, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN4llvm3msf27getMaxFileSizeFromBlockSizeEj.exit
  switch i32 %.0.copyload.i.i.i, label %bb.j [
    i32 8192, label %_ZN4llvm5ErrorD2Ev.exit63
    i32 16384, label %bb.h
    i32 32768, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  br label %_ZN4llvm5ErrorD2Ev.exit63

bb.i:                                             ; preds = %bb.g
  br label %_ZN4llvm5ErrorD2Ev.exit63

bb.j:                                             ; preds = %bb.g
  br label %_ZN4llvm5ErrorD2Ev.exit63

_ZN4llvm5ErrorD2Ev.exit63:                        ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i62 = phi i32 [ 7, %bb.j ], [ 10, %bb.i ], [ 9, %bb.h ], [ 8, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.ao = ptrtoint ptr %i.b to i64
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  store ptr @.str.9, ptr %14, align 8, !tbaa !104, !alias.scope !283
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 57, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !42, !alias.scope !283
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !285, !alias.scope !283
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !42, !alias.scope !283
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 1, ptr %i.as, align 8, !tbaa !288, !alias.scope !283
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  store i64 %i.ap, ptr %i.at, align 8, !tbaa !100, !alias.scope !283
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  store i64 %i.ao, ptr %i.au, align 8, !tbaa !289, !alias.scope !283
  %.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRmEEEEvlS2_S3_, ptr %i.aq, align 8, !alias.scope !283
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 %i.av, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !283
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKNS8_31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i, align 8, !alias.scope !283
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 80
  store i64 %i.aw, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !47, !alias.scope !283
  %i.ax = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #20, !noalias !290 ; 3 uses
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm3msf14MSFErrCategoryEv() #19, !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19, !noalias !290
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 7, ptr %i.az, align 8, !tbaa !48, !noalias !290
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.ba, align 1, !tbaa !46, !noalias !290
  store ptr %14, ptr %12, align 8, !tbaa !47, !noalias !290
  call void @_ZN4llvm11StringErrorC2ESt10error_codeRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(57) %i.ax, i32 %.0.i62, ptr nonnull %i.ay, ptr noundef nonnull align 8 dereferenceable(34) %12) #19, !noalias !290
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm3msf8MSFErrorE, i64 16), ptr %i.ax, align 8, !tbaa !50, !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !290
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8
  %i.bd = or i8 %i.bc, 1
  store i8 %i.bd, ptr %i.bb, align 8
  store ptr %i.ax, ptr %0, align 8, !tbaa !52, !alias.scope !291
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.ar

bb.k:                                             ; preds = %_ZN4llvm3msf27getMaxFileSizeFromBlockSizeEj.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  %.0.copyload.i.i.i64 = load i32, ptr %i.be, align 1 ; 2 uses
  %i.bf = zext i32 %.0.copyload.i.i.i64 to i64
  %i.bg = icmp ne i32 %.0.copyload.i.i.i64, 0
  %i.bh = zext i1 %i.bg to i64                    ; 2 uses
  %i.bi = sub nsw i64 %i.bf, %i.bh
  %i.bj = udiv i64 %i.bi, %i.aj
  %i.bk = add i64 %i.bj, %i.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.bl = shl i64 %i.bk, 2                        ; 2 uses
  store i64 %i.bl, ptr %i.c, align 8, !tbaa !42
  %i.bm = icmp ugt i64 %i.bl, %i.aj
  br i1 %i.bm, label %_ZN4llvm5ErrorD2Ev.exit72, label %bb.l

_ZN4llvm5ErrorD2Ev.exit72:                        ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.bn = ptrtoint ptr %i.c to i64
  %i.bo = ptrtoint ptr %i.ai to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 2 uses
  store ptr @.str.10, ptr %15, align 8, !tbaa !104, !alias.scope !292
  %.sroa.22.0..sroa_idx.i.i.i.i67 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 70, ptr %.sroa.22.0..sroa_idx.i.i.i.i67, align 8, !tbaa !42, !alias.scope !292
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !285, !alias.scope !292
  %.sroa.2.0..sroa_idx.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i68, align 8, !tbaa !42, !alias.scope !292
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 1, ptr %i.br, align 8, !tbaa !288, !alias.scope !292
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  store i64 %i.bo, ptr %i.bs, align 8, !tbaa !100, !alias.scope !292
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  store i64 %i.bn, ptr %i.bt, align 8, !tbaa !289, !alias.scope !292
  %.ptr.1.i.i.i.i69 = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bs to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRmEEEEvlS2_S3_, ptr %i.bp, align 8, !alias.scope !292
  %.sroa.4.0..sroa_idx.i.i.i70 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 %i.bu, ptr %.sroa.4.0..sroa_idx.i.i.i70, align 8, !alias.scope !292
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKNS8_31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i69, align 8, !alias.scope !292
  %.sroa.6.0..sroa_idx.i.i.i71 = getelementptr inbounds nuw i8, ptr %15, i64 80
  store i64 %i.bv, ptr %.sroa.6.0..sroa_idx.i.i.i71, align 8, !tbaa !47, !alias.scope !292
  %i.bw = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #20, !noalias !293 ; 3 uses
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm3msf14MSFErrCategoryEv() #19, !noalias !293
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19, !noalias !293
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 7, ptr %i.by, align 8, !tbaa !48, !noalias !293
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.bz, align 1, !tbaa !46, !noalias !293
  store ptr %15, ptr %11, align 8, !tbaa !47, !noalias !293
  call void @_ZN4llvm11StringErrorC2ESt10error_codeRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(57) %i.bw, i32 11, ptr nonnull %i.bx, ptr noundef nonnull align 8 dereferenceable(34) %11) #19, !noalias !293
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm3msf8MSFErrorE, i64 16), ptr %i.bw, align 8, !tbaa !50, !noalias !293
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !293
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8
  %i.cc = or i8 %i.cb, 1
  store i8 %i.cc, ptr %i.ca, align 8
  store ptr %i.bw, ptr %0, align 8, !tbaa !52, !alias.scope !294
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.aq

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @_ZN4llvm16FileOutputBuffer6createENS_9StringRefEmj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.53") align 8 %16, ptr %2, i64 %3, i64 noundef %i.am, i32 noundef 0) #19
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 8, !noalias !295
  %i.cf = trunc i8 %i.ce to i1
  %.pre = load i64, ptr %16, align 8, !tbaa !57   ; 3 uses
  br i1 %i.cf, label %_ZN4llvm8ExpectedISt10unique_ptrINS_16FileOutputBufferESt14default_deleteIS2_EEE9takeErrorEv.exit, label %_ZNSt10unique_ptrIN4llvm16FileOutputBufferESt14default_deleteIS1_EED2Ev.exit

_ZN4llvm8ExpectedISt10unique_ptrINS_16FileOutputBufferESt14default_deleteIS2_EEE9takeErrorEv.exit: ; preds = %bb.l
  %.not = icmp eq i64 %.pre, 0
  br i1 %.not, label %_ZNSt10unique_ptrIN4llvm16FileOutputBufferESt14default_deleteIS1_EED2Ev.exit, label %.thread

.thread:                                          ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_16FileOutputBufferESt14default_deleteIS2_EEE9takeErrorEv.exit
  %i.cg = inttoptr i64 %.pre to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 8
  %i.cj = or i8 %i.ci, 1
  store i8 %i.cj, ptr %i.ch, align 8
  store ptr %i.cg, ptr %0, align 8, !tbaa !52, !alias.scope !296
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_16FileOutputBufferESt14default_deleteIS2_EEED2Ev.exit

_ZNSt10unique_ptrIN4llvm16FileOutputBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l, %_ZN4llvm8ExpectedISt10unique_ptrINS_16FileOutputBufferESt14default_deleteIS2_EEE9takeErrorEv.exit
  %i.ck = phi i64 [ %.pre, %bb.l ], [ 0, %_ZN4llvm8ExpectedISt10unique_ptrINS_16FileOutputBufferESt14default_deleteIS2_EEE9takeErrorEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.cl = inttoptr i64 %i.ck to ptr               ; 4 uses
  store ptr null, ptr %16, align 8, !tbaa !108
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvm20FileBufferByteStreamE, i64 16), ptr %17, align 8, !tbaa !50
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !50
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call noundef ptr %i.co(ptr noundef nonnull align 8 dereferenceable(40) %i.cl) #19, !inline_history !251 ; 3 uses
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !50
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = call noundef ptr %i.cs(ptr noundef nonnull align 8 dereferenceable(40) %i.cl) #19, !inline_history !251
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cp to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.cp, ptr %i.cx, align 8, !tbaa !110
  %i.cy = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i64 %i.cw, ptr %i.cy, align 8, !tbaa !111
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm16BinaryByteStreamE, i64 16), ptr %i.cz, align 8, !tbaa !50
  %i.da = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  store i32 1, ptr %i.da, align 8, !tbaa !115
  %i.db = getelementptr inbounds nuw i8, ptr %17, i64 48
  store ptr %i.cp, ptr %i.db, align 8, !tbaa !104
  %.sroa.2.0..sroa_idx.i.i.i.i77 = getelementptr inbounds nuw i8, ptr %17, i64 56
  store i64 %i.cw, ptr %.sroa.2.0..sroa_idx.i.i.i.i77, align 8, !tbaa !42
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvm20FileBufferByteStream10StreamImplE, i64 16), ptr %i.cm, align 8, !tbaa !50
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 4 uses
  store i64 %i.ck, ptr %i.dc, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @_ZN4llvm18BinaryStreamWriterC1ERNS_20WritableBinaryStreamE(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull align 8 dereferenceable(8) %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.dd = load ptr, ptr %4, align 8, !tbaa !99
  call void @_ZN4llvm18BinaryStreamWriter10writeBytesENS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %19, ptr noundef nonnull align 8 dereferenceable(64) %18, ptr nonnull align 1 dereferenceable(56) %i.dd, i64 56) #19
  %i.de = load ptr, ptr %19, align 8, !tbaa !62   ; 2 uses
  %.not127 = icmp eq ptr %i.de, null
  br i1 %.not127, label %_ZN4llvm5ErrorD2Ev.exit79, label %_ZN4llvm5ErrorD2Ev.exit78

_ZN4llvm5ErrorD2Ev.exit78:                        ; preds = %_ZNSt10unique_ptrIN4llvm16FileOutputBufferESt14default_deleteIS1_EED2Ev.exit
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 8
  %i.dh = or i8 %i.dg, 1
  store i8 %i.dh, ptr %i.df, align 8
  store ptr %i.de, ptr %0, align 8, !tbaa !52, !alias.scope !297
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.ai

_ZN4llvm5ErrorD2Ev.exit79:                        ; preds = %_ZNSt10unique_ptrIN4llvm16FileOutputBufferESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.di = load ptr, ptr %1, align 8, !tbaa !74, !nonnull !59, !align !75 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN4llvm23WritableBinaryStreamRefC1ERNS_20WritableBinaryStreamE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(8) %17) #19
  call void @_ZN4llvm3msf25WritableMappedBlockStream15createFpmStreamERKNS0_9MSFLayoutENS_23WritableBinaryStreamRefERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.56") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %4, ptr nofree noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(80) %i.di, i1 noundef zeroext false) #19
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit79
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.dl, align 8, !tbaa !120
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !121
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !50
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #19, !inline_history !254
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !50
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #19, !inline_history !254
  br label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit.i

bb.o:                                             ; preds = %bb.m
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.do, %bb.p ], [ %i.dy, %bb.q ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dz, label %bb.r, label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit.i, !prof !60

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #19
  br label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit.i

_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n, %_ZN4llvm5ErrorD2Ev.exit79
  call void @_ZN4llvm23WritableBinaryStreamRefC1ERNS_20WritableBinaryStreamE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(8) %17) #19
  call void @_ZN4llvm3msf25WritableMappedBlockStream15createFpmStreamERKNS0_9MSFLayoutENS_23WritableBinaryStreamRefERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.56") align 8 %7, ptr noundef nonnull align 8 dereferenceable(136) %4, ptr nofree noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(80) %i.di, i1 noundef zeroext true) #19
  %i.ea = load ptr, ptr %7, align 8, !tbaa !299   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm3msf25WritableMappedBlockStreamESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm3msf25WritableMappedBlockStreamEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4llvm3msf25WritableMappedBlockStreamEEclEPS2_.exit.i.i: ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit.i
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !50
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(184) %i.ea) #19, !inline_history !255
  br label %_ZNSt10unique_ptrIN4llvm3msf25WritableMappedBlockStreamESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm3msf25WritableMappedBlockStreamESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm3msf25WritableMappedBlockStreamEEclEPS2_.exit.i.i, %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i18.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i18.i, label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit22.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN4llvm3msf25WritableMappedBlockStreamESt14default_deleteIS2_EED2Ev.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.eg, align 8, !tbaa !120
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !121
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !50
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #19, !inline_history !254
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !50
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #19, !inline_history !254
  br label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit22.i

bb.u:                                             ; preds = %bb.s
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i19.i = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i.i19.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i20.i

bb.w:                                             ; preds = %bb.u
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i20.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i20.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i21.i = phi i32 [ %i.ej, %bb.v ], [ %i.et, %bb.w ]
  %i.eu = icmp eq i32 %.0.i.i.i.i.i21.i, 1
  br i1 %i.eu, label %bb.x, label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit22.i, !prof !60

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i20.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #19
  br label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit22.i

_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit22.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i20.i, %bb.t, %_ZNSt10unique_ptrIN4llvm3msf25WritableMappedBlockStreamESt14default_deleteIS2_EED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.ev = load ptr, ptr %5, align 8, !tbaa !299
  call void @_ZN4llvm18BinaryStreamWriterC1ERNS_20WritableBinaryStreamE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.ev) #19
  %i.ew = load ptr, ptr %4, align 8, !tbaa !99
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %.0.copyload.i.i.i31.i = load i32, ptr %i.ex, align 1 ; 2 uses
  %.not.i80 = icmp eq i32 %.0.copyload.i.i.i31.i, 0
  br i1 %.not.i80, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit22.i, %_ZN4llvm5ErrorD2Ev.exit.i
  %.0.copyload.i.i.i24.i = phi i32 [ %.0.copyload.i.i.i.i, %_ZN4llvm5ErrorD2Ev.exit.i ], [ %.0.copyload.i.i.i31.i, %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit22.i ] ; 8 uses
  %.032.i = phi i32 [ %146, %_ZN4llvm5ErrorD2Ev.exit.i ], [ 0, %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit22.i ] ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %27 = icmp ult i32 %.032.i, %.0.copyload.i.i.i24.i
  br i1 %27, label %28, label %39

28:                                               ; preds = %.lr.ph.i
  %29 = and i32 %.032.i, 56
  %30 = zext nneg i32 %29 to i64
  %31 = lshr i32 %.032.i, 6
  %32 = zext nneg i32 %31 to i64
  %33 = load ptr, ptr %i.n, align 8, !tbaa !38
  %34 = getelementptr inbounds nuw [8 x i8], ptr %33, i64 %32
  %35 = load i64, ptr %34, align 8, !tbaa !42
  %36 = lshr i64 %35, %30
  %37 = trunc i64 %36 to i8
  %38 = and i8 %37, 1
  br label %39

39:                                               ; preds = %28, %.lr.ph.i
  %40 = phi i8 [ %38, %28 ], [ 1, %.lr.ph.i ]
  %41 = or disjoint i32 %.032.i, 1                ; 2 uses
  %42 = icmp ult i32 %41, %.0.copyload.i.i.i24.i
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = and i32 %41, 57
  %45 = zext nneg i32 %44 to i64
  %46 = lshr i32 %.032.i, 6
  %47 = zext nneg i32 %46 to i64
  %48 = load ptr, ptr %i.n, align 8, !tbaa !38
  %49 = getelementptr inbounds nuw [8 x i8], ptr %48, i64 %47
  %50 = load i64, ptr %49, align 8, !tbaa !42
  %51 = lshr i64 %50, %45
  %52 = trunc i64 %51 to i8
  %53 = shl i8 %52, 1
  %54 = and i8 %53, 2
  br label %55

55:                                               ; preds = %43, %39
  %56 = phi i8 [ %54, %43 ], [ 2, %39 ]
  %57 = or disjoint i8 %56, %40
  %58 = or disjoint i32 %.032.i, 2                ; 2 uses
  %59 = icmp ult i32 %58, %.0.copyload.i.i.i24.i
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = and i32 %58, 58
  %62 = zext nneg i32 %61 to i64
  %63 = lshr i32 %.032.i, 6
  %64 = zext nneg i32 %63 to i64
  %65 = load ptr, ptr %i.n, align 8, !tbaa !38
  %66 = getelementptr inbounds nuw [8 x i8], ptr %65, i64 %64
  %67 = load i64, ptr %66, align 8, !tbaa !42
  %68 = lshr i64 %67, %62
  %69 = trunc i64 %68 to i8
  %70 = shl i8 %69, 2
  %71 = and i8 %70, 4
  br label %72

72:                                               ; preds = %60, %55
  %73 = phi i8 [ %71, %60 ], [ 4, %55 ]
  %74 = or disjoint i8 %57, %73
  %75 = or disjoint i32 %.032.i, 3                ; 2 uses
  %76 = icmp ult i32 %75, %.0.copyload.i.i.i24.i
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = and i32 %75, 59
  %79 = zext nneg i32 %78 to i64
  %80 = lshr i32 %.032.i, 6
  %81 = zext nneg i32 %80 to i64
  %82 = load ptr, ptr %i.n, align 8, !tbaa !38
  %83 = getelementptr inbounds nuw [8 x i8], ptr %82, i64 %81
  %84 = load i64, ptr %83, align 8, !tbaa !42
  %85 = lshr i64 %84, %79
  %86 = trunc i64 %85 to i8
  %87 = shl i8 %86, 3
  %88 = and i8 %87, 8
  br label %89

89:                                               ; preds = %77, %72
  %90 = phi i8 [ %88, %77 ], [ 8, %72 ]
  %91 = or disjoint i8 %74, %90
  %92 = or disjoint i32 %.032.i, 4                ; 2 uses
  %93 = icmp ult i32 %92, %.0.copyload.i.i.i24.i
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = and i32 %92, 60
  %96 = zext nneg i32 %95 to i64
  %97 = lshr i32 %.032.i, 6
  %98 = zext nneg i32 %97 to i64
  %99 = load ptr, ptr %i.n, align 8, !tbaa !38
  %100 = getelementptr inbounds nuw [8 x i8], ptr %99, i64 %98
  %101 = load i64, ptr %100, align 8, !tbaa !42
  %102 = lshr i64 %101, %96
  %103 = trunc i64 %102 to i8
  %104 = shl i8 %103, 4
  %105 = and i8 %104, 16
  br label %106

106:                                              ; preds = %94, %89
  %107 = phi i8 [ %105, %94 ], [ 16, %89 ]
  %108 = or disjoint i8 %91, %107
  %109 = or disjoint i32 %.032.i, 5               ; 2 uses
  %110 = icmp ult i32 %109, %.0.copyload.i.i.i24.i
  br i1 %110, label %111, label %123

111:                                              ; preds = %106
  %112 = and i32 %109, 61
  %113 = zext nneg i32 %112 to i64
  %114 = lshr i32 %.032.i, 6
  %115 = zext nneg i32 %114 to i64
  %116 = load ptr, ptr %i.n, align 8, !tbaa !38
  %117 = getelementptr inbounds nuw [8 x i8], ptr %116, i64 %115
  %118 = load i64, ptr %117, align 8, !tbaa !42
  %119 = lshr i64 %118, %113
  %120 = trunc i64 %119 to i8
  %121 = shl i8 %120, 5
  %122 = and i8 %121, 32
  br label %123

123:                                              ; preds = %111, %106
  %124 = phi i8 [ %122, %111 ], [ 32, %106 ]
  %125 = or i8 %108, %124
  %126 = or disjoint i32 %.032.i, 6               ; 2 uses
  %127 = icmp ult i32 %126, %.0.copyload.i.i.i24.i
  br i1 %127, label %bb.y, label %128

bb.y:                                             ; preds = %123
  %i.ey = and i32 %126, 62
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = lshr i32 %.032.i, 6
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !42
  %i.ff = lshr i64 %i.fe, %i.ez
  %i.fg = trunc i64 %i.ff to i8
  %i.fh = shl i8 %i.fg, 6
  %i.fi = and i8 %i.fh, 64
  br label %128

128:                                              ; preds = %bb.y, %123
  %129 = phi i8 [ %i.fi, %bb.y ], [ 64, %123 ]
  %130 = or i8 %125, %129
  %131 = or disjoint i32 %.032.i, 7               ; 2 uses
  %132 = icmp ult i32 %131, %.0.copyload.i.i.i24.i
  br i1 %132, label %133, label %_ZN4llvm5ErrorD2Ev.exit.i

133:                                              ; preds = %128
  %134 = and i32 %131, 63
  %135 = zext nneg i32 %134 to i64
  %136 = lshr i32 %.032.i, 6
  %137 = zext nneg i32 %136 to i64
  %138 = load ptr, ptr %i.n, align 8, !tbaa !38
  %139 = getelementptr inbounds nuw [8 x i8], ptr %138, i64 %137
  %140 = load i64, ptr %139, align 8, !tbaa !42
  %141 = lshr i64 %140, %135
  %142 = trunc i64 %141 to i8
  %143 = shl i8 %142, 7
  br label %_ZN4llvm5ErrorD2Ev.exit.i

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %133, %128
  %144 = phi i8 [ %143, %133 ], [ -128, %128 ]
  %145 = or i8 %130, %144
  %146 = add i32 %.032.i, 8                       ; 2 uses
  store i8 %145, ptr %i.a, align 1, !tbaa !47
  call void @_ZN4llvm18BinaryStreamWriter10writeBytesENS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %10, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %147 = load ptr, ptr %4, align 8, !tbaa !99
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 40
  %.0.copyload.i.i.i.i = load i32, ptr %148, align 1 ; 2 uses
  %149 = icmp ult i32 %146, %.0.copyload.i.i.i.i
  br i1 %149, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !256

._crit_edge.i:                                    ; preds = %_ZN4llvm5ErrorD2Ev.exit.i, %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit22.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamWriterE, i64 16), ptr %9, align 8, !tbaa !50
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i.i25.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i25.i, label %_ZN4llvm18BinaryStreamWriterD2Ev.exit.i, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 4 uses
  %i.fm = load atomic i64, ptr %i.fl acquire, align 8 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 4294967297
  %i.fo = trunc i64 %i.fm to i32                  ; 2 uses
  br i1 %i.fn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.fl, align 8, !tbaa !120
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i32 0, ptr %i.fp, align 4, !tbaa !121
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !50
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #19, !inline_history !257
  %i.ft = load ptr, ptr %i.fk, align 8, !tbaa !50
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #19, !inline_history !257
  br label %_ZN4llvm18BinaryStreamWriterD2Ev.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.fw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i.i81 = icmp eq i8 %i.fw, 0
  br i1 %.not.i.i.i.i.i.i81, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fx = add nsw i32 %i.fo, -1
  store i32 %i.fx, ptr %i.fl, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fy = atomicrmw volatile add ptr %i.fl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fo, %bb.ac ], [ %i.fy, %bb.ad ]
  %i.fz = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.fz, label %bb.ae, label %_ZN4llvm18BinaryStreamWriterD2Ev.exit.i, !prof !60

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #19, !inline_history !122
  br label %_ZN4llvm18BinaryStreamWriterD2Ev.exit.i

_ZN4llvm18BinaryStreamWriterD2Ev.exit.i:          ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aa, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.ga = load ptr, ptr %5, align 8, !tbaa !299   ; 3 uses
  %.not.i26.i = icmp eq ptr %i.ga, null
  br i1 %.not.i26.i, label %_ZL9commitFpmRN4llvm20WritableBinaryStreamERKNS_3msf9MSFLayoutERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit, label %_ZNKSt14default_deleteIN4llvm3msf25WritableMappedBlockStreamEEclEPS2_.exit.i27.i

_ZNKSt14default_deleteIN4llvm3msf25WritableMappedBlockStreamEEclEPS2_.exit.i27.i: ; preds = %_ZN4llvm18BinaryStreamWriterD2Ev.exit.i
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !50
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(184) %i.ga) #19, !inline_history !255
  br label %_ZL9commitFpmRN4llvm20WritableBinaryStreamERKNS_3msf9MSFLayoutERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit

_ZL9commitFpmRN4llvm20WritableBinaryStreamERKNS_3msf9MSFLayoutERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit: ; preds = %_ZN4llvm18BinaryStreamWriterD2Ev.exit.i, %_ZNKSt14default_deleteIN4llvm3msf25WritableMappedBlockStreamEEclEPS2_.exit.i27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.ge = load ptr, ptr %4, align 8, !tbaa !99    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 52
  %.0.copyload.i.i.i82 = load i32, ptr %i.gf, align 1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %.0.copyload.i.i.i83 = load i32, ptr %i.gg, align 1
  %.narrow = mul i32 %.0.copyload.i.i.i83, %.0.copyload.i.i.i82
  %i.gh = zext i32 %.narrow to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %.sroa.012.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !100
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.213.0.copyload = load i64, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !42 ; 3 uses
  %i.gj = icmp eq i64 %.sroa.213.0.copyload, 0
  br i1 %i.gj, label %_ZN4llvm5ErrorD2Ev.exit86, label %bb.af

bb.af:                                            ; preds = %_ZL9commitFpmRN4llvm20WritableBinaryStreamERKNS_3msf9MSFLayoutERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit
  %i.gk = icmp ugt i64 %.sroa.213.0.copyload, 1073741823
  br i1 %i.gk, label %_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit.thread, label %_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit

_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit.thread: ; preds = %bb.af
  %i.gl = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #20, !noalias !303 ; 2 uses
  call void @_ZN4llvm17BinaryStreamErrorC1ENS_17stream_error_codeE(ptr noundef nonnull align 8 dereferenceable(44) %i.gl, i32 noundef 2) #19, !noalias !303
  br label %_ZN4llvm5ErrorD2Ev.exit85

_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit: ; preds = %bb.af
  %i.gm = shl nuw nsw i64 %.sroa.213.0.copyload, 2
  call void @_ZN4llvm18BinaryStreamWriter10writeBytesENS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %20, ptr noundef nonnull align 8 dereferenceable(64) %18, ptr %.sroa.012.0.copyload, i64 %i.gm) #19
  %.pr = load ptr, ptr %20, align 8, !tbaa !62    ; 2 uses
  %.not128 = icmp eq ptr %.pr, null
  br i1 %.not128, label %_ZN4llvm5ErrorD2Ev.exit86, label %_ZN4llvm5ErrorD2Ev.exit85

_ZN4llvm5ErrorD2Ev.exit85:                        ; preds = %_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit, %_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit.thread
  %i.gn = phi ptr [ %i.gl, %_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit.thread ], [ %.pr, %_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit ]
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 8
  %i.gq = or i8 %i.gp, 1
  store i8 %i.gq, ptr %i.go, align 8
  store ptr %i.gn, ptr %0, align 8, !tbaa !52, !alias.scope !304
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.ai

_ZN4llvm5ErrorD2Ev.exit86:                        ; preds = %_ZL9commitFpmRN4llvm20WritableBinaryStreamERKNS_3msf9MSFLayoutERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit, %_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @_ZN4llvm23WritableBinaryStreamRefC1ERNS_20WritableBinaryStreamE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull align 8 dereferenceable(8) %17) #19
  %i.gr = load ptr, ptr %1, align 8, !tbaa !74, !nonnull !59, !align !75
  call void @_ZN4llvm3msf25WritableMappedBlockStream21createDirectoryStreamERKNS0_9MSFLayoutENS_23WritableBinaryStreamRefERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.56") align 8 %21, ptr noundef nonnull align 8 dereferenceable(136) %4, ptr nofree noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull align 8 dereferenceable(80) %i.gr) #19
  call void @_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %22) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.gs = load ptr, ptr %21, align 8, !tbaa !299
  call void @_ZN4llvm18BinaryStreamWriterC1ERNS_20WritableBinaryStreamE(ptr noundef nonnull align 8 dereferenceable(64) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.gs) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !305
  %i.gv = trunc i64 %i.gu to i32
  call void @_ZN4llvm18BinaryStreamWriter12writeIntegerIjEENS_5ErrorET_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %24, ptr noundef nonnull align 8 dereferenceable(64) %23, i32 noundef %i.gv)
  %i.gw = load ptr, ptr %24, align 8, !tbaa !62   ; 2 uses
  %.not129 = icmp eq ptr %i.gw, null
  br i1 %.not129, label %_ZN4llvm5ErrorD2Ev.exit88, label %_ZN4llvm5ErrorD2Ev.exit87

_ZN4llvm5ErrorD2Ev.exit87:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit86
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 8
  %i.gz = or i8 %i.gy, 1
  store i8 %i.gz, ptr %i.gx, align 8
  store ptr %i.gw, ptr %0, align 8, !tbaa !52, !alias.scope !306
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.ah

_ZN4llvm5ErrorD2Ev.exit88:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit86
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %.sroa.010.0.copyload = load ptr, ptr %i.ha, align 8, !tbaa !100
  %.sroa.211.0.copyload = load i64, ptr %i.gt, align 8, !tbaa !42
  call void @_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %25, ptr noundef nonnull align 8 dereferenceable(64) %23, ptr %.sroa.010.0.copyload, i64 %.sroa.211.0.copyload)
  %i.hb = load ptr, ptr %25, align 8, !tbaa !62   ; 2 uses
  %.not130 = icmp eq ptr %i.hb, null
  br i1 %.not130, label %_ZN4llvm5ErrorD2Ev.exit90, label %_ZN4llvm5ErrorD2Ev.exit89

_ZN4llvm5ErrorD2Ev.exit89:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit88
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 8
  %i.he = or i8 %i.hd, 1
  store i8 %i.he, ptr %i.hc, align 8
  store ptr %i.hb, ptr %0, align 8, !tbaa !52, !alias.scope !307
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.ah

_ZN4llvm5ErrorD2Ev.exit90:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit88
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.hf = load ptr, ptr %i.v, align 8, !tbaa !103 ; 2 uses
  %i.hg = load ptr, ptr %i.y, align 8, !tbaa !103 ; 2 uses
  %.not131133 = icmp eq ptr %i.hf, %i.hg
  br i1 %.not131133, label %.critedge58, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm5ErrorD2Ev.exit90, %_ZN4llvm5ErrorD2Ev.exit94
  %.sroa.0104.0134 = phi ptr [ %i.hp, %_ZN4llvm5ErrorD2Ev.exit94 ], [ %i.hf, %_ZN4llvm5ErrorD2Ev.exit90 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.0104.0134, align 8, !tbaa !100
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0104.0134, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !42 ; 3 uses
  %i.hh = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %i.hh, label %_ZN4llvm5ErrorD2Ev.exit94, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph
  %i.hi = icmp ugt i64 %.sroa.2.0.copyload, 1073741823
  br i1 %i.hi, label %_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit92.thread, label %_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit92

_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit92.thread: ; preds = %bb.ag
  %i.hj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #20, !noalias !308 ; 2 uses
  call void @_ZN4llvm17BinaryStreamErrorC1ENS_17stream_error_codeE(ptr noundef nonnull align 8 dereferenceable(44) %i.hj, i32 noundef 2) #19, !noalias !308
  br label %_ZN4llvm5ErrorD2Ev.exit93

_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit92: ; preds = %bb.ag
  %i.hk = shl nuw nsw i64 %.sroa.2.0.copyload, 2
  call void @_ZN4llvm18BinaryStreamWriter10writeBytesENS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %26, ptr noundef nonnull align 8 dereferenceable(64) %23, ptr %.sroa.0.0.copyload, i64 %i.hk) #19
  %.pr125 = load ptr, ptr %26, align 8, !tbaa !62 ; 2 uses
  %.not132 = icmp eq ptr %.pr125, null
  br i1 %.not132, label %_ZN4llvm5ErrorD2Ev.exit94, label %_ZN4llvm5ErrorD2Ev.exit93

_ZN4llvm5ErrorD2Ev.exit93:                        ; preds = %_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit92, %_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit92.thread
  %i.hl = phi ptr [ %i.hj, %_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit92.thread ], [ %.pr125, %_ZN4llvm18BinaryStreamWriter10writeArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEENS_5ErrorENS_8ArrayRefIT_EE.exit92 ]
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 8
  %i.ho = or i8 %i.hn, 1
  store i8 %i.ho, ptr %i.hm, align 8
  store ptr %i.hl, ptr %0, align 8, !tbaa !52, !alias.scope !309
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  br label %bb.ah
end_hunk_0
