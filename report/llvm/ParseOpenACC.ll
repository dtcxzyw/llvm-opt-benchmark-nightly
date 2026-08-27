Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ParseOpenACC?download=true
inline.NumInlined: 2411
inline.NumDeleted: 1038
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindE:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 2928
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !775
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp ult i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 2920
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !977
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.z
  br label %_ZN5clang6Parser9NextTokenEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang12Preprocessor9PeekAheadEj(ptr noundef nonnull align 8 dereferenceable(3344) %i.x, i32 noundef 1) #17
  br label %_ZN5clang6Parser9NextTokenEv.exit

_ZN5clang6Parser9NextTokenEv.exit:                ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.ah, %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !978
  %i.ak = icmp eq i16 %i.aj, 67
  br i1 %i.ak, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZN5clang6Parser9NextTokenEv.exit
  %i.al = load i32, ptr %i.d, align 8, !tbaa !979
  store i32 %i.al, ptr %i.n, align 8, !tbaa !768
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !777, !nonnull !91, !align !92
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.am, ptr noundef nonnull align 8 dereferenceable(20) %i.d) #17
  %i.an = load i32, ptr %i.d, align 8, !tbaa !979
  store i32 %i.an, ptr %i.n, align 8, !tbaa !768
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !777, !nonnull !91, !align !92
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ao, ptr noundef nonnull align 8 dereferenceable(20) %i.d) #17
  br label %bb.b, !llvm.loop !980

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %_ZN5clang6Parser9NextTokenEv.exit
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.118.0..sroa_idx, align 8, !tbaa !770 ; 2 uses
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
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !777, !nonnull !91, !align !92
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !778, !nonnull !91, !align !92
  %i.ax = tail call noundef zeroext i1 @_ZNK5clang14IdentifierInfo9isKeywordERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1.0.copyload, ptr noundef nonnull align 8 dereferenceable(1136) %i.aw) #17
  br i1 %i.ax, label %bb.m, label %_ZN12_GLOBAL__N_126isTokenIdentifierOrKeywordERN5clang6ParserENS0_5TokenE.exit12

bb.m:                                             ; preds = %.critedge, %bb.l
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !777, !nonnull !91, !align !92 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2960
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !976 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 2928
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !775
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp ult i64 %i.ba, %i.bd
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 2920
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !977
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.ba
  br label %_ZN5clang6Parser9NextTokenEv.exit14

bb.o:                                             ; preds = %bb.m
  %i.bi = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang12Preprocessor9PeekAheadEj(ptr noundef nonnull align 8 dereferenceable(3344) %i.ay, i32 noundef 1) #17
  br label %_ZN5clang6Parser9NextTokenEv.exit14

_ZN5clang6Parser9NextTokenEv.exit14:              ; preds = %bb.n, %bb.o
  %.0.i.i13 = phi ptr [ %i.bh, %bb.n ], [ %i.bi, %bb.o ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i13, i64 16
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !978
  %i.bl = icmp eq i16 %i.bk, 63
  br label %_ZN12_GLOBAL__N_126isTokenIdentifierOrKeywordERN5clang6ParserENS0_5TokenE.exit12

_ZN12_GLOBAL__N_126isTokenIdentifierOrKeywordERN5clang6ParserENS0_5TokenE.exit12: ; preds = %bb.l, %bb.k, %bb.j, %_ZN5clang6Parser9NextTokenEv.exit14
  %.0 = phi i1 [ %i.bl, %_ZN5clang6Parser9NextTokenEv.exit14 ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ]
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !777, !nonnull !91, !align !92
  tail call void @_ZN5clang12Preprocessor9BacktrackEv(ptr noundef nonnull align 8 dereferenceable(3344) %i.bm) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false), !tbaa.struct !765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10, i64 20, i1 false), !tbaa.struct !772
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2672 ; 2 uses
  %i.bo = load i32, ptr %i.e, align 8, !tbaa !775 ; 3 uses
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
  %.pre.i.i.i.i = load i32, ptr %i.e, align 8, !tbaa !775
  br label %_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.pre-phi.i.i.i.i.in = phi i32 [ %i.bo, %bb.q ], [ %.pre.i.i.i.i, %bb.r ] ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.f, %.pre-phi.i.i.i.i.in
  br i1 %.not11.i.i.i.i, label %.sink.split.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i.i
  %.pre-phi.i.i.i.i = zext i32 %.pre-phi.i.i.i.i.in to i64 ; 2 uses
  %i.bv = load ptr, ptr %i.bn, align 8, !tbaa !977
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %.pre-phi.i.i.i.i
  %i.bx = sub nsw i64 %i.g, %.pre-phi.i.i.i.i
  %i.by = shl nsw i64 %i.bx, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bw, i8 0, i64 %i.by, i1 false), !tbaa !983
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.lr.ph.preheader.i.i.i.i, %_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i.i, %bb.p
  store i32 %i.f, ptr %i.e, align 8, !tbaa !775
  br label %_ZN5clang6Parser31RevertingTentativeParsingActionD2Ev.exit

