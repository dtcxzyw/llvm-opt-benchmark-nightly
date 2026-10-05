Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TextStub?download=true
inline.NumInlined: 5040
inline.NumDeleted: 2212
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS5_EEEEvNS_9StringRefERT_:bb.a

_ZN4llvm4yaml2IO11mapOptionalISt6vectorI13FlowStringRefSaIS4_EEEEvNS_9StringRefERT_.exit24.i.i.i.i.i.i: ; preds = %_ZN4llvm4yaml2IO10processKeyISt6vectorI13FlowStringRefSaIS4_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i23.i.i.i.i.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ft, i64 232 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.kp = load ptr, ptr %0, align 8, !tbaa !64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 56
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = call noundef zeroext i1 %i.kr(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !494
  br i1 %i.ks, label %bb.am, label %.critedge.i.i25.i.i.i.i.i.i

bb.am:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalISt6vectorI13FlowStringRefSaIS4_EEEEvNS_9StringRefERT_.exit24.i.i.i.i.i.i
  %i.kt = load ptr, ptr %i.ko, align 8, !tbaa !218
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ft, i64 240
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !218
  %i.kw = icmp eq ptr %i.kt, %i.kv
  br i1 %i.kw, label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorI13FlowStringRefSaIS4_EEEEvNS_9StringRefERT_.exit27.i.i.i.i.i.i, label %.critedge.i.i25.i.i.i.i.i.i

.critedge.i.i25.i.i.i.i.i.i:                      ; preds = %bb.am, %_ZN4llvm4yaml2IO11mapOptionalISt6vectorI13FlowStringRefSaIS4_EEEEvNS_9StringRefERT_.exit24.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.kx = load ptr, ptr %0, align 8, !tbaa !64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 120
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = call noundef zeroext i1 %i.kz(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.90, i64 12, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #19, !inline_history !495
  br i1 %i.la, label %bb.an, label %_ZN4llvm4yaml2IO10processKeyISt6vectorI13FlowStringRefSaIS4_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i26.i.i.i.i.i.i

bb.an:                                            ; preds = %.critedge.i.i25.i.i.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeISt6vectorI13FlowStringRefSaIS3_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS8_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ko, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.lb = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.lc = load ptr, ptr %0, align 8, !tbaa !64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 128
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.lb) #19, !inline_history !495
  br label %_ZN4llvm4yaml2IO10processKeyISt6vectorI13FlowStringRefSaIS4_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i26.i.i.i.i.i.i

_ZN4llvm4yaml2IO10processKeyISt6vectorI13FlowStringRefSaIS4_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i26.i.i.i.i.i.i: ; preds = %bb.an, %.critedge.i.i25.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorI13FlowStringRefSaIS4_EEEEvNS_9StringRefERT_.exit27.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapOptionalISt6vectorI13FlowStringRefSaIS4_EEEEvNS_9StringRefERT_.exit27.i.i.i.i.i.i: ; preds = %_ZN4llvm4yaml2IO10processKeyISt6vectorI13FlowStringRefSaIS4_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i26.i.i.i.i.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ft, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.lg = load ptr, ptr %0, align 8, !tbaa !64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 56
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = call noundef zeroext i1 %i.li(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !494
  br i1 %i.lj, label %bb.ao, label %.critedge.i.i28.i.i.i.i.i.i

bb.ao:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalISt6vectorI13FlowStringRefSaIS4_EEEEvNS_9StringRefERT_.exit27.i.i.i.i.i.i
  %i.lk = load ptr, ptr %i.lf, align 8, !tbaa !218
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ft, i64 264
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !218
  %i.ln = icmp eq ptr %i.lk, %i.lm
  br i1 %i.ln, label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_113SymbolSectionENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i, label %.critedge.i.i28.i.i.i.i.i.i

.critedge.i.i28.i.i.i.i.i.i:                      ; preds = %bb.ao, %_ZN4llvm4yaml2IO11mapOptionalISt6vectorI13FlowStringRefSaIS4_EEEEvNS_9StringRefERT_.exit27.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.lo = load ptr, ptr %0, align 8, !tbaa !64
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 120
  %i.lq = load ptr, ptr %i.lp, align 8
  %i.lr = call noundef zeroext i1 %i.lq(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.91, i64 20, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19, !inline_history !495
  br i1 %i.lr, label %bb.ap, label %_ZN4llvm4yaml2IO10processKeyISt6vectorI13FlowStringRefSaIS4_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i29.i.i.i.i.i.i

bb.ap:                                            ; preds = %.critedge.i.i28.i.i.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeISt6vectorI13FlowStringRefSaIS3_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS8_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.lf, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.ls = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.lt = load ptr, ptr %0, align 8, !tbaa !64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 128
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ls) #19, !inline_history !495
  br label %_ZN4llvm4yaml2IO10processKeyISt6vectorI13FlowStringRefSaIS4_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i29.i.i.i.i.i.i

_ZN4llvm4yaml2IO10processKeyISt6vectorI13FlowStringRefSaIS4_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i29.i.i.i.i.i.i: ; preds = %bb.ap, %.critedge.i.i28.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_113SymbolSectionENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i

_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_113SymbolSectionENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i: ; preds = %_ZN4llvm4yaml2IO10processKeyISt6vectorI13FlowStringRefSaIS4_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i29.i.i.i.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.lw = load ptr, ptr %0, align 8, !tbaa !64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 112
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !489
  %i.lz = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.ma = load ptr, ptr %0, align 8, !tbaa !64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 40
  %i.mc = load ptr, ptr %i.mb, align 8
  call void %i.mc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.lz) #19, !inline_history !485
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_113SymbolSectionENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i, label %bb.f, !llvm.loop !496

_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i: ; preds = %bb.aq, %bb.e
  %i.md = load ptr, ptr %0, align 8, !tbaa !64
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 48
  %i.mf = load ptr, ptr %i.me, align 8
  call void %i.mf(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !485
  %i.mg = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.mh = load ptr, ptr %0, align 8, !tbaa !64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 128
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.mg) #19, !inline_history !484
  br label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i

_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i: ; preds = %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #19
  br label %_ZN4llvm4yaml2IO22mapOptionalWithContextISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_RT0_.exit

_ZN4llvm4yaml2IO22mapOptionalWithContextISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_RT0_.exit: ; preds = %bb.b, %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4yaml13MappingTraitsIPKNS_5MachO13InterfaceFileEE16NormalizedTBD_V4C2ERNS0_2IOERS5_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::iterator_range.227", align 8 ; 11 uses
  %4 = alloca %"class.std::function", align 8     ; 8 uses
  %5 = alloca %"class.llvm::iterator_range.227", align 8 ; 11 uses
  %6 = alloca %"class.std::function", align 8     ; 8 uses
  %7 = alloca %"class.llvm::iterator_range.227", align 8 ; 11 uses
  %8 = alloca %"class.std::function", align 8     ; 8 uses
  %9 = alloca %"class.std::map", align 8          ; 9 uses
  %10 = alloca %"struct.(anonymous namespace)::UmbrellaSection", align 16 ; 13 uses
  %11 = alloca %"class.llvm::iterator_range.138", align 8 ; 6 uses
  %12 = alloca %"class.llvm::iterator_range.138", align 8 ; 6 uses
  %13 = alloca %"class.llvm::iterator_range.138", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.b, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 5, ptr %i.e, align 4, !tbaa !143
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.f, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.j, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, i8 0, i64 96, i1 false)
  %i.q = tail call noundef ptr @_ZNK4llvm4yaml2IO10getContextEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !59
  %i.t = lshr i32 %i.s, 4
  store i32 %i.t, ptr %0, align 8, !tbaa !544
  %i.u = load ptr, ptr %2, align 8, !tbaa !61     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !95   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !96   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx = mul nuw nsw i64 %i.z, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %.not112 = icmp eq i32 %i.y, 0
  br i1 %.not112, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_5MachO6TargetELb1EE9push_backERKS2_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ab = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.u, %bb.a ] ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 256
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !51
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  %.sroa.0.0.copyload.i = load i32, ptr %i.ag, align 8, !tbaa !76
  store i32 %.sroa.0.0.copyload.i, ptr %i.g, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 292
  %.sroa.0.0.copyload.i43 = load i32, ptr %i.ah, align 4, !tbaa !76
  store i32 %.sroa.0.0.copyload.i43, ptr %i.h, align 4, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 296
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !251
  store i8 %i.aj, ptr %i.i, align 8, !tbaa !160
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 299
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !252, !range !156, !noundef !157
  %i.am = trunc nuw i8 %i.al to i1
  %spec.store.select = select i1 %i.am, i32 0, i32 2 ; 3 uses
  store i32 %spec.store.select, ptr %i.l, align 8, !tbaa !154
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 297
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !253, !range !156, !noundef !157
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %bb.e

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_5MachO6TargetELb1EE9push_backERKS2_.exit
  %.0113 = phi ptr [ %i.bc, %_ZN4llvm23SmallVectorTemplateBaseINS_5MachO6TargetELb1EE9push_backERKS2_.exit ], [ %i.w, %bb.a ] ; 5 uses
  %i.aq = load i8, ptr %.0113, align 4, !tbaa !148
  %.not.i = icmp ne i8 %i.aq, 19
  %i.ar = getelementptr inbounds nuw i8, ptr %.0113, i64 4
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = icmp ne i32 %i.as, 0
  %i.au = select i1 %.not.i, i1 %i.at, i1 false
  br i1 %i.au, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseINS_5MachO6TargetELb1EE9push_backERKS2_.exit

