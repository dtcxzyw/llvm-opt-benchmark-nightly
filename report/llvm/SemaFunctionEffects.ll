Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaFunctionEffects?download=true
inline.NumInlined: 2371
inline.NumDeleted: 1423
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN12_GLOBAL__N_112CallableInfoC2ERKN5clang4DeclENS_15SpecialFuncTypeE:bb.a
bb.k:                                             ; preds = %bb.h, %bb.j, %bb.f
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload, %bb.f ], [ %.sroa.7.0.copyload34, %bb.j ], [ %.sroa.7.0.copyload32, %bb.h ] ; 2 uses
  %.sroa.028.0 = phi ptr [ %.sroa.028.0.copyload, %bb.f ], [ %.sroa.028.0.copyload30, %bb.j ], [ %.sroa.028.0.copyload29, %bb.h ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 %.sroa.7.0
  %.not9.i.i = icmp samesign eq i64 %.sroa.7.0, 0
  br i1 %.not9.i.i, label %_ZN5clang21FunctionEffectKindSetC2ENS_18FunctionEffectsRefE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %_ZN5clang21FunctionEffectKindSet6insertENS_14FunctionEffectE.exit.i.i
  %.010.i.i = phi ptr [ %i.af, %_ZN5clang21FunctionEffectKindSet6insertENS_14FunctionEffectE.exit.i.i ], [ %.sroa.028.0, %bb.k ] ; 2 uses
  %i.aa = phi i64 [ %i.ae, %_ZN5clang21FunctionEffectKindSet6insertENS_14FunctionEffectE.exit.i.i ], [ 0, %bb.k ]
  %.sroa.01.0.copyload.i.i = load i8, ptr %.010.i.i, align 1, !tbaa !36 ; 2 uses
  %i.ab = zext i8 %.sroa.01.0.copyload.i.i to i64 ; 2 uses
  %i.ac = icmp ugt i8 %.sroa.01.0.copyload.i.i, 3
  br i1 %i.ac, label %bb.l, label %_ZN5clang21FunctionEffectKindSet6insertENS_14FunctionEffectE.exit.i.i

bb.l:                                             ; preds = %.lr.ph.i.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i64 noundef %i.ab, i64 noundef 4) #21
  unreachable

_ZN5clang21FunctionEffectKindSet6insertENS_14FunctionEffectE.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ad = shl nuw nsw i64 1, %i.ab
  %i.ae = or i64 %i.ad, %i.aa                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.z
  br i1 %.not.i.i, label %_ZN5clang21FunctionEffectKindSetC2ENS_18FunctionEffectsRefE.exit, label %.lr.ph.i.i

