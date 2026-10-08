Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ParseObjc?download=true
inline.NumInlined: 3765
inline.NumDeleted: 1394
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5clang6Parser27ParseObjCProtocolExpressionENS_14SourceLocationE:bb.a
  store i8 1, ptr %i.w, align 8, !tbaa !1055
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %0, ptr %i.z, align 8, !tbaa !1059
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 22, ptr %i.aa, align 8, !tbaa !1061
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i16 64, ptr %i.ab, align 4, !tbaa !1062
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 2 uses
  store i32 0, ptr %i.ad, align 4, !tbaa !16
  %.repack6.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i16 23, ptr %i.af, align 2, !tbaa !1063
  store i64 ptrtoint (ptr @_ZN5clang6Parser12ConsumeParenEv to i64), ptr %i.ae, align 8, !tbaa !1064
  store i64 0, ptr %.repack6.i, align 8, !tbaa !1064
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !1065 ; 2 uses
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !140, !nonnull !61, !align !141 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1042, !nonnull !61, !align !141
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.am = load i64, ptr %i.al, align 8
  %i.an = lshr i64 %i.am, 32
  %i.ao = zext i16 %i.ah to i64
  %i.ap = icmp samesign ugt i64 %i.an, %i.ao
  br i1 %i.ap, label %_ZN5clang6Parser12ConsumeParenEv.exit, label %bb.c

_ZN5clang6Parser12ConsumeParenEv.exit:            ; preds = %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i
  %i.aq = add i16 %i.ah, 1
  store i16 %i.aq, ptr %i.ag, align 8, !tbaa !1094
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !66
  store i32 %i.ar, ptr %i.c, align 8, !tbaa !67
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ai, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #16
  %.sroa.01.0.copyload.i13 = load i32, ptr %i.c, align 8, !tbaa !67
  store i32 %.sroa.01.0.copyload.i13, ptr %i.ac, align 8, !tbaa !67
  br label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit

bb.c:                                             ; preds = %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i
  %i.as = call noundef zeroext i1 @_ZN5clang24BalancedDelimiterTracker16diagnoseOverflowEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #16 ; 0 uses
  br label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit

_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit: ; preds = %_ZN5clang6Parser12ConsumeParenEv.exit, %bb.c
  %i.at = call noundef zeroext i1 @_ZN5clang6Parser16expectIdentifierEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #16
  br i1 %i.at, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit
  %i.au = load i16, ptr %i.f, align 8, !tbaa !27  ; 2 uses
  %i.av = add i16 %i.au, -7
  %i.aw = icmp ult i16 %i.av, 13
  %i.ax = icmp eq i16 %i.au, 1
  %or.cond.i = or i1 %i.ax, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %.0.i10 = select i1 %or.cond.i, ptr null, ptr %i.az
  %i.ba = load i32, ptr %i.a, align 8, !tbaa !66
  store i32 %i.ba, ptr %i.c, align 8, !tbaa !67
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !140, !nonnull !61, !align !141
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.bb, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #16
  %.sroa.01.0.copyload.i11 = load i32, ptr %i.c, align 8, !tbaa !67
  %i.bc = call noundef zeroext i1 @_ZN5clang24BalancedDelimiterTracker12consumeCloseEv(ptr noundef nonnull align 8 dereferenceable(56) %3) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !405, !nonnull !61, !align !141
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 808
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1051
  %.sroa.0.0.copyload.i = load i32, ptr %i.ac, align 8, !tbaa !67
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.ad, align 4, !tbaa !67
  %i.bh = call i64 @_ZN5clang8SemaObjC27ParseObjCProtocolExpressionEPNS_14IdentifierInfoENS_14SourceLocationES3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(328) %i.bg, ptr noundef %.0.i10, i32 %1, i32 %.sroa.01.0.copyload.i, i32 %.sroa.0.0.copyload.i, i32 %.sroa.01.0.copyload.i11, i32 %.sroa.0.0.copyload.i12) #16
  br label %bb.e