bb.b:                                             ; preds = %.lr.ph
  %i.av = load i32, ptr %i.d, align 8, !tbaa !96  ; 2 uses
  %i.aw = load i32, ptr %i.e, align 4, !tbaa !143
  %.not.i44 = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i44, label %bb.d, label %bb.c, !prof !254

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_5MachO6TargetELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(24) %.0113)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_5MachO6TargetELb1EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.ax = zext i32 %i.av to i64
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.az, ptr noundef nonnull align 4 dereferenceable(24) %.0113, i64 24, i1 false)
  %i.ba = load i32, ptr %i.d, align 8, !tbaa !96
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.d, align 8, !tbaa !96
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_5MachO6TargetELb1EE9push_backERKS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_5MachO6TargetELb1EE9push_backERKS2_.exit: ; preds = %bb.d, %bb.c, %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.0113, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.bc, %i.aa
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.e:                                             ; preds = %._crit_edge
  %i.bd = or disjoint i32 %spec.store.select, 1   ; 2 uses
  store i32 %i.bd, ptr %i.l, align 8, !tbaa !154
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.be = phi i32 [ %i.bd, %bb.e ], [ %spec.store.select, %._crit_edge ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 298
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !255, !range !156, !noundef !157
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = or i32 %i.be, 16
  store i32 %i.bi, ptr %i.l, align 8, !tbaa !154
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !177
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !178
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !179
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !180
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.bn, align 8, !tbaa !256
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 312
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !209 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 320
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !209 ; 2 uses
  %.not104114 = icmp eq ptr %i.bp, %i.br
  br i1 %.not104114, label %._crit_edge123, label %.lr.ph117

._crit_edge118:                                   ; preds = %_ZN4llvm15SmallVectorImplINS_5MachO6TargetEE12emplace_backIJRKS2_EEERS2_DpOT_.exit
  %.pre130 = load ptr, ptr %i.bl, align 8, !tbaa !179 ; 2 uses
  %.not105119 = icmp eq ptr %.pre130, %i.bj
  br i1 %.not105119, label %._crit_edge123, label %.lr.ph122

.lr.ph122:                                        ; preds = %._crit_edge118
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 14 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  br label %bb.x

.lr.ph117:                                        ; preds = %bb.h, %_ZN4llvm15SmallVectorImplINS_5MachO6TargetEE12emplace_backIJRKS2_EEERS2_DpOT_.exit
  %.sroa.0100.0115 = phi ptr [ %i.cp, %_ZN4llvm15SmallVectorImplINS_5MachO6TargetEE12emplace_backIJRKS2_EEERS2_DpOT_.exit ], [ %i.bp, %bb.h ] ; 6 uses
  %i.by = load i8, ptr %.sroa.0100.0115, align 4, !tbaa !148
  %.not.i45 = icmp ne i8 %i.by, 19
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0100.0115, i64 4
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = select i1 %.not.i45, i1 %i.cb, i1 false
  br i1 %i.cc, label %bb.i, label %_ZN4llvm15SmallVectorImplINS_5MachO6TargetEE12emplace_backIJRKS2_EEERS2_DpOT_.exit

bb.i:                                             ; preds = %.lr.ph117
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0100.0115, i64 24
  %i.ce = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm11SmallVectorINS6_5MachO6TargetELj5EEESt4lessIS5_ESaISt4pairIKS5_SA_EEEixERSE_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.cd) ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !96 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !143
  %.not.i46 = icmp ult i32 %i.cg, %i.ci
  br i1 %.not.i46, label %bb.k, label %bb.j, !prof !254

