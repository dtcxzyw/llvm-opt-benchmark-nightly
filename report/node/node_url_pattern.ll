Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_url_pattern?download=true
inline.NumInlined: 4558
inline.NumDeleted: 1922
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4node13MemoryTracker10TrackFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EEEEvPKcRKT_SH_SH_b:bb.a
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4node13MemoryTracker21AdjustCurrentNodeSizeEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noalias !315
  %i.m = icmp eq ptr %i.h, %i.l
  br i1 %i.m, label %bb.d, label %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !noalias !315
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 512
  br label %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i

_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i: ; preds = %bb.d, %bb.c
  %i.s = phi ptr [ %i.r, %bb.d ], [ %i.h, %bb.c ]
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8              ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit, label %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i

_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i: ; preds = %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #24, !inline_history !21
  br i1 %i.aa, label %bb.e, label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit

bb.e:                                             ; preds = %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit

_ZNK4node13MemoryTracker11CurrentNodeEv.exit:     ; preds = %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i, %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i, %bb.e
  %.1.i = phi ptr [ %i.u, %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i ], [ %i.ac, %bb.e ], [ %i.u, %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i ]
  %i.ad = icmp ne ptr %.1.i, null
  %or.cond = and i1 %5, %i.ad
  br i1 %or.cond, label %bb.f, label %_ZN4node13MemoryTracker21AdjustCurrentNodeSizeEi.exit

bb.f:                                             ; preds = %_ZNK4node13MemoryTracker11CurrentNodeEv.exit
  %i.ae = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.af = load ptr, ptr %i.g, align 8
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN4node13MemoryTracker21AdjustCurrentNodeSizeEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.k, align 8, !noalias !316
  %i.ai = icmp eq ptr %i.ae, %i.ah
  br i1 %i.ai, label %bb.h, label %_ZNSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !316
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i

_ZNSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i: ; preds = %bb.h, %bb.g
  %i.ao = phi ptr [ %i.an, %bb.h ], [ %i.ae, %bb.g ]
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.as, null
  br i1 %.not.i.i10, label %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.thread.i, label %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i11

_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i11: ; preds = %_ZNSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #24, !inline_history !313
  br i1 %i.aw, label %_ZN4node13MemoryTracker21AdjustCurrentNodeSizeEi.exit, label %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.thread.i

_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.thread.i: ; preds = %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i11, %_ZNSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = shl i64 %i.ay, 32
  %sext = add i64 %i.az, -103079215104
  %i.ba = ashr exact i64 %sext, 32
  store i64 %i.ba, ptr %i.ax, align 8
  br label %_ZN4node13MemoryTracker21AdjustCurrentNodeSizeEi.exit

_ZN4node13MemoryTracker21AdjustCurrentNodeSizeEi.exit: ; preds = %bb.b, %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.thread.i, %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i11, %bb.f, %_ZNK4node13MemoryTracker11CurrentNodeEv.exit
  %.not.i = icmp eq ptr %3, null
  %.not7.i = icmp eq ptr %1, null
  %.str.104..i = select i1 %.not7.i, ptr @.str.104, ptr %1
  %.0.i = select i1 %.not.i, ptr %.str.104..i, ptr %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bb = tail call noundef ptr @_ZN4node13MemoryTracker7AddNodeEPKcmS2_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %.0.i, i64 noundef 24, ptr noundef %1) ; 2 uses
  store ptr %i.bb, ptr %i.a, align 8
  %i.bc = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8
  %.not.i.i.i = icmp eq ptr %i.bc, %i.bf
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4node13MemoryTracker21AdjustCurrentNodeSizeEi.exit
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bg = load ptr, ptr %i.f, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.f, align 8
  br label %_ZN4node13MemoryTracker8PushNodeEPKcmS2_.exit

bb.j:                                             ; preds = %_ZN4node13MemoryTracker21AdjustCurrentNodeSizeEi.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt5dequeIPN4node18MemoryRetainerNodeESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN4node13MemoryTracker8PushNodeEPKcmS2_.exit

_ZN4node13MemoryTracker8PushNodeEPKcmS2_.exit:    ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bj = load ptr, ptr %2, align 8               ; 2 uses
  %i.bk = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4node13MemoryTracker10TrackFieldIcEEvPKcRKNSt7__cxx1112basic_stringIT_St11char_traitsIS6_ESaIS6_EEES3_.exit, %_ZN4node13MemoryTracker8PushNodeEPKcmS2_.exit
  %i.bm = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i.i.i12, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds i8, ptr %i.bm, i64 -8
  br label %_ZN4node13MemoryTracker7PopNodeEv.exit