bb.e:                                             ; preds = %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit, %bb.d
  %.sroa.09.0 = phi i64 [ %i.bh, %bb.d ], [ 1, %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit ]
  %i.bi = load i8, ptr %i.x, align 8, !tbaa !1057, !range !60, !noundef !61
  %i.bj = load ptr, ptr %3, align 8, !tbaa !1066, !nonnull !61
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !1055
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK5clang17DiagnosticBuilderlsIA10_cEERKS0_RKT_.exit
  %.sroa.09.1 = phi i64 [ 1, %_ZNK5clang17DiagnosticBuilderlsIA10_cEERKS0_RKT_.exit ], [ %.sroa.09.0, %bb.e ]
  ret i64 %.sroa.09.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang6Parser27ParseObjCSelectorExpressionENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(2960) initializes((40, 44)) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %3 = alloca %"class.llvm::SmallVector.1409", align 8 ; 16 uses
  %4 = alloca %"class.clang::SourceLocation", align 4 ; 4 uses
  %5 = alloca %"class.clang::BalancedDelimiterTracker", align 8 ; 15 uses
  %6 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %7 = alloca %"class.clang::SourceLocation", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  store i32 %i.b, ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !140, !nonnull !61, !align !141
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.e, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #16
  %.sroa.01.0.copyload.i = load i32, ptr %i.c, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !27
  %.not65 = icmp eq i16 %i.g, 22
  br i1 %.not65, label %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN5clang6Parser4DiagERKNS_5TokenEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %2, ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef 1631) #16
  %i.h = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsIA10_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.k = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.j) ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !31
  br label %_ZNK5clang17DiagnosticBuilderlsIA10_cEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsIA10_cEERKS0_RKT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.l = phi ptr [ %i.k, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.l, align 8, !tbaa !44
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  store i8 1, ptr %i.p, align 1, !tbaa !45
  %i.q = load ptr, ptr %2, align 8, !tbaa !31     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i8, ptr %i.q, align 8, !tbaa !44    ; 2 uses
  %i.t = add i8 %i.s, 1
  store i8 %i.t, ptr %i.q, align 8, !tbaa !44
  %i.u = zext i8 %i.s to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  store i64 ptrtoint (ptr @.str.38 to i64), ptr %i.v, align 8, !tbaa !47
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.ad

_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  store i32 0, ptr %i.x, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  store i32 12, ptr %i.y, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1904 ; 3 uses
  store ptr %i.z, ptr %5, align 8, !tbaa !1054
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ab = load i8, ptr %i.z, align 8, !tbaa !1055, !range !60, !noundef !61
  store i8 %i.ab, ptr %i.aa, align 8, !tbaa !1057
  store i8 1, ptr %i.z, align 8, !tbaa !1055
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %0, ptr %i.ac, align 8, !tbaa !1059
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 22, ptr %i.ad, align 8, !tbaa !1061
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 64, ptr %i.ae, align 4, !tbaa !1062
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  store i32 0, ptr %i.af, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 2 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !16
  %.repack6.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 23, ptr %i.ai, align 2, !tbaa !1063
  store i64 ptrtoint (ptr @_ZN5clang6Parser12ConsumeParenEv to i64), ptr %i.ah, align 8, !tbaa !1064
  store i64 0, ptr %.repack6.i, align 8, !tbaa !1064
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !1065 ; 2 uses
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !140, !nonnull !61, !align !141 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1042, !nonnull !61, !align !141
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = lshr i64 %i.ap, 32
  %i.ar = zext i16 %i.ak to i64
  %i.as = icmp samesign ugt i64 %i.aq, %i.ar
  br i1 %i.as, label %_ZN5clang6Parser12ConsumeParenEv.exit88, label %bb.c

_ZN5clang6Parser12ConsumeParenEv.exit88:          ; preds = %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i
  %i.at = add i16 %i.ak, 1
  store i16 %i.at, ptr %i.aj, align 8, !tbaa !1094
  %i.au = load i32, ptr %i.a, align 8, !tbaa !66
  store i32 %i.au, ptr %i.c, align 8, !tbaa !67
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.al, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #16
  %.sroa.01.0.copyload.i86 = load i32, ptr %i.c, align 8, !tbaa !67
  store i32 %.sroa.01.0.copyload.i86, ptr %i.af, align 8, !tbaa !67
  br label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit

bb.c:                                             ; preds = %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i
  %i.av = call noundef zeroext i1 @_ZN5clang24BalancedDelimiterTracker16diagnoseOverflowEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #16 ; 0 uses
  br label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit

_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit: ; preds = %_ZN5clang6Parser12ConsumeParenEv.exit88, %bb.c
  %i.aw = load i16, ptr %i.f, align 8, !tbaa !27  ; 2 uses
  %i.ax = icmp ne i16 %i.aw, 22                   ; 3 uses
  br i1 %i.ax, label %bb.d, label %_ZN5clang6Parser12ConsumeParenEv.exit

_ZN5clang6Parser12ConsumeParenEv.exit:            ; preds = %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit
  %i.ay = load i16, ptr %i.aj, align 8, !tbaa !1094
  %i.az = add i16 %i.ay, 1
  store i16 %i.az, ptr %i.aj, align 8, !tbaa !1094
  %i.ba = load i32, ptr %i.a, align 8, !tbaa !66
  store i32 %i.ba, ptr %i.c, align 8, !tbaa !67
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !140, !nonnull !61, !align !141
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.bb, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #16
  %.pr = load i16, ptr %i.f, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %_ZN5clang6Parser12ConsumeParenEv.exit, %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit
  %i.bc = phi i16 [ %.pr, %_ZN5clang6Parser12ConsumeParenEv.exit ], [ %i.aw, %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit ]
  %i.bd = icmp eq i16 %i.bc, 3
  br i1 %i.bd, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !140, !nonnull !61, !align !141 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 760
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !367
  %.not.i26 = icmp eq ptr %i.bg, null
  br i1 %.not.i26, label %_ZN5clang6Parser13cutOffParsingEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 944
  store i8 1, ptr %i.bh, align 8, !tbaa !368
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !369
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  store i8 1, ptr %i.bk, align 2, !tbaa !404
  br label %_ZN5clang6Parser13cutOffParsingEv.exit

_ZN5clang6Parser13cutOffParsingEv.exit:           ; preds = %bb.e, %bb.f
  store i16 1, ptr %i.f, align 8, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !405, !nonnull !61, !align !141 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 728
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !407
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 680
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1038
  %i.br = load ptr, ptr %3, align 8, !tbaa !19
  %i.bs = load i32, ptr %i.x, align 8, !tbaa !20
  %i.bt = zext i32 %i.bs to i64
  call void @_ZN5clang18SemaCodeCompletion24CodeCompleteObjCSelectorEPNS_5ScopeEN4llvm8ArrayRefIPKNS_14IdentifierInfoEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef %i.bq, ptr %i.br, i64 %i.bt) #16
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.bu = call noundef ptr @_ZN5clang6Parser22ParseObjCSelectorPieceERNS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 3 uses
  %.not = icmp eq ptr %i.bu, null
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bv = load i16, ptr %i.f, align 8, !tbaa !27
  switch i16 %i.bv, label %bb.i [
    i16 63, label %bb.j
    i16 73, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZN5clang6Parser4DiagERKNS_5TokenEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef 14) #16
  %i.bw = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i27, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i28, label %_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i28: ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !32
  %i.bz = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.by) ; 2 uses
  store ptr %i.bz, ptr %6, align 8, !tbaa !31
  br label %_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit: ; preds = %bb.i, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i28
  %i.ca = phi ptr [ %i.bz, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i28 ], [ %i.bw, %bb.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.ca, align 8, !tbaa !44
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd
  store i8 4, ptr %i.ce, align 1, !tbaa !45
  %i.cf = load ptr, ptr %6, align 8, !tbaa !31    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i8, ptr %i.cf, align 8, !tbaa !44  ; 2 uses
  %i.ci = add i8 %i.ch, 1
  store i8 %i.ci, ptr %i.cf, align 8, !tbaa !44
  %i.cj = zext i8 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cj
  store i64 5, ptr %i.ck, align 8, !tbaa !47
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.loopexit

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.g
  %i.cl = load i32, ptr %i.x, align 8, !tbaa !20  ; 2 uses
  %i.cm = load i32, ptr %i.y, align 4, !tbaa !21
  %.not.i29 = icmp ult i32 %i.cl, %i.cm
  br i1 %.not.i29, label %bb.l, label %bb.k, !prof !1044

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.bu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit

bb.l:                                             ; preds = %bb.j
  %i.cn = zext i32 %i.cl to i64
  %i.co = load ptr, ptr %3, align 8, !tbaa !19
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn
  store ptr %i.bu, ptr %i.cp, align 1
  %i.cq = load i32, ptr %i.x, align 8, !tbaa !20
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.x, align 8, !tbaa !20
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit: ; preds = %bb.k, %bb.l
  %i.cs = load i16, ptr %i.f, align 8, !tbaa !27  ; 2 uses
  %.not66 = icmp eq i16 %i.cs, 23
  br i1 %.not66, label %.loopexit67, label %.preheader

.preheader:                                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit, %bb.v
  %i.ct = phi i16 [ %.pre.pre, %bb.v ], [ %i.cs, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit ]
  %.021 = phi i32 [ %i.df, %bb.v ], [ 0, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit ] ; 2 uses
  %.not.i30 = icmp eq i16 %i.ct, 73
  br i1 %.not.i30, label %bb.m, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit

bb.m:                                             ; preds = %.preheader
  %i.cu = load i32, ptr %i.a, align 8, !tbaa !66
  store i32 %i.cu, ptr %i.c, align 8, !tbaa !67
  %i.cv = load ptr, ptr %i.d, align 8, !tbaa !140, !nonnull !61, !align !141
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.cv, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #16
  %i.cw = add i32 %.021, 1                        ; 2 uses
  %i.cx = load i32, ptr %i.x, align 8, !tbaa !20  ; 2 uses
  %i.cy = load i32, ptr %i.y, align 4, !tbaa !21
  %.not.i31 = icmp ult i32 %i.cx, %i.cy
  br i1 %.not.i31, label %bb.o, label %bb.n, !prof !1044

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit32

bb.o:                                             ; preds = %bb.m
  %i.cz = zext i32 %i.cx to i64
  %i.da = load ptr, ptr %3, align 8, !tbaa !19
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cz
  store ptr null, ptr %i.db, align 1
  %i.dc = load i32, ptr %i.x, align 8, !tbaa !20
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.x, align 8, !tbaa !20
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit32

_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit: ; preds = %.preheader
  %i.de = call noundef zeroext i1 @_ZN5clang6Parser16ExpectAndConsumeENS_3tok9TokenKindEjN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(2960) %0, i16 noundef zeroext 63, i32 noundef 14, ptr nonnull @.str.2, i64 0) #16
  br i1 %i.de, label %.loopexit, label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit32

