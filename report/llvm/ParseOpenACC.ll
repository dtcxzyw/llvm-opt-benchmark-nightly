Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ParseOpenACC?download=true
inline.NumInlined: 2411
inline.NumDeleted: 1038
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindE:bb.a
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !978
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.z
  br label %_ZN5clang6Parser9NextTokenEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang12Preprocessor9PeekAheadEj(ptr noundef nonnull align 8 dereferenceable(3344) %i.x, i32 noundef 1) #17
  br label %_ZN5clang6Parser9NextTokenEv.exit

_ZN5clang6Parser9NextTokenEv.exit:                ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.ah, %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !979
  %i.ak = icmp eq i16 %i.aj, 67
  br i1 %i.ak, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZN5clang6Parser9NextTokenEv.exit
  %i.al = load i32, ptr %i.d, align 8, !tbaa !980
  store i32 %i.al, ptr %i.n, align 8, !tbaa !769
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !778, !nonnull !94, !align !95
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.am, ptr noundef nonnull align 8 dereferenceable(20) %i.d) #17
  %i.an = load i32, ptr %i.d, align 8, !tbaa !980
  store i32 %i.an, ptr %i.n, align 8, !tbaa !769
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !778, !nonnull !94, !align !95
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ao, ptr noundef nonnull align 8 dereferenceable(20) %i.d) #17
  br label %bb.b, !llvm.loop !1107

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %_ZN5clang6Parser9NextTokenEv.exit
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.118.0..sroa_idx, align 8, !tbaa !771 ; 2 uses
  %.sroa.2.0.copyload = load i16, ptr %.sroa.219.0..sroa_idx, align 8, !tbaa !773 ; 4 uses
  %i.ap = icmp eq i16 %.sroa.2.0.copyload, 5
  br i1 %i.ap, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.aq = tail call noundef zeroext i1 @_ZN5clang3tok12isAnnotationENS0_9TokenKindE(i16 noundef zeroext %.sroa.2.0.copyload) #17
  br i1 %i.aq, label %_ZN12_GLOBAL__N_126isTokenIdentifierOrKeywordERN5clang6ParserENS0_5TokenE.exit12, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = add i16 %.sroa.2.0.copyload, -7
  %i.as = icmp ult i16 %i.ar, 13
  %i.at = icmp eq i16 %.sroa.2.0.copyload, 1
  %or.cond.i.i8 = or i1 %i.at, %i.as
  %.not1.i9 = icmp eq ptr %.sroa.1.0.copyload, null
  %.not.i10 = select i1 %or.cond.i.i8, i1 true, i1 %.not1.i9
  br i1 %.not.i10, label %_ZN12_GLOBAL__N_126isTokenIdentifierOrKeywordERN5clang6ParserENS0_5TokenE.exit12, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !778, !nonnull !94, !align !95
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !976, !nonnull !94, !align !95
  %i.ax = tail call noundef zeroext i1 @_ZNK5clang14IdentifierInfo9isKeywordERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1.0.copyload, ptr noundef nonnull align 8 dereferenceable(1136) %i.aw) #17
  br i1 %i.ax, label %bb.m, label %_ZN12_GLOBAL__N_126isTokenIdentifierOrKeywordERN5clang6ParserENS0_5TokenE.exit12

bb.m:                                             ; preds = %.critedge, %bb.l
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !778, !nonnull !94, !align !95 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2960
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !977 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 2928
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !776
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp ult i64 %i.ba, %i.bd
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 2920
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !978
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.ba
  br label %_ZN5clang6Parser9NextTokenEv.exit14

bb.o:                                             ; preds = %bb.m
  %i.bi = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang12Preprocessor9PeekAheadEj(ptr noundef nonnull align 8 dereferenceable(3344) %i.ay, i32 noundef 1) #17
  br label %_ZN5clang6Parser9NextTokenEv.exit14

_ZN5clang6Parser9NextTokenEv.exit14:              ; preds = %bb.n, %bb.o
  %.0.i.i13 = phi ptr [ %i.bh, %bb.n ], [ %i.bi, %bb.o ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i13, i64 16
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !979
  %i.bl = icmp eq i16 %i.bk, 63
  br label %_ZN12_GLOBAL__N_126isTokenIdentifierOrKeywordERN5clang6ParserENS0_5TokenE.exit12

_ZN12_GLOBAL__N_126isTokenIdentifierOrKeywordERN5clang6ParserENS0_5TokenE.exit12: ; preds = %bb.l, %bb.k, %bb.j, %_ZN5clang6Parser9NextTokenEv.exit14
  %.0 = phi i1 [ %i.bl, %_ZN5clang6Parser9NextTokenEv.exit14 ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ]
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !778, !nonnull !94, !align !95
  tail call void @_ZN5clang12Preprocessor9BacktrackEv(ptr noundef nonnull align 8 dereferenceable(3344) %i.bm) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false), !tbaa.struct !1110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10, i64 20, i1 false), !tbaa.struct !775
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2672 ; 2 uses
  %i.bo = load i32, ptr %i.e, align 8, !tbaa !776 ; 3 uses
  %i.bp = icmp eq i32 %i.f, %i.bo
  br i1 %i.bp, label %_ZN5clang6Parser31RevertingTentativeParsingActionD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_126isTokenIdentifierOrKeywordERN5clang6ParserENS0_5TokenE.exit12
  %i.bq = icmp ult i32 %i.f, %i.bo
  br i1 %i.bq, label %.sink.split.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2684
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !982
  %i.bt = icmp ugt i32 %i.f, %i.bs
  br i1 %i.bt, label %bb.r, label %_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2688
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull %i.bu, i64 noundef %i.g, i64 noundef 8) #17
  %.pre.i.i.i.i = load i32, ptr %i.e, align 8, !tbaa !776
  br label %_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.pre-phi.i.i.i.i.in = phi i32 [ %i.bo, %bb.q ], [ %.pre.i.i.i.i, %bb.r ] ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.f, %.pre-phi.i.i.i.i.in
  br i1 %.not11.i.i.i.i, label %.sink.split.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i.i
  %.pre-phi.i.i.i.i = zext i32 %.pre-phi.i.i.i.i.in to i64 ; 2 uses
  %i.bv = load ptr, ptr %i.bn, align 8, !tbaa !978
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %.pre-phi.i.i.i.i
  %i.bx = sub nsw i64 %i.g, %.pre-phi.i.i.i.i
  %i.by = shl nsw i64 %i.bx, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bw, i8 0, i64 %i.by, i1 false), !tbaa !983
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.lr.ph.preheader.i.i.i.i, %_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i.i, %bb.p
  store i32 %i.f, ptr %i.e, align 8, !tbaa !776
  br label %_ZN5clang6Parser31RevertingTentativeParsingActionD2Ev.exit

