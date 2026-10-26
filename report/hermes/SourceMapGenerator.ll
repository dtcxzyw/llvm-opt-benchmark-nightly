Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SourceMapGenerator?download=true
inline.NumInlined: 1056
inline.NumDeleted: 590
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6hermes18SourceMapGenerator21encodeSourceLocationsERKNS0_5StateEN4llvh8ArrayRefINS_9SourceMap7SegmentEEERNS4_11raw_ostreamE:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.sroa.6.1 = phi i32 [ %i.az, %bb.j ], [ %i.az, %bb.i ], [ %i.ak, %_ZN4llvh11raw_ostreamlsEPKc.exit ] ; 2 uses
  %.sroa.8.1 = phi i32 [ %i.bb, %bb.j ], [ %i.bb, %bb.i ], [ %i.aj, %_ZN4llvh11raw_ostreamlsEPKc.exit ] ; 2 uses
  %.sroa.10.1 = phi i32 [ %i.bd, %bb.j ], [ %i.bd, %bb.i ], [ %i.ai, %_ZN4llvh11raw_ostreamlsEPKc.exit ] ; 2 uses
  %.sroa.12.1 = phi i32 [ %i.bo, %bb.j ], [ %i.ah, %bb.i ], [ %i.ah, %_ZN4llvh11raw_ostreamlsEPKc.exit ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.036, i64 28 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.a
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !167
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes18SourceMapGenerator20getVLQMappingsStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::raw_string_ostream", align 8 ; 12 uses
  %3 = alloca %"struct.hermes::SourceMapGenerator::State", align 4 ; 6 uses
  %4 = alloca %"struct.hermes::SourceMapGenerator::State", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !71
  store i8 0, ptr %i.a, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !172
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %0, ptr %i.e, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !173  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !173  ; 2 uses
  %.not10 = icmp eq ptr %i.h, %i.j
  br i1 %.not10, label %_ZN4llvh11raw_ostream5flushEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !101
  %.pre12 = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.m = icmp eq ptr %.pre, %.pre12
  br i1 %i.m, label %_ZN4llvh11raw_ostream5flushEv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #16
  br label %_ZN4llvh11raw_ostream5flushEv.exit

_ZN4llvh11raw_ostream5flushEv.exit:               ; preds = %bb.a, %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvh11raw_ostreamlsEc.exit
  %.sroa.07.011 = phi ptr [ %i.h, %.lr.ph ], [ %i.y, %_ZN4llvh11raw_ostreamlsEc.exit ] ; 3 uses
  store i32 0, ptr %3, align 4, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.n = load ptr, ptr %.sroa.07.011, align 8, !tbaa !106 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !107
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 28
  call void @_ZN6hermes18SourceMapGenerator21encodeSourceLocationsERKNS0_5StateEN4llvh8ArrayRefINS_9SourceMap7SegmentEEERNS4_11raw_ostreamE(ptr dead_on_unwind nonnull writable sret(%"struct.hermes::SourceMapGenerator::State") align 4 %4, ptr noundef nonnull align 4 dereferenceable(20) %3, ptr %i.n, i64 %i.t, ptr noundef nonnull align 8 dereferenceable(36) %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !101  ; 3 uses
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !100
  %.not.i5 = icmp ult ptr %i.u, %i.v
  br i1 %.not.i5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 noundef zeroext 59) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.x, ptr %i.k, align 8, !tbaa !101
  store i8 59, ptr %i.u, align 1, !tbaa !34
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.d, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.y, %i.j
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: nounwind
declare void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes18SourceMapGenerator10getSourcesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.44") align 8 captures(none) initializes((8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61, !noalias !184 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63, !noalias !184 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60, !noalias !184 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61, !noalias !185 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62, !noalias !185
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60, !noalias !185 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ne ptr %i.l, null
  %.neg.i.i.i = sext i1 %i.r to i64
  %i.s = add nsw i64 %i.q, %.neg.i.i.i
  %i.t = shl nsw i64 %i.s, 4
  %i.u = ptrtoint ptr %i.h to i64
  %i.v = ptrtoint ptr %i.j to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 5
  %i.y = ptrtoint ptr %i.d to i64
  %i.z = ptrtoint ptr %i.b to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = add nsw i64 %i.x, %i.ab
  %i.ad = add i64 %i.ac, %i.t                     ; 4 uses
  %i.ae = icmp ugt i64 %i.ad, 576460752303423487
  br i1 %i.ae, label %bb.b, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
  unreachable

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.af = shl nuw nsw i64 %i.ad, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #18
  br label %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.ah = phi ptr [ %i.ag, %_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i ], [ null, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ] ; 4 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !188
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !189
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.b, %i.h
  br i1 %.not4.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EEC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_PSC_EvEET_SG_RKS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i.i, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i ], [ %i.f, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %i.ak = phi ptr [ %i.aw, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %i.al = phi ptr [ %i.av, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i ], [ %i.b, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.05.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i ], [ %i.ah, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !73
  store ptr %i.am, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !71
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ak
  br i1 %i.ar, label %bb.c, label %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i.i.i.i.i, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !75 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  br label %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i

_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.sroa.9.1.i.i.i.i.i = phi ptr [ %i.as, %bb.c ], [ %.sroa.9.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.av = phi ptr [ %i.at, %bb.c ], [ %i.aq, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.aw = phi ptr [ %i.au, %bb.c ], [ %i.ak, %.lr.ph.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.av, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EEC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_PSC_EvEET_SG_RKS2_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN4llvh9StringRefESaIS1_EEC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_PSC_EvEET_SG_RKS2_.exit: ; preds = %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i ], [ %i.ax, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ay, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes18SourceMapGenerator25mergedWithInputSourceMapsEv(ptr dead_on_unwind noalias writable sret(%"class.hermes::SourceMapGenerator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Optional.18", align 4 ; 8 uses
  %.sroa.15 = alloca [3 x i8], align 1            ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.llvh::Optional", align 16   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61, !noalias !221 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63, !noalias !221 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60, !noalias !221 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61, !noalias !222 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62, !noalias !222
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60, !noalias !222 ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ne ptr %i.l, null
  %.neg.i.i.i.i = sext i1 %i.q to i64
  %i.r = add nsw i64 %i.p, %.neg.i.i.i.i
  %i.s = shl nsw i64 %i.r, 4
  %i.t = ptrtoint ptr %i.h to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 5
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = ptrtoint ptr %i.b to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 5
  %i.ab = add nsw i64 %i.w, %i.aa
  %i.ac = add i64 %i.ab, %i.s                     ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 576460752303423487
  br i1 %i.ad, label %bb.b, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17, !noalias !223
  unreachable

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i, label %_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i
  %i.ae = shl nuw nsw i64 %i.ac, 4
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #18, !noalias !223
  br label %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i
  %i.ag = phi ptr [ %i.af, %_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i ] ; 4 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.b, %i.h
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNK6hermes18SourceMapGenerator10getSourcesEv.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i.i.i, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i ], [ %i.f, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %i.ah = phi ptr [ %i.at, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %i.ai = phi ptr [ %i.as, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i ], [ %i.b, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i ] ; 3 uses
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i ], [ %i.ag, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73, !noalias !223
  store ptr %i.aj, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !64, !noalias !223
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !71, !noalias !223
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !66, !noalias !223
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ah
  br i1 %i.ao, label %bb.c, label %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !75, !noalias !223 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 512
  br label %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i

_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.9.1.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.c ], [ %.sroa.9.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %i.as = phi ptr [ %i.aq, %bb.c ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.at = phi ptr [ %i.ar, %bb.c ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.h
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK6hermes18SourceMapGenerator10getSourcesEv.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZNK6hermes18SourceMapGenerator10getSourcesEv.exit: ; preds = %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 176, i1 false)
  store i64 8, ptr %i.aw, align 8, !tbaa !108
  %i.ax = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18 ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !109
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !108
  %i.az = add i64 %i.ay, -1
  %i.ba = lshr i64 %i.az, 1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ba ; 3 uses
  %i.bc = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18 ; 6 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !75
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !60
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 512 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !63
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.bb, ptr %i.bj, align 8, !tbaa !60
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.bc, ptr %i.bk, align 8, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bg, ptr %i.bl, align 8, !tbaa !63
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !224
  store ptr %i.bc, ptr %i.bi, align 8, !tbaa !74
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bm, i8 0, i64 20, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.bn, i8 0, i64 44, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !112
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 24                ; 2 uses
  %i.bw = and i64 %i.bv, 4294967295
  %.not178 = icmp eq i64 %i.bw, 0
  br i1 %.not178, label %._crit_edge177, label %.lr.ph176

.lr.ph176:                                        ; preds = %_ZNK6hermes18SourceMapGenerator10getSourcesEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.0.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count = and i64 %i.bv, 4294967295
  br label %bb.f

._crit_edge177:                                   ; preds = %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23, %_ZNK6hermes18SourceMapGenerator10getSourcesEv.exit
  %.not.i = icmp eq ptr %1, %0
  br i1 %.not.i, label %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEaSERKS9_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge177
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE8copyFromERKS9_(ptr noundef nonnull align 8 dereferenceable(20) %i.ci, ptr noundef nonnull align 8 dereferenceable(20) %i.cj)
  br label %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEaSERKS9_.exit

_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEaSERKS9_.exit: ; preds = %._crit_edge177, %bb.d
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEaSERKS9_.exit
  %.idx = shl nuw nsw i64 %i.ac, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %.idx) #19
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit:  ; preds = %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEaSERKS9_.exit, %bb.e
  ret void

bb.f:                                             ; preds = %.lr.ph176, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23
  %indvars.iv = phi i64 [ 0, %.lr.ph176 ], [ %indvars.iv.next, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23 ] ; 5 uses
  %.sroa.063.0174 = phi ptr [ undef, %.lr.ph176 ], [ %.sroa.063.1.lcssa, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23 ] ; 2 uses
  %.sroa.3.0173 = phi ptr [ undef, %.lr.ph176 ], [ %.sroa.3.1.lcssa, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23 ] ; 2 uses
  %.sroa.5.0172 = phi ptr [ undef, %.lr.ph176 ], [ %.sroa.5.1.lcssa, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23 ] ; 2 uses
  %i.ck = load ptr, ptr %i.bo, align 8, !tbaa !112
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %indvars.iv ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !113 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !113 ; 2 uses
  %.not140159 = icmp eq ptr %i.cm, %i.co
  br i1 %.not140159, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit, %bb.f
  %.sroa.9129.0.lcssa = phi ptr [ null, %bb.f ], [ %.sroa.9129.1, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.14132.0.lcssa = phi ptr [ null, %bb.f ], [ %.sroa.14132.1, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.0126.0.lcssa = phi ptr [ null, %bb.f ], [ %.sroa.0126.1, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.5.1.lcssa = phi ptr [ %.sroa.5.0172, %bb.f ], [ %.sroa.5.2260, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.3.1.lcssa = phi ptr [ %.sroa.3.0173, %bb.f ], [ %.sroa.3.2262, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.063.1.lcssa = phi ptr [ %.sroa.063.0174, %bb.f ], [ %.sroa.063.2264, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ]
  %i.cp = load ptr, ptr %i.ch, align 8, !tbaa !111
  %i.cq = load ptr, ptr %i.cg, align 8, !tbaa !112 ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = sdiv exact i64 %i.ct, 24                ; 2 uses
  %.not.i19 = icmp ugt i64 %i.cu, %indvars.iv
  br i1 %.not.i19, label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE6resizeEm.exit.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.cv = add nuw nsw i64 %indvars.iv, 1
  %i.cw = sub nuw nsw i64 %i.cv, %i.cu
  call void @_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 noundef %i.cw)
  %.pre184 = load ptr, ptr %i.cg, align 8, !tbaa !112
  br label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE6resizeEm.exit.i

_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE6resizeEm.exit.i: ; preds = %bb.g, %._crit_edge
  %i.cx = phi ptr [ %i.cq, %._crit_edge ], [ %.pre184, %bb.g ]
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %indvars.iv ; 4 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !106 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !114
  store ptr %.sroa.0126.0.lcssa, ptr %i.cy, align 8, !tbaa !106
  store ptr %.sroa.9129.0.lcssa, ptr %i.da, align 8, !tbaa !107
  store ptr %.sroa.14132.0.lcssa, ptr %i.db, align 8, !tbaa !114
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE6resizeEm.exit.i
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.cz to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.df) #19
  br label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23

_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23: ; preds = %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE6resizeEm.exit.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge177, label %bb.f, !llvm.loop !201

.lr.ph:                                           ; preds = %bb.f, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit
  %.sroa.063.1166 = phi ptr [ %.sroa.063.2264, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.063.0174, %bb.f ] ; 10 uses
  %.sroa.3.1165 = phi ptr [ %.sroa.3.2262, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.3.0173, %bb.f ] ; 10 uses
  %.sroa.5.1164 = phi ptr [ %.sroa.5.2260, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.5.0172, %bb.f ] ; 10 uses
  %.sroa.0126.0163 = phi ptr [ %.sroa.0126.1, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.f ] ; 6 uses
  %.sroa.0123.0162 = phi ptr [ %i.ne, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ], [ %i.cm, %bb.f ] ; 13 uses
  %.sroa.14132.0161 = phi ptr [ %.sroa.14132.1, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.f ] ; 5 uses
  %.sroa.9129.0160 = phi ptr [ %.sroa.9129.1, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.f ] ; 9 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0123.0162, i64 24 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 4, !tbaa !81, !range !24, !noalias !225, !noundef !25
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.i, label %.thread282

bb.i:                                             ; preds = %.lr.ph
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0123.0162, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !87, !noalias !225 ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = load ptr, ptr %i.by, align 8, !tbaa !90, !noalias !225
  %i.dn = load ptr, ptr %i.bx, align 8, !tbaa !91, !noalias !225 ; 2 uses
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 3
  %i.ds = icmp ugt i64 %i.dr, %i.dl
  br i1 %i.ds, label %bb.j, label %.thread282

bb.j:                                             ; preds = %bb.i
  %i.dt = sext i32 %i.dk to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !93, !noalias !225 ; 7 uses
  %.not.i24 = icmp eq ptr %i.dv, null
  br i1 %.not.i24, label %.thread282, label %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit

.thread282:                                       ; preds = %bb.j, %bb.i, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  %.sroa.075.0.copyload233 = load i32, ptr %.sroa.0123.0162, align 4 ; 7 uses
  %.sroa.15.0..sroa_idx235 = getelementptr inbounds nuw i8, ptr %.sroa.0123.0162, i64 25 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15.0..sroa_idx235, i64 3, i1 false)
  %5 = load i8, ptr %i.dg, align 4, !tbaa !81, !range !24, !noundef !25
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb.bb, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !225
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0123.0162, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !94, !noalias !225
  %i.dy = add nsw i32 %i.dx, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0123.0162, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !95, !noalias !225
  %i.eb = add nsw i32 %i.ea, 1
  call void @_ZNK6hermes9SourceMap20getSegmentForAddressEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Optional.18") align 4 %2, ptr noundef nonnull align 8 dereferenceable(104) %i.dv, i32 noundef %i.dy, i32 noundef %i.eb) #16, !noalias !225
  %.sroa.0.i.sroa.4.0.copyload = load i32, ptr %.sroa.0.i.sroa.4.0..sroa_idx, align 4, !noalias !225
  %.sroa.0.i.sroa.5.0.copyload = load i32, ptr %.sroa.0.i.sroa.5.0..sroa_idx, align 4, !noalias !225
  %.sroa.0.i.sroa.6.0.copyload = load i32, ptr %.sroa.0.i.sroa.6.0..sroa_idx, align 4, !noalias !225
  %.sroa.0.i.sroa.8.0.copyload = load i8, ptr %.sroa.0.i.sroa.8.0..sroa_idx, align 4, !noalias !225
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !225
  %i.ec = trunc nuw i8 %.sroa.4.0.copyload.i to i1
  %i.ed = trunc nuw i8 %.sroa.0.i.sroa.8.0.copyload to i1
  %i.ee = select i1 %i.ec, i1 %i.ed, i1 false
  %i.ef = zext i32 %.sroa.0.i.sroa.4.0.copyload to i64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  %.sroa.075.0.copyload = load i32, ptr %.sroa.0123.0162, align 4 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0123.0162, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15.0..sroa_idx, i64 3, i1 false)
  br i1 %i.ee, label %bb.k, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

bb.k:                                             ; preds = %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !116, !noalias !226
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.eh, i64 %i.ef ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.ej = load ptr, ptr %i.dv, align 8, !tbaa !73, !noalias !228
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !71, !noalias !228 ; 3 uses
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !73, !noalias !228
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !71, !noalias !228 ; 3 uses
  store ptr %i.bz, ptr %3, align 8, !tbaa !69, !alias.scope !229
  store i64 0, ptr %i.ca, align 8, !tbaa !71, !alias.scope !229
  store i8 0, ptr %i.bz, align 8, !tbaa !34, !alias.scope !229
  %i.ep = add i64 %i.eo, %i.el
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ep) #16
  %i.eq = load i64, ptr %i.ca, align 8, !tbaa !71, !alias.scope !229
  %i.er = sub i64 4611686018427387903, %i.eq
  %i.es = icmp ult i64 %i.er, %i.el
  br i1 %i.es, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %bb.k
  %i.et = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ej, i64 noundef %i.el) #16 ; 0 uses
  %i.eu = load i64, ptr %i.ca, align 8, !tbaa !71, !alias.scope !229
  %i.ev = sub i64 4611686018427387903, %i.eu
  %i.ew = icmp ult i64 %i.ev, %i.eo
  br i1 %i.ew, label %bb.m, label %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #17
  unreachable

_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.ex = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.em, i64 noundef %i.eo) #16 ; 0 uses
  %i.ey = load ptr, ptr %3, align 8, !tbaa !73
  %i.ez = load i64, ptr %i.ca, align 8, !tbaa !71
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 88
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !17, !noalias !230
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !18, !noalias !230 ; 2 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = ashr exact i64 %i.fg, 5
  %.not.i25 = icmp ugt i64 %i.fh, %i.ef
  br i1 %.not.i25, label %bb.n, label %_ZNK6hermes9SourceMap17getSourceMetadataEj.exit

bb.n:                                             ; preds = %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit
  %i.fi = getelementptr inbounds nuw [32 x i8], ptr %i.fd, i64 %i.ef ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !23, !range !24, !noalias !230, !noundef !25
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.o, label %_ZNK6hermes9SourceMap17getSourceMetadataEj.exit

bb.o:                                             ; preds = %bb.n
  %i.fm = load ptr, ptr %i.fi, align 8, !tbaa !44, !noalias !230 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !231, !noalias !230 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !28, !noalias !230 ; 4 uses
  %.not.i.i.i.i.i.i.i26 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i.i.i26, label %_ZNK6hermes9SourceMap17getSourceMetadataEj.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 3 uses
  %i.fs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34, !noalias !230
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.fs, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ft = load i32, ptr %i.fr, align 4, !tbaa !13, !noalias !230
  %i.fu = add nsw i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fr, align 4, !tbaa !13, !noalias !230
  br label %_ZNK6hermes9SourceMap17getSourceMetadataEj.exit

bb.r:                                             ; preds = %bb.p
  %i.fv = atomicrmw volatile add ptr %i.fr, i32 1 acq_rel, align 4, !noalias !230 ; 0 uses
  br label %_ZNK6hermes9SourceMap17getSourceMetadataEj.exit

_ZNK6hermes9SourceMap17getSourceMetadataEj.exit:  ; preds = %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit, %bb.n, %bb.o, %bb.q, %bb.r
  %.sroa.8.0 = phi i1 [ true, %bb.o ], [ true, %bb.r ], [ true, %bb.q ], [ false, %bb.n ], [ false, %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit ]
  %.sroa.5.3 = phi ptr [ null, %bb.o ], [ %i.fq, %bb.r ], [ %i.fq, %bb.q ], [ %.sroa.5.1164, %bb.n ], [ %.sroa.5.1164, %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit ] ; 16 uses
  %.sroa.3.3 = phi ptr [ %i.fo, %bb.o ], [ %i.fo, %bb.r ], [ %i.fo, %bb.q ], [ %.sroa.3.1165, %bb.n ], [ %.sroa.3.1165, %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit ] ; 2 uses
  %.sroa.063.3 = phi ptr [ %i.fm, %bb.o ], [ %i.fm, %bb.r ], [ %i.fm, %bb.q ], [ %.sroa.063.1166, %bb.n ], [ %.sroa.063.1166, %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit ] ; 3 uses
  %i.fw = call noundef i64 @_ZN6hermes15StringSetVector6insertEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(104) %i.av, ptr %i.ey, i64 %i.ez) ; 3 uses
  %i.fx = load ptr, ptr %i.cb, align 8, !tbaa !17 ; 3 uses
  %i.fy = load ptr, ptr %i.bn, align 8, !tbaa !18 ; 2 uses
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = ashr exact i64 %i.gb, 5                 ; 4 uses
  %i.gd = and i64 %i.fw, 4294967295               ; 2 uses
  %.not.i27 = icmp ugt i64 %i.gc, %i.gd
  br i1 %.not.i27, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNK6hermes9SourceMap17getSourceMetadataEj.exit
  %i.ge = add i64 %i.fw, 1
  %i.gf = and i64 %i.ge, 4294967295               ; 4 uses
  %i.gg = icmp samesign ugt i64 %i.gf, %i.gc
  br i1 %i.gg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gh = sub nuw nsw i64 %i.gf, %i.gc
  call void @_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %i.gh)
  br label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i

bb.u:                                             ; preds = %bb.s
  %i.gi = icmp samesign ult i64 %i.gf, %i.gc
  br i1 %i.gi, label %bb.v, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i

bb.v:                                             ; preds = %bb.u
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %i.fy, i64 %i.gf ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.fx, %i.gj
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %bb.v, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i30 = phi ptr [ %i.he, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i ], [ %i.gj, %bb.v ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i30, i64 24
  %i.gl = load i8, ptr %i.gk, align 8, !tbaa !23, !range !24, !noundef !25
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.w, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i30, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !28 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 4 uses
  %i.gq = load atomic i64, ptr %i.gp acquire, align 8 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 4294967297
  %i.gs = trunc i64 %i.gq to i32                  ; 2 uses
  br i1 %i.gr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.gp, align 8, !tbaa !30
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  store i32 0, ptr %i.gt, align 4, !tbaa !31
  %i.gu = load ptr, ptr %i.go, align 8, !tbaa !33
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #16, !inline_history !212
  %i.gx = load ptr, ptr %i.go, align 8, !tbaa !33
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #16, !inline_history !212
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ha = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ha, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hb = add nsw i32 %i.gs, -1
  store i32 %i.hb, ptr %i.gp, align 8, !tbaa !13
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.hc = atomicrmw volatile add ptr %i.gp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gs, %bb.aa ], [ %i.hc, %bb.ab ]
  %i.hd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.hd, label %bb.ac, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i, !prof !35

end_hunk_0
begin_hunk_1_@_ZNK6hermes18SourceMapGenerator25mergedWithInputSourceMapsEv:bb.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #16
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y, %bb.w, %.lr.ph.i.i.i.i.i29
  %i.he = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.he, %i.fx
  br i1 %.not.i.i.i.i.i31, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i29, !llvm.loop !0

_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.gj, ptr %i.cb, align 8, !tbaa !17
  br label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i

_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i.i.i, %bb.v, %bb.u, %bb.t, %_ZNK6hermes9SourceMap17getSourceMetadataEj.exit
  br i1 %.sroa.8.0, label %bb.ad, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit

bb.ad:                                            ; preds = %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i
  %i.hf = load i32, ptr %.sroa.063.3, align 4, !tbaa !47
  %.not6.i = icmp eq i32 %i.hf, 5
  br i1 %.not6.i, label %bb.au, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hg = load ptr, ptr %i.bn, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %i.hg, i64 %i.gd ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24 ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !23, !range !24, !noundef !25
  %i.hk = trunc nuw i8 %i.hj to i1
  store ptr %.sroa.063.3, ptr %i.hh, align 8, !tbaa !44
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store ptr %.sroa.3.3, ptr %i.hl, align 8, !tbaa !231
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 4 uses
  br i1 %i.hk, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %bb.ae
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !28 ; 3 uses
  %.not.i.i.i.i.i58 = icmp eq ptr %.sroa.5.3, %i.hn
  br i1 %.not.i.i.i.i.i58, label %bb.au, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not7.i.i.i.i.i = icmp eq ptr %.sroa.5.3, null
  br i1 %.not7.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.5.3, i64 8 ; 3 uses
  %i.hp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i59 = icmp eq i8 %i.hp, 0
  br i1 %.not.i.i.i.i.i.i59, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hq = load i32, ptr %i.ho, align 4, !tbaa !13
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.ho, align 4, !tbaa !13
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.hs = atomicrmw volatile add ptr %i.ho, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i = load ptr, ptr %i.hm, align 8, !tbaa !28
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.ht = phi ptr [ %i.hn, %bb.ag ], [ %i.hn, %bb.ai ], [ %.pr.pre.i.i.i.i.i, %bb.aj ] ; 8 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not8.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 4 uses
  %i.hv = load atomic i64, ptr %i.hu acquire, align 8 ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 4294967297
  %i.hx = trunc i64 %i.hv to i32                  ; 2 uses
  br i1 %i.hw, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.hu, align 8, !tbaa !30
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store i32 0, ptr %i.hy, align 4, !tbaa !31
  %i.hz = load ptr, ptr %i.ht, align 8, !tbaa !33
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #16, !inline_history !213
  %i.ic = load ptr, ptr %i.ht, align 8, !tbaa !33
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #16, !inline_history !213
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.if = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i9.i.i.i.i.i = icmp eq i8 %i.if, 0
  br i1 %.not.i9.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ig = add nsw i32 %i.hx, -1
  store i32 %i.ig, ptr %i.hu, align 8, !tbaa !13
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ih = atomicrmw volatile add ptr %i.hu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.hx, %bb.an ], [ %i.ih, %bb.ao ]
  %i.ii = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ii, label %bb.ap, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, !prof !35

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #16
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.al, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  store ptr %.sroa.5.3, ptr %i.hm, align 8, !tbaa !28
  br label %bb.au

bb.aq:                                            ; preds = %bb.ae
  store ptr %.sroa.5.3, ptr %i.hm, align 8, !tbaa !28
  %.not.i.i.i.i3.i = icmp eq ptr %.sroa.5.3, null
  br i1 %.not.i.i.i.i3.i, label %_ZN6hermes6parser15JSONSharedValueC2ERKS1_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.5.3, i64 8 ; 3 uses
  %i.ik = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i4.i = icmp eq i8 %i.ik, 0
  br i1 %.not.i.i.i.i.i4.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.il = load i32, ptr %i.ij, align 4, !tbaa !13
  %i.im = add nsw i32 %i.il, 1
  store i32 %i.im, ptr %i.ij, align 4, !tbaa !13
  br label %_ZN6hermes6parser15JSONSharedValueC2ERKS1_.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.in = atomicrmw volatile add ptr %i.ij, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6hermes6parser15JSONSharedValueC2ERKS1_.exit.i

_ZN6hermes6parser15JSONSharedValueC2ERKS1_.exit.i: ; preds = %bb.at, %bb.as, %bb.aq
  store i8 1, ptr %i.hi, align 8, !tbaa !23
  br label %bb.au

bb.au:                                            ; preds = %_ZN6hermes6parser15JSONSharedValueC2ERKS1_.exit.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, %bb.af, %bb.ad
  %.not.i.i.i.i.i.i32 = icmp eq ptr %.sroa.5.3, null
  br i1 %.not.i.i.i.i.i.i32, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.5.3, i64 8 ; 4 uses
  %i.ip = load atomic i64, ptr %i.io acquire, align 8 ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 4294967297
  %i.ir = trunc i64 %i.ip to i32                  ; 2 uses
  br i1 %i.iq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.io, align 8, !tbaa !30
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.5.3, i64 12
  store i32 0, ptr %i.is, align 4, !tbaa !31
  %i.it = load ptr, ptr %.sroa.5.3, align 8, !tbaa !33
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.3) #16, !inline_history !214
  %i.iw = load ptr, ptr %.sroa.5.3, align 8, !tbaa !33
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.3) #16, !inline_history !214
  br label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.iz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i.i33 = icmp eq i8 %i.iz, 0
  br i1 %.not.i.i.i.i.i.i.i33, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ja = add nsw i32 %i.ir, -1
  store i32 %i.ja, ptr %i.io, align 8, !tbaa !13
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.jb = atomicrmw volatile add ptr %i.io, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ir, %bb.ay ], [ %i.jb, %bb.az ]
  %i.jc = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.jc, label %bb.ba, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit, !prof !35

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.3) #16
  br label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit

_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit: ; preds = %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i, %bb.au, %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ba
  %i.jd = trunc i64 %i.fw to i32
  %i.je = load ptr, ptr %3, align 8, !tbaa !73    ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.bz
  br i1 %i.jf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit
  %i.jg = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

bb.bb:                                            ; preds = %.thread282
  %.sroa.578.0..sroa_idx234 = getelementptr inbounds nuw i8, ptr %.sroa.0123.0162, i64 4
  %.sroa.9.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0123.0162, i64 8
  %.sroa.9.4.copyload = load i32, ptr %.sroa.9.4..sroa_idx, align 4 ; 6 uses
  %.sroa.10.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0123.0162, i64 12
  %.sroa.10.4.copyload = load i32, ptr %.sroa.10.4..sroa_idx, align 4 ; 6 uses
  %.sroa.11.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0123.0162, i64 16
  %.sroa.11.4.copyload = load i64, ptr %.sroa.11.4..sroa_idx, align 4 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15.0..sroa_idx235, i64 3, i1 false)
  %i.ji = load i32, ptr %.sroa.578.0..sroa_idx234, align 4, !tbaa !87 ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.jj ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.jk, align 8, !tbaa !65
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !72
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.jl = zext i32 %i.ji to i64                   ; 2 uses
  %i.jm = load ptr, ptr %i.cd, align 8, !tbaa !17, !noalias !232
  %i.jn = load ptr, ptr %i.cc, align 8, !tbaa !18, !noalias !232 ; 2 uses
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = ashr exact i64 %i.jq, 5
  %.not.i34 = icmp ugt i64 %i.jr, %i.jl
  br i1 %.not.i34, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i8 0, ptr %i.ce, align 8, !tbaa !23, !alias.scope !232
  br label %_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit

bb.bd:                                            ; preds = %bb.bb
  %i.js = getelementptr inbounds nuw [32 x i8], ptr %i.jn, i64 %i.jl ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = load i8, ptr %i.jt, align 8, !tbaa !23, !range !24, !noalias !232, !noundef !25 ; 2 uses
  %i.jv = trunc nuw i8 %i.ju to i1
  store i8 %i.ju, ptr %i.ce, align 8, !tbaa !23, !alias.scope !232
  br i1 %i.jv, label %bb.be, label %_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit

bb.be:                                            ; preds = %bb.bd
  %i.jw = load <2 x ptr>, ptr %i.js, align 8, !tbaa !117, !noalias !232
  store <2 x ptr> %i.jw, ptr %4, align 16, !tbaa !117, !alias.scope !232
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !28, !noalias !232 ; 3 uses
  store ptr %i.jy, ptr %i.cf, align 16, !tbaa !28, !alias.scope !232
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 3 uses
  %i.ka = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34, !noalias !232
  %.not.i.i.i.i.i.i.i.i36 = icmp eq i8 %i.ka, 0
  br i1 %.not.i.i.i.i.i.i.i.i36, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kb = load i32, ptr %i.jz, align 4, !tbaa !13, !noalias !232
  %i.kc = add nsw i32 %i.kb, 1
  store i32 %i.kc, ptr %i.jz, align 4, !tbaa !13, !noalias !232
  br label %_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit

bb.bh:                                            ; preds = %bb.bf
  %i.kd = atomicrmw volatile add ptr %i.jz, i32 1 acq_rel, align 4, !noalias !232 ; 0 uses
  br label %_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit

_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit: ; preds = %bb.bc, %bb.bd, %bb.be, %bb.bg, %bb.bh
  %i.ke = call noundef i64 @_ZN6hermes15StringSetVector6insertEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(104) %i.av, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) ; 5 uses
  %i.kf = load ptr, ptr %i.cb, align 8, !tbaa !17 ; 3 uses
  %i.kg = load ptr, ptr %i.bn, align 8, !tbaa !18 ; 2 uses
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = ashr exact i64 %i.kj, 5                 ; 4 uses
  %i.kl = and i64 %i.ke, 4294967295               ; 2 uses
  %.not.i37 = icmp ugt i64 %i.kk, %i.kl
  br i1 %.not.i37, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38, label %bb.bi

bb.bi:                                            ; preds = %_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit
  %i.km = add i64 %i.ke, 1
  %i.kn = and i64 %i.km, 4294967295               ; 4 uses
  %i.ko = icmp samesign ugt i64 %i.kn, %i.kk
  br i1 %i.ko, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.kp = sub nuw nsw i64 %i.kn, %i.kk
  call void @_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %i.kp)
  br label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38

