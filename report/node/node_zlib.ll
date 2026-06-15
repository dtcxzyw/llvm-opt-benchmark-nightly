inline.NumInlined: 3300
inline.NumDeleted: 1374
begin_hunk_0_@_ZN4node12_GLOBAL__N_117CompressionStreamINS0_20BrotliDecoderContextEED2Ev:bb.a
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrI24BrotliDecoderStateStructN4node15FunctionDeleterIS0_XadL_Z28BrotliDecoderDestroyInstanceEEEEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  tail call void @BrotliDecoderDestroyInstance(ptr noundef nonnull %i.s) #31
  br label %_ZNSt10unique_ptrI24BrotliDecoderStateStructN4node15FunctionDeleterIS0_XadL_Z28BrotliDecoderDestroyInstanceEEEEED2Ev.exit.i

_ZNSt10unique_ptrI24BrotliDecoderStateStructN4node15FunctionDeleterIS0_XadL_Z28BrotliDecoderDestroyInstanceEEEEED2Ev.exit.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4node12_GLOBAL__N_120BrotliDecoderContextD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrI24BrotliDecoderStateStructN4node15FunctionDeleterIS0_XadL_Z28BrotliDecoderDestroyInstanceEEEEED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #34
  br label %_ZN4node12_GLOBAL__N_120BrotliDecoderContextD2Ev.exit

_ZN4node12_GLOBAL__N_120BrotliDecoderContextD2Ev.exit: ; preds = %_ZNSt10unique_ptrI24BrotliDecoderStateStructN4node15FunctionDeleterIS0_XadL_Z28BrotliDecoderDestroyInstanceEEEEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN4node9AsyncWrapD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4node12_GLOBAL__N_123BrotliCompressionStreamINS0_20BrotliDecoderContextEED0Ev(ptr noundef nonnull align 8 dereferenceable(400) initializes((0, 8), (80, 88)) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_20BrotliDecoderContextEED2Ev(ptr noundef nonnull align 8 dereferenceable(400) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 400) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4node12_GLOBAL__N_117CompressionStreamINS0_20BrotliDecoderContextEE10MemoryInfoEPNS_13MemoryTrackerE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = load i64, ptr %i.b, align 8
  %.not.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i.i.i, %bb.d ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8 ; 4 uses
  %i.e = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %i.e, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.a, %i.g
  br i1 %i.h, label %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i, label %bb.c, !llvm.loop !149

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = urem i64 %i.j, %i.l                      ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.a, %i.s
  br i1 %i.t, label %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.u = icmp eq ptr %i.a, %i.x
  br i1 %i.u, label %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !150

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %bb.g
  %.020.i.i.i.i.i.i = phi ptr [ %i.v, %bb.g ], [ %i.q, %bb.f ]
  %i.v = load ptr, ptr %.020.i.i.i.i.i.i, align 8 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = urem i64 %i.y, %i.l
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.z, %i.m
  br i1 %.not19.i.i.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !150

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.h
  br label %.loopexit.i.i, !llvm.loop !150

_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.d ], [ %i.q, %bb.f ], [ %i.v, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.af = load ptr, ptr %i.ad, align 8
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !261
  %i.aj = icmp eq ptr %i.ae, %i.ai
  br i1 %i.aj, label %bb.j, label %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !261
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  br label %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i

_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i: ; preds = %bb.j, %bb.i
  %i.ap = phi ptr [ %i.ao, %bb.j ], [ %i.ae, %bb.i ]
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i, label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i, label %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i

_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i: ; preds = %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #31, !inline_history !154
  br i1 %i.ax, label %bb.k, label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i

bb.k:                                             ; preds = %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  br label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i

_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i: ; preds = %bb.k, %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i, %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i, %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i
  %.1.i.i.i = phi ptr [ null, %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i ], [ %i.az, %bb.k ], [ %i.ar, %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i ], [ %i.ar, %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %i.ab, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %.1.i.i.i, ptr noundef %i.bb, ptr noundef nonnull @.str.248) #31, !inline_history !155
  br label %_ZN4node13MemoryTracker10TrackFieldEPKcRKNS_14MemoryRetainerES2_.exit

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.e
  tail call void @_ZN4node13MemoryTracker5TrackEPKNS_14MemoryRetainerEPKc(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.248)
  br label %_ZN4node13MemoryTracker10TrackFieldEPKcRKNS_14MemoryRetainerES2_.exit

_ZN4node13MemoryTracker10TrackFieldEPKcRKNS_14MemoryRetainerES2_.exit: ; preds = %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i, %.loopexit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = load atomic i64, ptr %i.bf seq_cst, align 8
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i, label %_ZN4node13MemoryTracker18TrackFieldWithSizeEPKcmS2_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4node13MemoryTracker10TrackFieldEPKcRKNS_14MemoryRetainerES2_.exit
  %i.bk = tail call noundef ptr @_ZN4node13MemoryTracker7AddNodeEPKcmS2_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull @.str.249, i64 noundef %i.bj, ptr noundef nonnull @.str.249) ; 0 uses
  br label %_ZN4node13MemoryTracker18TrackFieldWithSizeEPKcmS2_.exit