_ZN5clang6Parser31RevertingTentativeParsingActionD2Ev.exit: ; preds = %_ZN12_GLOBAL__N_126isTokenIdentifierOrKeywordERN5clang6ParserENS0_5TokenE.exit12, %.sink.split.i.i.i.i
  store <2 x i16> %i.i, ptr %i.h, align 8, !tbaa !774
  store i16 %i.k, ptr %i.j, align 4, !tbaa !776
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br i1 %.0, label %bb.s, label %bb.x

bb.s:                                             ; preds = %_ZN5clang6Parser31RevertingTentativeParsingActionD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i8 0, ptr %i.b, align 1, !tbaa !984
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %0, ptr %3, align 8, !tbaa !986
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.bz, align 8, !tbaa !770
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %i.ca, align 8, !tbaa !770
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.b, ptr %i.cb, align 8, !tbaa !770
  br label %bb.t

bb.t:                                             ; preds = %_ZN5clang6Parser9NextTokenEv.exit16, %bb.s
  %i.cc = load ptr, ptr %i.l, align 8, !tbaa !777, !nonnull !91, !align !92 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2960
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !976 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 2928
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !775
  %i.ch = zext i32 %i.cg to i64
  %i.ci = icmp ult i64 %i.ce, %i.ch
  br i1 %i.ci, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 2920
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !977
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.ce
  br label %_ZN5clang6Parser9NextTokenEv.exit16

bb.v:                                             ; preds = %bb.t
  %i.cm = call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang12Preprocessor9PeekAheadEj(ptr noundef nonnull align 8 dereferenceable(3344) %i.cc, i32 noundef 1) #17
  br label %_ZN5clang6Parser9NextTokenEv.exit16