bb.j:                                             ; preds = %bb.i
  %i.cj = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_5MachO6TargetELb1EE18growAndEmplaceBackIJRKS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0100.0115) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_5MachO6TargetEE12emplace_backIJRKS2_EEERS2_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ck = zext i32 %i.cg to i64
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !95
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cm, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0100.0115, i64 24, i1 false), !tbaa.struct !151
  %i.cn = load i32, ptr %i.cf, align 8, !tbaa !96
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.cf, align 8, !tbaa !96
  br label %_ZN4llvm15SmallVectorImplINS_5MachO6TargetEE12emplace_backIJRKS2_EEERS2_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_5MachO6TargetEE12emplace_backIJRKS2_EEERS2_DpOT_.exit: ; preds = %bb.k, %bb.j, %.lr.ph117
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0100.0115, i64 56 ; 2 uses
  %.not104 = icmp eq ptr %i.cp, %i.br
  br i1 %.not104, label %._crit_edge118, label %.lr.ph117

._crit_edge123:                                   ; preds = %_ZN12_GLOBAL__N_115UmbrellaSectionD2Ev.exit, %bb.h, %._crit_edge118
  %i.cq = load ptr, ptr %i.bk, align 8, !tbaa !178
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm11SmallVectorINS8_5MachO6TargetELj5EEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.cr = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 336
  %.val39 = load ptr, ptr %i.cs, align 8, !tbaa !257
  %i.ct = getelementptr i8, ptr %i.cr, i64 344
  %.val40 = load ptr, ptr %i.ct, align 8, !tbaa !257
  call fastcc void @_ZN4llvm4yaml13MappingTraitsIPKNS_5MachO13InterfaceFileEE16NormalizedTBD_V422assignTargetsToLibraryERKSt6vectorINS2_16InterfaceFileRefESaIS9_EERS8_IN12_GLOBAL__N_115MetadataSectionESaISF_EE(ptr %.val39, ptr %.val40, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  %i.cu = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 360
  %.val = load ptr, ptr %i.cv, align 8, !tbaa !257
  %i.cw = getelementptr i8, ptr %i.cu, i64 368
  %.val38 = load ptr, ptr %i.cw, align 8, !tbaa !257
  call fastcc void @_ZN4llvm4yaml13MappingTraitsIPKNS_5MachO13InterfaceFileEE16NormalizedTBD_V422assignTargetsToLibraryERKSt6vectorINS2_16InterfaceFileRefESaIS9_EERS8_IN12_GLOBAL__N_115MetadataSectionESaISF_EE(ptr %.val, ptr %.val38, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
  %i.cx = load ptr, ptr %2, align 8, !tbaa !61
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 432
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !258, !noalias !545 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !546
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 80
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !262, !noalias !548 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !263, !noalias !548 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 100
  %i.df = load i32, ptr %i.de, align 4, !tbaa !264, !noalias !548 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !265, !noalias !548
  %i.di = icmp eq i32 %i.dh, 0
  %i.dj = zext i32 %i.df to i64                   ; 2 uses
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj ; 6 uses
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.df, 0
  %or.cond.i.i.i.i = select i1 %i.di, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZNSt8functionIFbPKN4llvm5MachO6SymbolEEEC2ERKS6_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge123
  %i.dl = add nuw nsw i64 %i.dj, 31
  %i.dm = lshr i64 %i.dl, 5                       ; 2 uses
  %i.dn = load i32, ptr %i.dd, align 4, !tbaa !76, !noalias !549 ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.l
  %i.dp = icmp eq i64 %i.dm, 1
  br i1 %i.dp, label %_ZNSt8functionIFbPKN4llvm5MachO6SymbolEEEC2ERKS6_.exit.i.i, label %.lr.ph184

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph184
  %i.dq = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %i.dr = icmp eq i64 %i.dq, %i.dm
  br i1 %i.dr, label %_ZNSt8functionIFbPKN4llvm5MachO6SymbolEEEC2ERKS6_.exit.i.i, label %.lr.ph184, !llvm.loop !11

.lr.ph184:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ds = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !76, !noalias !549 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i, !llvm.loop !11

._crit_edge.i.loopexit.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph184
  %i.dw = shl i64 %i.ds, 10
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i, %bb.l
  %.012.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.l ], [ %i.dw, %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dn, %bb.l ], [ %i.du, %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i ]
  %i.dx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr i8, ptr %i.db, i64 %.012.lcssa.i.i.i.i.i.i.i.i.i
  %i.ea = getelementptr [32 x i8], ptr %i.dz, i64 %i.dy
end_hunk_0
begin_hunk_1_@_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_113ExportSectionESaIS5_EEEEvNS_9StringRefERT_:bb.a

_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_113ExportSectionESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i: ; preds = %bb.ah, %bb.e
  %i.iw = load ptr, ptr %0, align 8, !tbaa !64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !769
  %i.iz = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.ja = load ptr, ptr %0, align 8, !tbaa !64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 128
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.iz) #19, !inline_history !768
  br label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_113ExportSectionESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i