_ZN5clang21FunctionEffectKindSetC2ENS_18FunctionEffectsRefE.exit: ; preds = %_ZN5clang21FunctionEffectKindSet6insertENS_14FunctionEffectE.exit.i.i, %bb.i, %bb.k
  %.sroa.0.0 = phi i64 [ 0, %bb.k ], [ 0, %bb.i ], [ %i.ae, %_ZN5clang21FunctionEffectKindSet6insertENS_14FunctionEffectE.exit.i.i ]
  store i64 %.sroa.0.0, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_18Analyzer10followCallERKNS_12CallableInfoERNS_23PendingFunctionAnalysisES3_N5clang14SourceLocationEbNS_13ViolationSiteE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 %3, i64 %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.clang::SourceLocation", align 4 ; 2 uses
  %6 = alloca %"class.(anonymous namespace)::ViolationSite", align 8 ; 2 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.clang::FunctionEffectKindSet", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %8 = alloca %class.anon.1243, align 8           ; 11 uses
  store i32 %3, ptr %5, align 4
  store i64 %4, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val = load i8, ptr %i.c, align 8, !tbaa !788
  %i.d = and i8 %.val, -3
  %spec.select.i = icmp eq i8 %i.d, 1             ; 2 uses
  %i.e = zext i1 %spec.select.i to i8             ; 2 uses
  store i8 %i.e, ptr %i.a, align 1, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  store i64 %i.g, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 %i.e, ptr %i.b, align 1, !tbaa !74
  br i1 %spec.select.i, label %bb.b, label %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %2, align 8, !tbaa !787    ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(33) %i.i) #20, !inline_history !1019 ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !773, !noalias !1025
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !774, !noalias !1025 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !775, !noalias !1025 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = add i32 %i.r, -1                         ; 2 uses
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = mul i64 %i.u, -4658895280553007687       ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = xor i64 %i.w, %i.v
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.t, %i.y                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = lshr i64 %i.aa, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !41
  %i.ae = and i32 %i.z, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i.i.i.i, label %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit.thread, !prof !776

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.ah = phi i64 [ %i.an, %bb.d ], [ %i.aa, %bb.c ]
  %.03.i.i.i.i = phi i32 [ %i.am, %bb.d ], [ %i.z, %bb.c ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !769
  %i.ak = icmp eq ptr %i.m, %i.aj
  br i1 %i.ak, label %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap6lookupEPKN5clang4DeclE.exit.i, label %bb.d, !prof !767

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = add nuw i32 %.03.i.i.i.i, 1
  %i.am = and i32 %i.al, %i.t                     ; 3 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !41
  %i.ar = and i32 %i.am, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit.thread, !prof !777

_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap6lookupEPKN5clang4DeclE.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = and i64 %i.av, 4
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit.thread, label %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit

_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit: ; preds = %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap6lookupEPKN5clang4DeclE.exit.i
  %i.ax = and i64 %i.av, -5                       ; 2 uses
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit
  %i.ay = inttoptr i64 %i.ax to ptr
  %.sroa.010.0.copyload = load i64, ptr %i.ay, align 8
  %i.az = or i64 %i.g, %.sroa.010.0.copyload
  store i64 %i.az, ptr %7, align 8, !tbaa !768
  store i8 0, ptr %i.b, align 1, !tbaa !74
  br label %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit.thread

_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit.thread: ; preds = %bb.d, %bb.c, %bb.b, %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap6lookupEPKN5clang4DeclE.exit.i, %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit, %bb.e, %bb.a
  %.val22 = load ptr, ptr %2, align 8             ; 3 uses
  %.val23 = load i8, ptr %i.c, align 8, !tbaa !788
  switch i8 %.val23, label %bb.g [
    i8 0, label %_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit.thread13
    i8 2, label %_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit.thread13
    i8 3, label %_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit.thread
    i8 1, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %.val22, i64 80
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = and i32 %i.bb, 8388608
  %.not.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i, label %_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit, label %_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit.thread

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit.thread
  unreachable

_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit: ; preds = %bb.f
  %i.bd = load ptr, ptr %.val22, align 8, !tbaa !68
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(168) %.val22) #20, !inline_history !1024
  br i1 %i.bg, label %_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit.thread, label %_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit.thread13

_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit.thread13: ; preds = %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit.thread, %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit.thread, %_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit
  store i8 0, ptr %i.b, align 1, !tbaa !74
  br label %_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit.thread

_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit.thread: ; preds = %_ZNK12_GLOBAL__N_18Analyzer11AnalysisMap24completedAnalysisForDeclEPKN5clang4DeclE.exit.thread, %bb.f, %_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit, %_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit.thread13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %i.a, ptr %8, align 8, !tbaa !1026
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.bh, align 8, !tbaa !900
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.bi, align 8, !tbaa !1026
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %2, ptr %i.bj, align 8, !tbaa !852
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %1, ptr %i.bk, align 8, !tbaa !850
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %6, ptr %i.bl, align 8, !tbaa !1027
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %5, ptr %i.bm, align 8, !tbaa !24
  %i.bn = load i64, ptr %1, align 8, !tbaa !768   ; 4 uses
  %i.bo = and i64 %i.bn, 1
  %.not.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i, label %.lr.ph.preheader

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i:          ; preds = %_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit.thread
  %i.bp = and i64 %i.bn, 2
  %.not.i.i.1.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.1.i, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i, label %.lr.ph.preheader

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i:          ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i
  %i.bq = and i64 %i.bn, 4
  %.not.i.i.2.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.2.i, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i, label %.lr.ph.preheader

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i:          ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i
  %i.br = and i64 %i.bn, 8
  %.not.i.i.3.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.3.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i, %_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit.thread, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i
  %.sroa.47.019.ph = phi i64 [ 2, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i ], [ 0, %_ZNK12_GLOBAL__N_112CallableInfo12isVerifiableEv.exit.thread ], [ 1, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i ], [ 3, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2, %.lr.ph, %bb.h, %bb.i, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !768 ; 4 uses
  %i.bu = and i64 %i.bt, 1
  %.not.i.i.i27 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i27, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i31, label %.lr.ph22.preheader

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i31:        ; preds = %._crit_edge
  %i.bv = and i64 %i.bt, 2
  %.not.i.i.1.i32 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.1.i32, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i33, label %.lr.ph22.preheader

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i33:        ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i31
  %i.bw = and i64 %i.bt, 4
  %.not.i.i.2.i34 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.2.i34, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i35, label %.lr.ph22.preheader

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i35:        ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i33
  %i.bx = and i64 %i.bt, 8
  %.not.i.i.3.i36 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.3.i36, label %._crit_edge23, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i33, %._crit_edge, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i31, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i35
  %.sroa.4.021.ph = phi i64 [ 2, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i33 ], [ 0, %._crit_edge ], [ 1, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i31 ], [ 3, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i35 ]
  br label %.lr.ph22

.lr.ph:                                           ; preds = %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit, %.lr.ph.preheader
  %.sroa.47.019 = phi i64 [ %.sroa.47.1.lcssa, %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit ], [ %.sroa.47.019.ph, %.lr.ph.preheader ] ; 8 uses
  %i.by = trunc nuw nsw i64 %.sroa.47.019 to i8
  call fastcc void @_ZZN12_GLOBAL__N_18Analyzer10followCallERKNS_12CallableInfoERNS_23PendingFunctionAnalysisES3_N5clang14SourceLocationEbNS_13ViolationSiteEENKUlNS6_14FunctionEffectEbE_clES9_b(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 %i.by, i1 noundef zeroext false)
  %i.bz = icmp ult i64 %.sroa.47.019, 3
  br i1 %i.bz, label %_ZNKSt6bitsetILm4EE4testEm.exit.lr.ph.i.i, label %._crit_edge

_ZNKSt6bitsetILm4EE4testEm.exit.lr.ph.i.i:        ; preds = %.lr.ph
  %i.ca = load i64, ptr %1, align 8, !tbaa !768   ; 3 uses
  %i.cb = add nuw nsw i64 %.sroa.47.019, 1
  %i.cc = shl nuw nsw i64 2, %.sroa.47.019
  %i.cd = and i64 %i.cc, %i.ca
  %.not.i.i43 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i43, label %bb.h, label %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit

bb.h:                                             ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.lr.ph.i.i
  %i.ce = add nuw nsw i64 %.sroa.47.019, 2        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, 4
  br i1 %exitcond.not.i.i, label %._crit_edge, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1:            ; preds = %bb.h
  %i.cf = shl nuw nsw i64 4, %.sroa.47.019
  %i.cg = and i64 %i.cf, %i.ca
  %.not.i.i43.1 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i43.1, label %bb.i, label %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit

bb.i:                                             ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1
  %i.ch = add nuw nsw i64 %.sroa.47.019, 3        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ch, 4
  br i1 %exitcond.not.i.i.1, label %._crit_edge, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2:            ; preds = %bb.i
  %i.ci = shl nuw nsw i64 8, %.sroa.47.019
  %i.cj = and i64 %i.ci, %i.ca
  %.not.i.i43.2 = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i43.2, label %._crit_edge, label %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit

_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit: ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1, %_ZNKSt6bitsetILm4EE4testEm.exit.lr.ph.i.i
  %.sroa.47.1.lcssa = phi i64 [ %i.cb, %_ZNKSt6bitsetILm4EE4testEm.exit.lr.ph.i.i ], [ %i.ce, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1 ], [ %i.ch, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2 ]
  br label %.lr.ph

._crit_edge23:                                    ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.2, %.lr.ph22, %bb.j, %bb.k, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

.lr.ph22:                                         ; preds = %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit52, %.lr.ph22.preheader
  %.sroa.4.021 = phi i64 [ %.sroa.4.1.lcssa, %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit52 ], [ %.sroa.4.021.ph, %.lr.ph22.preheader ] ; 8 uses
  %i.ck = trunc nuw nsw i64 %.sroa.4.021 to i8
  call fastcc void @_ZZN12_GLOBAL__N_18Analyzer10followCallERKNS_12CallableInfoERNS_23PendingFunctionAnalysisES3_N5clang14SourceLocationEbNS_13ViolationSiteEENKUlNS6_14FunctionEffectEbE_clES9_b(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 %i.ck, i1 noundef zeroext true)
  %i.cl = icmp ult i64 %.sroa.4.021, 3
  br i1 %i.cl, label %_ZNKSt6bitsetILm4EE4testEm.exit.lr.ph.i.i48, label %._crit_edge23

_ZNKSt6bitsetILm4EE4testEm.exit.lr.ph.i.i48:      ; preds = %.lr.ph22
  %i.cm = load i64, ptr %i.bs, align 8, !tbaa !768 ; 3 uses
  %i.cn = add nuw nsw i64 %.sroa.4.021, 1
  %i.co = shl nuw nsw i64 2, %.sroa.4.021
  %i.cp = and i64 %i.co, %i.cm
  %.not.i.i50 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i50, label %bb.j, label %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit52

bb.j:                                             ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.lr.ph.i.i48
  %i.cq = add nuw nsw i64 %.sroa.4.021, 2         ; 2 uses
  %exitcond.not.i.i51 = icmp eq i64 %i.cq, 4
  br i1 %exitcond.not.i.i51, label %._crit_edge23, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.1

_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.1:          ; preds = %bb.j
  %i.cr = shl nuw nsw i64 4, %.sroa.4.021
  %i.cs = and i64 %i.cr, %i.cm
  %.not.i.i50.1 = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i50.1, label %bb.k, label %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit52

bb.k:                                             ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.1
  %i.ct = add nuw nsw i64 %.sroa.4.021, 3         ; 2 uses
  %exitcond.not.i.i51.1 = icmp eq i64 %i.ct, 4
  br i1 %exitcond.not.i.i51.1, label %._crit_edge23, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.2

_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.2:          ; preds = %bb.k
  %i.cu = shl nuw nsw i64 8, %.sroa.4.021
  %i.cv = and i64 %i.cu, %i.cm
  %.not.i.i50.2 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i50.2, label %._crit_edge23, label %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit52

_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit52: ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.2, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.1, %_ZNKSt6bitsetILm4EE4testEm.exit.lr.ph.i.i48
  %.sroa.4.1.lcssa = phi i64 [ %i.cn, %_ZNKSt6bitsetILm4EE4testEm.exit.lr.ph.i.i48 ], [ %i.cq, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.1 ], [ %i.ct, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.2 ]
  br label %.lr.ph22
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_18Analyzer16completeAnalysisERKNS_12CallableInfoEONS_23PendingFunctionAnalysisE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 4 uses
  %4 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %5 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 4 uses
  %8 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %9 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %10 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %11 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %12 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %13 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %14 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %15 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %16 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %18 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %19 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 4 uses
  %20 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %21 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %22 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %23 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %24 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 4 uses
  %25 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %26 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %27 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %28 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 4 uses
  %29 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %30 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 12 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %31 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 11 uses
  %32 = alloca %"struct.(anonymous namespace)::CallableInfo", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %34 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 13 uses
  %35 = alloca %"class.std::optional.1257", align 8 ; 8 uses
  %36 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 11 uses
  %37 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 11 uses
  %38 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 12 uses
  %39 = alloca %"class.clang::FunctionEffect", align 1 ; 4 uses
  %40 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 10 uses
  %41 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 12 uses
  %42 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 11 uses
  %43 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 12 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %44 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 13 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0.i.i25.i.i.i.i.i.i = alloca { %"class.clang::FunctionEffect", %"class.std::optional.1244", i8, [4 x i8], %"class.(anonymous namespace)::ViolationSite" }, align 8 ; 4 uses
  %.sroa.5.i.i26.i.i.i.i.i.i = alloca [12 x i8], align 4 ; 4 uses
  %47 = alloca %"struct.(anonymous namespace)::Violation", align 8 ; 4 uses
  %.sroa.0.i.i11.i.i.i.i.i.i = alloca { %"class.clang::FunctionEffect", %"class.std::optional.1244", i8, [4 x i8], %"class.(anonymous namespace)::ViolationSite" }, align 8 ; 4 uses
  %.sroa.5.i.i12.i.i.i.i.i.i = alloca [12 x i8], align 4 ; 4 uses
  %.sroa.0.i.i.i.i.i.i.i.i = alloca { %"class.clang::FunctionEffect", %"class.std::optional.1244", i8, [4 x i8], %"class.(anonymous namespace)::ViolationSite" }, align 8 ; 4 uses
  %.sroa.5.i.i.i.i.i.i.i.i = alloca [12 x i8], align 4 ; 4 uses
  %48 = alloca %"struct.(anonymous namespace)::Violation", align 8 ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !793, !nonnull !39, !align !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !764, !nonnull !39, !align !42 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !77   ; 4 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_18Analyzer15emitDiagnosticsEN4llvm8ArrayRefINS_9ViolationEEERKNS_12CallableInfoE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !76 ; 17 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.m, 5
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i.i ; 3 uses
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = xor i64 %i.q, 126
  tail call fastcc void @_ZSt16__introsort_loopIPN12_GLOBAL__N_19ViolationElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_23PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerEEUlRKS1_SB_E_EEEvT_SE_T0_T1_(ptr noundef %.val.i, ptr noundef nonnull %i.n, i64 noundef %i.r, ptr nonnull align 8 dereferenceable(776) %i.i)
  %i.s = icmp ugt i32 %i.l, 16
  br i1 %i.s, label %bb.c, label %.preheader.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %.val.i, i64 16
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.val.i, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.021.i.idx.i.i.i.i.i.i = phi i64 [ 32, %bb.c ], [ %.021.i.add.i.i.i.i.i.i, %bb.i ] ; 4 uses
  %.pn20.i.i.i.i.i.i.i = phi ptr [ %.val.i, %bb.c ], [ %.021.i.ptr.i.i.i.i.i.i, %bb.i ] ; 4 uses
  %.021.i.ptr.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.021.i.idx.i.i.i.i.i.i ; 5 uses
  %i.u = getelementptr i8, ptr %.pn20.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.0.val.i.i.i.i.i.i.i = load i32, ptr %i.u, align 8, !tbaa !41
  %.val17.i.i.i.i.i.i.i = load i32, ptr %i.t, align 8, !tbaa !41
  %i.v = tail call noundef zeroext i1 @_ZNK5clang13SourceManager25isBeforeInTranslationUnitENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(776) %i.i, i32 %.0.val.i.i.i.i.i.i.i, i32 %.val17.i.i.i.i.i.i.i) #20
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(32) %.021.i.ptr.i.i.i.i.i.i, i64 32, i1 false)
  %i.w = icmp samesign ugt i64 %.021.i.idx.i.i.i.i.i.i, 32
  br i1 %i.w, label %bb.f, label %bb.g, !prof !767

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val.i, i64 %.021.i.idx.i.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIPN12_GLOBAL__N_19ViolationES2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val.i, i64 32, i1 false)
  br label %_ZSt13move_backwardIPN12_GLOBAL__N_19ViolationES2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i