bb.l:                                             ; preds = %._crit_edge
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef 512) #27
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8 ; 2 uses
  store ptr %i.bs, ptr %i.bq, align 8
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  store ptr %i.bt, ptr %i.bn, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 512
  store ptr %i.bu, ptr %i.bd, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 504
  br label %_ZN4node13MemoryTracker7PopNodeEv.exit

_ZN4node13MemoryTracker7PopNodeEv.exit:           ; preds = %bb.k, %bb.l
  %storemerge.i.i.i = phi ptr [ %i.bp, %bb.k ], [ %i.bv, %bb.l ]
  store ptr %storemerge.i.i.i, ptr %i.f, align 8
  br label %bb.n

.lr.ph:                                           ; preds = %_ZN4node13MemoryTracker8PushNodeEPKcmS2_.exit, %_ZN4node13MemoryTracker10TrackFieldIcEEvPKcRKNSt7__cxx1112basic_stringIT_St11char_traitsIS6_ESaIS6_EEES3_.exit
  %i.bw = phi ptr [ %i.ca, %_ZN4node13MemoryTracker10TrackFieldIcEEvPKcRKNSt7__cxx1112basic_stringIT_St11char_traitsIS6_ESaIS6_EEES3_.exit ], [ %i.bk, %_ZN4node13MemoryTracker8PushNodeEPKcmS2_.exit ]
  %.sroa.014.021 = phi ptr [ %i.cb, %_ZN4node13MemoryTracker10TrackFieldIcEEvPKcRKNSt7__cxx1112basic_stringIT_St11char_traitsIS6_ESaIS6_EEES3_.exit ], [ %i.bj, %_ZN4node13MemoryTracker8PushNodeEPKcmS2_.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.014.021, i64 8
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %.not.i.i13 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i13, label %_ZN4node13MemoryTracker10TrackFieldIcEEvPKcRKNSt7__cxx1112basic_stringIT_St11char_traitsIS6_ESaIS6_EEES3_.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bz = call noundef ptr @_ZN4node13MemoryTracker7AddNodeEPKcmS2_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.103, i64 noundef %i.by, ptr noundef null) ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN4node13MemoryTracker10TrackFieldIcEEvPKcRKNSt7__cxx1112basic_stringIT_St11char_traitsIS6_ESaIS6_EEES3_.exit