_ZN4node13MemoryTracker18TrackFieldWithSizeEPKcmS2_.exit: ; preds = %_ZN4node13MemoryTracker10TrackFieldEPKcRKNS_14MemoryRetainerES2_.exit, %bb.l
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK4node12_GLOBAL__N_123BrotliCompressionStreamINS0_20BrotliDecoderContextEE14MemoryInfoNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret ptr @.str.355
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZNK4node12_GLOBAL__N_123BrotliCompressionStreamINS0_20BrotliDecoderContextEE8SelfSizeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i64 400
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_20BrotliDecoderContextEE16DoThreadPoolWorkEv(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 8
  br i1 %i.d, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12_GLOBAL__N_120BrotliDecoderContext16DoThreadPoolWorkEvE20error_and_abort_args) #31
  tail call void @abort() #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12_GLOBAL__N_120BrotliDecoderContext16DoThreadPoolWorkEvE20error_and_abort_args_0) #31
  tail call void @abort() #32
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  store ptr %i.h, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.l = call i32 @BrotliDecoderDecompressStream(ptr noundef nonnull %i.f, ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef null) #31 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r
  store ptr %i.s, ptr %i.g, align 8
  %i.t = icmp eq i32 %i.l, 0
  br i1 %i.t, label %._crit_edge.i.i.i, label %_ZN4node12_GLOBAL__N_120BrotliDecoderContext16DoThreadPoolWorkEv.exit

