Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/engine?download=true
inline.NumInlined: 3406
inline.NumDeleted: 1747
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN9Stockfish6Engine14resize_threadsEv:._crit_edge.i.i
  %i.a = getelementptr inbounds nuw i8, ptr %0, <4 x i64> <i64 1224, i64 1304, i64 1368, i64 1632>
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 4 uses
  tail call void @_ZNK9Stockfish10ThreadPool24wait_for_search_finishedEv(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1392
  store <4 x ptr> %i.a, ptr %1, align 8, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.f, ptr %i.g, align 8, !tbaa !328
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1472
  tail call void @_ZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextE(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(81) %i.c, ptr noundef nonnull byval(%"struct.Stockfish::Search::SharedState") align 8 %1, ptr noundef nonnull align 8 dereferenceable(128) %i.h) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !65
  store i32 1752392008, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.j, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 0, ptr %i.k, align 4, !tbaa !69
  %i.l = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  %i.m = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.l) #28
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !143
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !145
  call void @_ZN9Stockfish6Thread24wait_for_search_finishedEv(ptr noundef nonnull align 8 dereferenceable(192) %i.q) #28
  call void @_ZN9Stockfish18TranspositionTable6resizeEmRNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(17) %i.e, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.b) #28
  %i.r = load ptr, ptr %2, align 8, !tbaa !67     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.i
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.t = load i64, ptr %i.i, align 8, !tbaa !69
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @_ZN9Stockfish10ThreadPool25ensure_network_replicatedEv(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN9Stockfish6Engine5perftERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEib(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %5 = alloca %"class.Stockfish::Position", align 8 ; 5 uses
  tail call void @_ZNK9Stockfish6Engine15verify_networksEv(ptr noundef nonnull align 8 dereferenceable(1680) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 1016
  store i64 0, ptr %i.a, align 8, !tbaa !78
  %i.b = call noundef nonnull align 8 dereferenceable(1048) ptr @_ZN9Stockfish8Position3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPNS_9StateInfoE(ptr noundef nonnull align 8 dereferenceable(1048) %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %3, ptr noundef nonnull %4) #28 ; 0 uses
  %i.c = call noundef i64 @_ZN9Stockfish9Benchmark5perftILb1EEEmRNS_8PositionEi(ptr noundef nonnull align 8 dereferenceable(1048) %5, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish6Engine15verify_networksEv(ptr noundef nonnull align 8 dereferenceable(1680) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::vector.119", align 8   ; 8 uses
  %7 = alloca %"struct.std::pair", align 8        ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load i8, ptr %i.e, align 8, !tbaa !136
  switch i8 %i.f, label %bb.d [
    i8 -1, label %bb.b
    i8 2, label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  br label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit

bb.d:                                             ; preds = %bb.a
  unreachable

_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit: ; preds = %bb.a, %bb.c
  %.0.i.i.i.in.i.i = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.a ]
  %.0.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i, align 8, !tbaa !96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !65
  store i64 7308332046502426181, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 8, ptr %i.j, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 0, ptr %i.k, align 8, !tbaa !69
  %i.l = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(152) %i.l) #28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 3 uses
  call void @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE6verifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvSt17basic_string_viewIcSB_EEE(ptr noundef nonnull align 64 dereferenceable(131331893) %.0.i.i.i.i.i, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #28
  %i.n = load ptr, ptr %2, align 8, !tbaa !67     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !69
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.s = load ptr, ptr %3, align 8, !tbaa !67     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.i, align 8, !tbaa !69
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !134  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.y = load i8, ptr %i.x, align 8, !tbaa !136
  switch i8 %i.y, label %bb.g [
    i8 -1, label %bb.e
    i8 2, label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit15
    i8 1, label %bb.f
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  call void @abort() #32
  unreachable

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  br label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit15

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  unreachable

_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.f
  %.0.i.i.i.in.i.i13 = phi ptr [ %i.z, %bb.f ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  %.0.i.i.i.i.i14 = load ptr, ptr %.0.i.i.i.in.i.i13, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i14, i64 131331904
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ab, ptr noundef nonnull align 1 dereferenceable(13) @.str.27, i64 13, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 13, ptr %i.ac, align 8, !tbaa !68
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 29
  store i8 0, ptr %i.ad, align 1, !tbaa !69
  %i.ae = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %5) #28
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(152) %i.ae) #28
  call void @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE6verifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvSt17basic_string_viewIcSB_EEE(ptr noundef nonnull align 64 dereferenceable(6517429) %i.aa, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #28
  %i.af = load ptr, ptr %4, align 8, !tbaa !67    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit15
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !69
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %i.ak = load ptr, ptr %5, align 8, !tbaa !67    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ab
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.am = load i64, ptr %i.ab, align 8, !tbaa !69
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE21get_status_and_errorsB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.119") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !148
  %i.aq = load ptr, ptr %6, align 8, !tbaa !149   ; 3 uses
  %.not = icmp eq ptr %i.ap, %i.aq
  br i1 %.not, label %_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1624
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit
  %.not4.i.i.i = icmp eq ptr %i.hh, %i.hg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bp, %_ZSt8_DestroyISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i ], [ %i.hh, %._crit_edge ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !60, !range !61, !noundef !62
  %i.bi = trunc nuw i8 %i.bh to i1
  store i8 0, ptr %i.bg, align 8, !tbaa !60
  br i1 %i.bi, label %bb.h, label %_ZSt8_DestroyISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZSt8_DestroyISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !69
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #33
  br label %_ZSt8_DestroyISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bp, %i.hg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !329

_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !149
  br label %_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exit.i

_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exitthread-pre-split.i, %._crit_edge
  %12 = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exitthread-pre-split.i ], [ %i.hh, %._crit_edge ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %12, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !150
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %12 to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %12, i64 noundef %i.bu) #33
  br label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void

bb.j:                                             ; preds = %.lr.ph, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit
  %i.bv = phi ptr [ %i.aq, %.lr.ph ], [ %i.hh, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit ]
  %.073 = phi i64 [ 0, %.lr.ph ], [ %i.cn, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %.073 ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !157
  store i32 %i.bx, ptr %7, align 8, !tbaa !157
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i8 0, ptr %i.as, align 8, !tbaa !60
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !60, !range !61, !noundef !62
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.k, label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !65
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !67 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !45
  %i.cf = icmp ugt i64 %i.ce, 15
  br i1 %i.cf, label %bb.l, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.cg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.cg, ptr %i.ar, align 8, !tbaa !67
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.ch, ptr %i.at, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.l, %bb.k
  %i.ci = phi ptr [ %i.cg, %bb.l ], [ %i.at, %bb.k ] ; 2 uses
  switch i64 %i.ce, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.cj = load i8, ptr %i.cc, align 1, !tbaa !69
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !69
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.cc, i64 %i.ce, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  store i64 %i.ck, ptr %i.au, align 8, !tbaa !68
  %i.cl = load ptr, ptr %i.ar, align 8, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 0, ptr %i.cm, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store i8 1, ptr %i.as, align 8, !tbaa !60
  br label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit

_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit: ; preds = %bb.j, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.cn = add nuw i64 %.073, 1                    ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.co = icmp ult i64 %.073, 9
  br i1 %i.co, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit, %bb.t
  %.029.i.i = phi i32 [ %i.cw, %bb.t ], [ 1, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.cv, %bb.t ], [ %i.cn, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit ] ; 5 uses
  %i.cp = icmp ult i64 %.02328.i.i, 100
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.cq = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cr = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cs = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ct = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.ct, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cu = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.t:                                             ; preds = %bb.r
  %i.cv = udiv i64 %.02328.i.i, 10000
  %i.cw = add i32 %.029.i.i, 4                    ; 2 uses
  %i.cx = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.cx, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit
  %.022.i.i = phi i32 [ %i.cu, %bb.s ], [ %i.cq, %bb.o ], [ %i.cs, %bb.q ], [ 1, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit ], [ %i.cw, %bb.t ]
  %i.cy = zext i32 %.022.i.i to i64
  store ptr %i.av, ptr %10, align 8, !tbaa !65, !alias.scope !342
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.cy, i8 noundef signext 0) #28
  %i.cz = load ptr, ptr %10, align 8, !tbaa !67, !alias.scope !342 ; 4 uses
  %i.da = icmp ugt i64 %.073, 98
  br i1 %i.da, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i24

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.db = load i64, ptr %i.aw, align 8, !tbaa !68, !alias.scope !342
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add i32 %i.dc, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.dg, %.lr.ph.i2.i ], [ %i.cn, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.dq, %.lr.ph.i2.i ], [ %i.dd, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.de = urem i64 %.020.i.i, 100
  %i.df = shl nuw nsw i64 %i.de, 1
  %i.dg = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !69, !noalias !342
  %i.dk = zext i32 %.01819.i.i to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dk
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !69
  %i.dm = load i8, ptr %i.dh, align 2, !tbaa !69, !noalias !342
  %i.dn = add i32 %.01819.i.i, -1
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.do
  store i8 %i.dm, ptr %i.dp, align 1, !tbaa !69
  %i.dq = add i32 %.01819.i.i, -2
  %i.dr = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.dr, label %.lr.ph.i2.i, label %._crit_edge.i.i24, !llvm.loop !3

._crit_edge.i.i24:                                ; preds = %.lr.ph.i2.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.cn, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.dg, %.lr.ph.i2.i ] ; 3 uses
  %i.ds = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ds, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i24
  %i.dt = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.du = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !69, !noalias !342
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !69
  %i.dy = load i8, ptr %i.du, align 2, !tbaa !69, !noalias !342
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.v:                                             ; preds = %._crit_edge.i.i24
  %i.dz = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ea = or disjoint i8 %i.dz, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.u, %bb.v
  %storemerge.i.i = phi i8 [ %i.ea, %bb.v ], [ %i.dy, %bb.u ]
  store i8 %storemerge.i.i, ptr %i.cz, align 1, !tbaa !69
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.eb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.31, i64 noundef 16) #28, !noalias !343 ; 6 uses
  store ptr %i.ax, ptr %9, align 8, !tbaa !65, !alias.scope !343
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !67 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 5 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

bb.w:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !68 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, 16
  call void @llvm.assume(i1 %i.eh)
  %i.ei = add nuw nsw i64 %i.eg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.ed, i64 %i.ei, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  store ptr %i.ec, ptr %9, align 8, !tbaa !67, !alias.scope !343
  %i.ej = load i64, ptr %i.ed, align 8, !tbaa !69
  store i64 %i.ej, ptr %i.ax, align 8, !tbaa !69, !alias.scope !343
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !68
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.ek = phi i64 [ %i.eg, %bb.w ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ]
end_hunk_0
begin_hunk_1_@_ZNK9Stockfish6Engine15verify_networksEv:bb.a
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 %i.ey, ptr %i.ba, align 8, !tbaa !68, !alias.scope !344
  store ptr %i.er, ptr %i.ep, align 8, !tbaa !67
  store i64 0, ptr %i.ez, align 8, !tbaa !68
  store i8 0, ptr %i.er, align 8, !tbaa !69
  %i.fa = load ptr, ptr %9, align 8, !tbaa !67    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ax
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.fc = load i64, ptr %i.ax, align 8, !tbaa !69
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.fe = load ptr, ptr %10, align 8, !tbaa !67   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.av
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.fg = load i64, ptr %i.av, align 8, !tbaa !69
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.fi = load i32, ptr %7, align 8, !tbaa !158
  %i.fj = load i64, ptr %i.ba, align 8, !tbaa !68 ; 4 uses
  switch i32 %i.fi, label %bb.af [
    i32 0, label %bb.z
    i32 1, label %bb.ab
    i32 2, label %bb.ad
  ]

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.fk = add i64 %i.fj, -4611686018427387890
  %i.fl = icmp ult i64 %i.fk, 14
  br i1 %i.fl, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.z
  %i.fm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.33, i64 noundef 14) #28 ; 0 uses
  br label %bb.ah

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.fn = add i64 %i.fj, -4611686018427387891
  %i.fo = icmp ult i64 %i.fn, 13
  br i1 %i.fo, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37: ; preds = %bb.ab
  %i.fp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.34, i64 noundef 13) #28 ; 0 uses
  br label %bb.ah

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.fq = add i64 %i.fj, -4611686018427387890
  %i.fr = icmp ult i64 %i.fq, 14
  br i1 %i.fr, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit39

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit39: ; preds = %bb.ad
  %i.fs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.35, i64 noundef 14) #28 ; 0 uses
  br label %bb.ah

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.ft = add i64 %i.fj, -4611686018427387889
  %i.fu = icmp ult i64 %i.ft, 15
  br i1 %i.fu, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41: ; preds = %bb.af
  %i.fv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.36, i64 noundef 15) #28 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.fw = load i8, ptr %i.as, align 8, !tbaa !60, !range !61, !noundef !62
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.fy = load ptr, ptr %i.ar, align 8, !tbaa !67, !noalias !345
  %i.fz = load i64, ptr %i.au, align 8, !tbaa !68, !noalias !345 ; 3 uses
  store ptr %i.bb, ptr %11, align 8, !tbaa !65, !alias.scope !346
  store i64 0, ptr %i.bc, align 8, !tbaa !68, !alias.scope !346
  store i8 0, ptr %i.bb, align 8, !tbaa !69, !alias.scope !346
  %i.ga = add i64 %i.fz, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.ga) #28
  %i.gb = load i64, ptr %i.bc, align 8, !tbaa !68, !alias.scope !346
  %i.gc = icmp eq i64 %i.gb, 4611686018427387903
  br i1 %i.gc, label %bb.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.ai
  %i.gd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.37, i64 noundef 1) #28 ; 0 uses
  %i.ge = load i64, ptr %i.bc, align 8, !tbaa !68, !alias.scope !346
  %i.gf = sub i64 4611686018427387903, %i.ge
  %i.gg = icmp ult i64 %i.gf, %i.fz
  br i1 %i.gg, label %bb.ak, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.gh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.fy, i64 noundef %i.fz) #28 ; 0 uses
  %i.gi = load i64, ptr %i.bc, align 8, !tbaa !68 ; 2 uses
  %i.gj = load i64, ptr %i.ba, align 8, !tbaa !68
  %i.gk = sub i64 4611686018427387903, %i.gj
  %i.gl = icmp ult i64 %i.gk, %i.gi
  br i1 %i.gl, label %bb.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.al:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.gm = load ptr, ptr %11, align 8, !tbaa !67
  %i.gn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.gm, i64 noundef %i.gi) #28 ; 0 uses
  %i.go = load ptr, ptr %11, align 8, !tbaa !67   ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.bb
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.gq = load i64, ptr %i.bb, align 8, !tbaa !69
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %bb.ah
  %i.gs = load ptr, ptr %8, align 8, !tbaa !67
  %i.gt = load i64, ptr %i.ba, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %i.gt, ptr %1, align 8
  store ptr %i.gs, ptr %i.bd, align 8
  %i.gu = load ptr, ptr %i.be, align 8, !tbaa !99
  %.not.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i, label %bb.an, label %_ZNKSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEclES3_.exit