_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_113ExportSectionESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i: ; preds = %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_113ExportSectionESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #19
  br label %_ZN4llvm4yaml2IO22mapOptionalWithContextISt6vectorIN12_GLOBAL__N_113ExportSectionESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_RT0_.exit

_ZN4llvm4yaml2IO22mapOptionalWithContextISt6vectorIN12_GLOBAL__N_113ExportSectionESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_RT0_.exit: ; preds = %bb.b, %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_113ExportSectionESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4yaml13MappingTraitsIPKNS_5MachO13InterfaceFileEE13NormalizedTBDC2ERNS0_2IOERS5_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.llvm::iterator_range.227", align 8 ; 11 uses
  %4 = alloca %"class.std::function", align 8     ; 8 uses
  %5 = alloca %"class.std::vector.281", align 16  ; 7 uses
  %6 = alloca %"class.llvm::MachO::ArchitectureSet", align 4 ; 4 uses
  %7 = alloca %"class.llvm::SmallSet", align 8    ; 12 uses
  %8 = alloca %"class.std::set.307", align 8      ; 9 uses
  %9 = alloca %"class.std::map.317", align 8      ; 11 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.llvm::MachO::ArchitectureSet", align 4 ; 7 uses
  %11 = alloca %"struct.(anonymous namespace)::ExportSection", align 16 ; 35 uses
  %12 = alloca %"class.std::vector.281", align 16 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.llvm::iterator_range.138", align 8 ; 13 uses
  %20 = alloca %"class.llvm::filter_iterator_impl", align 8 ; 10 uses
  %21 = alloca %"class.llvm::filter_iterator_impl", align 8 ; 9 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %22 = alloca %"class.llvm::MachO::ArchitectureSet", align 4 ; 5 uses
  %23 = alloca %"class.std::vector.281", align 8  ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.i, align 8, !tbaa !95
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.k, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 4, ptr %i.l, align 4, !tbaa !143
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !95
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  store ptr %i.q, ptr %i.p, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.r, align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 3, ptr %i.s, align 4, !tbaa !143
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 7 uses
  store i32 0, ptr %i.t, align 8, !tbaa !177
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  store ptr null, ptr %i.u, align 8, !tbaa !178
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  store ptr %i.t, ptr %i.v, align 8, !tbaa !179
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.t, ptr %i.w, align 8, !tbaa !180
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !207
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !208
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.x, i8 0, i64 33, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ah = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !95
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !96
  %i.am = zext i32 %i.al to i64
  %i.an = tail call i32 @_ZN4llvm5MachO20mapToArchitectureSetENS_8ArrayRefINS0_6TargetEEE(ptr %i.aj, i64 %i.am) #19
  store i32 %i.an, ptr %6, align 4
  call void @_ZNK4llvm5MachO15ArchitectureSetcvSt6vectorINS0_12ArchitectureESaIS3_EEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.281") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #19
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !320 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !214
  %i.ar = load <2 x ptr>, ptr %5, align 16, !tbaa !62
  store <2 x ptr> %i.ar, ptr %i.n, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !214
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !214
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm5MachO12ArchitectureESaIS2_EED2Ev.exit, label %_ZNSt6vectorIN4llvm5MachO12ArchitectureESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN4llvm5MachO12ArchitectureESaIS2_EEaSEOS4_.exit: ; preds = %bb.a
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.aw) #21
  %.pr = load ptr, ptr %5, align 16, !tbaa !320   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvm5MachO12ArchitectureESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4llvm5MachO12ArchitectureESaIS2_EEaSEOS4_.exit
  %i.ax = load ptr, ptr %i.as, align 16, !tbaa !214
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %.pr to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ba) #21
  br label %_ZNSt6vectorIN4llvm5MachO12ArchitectureESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm5MachO12ArchitectureESaIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNSt6vectorIN4llvm5MachO12ArchitectureESaIS2_EEaSEOS4_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bb = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !95, !noalias !892
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !96, !noalias !892
  %i.bg = zext i32 %i.bf to i64
  call void @_ZN4llvm5MachO16mapToPlatformSetENS_8ArrayRefINS0_6TargetEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallSet") align 8 %7, ptr %i.bd, i64 %i.bg) #19
  %i.bh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_5MachO12PlatformTypeEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %7) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bj = load ptr, ptr %i.u, align 8, !tbaa !178
  call void @_ZNSt8_Rb_treeIN4llvm5MachO12PlatformTypeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef %i.bj)
  store ptr null, ptr %i.u, align 8, !tbaa !178
  store ptr %i.t, ptr %i.v, align 8, !tbaa !179
  store ptr %i.t, ptr %i.w, align 8, !tbaa !180
  store i64 0, ptr %i.x, align 8, !tbaa !256
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !271 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm8SmallSetINS_5MachO12PlatformTypeELj3ESt4lessIS2_EEaSEOS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4llvm5MachO12ArchitectureESaIS2_EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !177
  store i32 %i.bn, ptr %i.t, align 8, !tbaa !177
  store ptr %i.bl, ptr %i.u, align 8, !tbaa !178
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bq = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !271
  store <2 x ptr> %i.bq, ptr %i.v, align 8, !tbaa !271
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.t, ptr %i.br, align 8, !tbaa !893
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !256
  store i64 %i.bt, ptr %i.x, align 8, !tbaa !256
  store ptr null, ptr %i.bk, align 8, !tbaa !178
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !179
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !180
  store i64 0, ptr %i.bs, align 8, !tbaa !256
  br label %_ZN4llvm8SmallSetINS_5MachO12PlatformTypeELj3ESt4lessIS2_EEaSEOS5_.exit