_ZN5clang6Parser9NextTokenEv.exit16:              ; preds = %bb.u, %bb.v
  %.0.i.i15 = phi ptr [ %i.cl, %bb.u ], [ %i.cm, %bb.v ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 16
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !978
  %i.cp = icmp eq i16 %i.co, 67
  call fastcc void @"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_1clEv"(ptr noundef nonnull align 8 dereferenceable(32) %3)
  br i1 %i.cp, label %bb.t, label %bb.w, !llvm.loop !989

bb.w:                                             ; preds = %_ZN5clang6Parser9NextTokenEv.exit16
  %i.cq = load i8, ptr %i.b, align 1, !tbaa !984
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !986    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  %.sroa.029.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.029.sroa.0.0.extract.trunc = trunc i64 %.sroa.029.0.copyload to i32 ; 2 uses
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.633.0.copyload = load ptr, ptr %.sroa.633.0..sroa_idx, align 8, !tbaa !770 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !773 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.633.0.copyload, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !990  ; 2 uses
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
  call void @_ZN5clang6Parser4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %1, ptr noundef nonnull align 8 dereferenceable(2960) %i.a, i32 %.sroa.029.sroa.0.0.extract.trunc, i32 noundef 1532) #17
  %i.ap = load ptr, ptr %1, align 8, !tbaa !995   ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i9, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_0clENS_5TokenE.exit"
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !999
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %1, align 8, !tbaa !995
  br label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, %"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_0clENS_5TokenE.exit"
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ap, %"_ZZN5clang6Parser20tryParseModifierListENS_17OpenACCClauseKindEENK3$_0clENS_5TokenE.exit" ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.at, align 8, !tbaa !1000
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  store i8 2, ptr %i.ax, align 1, !tbaa !769
  %i.ay = load ptr, ptr %1, align 8, !tbaa !995   ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i8, ptr %i.ay, align 8, !tbaa !1000 ; 2 uses
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  store i8 %i.bb, ptr %i.ay, align 8, !tbaa !1000
  %i.bc = zext i8 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bc
  store i64 0, ptr %i.bd, align 8, !tbaa !771
  %i.be = add i16 %.sroa.9.0.copyload, -7
  %i.bf = icmp ult i16 %i.be, 13
  %i.bg = icmp eq i16 %.sroa.9.0.copyload, 1
  %or.cond.i = or i1 %i.bg, %i.bf
  %i.bh = ptrtoint ptr %.sroa.633.0.copyload to i64
  %i.bi = select i1 %or.cond.i, i64 0, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bk = zext i8 %i.bb to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  store i8 5, ptr %i.bl, align 1, !tbaa !769
  %i.bm = load ptr, ptr %1, align 8, !tbaa !995   ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i8, ptr %i.bm, align 8, !tbaa !1000 ; 2 uses
  %i.bp = add i8 %i.bo, 1                         ; 2 uses
  store i8 %i.bp, ptr %i.bm, align 8, !tbaa !1000
  %i.bq = zext i8 %i.bo to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bq
  store i64 %i.bi, ptr %i.br, align 8, !tbaa !771
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1012, !nonnull !91
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !763
  %i.bv = zext nneg i8 %i.bu to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_134tryParseAndConsumeSpecialTokenKindIN5clang17OpenACCClauseKindEEEbRNS1_6ParserENS_23OpenACCSpecialTokenKindET_, i64 %i.bv
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.bw = ptrtoint ptr %switch.load to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.by = zext i8 %i.bp to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by
  store i8 1, ptr %i.bz, align 1, !tbaa !769
  %i.ca = load ptr, ptr %1, align 8, !tbaa !995   ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i8, ptr %i.ca, align 8, !tbaa !1000 ; 2 uses
  %i.cd = add i8 %i.cc, 1
  store i8 %i.cd, ptr %i.ca, align 8, !tbaa !1000
  %i.ce = zext i8 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ce
  store i64 %i.bw, ptr %i.cf, align 8, !tbaa !771
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.j

select.unfold:                                    ; preds = %bb.g, %bb.e, %bb.d, %bb.f, %bb.c, %bb.b
  %.sroa.1617.5.i.ph = phi i8 [ 2, %bb.e ], [ 32, %bb.b ], [ 4, %bb.c ], [ 1, %bb.f ], [ 8, %bb.d ], [ 16, %bb.g ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1013, !nonnull !91 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !984 ; 2 uses
  %i.cj = and i8 %i.ci, %.sroa.1617.5.i.ph
  %.not = icmp eq i8 %i.cj, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN5clang6Parser4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %2, ptr noundef nonnull align 8 dereferenceable(2960) %i.a, i32 %.sroa.029.sroa.0.0.extract.trunc, i32 noundef 1532) #17
  %i.ck = load ptr, ptr %2, align 8, !tbaa !995   ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i12, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i13, label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit19

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i13: ; preds = %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !999
  %i.cn = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.cm) ; 2 uses
  store ptr %i.cn, ptr %2, align 8, !tbaa !995
  br label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit19