_ZN5clang6Parser31RevertingTentativeParsingActionD2Ev.exit: ; preds = %_ZN12_GLOBAL__N_126isTokenIdentifierOrKeywordERN5clang6ParserENS0_5TokenE.exit12, %.sink.split.i.i.i.i
  store <2 x i16> %i.i, ptr %i.h, align 8, !tbaa !774
  store i16 %i.k, ptr %i.j, align 4, !tbaa !777
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br i1 %.0, label %bb.s, label %bb.x

bb.s:                                             ; preds = %_ZN5clang6Parser31RevertingTentativeParsingActionD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i8 0, ptr %i.b, align 1, !tbaa !985
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %0, ptr %3, align 8, !tbaa !988
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.bz, align 8, !tbaa !771
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %i.ca, align 8, !tbaa !771
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.b, ptr %i.cb, align 8, !tbaa !771
  br label %bb.t

bb.t:                                             ; preds = %_ZN5clang6Parser9NextTokenEv.exit16, %bb.s
  %i.cc = load ptr, ptr %i.l, align 8, !tbaa !778, !nonnull !94, !align !95 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2960
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !977 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 2928
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !776
  %i.ch = zext i32 %i.cg to i64
  %i.ci = icmp ult i64 %i.ce, %i.ch
  br i1 %i.ci, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 2920
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !978
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.ce
  br label %_ZN5clang6Parser9NextTokenEv.exit16

bb.v:                                             ; preds = %bb.t
  %i.cm = call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang12Preprocessor9PeekAheadEj(ptr noundef nonnull align 8 dereferenceable(3344) %i.cc, i32 noundef 1) #17
  br label %_ZN5clang6Parser9NextTokenEv.exit16