_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit32: ; preds = %bb.o, %bb.n, %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit
  %.1 = phi i32 [ %.021, %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit ], [ %i.cw, %bb.n ], [ %i.cw, %bb.o ]
  %i.df = add i32 %.1, 1                          ; 3 uses
  %i.dg = load i16, ptr %i.f, align 8, !tbaa !27
  switch i16 %i.dg, label %bb.r [
    i16 23, label %.loopexit67
    i16 3, label %bb.p
  ]

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit32
  %i.dh = load ptr, ptr %i.d, align 8, !tbaa !140, !nonnull !61, !align !141 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 760
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !367
  %.not.i33 = icmp eq ptr %i.dj, null
  br i1 %.not.i33, label %_ZN5clang6Parser13cutOffParsingEv.exit34, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 944
  store i8 1, ptr %i.dk, align 8, !tbaa !368
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !369
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 6
  store i8 1, ptr %i.dn, align 2, !tbaa !404
  br label %_ZN5clang6Parser13cutOffParsingEv.exit34

_ZN5clang6Parser13cutOffParsingEv.exit34:         ; preds = %bb.p, %bb.q
  store i16 1, ptr %i.f, align 8, !tbaa !27
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !405, !nonnull !61, !align !141 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 728
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !407
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 680
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1038
  %i.du = load ptr, ptr %3, align 8, !tbaa !19
  %i.dv = load i32, ptr %i.x, align 8, !tbaa !20
  %i.dw = zext i32 %i.dv to i64
  call void @_ZN5clang18SemaCodeCompletion24CodeCompleteObjCSelectorEPNS_5ScopeEN4llvm8ArrayRefIPKNS_14IdentifierInfoEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef %i.dt, ptr %i.du, i64 %i.dw) #16
  br label %.loopexit