_ZN4node13MemoryTracker10TrackFieldIcEEvPKcRKNSt7__cxx1112basic_stringIT_St11char_traitsIS6_ESaIS6_EEES3_.exit: ; preds = %.lr.ph, %bb.m
  %i.ca = phi ptr [ %i.bw, %.lr.ph ], [ %.pre, %bb.m ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.014.021, i64 32 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ca
  br i1 %i.cc, label %._crit_edge, label %.lr.ph, !llvm.loop !314

bb.n:                                             ; preds = %bb.a, %_ZN4node13MemoryTracker7PopNodeEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada6parser22parse_url_pattern_implITkNS_17url_pattern_regex13regex_conceptEN4node11url_pattern23URLPatternRegexProviderEEEN2tl8expectedINS_11url_patternIT_EENS_6errorsEEEOSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENS_16url_pattern_initEEEPKSH_PKNS_19url_pattern_optionsE(ptr dead_on_unwind noalias writable sret(%"class.tl::expected") align 8 %0, ptr noundef nonnull align 8 dereferenceable(361) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.ada::url_pattern_init", align 8 ; 37 uses
  %5 = alloca %"class.tl::expected.732", align 8  ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.tl::expected.732", align 8  ; 34 uses
  %8 = alloca %"class.std::optional.529", align 8 ; 2 uses
  %9 = alloca %"class.std::optional.529", align 8 ; 2 uses
  %10 = alloca %"class.std::optional.529", align 8 ; 2 uses
  %11 = alloca %"class.std::optional.529", align 8 ; 2 uses
  %12 = alloca %"class.std::optional.529", align 8 ; 2 uses
  %13 = alloca %"class.std::optional.529", align 8 ; 2 uses
  %14 = alloca %"class.std::optional.529", align 8 ; 2 uses
  %15 = alloca %"class.std::optional.529", align 8 ; 2 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.ada::url_pattern", align 8 ; 63 uses
  %18 = alloca %"class.tl::expected.751", align 8 ; 7 uses
  %19 = alloca %"class.tl::expected.751", align 8 ; 7 uses
  %20 = alloca %"class.tl::expected.751", align 8 ; 7 uses
  %21 = alloca %"class.tl::expected.751", align 8 ; 9 uses
  %22 = alloca %"class.tl::expected.751", align 8 ; 9 uses
  %23 = alloca %"class.tl::expected.751", align 8 ; 7 uses
  %24 = alloca %"struct.ada::url_pattern_compile_component_options", align 1 ; 7 uses
  %25 = alloca %"struct.ada::url_pattern_compile_component_options", align 1 ; 8 uses
  %26 = alloca %"class.tl::expected.751", align 8 ; 9 uses
  %27 = alloca %"class.tl::expected.751", align 8 ; 9 uses
  %28 = alloca %"class.tl::expected.751", align 8 ; 7 uses
  %29 = alloca %"class.tl::expected.751", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i8 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 192
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 232
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 272
  store i8 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 312
  store i8 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 352 ; 3 uses
  store i8 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.k = load i8, ptr %i.j, align 8               ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %_ZSt3getISt17basic_string_viewIcSt11char_traitsIcEEJS3_N3ada16url_pattern_initEEERT_RSt7variantIJDpT0_EE.exit, label %bb.v

_ZSt3getISt17basic_string_viewIcSt11char_traitsIcEEJS3_N3ada16url_pattern_initEEERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %.sroa.038.0.copyload = load i64, ptr %1, align 8
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.239.0.copyload = load ptr, ptr %.sroa.239.0..sroa_idx, align 8
  call void @_ZN3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE5parseESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.tl::expected.732") align 8 %5, i64 %.sroa.038.0.copyload, ptr %.sroa.239.0.copyload)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 360 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8, !range !29, !noundef !32
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %.critedge56.thread

.critedge56.thread:                               ; preds = %_ZSt3getISt17basic_string_viewIcSt11char_traitsIcEEJS3_N3ada16url_pattern_initEEERT_RSt7variantIJDpT0_EE.exit
  %i.p = load i8, ptr %5, align 8
  store i8 %i.p, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 840
  store i8 0, ptr %i.q, align 8
  br label %_ZN2tl6detail21expected_storage_baseIN3ada16url_pattern_initENS2_6errorsELb0ELb1EED2Ev.exit113

bb.b:                                             ; preds = %_ZSt3getISt17basic_string_viewIcSt11char_traitsIcEEJS3_N3ada16url_pattern_initEEERT_RSt7variantIJDpT0_EE.exit
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(360) %4, ptr noundef nonnull align 8 dereferenceable(360) %5) #24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.s) #24
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.u) #24
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 120
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.w) #24
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 160
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.y) #24
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 200
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 240
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #24
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 280
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #24
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 320 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 320
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #24
  %.not53 = icmp eq ptr %2, null
  br i1 %.not53, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ah = load i8, ptr %i.a, align 8, !range !29, !noundef !32
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.t, label %.critedge56

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8 ; 9 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 13 uses
  store ptr %i.aj, ptr %6, align 8
  %i.ak = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.al = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.al, %i.ak
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.46) #25
  unreachable

bb.e:                                             ; preds = %.critedge
  %i.am = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.am, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.an = icmp slt i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ao = add nuw i64 %.sroa.0.0.copyload.i, 1    ; 2 uses
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !27

bb.i:                                             ; preds = %bb.h
  call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.h
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #26 ; 2 uses
  store ptr %i.aq, ptr %6, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.aj, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.e
  %i.ar = phi ptr [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.aj, %bb.e ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = load i8, ptr %.sroa.2.0.copyload.i, align 1
  store i8 %i.as, ptr %i.ar, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.j, %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  store i64 %.sroa.0.0.copyload.i, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.copyload.i
  store i8 0, ptr %i.au, align 1
  %i.av = load i8, ptr %i.i, align 8, !range !29, !noundef !32
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.l, label %bb.r

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.ax = load ptr, ptr %i.af, align 8            ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 336 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  %i.ba = load ptr, ptr %6, align 8               ; 5 uses
  %i.bb = icmp eq ptr %i.ba, %i.aj                ; 2 uses
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  br i1 %i.bb, label %bb.m, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.l
  br i1 %i.bb, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bc = load i64, ptr %i.at, align 8            ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bd)
  switch i64 %i.bc, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.be = load i8, ptr %i.ba, align 1
  store i8 %i.be, ptr %i.ax, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.ba, i64 %i.bc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.bf = load i64, ptr %i.at, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 328
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = load ptr, ptr %i.af, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1
  %.pre.i.i = load ptr, ptr %6, align 8
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN3ada6parser22parse_url_pattern_implITkNS_17url_pattern_regex13regex_conceptEN4node11url_pattern23URLPatternRegexProviderEEEN2tl8expectedINS_11url_patternIT_EENS_6errorsEEEOSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENS_16url_pattern_initEEEPKSH_PKNS_19url_pattern_optionsE:bb.a
  %i.bz = load i64, ptr %i.aj, align 8
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %.pre142, i64 noundef %i.ca) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cb = load i8, ptr %i.m, align 8, !range !29, !noundef !32
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.u, label %_ZN2tl6detail21expected_storage_baseIN3ada16url_pattern_initENS2_6errorsELb0ELb1EED2Ev.exit