_ZN5clang6Parser9NextTokenEv.exit16:              ; preds = %bb.u, %bb.v
  %.0.i.i15 = phi ptr [ %i.cl, %bb.u ], [ %i.cm, %bb.v ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 16
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !979
  %i.cp = icmp eq i16 %i.co, 67
  call fastcc void @"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_1clEv"(ptr noundef nonnull align 8 dereferenceable(32) %3)
  br i1 %i.cp, label %bb.t, label %bb.w, !llvm.loop !1108

bb.w:                                             ; preds = %_ZN5clang6Parser9NextTokenEv.exit16
  %i.cq = load i8, ptr %i.b, align 1, !tbaa !985
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.x

bb.x:                                             ; preds = %_ZN5clang6Parser31RevertingTentativeParsingActionD2Ev.exit, %bb.w
  %.1 = phi i8 [ %i.cq, %bb.w ], [ 0, %_ZN5clang6Parser31RevertingTentativeParsingActionD2Ev.exit ]
  ret i8 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_1clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 10 uses
  %2 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !988    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  %.sroa.029.0.copyload = load i32, ptr %i.b, align 8, !tbaa !769 ; 2 uses
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.633.0.copyload = load ptr, ptr %.sroa.633.0..sroa_idx, align 8, !tbaa !771 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !773 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.633.0.copyload, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !991  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 9 uses
  %i.f = load i64, ptr %i.d, align 8, !tbaa !993
  %trunc.i = trunc i64 %i.f to i32
  switch i32 %trunc.i, label %"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_0clENS_5TokenE.exit" [
    i32 6, label %bb.b
    i32 8, label %bb.c
    i32 9, label %bb.d
    i32 4, label %bb.f
    i32 7, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.e, align 1
  %i.h = xor i32 %i.g, 1635216481
  %i.i = getelementptr i8, ptr %i.e, i64 4
  %i.j = load i16, ptr %i.i, align 1
  %i.k = zext i16 %i.j to i32
  %i.l = xor i32 %i.k, 29561
  %i.m = or i32 %i.h, %i.l
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %select.unfold, label %"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_0clENS_5TokenE.exit"

bb.c:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.e, align 1
  %i.q = icmp ne i64 %i.p, 7956017181890145377
  %i.r = zext i1 %i.q to i32
  %.not.i.i6.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i6.i, label %select.unfold, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.e, align 1
  %i.t = xor i64 %i.s, 8462109190015904865
  %i.u = getelementptr i8, ptr %i.e, i64 8
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i64
  %i.x = xor i64 %i.w, 116
  %i.y = or i64 %i.t, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not.i.i14.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i14.i, label %select.unfold, label %"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_0clENS_5TokenE.exit"

bb.e:                                             ; preds = %bb.c
  %i.ab = load i64, ptr %i.e, align 1
  %i.ac = icmp ne i64 %i.ab, 8749489600778560882
  %i.ad = zext i1 %i.ac to i32
  %.not.i.i22.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i22.i, label %select.unfold, label %"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_0clENS_5TokenE.exit"

bb.f:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %i.e, align 1
  %i.af = icmp ne i32 %i.ae, 1869768058
  %i.ag = zext i1 %i.af to i32
  %.not.i.i30.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i30.i, label %select.unfold, label %"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_0clENS_5TokenE.exit"

bb.g:                                             ; preds = %bb.a
  %i.ah = load i32, ptr %i.e, align 1
  %i.ai = xor i32 %i.ah, 1953522019
  %i.aj = getelementptr i8, ptr %i.e, i64 3
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = xor i32 %i.ak, 1701999988
  %i.am = or i32 %i.ai, %i.al
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %.not.i.i38.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i38.i, label %select.unfold, label %"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_0clENS_5TokenE.exit"

"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_0clENS_5TokenE.exit": ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %bb.a, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_ZN5clang6Parser4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %1, ptr noundef nonnull align 8 dereferenceable(2960) %i.a, i32 %.sroa.029.0.copyload, i32 noundef 1532) #17
  %i.ap = load ptr, ptr %1, align 8, !tbaa !997   ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i9, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_0clENS_5TokenE.exit"
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !998
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %1, align 8, !tbaa !997
  br label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, %"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_0clENS_5TokenE.exit"
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ap, %"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_0clENS_5TokenE.exit" ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.at, align 8, !tbaa !1010
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  store i8 2, ptr %i.ax, align 1, !tbaa !770
  %i.ay = load ptr, ptr %1, align 8, !tbaa !997   ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i8, ptr %i.ay, align 8, !tbaa !1010 ; 2 uses
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  store i8 %i.bb, ptr %i.ay, align 8, !tbaa !1010
  %i.bc = zext i8 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bc
  store i64 0, ptr %i.bd, align 8, !tbaa !772
  %i.be = add i16 %.sroa.9.0.copyload, -7
  %i.bf = icmp ult i16 %i.be, 13
  %i.bg = icmp eq i16 %.sroa.9.0.copyload, 1
  %or.cond.i = or i1 %i.bg, %i.bf
  %i.bh = ptrtoint ptr %.sroa.633.0.copyload to i64
  %i.bi = select i1 %or.cond.i, i64 0, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bk = zext i8 %i.bb to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  store i8 5, ptr %i.bl, align 1, !tbaa !770
  %i.bm = load ptr, ptr %1, align 8, !tbaa !997   ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i8, ptr %i.bm, align 8, !tbaa !1010 ; 2 uses
  %i.bp = add i8 %i.bo, 1                         ; 2 uses
  store i8 %i.bp, ptr %i.bm, align 8, !tbaa !1010
  %i.bq = zext i8 %i.bo to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bq
  store i64 %i.bi, ptr %i.br, align 8, !tbaa !772
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1111, !nonnull !94
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !767
  %i.bv = zext nneg i8 %i.bu to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_134tryParseAndConsumeSpecialTokenKindIN5clang17OpenACCClauseKindEEEbRNS1_6ParserENS_23OpenACCSpecialTokenKindET_, i64 %i.bv
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.bw = ptrtoint ptr %switch.load to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.by = zext i8 %i.bp to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by
  store i8 1, ptr %i.bz, align 1, !tbaa !770
  %i.ca = load ptr, ptr %1, align 8, !tbaa !997   ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i8, ptr %i.ca, align 8, !tbaa !1010 ; 2 uses
  %i.cd = add i8 %i.cc, 1
  store i8 %i.cd, ptr %i.ca, align 8, !tbaa !1010
  %i.ce = zext i8 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ce
  store i64 %i.bw, ptr %i.cf, align 8, !tbaa !772
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.j

select.unfold:                                    ; preds = %bb.g, %bb.e, %bb.d, %bb.f, %bb.c, %bb.b
  %.sroa.1617.5.i.ph = phi i8 [ 2, %bb.e ], [ 32, %bb.b ], [ 4, %bb.c ], [ 1, %bb.f ], [ 8, %bb.d ], [ 16, %bb.g ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1112, !nonnull !94 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !985 ; 2 uses
  %i.cj = and i8 %i.ci, %.sroa.1617.5.i.ph
  %.not = icmp eq i8 %i.cj, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN5clang6Parser4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %2, ptr noundef nonnull align 8 dereferenceable(2960) %i.a, i32 %.sroa.029.0.copyload, i32 noundef 1532) #17
  %i.ck = load ptr, ptr %2, align 8, !tbaa !997   ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i12, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i13, label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit19

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i13: ; preds = %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !998
  %i.cn = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.cm) ; 2 uses
  store ptr %i.cn, ptr %2, align 8, !tbaa !997
  br label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit19