bb.r:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.dx = call noundef ptr @_ZN5clang6Parser22ParseObjCSelectorPieceERNS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 4 dereferenceable(4) %7) ; 3 uses
  %i.dy = load i32, ptr %i.x, align 8, !tbaa !20  ; 2 uses
  %i.dz = load i32, ptr %i.y, align 4, !tbaa !21
  %.not.i35 = icmp ult i32 %i.dy, %i.dz
  br i1 %.not.i35, label %bb.t, label %bb.s, !prof !1044

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.dx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit36

bb.t:                                             ; preds = %bb.r
  %i.ea = zext i32 %i.dy to i64
  %i.eb = load ptr, ptr %3, align 8, !tbaa !19
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  store ptr %i.dx, ptr %i.ec, align 1
  %i.ed = load i32, ptr %i.x, align 8, !tbaa !20
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.x, align 8, !tbaa !20
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit36

_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit36: ; preds = %bb.s, %bb.t
  %.not22 = icmp eq ptr %i.dx, null
  %.pre.pre = load i16, ptr %i.f, align 8, !tbaa !27 ; 3 uses
  br i1 %.not22, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit36
  switch i16 %.pre.pre, label %.thread [
    i16 63, label %bb.v
    i16 73, label %bb.v
  ]

.thread:                                          ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.ef = icmp ne i16 %.pre.pre, 23
  br label %.loopexit67