bb.u:                                             ; preds = %bb.t
  call void @_ZN3ada16url_pattern_initD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(361) %5) #24
  br label %_ZN2tl6detail21expected_storage_baseIN3ada16url_pattern_initENS2_6errorsELb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseIN3ada16url_pattern_initENS2_6errorsELb0ELb1EED2Ev.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.z

bb.v:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %0, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 840
  store i8 0, ptr %i.cd, align 8
  br label %bb.cs

bb.x:                                             ; preds = %bb.v
  %.not.i.i60 = icmp eq i8 %i.k, 1
  br i1 %.not.i.i60, label %_ZSt3getIN3ada16url_pattern_initEJSt17basic_string_viewIcSt11char_traitsIcEES1_EERT_RSt7variantIJDpT0_EE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @abort() #25
  unreachable

_ZSt3getIN3ada16url_pattern_initEJSt17basic_string_viewIcSt11char_traitsIcEES1_EERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.x
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(360) %4, ptr noundef nonnull align 8 dereferenceable(360) %1) #24
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noundef nonnull align 8 dereferenceable(40) %i.cf) #24
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, ptr noundef nonnull align 8 dereferenceable(40) %i.ch) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ci, ptr noundef nonnull align 8 dereferenceable(40) %i.cj) #24
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ck, ptr noundef nonnull align 8 dereferenceable(40) %i.cl) #24
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.cn) #24
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.co, ptr noundef nonnull align 8 dereferenceable(40) %i.cp) #24
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 280
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.cq, ptr noundef nonnull align 8 dereferenceable(40) %i.cr) #24
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 320
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef nonnull align 8 dereferenceable(40) %i.ct) #24
  br label %bb.z

bb.z:                                             ; preds = %_ZN2tl6detail21expected_storage_baseIN3ada16url_pattern_initENS2_6errorsELb0ELb1EED2Ev.exit, %_ZSt3getIN3ada16url_pattern_initEJSt17basic_string_viewIcSt11char_traitsIcEES1_EERT_RSt7variantIJDpT0_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 0, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 0, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 0, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 0, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 0, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 0, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i8 0, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i8 0, ptr %i.db, align 8
  call void @_ZN3ada16url_pattern_init7processERKS0_NS0_12process_typeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES9_S9_S9_S9_S9_S9_S9_(ptr dead_on_unwind nonnull writable sret(%"class.tl::expected.732") align 8 %7, ptr noundef nonnull align 8 dereferenceable(360) %4, i8 noundef zeroext 1, ptr noundef nonnull byval(%"class.std::optional.529") align 8 %8, ptr noundef nonnull byval(%"class.std::optional.529") align 8 %9, ptr noundef nonnull byval(%"class.std::optional.529") align 8 %10, ptr noundef nonnull byval(%"class.std::optional.529") align 8 %11, ptr noundef nonnull byval(%"class.std::optional.529") align 8 %12, ptr noundef nonnull byval(%"class.std::optional.529") align 8 %13, ptr noundef nonnull byval(%"class.std::optional.529") align 8 %14, ptr noundef nonnull byval(%"class.std::optional.529") align 8 %15) #24
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 360 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 8, !range !29, !noundef !32
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.aa, label %.thread180