_ZSt13move_backwardIPN12_GLOBAL__N_19ViolationES2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.val.i, ptr noundef nonnull align 8 dereferenceable(32) %48, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %48)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.021.i.ptr.i.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.u, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i.i, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, i64 12, i1 false)
  %i.y = getelementptr i8, ptr %.pn20.i.i.i.i.i.i.i, i64 16
  %.0.val13.i.i.i.i.i.i.i.i = load i32, ptr %i.y, align 8, !tbaa !41
  %i.z = tail call noundef zeroext i1 @_ZNK5clang13SourceManager25isBeforeInTranslationUnitENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(776) %i.i, i32 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i32 %.0.val13.i.i.i.i.i.i.i.i) #20
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_19ViolationEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_23PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerEEUlRKS1_SB_E_EEEvT_T0_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i
  %.0914.i.i.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.021.i.ptr.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0914.i.i.i.i.i.i.i.i, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0914.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i.i.i.i.i.i.i, i64 32, i1 false)
  %i.aa = getelementptr i8, ptr %.0914.i.i.i.i.i.i.i.i, i64 -48
  %.0.val.i.i.i.i.i.i.i.i = load i32, ptr %i.aa, align 8, !tbaa !41
  %i.ab = tail call noundef zeroext i1 @_ZNK5clang13SourceManager25isBeforeInTranslationUnitENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(776) %i.i, i32 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i32 %.0.val.i.i.i.i.i.i.i.i) #20
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_19ViolationEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_23PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerEEUlRKS1_SB_E_EEEvT_T0_.exit.i.i.i.i.i.i.i, !llvm.loop !1028