_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit19: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i13, %bb.h
  %i.co = phi ptr [ %i.cn, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i13 ], [ %i.ck, %bb.h ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.co, align 8, !tbaa !1010
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cr
  store i8 2, ptr %i.cs, align 1, !tbaa !770
  %i.ct = load ptr, ptr %2, align 8, !tbaa !997   ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i8, ptr %i.ct, align 8, !tbaa !1010 ; 2 uses
  %i.cw = add i8 %i.cv, 1                         ; 2 uses
  store i8 %i.cw, ptr %i.ct, align 8, !tbaa !1010
  %i.cx = zext i8 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cx
  store i64 1, ptr %i.cy, align 8, !tbaa !772
  %i.cz = add i16 %.sroa.9.0.copyload, -7
  %i.da = icmp ult i16 %i.cz, 13
  %i.db = icmp eq i16 %.sroa.9.0.copyload, 1
  %or.cond.i15 = or i1 %i.db, %i.da
  %i.dc = ptrtoint ptr %.sroa.633.0.copyload to i64
  %i.dd = select i1 %or.cond.i15, i64 0, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.df = zext i8 %i.cw to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.df
  store i8 5, ptr %i.dg, align 1, !tbaa !770
  %i.dh = load ptr, ptr %2, align 8, !tbaa !997   ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i8, ptr %i.dh, align 8, !tbaa !1010 ; 2 uses
  %i.dk = add i8 %i.dj, 1                         ; 2 uses
  store i8 %i.dk, ptr %i.dh, align 8, !tbaa !1010
  %i.dl = zext i8 %i.dj to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dl
  store i64 %i.dd, ptr %i.dm, align 8, !tbaa !772
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1111, !nonnull !94
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !767
  %i.dq = zext nneg i8 %i.dp to i64
  %switch.gep39 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_134tryParseAndConsumeSpecialTokenKindIN5clang17OpenACCClauseKindEEEbRNS1_6ParserENS_23OpenACCSpecialTokenKindET_, i64 %i.dq
  %switch.load40 = load ptr, ptr %switch.gep39, align 8
  %i.dr = ptrtoint ptr %switch.load40 to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dt = zext i8 %i.dk to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dt
  store i8 1, ptr %i.du, align 1, !tbaa !770
  %i.dv = load ptr, ptr %2, align 8, !tbaa !997   ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i8, ptr %i.dv, align 8, !tbaa !1010 ; 2 uses
  %i.dy = add i8 %i.dx, 1
  store i8 %i.dy, ptr %i.dv, align 8, !tbaa !1010
  %i.dz = zext i8 %i.dx to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dz
  store i64 %i.dr, ptr %i.ea, align 8, !tbaa !772
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.j

bb.i:                                             ; preds = %select.unfold
  %i.eb = or i8 %i.ci, %.sroa.1617.5.i.ph
  store i8 %i.eb, ptr %i.ch, align 1, !tbaa !985
  br label %bb.j

bb.j:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit19, %bb.i, %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit
  %i.ec = load i32, ptr %i.b, align 8, !tbaa !980
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i32 %i.ec, ptr %i.ed, align 8, !tbaa !769
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !778, !nonnull !94, !align !95
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ef, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #17
  %i.eg = load i32, ptr %i.b, align 8, !tbaa !980
  store i32 %i.eg, ptr %i.ed, align 8, !tbaa !769
  %i.eh = load ptr, ptr %i.ee, align 8, !tbaa !778, !nonnull !94, !align !95
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.eh, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang6Parser22ParseOpenACCClauseListENS_20OpenACCDirectiveKindE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.683") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2960) %1, i8 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !978
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i32 0, ptr %i.b, align 8, !tbaa !776
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 6, ptr %i.c, align 4, !tbaa !982
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !979
  %.not1820 = icmp eq i16 %i.f, 461
  br i1 %.not1820, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = tail call i64 @_ZN5clang6Parser18ParseOpenACCClauseEN4llvm8ArrayRefIPKNS_13OpenACCClauseEEENS_20OpenACCDirectiveKindE(ptr noundef nonnull align 8 dereferenceable(2960) %1, ptr nonnull %i.a, i64 0, i8 noundef zeroext %2) ; 2 uses
  %i.j = and i64 %i.i, -8                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %.not.peel = icmp eq i64 %i.j, 0
  br i1 %.not.peel, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.b, align 8, !tbaa !776  ; 2 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !982
  %.not.i.peel = icmp ult i32 %i.l, %i.m
  br i1 %.not.i.peel, label %bb.e, label %bb.d, !prof !1011

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.k)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE9push_backES3_.exit.peel
end_hunk_0
begin_hunk_1_@_ZN5clang6Parser18ParseOpenACCClauseEN4llvm8ArrayRefIPKNS_13OpenACCClauseEEENS_20OpenACCDirectiveKindE:bb.a
  %i.jh = or i64 %i.jd, %i.jg
  %i.ji = icmp ne i64 %i.jh, 0
  %i.jj = zext i1 %i.ji to i32
  %.not.i.i294.i = icmp eq i32 %i.jj, 0
  br i1 %.not.i.i294.i, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit336.thread.i

bb.u:                                             ; preds = %bb.o
  %i.jk = load i32, ptr %i.e, align 1
  %i.jl = xor i32 %i.jk, 1869115246
  %i.jm = getelementptr i8, ptr %i.e, i64 4
  %i.jn = load i16, ptr %i.jm, align 1
  %i.jo = zext i16 %i.jn to i32
  %i.jp = xor i32 %i.jo, 29811
  %i.jq = or i32 %i.jl, %i.jp
  %i.jr = icmp ne i32 %i.jq, 0
  %i.js = zext i1 %i.jr to i32
  %.not.i.i302.i = icmp eq i32 %i.js, 0
  br i1 %.not.i.i302.i, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit336.thread.i

_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit296.i.thread145: ; preds = %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit128.i.thread
  %i.jt = load i32, ptr %i.e, align 1
  %i.ju = xor i32 %i.jt, 1936028272
  %i.jv = getelementptr i8, ptr %i.e, i64 3
  %i.jw = load i32, ptr %i.jv, align 1
  %i.jx = xor i32 %i.jw, 1953391987
  %i.jy = or i32 %i.ju, %i.jx
  %i.jz = icmp ne i32 %i.jy, 0
  %i.ka = zext i1 %i.jz to i32
  %.not.i.i310.i = icmp eq i32 %i.ka, 0
  br i1 %.not.i.i310.i, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread, label %.thread602.i

.thread602.i:                                     ; preds = %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit296.i.thread145
  %i.kb = load i32, ptr %i.e, align 1
  %i.kc = xor i32 %i.kb, 1986622064
  %i.kd = getelementptr i8, ptr %i.e, i64 3
  %i.ke = load i32, ptr %i.kd, align 1
  %i.kf = xor i32 %i.ke, 1702125942
  %i.kg = or i32 %i.kc, %i.kf
  %i.kh = icmp ne i32 %i.kg, 0
  %i.ki = zext i1 %i.kh to i32
  %.not.i.i318.i = icmp eq i32 %i.ki, 0
  br i1 %.not.i.i318.i, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit336.thread.i