_ZN4llvm8SmallSetINS_5MachO12PlatformTypeELj3ESt4lessIS2_EEaSEOS5_.exit: ; preds = %_ZNSt6vectorIN4llvm5MachO12ArchitectureESaIS2_EED2Ev.exit, %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @_ZNSt8_Rb_treeIN4llvm5MachO12PlatformTypeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noundef null)
  %i.bv = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZN4llvm8SmallSetINS_5MachO12PlatformTypeELj3ESt4lessIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8SmallSetINS_5MachO12PlatformTypeELj3ESt4lessIS2_EEaSEOS5_.exit
  call void @free(ptr noundef %i.bv) #19
  br label %_ZN4llvm8SmallSetINS_5MachO12PlatformTypeELj3ESt4lessIS2_EED2Ev.exit

_ZN4llvm8SmallSetINS_5MachO12PlatformTypeELj3ESt4lessIS2_EED2Ev.exit: ; preds = %_ZN4llvm8SmallSetINS_5MachO12PlatformTypeELj3ESt4lessIS2_EEaSEOS5_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.by = load ptr, ptr %2, align 8, !tbaa !61    ; 13 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 256
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !49
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 264
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !51
  store ptr %i.ca, ptr %i.y, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.cc, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 288
  %.sroa.0.0.copyload.i = load i32, ptr %i.cd, align 8, !tbaa !76
  store i32 %.sroa.0.0.copyload.i, ptr %i.z, align 8, !tbaa !76
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 292
  %.sroa.0.0.copyload.i90 = load i32, ptr %i.ce, align 4, !tbaa !76
  store i32 %.sroa.0.0.copyload.i90, ptr %i.aa, align 4, !tbaa !76
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 296
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !251
  store i8 %i.cg, ptr %i.ab, align 8, !tbaa !160
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 304
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !313
  store i32 %i.ci, ptr %i.ac, align 4, !tbaa !207
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 299
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !252, !range !156, !noundef !157
  %i.cl = trunc nuw i8 %i.ck to i1
  %spec.store.select = select i1 %i.cl, i32 0, i32 2 ; 2 uses
  store i32 %spec.store.select, ptr %i.ad, align 8, !tbaa !154
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 297
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !253, !range !156, !noundef !157
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8SmallSetINS_5MachO12PlatformTypeELj3ESt4lessIS2_EED2Ev.exit
  %i.cp = or disjoint i32 %spec.store.select, 1
  store i32 %i.cp, ptr %i.ad, align 8, !tbaa !154
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvm8SmallSetINS_5MachO12PlatformTypeELj3ESt4lessIS2_EED2Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 312
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !209 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 320
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !209
  %i.cu = icmp eq ptr %i.cr, %i.ct
  br i1 %i.cu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !49
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !51
  store ptr %i.cw, ptr %i.ae, align 8, !tbaa !38
  %.sroa.41243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.cy, ptr %.sroa.41243.0..sroa_idx, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 21 uses
  store i32 0, ptr %i.cz, align 8, !tbaa !177
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr null, ptr %i.da, align 8, !tbaa !178
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 8 uses
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !179
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !180
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 10 uses
  store i64 0, ptr %i.dd, align 8, !tbaa !256
  %i.de = getelementptr inbounds nuw i8, ptr %i.by, i64 336
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !257 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.by, i64 344
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !257 ; 2 uses
  %.not12451415 = icmp eq ptr %i.df, %i.dh
  br i1 %.not12451415, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt3setIN4llvm5MachO15ArchitectureSetESt4lessIS2_ESaIS2_EE6insertEOS2_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %30 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.by, %bb.h ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %30, i64 360
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !257 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %30, i64 368
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !257 ; 2 uses
  %.not12461417 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not12461417, label %._crit_edge1421, label %.lr.ph1420