_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit19: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i13, %bb.h
  %i.co = phi ptr [ %i.cn, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i13 ], [ %i.ck, %bb.h ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.co, align 8, !tbaa !1000
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cr
  store i8 2, ptr %i.cs, align 1, !tbaa !769
  %i.ct = load ptr, ptr %2, align 8, !tbaa !995   ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i8, ptr %i.ct, align 8, !tbaa !1000 ; 2 uses
  %i.cw = add i8 %i.cv, 1                         ; 2 uses
  store i8 %i.cw, ptr %i.ct, align 8, !tbaa !1000
  %i.cx = zext i8 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cx
  store i64 1, ptr %i.cy, align 8, !tbaa !771
  %i.cz = add i16 %.sroa.9.0.copyload, -7
  %i.da = icmp ult i16 %i.cz, 13
  %i.db = icmp eq i16 %.sroa.9.0.copyload, 1
  %or.cond.i15 = or i1 %i.db, %i.da
  %i.dc = ptrtoint ptr %.sroa.633.0.copyload to i64
  %i.dd = select i1 %or.cond.i15, i64 0, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.df = zext i8 %i.cw to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.df
  store i8 5, ptr %i.dg, align 1, !tbaa !769
  %i.dh = load ptr, ptr %2, align 8, !tbaa !995   ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i8, ptr %i.dh, align 8, !tbaa !1000 ; 2 uses
  %i.dk = add i8 %i.dj, 1                         ; 2 uses
  store i8 %i.dk, ptr %i.dh, align 8, !tbaa !1000
  %i.dl = zext i8 %i.dj to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dl
  store i64 %i.dd, ptr %i.dm, align 8, !tbaa !771
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1012, !nonnull !91
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !763
  %i.dq = zext nneg i8 %i.dp to i64
  %switch.gep39 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_134tryParseAndConsumeSpecialTokenKindIN5clang17OpenACCClauseKindEEEbRNS1_6ParserENS_23OpenACCSpecialTokenKindET_, i64 %i.dq
  %switch.load40 = load ptr, ptr %switch.gep39, align 8
  %i.dr = ptrtoint ptr %switch.load40 to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dt = zext i8 %i.dk to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dt
  store i8 1, ptr %i.du, align 1, !tbaa !769
  %i.dv = load ptr, ptr %2, align 8, !tbaa !995   ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i8, ptr %i.dv, align 8, !tbaa !1000 ; 2 uses
  %i.dy = add i8 %i.dx, 1
  store i8 %i.dy, ptr %i.dv, align 8, !tbaa !1000
  %i.dz = zext i8 %i.dx to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dz
  store i64 %i.dr, ptr %i.ea, align 8, !tbaa !771
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.j

bb.i:                                             ; preds = %select.unfold
  %i.eb = or i8 %i.ci, %.sroa.1617.5.i.ph
  store i8 %i.eb, ptr %i.ch, align 1, !tbaa !984
  br label %bb.j

bb.j:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit19, %bb.i, %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEvEERKS0_OT_.exit
  %i.ec = load i32, ptr %i.b, align 8, !tbaa !979
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i32 %i.ec, ptr %i.ed, align 8, !tbaa !768
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !777, !nonnull !91, !align !92
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ef, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #17
  %i.eg = load i32, ptr %i.b, align 8, !tbaa !979
  store i32 %i.eg, ptr %i.ed, align 8, !tbaa !768
  %i.eh = load ptr, ptr %i.ee, align 8, !tbaa !777, !nonnull !91, !align !92
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.eh, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang6Parser22ParseOpenACCClauseListENS_20OpenACCDirectiveKindE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.683") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2960) %1, i8 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !977
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i32 0, ptr %i.b, align 8, !tbaa !775
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 6, ptr %i.c, align 4, !tbaa !982
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !978
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
  %i.l = load i32, ptr %i.b, align 8, !tbaa !775  ; 2 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !982
  %.not.i.peel = icmp ult i32 %i.l, %i.m
  br i1 %.not.i.peel, label %bb.e, label %bb.d, !prof !1014

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.k)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE9push_backES3_.exit.peel

