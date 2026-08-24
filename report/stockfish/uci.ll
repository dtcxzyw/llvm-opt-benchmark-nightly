Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/uci?download=true
inline.NumInlined: 1415
inline.NumDeleted: 622
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9Stockfish9UCIEngine9benchmarkERSi:bb.a
  store ptr %i.cx, ptr %i.vu, align 8, !tbaa !35
  store i64 0, ptr %i.db, align 8, !tbaa !186
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cr) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.vv = load ptr, ptr %i.sl, align 8, !tbaa !60 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.vx = icmp eq ptr %i.vv, %i.vw
  br i1 %i.vx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit115
  %i.vy = load i64, ptr %i.vw, align 8, !tbaa !34
  %i.vz = add i64 %i.vy, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.wa = load ptr, ptr %i.sd, align 8, !tbaa !60 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.wc = icmp eq ptr %i.wa, %i.wb
  br i1 %i.wc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.wd = load i64, ptr %i.wb, align 8, !tbaa !34
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wa, i64 noundef %i.we) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.wf = load ptr, ptr %i.ac, align 8, !tbaa !200 ; 3 uses
  %i.wg = load ptr, ptr %i.ae, align 8, !tbaa !201 ; 2 uses
  %.not4.i.i.i.i116 = icmp eq ptr %i.wf, %i.wg
  br i1 %.not4.i.i.i.i116, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i124, label %.lr.ph.i.i.i.i117

.lr.ph.i.i.i.i117:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i120
  %.05.i.i.i.i118 = phi ptr [ %i.wm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i120 ], [ %i.wf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i ] ; 3 uses
  %i.wh = load ptr, ptr %.05.i.i.i.i118, align 8, !tbaa !60 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i118, i64 16 ; 2 uses
  %i.wj = icmp eq ptr %i.wh, %i.wi
  br i1 %i.wj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i119: ; preds = %.lr.ph.i.i.i.i117
  %i.wk = load i64, ptr %i.wi, align 8, !tbaa !34
  %i.wl = add i64 %i.wk, 1
  call void @_ZdlPvm(ptr noundef %i.wh, i64 noundef %i.wl) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i120

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i120: ; preds = %.lr.ph.i.i.i.i117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i119
  %i.wm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i118, i64 32 ; 2 uses
  %.not.i.i.i.i121 = icmp eq ptr %i.wm, %i.wg
  br i1 %.not.i.i.i.i121, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i122, label %.lr.ph.i.i.i.i117, !llvm.loop !202

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i122: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i120
  %.pr.i.i123 = load ptr, ptr %i.ac, align 8, !tbaa !200
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i124

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i124: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.wn = phi ptr [ %.pr.i.i123, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i122 ], [ %i.wf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i ] ; 3 uses
  %.not.i.i1.i.i125 = icmp eq ptr %i.wn, null
  br i1 %.not.i.i1.i.i125, label %_ZN9Stockfish9Benchmark14BenchmarkSetupD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i124
  %i.wo = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !203
  %i.wq = ptrtoint ptr %i.wp to i64
  %i.wr = ptrtoint ptr %i.wn to i64
  %i.ws = sub i64 %i.wq, %i.wr
  call void @_ZdlPvm(ptr noundef nonnull %i.wn, i64 noundef %i.ws) #30
  br label %_ZN9Stockfish9Benchmark14BenchmarkSetupD2Ev.exit

_ZN9Stockfish9Benchmark14BenchmarkSetupD2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i124, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.wt = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.wu = icmp eq ptr %i.wt, %i.e
  br i1 %i.wu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZN9Stockfish9Benchmark14BenchmarkSetupD2Ev.exit
  %i.wv = load i64, ptr %i.e, align 8, !tbaa !34
  %i.ww = add i64 %i.wv, 1
  call void @_ZdlPvm(ptr noundef %i.wt, i64 noundef %i.ww) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZN9Stockfish9Benchmark14BenchmarkSetupD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare void @_ZNK9Stockfish6Engine9visualizeB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(1680)) local_unnamed_addr #5

declare void @_ZNK9Stockfish6Engine10trace_evalEv(ptr noundef nonnull align 8 dereferenceable(1680)) local_unnamed_addr #5

declare void @_ZN9Stockfish13compiler_infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !63, !range !66, !noundef !67
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !58
  %i.f = load ptr, ptr %1, align 8, !tbaa !60     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !62   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.h, ptr %i.a, align 8, !tbaa !11
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !60
  %i.k = load i64, ptr %i.a, align 8, !tbaa !11
  store i64 %i.k, ptr %i.e, align 8, !tbaa !34
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %i.j, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRS5_EEEvDpOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !34
  store i8 %i.m, ptr %i.l, align 1, !tbaa !34
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRS5_EEEvDpOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRS5_EEEvDpOT_.exit

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.e, %bb.f
  %i.n = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !62
  %i.p = load ptr, ptr %0, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store i8 1, ptr %i.b, align 8, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRS5_EEEvDpOT_.exit, %bb.b
  ret ptr %0
}