.lr.ph:                                           ; preds = %bb.h, %_ZNSt3setIN4llvm5MachO15ArchitectureSetESt4lessIS2_ESaIS2_EE6insertEOS2_.exit
  %.sroa.01238.01416 = phi ptr [ %i.ej, %_ZNSt3setIN4llvm5MachO15ArchitectureSetESt4lessIS2_ESaIS2_EE6insertEOS2_.exit ], [ %i.df, %bb.h ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.01238.01416, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !95
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.01238.01416, i64 40
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !96
  %i.dq = zext i32 %i.dp to i64
  %i.dr = call i32 @_ZN4llvm5MachO20mapToArchitectureSetENS_8ArrayRefINS0_6TargetEEE(ptr %i.dn, i64 %i.dq) #19 ; 4 uses
  %.02022.i.i.i = load ptr, ptr %i.da, align 8, !tbaa !271 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %.lr.ph ] ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !322 ; 2 uses
  %i.du = icmp ult i32 %i.dr, %i.dt               ; 2 uses
  %.in.v.i.i.i = select i1 %i.du, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !271 ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i91, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !777

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.du, label %._crit_edge.thread.i.i.i, label %bb.j

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.lr.ph
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.cz, %.lr.ph ] ; 4 uses
  %i.dv = load ptr, ptr %i.db, align 8, !tbaa !179
  %i.dw = icmp eq ptr %.019.lcssa29.i.i.i, %i.dv
  br i1 %i.dw, label %select.unfold.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.dx = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #24
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !322
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %i.dy = phi i32 [ %.pre.i.i, %bb.i ], [ %i.dt, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.i ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.dz = icmp ult i32 %i.dy, %i.dr
  br i1 %i.dz, label %select.unfold.i.i, label %_ZNSt3setIN4llvm5MachO15ArchitectureSetESt4lessIS2_ESaIS2_EE6insertEOS2_.exit

select.unfold.i.i:                                ; preds = %bb.j, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.j ] ; 3 uses
  %i.ea = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.cz
  br i1 %i.ea, label %_ZNSt8_Rb_treeIN4llvm5MachO15ArchitectureSetES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %select.unfold.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !322
  %i.ed = icmp ult i32 %i.dr, %i.ec
  br label %_ZNSt8_Rb_treeIN4llvm5MachO15ArchitectureSetES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN4llvm5MachO15ArchitectureSetES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i: ; preds = %bb.k, %select.unfold.i.i
  %i.ee = phi i1 [ %i.ed, %bb.k ], [ true, %select.unfold.i.i ]
  %i.ef = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  store i32 %i.dr, ptr %i.eg, align 4, !tbaa !76
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ee, ptr noundef nonnull %i.ef, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cz) #19
  %i.eh = load i64, ptr %i.dd, align 8, !tbaa !256
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.dd, align 8, !tbaa !256
  br label %_ZNSt3setIN4llvm5MachO15ArchitectureSetESt4lessIS2_ESaIS2_EE6insertEOS2_.exit

_ZNSt3setIN4llvm5MachO15ArchitectureSetESt4lessIS2_ESaIS2_EE6insertEOS2_.exit: ; preds = %bb.j, %_ZNSt8_Rb_treeIN4llvm5MachO15ArchitectureSetES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.01238.01416, i64 168 ; 2 uses
  %.not1245 = icmp eq ptr %i.ej, %i.dh
  br i1 %.not1245, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge1421.loopexit:                         ; preds = %_ZNSt3setIN4llvm5MachO15ArchitectureSetESt4lessIS2_ESaIS2_EE6insertEOS2_.exit115
  %.pre.a = load ptr, ptr %2, align 8, !tbaa !61
  br label %._crit_edge1421