bb.v:                                             ; preds = %bb.u, %bb.u, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.preheader

.loopexit67:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit32, %.thread, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit
  %.not85 = phi i1 [ false, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit ], [ %i.ef, %.thread ], [ false, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit32 ]
  %.2 = phi i32 [ 0, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit ], [ %i.df, %.thread ], [ %i.df, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14IdentifierInfoELb1EE9push_backES4_.exit32 ]
  %brmerge = select i1 %i.ax, i1 true, i1 %.not85
  br i1 %brmerge, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %.loopexit67
  %i.eg = load i16, ptr %i.aj, align 8, !tbaa !1094 ; 4 uses
  %.not.i37 = icmp eq i16 %i.eg, 0
  br i1 %.not.i37, label %_ZN5clang6Parser12ConsumeParenEv.exit58, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 2760 ; 2 uses
  %.promoted.i.i38 = load i32, ptr %i.eh, align 8, !tbaa !20 ; 2 uses
  %.not.i2.i.i39 = icmp eq i32 %.promoted.i.i38, 0
  br i1 %.not.i2.i.i39, label %.sink.split.i50, label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %bb.x
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 2752
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !19
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.el = load i16, ptr %i.ek, align 2            ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.en = load i16, ptr %i.em, align 4            ; 2 uses
  %i.eo = zext i32 %.promoted.i.i38 to i64
  br label %bb.y