.thread180:                                       ; preds = %bb.z
  %i.df = load i8, ptr %7, align 8
  store i8 %i.df, ptr %0, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 840
  store i8 0, ptr %i.dg, align 8
  br label %_ZN2tl6detail21expected_storage_baseIN3ada16url_pattern_initENS2_6errorsELb0ELb1EED2Ev.exit112

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 8, !range !29, !noundef !32
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dk = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA2_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(2) @.str.105) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 8, !range !29, !noundef !32
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dp = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA2_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull align 1 dereferenceable(2) @.str.105) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 8, !range !29, !noundef !32
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA2_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.dq, ptr noundef nonnull align 1 dereferenceable(2) @.str.105) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 152 ; 4 uses
  %i.dx = load i8, ptr %i.dw, align 8, !range !29, !noundef !32
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dz = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA2_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.dv, ptr noundef nonnull align 1 dereferenceable(2) @.str.105) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 3 uses
  %i.ec = load i8, ptr %i.eb, align 8, !range !29, !noundef !32
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ee = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA2_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ea, ptr noundef nonnull align 1 dereferenceable(2) @.str.105) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 232 ; 3 uses
  %i.eh = load i8, ptr %i.eg, align 8, !range !29, !noundef !32
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA2_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ef, ptr noundef nonnull align 1 dereferenceable(2) @.str.105) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 240 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 272 ; 2 uses
  %i.em = load i8, ptr %i.el, align 8, !range !29, !noundef !32
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eo = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA2_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ek, ptr noundef nonnull align 1 dereferenceable(2) @.str.105) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 280 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 312 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 8, !range !29, !noundef !32
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.et = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA2_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ep, ptr noundef nonnull align 1 dereferenceable(2) @.str.105) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.eu = load ptr, ptr %7, align 8               ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8            ; 4 uses
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ey = shl i64 %i.ew, 1                        ; 2 uses
  %i.ez = load i8, ptr %i.eu, align 1             ; 2 uses
  %i.fa = zext i8 %i.ez to i64
  %i.fb = add i64 %i.ey, %i.fa
  %i.fc = and i64 %i.fb, 7
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr @_ZN3ada6scheme7detailsL15is_special_listE, i64 %i.fc ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.fe = load i8, ptr %.sroa.4.0.copyload, align 1
  %i.ff = icmp eq i8 %i.fe, %i.ez
  br i1 %i.ff, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit65, label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit65: ; preds = %bb.ar
  %.sroa.0129.0.copyload = load i64, ptr %i.fd, align 16 ; 2 uses
  %i.fg = add i64 %.sroa.0129.0.copyload, -1      ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 2 uses
  %i.fj = icmp eq i64 %.sroa.0129.0.copyload, %i.ew
  br i1 %i.fj, label %bb.as, label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.as:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit65
  %i.fk = icmp eq i64 %i.fg, 0
  br i1 %i.fk, label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.as
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.fh, ptr nonnull %i.fi, i64 %i.fg)
  %i.fl = icmp eq i32 %bcmp.i, 0
  br i1 %i.fl, label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.as
  %i.fm = load i8, ptr %i.eb, align 8, !range !29, !noundef !32
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @_ZSt27__throw_bad_optional_accessv() #31
  unreachable

bb.au:                                            ; preds = %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.fo = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.fr = load i8, ptr %i.eu, align 1             ; 2 uses
  %i.fs = zext i8 %i.fr to i64
  %i.ft = add i64 %i.ey, %i.fs
  %i.fu = and i64 %i.ft, 7                        ; 4 uses
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr @_ZN3ada6scheme7detailsL15is_special_listE, i64 %i.fu ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %i.fw = load i8, ptr %.sroa.4.0.copyload.i, align 1
  %i.fx = icmp eq i8 %i.fw, %i.fr
  br i1 %i.fx, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i, label %._crit_edge.i.i.thread177

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i: ; preds = %bb.au
  %.sroa.0.0.copyload.i70 = load i64, ptr %i.fv, align 16 ; 2 uses
  %i.fy = add i64 %.sroa.0.0.copyload.i70, -1     ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 1
  %i.ga = icmp eq i64 %.sroa.0.0.copyload.i70, %i.ew
  br i1 %i.ga, label %bb.av, label %._crit_edge.i.i.thread177

bb.av:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i
  %i.gb = icmp eq i64 %i.fy, 0
  br i1 %i.gb, label %_ZN3ada6scheme16get_special_portESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.av
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.fz, ptr nonnull %i.fi, i64 %i.fy)
  %i.gc = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.gc, label %_ZN3ada6scheme16get_special_portESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %._crit_edge.i.i.thread177

_ZN3ada6scheme16get_special_portESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.av, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr @_ZN3ada6scheme7detailsL13special_portsE, i64 %i.fu
  %i.ge = load i16, ptr %i.gd, align 2
  %i.gf = zext i16 %i.ge to i32                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %30 = shl nuw nsw i64 1, %i.fu
  %31 = and i64 %30, 194
  %.not181 = icmp eq i64 %31, 0
  br i1 %.not181, label %.lr.ph.i.i, label %._crit_edge.i.i.thread177

.lr.ph.i.i:                                       ; preds = %_ZN3ada6scheme16get_special_portESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %32 = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %32, ptr %16, align 8, !alias.scope !320
  %33 = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  switch i64 %i.fu, label %._crit_edge.i.i.thread [
    i64 5, label %.lr.ph.preheader.i.i
    i64 2, label %.lr.ph.preheader.i.i
  ]

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %32, i8 45, i64 3, i1 false)
  store i64 3, ptr %33, align 8, !alias.scope !320
  %i.gg = getelementptr inbounds nuw i8, ptr %16, i64 19
  store i8 0, ptr %i.gg, align 1
  br label %.lr.ph.i11.i