._crit_edge.i.i.i:                                ; preds = %bb.e
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = call i32 @BrotliDecoderGetErrorCode(ptr noundef %i.u) #31 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 332
  store i32 %i.v, ptr %i.w, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.x, ptr %2, align 8
  store i32 1599230533, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 4, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 0, ptr %i.z, align 4
  %i.aa = call ptr @BrotliDecoderErrorString(i32 noundef %i.v) #31 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #31, !noalias !264 ; 6 uses
  %i.ac = load i64, ptr %i.y, align 8, !noalias !264 ; 5 uses
  %i.ad = sub i64 9223372036854775807, %i.ac
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.408) #32, !noalias !264
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %._crit_edge.i.i.i
  %i.af = add i64 %i.ac, %i.ab                    ; 3 uses
  %i.ag = load ptr, ptr %2, align 8, !noalias !264 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.x                 ; 2 uses
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ai = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ai)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.aj = load i64, ptr %i.x, align 8, !noalias !264
  %i.ak = select i1 %i.ah, i64 15, i64 %i.aj
  %.not.i.i.i.i = icmp ugt i64 %i.af, %i.ak
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ac ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.ab, 1
  br i1 %cond.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = load i8, ptr %i.aa, align 1, !noalias !264
  store i8 %i.am, ptr %i.al, align 1, !noalias !264
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr nonnull align 1 %i.aa, i64 %i.ab, i1 false), !noalias !264
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ac, i64 noundef 0, ptr noundef nonnull %i.aa, i64 noundef %i.ab), !noalias !264
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  store i64 %i.af, ptr %i.y, align 8, !noalias !264
  %i.an = load ptr, ptr %2, align 8, !noalias !264
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i8 0, ptr %i.ao, align 1, !noalias !264
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  store ptr %i.ap, ptr %1, align 8, !alias.scope !264
  %i.aq = load ptr, ptr %2, align 8, !noalias !264 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, %i.x
  br i1 %i.ar, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.as = load i64, ptr %i.y, align 8, !noalias !264 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.au, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  store ptr %i.aq, ptr %1, align 8, !alias.scope !264
  %i.av = load i64, ptr %i.x, align 8, !noalias !264
  store i64 %i.av, ptr %i.ap, align 8, !alias.scope !264
  %.pre.i.i = load i64, ptr %i.y, align 8, !noalias !264
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.m
  %i.aw = phi ptr [ %i.ap, %bb.m ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 5 uses
  %i.ax = phi i64 [ %i.as, %bb.m ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %i.ax, ptr %i.ay, align 8, !alias.scope !264
  store ptr %i.x, ptr %2, align 8, !noalias !264
  store i64 0, ptr %i.y, align 8, !noalias !264
  store i8 0, ptr %i.x, align 8, !noalias !264
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  %i.bd = icmp eq ptr %i.aw, %i.ap                ; 2 uses
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  br i1 %i.bd, label %bb.n, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  br i1 %i.bd, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.be = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.be)
  switch i64 %i.ax, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bf = load i8, ptr %i.aw, align 1
  store i8 %i.bf, ptr %i.ba, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.aw, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.bg = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %i.bg, ptr %i.bh, align 8
  %i.bi = load ptr, ptr %i.az, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1
  %.pre.i1.i = load ptr, ptr %1, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.aw, ptr %i.az, align 8
  store i64 %i.ax, ptr %i.bk, align 8
  %i.bl = load i64, ptr %i.ap, align 8
  store i64 %i.bl, ptr %i.bb, align 8
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bm = load i64, ptr %i.bb, align 8
  store ptr %i.aw, ptr %i.az, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %i.ax, ptr %i.bn, align 8
  %i.bo = load i64, ptr %i.ap, align 8
  store i64 %i.bo, ptr %i.bb, align 8
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ba, ptr %1, align 8
  store i64 %i.bm, ptr %i.ap, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ap, ptr %1, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %3 = phi ptr [ %i.ba, %bb.q ], [ %i.ap, %bb.r ], [ %.pre.i1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.ay, align 8
  store i8 0, ptr %3, align 1
  %i.bp = load ptr, ptr %1, align 8               ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ap
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.br = load i64, ptr %i.ap, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  %i.bt = load ptr, ptr %2, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.x
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bv = load i64, ptr %i.x, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %_ZN4node12_GLOBAL__N_120BrotliDecoderContext16DoThreadPoolWorkEv.exit

_ZN4node12_GLOBAL__N_120BrotliDecoderContext16DoThreadPoolWorkEv.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_20BrotliDecoderContextEE19AfterThreadPoolWorkEi(ptr noundef nonnull align 8 dereferenceable(400) initializes((249, 250)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.node::(anonymous namespace)::CompressionError", align 8 ; 10 uses
  %3 = alloca %"class.v8::HandleScope", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 249
  store i8 0, ptr %i.a, align 1
  switch i32 %1, label %bb.c [
    i32 -125, label %bb.b
    i32 0, label %bb.d
  ], !prof !157

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_20BrotliDecoderContextEE5CloseEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12_GLOBAL__N_117CompressionStreamINS0_20BrotliDecoderContextEE19AfterThreadPoolWorkEiE20error_and_abort_args) #31
  tail call void @abort() #32
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = add i64 %i.h, 560
  %i.j = inttoptr i64 %i.i to ptr                 ; 5 uses
  store ptr %i.g, ptr %3, align 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 3008
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.u, align 8 ; 2 uses
  tail call void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.i.i) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.w = load i32, ptr %i.v, align 4, !noalias !267 ; 2 uses
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %bb.e, label %_ZNK4node12_GLOBAL__N_120BrotliDecoderContext12GetErrorInfoEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.y = load i32, ptr %i.x, align 8, !noalias !267
  %i.z = icmp eq i32 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ab = load i32, ptr %i.aa, align 8, !noalias !267
  %i.ac = icmp eq i32 %i.ab, 2
  %or.cond.i.i = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %or.cond.i.i, label %_ZNK4node12_GLOBAL__N_120BrotliDecoderContext12GetErrorInfoEv.exit.thread5.i, label %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i

_ZNK4node12_GLOBAL__N_120BrotliDecoderContext12GetErrorInfoEv.exit.thread5.i: ; preds = %bb.e
  store ptr @.str.278, ptr %2, align 8, !alias.scope !267
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.24, ptr %i.ad, align 8, !alias.scope !267
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -5, ptr %i.ae, align 8, !alias.scope !267
  br label %_ZN4node12_GLOBAL__N_117CompressionStreamINS0_20BrotliDecoderContextEE10CheckErrorEv.exit

_ZNK4node12_GLOBAL__N_120BrotliDecoderContext12GetErrorInfoEv.exit.i: ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !267 ; 2 uses
  store ptr @.str.410, ptr %2, align 8, !alias.scope !267
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !alias.scope !267
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.w, ptr %i.ai, align 8, !alias.scope !267
  %i.aj = icmp eq ptr %i.ag, null
  br i1 %i.aj, label %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i, label %_ZN4node12_GLOBAL__N_117CompressionStreamINS0_20BrotliDecoderContextEE10CheckErrorEv.exit

_ZN4node12_GLOBAL__N_117CompressionStreamINS0_20BrotliDecoderContextEE10CheckErrorEv.exit: ; preds = %_ZNK4node12_GLOBAL__N_120BrotliDecoderContext12GetErrorInfoEv.exit.thread5.i, %_ZNK4node12_GLOBAL__N_120BrotliDecoderContext12GetErrorInfoEv.exit.i
  call fastcc void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_20BrotliDecoderContextEE9EmitErrorERKNS0_16CompressionErrorE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(20) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.l

_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i: ; preds = %_ZNK4node12_GLOBAL__N_120BrotliDecoderContext12GetErrorInfoEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %i.am, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = trunc i64 %i.ar to i32
  store i32 %i.as, ptr %i.al, align 4
  %i.at = load ptr, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 200
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !31, !noundef !31 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 11
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = and i8 %i.bb, 3
  %i.bd = icmp eq i8 %i.bc, 2
  %i.be = load i64, ptr %i.az, align 8            ; 3 uses
  br i1 %i.bd, label %bb.f, label %_ZNK4node10BaseObject6objectEv.exit

bb.f:                                             ; preds = %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i
  %i.bf = ptrtoint ptr %i.ax to i64
  %i.bg = add i64 %i.bf, 560
  %i.bh = inttoptr i64 %i.bg to ptr               ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = icmp eq ptr %i.bi, %i.bk
  br i1 %i.bl, label %bb.g, label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.bm = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.ax) #31
  br label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i

_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.bm, %bb.g ], [ %i.bi, %bb.f ] ; 3 uses
  %i.bn = ptrtoint ptr %.0.i.i.i.i to i64
  %i.bo = add i64 %i.bn, 8
  %i.bp = inttoptr i64 %i.bo to ptr
  store ptr %i.bp, ptr %i.bh, align 8
  store i64 %i.be, ptr %.0.i.i.i.i, align 8
  br label %_ZNK4node10BaseObject6objectEv.exit

_ZNK4node10BaseObject6objectEv.exit:              ; preds = %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i ], [ %i.az, %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i ]
  %i.bq = add i64 %i.be, -1
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = add i64 %i.bs, 11
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i16, ptr %i.bu, align 2            ; 2 uses
  %i.bw = icmp eq i16 %i.bv, 1040
  %i.bx = add i16 %i.bv, -1057
  %i.by = icmp ult i16 %i.bx, 1002
  %i.bz = or i1 %i.bw, %i.by
  br i1 %i.bz, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNK4node10BaseObject6objectEv.exit
  %i.ca = add i64 %i.be, 55
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = tail call noundef ptr @_ZN2v88internal9Internals17GetCurrentIsolateEv() #31 ; 2 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = add i64 %i.ce, 560
  %i.cg = inttoptr i64 %i.cf to ptr               ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = icmp eq ptr %i.ch, %i.cj
  br i1 %i.ck, label %bb.i, label %_ZN2v89LocalBaseINS_4DataEE3NewEPNS_7IsolateEm.exit, !prof !5

bb.i:                                             ; preds = %bb.h
end_hunk_0