bb.e:                                             ; preds = %bb.c
  %i.n = zext i32 %i.l to i64
  %i.o = load ptr, ptr %0, align 8, !tbaa !977
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  store ptr %i.k, ptr %i.p, align 1
  %i.q = load i32, ptr %i.b, align 8, !tbaa !775
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.b, align 8, !tbaa !775
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE9push_backES3_.exit.peel

bb.f:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE9push_backES3_.exit.peel

_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE9push_backES3_.exit.peel: ; preds = %bb.f, %bb.e, %bb.d
  %i.t = load i16, ptr %i.e, align 8, !tbaa !978  ; 2 uses
  %.not18.peel = icmp eq i16 %i.t, 461
  br i1 %.not18.peel, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE9push_backES3_.exit.peel, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE9push_backES3_.exit
  %i.u = phi i16 [ %i.ap, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE9push_backES3_.exit ], [ %i.t, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE9push_backES3_.exit.peel ]
  %i.v = icmp eq i16 %i.u, 67
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.peel.next
  %i.w = load i32, ptr %i.d, align 8, !tbaa !979
  store i32 %i.w, ptr %i.g, align 8, !tbaa !768
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !777, !nonnull !91, !align !92
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.x, ptr noundef nonnull align 8 dereferenceable(20) %i.d) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.peel.next
  %i.y = load ptr, ptr %0, align 8, !tbaa !977
  %i.z = load i32, ptr %i.b, align 8, !tbaa !775
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call i64 @_ZN5clang6Parser18ParseOpenACCClauseEN4llvm8ArrayRefIPKNS_13OpenACCClauseEEENS_20OpenACCDirectiveKindE(ptr noundef nonnull align 8 dereferenceable(2960) %1, ptr %i.y, i64 %i.aa, i8 noundef zeroext %2) ; 2 uses
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !775 ; 2 uses
  %i.af = load i32, ptr %i.c, align 4, !tbaa !982
  %.not.i = icmp ult i32 %i.ae, %i.af
  br i1 %.not.i, label %bb.k, label %bb.j, !prof !1014

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ad)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE9push_backES3_.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = zext i32 %i.ae to i64
  %i.ah = load ptr, ptr %0, align 8, !tbaa !977
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  store ptr %i.ad, ptr %i.ai, align 1
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !775
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.b, align 8, !tbaa !775
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE9push_backES3_.exit

bb.l:                                             ; preds = %bb.h
  %i.al = icmp samesign ult i64 %i.ab, 4
  br i1 %i.al, label %.loopexit, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE9push_backES3_.exit

.loopexit:                                        ; preds = %bb.l, %bb.f
  %i.am = load i16, ptr %i.e, align 8, !tbaa !978
  %.not2.i = icmp eq i16 %i.am, 461
  br i1 %.not2.i, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %.lr.ph.i
  %i.an = tail call i32 @_ZN5clang6Parser15ConsumeAnyTokenEb(ptr noundef nonnull align 8 dereferenceable(2960) %1, i1 noundef zeroext false) ; 0 uses
  %i.ao = load i16, ptr %i.e, align 8, !tbaa !978
  %.not.i12 = icmp eq i16 %i.ao, 461
  br i1 %.not.i12, label %.critedge, label %.lr.ph.i, !llvm.loop !1015

_ZN4llvm23SmallVectorTemplateBaseIPN5clang13OpenACCClauseELb1EE9push_backES3_.exit: ; preds = %bb.k, %bb.j, %bb.l
  %i.ap = load i16, ptr %i.e, align 8, !tbaa !978 ; 2 uses
  %.not18 = icmp eq i16 %i.ap, 461
  br i1 %.not18, label %.critedge, label %.peel.next, !llvm.loop !1016
end_hunk_0