.thread:                                          ; preds = %.thread576.i
  %i.kj = load i64, ptr %i.e, align 1
  %i.kk = xor i64 %i.kj, 8028075781284717938
  %i.kl = getelementptr i8, ptr %i.e, i64 8
  %i.km = load i8, ptr %i.kl, align 1
  %i.kn = zext i8 %i.km to i64
  %i.ko = xor i64 %i.kn, 110
  %i.kp = or i64 %i.kk, %i.ko
  %i.kq = icmp ne i64 %i.kp, 0
  %i.kr = zext i1 %i.kq to i32
  %.not.i.i326.i180 = icmp eq i32 %i.kr, 0
  br i1 %.not.i.i326.i180, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread90

_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit320.i.thread172.thread244: ; preds = %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit256.thread3961.thread.i
  %i.ks = load i32, ptr %i.e, align 1
  %i.kt = icmp ne i32 %i.ks, 1718379891
  %i.ku = zext i1 %i.kt to i32
  %.not.i.i334.i247 = icmp eq i32 %i.ku, 0
  br i1 %.not.i.i334.i247, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit344.thread3848.i

_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit336.thread.i: ; preds = %bb.c, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit96.thread1177.thread.i, %.thread602.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit288.i, %bb.u
  %or.cond353436923698372737413773378238123822398740264057.i7884 = phi i1 [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit288.i ], [ false, %.thread602.i ], [ true, %bb.u ], [ false, %bb.c ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit96.thread1177.thread.i ] ; 2 uses
  %.not.i.i.i.i3403843.i = icmp eq i64 %i.g, 3
  br i1 %.not.i.i.i.i3403843.i, label %bb.v, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit352.i

bb.v:                                             ; preds = %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit336.thread.i
  %i.kv = load i16, ptr %i.e, align 1
  %i.kw = xor i16 %i.kv, 25971
  %i.kx = getelementptr i8, ptr %i.e, i64 2
  %i.ky = load i8, ptr %i.kx, align 1
  %i.kz = zext i8 %i.ky to i16
  %i.la = xor i16 %i.kz, 113
  %i.lb = or i16 %i.kw, %i.la
  %i.lc = icmp ne i16 %i.lb, 0
  %i.ld = zext i1 %i.lc to i32
  %.not.i.i342.i = icmp eq i32 %i.ld, 0
  br i1 %.not.i.i342.i, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit360.i

_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit344.thread3848.i: ; preds = %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit320.i.thread172.thread244
  %i.le = load i32, ptr %i.e, align 1
  %i.lf = icmp ne i32 %i.le, 1701603700
  %i.lg = zext i1 %i.lf to i32
  %.not.i.i350.i = icmp eq i32 %i.lg, 0
  br i1 %.not.i.i350.i, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit352.i

_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit352.i: ; preds = %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit248.i.thread112, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit344.thread3848.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit336.thread.i
  %or.cond353436923698372737413773378238123822398740264057.i75 = phi i1 [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit344.thread3848.i ], [ %or.cond353436923698372737413773378238123822398740264057.i7884, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit336.thread.i ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit248.i.thread112 ] ; 2 uses
  %or.cond35543792380238333976.i = phi i1 [ true, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit344.thread3848.i ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit336.thread.i ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit248.i.thread112 ] ; 2 uses
  %.not.i.i.i.i356.i = icmp eq i64 %i.g, 10
  br i1 %.not.i.i.i.i356.i, label %bb.w, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit360.i

bb.w:                                             ; preds = %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit352.i
  %i.lh = load i64, ptr %i.e, align 1
  %i.li = xor i64 %i.lh, 7599372903005909877
  %i.lj = getelementptr i8, ptr %i.e, i64 8
  %i.lk = load i16, ptr %i.lj, align 1
  %i.ll = zext i16 %i.lk to i64
  %i.lm = xor i64 %i.ll, 25955
  %i.ln = or i64 %i.li, %i.lm
  %i.lo = icmp ne i64 %i.ln, 0
  %i.lp = zext i1 %i.lo to i32
  %.not.i.i358.i = icmp eq i32 %i.lp, 0
  br i1 %.not.i.i358.i, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit376.i

_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit360.i: ; preds = %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit352.i, %bb.v
  %or.cond353436923698372737413773378238123822398740264057.i74 = phi i1 [ %or.cond353436923698372737413773378238123822398740264057.i75, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit352.i ], [ %or.cond353436923698372737413773378238123822398740264057.i7884, %bb.v ] ; 3 uses
  %or.cond35543792380238333975.i = phi i1 [ %or.cond35543792380238333976.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit352.i ], [ false, %bb.v ]
  br i1 %or.cond353436923698372737413773378238123822398740264057.i74, label %bb.x, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit368.i

bb.x:                                             ; preds = %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit360.i
  %i.lq = load i32, ptr %i.e, align 1
  %i.lr = xor i32 %i.lq, 1952671094
  %i.ls = getelementptr i8, ptr %i.e, i64 4
  %i.lt = load i16, ptr %i.ls, align 1
  %i.lu = zext i16 %i.lt to i32
  %i.lv = xor i32 %i.lu, 29295
  %i.lw = or i32 %i.lr, %i.lv
  %i.lx = icmp ne i32 %i.lw, 0
  %i.ly = zext i1 %i.lx to i32
  %.not.i.i366.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i.i366.i, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit368.i

_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit368.i: ; preds = %bb.x, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit360.i
  %.not.i.i.i.i372.i = icmp eq i64 %i.g, 13
  br i1 %.not.i.i.i.i372.i, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit368.i.thread291, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit376.i

_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit368.i.thread291: ; preds = %bb.n, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit368.i
  %or.cond353436923698372737413773378238123822398740264057.i74198295 = phi i1 [ %or.cond353436923698372737413773378238123822398740264057.i74, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit368.i ], [ false, %bb.n ]
  %i.lz = load i64, ptr %i.e, align 1
  %i.ma = xor i64 %i.lz, 7809086101903336822
  %i.mb = getelementptr i8, ptr %i.e, i64 5
  %i.mc = load i64, ptr %i.mb, align 1
  %i.md = xor i64 %i.mc, 7526754601088606066
  %i.me = or i64 %i.ma, %i.md
  %i.mf = icmp ne i64 %i.me, 0
  %i.mg = zext i1 %i.mf to i32
  %.not.i.i374.i = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i374.i, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit384.i