bb.bk:                                            ; preds = %bb.bi
  %i.kq = icmp samesign ult i64 %i.kn, %i.kk
  br i1 %i.kq, label %bb.bl, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38

bb.bl:                                            ; preds = %bb.bk
  %i.kr = getelementptr inbounds nuw [32 x i8], ptr %i.kg, i64 %i.kn ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.kf, %i.kr
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38, label %.lr.ph.i.i.i.i.i41

.lr.ph.i.i.i.i.i41:                               ; preds = %bb.bl, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43
  %.05.i.i.i.i.i42 = phi ptr [ %i.lm, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43 ], [ %i.kr, %bb.bl ] ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i42, i64 24
  %i.kt = load i8, ptr %i.ks, align 8, !tbaa !23, !range !24, !noundef !25
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %bb.bm, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i.i41
  %i.kv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i42, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !28 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i46 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i46, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 4 uses
  %i.ky = load atomic i64, ptr %i.kx acquire, align 8 ; 2 uses
  %i.kz = icmp eq i64 %i.ky, 4294967297
  %i.la = trunc i64 %i.ky to i32                  ; 2 uses
  br i1 %i.kz, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.kx, align 8, !tbaa !30
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 12
  store i32 0, ptr %i.lb, align 4, !tbaa !31
  %i.lc = load ptr, ptr %i.kw, align 8, !tbaa !33
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(16) %i.kw) #16, !inline_history !212
  %i.lf = load ptr, ptr %i.kw, align 8, !tbaa !33
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lh = load ptr, ptr %i.lg, align 8
  call void %i.lh(ptr noundef nonnull align 8 dereferenceable(16) %i.kw) #16, !inline_history !212
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43