._crit_edge.i.i.thread177:                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i, %bb.au, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN3ada6scheme16get_special_portESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.1.i163 = phi i32 [ %i.gf, %_ZN3ada6scheme16get_special_portESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ 0, %bb.au ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.gh, ptr %16, align 8, !alias.scope !320
  store i8 45, ptr %i.gh, align 8, !alias.scope !320
  %i.gi = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 1, ptr %i.gi, align 8, !alias.scope !320
  %i.gj = getelementptr inbounds nuw i8, ptr %16, i64 17
  store i8 0, ptr %i.gj, align 1
  br label %bb.ax

._crit_edge.i.i.thread:                           ; preds = %.lr.ph.i.i
  store i16 11565, ptr %32, align 8
  store i64 2, ptr %33, align 8, !alias.scope !320
  %i.gk = getelementptr inbounds nuw i8, ptr %16, i64 18
  store i8 0, ptr %i.gk, align 2
  br label %bb.aw

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.gn, %.lr.ph.i11.i ], [ %i.gf, %.lr.ph.preheader.i.i ] ; 4 uses
  %.01819.i.i = phi i32 [ %i.gy, %.lr.ph.i11.i ], [ 2, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.gl = urem i32 %.020.i.i, 100
  %i.gm = shl nuw nsw i32 %i.gl, 1
  %i.gn = udiv i32 %.020.i.i, 100                 ; 3 uses
  %i.go = zext nneg i32 %i.gm to i64
  %i.gp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  %i.gr = load i8, ptr %i.gq, align 1, !noalias !320
  %i.gs = zext i32 %.01819.i.i to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %32, i64 %i.gs
  store i8 %i.gr, ptr %i.gt, align 2
  %i.gu = load i8, ptr %i.gp, align 2, !noalias !320
  %i.gv = add i32 %.01819.i.i, -1
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %32, i64 %i.gw
  store i8 %i.gu, ptr %i.gx, align 1
  %i.gy = add i32 %.01819.i.i, -2
  %i.gz = icmp samesign ugt i32 %.020.i.i, 9999
  br i1 %i.gz, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !319

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i
  %i.ha = icmp samesign ugt i32 %.020.i.i, 999
  br i1 %i.ha, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %.0.lcssa.i.i176 = phi i32 [ %i.gf, %._crit_edge.i.i.thread ], [ %i.gn, %._crit_edge.i.i ]
  %i.hb = phi i64 [ 2, %._crit_edge.i.i.thread ], [ 3, %._crit_edge.i.i ]
  %i.hc = shl nuw nsw i32 %.0.lcssa.i.i176, 1
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.hd ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  %i.hg = load i8, ptr %i.hf, align 1, !noalias !320
  %i.hh = getelementptr inbounds nuw i8, ptr %16, i64 17
  store i8 %i.hg, ptr %i.hh, align 1
  %i.hi = load i8, ptr %i.he, align 2, !noalias !320
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.ax:                                            ; preds = %._crit_edge.i.i.thread177, %._crit_edge.i.i
  %.0.lcssa.i.i179 = phi i32 [ %.1.i163, %._crit_edge.i.i.thread177 ], [ %i.gn, %._crit_edge.i.i ]
  %i.hj = phi ptr [ %i.gh, %._crit_edge.i.i.thread177 ], [ %32, %._crit_edge.i.i ]
  %i.hk = phi i64 [ 1, %._crit_edge.i.i.thread177 ], [ 3, %._crit_edge.i.i ]
  %i.hl = trunc nuw nsw i32 %.0.lcssa.i.i179 to i8
  %i.hm = or disjoint i8 %i.hl, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.aw, %bb.ax
  %i.hn = phi ptr [ %i.hj, %bb.ax ], [ %32, %bb.aw ] ; 2 uses
  %i.ho = phi i64 [ %i.hk, %bb.ax ], [ %i.hb, %bb.aw ]
  %storemerge.i.i = phi i8 [ %i.hm, %bb.ax ], [ %i.hi, %bb.aw ]
  store i8 %storemerge.i.i, ptr %i.hn, align 1
  %i.hp = icmp eq i64 %i.fq, %i.ho
  br i1 %i.hp, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %bcmp.i74 = call i32 @bcmp(ptr nonnull %i.hn, ptr %i.fo, i64 %i.fq)
  %i.hq = icmp eq i32 %bcmp.i74, 0
  br i1 %i.hq, label %bb.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread: ; preds = %_ZNSt7__cxx119to_stringEi.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.ay:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  store i64 0, ptr %i.fp, align 8
  store i8 0, ptr %i.fo, align 1
  br label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit65, %bb.ar, %bb.aq, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.hr = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %17, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(840) %17, i8 0, i64 840, i1 false)
  store ptr %i.hs, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.hu = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.hv = getelementptr inbounds nuw i8, ptr %17, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ht, i8 0, i64 24, i1 false)
  store ptr %i.hv, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %17, i64 97
  store i8 3, ptr %i.hw, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %17, i64 104 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 112
  %i.hz = getelementptr inbounds nuw i8, ptr %17, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.hx, i8 0, i64 104, i1 false)
  store ptr %i.hz, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %17, i64 144
  %i.ib = getelementptr inbounds nuw i8, ptr %17, i64 168
  %i.ic = getelementptr inbounds nuw i8, ptr %17, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ia, i8 0, i64 24, i1 false)
  store ptr %i.ic, ptr %i.ib, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %17, i64 201
  store i8 3, ptr %i.id, align 1
  %i.ie = getelementptr inbounds nuw i8, ptr %17, i64 208 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %17, i64 216
  %i.ig = getelementptr inbounds nuw i8, ptr %17, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ie, i8 0, i64 104, i1 false)
  store ptr %i.ig, ptr %i.if, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %17, i64 248
  %i.ii = getelementptr inbounds nuw i8, ptr %17, i64 272
  %i.ij = getelementptr inbounds nuw i8, ptr %17, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, i8 0, i64 24, i1 false)
  store ptr %i.ij, ptr %i.ii, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %17, i64 305
  store i8 3, ptr %i.ik, align 1
  %i.il = getelementptr inbounds nuw i8, ptr %17, i64 312 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %17, i64 320
  %i.in = getelementptr inbounds nuw i8, ptr %17, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.il, i8 0, i64 104, i1 false)
  store ptr %i.in, ptr %i.im, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %17, i64 352
  %i.ip = getelementptr inbounds nuw i8, ptr %17, i64 376
  %i.iq = getelementptr inbounds nuw i8, ptr %17, i64 392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.io, i8 0, i64 24, i1 false)
  store ptr %i.iq, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %17, i64 409
  store i8 3, ptr %i.ir, align 1
  %i.is = getelementptr inbounds nuw i8, ptr %17, i64 416 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %17, i64 424
  %i.iu = getelementptr inbounds nuw i8, ptr %17, i64 440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.is, i8 0, i64 104, i1 false)
  store ptr %i.iu, ptr %i.it, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %17, i64 456
  %i.iw = getelementptr inbounds nuw i8, ptr %17, i64 480
  %i.ix = getelementptr inbounds nuw i8, ptr %17, i64 496
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, i8 0, i64 24, i1 false)
  store ptr %i.ix, ptr %i.iw, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %17, i64 513
  store i8 3, ptr %i.iy, align 1
  %i.iz = getelementptr inbounds nuw i8, ptr %17, i64 520 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %17, i64 528
  %i.jb = getelementptr inbounds nuw i8, ptr %17, i64 544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.iz, i8 0, i64 104, i1 false)
  store ptr %i.jb, ptr %i.ja, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %17, i64 560
  %i.jd = getelementptr inbounds nuw i8, ptr %17, i64 584
  %i.je = getelementptr inbounds nuw i8, ptr %17, i64 600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, i8 0, i64 24, i1 false)
  store ptr %i.je, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %17, i64 617
  store i8 3, ptr %i.jf, align 1
  %i.jg = getelementptr inbounds nuw i8, ptr %17, i64 624 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %17, i64 632
  %i.ji = getelementptr inbounds nuw i8, ptr %17, i64 648
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.jg, i8 0, i64 104, i1 false)
  store ptr %i.ji, ptr %i.jh, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %17, i64 664
  %i.jk = getelementptr inbounds nuw i8, ptr %17, i64 688
  %i.jl = getelementptr inbounds nuw i8, ptr %17, i64 704
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, i8 0, i64 24, i1 false)
  store ptr %i.jl, ptr %i.jk, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %17, i64 721
  store i8 3, ptr %i.jm, align 1
  %i.jn = getelementptr inbounds nuw i8, ptr %17, i64 728 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %17, i64 736
  %i.jp = getelementptr inbounds nuw i8, ptr %17, i64 752
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.jn, i8 0, i64 104, i1 false)
  store ptr %i.jp, ptr %i.jo, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %17, i64 768
  %i.jr = getelementptr inbounds nuw i8, ptr %17, i64 792
  %i.js = getelementptr inbounds nuw i8, ptr %17, i64 808
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jq, i8 0, i64 24, i1 false)
  store ptr %i.js, ptr %i.jr, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %17, i64 825
  store i8 3, ptr %i.jt, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.ju = load i8, ptr %i.dh, align 8, !range !29, !noundef !32
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit79, label %bb.az