._crit_edge1421:                                  ; preds = %._crit_edge1421.loopexit, %._crit_edge
  %i.ek = phi ptr [ %.pre.a, %._crit_edge1421.loopexit ], [ %30, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 9 uses
  store i32 0, ptr %i.el, align 8, !tbaa !177
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr null, ptr %i.em, align 8, !tbaa !178
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.el, ptr %i.en, align 8, !tbaa !179
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store ptr %i.el, ptr %i.eo, align 8, !tbaa !180
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store i64 0, ptr %i.ep, align 8, !tbaa !256
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 432
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !258, !noalias !894 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 80
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !262, !noalias !895
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 88
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !263, !noalias !895 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 100
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !264, !noalias !895 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 96
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !265, !noalias !895
  %i.fa = icmp eq i32 %i.ez, 0
  %i.fb = zext i32 %i.ex to i64                   ; 4 uses
  %.idx1936 = shl nuw nsw i64 %i.fb, 5            ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.ex, 0
  %or.cond.i.i.i = select i1 %i.fa, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %._crit_edge1425, label %bb.l

bb.l:                                             ; preds = %._crit_edge1421
  %i.fc = add nuw nsw i64 %i.fb, 31
  %i.fd = lshr i64 %i.fc, 5                       ; 2 uses
  %i.fe = load i32, ptr %i.ev, align 4, !tbaa !76, !noalias !896 ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZNK4llvm5MachO13InterfaceFile7symbolsEv.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.l
  %i.fg = icmp eq i64 %i.fd, 1
  br i1 %i.fg, label %._crit_edge1425, label %.lr.ph1976

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph1976
  %i.fh = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %i.fi = icmp eq i64 %i.fh, %i.fd
  br i1 %i.fi, label %._crit_edge1425, label %.lr.ph1976, !llvm.loop !11

.lr.ph1976:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.fj = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !76, !noalias !896 ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i, !llvm.loop !11

._crit_edge.i.loopexit.i.i.i.i.i.i.i:             ; preds = %.lr.ph1976
  %i.fn = shl i64 %i.fj, 10
  br label %_ZNK4llvm5MachO13InterfaceFile7symbolsEv.exit

_ZNK4llvm5MachO13InterfaceFile7symbolsEv.exit:    ; preds = %bb.l, %._crit_edge.i.loopexit.i.i.i.i.i.i.i
  %.012.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.l ], [ %i.fn, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %i.fe, %bb.l ], [ %i.fl, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %i.fo = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.fp = shl nuw nsw i32 %i.fo, 5
  %.idx = zext nneg i32 %i.fp to i64
  %i.fq = or disjoint i64 %.012.lcssa.i.i.i.i.i.i.i.i, %.idx ; 2 uses
  %.not12471422 = icmp eq i64 %i.fq, %.idx1936
  br i1 %.not12471422, label %._crit_edge1425, label %.lr.ph1424

.lr.ph1424:                                       ; preds = %_ZNK4llvm5MachO13InterfaceFile7symbolsEv.exit
  %i.fr = add nuw nsw i64 %i.fb, 31
  %i.fs = lshr i64 %i.fr, 5                       ; 2 uses
  br label %bb.p

.lr.ph1420:                                       ; preds = %._crit_edge, %_ZNSt3setIN4llvm5MachO15ArchitectureSetESt4lessIS2_ESaIS2_EE6insertEOS2_.exit115
  %.sroa.01230.01418 = phi ptr [ %i.gq, %_ZNSt3setIN4llvm5MachO15ArchitectureSetESt4lessIS2_ESaIS2_EE6insertEOS2_.exit115 ], [ %i.dj, %._crit_edge ] ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.01230.01418, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !95
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.01230.01418, i64 40
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !96
  %i.fx = zext i32 %i.fw to i64
  %i.fy = call i32 @_ZN4llvm5MachO20mapToArchitectureSetENS_8ArrayRefINS0_6TargetEEE(ptr %i.fu, i64 %i.fx) #19 ; 4 uses
  %.02022.i.i.i92 = load ptr, ptr %i.da, align 8, !tbaa !271 ; 2 uses
  %.not23.i.i.i93 = icmp eq ptr %.02022.i.i.i92, null
  br i1 %.not23.i.i.i93, label %._crit_edge.thread.i.i.i110, label %.lr.ph.i.i.i94

.lr.ph.i.i.i94:                                   ; preds = %.lr.ph1420, %.lr.ph.i.i.i94
  %.02024.i.i.i95 = phi ptr [ %.020.i.i.i98, %.lr.ph.i.i.i94 ], [ %.02022.i.i.i92, %.lr.ph1420 ] ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.02024.i.i.i95, i64 32
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !322 ; 2 uses
  %i.gb = icmp ult i32 %i.fy, %i.ga               ; 2 uses
  %.in.v.i.i.i96 = select i1 %i.gb, i64 16, i64 24
  %.in.i.i.i97 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i95, i64 %.in.v.i.i.i96
  %.020.i.i.i98 = load ptr, ptr %.in.i.i.i97, align 8, !tbaa !271 ; 2 uses
  %.not.i.i.i99 = icmp eq ptr %.020.i.i.i98, null
  br i1 %.not.i.i.i99, label %._crit_edge.i.i.i100, label %.lr.ph.i.i.i94, !llvm.loop !777

._crit_edge.i.i.i100:                             ; preds = %.lr.ph.i.i.i94
  br i1 %i.gb, label %._crit_edge.thread.i.i.i110, label %bb.n

._crit_edge.thread.i.i.i110:                      ; preds = %._crit_edge.i.i.i100, %.lr.ph1420
  %.019.lcssa29.i.i.i111 = phi ptr [ %.02024.i.i.i95, %._crit_edge.i.i.i100 ], [ %i.cz, %.lr.ph1420 ] ; 4 uses
  %i.gc = load ptr, ptr %i.db, align 8, !tbaa !179
  %i.gd = icmp eq ptr %.019.lcssa29.i.i.i111, %i.gc
  br i1 %i.gd, label %select.unfold.i.i107, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i.i.i110
  %i.ge = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i111) #24
  %.phi.trans.insert.i.i112 = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %.pre.i.i113 = load i32, ptr %.phi.trans.insert.i.i112, align 4, !tbaa !322
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i100
  %i.gf = phi i32 [ %.pre.i.i113, %bb.m ], [ %i.ga, %._crit_edge.i.i.i100 ]
  %.019.lcssa28.i.i.i101 = phi ptr [ %.019.lcssa29.i.i.i111, %bb.m ], [ %.02024.i.i.i95, %._crit_edge.i.i.i100 ]
  %i.gg = icmp ult i32 %i.gf, %i.fy
  br i1 %i.gg, label %select.unfold.i.i107, label %_ZNSt3setIN4llvm5MachO15ArchitectureSetESt4lessIS2_ESaIS2_EE6insertEOS2_.exit115