_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_19ViolationEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_23PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerEEUlRKS1_SB_E_EEEvT_T0_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.h
  %.09.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %.021.i.ptr.i.i.i.i.i.i, %bb.h ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.lcssa.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..09.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i.i.i.i.i, i64 16
  store i32 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..09.sroa_idx.i.i.i.i.i.i.i.i, align 8
  %.sroa.5.0..09.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i.i.i.i.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..09.sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i.i.i.i.i.i.i, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i)
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_19ViolationEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_23PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerEEUlRKS1_SB_E_EEEvT_T0_.exit.i.i.i.i.i.i.i, %_ZSt13move_backwardIPN12_GLOBAL__N_19ViolationES2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i
  %.021.i.add.i.i.i.i.i.i = add nuw nsw i64 %.021.i.idx.i.i.i.i.i.i, 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.021.i.add.i.i.i.i.i.i, 512
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt16__insertion_sortIPN12_GLOBAL__N_19ViolationEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_23PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerEEUlRKS1_SB_E_EEEvT_SE_T0_.exit.i.i.i.i.i.i, label %bb.d, !llvm.loop !1029

_ZSt16__insertion_sortIPN12_GLOBAL__N_19ViolationEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_23PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerEEUlRKS1_SB_E_EEEvT_SE_T0_.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 512
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_19ViolationEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_23PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerEEUlRKS1_SB_E_EEEvT_T0_.exit.i16.i.i.i.i.i.i, %_ZSt16__insertion_sortIPN12_GLOBAL__N_19ViolationEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_23PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerEEUlRKS1_SB_E_EEEvT_SE_T0_.exit.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_19ViolationEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_23PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerEEUlRKS1_SB_E_EEEvT_T0_.exit.i16.i.i.i.i.i.i ], [ %i.ac, %_ZSt16__insertion_sortIPN12_GLOBAL__N_19ViolationEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_23PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerEEUlRKS1_SB_E_EEEvT_SE_T0_.exit.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i11.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i11.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i13.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i14.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i12.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i14.i.i.i.i.i.i, i64 12, i1 false)
  %i.ad = getelementptr i8, ptr %.08.i.i.i.i.i.i.i, i64 -16
  %.0.val13.i.i15.i.i.i.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !41
  %i.ae = tail call noundef zeroext i1 @_ZNK5clang13SourceManager25isBeforeInTranslationUnitENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(776) %i.i, i32 %.sroa.4.0.copyload.i.i13.i.i.i.i.i.i, i32 %.0.val13.i.i15.i.i.i.i.i.i) #20
  br i1 %i.ae, label %.lr.ph.i.i21.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_19ViolationEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_23PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerEEUlRKS1_SB_E_EEEvT_T0_.exit.i16.i.i.i.i.i.i