bb.bp:                                            ; preds = %bb.bn
  %i.li = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i47 = icmp eq i8 %i.li, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i47, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lj = add nsw i32 %i.la, -1
  store i32 %i.lj, ptr %i.kx, align 8, !tbaa !13
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i48

bb.br:                                            ; preds = %bb.bp
  %i.lk = atomicrmw volatile add ptr %i.kx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i48

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i48: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i49 = phi i32 [ %i.la, %bb.bq ], [ %i.lk, %bb.br ]
  %i.ll = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i49, 1
  br i1 %i.ll, label %bb.bs, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43, !prof !35

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i48
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kw) #16
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43

_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43: ; preds = %bb.bs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i48, %bb.bo, %bb.bm, %.lr.ph.i.i.i.i.i41
  %i.lm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i42, i64 32 ; 2 uses
  %.not.i.i.i.i.i44 = icmp eq ptr %i.lm, %i.kf
  br i1 %.not.i.i.i.i.i44, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i.i.i45, label %.lr.ph.i.i.i.i.i41, !llvm.loop !0

_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i.i.i45: ; preds = %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43
  store ptr %i.kr, ptr %i.cb, align 8, !tbaa !17
  br label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38

_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38: ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i.i.i45, %bb.bl, %bb.bk, %bb.bj, %_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit
  %i.ln = load i8, ptr %i.ce, align 8, !tbaa !38, !range !24, !noundef !25
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %bb.bt, label %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread290