bb.y:                                             ; preds = %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i53, %.lr.ph.i.i40
  %indvars.iv.i.i41 = phi i64 [ %i.eo, %.lr.ph.i.i40 ], [ %indvars.iv.next.i.i54, %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i53 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %indvars.iv.i.i41 ; 5 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -10
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !1113 ; 2 uses
  %i.es = icmp eq i16 %i.eg, %i.er
  br i1 %i.es, label %bb.z, label %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.thread.i.i.i42

bb.z:                                             ; preds = %bb.y
  %i.et = getelementptr inbounds i8, ptr %i.ep, i64 -8
  %i.eu = load i16, ptr %i.et, align 8, !tbaa !1114
  %i.ev = icmp eq i16 %i.el, %i.eu
  br i1 %i.ev, label %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.i.i.i57, label %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.thread.i.i.i42

_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.i.i.i57: ; preds = %bb.z
  %i.ew = getelementptr inbounds i8, ptr %i.ep, i64 -6
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !1115 ; 2 uses
  %i.ey = icmp eq i16 %i.en, %i.ex
  br i1 %i.ey, label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i53, label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i.i49

_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.thread.i.i.i42: ; preds = %bb.z, %bb.y
  %.old.i.i.i43 = icmp ugt i16 %i.eg, %i.er
  br i1 %.old.i.i.i43, label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i53, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.thread.i.i.i42
  %.phi.trans.insert5.i.i.i44 = getelementptr inbounds i8, ptr %i.ep, i64 -8
  %.pre6.i.i.i45 = load i16, ptr %.phi.trans.insert5.i.i.i44, align 8, !tbaa !1114
  %i.ez = icmp ugt i16 %i.el, %.pre6.i.i.i45
  br i1 %i.ez, label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i53, label %._ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit_crit_edge.i.i46

._ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit_crit_edge.i.i46: ; preds = %bb.aa
  %.phi.trans.insert.i.i47 = getelementptr inbounds i8, ptr %i.ep, i64 -6
  %.pre.i.i48 = load i16, ptr %.phi.trans.insert.i.i47, align 2, !tbaa !1115
  br label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i.i49

_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i.i49: ; preds = %._ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit_crit_edge.i.i46, %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.i.i.i57
  %i.fa = phi i16 [ %.pre.i.i48, %._ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit_crit_edge.i.i46 ], [ %i.ex, %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.i.i.i57 ]
  %i.fb = icmp ugt i16 %i.en, %i.fa
  br i1 %i.fb, label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i53, label %.sink.split.i50

_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i53: ; preds = %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i.i49, %bb.aa, %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.thread.i.i.i42, %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.i.i.i57
  %indvars.iv.next.i.i54 = add nsw i64 %indvars.iv.i.i41, -1 ; 2 uses
  %indvars.i.i55 = trunc i64 %indvars.iv.next.i.i54 to i32 ; 2 uses
  store i32 %indvars.i.i55, ptr %i.eh, align 8, !tbaa !20
  %.not.i.i.i56 = icmp eq i32 %indvars.i.i55, 0
  br i1 %.not.i.i.i56, label %.sink.split.i50, label %bb.y, !llvm.loop !0

.sink.split.i50:                                  ; preds = %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i53, %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i.i49, %bb.x
  %i.fc = add i16 %i.eg, -1
  store i16 %i.fc, ptr %i.aj, align 8, !tbaa !1094
  br label %_ZN5clang6Parser12ConsumeParenEv.exit58

_ZN5clang6Parser12ConsumeParenEv.exit58:          ; preds = %bb.w, %.sink.split.i50
  %i.fd = load i32, ptr %i.a, align 8, !tbaa !66
  store i32 %i.fd, ptr %i.c, align 8, !tbaa !67
  %i.fe = load ptr, ptr %i.d, align 8, !tbaa !140, !nonnull !61, !align !141
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.fe, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #16
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit67, %_ZN5clang6Parser12ConsumeParenEv.exit58
  %i.ff = call noundef zeroext i1 @_ZN5clang24BalancedDelimiterTracker12consumeCloseEv(ptr noundef nonnull align 8 dereferenceable(56) %5) ; 0 uses
  %i.fg = load ptr, ptr %i.d, align 8, !tbaa !140, !nonnull !61, !align !141
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 680
  %i.fi = load ptr, ptr %3, align 8, !tbaa !19
  %i.fj = call i64 @_ZN5clang13SelectorTable11getSelectorEjPPKNS_14IdentifierInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, i32 noundef %.2, ptr noundef nonnull %i.fi) #16
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !405, !nonnull !61, !align !141
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 808
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1051
  %.sroa.0.0.copyload.i = load i32, ptr %i.af, align 8, !tbaa !67
  %.sroa.0.0.copyload.i59 = load i32, ptr %i.ag, align 4, !tbaa !67
  %i.fo = call i64 @_ZN5clang8SemaObjC27ParseObjCSelectorExpressionENS_8SelectorENS_14SourceLocationES2_S2_S2_b(ptr noundef nonnull align 8 dereferenceable(328) %i.fn, i64 %i.fj, i32 %1, i32 %.sroa.01.0.copyload.i, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i59, i1 noundef zeroext %i.ax) #16
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit, %_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit, %bb.ab, %_ZN5clang6Parser13cutOffParsingEv.exit34, %_ZN5clang6Parser13cutOffParsingEv.exit
  %.sroa.020.2 = phi i64 [ 1, %_ZN5clang6Parser13cutOffParsingEv.exit ], [ 1, %_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit ], [ %i.fo, %bb.ab ], [ 1, %_ZN5clang6Parser13cutOffParsingEv.exit34 ], [ 1, %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit ]
  %i.fp = load i8, ptr %i.aa, align 8, !tbaa !1057, !range !60, !noundef !61
  %i.fq = load ptr, ptr %5, align 8, !tbaa !1066, !nonnull !61
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !1055
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.fr = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.w
  br i1 %i.fs, label %_ZN4llvm11SmallVectorIPKN5clang14IdentifierInfoELj12EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.fr) #16
  br label %_ZN4llvm11SmallVectorIPKN5clang14IdentifierInfoELj12EED2Ev.exit