bb.an:                                            ; preds = %bb.am
  call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZNKSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEclES3_.exit: ; preds = %bb.am
  %i.gv = load ptr, ptr %i.bf, align 8, !tbaa !348
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %1) #28, !inline_history !340
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.gw = load ptr, ptr %8, align 8, !tbaa !67    ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.az
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNKSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEclES3_.exit
  %i.gy = load i64, ptr %i.az, align 8, !tbaa !69
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNKSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEclES3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.ha = load i8, ptr %i.as, align 8, !tbaa !60, !range !61, !noundef !62
  %i.hb = trunc nuw i8 %i.ha to i1
  store i8 0, ptr %i.as, align 8, !tbaa !60
  br i1 %i.hb, label %bb.ao, label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.hc = load ptr, ptr %i.ar, align 8, !tbaa !67 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.at
  br i1 %i.hd, label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.ao
  %i.he = load i64, ptr %i.at, align 8, !tbaa !69
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #33
  br label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit: ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.hg = load ptr, ptr %i.ao, align 8, !tbaa !148 ; 3 uses
  %i.hh = load ptr, ptr %6, align 8, !tbaa !149   ; 5 uses
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = sdiv exact i64 %i.hk, 48
  %i.hm = icmp ult i64 %i.cn, %i.hl
  br i1 %i.hm, label %bb.j, label %._crit_edge, !llvm.loop !341
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Engine2goERNS_6Search10LimitsTypeE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 dereferenceable(113) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"struct.Stockfish::Search::LimitsType", align 8 ; 7 uses
  tail call void @_ZNK9Stockfish6Engine15verify_networksEv(ptr noundef nonnull align 8 dereferenceable(1680) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1216
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(113) %2, ptr noundef nonnull align 8 dereferenceable(113) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.e, ptr noundef nonnull align 8 dereferenceable(89) %i.f, i64 89, i1 false)
  call void @_ZN9Stockfish10ThreadPool14start_thinkingERKNS_10OptionsMapERNS_8PositionERSt10unique_ptrISt5dequeINS_9StateInfoESaIS8_EESt14default_deleteISA_EENS_6Search10LimitsTypeE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(1048) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 %2) #28
  %i.g = load ptr, ptr %2, align 8, !tbaa !161    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.g, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !69
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !349

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !161
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %bb.a
  %i.p = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.g, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i, label %_ZN9Stockfish6Search10LimitsTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !163
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #33
  br label %_ZN9Stockfish6Search10LimitsTypeD2Ev.exit