_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread290: ; preds = %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38
  %i.lp = trunc i64 %i.ke to i32
  br label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

bb.bt:                                            ; preds = %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38
  %i.lq = load ptr, ptr %4, align 16, !tbaa !44
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !47
  %.not6.i39 = icmp eq i32 %i.lr, 5
  br i1 %.not6.i39, label %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread, label %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50

_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread: ; preds = %bb.bt
  %i.ls = trunc i64 %i.ke to i32
  br label %bb.bu

_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50: ; preds = %bb.bt
  %i.lt = load ptr, ptr %i.bn, align 8, !tbaa !18
  %i.lu = getelementptr inbounds nuw [32 x i8], ptr %i.lt, i64 %i.kl
  %i.lv = call noundef nonnull align 8 dereferenceable(25) ptr @_ZN4llvh15optional_detail15OptionalStorageIN6hermes6parser15JSONSharedValueELb0EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.lu, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  %.pre = load i8, ptr %i.ce, align 8, !tbaa !23, !range !24
  %i.lw = trunc nuw i8 %.pre to i1
  %i.lx = trunc i64 %i.ke to i32                  ; 2 uses
  br i1 %i.lw, label %bb.bu, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

bb.bu:                                            ; preds = %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50
  %i.ly = phi i32 [ %i.ls, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread ], [ %i.lx, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ] ; 4 uses
  %i.lz = load ptr, ptr %i.cf, align 16, !tbaa !28 ; 8 uses
  %.not.i.i.i.i.i.i51 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i.i.i.i51, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 4 uses
  %i.mb = load atomic i64, ptr %i.ma acquire, align 8 ; 2 uses
  %i.mc = icmp eq i64 %i.mb, 4294967297
  %i.md = trunc i64 %i.mb to i32                  ; 2 uses
  br i1 %i.mc, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.ma, align 8, !tbaa !30
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 12
  store i32 0, ptr %i.me, align 4, !tbaa !31
  %i.mf = load ptr, ptr %i.lz, align 8, !tbaa !33
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(16) %i.lz) #16, !inline_history !214
  %i.mi = load ptr, ptr %i.lz, align 8, !tbaa !33
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mk = load ptr, ptr %i.mj, align 8
  call void %i.mk(ptr noundef nonnull align 8 dereferenceable(16) %i.lz) #16, !inline_history !214
  br label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

bb.bx:                                            ; preds = %bb.bv
  %i.ml = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i.i52 = icmp eq i8 %i.ml, 0
  br i1 %.not.i.i.i.i.i.i.i52, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mm = add nsw i32 %i.md, -1
  store i32 %i.mm, ptr %i.ma, align 8, !tbaa !13
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53

bb.bz:                                            ; preds = %bb.bx
  %i.mn = atomicrmw volatile add ptr %i.ma, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i.i.i.i.i54 = phi i32 [ %i.md, %bb.by ], [ %i.mn, %bb.bz ]
  %i.mo = icmp eq i32 %.0.i.i.i.i.i.i.i.i54, 1
  br i1 %i.mo, label %bb.ca, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55, !prof !35

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lz) #16
  br label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread290, %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53, %bb.bw, %bb.bu, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50, %.thread282
  %.sroa.063.2264 = phi ptr [ %.sroa.063.1166, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ %.sroa.063.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.sroa.063.1166, %.thread282 ], [ %.sroa.063.1166, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.063.1166, %bb.bu ], [ %.sroa.063.1166, %bb.bw ], [ %.sroa.063.1166, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.063.1166, %bb.ca ], [ %.sroa.063.1166, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread290 ] ; 2 uses
  %.sroa.3.2262 = phi ptr [ %.sroa.3.1165, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ %.sroa.3.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.sroa.3.1165, %.thread282 ], [ %.sroa.3.1165, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.3.1165, %bb.bu ], [ %.sroa.3.1165, %bb.bw ], [ %.sroa.3.1165, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.3.1165, %bb.ca ], [ %.sroa.3.1165, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread290 ] ; 2 uses
  %.sroa.5.2260 = phi ptr [ %.sroa.5.1164, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ %.sroa.5.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.sroa.5.1164, %.thread282 ], [ %.sroa.5.1164, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.5.1164, %bb.bu ], [ %.sroa.5.1164, %bb.bw ], [ %.sroa.5.1164, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.5.1164, %bb.ca ], [ %.sroa.5.1164, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread290 ] ; 2 uses
  %.sroa.075.0.copyload237254 = phi i32 [ %.sroa.075.0.copyload, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ %.sroa.075.0.copyload, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.sroa.075.0.copyload233, %.thread282 ], [ %.sroa.075.0.copyload233, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.075.0.copyload233, %bb.bu ], [ %.sroa.075.0.copyload233, %bb.bw ], [ %.sroa.075.0.copyload233, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.075.0.copyload233, %bb.ca ], [ %.sroa.075.0.copyload233, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread290 ] ; 2 uses
  %.sroa.12.1 = phi i8 [ 0, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ 1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ 0, %.thread282 ], [ 1, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ 1, %bb.bu ], [ 1, %bb.bw ], [ 1, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ 1, %bb.ca ], [ 1, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread290 ] ; 2 uses
  %.sroa.11.1 = phi i64 [ 0, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ 0, %.thread282 ], [ %.sroa.11.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.11.4.copyload, %bb.bu ], [ %.sroa.11.4.copyload, %bb.bw ], [ %.sroa.11.4.copyload, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.11.4.copyload, %bb.ca ], [ %.sroa.11.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread290 ] ; 2 uses
  %.sroa.10.1 = phi i32 [ undef, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ %.sroa.0.i.sroa.6.0.copyload, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ undef, %.thread282 ], [ %.sroa.10.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.10.4.copyload, %bb.bu ], [ %.sroa.10.4.copyload, %bb.bw ], [ %.sroa.10.4.copyload, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.10.4.copyload, %bb.ca ], [ %.sroa.10.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread290 ] ; 2 uses
  %.sroa.9.1 = phi i32 [ undef, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ %.sroa.0.i.sroa.5.0.copyload, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ undef, %.thread282 ], [ %.sroa.9.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.9.4.copyload, %bb.bu ], [ %.sroa.9.4.copyload, %bb.bw ], [ %.sroa.9.4.copyload, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.9.4.copyload, %bb.ca ], [ %.sroa.9.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread290 ] ; 2 uses
  %.sroa.578.1 = phi i32 [ undef, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ %i.jd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ undef, %.thread282 ], [ %i.lx, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %i.ly, %bb.bu ], [ %i.ly, %bb.bw ], [ %i.ly, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %i.ly, %bb.ca ], [ %i.lp, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread290 ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.9129.0160, %.sroa.14132.0161
  br i1 %.not.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55
  store i32 %.sroa.075.0.copyload237254, ptr %.sroa.9129.0160, align 4
  %.sroa.578.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %.sroa.9129.0160, i64 4
  store i32 %.sroa.578.1, ptr %.sroa.578.0..sroa_idx79, align 4
  %.sroa.9.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %.sroa.9129.0160, i64 8
  store i32 %.sroa.9.1, ptr %.sroa.9.0..sroa_idx84, align 4
  %.sroa.10.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %.sroa.9129.0160, i64 12
  store i32 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx89, align 4
  %.sroa.11.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %.sroa.9129.0160, i64 16
  store i64 %.sroa.11.1, ptr %.sroa.11.0..sroa_idx94, align 4
  %.sroa.12.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %.sroa.9129.0160, i64 24
  store i8 %.sroa.12.1, ptr %.sroa.12.0..sroa_idx99, align 4
  %.sroa.15.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %.sroa.9129.0160, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15.0..sroa_idx103, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15, i64 3, i1 false)
  br label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit

bb.cc:                                            ; preds = %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55
  %i.mp = ptrtoint ptr %.sroa.14132.0161 to i64
  %i.mq = ptrtoint ptr %.sroa.0126.0163 to i64
  %i.mr = sub i64 %i.mp, %i.mq                    ; 4 uses
  %i.ms = icmp eq i64 %i.mr, 9223372036854775800
  br i1 %i.ms, label %bb.cd, label %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cd:                                            ; preds = %bb.cc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #17
  unreachable

_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cc
  %i.mt = sdiv exact i64 %i.mr, 28                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mt, i64 1)
  %i.mu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mt ; 2 uses
  %i.mv = icmp ult i64 %i.mu, %i.mt
  %i.mw = call i64 @llvm.umin.i64(i64 %i.mu, i64 329406144173384850)
  %i.mx = select i1 %i.mv, i64 329406144173384850, i64 %i.mw ; 3 uses
  %.not.i.i.i.i56 = icmp ne i64 %i.mx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i56)
  %i.my = mul nuw nsw i64 %i.mx, 28
  %i.mz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.my) #18 ; 5 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.mr ; 7 uses
  store i32 %.sroa.075.0.copyload237254, ptr %i.na, align 4
  %.sroa.578.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  store i32 %.sroa.578.1, ptr %.sroa.578.0..sroa_idx81, align 4
  %.sroa.9.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store i32 %.sroa.9.1, ptr %.sroa.9.0..sroa_idx86, align 4
  %.sroa.10.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.na, i64 12
  store i32 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx91, align 4
  %.sroa.11.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store i64 %.sroa.11.1, ptr %.sroa.11.0..sroa_idx96, align 4
  %.sroa.12.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  store i8 %.sroa.12.1, ptr %.sroa.12.0..sroa_idx101, align 4
  %.sroa.15.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.na, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15.0..sroa_idx104, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15, i64 3, i1 false)
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0126.0163, %.sroa.14132.0161
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.nc, %.lr.ph.i.i.i.i.i.i ], [ %i.mz, %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.nb, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0126.0163, %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i.i.i.i, i64 28, i1 false), !alias.scope !233
  %i.nb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 28 ; 2 uses
  %.not.i.i.i.i.i.i57 = icmp eq ptr %i.nb, %.sroa.14132.0161
  br i1 %.not.i.i.i.i.i.i57, label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !220

_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.mz, %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.nc, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0126.0163, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0126.0163, i64 noundef %i.mr) #19
  br label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ce, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.nd = getelementptr inbounds nuw [28 x i8], ptr %i.mz, i64 %i.mx
  br label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.cb, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.9129.0160, %bb.cb ]
  %.sroa.14132.1 = phi ptr [ %i.nd, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.14132.0161, %bb.cb ] ; 2 uses
  %.sroa.0126.1 = phi ptr [ %i.mz, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.0126.0163, %bb.cb ] ; 2 uses
  %.sroa.9129.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0123.0162, i64 28 ; 2 uses
  %.not140 = icmp eq ptr %i.ne, %i.co
  br i1 %.not140, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18SourceMapGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load i32, ptr %i.b, align 8, !tbaa !120  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %.pre1.i = load ptr, ptr %i.a, align 8, !tbaa !121 ; 3 uses
  br i1 %i.d, label %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.c to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.pre1.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.o, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i ], [ %.pre1.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.g = load i32, ptr %.010.i.i, align 4, !tbaa !13
  %switch.i.i = icmp ugt i32 %i.g, -3
  br i1 %switch.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !124  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !125
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.f
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E10destroyAllEv.exit.loopexit.i: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !121
  br label %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit

_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E10destroyAllEv.exit.loopexit.i
  %i.p = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i, %bb.a ]
  tail call void @_ZdlPv(ptr noundef %i.p) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i ], [ %i.r, %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.v = load i8, ptr %i.u, align 8, !tbaa !23, !range !24, !noundef !25
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.z, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !31
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #16, !inline_history !3
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #16, !inline_history !3
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !13
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

end_hunk_1