select.unfold.i.i107:                             ; preds = %bb.n, %._crit_edge.thread.i.i.i110
  %.sroa.4.0.i.ph.i.i108 = phi ptr [ %.019.lcssa29.i.i.i111, %._crit_edge.thread.i.i.i110 ], [ %.019.lcssa28.i.i.i101, %bb.n ] ; 3 uses
  %i.gh = icmp eq ptr %.sroa.4.0.i.ph.i.i108, %i.cz
  br i1 %i.gh, label %_ZNSt8_Rb_treeIN4llvm5MachO15ArchitectureSetES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i109, label %bb.o

bb.o:                                             ; preds = %select.unfold.i.i107
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i108, i64 32
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !322
  %i.gk = icmp ult i32 %i.fy, %i.gj
  br label %_ZNSt8_Rb_treeIN4llvm5MachO15ArchitectureSetES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i109

_ZNSt8_Rb_treeIN4llvm5MachO15ArchitectureSetES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i109: ; preds = %bb.o, %select.unfold.i.i107
  %i.gl = phi i1 [ %i.gk, %bb.o ], [ true, %select.unfold.i.i107 ]
  %i.gm = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  store i32 %i.fy, ptr %i.gn, align 4, !tbaa !76
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gl, ptr noundef nonnull %i.gm, ptr noundef nonnull %.sroa.4.0.i.ph.i.i108, ptr noundef nonnull align 8 dereferenceable(32) %i.cz) #19
  %i.go = load i64, ptr %i.dd, align 8, !tbaa !256
  %i.gp = add i64 %i.go, 1
  store i64 %i.gp, ptr %i.dd, align 8, !tbaa !256
  br label %_ZNSt3setIN4llvm5MachO15ArchitectureSetESt4lessIS2_ESaIS2_EE6insertEOS2_.exit115

_ZNSt3setIN4llvm5MachO15ArchitectureSetESt4lessIS2_ESaIS2_EE6insertEOS2_.exit115: ; preds = %bb.n, %_ZNSt8_Rb_treeIN4llvm5MachO15ArchitectureSetES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i109
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.01230.01418, i64 168 ; 2 uses
  %.not1246 = icmp eq ptr %i.gq, %i.dl
  br i1 %.not1246, label %._crit_edge1421.loopexit, label %.lr.ph1420

._crit_edge1425:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNSt3setIN4llvm5MachO15ArchitectureSetESt4lessIS2_ESaIS2_EE6insertERKS2_.exit, %_ZN4llvm21iterator_adaptor_baseINS_5MachO9SymbolSet21const_symbol_iteratorENS_16DenseMapIteratorINS_13SymbolsMapKeyEPNS1_6SymbolENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EELb1EEESt20forward_iterator_tagPKS6_lSG_SG_EppEv.exit, %.lr.ph.i.i.i140.preheader, %.lr.ph.i.i.i140, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %._crit_edge1421, %_ZNK4llvm5MachO13InterfaceFile7symbolsEv.exit
  %i.gr = load ptr, ptr %i.db, align 8, !tbaa !179 ; 2 uses
  %.not12481440 = icmp eq ptr %i.gr, %i.cz
  br i1 %.not12481440, label %._crit_edge1444, label %.lr.ph1443

.lr.ph1443:                                       ; preds = %._crit_edge1425
  %i.gs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 144 ; 9 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %11, i64 152 ; 7 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %11, i64 160 ; 8 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 9 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 7 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 8 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %11, i64 120 ; 7 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 9 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %11, i64 104 ; 7 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 8 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %11, i64 168 ; 7 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %11, i64 176 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %11, i64 184 ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %11, i64 192 ; 7 uses
  %i.id = getelementptr inbounds nuw i8, ptr %11, i64 200 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %11, i64 208 ; 5 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  br label %bb.y

bb.p:                                             ; preds = %.lr.ph1424, %_ZN4llvm21iterator_adaptor_baseINS_5MachO9SymbolSet21const_symbol_iteratorENS_16DenseMapIteratorINS_13SymbolsMapKeyEPNS1_6SymbolENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EELb1EEESt20forward_iterator_tagPKS6_lSG_SG_EppEv.exit
  %.pn = phi i64 [ %i.fq, %.lr.ph1424 ], [ %i.kb, %_ZN4llvm21iterator_adaptor_baseINS_5MachO9SymbolSet21const_symbol_iteratorENS_16DenseMapIteratorINS_13SymbolsMapKeyEPNS1_6SymbolENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EELb1EEESt20forward_iterator_tagPKS6_lSG_SG_EppEv.exit ] ; 2 uses
  %.sroa.01218.01423 = getelementptr i8, ptr %i.et, i64 %.pn
end_hunk_1