_ZN4llvm11SmallVectorIPKN5clang14IdentifierInfoELj12EED2Ev.exit: ; preds = %.loopexit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm11SmallVectorIPKN5clang14IdentifierInfoELj12EED2Ev.exit, %_ZNK5clang17DiagnosticBuilderlsIA10_cEERKS0_RKT_.exit
  %.sroa.020.3 = phi i64 [ 1, %_ZNK5clang17DiagnosticBuilderlsIA10_cEERKS0_RKT_.exit ], [ %.sroa.020.2, %_ZN4llvm11SmallVectorIPKN5clang14IdentifierInfoELj12EED2Ev.exit ]
  ret i64 %.sroa.020.3
}

declare i64 @_ZN5clang6Parser26ParseAvailabilityCheckExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(2960), i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6Parser26ParseObjCXXMessageReceiverERbRPv(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::DeclSpec", align 8   ; 22 uses
  %4 = alloca %"class.clang::Declarator", align 8 ; 32 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1213, !range !60, !noundef !61
  store i8 1, ptr %i.a, align 8, !tbaa !1055
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !27
  switch i16 %i.e, label %bb.c [
    i16 426, label %bb.b
    i16 154, label %bb.b
    i16 73, label %bb.b
    i16 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN5clang6Parser27TryAnnotateTypeOrScopeTokenENS_23ImplicitTypenameContextEb(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef 0, i1 noundef zeroext false) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140, !nonnull !61, !align !141
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1042, !nonnull !61, !align !141
  %i.k = tail call noundef zeroext i1 @_ZNK5clang5Token21isSimpleTypeSpecifierERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 8 dereferenceable(1136) %i.j) #16
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i64 @_ZN5clang6Parser15ParseExpressionENS_26TypoCorrectionTypeBehaviorE(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef 0) #16 ; 2 uses
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %1, align 1, !tbaa !1055
  %i.n = and i64 %i.l, -2
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %2, align 8, !tbaa !1104
  br label %bb.s

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 0, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store ptr %i.s, ptr %i.r, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.t, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 2, ptr %i.u, align 4, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  store ptr %i.p, ptr %i.v, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 0, ptr %i.y, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 2, ptr %i.z, align 4, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 296
  store ptr null, ptr %i.ab, align 8, !tbaa !1140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(180) %i.aa, i8 0, i64 180, i1 false)
  call void @_ZN5clang6Parser27ParseCXXSimpleTypeSpecifierERNS_8DeclSpecE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(304) %3) #16
  %i.ac = load i16, ptr %i.d, align 8, !tbaa !27
  %i.ad = icmp eq i16 %i.ac, 22
  br i1 %i.ad, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ae = call i64 @_ZN5clang6Parser31ParseCXXTypeConstructExpressionERKNS_8DeclSpecE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(304) %3) #16 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %.thread25, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = and i64 %i.ae, -2
  %i.ah = call i64 @_ZN5clang6Parser28ParsePostfixExpressionSuffixENS_12ActionResultIPNS_4ExprELb1EEE(ptr noundef nonnull align 8 dereferenceable(2960) %0, i64 %i.ag) #16 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %.thread25, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = and i64 %i.ah, -2
  %i.ak = call i64 @_ZN5clang6Parser26ParseRHSOfBinaryExpressionENS_12ActionResultIPNS_4ExprELb1EEENS_4prec5LevelE(ptr noundef nonnull align 8 dereferenceable(2960) %0, i64 %i.aj, i32 noundef 1) #16 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %.thread25, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %1, align 1, !tbaa !1055
  %i.am = and i64 %i.ak, -2
  %i.an = inttoptr i64 %i.am to ptr
  store ptr %i.an, ptr %2, align 8, !tbaa !1104
  br label %.thread25

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ao = load atomic i8, ptr @_ZGVZN5clang20ParsedAttributesView4noneEvE5Attrs acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %_ZN5clang20ParsedAttributesView4noneEv.exit, !prof !1162