_ZN9Stockfish6Search10LimitsTypeD2Ev.exit:        ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.b
  ret void
}

declare void @_ZN9Stockfish10ThreadPool14start_thinkingERKNS_10OptionsMapERNS_8PositionERSt10unique_ptrISt5dequeINS_9StateInfoESaIS8_EESt14default_deleteISA_EENS_6Search10LimitsTypeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8) local_unnamed_addr #6

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local void @_ZN9Stockfish6Engine4stopEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1680) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1304
  store atomic i8 1, ptr %i.a seq_cst, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Engine12search_clearEv(ptr noundef nonnull align 8 dereferenceable(1680) %0) local_unnamed_addr #4 align 2 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145
  tail call void @_ZN9Stockfish6Thread24wait_for_search_finishedEv(ptr noundef nonnull align 8 dereferenceable(192) %i.c) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  tail call void @_ZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(17) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.e) #28
  tail call void @_ZN9Stockfish10ThreadPool5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1224
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.g, ptr noundef nonnull align 1 dereferenceable(10) @.str.22, i64 10, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.h, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.i, align 2, !tbaa !69
  %i.j = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(152) %i.j) #28
  call void @_ZN9Stockfish10Tablebases4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1) #28
  %i.k = load ptr, ptr %1, align 8, !tbaa !67     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !69
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = load ptr, ptr %2, align 8, !tbaa !67     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.g
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = load i64, ptr %i.g, align 8, !tbaa !69
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Engine24wait_for_search_finishedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1680) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145
  tail call void @_ZN9Stockfish6Thread24wait_for_search_finishedEv(ptr noundef nonnull align 8 dereferenceable(192) %i.c) #28
  ret void
}