bb.az:                                            ; preds = %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  call void @_ZSt27__throw_bad_optional_accessv() #31
  unreachable

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit79: ; preds = %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.jw = load ptr, ptr %7, align 8
  %i.jx = load i64, ptr %i.ev, align 8
  call void @_ZN3ada21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEE7compileITkNS_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6errorsEEESt17basic_string_viewIcSB_EEEENS7_IS4_SE_EESH_RT_RNS_37url_pattern_compile_component_optionsE(ptr dead_on_unwind nonnull writable sret(%"class.tl::expected.751") align 8 %18, i64 %i.jx, ptr %i.jw, ptr noundef nonnull @_ZN3ada19url_pattern_helpers21canonicalize_protocolB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE, ptr noundef nonnull align 1 dereferenceable(5) @_ZN3ada37url_pattern_compile_component_options7DEFAULTE)
  %i.jy = getelementptr inbounds nuw i8, ptr %18, i64 104
  %i.jz = load i8, ptr %i.jy, align 8, !range !29, !noundef !32
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit79
  %i.kb = load i8, ptr %18, align 8
  store i8 %i.kb, ptr %0, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 840
  store i8 0, ptr %i.kc, align 8
  br label %bb.cp

bb.bb:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit79
  %i.kd = call noundef nonnull align 8 dereferenceable(98) ptr @_ZN3ada21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(98) %17, ptr noundef nonnull align 8 dereferenceable(98) %18) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.ke = load i8, ptr %i.dm, align 8, !range !29, !noundef !32
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit82, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZSt27__throw_bad_optional_accessv() #31
  unreachable

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit82: ; preds = %bb.bb
  %i.kg = load ptr, ptr %i.dl, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ki = load i64, ptr %i.kh, align 8
  call void @_ZN3ada21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEE7compileITkNS_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6errorsEEESt17basic_string_viewIcSB_EEEENS7_IS4_SE_EESH_RT_RNS_37url_pattern_compile_component_optionsE(ptr dead_on_unwind nonnull writable sret(%"class.tl::expected.751") align 8 %19, i64 %i.ki, ptr %i.kg, ptr noundef nonnull @_ZN3ada19url_pattern_helpers21canonicalize_usernameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE, ptr noundef nonnull align 1 dereferenceable(5) @_ZN3ada37url_pattern_compile_component_options7DEFAULTE)
  %i.kj = getelementptr inbounds nuw i8, ptr %19, i64 104
  %i.kk = load i8, ptr %i.kj, align 8, !range !29, !noundef !32
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit82
  %i.km = load i8, ptr %19, align 8
  store i8 %i.km, ptr %0, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 840
  store i8 0, ptr %i.kn, align 8
  br label %bb.co