.lr.ph.i.i21.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i21.i.i.i.i.i.i
  %.0914.i.i22.i.i.i.i.i.i = phi ptr [ %.0.i.i23.i.i.i.i.i.i, %.lr.ph.i.i21.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %.0.i.i23.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0914.i.i22.i.i.i.i.i.i, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0914.i.i22.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i23.i.i.i.i.i.i, i64 32, i1 false)
  %i.af = getelementptr i8, ptr %.0914.i.i22.i.i.i.i.i.i, i64 -48
  %.0.val.i.i24.i.i.i.i.i.i = load i32, ptr %i.af, align 8, !tbaa !41
  %i.ag = tail call noundef zeroext i1 @_ZNK5clang13SourceManager25isBeforeInTranslationUnitENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(776) %i.i, i32 %.sroa.4.0.copyload.i.i13.i.i.i.i.i.i, i32 %.0.val.i.i24.i.i.i.i.i.i) #20
  br i1 %i.ag, label %.lr.ph.i.i21.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_19ViolationEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_23PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerEEUlRKS1_SB_E_EEEvT_T0_.exit.i16.i.i.i.i.i.i, !llvm.loop !1028

_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_19ViolationEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_23PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerEEUlRKS1_SB_E_EEEvT_T0_.exit.i16.i.i.i.i.i.i: ; preds = %.lr.ph.i.i21.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.lcssa.i.i17.i.i.i.i.i.i = phi ptr [ %.08.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i23.i.i.i.i.i.i, %.lr.ph.i.i21.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.lcssa.i.i17.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i11.i.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..09.sroa_idx.i.i18.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i17.i.i.i.i.i.i, i64 16
  store i32 %.sroa.4.0.copyload.i.i13.i.i.i.i.i.i, ptr %.sroa.4.0..09.sroa_idx.i.i18.i.i.i.i.i.i, align 8
  %.sroa.5.0..09.sroa_idx.i.i19.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i17.i.i.i.i.i.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..09.sroa_idx.i.i19.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i12.i.i.i.i.i.i, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i11.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i.i.i.i.i.i)
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i20.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.n
  br i1 %.not.i20.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_123PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerE.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1030

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.b
  %.not19.i.i.i.i.i.i.i = icmp eq i32 %i.l, 1
  br i1 %.not19.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_123PendingFunctionAnalysis37getSortedViolationsForExplicitEffectsERN5clang13SourceManagerE.exit, label %.lr.ph.i28.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE26VisitArrayParameterTypeLocENS_21ArrayParameterTypeLocE

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE31VisitDependentSizedArrayTypeLocENS_26DependentSizedArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitIncompleteArrayTypeLocENS_22IncompleteArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE25VisitVariableArrayTypeLocENS_20VariableArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE18VisitAtomicTypeLocENS_13AtomicTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE22VisitAttributedTypeLocENS_17AttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE28VisitBTFTagAttributedTypeLocENS_23BTFTagAttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE18VisitBitIntTypeLocENS_13BitIntTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE24VisitBlockPointerTypeLocENS_19BlockPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE28VisitBoundsAttributedTypeLocENS_23BoundsAttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitCountAttributedTypeLocENS_22CountAttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE19VisitBuiltinTypeLocENS_14BuiltinTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE19VisitComplexTypeLocENS_14ComplexTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE20VisitDecltypeTypeLocENS_15DecltypeTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE19VisitDeducedTypeLocENS_14DeducedTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE16VisitAutoTypeLocENS_11AutoTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE41VisitDeducedTemplateSpecializationTypeLocENS_36DeducedTemplateSpecializationTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE33VisitDependentAddressSpaceTypeLocENS_28DependentAddressSpaceTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitDependentBitIntTypeLocENS_22DependentBitIntTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE25VisitDependentNameTypeLocENS_20DependentNameTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE35VisitDependentSizedExtVectorTypeLocENS_30DependentSizedExtVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitDependentVectorTypeLocENS_22DependentVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE20VisitFunctionTypeLocENS_15FunctionTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitFunctionNoProtoTypeLocENS_22FunctionNoProtoTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE25VisitFunctionProtoTypeLocENS_20FunctionProtoTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE34VisitHLSLAttributedResourceTypeLocENS_29HLSLAttributedResourceTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitHLSLInlineSpirvTypeLocENS_22HLSLInlineSpirvTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE26VisitMacroQualifiedTypeLocENS_21MacroQualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE18VisitMatrixTypeLocENS_13MatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE26VisitConstantMatrixTypeLocENS_21ConstantMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE32VisitDependentSizedMatrixTypeLocENS_27DependentSizedMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE25VisitMemberPointerTypeLocENS_20MemberPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE29VisitObjCObjectPointerTypeLocENS_24ObjCObjectPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE22VisitObjCObjectTypeLocENS_17ObjCObjectTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE25VisitObjCInterfaceTypeLocENS_20ObjCInterfaceTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE25VisitObjCTypeParamTypeLocENS_20ObjCTypeParamTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE28VisitOverflowBehaviorTypeLocENS_23OverflowBehaviorTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE25VisitPackExpansionTypeLocENS_20PackExpansionTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE24VisitPackIndexingTypeLocENS_19PackIndexingTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE17VisitParenTypeLocENS_12ParenTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE16VisitPipeTypeLocENS_11PipeTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE19VisitPointerTypeLocENS_14PointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitPredefinedSugarTypeLocENS_22PredefinedSugarTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE21VisitReferenceTypeLocENS_16ReferenceTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitLValueReferenceTypeLocENS_22LValueReferenceTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitRValueReferenceTypeLocENS_22RValueReferenceTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE21VisitSubstPackTypeLocENS_16SubstPackTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE36VisitSubstBuiltinTemplatePackTypeLocENS_31SubstBuiltinTemplatePackTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE37VisitSubstTemplateTypeParmPackTypeLocENS_32SubstTemplateTypeParmPackTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE33VisitSubstTemplateTypeParmTypeLocENS_28SubstTemplateTypeParmTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE15VisitTagTypeLocENS_10TagTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE16VisitEnumTypeLocENS_11EnumTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE29VisitInjectedClassNameTypeLocENS_24InjectedClassNameTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE18VisitRecordTypeLocENS_13RecordTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE34VisitTemplateSpecializationTypeLocENS_29TemplateSpecializationTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE28VisitTemplateTypeParmTypeLocENS_23TemplateTypeParmTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE22VisitTypeOfExprTypeLocENS_17TypeOfExprTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE18VisitTypeOfTypeLocENS_13TypeOfTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE19VisitTypedefTypeLocENS_14TypedefTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE26VisitUnaryTransformTypeLocENS_21UnaryTransformTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitUnresolvedUsingTypeLocENS_22UnresolvedUsingTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE17VisitUsingTypeLocENS_12UsingTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE18VisitVectorTypeLocENS_13VectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE21VisitExtVectorTypeLocENS_16ExtVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE30TraverseConstructorInitializerEPNS_18CXXCtorInitializerE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE12TraverseStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_18Analyzer22FunctionBodyASTVisitor25diagnoseLanguageConstructEN5clang14FunctionEffect7FlagBitENS_11ViolationIDENS2_14SourceLocationEPKNS2_4DeclE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef range(i32 2, 33) %1, i8 noundef zeroext range(i8 2, 6) %2, i32 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.(anonymous namespace)::Violation", align 8 ; 9 uses
  %5 = alloca %"struct.(anonymous namespace)::Violation", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !930  ; 9 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !768  ; 7 uses
  %i.d = and i64 %i.c, 1
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i, label %.lr.ph.preheader

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i:          ; preds = %bb.a
  %i.e = and i64 %i.c, 2
  %.not.i.i.1.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.1.i, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i, label %.lr.ph.preheader

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i:          ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i
  %i.f = and i64 %i.c, 4
  %.not.i.i.2.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.2.i, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i, label %.lr.ph.preheader

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i:          ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i
  %i.g = and i64 %i.c, 8
  %.not.i.i.3.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.3.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i, %bb.a, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i
  %.sroa.411.018.ph = phi i64 [ 2, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i ], [ 0, %bb.a ], [ 1, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i ], [ 3, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit, %.lr.ph.preheader
  %.sroa.411.018 = phi i64 [ %.sroa.411.1.lcssa, %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit ], [ %.sroa.411.018.ph, %.lr.ph.preheader ] ; 10 uses
  %i.h = icmp ult i64 %.sroa.411.018, 4
  tail call void @llvm.assume(i1 %i.h)
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_18Analyzer22FunctionBodyASTVisitor25diagnoseLanguageConstructEN5clang14FunctionEffect7FlagBitENS_11ViolationIDENS2_14SourceLocationEPKNS2_4DeclE.138, i64 %.sroa.411.018
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.i = and i32 %1, %switch.ext
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %.sroa.411.018 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val22 = load i64, ptr %i.k, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i8 %i.j, ptr %5, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i16 0, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 %2, ptr %i.m, align 1, !tbaa !846
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.val22, ptr %i.n, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %3, ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.p, align 8, !tbaa !847
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !77   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !766
  %.not.i.i.i25 = icmp ult i32 %i.s, %i.u
  br i1 %.not.i.i.i25, label %bb.d, label %bb.c, !prof !767

bb.c:                                             ; preds = %bb.b
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_19ViolationELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(32) %5)
  br label %_ZN12_GLOBAL__N_18Analyzer22FunctionBodyASTVisitor12addViolationEbN5clang14FunctionEffectENS_11ViolationIDENS2_14SourceLocationEPKNS2_4DeclE.exit