bb.l:                                             ; preds = %bb.k
  %i.aq = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5clang20ParsedAttributesView4noneEvE5Attrs) #16
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %_ZN5clang20ParsedAttributesView4noneEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, align 8, !tbaa !16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, i64 4), align 4, !tbaa !16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, i64 8), align 8, !tbaa !19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, i64 16), align 8, !tbaa !20
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, i64 20), align 4, !tbaa !21
  %i.ar = call i32 @__cxa_atexit(ptr nonnull @_ZN5clang20ParsedAttributesViewD2Ev, ptr nonnull @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, ptr nonnull @__dso_handle) #16 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5clang20ParsedAttributesView4noneEvE5Attrs) #16
  br label %_ZN5clang20ParsedAttributesView4noneEv.exit

_ZN5clang20ParsedAttributesView4noneEv.exit:      ; preds = %bb.k, %bb.l, %bb.m
  store ptr %3, ptr %4, align 8, !tbaa !1164
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr null, ptr %i.at, align 8, !tbaa !45
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 0, ptr %i.au, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 84
  store i32 0, ptr %i.av, align 4, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.as, i8 0, i64 52, i1 false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ax, align 8, !tbaa !67
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i32 5, ptr %i.ay, align 8, !tbaa !1178
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.az, i8 0, i64 20, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 144
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i32 0, ptr %i.bc, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 140
  store i32 4, ptr %i.bd, align 4, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 720 ; 2 uses
  %i.bf = load i64, ptr %3, align 8
  %i.bg = and i64 %i.bf, 520192
  %i.bh = icmp eq i64 %i.bg, 282624
  %i.bi = zext i1 %i.bh to i16
  %i.bj = load i16, ptr %i.be, align 8
  %i.bk = and i16 %i.bj, -1024
  %i.bl = or disjoint i16 %i.bk, %i.bi
  store i16 %i.bl, ptr %i.be, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 728
  %i.bn = load ptr, ptr %i.v, align 8, !tbaa !54, !nonnull !61, !align !141
  store i32 0, ptr %i.bm, align 8, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 732
  store i32 0, ptr %i.bo, align 4, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 736
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 752
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 744
  store i32 0, ptr %i.br, align 8, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 748
  store i32 2, ptr %i.bs, align 4, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 768
end_hunk_0