bb.be:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit82
  %i.ko = call noundef nonnull align 8 dereferenceable(98) ptr @_ZN3ada21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(98) %i.hx, ptr noundef nonnull align 8 dereferenceable(98) %19) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.kp = load i8, ptr %i.dr, align 8, !range !29, !noundef !32
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit85, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZSt27__throw_bad_optional_accessv() #31
  unreachable

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit85: ; preds = %bb.be
  %i.kr = load ptr, ptr %i.dq, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.kt = load i64, ptr %i.ks, align 8
  call void @_ZN3ada21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEE7compileITkNS_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6errorsEEESt17basic_string_viewIcSB_EEEENS7_IS4_SE_EESH_RT_RNS_37url_pattern_compile_component_optionsE(ptr dead_on_unwind nonnull writable sret(%"class.tl::expected.751") align 8 %20, i64 %i.kt, ptr %i.kr, ptr noundef nonnull @_ZN3ada19url_pattern_helpers21canonicalize_passwordB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE, ptr noundef nonnull align 1 dereferenceable(5) @_ZN3ada37url_pattern_compile_component_options7DEFAULTE)
  %i.ku = getelementptr inbounds nuw i8, ptr %20, i64 104
  %i.kv = load i8, ptr %i.ku, align 8, !range !29, !noundef !32
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit85
  %i.kx = load i8, ptr %20, align 8
  store i8 %i.kx, ptr %0, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 840
  store i8 0, ptr %i.ky, align 8
  br label %bb.cn

bb.bh:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit85
end_hunk_1