_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit376.i: ; preds = %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit368.i, %bb.w
  %or.cond353436923698372737413773378238123822398740264057.i80 = phi i1 [ %or.cond353436923698372737413773378238123822398740264057.i74, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit368.i ], [ %or.cond353436923698372737413773378238123822398740264057.i75, %bb.w ] ; 2 uses
  %or.cond35543792380238333974.i = phi i1 [ %or.cond35543792380238333975.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit368.i ], [ %or.cond35543792380238333976.i, %bb.w ]
  br i1 %or.cond35543792380238333974.i, label %bb.y, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit384.i

bb.y:                                             ; preds = %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit376.i
  %i.mh = load i32, ptr %i.e, align 1
  %i.mi = icmp ne i32 %i.mh, 1953063287
  %i.mj = zext i1 %i.mi to i32
  %.not.i.i382.i = icmp eq i32 %i.mj, 0
  br i1 %.not.i.i382.i, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit384.i

_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit384.i: ; preds = %bb.y, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit376.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit368.i.thread291
  %or.cond353436923698372737413773378238123822398740264057.i79 = phi i1 [ %or.cond353436923698372737413773378238123822398740264057.i80, %bb.y ], [ %or.cond353436923698372737413773378238123822398740264057.i80, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit376.i ], [ %or.cond353436923698372737413773378238123822398740264057.i74198295, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit368.i.thread291 ]
  br i1 %or.cond353436923698372737413773378238123822398740264057.i79, label %bb.z, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread90

bb.z:                                             ; preds = %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit384.i
  %i.mk = load i32, ptr %i.e, align 1
  %i.ml = xor i32 %i.mk, 1802661751
  %i.mm = getelementptr i8, ptr %i.e, i64 4
  %i.mn = load i16, ptr %i.mm, align 1
  %i.mo = zext i16 %i.mn to i32
  %i.mp = xor i32 %i.mo, 29285
  %i.mq = or i32 %i.ml, %i.mp
  %i.mr = icmp ne i32 %i.mq, 0
  %i.ms = zext i1 %i.mr to i32
  %.not.i.i390.i = icmp eq i32 %i.ms, 0
  br i1 %.not.i.i390.i, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread90

_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i: ; preds = %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit64.thread688.thread813.i
  %i.mt = load i32, ptr %i.e, align 1
  %i.mu = xor i32 %i.mt, 1887007844
  %i.mv = getelementptr i8, ptr %i.e, i64 4
  %i.mw = load i8, ptr %i.mv, align 1
  %i.mx = zext i8 %i.mw to i32
  %i.my = xor i32 %i.mx, 101
  %i.mz = or i32 %i.mu, %i.my
  %i.na = icmp ne i32 %i.mz, 0
  %i.nb = zext i1 %i.na to i32
  %bcmp.i.i.i.i205.i.fr = freeze i32 %i.nb
  %.not.i.i206.i.not.not = icmp eq i32 %bcmp.i.i.i.i205.i.fr, 0
  br i1 %.not.i.i206.i.not.not, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread, label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread90

_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread90: ; preds = %bb.m, %bb.s, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit128.i, %bb.t, %.thread, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit176.i.thread, %bb.z, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit384.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i
  br label %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread

.fold.split.i:                                    ; preds = %bb.b
  br label %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread.thread

.fold.split3511.i:                                ; preds = %bb.b
  br label %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread.thread

.fold.split3512.i:                                ; preds = %bb.b
  br label %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread.thread

.fold.split3513.i:                                ; preds = %bb.b
  br label %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread.thread

_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread: ; preds = %bb.z, %bb.d, %bb.e, %bb.h, %bb.i, %bb.j, %bb.k, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit56.thread.thread680.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit64.thread688.thread813.i, %bb.l, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit80.thread934.thread1062.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit96.thread1177.thread.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit88.thread1071.thread1168.i, %.thread1321.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit104.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit128.i.thread, %bb.m, %bb.n, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit88.i, %bb.o, %.thread472.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit176.i.thread, %bb.p, %bb.r, %bb.q, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit128.i, %bb.s, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit72.i, %bb.t, %.thread537.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit256.i.thread139, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit248.i.thread112, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit256.thread3961.thread.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit256.thread3961.thread4015.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit288.i, %.thread576.i, %bb.u, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit296.i.thread145, %.thread602.i, %bb.v, %bb.w, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit344.thread3848.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit368.i.thread291, %bb.x, %bb.y, %bb.g, %bb.f, %.thread, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit320.i.thread172.thread244, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread90
  %i.nc = phi i1 [ true, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread90 ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit56.thread.thread680.i ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit64.thread688.thread813.i ], [ false, %bb.l ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit80.thread934.thread1062.i ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit96.thread1177.thread.i ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit88.thread1071.thread1168.i ], [ false, %.thread1321.i ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit104.i ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit128.i.thread ], [ false, %bb.m ], [ false, %bb.n ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit88.i ], [ false, %bb.o ], [ false, %.thread472.i ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit176.i.thread ], [ false, %bb.p ], [ false, %bb.r ], [ false, %bb.q ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit128.i ], [ false, %bb.s ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit72.i ], [ false, %bb.t ], [ false, %.thread537.i ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit256.i.thread139 ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit248.i.thread112 ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit256.thread3961.thread.i ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit256.thread3961.thread4015.i ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit288.i ], [ false, %.thread576.i ], [ false, %bb.u ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit296.i.thread145 ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit320.i.thread172.thread244 ], [ false, %.thread602.i ], [ false, %bb.v ], [ false, %.thread ], [ false, %bb.w ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit344.thread3848.i ], [ false, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit368.i.thread291 ], [ false, %bb.x ], [ false, %bb.y ], [ false, %bb.g ], [ false, %bb.z ]
  %.0.i = phi i8 [ 51, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread90 ], [ 26, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i ], [ 2, %bb.f ], [ 0, %bb.d ], [ 1, %bb.e ], [ 14, %bb.h ], [ 15, %bb.i ], [ 16, %bb.j ], [ 4, %bb.k ], [ 5, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit56.thread.thread680.i ], [ 6, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit64.thread688.thread813.i ], [ 7, %bb.l ], [ 8, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit80.thread934.thread1062.i ], [ 10, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit96.thread1177.thread.i ], [ 9, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit88.thread1071.thread1168.i ], [ 12, %.thread1321.i ], [ 11, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit104.i ], [ 17, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit128.i.thread ], [ 13, %bb.m ], [ 18, %bb.n ], [ 19, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit88.i ], [ 21, %bb.o ], [ 20, %.thread472.i ], [ 24, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit176.i.thread ], [ 22, %bb.p ], [ 23, %bb.r ], [ 25, %bb.q ], [ 27, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit128.i ], [ 28, %bb.s ], [ 29, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit72.i ], [ 31, %bb.t ], [ 30, %.thread537.i ], [ 33, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit256.i.thread139 ], [ 32, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit248.i.thread112 ], [ 34, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit256.thread3961.thread.i ], [ 35, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit256.thread3961.thread4015.i ], [ 38, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit288.i ], [ 37, %.thread576.i ], [ 36, %bb.u ], [ 39, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit296.i.thread145 ], [ 42, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit320.i.thread172.thread244 ], [ 40, %.thread602.i ], [ 43, %bb.v ], [ 41, %.thread ], [ 45, %bb.w ], [ 44, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit344.thread3848.i ], [ 47, %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit368.i.thread291 ], [ 46, %bb.x ], [ 48, %bb.y ], [ 3, %bb.g ], [ 49, %bb.z ]
  %i.nd = and i64 %i.f, 4294967294
  %.not.i.i = icmp eq i64 %i.nd, 0
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread, label %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit

_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit: ; preds = %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread
  %i.ne = load i16, ptr %i.e, align 1
  %i.nf = icmp ne i16 %i.ne, 24415
  %i.ng = zext i1 %i.nf to i32
  %i.nh = icmp eq i32 %i.ng, 0
  br i1 %i.nh, label %bb.aa, label %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread

bb.aa:                                            ; preds = %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN5clang6Parser4DiagERKNS_5TokenEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.b, i32 noundef 2074) #17
  %i.ni = load i16, ptr %.sroa.225.0..sroa_idx, align 8, !tbaa !979 ; 2 uses
  %i.nj = add i16 %i.ni, -7
  %i.nk = icmp ult i16 %i.nj, 13
  %i.nl = icmp eq i16 %i.ni, 1
  %or.cond.i = or i1 %i.nl, %i.nk
  %i.nm = load ptr, ptr %.sroa.124.0..sroa_idx, align 8
  %i.nn = load ptr, ptr %4, align 8, !tbaa !997   ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i14, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.aa
  %i.no = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !998
  %i.nq = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.np) ; 2 uses
  store ptr %i.nq, ptr %4, align 8, !tbaa !997
  br label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit: ; preds = %bb.aa, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.nr = phi ptr [ %i.nq, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.nn, %bb.aa ] ; 2 uses
  %i.ns = ptrtoint ptr %i.nm to i64
  %i.nt = select i1 %or.cond.i, i64 0, i64 %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 1
  %i.nv = load i8, ptr %i.nr, align 8, !tbaa !1010
  %i.nw = zext i8 %i.nv to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.nw
  store i8 5, ptr %i.nx, align 1, !tbaa !770
  %i.ny = load ptr, ptr %4, align 8, !tbaa !997   ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load i8, ptr %i.ny, align 8, !tbaa !1010 ; 2 uses
  %i.ob = add i8 %i.oa, 1
  store i8 %i.ob, ptr %i.ny, align 8, !tbaa !1010
  %i.oc = zext i8 %i.oa to i64
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.oc
  store i64 %i.nt, ptr %i.od, align 8, !tbaa !772
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.oe = load i32, ptr %i.b, align 8, !tbaa !980
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.oe, ptr %i.of, align 8, !tbaa !769
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !778, !nonnull !94, !align !95
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.oh, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 1904 ; 3 uses
  store ptr %i.oi, ptr %5, align 8, !tbaa !1013
  %i.oj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ok = load i8, ptr %i.oi, align 8, !tbaa !768, !range !765, !noundef !94
  store i8 %i.ok, ptr %i.oj, align 8, !tbaa !1015
  store i8 1, ptr %i.oi, align 8, !tbaa !768
  %i.ol = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %0, ptr %i.ol, align 8, !tbaa !1016
  %i.om = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 22, ptr %i.om, align 8, !tbaa !1018
  %i.on = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 461, ptr %i.on, align 4, !tbaa !1019
  %i.oo = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 0, ptr %i.oo, align 8, !tbaa !1020
  %i.op = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 0, ptr %i.op, align 4, !tbaa !1020
  %.repack6.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.oq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.or = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 23, ptr %i.or, align 2, !tbaa !1021
  store i64 ptrtoint (ptr @_ZN5clang6Parser12ConsumeParenEv to i64), ptr %i.oq, align 8, !tbaa !1022
  store i64 0, ptr %.repack6.i, align 8, !tbaa !1022
  %i.os = load i16, ptr %.sroa.225.0..sroa_idx, align 8, !tbaa !979
  %i.ot = icmp eq i16 %i.os, 22
  br i1 %i.ot, label %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i, label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread

_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i: ; preds = %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ov = load i16, ptr %i.ou, align 8, !tbaa !774
  %i.ow = load ptr, ptr %i.og, align 8, !tbaa !778, !nonnull !94, !align !95
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 64
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !976, !nonnull !94, !align !95
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 136
  %i.pa = load i64, ptr %i.oz, align 8
  %i.pb = lshr i64 %i.pa, 32
  %i.pc = zext i16 %i.ov to i64
  %i.pd = icmp samesign ugt i64 %i.pb, %i.pc
  br i1 %i.pd, label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread101, label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit

_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread101: ; preds = %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i
  %i.pe = call i32 @_ZN5clang6Parser12ConsumeParenEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #17, !inline_history !0
  store i32 %i.pe, ptr %i.oo, align 8, !tbaa !769
  br label %bb.ab

_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit: ; preds = %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i
  %i.pf = call noundef zeroext i1 @_ZN5clang24BalancedDelimiterTracker16diagnoseOverflowEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #17
  br i1 %i.pf, label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread101, %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit
  call void @_ZN5clang24BalancedDelimiterTracker9skipToEndEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #17
  br label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread

_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread: ; preds = %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit, %bb.ab, %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit
  %i.pg = load i8, ptr %i.oj, align 8, !tbaa !1015, !range !765, !noundef !94
  %i.ph = load ptr, ptr %5, align 8, !tbaa !1023, !nonnull !94
  store i8 %i.pg, ptr %i.ph, align 1, !tbaa !768
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ac

_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread: ; preds = %_ZN4llvm12StringSwitchIN5clang17OpenACCClauseKindES2_E4CaseENS_13StringLiteralES2_.exit392.i.thread, %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit
  br i1 %i.nc, label %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread.thread313, label %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread.thread

_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread.thread313: ; preds = %bb.b, %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN5clang6Parser4DiagERKNS_5TokenEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.b, i32 noundef 1525) #17
  %i.pi = load i16, ptr %.sroa.225.0..sroa_idx, align 8, !tbaa !979 ; 2 uses
  %i.pj = add i16 %i.pi, -7
  %i.pk = icmp ult i16 %i.pj, 13
  %i.pl = icmp eq i16 %i.pi, 1
  %or.cond.i16 = or i1 %i.pl, %i.pk
  %i.pm = load ptr, ptr %.sroa.124.0..sroa_idx, align 8
  %i.pn = load ptr, ptr %6, align 8, !tbaa !997   ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.pn, null
  br i1 %.not.i.i.i18, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i19, label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit20

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i19: ; preds = %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread.thread313
  %i.po = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !998
  %i.pq = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.pp) ; 2 uses
  store ptr %i.pq, ptr %6, align 8, !tbaa !997
  br label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit20

_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit20: ; preds = %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread.thread313, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i19
  %i.pr = phi ptr [ %i.pq, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i19 ], [ %i.pn, %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread.thread313 ] ; 2 uses
  %i.ps = ptrtoint ptr %i.pm to i64
  %i.pt = select i1 %or.cond.i16, i64 0, i64 %i.ps
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  %i.pv = load i8, ptr %i.pr, align 8, !tbaa !1010
  %i.pw = zext i8 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.pw
  store i8 5, ptr %i.px, align 1, !tbaa !770
  %i.py = load ptr, ptr %6, align 8, !tbaa !997   ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load i8, ptr %i.py, align 8, !tbaa !1010 ; 2 uses
  %i.qb = add i8 %i.qa, 1
  store i8 %i.qb, ptr %i.py, align 8, !tbaa !1010
  %i.qc = zext i8 %i.qa to i64
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %i.qc
  store i64 %i.pt, ptr %i.qd, align 8, !tbaa !772
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ac

_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread.thread: ; preds = %.fold.split3512.i, %bb.b, %.fold.split3513.i, %.fold.split.i, %.fold.split3511.i, %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread
  %.0.i9699312 = phi i8 [ %.0.i, %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread ], [ 40, %.fold.split3512.i ], [ 2, %bb.b ], [ 19, %.fold.split3513.i ], [ 17, %.fold.split.i ], [ 31, %.fold.split3511.i ]
  %i.qe = load i32, ptr %i.b, align 8, !tbaa !980
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 %i.qe, ptr %i.qf, align 8, !tbaa !769
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !778, !nonnull !94, !align !95
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.qh, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #17
  %.sroa.01.0.copyload.i21 = load i32, ptr %i.qf, align 8, !tbaa !769
  %i.qi = tail call i64 @_ZN5clang6Parser24ParseOpenACCClauseParamsEN4llvm8ArrayRefIPKNS_13OpenACCClauseEEENS_20OpenACCDirectiveKindENS_17OpenACCClauseKindENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr %1, i64 %2, i8 noundef zeroext %3, i8 noundef zeroext %.0.i9699312, i32 %.sroa.01.0.copyload.i21)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread, %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit20, %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread.thread
  %.sroa.08.1 = phi i64 [ %i.qi, %_ZN12_GLOBAL__N_128isUnsupportedExtensionClauseEN5clang5TokenE.exit.thread.thread ], [ 4, %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread ], [ 0, %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit20 ], [ 0, %bb.a ]
  ret i64 %.sroa.08.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZN5clang6Parser19ParseOpenACCIntExprENS_20OpenACCDirectiveKindENS_17OpenACCClauseKindENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(2960) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN5clang6Parser25ParseAssignmentExpressionENS_26TypoCorrectionTypeBehaviorE(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef 0) #17 ; 3 uses
  %spec.select.i = icmp ugt i64 %i.a, 1
  br i1 %spec.select.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93, !nonnull !94, !align !95
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 816
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1024
  %i.f = and i64 %i.a, -2
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call i64 @_ZN5clang11SemaOpenACC12ActOnIntExprENS_20OpenACCDirectiveKindENS_17OpenACCClauseKindENS_14SourceLocationEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(368) %i.e, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 %3, ptr noundef %i.g) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.07.0 = phi i64 [ %i.h, %bb.b ], [ %i.a, %bb.a ]
  %.sroa.3.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { i64, i32 } %.fca.1.insert
end_hunk_1