bb.d:                                             ; preds = %bb.b
  %i.v = zext i32 %i.s to i64
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.x = load i32, ptr %i.r, align 8, !tbaa !77
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.r, align 8, !tbaa !77
  br label %_ZN12_GLOBAL__N_18Analyzer22FunctionBodyASTVisitor12addViolationEbN5clang14FunctionEffectENS_11ViolationIDENS2_14SourceLocationEPKNS2_4DeclE.exit

_ZN12_GLOBAL__N_18Analyzer22FunctionBodyASTVisitor12addViolationEbN5clang14FunctionEffectENS_11ViolationIDENS2_14SourceLocationEPKNS2_4DeclE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !930
  br label %.loopexit

.critedge:                                        ; preds = %.lr.ph
  %.not60 = icmp eq i64 %.sroa.411.018, 3
  br i1 %.not60, label %.loopexit, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i

_ZNKSt6bitsetILm4EE4testEm.exit.i.i:              ; preds = %.critedge
  %i.z = add nuw nsw i64 %.sroa.411.018, 1
  %i.aa = shl nuw nsw i64 2, %.sroa.411.018
  %i.ab = and i64 %i.aa, %i.c
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit

bb.e:                                             ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i
  %i.ac = add nuw nsw i64 %.sroa.411.018, 2       ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, 4
  br i1 %exitcond.not.i.i, label %.loopexit, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1:            ; preds = %bb.e
  %i.ad = shl nuw nsw i64 4, %.sroa.411.018
  %i.ae = and i64 %i.ad, %i.c
  %.not.i.i.1 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.1, label %bb.f, label %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit

bb.f:                                             ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1
  %i.af = add nuw nsw i64 %.sroa.411.018, 3       ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.af, 4
  br i1 %exitcond.not.i.i.1, label %.loopexit, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2:            ; preds = %bb.f
  %i.ag = shl nuw nsw i64 8, %.sroa.411.018
  %i.ah = and i64 %i.ag, %i.c
  %.not.i.i.2 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.2, label %.loopexit, label %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit

_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit: ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i
  %.sroa.411.1.lcssa = phi i64 [ %i.z, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i ], [ %i.ac, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1 ], [ %i.af, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2 ]
  br label %.lr.ph