declare void @_ZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare void @_ZN9Stockfish10ThreadPool5clearEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare void @_ZN9Stockfish10Tablebases4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Engine22set_on_update_no_movesEOSt8functionIFvRKNS_6Search9InfoShortEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1680) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.std::function.43", align 16 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !140
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !99
  %.not.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN9Stockfish6Search9InfoShortEEEC2EOS6_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN9Stockfish6Search9InfoShortEEEC2EOS6_.exit.i

_ZNSt8functionIFvRKN9Stockfish6Search9InfoShortEEEC2EOS6_.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !164
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !140
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !140  ; 2 uses
  store <2 x ptr> %i.g, ptr %i.e, align 16, !tbaa !140
  store <2 x ptr> %i.c, ptr %i.f, align 8, !tbaa !140
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN9Stockfish6Search9InfoShortEEEaSEOS6_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvRKN9Stockfish6Search9InfoShortEEEC2EOS6_.exit.i
  %i.i = call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #28, !inline_history !350 ; 0 uses
  br label %_ZNSt8functionIFvRKN9Stockfish6Search9InfoShortEEEaSEOS6_.exit

_ZNSt8functionIFvRKN9Stockfish6Search9InfoShortEEEaSEOS6_.exit: ; preds = %_ZNSt8functionIFvRKN9Stockfish6Search9InfoShortEEEC2EOS6_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Engine18set_on_update_fullEOSt8functionIFvRKNS_6Search8InfoFullEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1680) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.std::function.46", align 16 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
end_hunk_1