declare void @_ZN9Stockfish6Engine12save_networkEPKSt4pairISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_E(ptr noundef nonnull align 8 dereferenceable(1680), ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES6_ED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !34
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !63, !range !66, !noundef !67
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.g, align 8, !tbaa !63
  br i1 %i.i, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !34
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish9UCIEngine12parse_limitsERSi(ptr dead_on_unwind noalias writable sret(%"struct.Stockfish::Search::LimitsType") align 8 initializes((0, 100), (104, 113)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !236
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !237
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(113) %0, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !62
  store i8 0, ptr %i.e, align 8, !tbaa !34
  %i.g = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.h = sdiv i64 %i.g, 1000000
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.h, ptr %i.i, align 8, !tbaa !238
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #26 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !182
  %i.q = and i32 %i.p, 5
  %.not.i56 = icmp eq i32 %i.q, 0
  br i1 %.not.i56, label %.lr.ph57, label %._crit_edge

.lr.ph57:                                         ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 16 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph57, %.loopexit
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !62  ; 8 uses
  switch i64 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38.thread54 [
    i64 11, label %.split
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
  ]

.split:                                           ; preds = %bb.b
  %i.ah = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 1
  %i.aj = xor i64 %i.ai, 8029188487001498995
  %i.ak = getelementptr i8, ptr %i.ah, i64 3
  %i.al = load i64, ptr %i.ak, align 1
  %i.am = xor i64 %i.al, 8315182507958494066
  %i.an = or i64 %i.aj, %i.am
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38.thread54

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader: ; preds = %.split
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #26 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !182
  %i.ay = and i32 %i.ax, 5
  %.not.i1355 = icmp eq i32 %i.ay, 0
  br i1 %.not.i1355, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.z, ptr %4, align 8, !tbaa !58
  %i.az = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.ba = load i64, ptr %i.f, align 8, !tbaa !62  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !11
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %.lr.ph
  %i.bc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.bc, ptr %4, align 8, !tbaa !60
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !11
  store i64 %i.bd, ptr %i.z, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %.lr.ph
  %i.be = phi ptr [ %i.bc, %bb.c ], [ %i.z, %.lr.ph ] ; 2 uses
  switch i64 %i.ba, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.bf = load i8, ptr %i.az, align 1, !tbaa !34
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.az, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  store i64 %i.bg, ptr %i.aa, align 8, !tbaa !62
  %i.bh = load ptr, ptr %4, align 8, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 0, ptr %i.bi, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.bj = load ptr, ptr %4, align 8, !tbaa !60, !noalias !239 ; 3 uses
  %i.bk = load i64, ptr %i.aa, align 8, !tbaa !62, !noalias !239 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %.not6.i.i = icmp samesign eq i64 %i.bk, 0
  br i1 %.not6.i.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  %i.bm = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !34, !noalias !239
  %i.bn = sext i8 %i.bm to i32
  %i.bo = call noundef i32 @tolower(i32 noundef %i.bn) #28, !noalias !239
  %i.bp = trunc i32 %i.bo to i8
  store i8 %i.bp, ptr %.sroa.0.08.i.i, align 1, !tbaa !34, !noalias !239
  %i.bq = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, %i.bl
  br i1 %.not.i.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.loopexit.i", label %.lr.ph.i.i, !llvm.loop !242

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.loopexit.i": ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !60, !noalias !239
  br label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.i"

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.i": ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.loopexit.i", %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.br = phi ptr [ %.pre.i, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.loopexit.i" ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !58, !alias.scope !239
  %i.bs = icmp eq ptr %i.br, %i.z
  br i1 %i.bs, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.i"
  %i.bt = load i64, ptr %i.aa, align 8, !tbaa !62, !noalias !239 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.bv, i1 false)
  br label %_ZN9Stockfish9UCIEngine8to_lowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.i"
  store ptr %i.br, ptr %3, align 8, !tbaa !60, !alias.scope !239
  %i.bw = load i64, ptr %i.z, align 8, !tbaa !34, !noalias !239
  store i64 %i.bw, ptr %i.ab, align 8, !tbaa !34, !alias.scope !239
  %.pre4.i = load i64, ptr %i.aa, align 8, !tbaa !62, !noalias !239
  br label %_ZN9Stockfish9UCIEngine8to_lowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN9Stockfish9UCIEngine8to_lowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %5 = phi ptr [ %i.ab, %bb.f ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.bx = phi i64 [ %i.bt, %bb.f ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 7 uses
  store i64 %i.bx, ptr %i.ac, align 8, !tbaa !62, !alias.scope !239
  store ptr %i.z, ptr %4, align 8, !tbaa !60, !noalias !239
  store i64 0, ptr %i.aa, align 8, !tbaa !62, !noalias !239
  store i8 0, ptr %i.z, align 8, !tbaa !34, !noalias !239
  %i.by = load ptr, ptr %i.ad, align 8, !tbaa !201 ; 8 uses
  %i.bz = load ptr, ptr %i.ae, align 8, !tbaa !203
  %.not.i.i14 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i14, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN9Stockfish9UCIEngine8to_lowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 3 uses
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !58
  %i.cb = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ab
  br i1 %i.cc, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.cd = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.cd)
  %i.ce = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !60
  %i.cf = load i64, ptr %i.ab, align 8, !tbaa !34
  store i64 %i.cf, ptr %i.ca, align 8, !tbaa !34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %i.bx, ptr %i.cg, align 8, !tbaa !62
  store ptr %i.ab, ptr %3, align 8, !tbaa !60
  store i64 0, ptr %i.ac, align 8, !tbaa !62
  store i8 0, ptr %i.ab, align 8, !tbaa !34
  %i.ch = load ptr, ptr %i.ad, align 8, !tbaa !201
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store ptr %i.ci, ptr %i.ad, align 8, !tbaa !201
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %_ZN9Stockfish9UCIEngine8to_lowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cj = load ptr, ptr %0, align 8, !tbaa !200   ; 5 uses
  %i.ck = ptrtoint ptr %i.by to i64
  %i.cl = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl                    ; 3 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775776
  br i1 %i.cn, label %bb.j, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #31
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.co = ashr exact i64 %i.cm, 5                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %i.cp = add nsw i64 %.sroa.speculated.i.i, %i.co ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.co
  %i.cr = call i64 @llvm.umin.i64(i64 %i.cp, i64 288230376151711743)
  %i.cs = select i1 %i.cq, i64 288230376151711743, i64 %i.cr ; 3 uses
  %.not.i.i42 = icmp ne i64 %i.cs, 0
  call void @llvm.assume(i1 %.not.i.i42)
  %i.ct = shl nuw nsw i64 %i.cs, 5
  %i.cu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #29 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cm ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !58
  %i.cx = icmp eq ptr %5, %i.ab
  br i1 %i.cx, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

bb.k:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.cy = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.cy)
  %i.cz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cw, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.cz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  store ptr %5, ptr %i.cv, align 8, !tbaa !60
  %i.da = load i64, ptr %i.ab, align 8, !tbaa !34
  store i64 %i.da, ptr %i.cw, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.k
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.bx, ptr %i.db, align 8, !tbaa !62
  store ptr %i.ab, ptr %3, align 8, !tbaa !60
  store i64 0, ptr %i.ac, align 8, !tbaa !62
  store i8 0, ptr %i.ab, align 8, !tbaa !34
  %.not10.i.i.i.i = icmp eq ptr %i.cj, %i.by
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dp, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.do, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.dc, ptr %.012.i.i.i.i, align 8, !tbaa !58, !alias.scope !243, !noalias !246
  %i.dd = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !60, !alias.scope !246, !noalias !243 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !62, !alias.scope !246, !noalias !243 ; 3 uses
  %i.di = icmp ult i64 %i.dh, 16
  call void @llvm.assume(i1 %i.di)
  %i.dj = add nuw nsw i64 %i.dh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dc, ptr noundef nonnull align 8 dereferenceable(1) %i.de, i64 %i.dj, i1 false), !alias.scope !248
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.dd, ptr %.012.i.i.i.i, align 8, !tbaa !60, !alias.scope !243, !noalias !246
  %i.dk = load i64, ptr %i.de, align 8, !tbaa !34, !alias.scope !246, !noalias !243
  store i64 %i.dk, ptr %i.dc, align 8, !tbaa !34, !alias.scope !243, !noalias !246
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !62, !alias.scope !246, !noalias !243
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.l
  %i.dl = phi i64 [ %i.dh, %bb.l ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.dl, ptr %i.dn, align 8, !tbaa !62, !alias.scope !243, !noalias !246
  store ptr %i.de, ptr %.0911.i.i.i.i, align 8, !tbaa !60, !alias.scope !246, !noalias !243
  store i64 0, ptr %i.dm, align 8, !tbaa !62, !alias.scope !246, !noalias !243
  store i8 0, ptr %i.de, align 8, !tbaa !34, !alias.scope !246, !noalias !243
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.do, %i.by
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i, !llvm.loop !249

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ], [ %i.dp, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i27.i = icmp eq ptr %i.cj, null
  br i1 %.not.i27.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i
  %i.dr = load ptr, ptr %i.ae, align 8, !tbaa !203
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.dt) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.m, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i
  store ptr %i.cu, ptr %0, align 8, !tbaa !200
  store ptr %i.dq, ptr %i.ad, align 8, !tbaa !201
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %i.cs
  store ptr %i.du, ptr %i.ae, align 8, !tbaa !203
  %.pre61 = load ptr, ptr %3, align 8, !tbaa !60  ; 2 uses
  %i.dv = icmp eq ptr %.pre61, %i.ab
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.dw = load i64, ptr %i.ab, align 8, !tbaa !34
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %.pre61, i64 noundef %i.dx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  %i.dy = load ptr, ptr %4, align 8, !tbaa !60    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.z
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ea = load i64, ptr %i.z, align 8, !tbaa !34
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ec = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #26 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !35
  %i.ee = getelementptr i8, ptr %i.ed, i64 -24
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds i8, ptr %i.ec, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !182
  %i.ej = and i32 %i.ei, 5
  %.not.i13 = icmp eq i32 %i.ej, 0
  br i1 %.not.i13, label %.lr.ph, label %.loopexit, !llvm.loop !250

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %bb.b
  %.pre = load ptr, ptr %2, align 8, !tbaa !60    ; 7 uses
  %bcmp.i19 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.31, i64 %i.ag)
  %i.ek = icmp eq i32 %bcmp.i19, 0
  br i1 %i.ek, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  %i.el = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.y) #26 ; 0 uses
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  %i.em = load i32, ptr %.pre, align 1
  %i.en = xor i32 %i.em, 1835627618
  %i.eo = getelementptr i8, ptr %.pre, i64 4
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = zext i8 %i.ep to i32
  %i.er = xor i32 %i.eq, 101
  %i.es = or i32 %i.en, %i.er
  %i.et = icmp ne i32 %i.es, 0
  %i.eu = zext i1 %i.et to i32
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
  %i.ew = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.x) #26 ; 0 uses
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24: ; preds = %bb.b
  %.pre58 = load ptr, ptr %2, align 8, !tbaa !60  ; 3 uses
  %bcmp.i23 = call i32 @bcmp(ptr %.pre58, ptr nonnull @.str.33, i64 %i.ag)
  %i.ex = icmp eq i32 %bcmp.i23, 0
  br i1 %i.ex, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
  %i.ey = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.w) #26 ; 0 uses
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
  %i.ez = load i32, ptr %.pre58, align 1
  %i.fa = icmp ne i32 %i.ez, 1668180322
  %i.fb = zext i1 %i.fa to i32
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26
  %i.fd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.v) #26 ; 0 uses
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28: ; preds = %bb.b
  %.pre59 = load ptr, ptr %2, align 8, !tbaa !60
  %bcmp.i27 = call i32 @bcmp(ptr %.pre59, ptr nonnull @.str.35, i64 %i.ag)
  %i.fe = icmp eq i32 %bcmp.i27, 0
  br i1 %i.fe, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38.thread54

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
  %i.ff = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #26 ; 0 uses
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
  %bcmp.i29 = call i32 @bcmp(ptr nonnull %.pre, ptr nonnull @.str.36, i64 %i.ag)
  %i.fg = icmp eq i32 %bcmp.i29, 0
  br i1 %i.fg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
  %i.fh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.u) #26 ; 0 uses
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
  %i.fi = load i32, ptr %.pre, align 1
  %i.fj = xor i32 %i.fi, 1701080942
  %i.fk = getelementptr i8, ptr %.pre, i64 4
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = zext i8 %i.fl to i32
  %i.fn = xor i32 %i.fm, 115
  %i.fo = or i32 %i.fj, %i.fn
  %i.fp = icmp ne i32 %i.fo, 0
  %i.fq = zext i1 %i.fp to i32
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32
  %i.fs = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #26 ; 0 uses
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34: ; preds = %bb.b
  %.pre60 = load ptr, ptr %2, align 8, !tbaa !60
  %bcmp.i33 = call i32 @bcmp(ptr %.pre60, ptr nonnull @.str.38, i64 %i.ag)
  %i.ft = icmp eq i32 %bcmp.i33, 0
  br i1 %i.ft, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38.thread54

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
  %i.fu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #26 ; 0 uses
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26
  %bcmp.i35 = call i32 @bcmp(ptr nonnull %.pre58, ptr nonnull @.str.39, i64 %i.ag)
  %i.fv = icmp eq i32 %bcmp.i35, 0
  br i1 %i.fv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38.thread54

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36
end_hunk_0