.loopexit:                                        ; preds = %.critedge, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2, %bb.e, %bb.f, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i, %_ZN12_GLOBAL__N_18Analyzer22FunctionBodyASTVisitor12addViolationEbN5clang14FunctionEffectENS_11ViolationIDENS2_14SourceLocationEPKNS2_4DeclE.exit
  %6 = phi ptr [ %i.b, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i ], [ %.pre, %_ZN12_GLOBAL__N_18Analyzer22FunctionBodyASTVisitor12addViolationEbN5clang14FunctionEffectENS_11ViolationIDENS2_14SourceLocationEPKNS2_4DeclE.exit ], [ %i.b, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2 ], [ %i.b, %bb.f ], [ %i.b, %bb.e ], [ %i.b, %.critedge ]
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !768 ; 4 uses
  %i.ak = and i64 %i.aj, 1
  %.not.i.i.i28 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i28, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i32, label %.lr.ph21

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i32:        ; preds = %.loopexit
  %i.al = and i64 %i.aj, 2
  %.not.i.i.1.i33 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.1.i33, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i34, label %.lr.ph21

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i34:        ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i32
  %i.am = and i64 %i.aj, 4
  %.not.i.i.2.i35 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.2.i35, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i36, label %.lr.ph21

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i36:        ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i34
  %i.an = and i64 %i.aj, 8
  %.not.i.i.3.i37 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.3.i37, label %._crit_edge, label %.lr.ph21

.lr.ph21:                                         ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i34, %.loopexit, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i32, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i36
  %.sroa.2.1.i29.ph = phi i64 [ 3, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i36 ], [ 1, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.1.i32 ], [ 0, %.loopexit ], [ 2, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.2.i34 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %switch.lookup

._crit_edge:                                      ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.2, %bb.h, %bb.i, %bb.j, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.3.i36
  ret void

switch.lookup:                                    ; preds = %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit52, %.lr.ph21
  %.sroa.4.020 = phi i64 [ %.sroa.2.1.i29.ph, %.lr.ph21 ], [ %.sroa.4.1.lcssa, %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit52 ] ; 9 uses
  %switch.gep57 = getelementptr inbounds i8, ptr @switch.table._ZN12_GLOBAL__N_18Analyzer22FunctionBodyASTVisitor25diagnoseLanguageConstructEN5clang14FunctionEffect7FlagBitENS_11ViolationIDENS2_14SourceLocationEPKNS2_4DeclE.138, i64 %.sroa.4.020
  %switch.load58 = load i8, ptr %switch.gep57, align 1
  %switch.ext59 = zext i8 %switch.load58 to i32
  %i.au = and i32 %1, %switch.ext59
  %.not19 = icmp eq i32 %i.au, 0
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %switch.lookup
  %i.av = trunc nuw nsw i64 %.sroa.4.020 to i8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !930
  %.val20 = load i64, ptr %i.ao, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 %i.av, ptr %4, align 8, !tbaa !36
  store i16 0, ptr %i.ap, align 1
  store i8 %2, ptr %i.aq, align 1, !tbaa !846
  store i64 %.val20, ptr %i.ar, align 8, !tbaa !49
  store i32 %3, ptr %i.as, align 8, !tbaa !41
  store ptr null, ptr %i.at, align 8, !tbaa !847
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 32
  call fastcc void @_ZN12_GLOBAL__N_120EffectToViolationMap11maybeInsertERKNS_9ViolationE(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %switch.lookup
  %i.ax = icmp ult i64 %.sroa.4.020, 3
  br i1 %i.ax, label %_ZNKSt6bitsetILm4EE4testEm.exit.lr.ph.i.i48, label %._crit_edge

_ZNKSt6bitsetILm4EE4testEm.exit.lr.ph.i.i48:      ; preds = %bb.h
  %i.ay = load i64, ptr %i.ai, align 8, !tbaa !768 ; 3 uses
  %i.az = add nuw nsw i64 %.sroa.4.020, 1
  %i.ba = shl nuw nsw i64 2, %.sroa.4.020
  %i.bb = and i64 %i.ba, %i.ay
  %.not.i.i50 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i50, label %bb.i, label %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit52

bb.i:                                             ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.lr.ph.i.i48
  %i.bc = add nuw nsw i64 %.sroa.4.020, 2         ; 2 uses
  %exitcond.not.i.i51 = icmp eq i64 %i.bc, 4
  br i1 %exitcond.not.i.i51, label %._crit_edge, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.1

_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.1:          ; preds = %bb.i
  %i.bd = shl nuw nsw i64 4, %.sroa.4.020
  %i.be = and i64 %i.bd, %i.ay
  %.not.i.i50.1 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i50.1, label %bb.j, label %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit52

bb.j:                                             ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.1
  %i.bf = add nuw nsw i64 %.sroa.4.020, 3         ; 2 uses
  %exitcond.not.i.i51.1 = icmp eq i64 %i.bf, 4
  br i1 %exitcond.not.i.i51.1, label %._crit_edge, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.2

_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.2:          ; preds = %bb.j
  %i.bg = shl nuw nsw i64 8, %.sroa.4.020
  %i.bh = and i64 %i.bg, %i.ay
  %.not.i.i50.2 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i50.2, label %._crit_edge, label %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit52

_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit52: ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.2, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.1, %_ZNKSt6bitsetILm4EE4testEm.exit.lr.ph.i.i48
  %.sroa.4.1.lcssa = phi i64 [ %i.az, %_ZNKSt6bitsetILm4EE4testEm.exit.lr.ph.i.i48 ], [ %i.bc, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.1 ], [ %i.bf, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i49.2 ]
  br label %switch.lookup
}

declare noundef i32 @_ZNK5clang7VarDecl16needsDestructionERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_18Analyzer22FunctionBodyASTVisitor14followTypeDtorEN5clang8QualTypeENS2_14SourceLocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i64 %1, i32 %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.(anonymous namespace)::CallableInfo", align 8 ; 4 uses
  %.0.in.in26 = and i64 %1, -16
  %.0.in27 = inttoptr i64 %.0.in.in26 to ptr
  %.028 = load ptr, ptr %.0.in27, align 16, !tbaa !797 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %.sroa.0.0.copyload.i.i.i.i29 = load i64, ptr %i.a, align 8, !tbaa !49
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i.i29, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !797 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 16              ; 2 uses
  %i.g = add i8 %i.f, -2
  %switch.i.i.i.i.i.i.i.i.i30 = icmp ult i8 %i.g, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i30, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit
  %.031 = phi ptr [ %.0, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit ], [ %.028, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.i = load i8, ptr %i.h, align 16
  %i.j = add i8 %i.i, -7
  %switch.i.i.i.i.i.i.i.i.i16 = icmp ult i8 %i.j, -5
  br i1 %switch.i.i.i.i.i.i.i.i.i16, label %bb.b, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit

bb.b:                                             ; preds = %.lr.ph
  %i.k = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %.031) #20
  br label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit:     ; preds = %.lr.ph, %bb.b
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %.031, %.lr.ph ]
  %i.l = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 16, !tbaa !49
  %.0.in.in = and i64 %.sroa.0.0.copyload.i, -16
  %.0.in = inttoptr i64 %.0.in.in to ptr
  %.0 = load ptr, ptr %.0.in, align 16, !tbaa !797 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !49
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !797 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.q, align 16              ; 2 uses
  %i.s = add i8 %i.r, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.s, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit, %bb.a
  %.lcssa25 = phi ptr [ %i.d, %bb.a ], [ %i.p, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit ]
  %.lcssa = phi i8 [ %i.f, %bb.a ], [ %i.r, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit ]
  %i.t = icmp eq i8 %.lcssa, 49
  br i1 %i.t, label %bb.c, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

bb.c:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa25, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !857  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 127
  %i.z = add nsw i32 %i.y, -60
  %i.aa = icmp ult i32 %i.z, 3
  br i1 %i.aa, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %bb.c
  %i.ab = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.v) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ab, null
  %spec.select = select i1 %.not.not.i.i, ptr %i.v, ptr %i.ab
  %i.ac = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDestructorEv(ptr noundef nonnull align 8 dereferenceable(144) %spec.select) #20 ; 4 uses
  %.not15 = icmp eq ptr %i.ac, null
  br i1 %.not15, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !68
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(168) %i.ac) #20, !inline_history !1127
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 4194304
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.e, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call fastcc void @_ZN12_GLOBAL__N_112CallableInfoC2ERKN5clang4DeclENS_15SpecialFuncTypeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(33) %i.ac, i8 noundef zeroext 0)
  call fastcc void @_ZN12_GLOBAL__N_18Analyzer22FunctionBodyASTVisitor10followCallERNS_12CallableInfoEN5clang14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread: ; preds = %bb.c, %bb.e, %bb.d, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %._crit_edge
  ret void
}

declare noundef ptr @_ZN5clang11DeclContext16getRedeclContextEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang13CXXRecordDecl13getDestructorEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_18Analyzer22FunctionBodyASTVisitor10followCallERNS_12CallableInfoEN5clang14SourceLocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !787    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 127
  %i.e = add nsw i32 %i.d, -41
  %i.f = icmp ult i32 %i.e, -6
  %.not26 = icmp eq ptr %i.a, null
  %.not = or i1 %.not26, %i.f
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZNK5clang12FunctionDecl12getBuiltinIDEb(ptr noundef nonnull align 8 dereferenceable(168) %i.a, i1 noundef zeroext false) #20
  switch i32 %i.g, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit [
    i32 0, label %bb.d
    i32 1652, label %bb.c
    i32 225, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread
    i32 235, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread
    i32 245, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread
    i32 232, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread
    i32 241, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread
    i32 242, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread
    i32 136, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread
    i32 275, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread
    i32 1016, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread
    i32 1026, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread
    i32 1158, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread
    i32 667, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread
    i32 662, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread
    i32 1144, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread
    i32 214, label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread
    i32 983, label %bb.c
    i32 679, label %bb.c
    i32 1259, label %bb.c
    i32 234, label %bb.c
    i32 1107, label %bb.c
    i32 1113, label %bb.c
    i32 1115, label %bb.c
    i32 1114, label %bb.c
    i32 1116, label %bb.c
    i32 1117, label %bb.c
    i32 1110, label %bb.c
    i32 1111, label %bb.c
    i32 1104, label %bb.c
    i32 1101, label %bb.c
    i32 1100, label %bb.c
    i32 1120, label %bb.c
    i32 1121, label %bb.c
    i32 1053, label %bb.c
    i32 1054, label %bb.c
    i32 666, label %bb.c
    i32 677, label %bb.c
    i32 1142, label %bb.c
    i32 244, label %bb.c
    i32 583, label %bb.c
    i32 1298, label %bb.c
    i32 1230, label %bb.c
    i32 1647, label %bb.c
    i32 1662, label %bb.c
    i32 1666, label %bb.c
    i32 1664, label %bb.c
    i32 1251, label %bb.c
    i32 586, label %bb.c
    i32 1233, label %bb.c
    i32 1654, label %bb.c
    i32 1644, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread

_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit.thread: ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.c
  %.sroa.02.0.i.ph = phi i64 [ 4, %bb.c ], [ 8, %bb.b ], [ 8, %bb.b ], [ 8, %bb.b ], [ 8, %bb.b ], [ 8, %bb.b ], [ 8, %bb.b ], [ 8, %bb.b ], [ 8, %bb.b ], [ 8, %bb.b ], [ 8, %bb.b ], [ 8, %bb.b ], [ 8, %bb.b ], [ 8, %bb.b ], [ 8, %bb.b ], [ 8, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.02.0.i.ph, ptr %i.h, align 8
  br label %.critedge

_ZN12_GLOBAL__N_125getBuiltinFunctionEffectsEj.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.i, align 8
  br label %.critedge.thread

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZNK5clang12FunctionDecl10isNoReturnEv(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #20
  br i1 %i.j, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !917, !nonnull !39, !align !42
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !793, !nonnull !39, !align !42
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !794, !nonnull !39, !align !42
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, 4096
  %.not18 = icmp eq i64 %i.q, 0
  br i1 %.not18, label %.critedge.thread, label %bb.f
end_hunk_1
