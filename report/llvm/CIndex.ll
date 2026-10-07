Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CIndex?download=true
inline.NumInlined: 13967
inline.NumDeleted: 7767
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@clang_getCursor:bb.a
  %.sroa.6137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 %i.cr, ptr %.sroa.6137.0..sroa_idx, align 4
  %.sroa.7138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.co, ptr %.sroa.7138.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  store ptr %10, ptr %9, align 8, !tbaa !2126
  %i.ct = ptrtoint ptr %9 to i64
  %i.cu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcjjS7_EEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.ct) #38 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.cv = call ptr @clang_getCString(ptr %i.cf, i32 %i.cg) #38
  %i.cw = call ptr @clang_getCString(ptr %i.cm, i32 %i.cn) #38
  %i.cx = load i32, ptr %i.f, align 4, !tbaa !84, !noalias !2127
  %i.cy = load i32, ptr %i.e, align 4, !tbaa !84, !noalias !2127
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr @.str.328, ptr %8, align 8
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bk, ptr %.sroa.4128.0..sroa_idx, align 8
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.cw, ptr %.sroa.5129.0..sroa_idx, align 8
  %.sroa.6130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %i.cx, ptr %.sroa.6130.0..sroa_idx, align 8
  %.sroa.7131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %i.cy, ptr %.sroa.7131.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.cv, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  store ptr %8, ptr %7, align 8, !tbaa !2128
  %i.cz = ptrtoint ptr %7 to i64
  %i.da = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcjjS7_S7_EEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.cz) #38 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @clang_disposeString(ptr %i.bu, i32 %i.bv) #38
  call void @clang_disposeString(ptr %i.cf, i32 %i.cg) #38
  call void @clang_disposeString(ptr %i.cj, i32 %i.ck) #38
  call void @clang_disposeString(ptr %i.cm, i32 %i.cn) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  call void @clang_getCursorDefinition(ptr dead_on_unwind nonnull writable sret(%struct.CXCursor) align 8 %14, ptr noundef nonnull byval(%struct.CXCursor) align 8 %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  call void @_ZN5clang8cxcursor19MakeCXCursorInvalidE12CXCursorKindP21CXTranslationUnitImpl(ptr dead_on_unwind nonnull writable sret(%struct.CXCursor) align 8 %15, i32 noundef 70, ptr noundef null) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false)
  %i.db = load i32, ptr %6, align 8, !tbaa !111   ; 2 uses
  %i.dc = add i32 %i.db, -40
  %or.cond.i.i109 = icmp ult i32 %i.dc, -39
  %i.dd = add i32 %i.db, -605
  %i.de = icmp ult i32 %i.dd, -5
  %narrow.i.not.i110 = and i1 %or.cond.i.i109, %i.de
  br i1 %narrow.i.not.i110, label %bb.x, label %bb.w

bb.w:                                             ; preds = %clang_getFileName.exit108
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.df, align 8, !tbaa !89
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %clang_getFileName.exit108
  %i.dg = load i32, ptr %5, align 8, !tbaa !111   ; 2 uses
  %i.dh = add i32 %i.dg, -40
  %or.cond.i2.i = icmp ult i32 %i.dh, -39
  %i.di = add i32 %i.dg, -605
  %i.dj = icmp ult i32 %i.di, -5
  %narrow.i3.not.i = and i1 %or.cond.i2.i, %i.dj
  br i1 %narrow.i3.not.i, label %clang_equalCursors.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.dk, align 8, !tbaa !89
  br label %clang_equalCursors.exit

clang_equalCursors.exit:                          ; preds = %bb.x, %bb.y
  %i.dl = call noundef zeroext i1 @_ZN5clang8cxcursoreqE8CXCursorS1_(ptr noundef nonnull byval(%struct.CXCursor) align 8 %6, ptr noundef nonnull byval(%struct.CXCursor) align 8 %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %i.dl, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %clang_equalCursors.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @clang_getCursorLocation(ptr dead_on_unwind nonnull writable sret(%struct.CXSourceLocation) align 8 %16, ptr noundef nonnull byval(%struct.CXCursor) align 8 %14)
  %i.dm = load i32, ptr %14, align 8, !tbaa !111
  %i.dn = call { ptr, i32 } @clang_getCursorKindSpelling(i32 noundef %i.dm) ; 2 uses
  %i.do = extractvalue { ptr, i32 } %i.dn, 0      ; 2 uses
  %i.dp = extractvalue { ptr, i32 } %i.dn, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #38
  call void @clang_getFileLocation(ptr noundef nonnull byval(%struct.CXSourceLocation) align 8 %16, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef null) #38
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !89  ; 2 uses
  %.not.i111 = icmp eq ptr %i.dq, null
  br i1 %.not.i111, label %bb.aa, label %.preheader.i112

bb.aa:                                            ; preds = %bb.z
  %i.dr = call { ptr, i32 } @_ZN5clang8cxstring10createNullEv() #38
  br label %clang_getFileName.exit120

.preheader.i112:                                  ; preds = %bb.z, %.preheader.i112
  %.05.i.i.i113 = phi ptr [ %i.dv, %.preheader.i112 ], [ %i.dq, %bb.z ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.05.i.i.i113, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i114 = load i64, ptr %i.ds, align 8 ; 2 uses
  %i.dt = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i114, 4
  %.not.i.i.i.i.i.i.i115 = icmp eq i64 %i.dt, 0
  %i.du = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i114, -5 ; 2 uses
  %i.dv = inttoptr i64 %i.du to ptr
  %.not7.i.i.i116 = icmp eq i64 %i.du, 0
  %.not.i.i.i117 = or i1 %.not.i.i.i.i.i.i.i115, %.not7.i.i.i116
  br i1 %.not.i.i.i117, label %_ZNK5clang12FileEntryRef7getNameEv.exit.i118, label %.preheader.i112

_ZNK5clang12FileEntryRef7getNameEv.exit.i118:     ; preds = %.preheader.i112
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i.i.i113, i64 32
  %i.dx = load i64, ptr %.05.i.i.i113, align 8, !tbaa !1251
  %i.dy = call { ptr, i32 } @_ZN5clang8cxstring9createRefEN4llvm9StringRefE(ptr nonnull %i.dw, i64 %i.dx) #38
  br label %clang_getFileName.exit120

clang_getFileName.exit120:                        ; preds = %bb.aa, %_ZNK5clang12FileEntryRef7getNameEv.exit.i118
  %.pn.i119 = phi { ptr, i32 } [ %i.dy, %_ZNK5clang12FileEntryRef7getNameEv.exit.i118 ], [ %i.dr, %bb.aa ] ; 2 uses
  %i.dz = extractvalue { ptr, i32 } %.pn.i119, 0  ; 2 uses
  %i.ea = extractvalue { ptr, i32 } %.pn.i119, 1  ; 2 uses
  %i.eb = call ptr @clang_getCString(ptr %i.do, i32 %i.dp) #38
  %i.ec = call ptr @clang_getCString(ptr %i.dz, i32 %i.ea) #38
  %i.ed = load i32, ptr %i.i, align 4, !tbaa !84, !noalias !2129
  %i.ee = load i32, ptr %i.h, align 4, !tbaa !84, !noalias !2129
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @.str.329, ptr %4, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ed, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.ee, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ec, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.eb, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr %4, ptr %3, align 8, !tbaa !2130
  %i.ef = ptrtoint ptr %3 to i64
  %i.eg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcS7_jjEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.ef) #38 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @clang_disposeString(ptr %i.dz, i32 %i.ea) #38
  call void @clang_disposeString(ptr %i.do, i32 %i.dp) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %bb.ab

bb.ab:                                            ; preds = %clang_getFileName.exit120, %clang_equalCursors.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.eh = load i32, ptr %i.bc, align 4, !tbaa !1238
  %i.ei = add i32 %i.eh, -1                       ; 2 uses
  store i32 %i.ei, ptr %i.bc, align 4, !tbaa !1238
  %.not.i.i.i.i122 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i.i.i122, label %bb.ac, label %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit123

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5clang7cxindex6LoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.bc) #38
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.bc, i64 noundef 192) #39
  br label %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit123

_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit123: ; preds = %_ZN5clang7cxindex6Logger16isLoggingEnabledEv.exit.i91, %bb.ab, %bb.ac
  call void @_ZN5clang7ASTUnit16ConcurrencyState6finishEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #38
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit123, %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang8cxcursor9getCursorEP21CXTranslationUnitImplNS_14SourceLocationE(ptr dead_on_unwind noalias writable sret(%struct.CXCursor) align 8 %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.GetCursorData, align 8      ; 8 uses
  %4 = alloca %"class.clang::cxcursor::CursorVisitor", align 8 ; 23 uses
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN5clang4cxtuL10getASTUnitEP21CXTranslationUnitImpl.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang8cxcursor19MakeCXCursorInvalidE12CXCursorKindP21CXTranslationUnitImpl(ptr dead_on_unwind writable sret(%struct.CXCursor) align 8 %0, i32 noundef 70, ptr noundef null) #38
  br label %bb.h

_ZN5clang4cxtuL10getASTUnitEP21CXTranslationUnitImpl.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !263
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2600
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1401, !nonnull !88, !align !1043
  %i.j = tail call i32 @_ZN5clang5Lexer19GetBeginningOfTokenENS_14SourceLocationERKNS_13SourceManagerERKNS_11LangOptionsE(i32 %2, ptr noundef nonnull align 8 dereferenceable(776) %i.e, ptr noundef nonnull align 8 dereferenceable(1136) %i.i) #38 ; 4 uses
  tail call void @_ZN5clang8cxcursor19MakeCXCursorInvalidE12CXCursorKindP21CXTranslationUnitImpl(ptr dead_on_unwind writable sret(%struct.CXCursor) align 8 %0, i32 noundef 71, ptr noundef null) #38
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.h, label %_ZN5clang8cxcursor13CursorVisitorC2EP21CXTranslationUnitImplPF18CXChildVisitResult8CXCursorS5_PvES6_bbNS_11SourceRangeEbPFbS5_S6_E.exit

_ZN5clang8cxcursor13CursorVisitorC2EP21CXTranslationUnitImplPF18CXChildVisitResult8CXCursorS5_PvES6_bbNS_11SourceRangeEbPFbS5_S6_E.exit: ; preds = %_ZN5clang4cxtuL10getASTUnitEP21CXTranslationUnitImpl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !110
  store i32 %i.j, ptr %3, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %0, ptr %i.m, align 8, !tbaa !89
  %i.n = tail call noundef zeroext i1 @_ZNK5clang13SourceManager19isMacroArgExpansionENS_14SourceLocationEPS1_(ptr noundef nonnull align 8 dereferenceable(776) %i.k, i32 %i.j, ptr noundef null) #38
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = zext i1 %i.n to i8
  store i8 %i.p, ptr %i.o, align 4, !tbaa !1408
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 0, ptr %i.q, align 1, !tbaa !1409
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %.sroa.2.0.insert.ext = zext i32 %i.j to i64
  %.sroa.0.0.insert.insert = mul nuw i64 %.sroa.2.0.insert.ext, 4294967297
  store ptr %1, ptr %4, align 8, !tbaa !893
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !108
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @_ZL16GetCursorVisitor8CXCursorS_Pv, ptr %i.t, align 8, !tbaa !113
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr null, ptr %i.u, align 8, !tbaa !115
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %3, ptr %i.v, align 8, !tbaa !114
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i8 1, ptr %i.w, align 8, !tbaa !119
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 81
  store i8 0, ptr %i.x, align 1, !tbaa !984
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 84
  store i64 %.sroa.0.0.insert.insert, ptr %i.y, align 4, !tbaa !84
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 92
  store i8 0, ptr %i.z, align 4, !tbaa !894
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i32 0, ptr %i.ad, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 140
  store i32 5, ptr %i.ae, align 4, !tbaa !978
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 184 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 196
  store i32 5, ptr %i.ai, align 4, !tbaa !978
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 71, ptr %i.aj, align 8, !tbaa !1376
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 32, i1 false)
  %i.al = call noundef zeroext i1 @_ZN5clang8cxcursor13CursorVisitor15visitFileRegionEv(ptr noundef nonnull align 8 dereferenceable(240) %4) ; 0 uses
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !52 ; 3 uses
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !53 ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %.idx.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i
  %.not7.i = icmp eq i32 %i.an, 0
  br i1 %.not7.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.af, align 8, !tbaa !52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN5clang8cxcursor13CursorVisitorC2EP21CXTranslationUnitImplPF18CXChildVisitResult8CXCursorS5_PvES6_bbNS_11SourceRangeEbPFbS5_S6_E.exit
  %i.aq = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.am, %_ZN5clang8cxcursor13CursorVisitorC2EP21CXTranslationUnitImplPF18CXChildVisitResult8CXCursorS5_PvES6_bbNS_11SourceRangeEbPFbS5_S6_E.exit ] ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ag
  br i1 %i.ar, label %_ZN4llvm11SmallVectorIPNS0_IN5clang8cxcursor10VisitorJobELj10EEELj5EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.aq) #38
  br label %_ZN4llvm11SmallVectorIPNS0_IN5clang8cxcursor10VisitorJobELj10EEELj5EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS0_IN5clang8cxcursor10VisitorJobELj10EEELj5EED2Ev.exit.i: ; preds = %bb.c, %._crit_edge.i
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !52 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ac
  br i1 %i.at, label %_ZN5clang8cxcursor13CursorVisitorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPNS0_IN5clang8cxcursor10VisitorJobELj10EEELj5EED2Ev.exit.i
  call void @free(ptr noundef %i.as) #38
  br label %_ZN5clang8cxcursor13CursorVisitorD2Ev.exit

.lr.ph.i:                                         ; preds = %_ZN5clang8cxcursor13CursorVisitorC2EP21CXTranslationUnitImplPF18CXChildVisitResult8CXCursorS5_PvES6_bbNS_11SourceRangeEbPFbS5_S6_E.exit, %bb.g
  %.08.i = phi ptr [ %i.az, %bb.g ], [ %i.am, %_ZN5clang8cxcursor13CursorVisitorC2EP21CXTranslationUnitImplPF18CXChildVisitResult8CXCursorS5_PvES6_bbNS_11SourceRangeEbPFbS5_S6_E.exit ] ; 2 uses
  %i.au = load ptr, ptr %.08.i, align 8, !tbaa !990 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !52 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN4llvm11SmallVectorIN5clang8cxcursor10VisitorJobELj10EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.aw) #38
  br label %_ZN4llvm11SmallVectorIN5clang8cxcursor10VisitorJobELj10EED2Ev.exit.i

_ZN4llvm11SmallVectorIN5clang8cxcursor10VisitorJobELj10EED2Ev.exit.i: ; preds = %bb.f, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 656) #39
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang8cxcursor10VisitorJobELj10EED2Ev.exit.i, %.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 2 uses
  %.not.i8 = icmp eq ptr %i.az, %i.ap
  br i1 %.not.i8, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !11

_ZN5clang8cxcursor13CursorVisitorD2Ev.exit:       ; preds = %_ZN4llvm11SmallVectorIPNS0_IN5clang8cxcursor10VisitorJobELj10EEELj5EED2Ev.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.h

bb.h:                                             ; preds = %_ZN5clang4cxtuL10getASTUnitEP21CXTranslationUnitImpl.exit, %_ZN5clang8cxcursor13CursorVisitorD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, 2) i32 @clang_isCursorDefinition(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.CXCursor, align 8           ; 2 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.b = add i32 %i.a, -40
  %or.cond.i = icmp ult i32 %i.b, -39
  %i.c = add i32 %i.a, -605
  %i.d = icmp ult i32 %i.c, -5
  %narrow.i.not = and i1 %or.cond.i, %i.d
  br i1 %narrow.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @clang_getCursorDefinition(ptr dead_on_unwind nonnull writable sret(%struct.CXCursor) align 8 %1, ptr noundef nonnull byval(%struct.CXCursor) align 8 %0)
  %i.e = call noundef zeroext i1 @_ZN5clang8cxcursoreqE8CXCursorS1_(ptr noundef nonnull byval(%struct.CXCursor) align 8 %1, ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @clang_getFileLocation(ptr noundef byval(%struct.CXSourceLocation) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare { ptr, i32 } @clang_getCursorUSR(ptr noundef byval(%struct.CXCursor) align 8) local_unnamed_addr #4

declare ptr @clang_getCString(ptr, i32) local_unnamed_addr #4

declare void @clang_disposeString(ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @clang_getCursorDefinition(ptr dead_on_unwind noalias writable sret(%struct.CXCursor) align 8 %0, ptr nofree noundef byval(%struct.CXCursor) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.CXCursor, align 8           ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.CXCursor, align 8           ; 2 uses
  %4 = alloca %struct.CXCursor, align 8           ; 2 uses
  %5 = alloca %struct.CXCursor, align 8           ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !111    ; 4 uses
  %i.d = add i32 %i.c, -74
  %i.e = icmp ult i32 %i.d, -4
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang8cxcursor19MakeCXCursorInvalidE12CXCursorKindP21CXTranslationUnitImpl(ptr dead_on_unwind writable sret(%struct.CXCursor) align 8 %0, i32 noundef 70, ptr noundef null) #38
  br label %bb.bg

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN5clang8cxcursor11getCursorTUE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %1) #38 ; 18 uses
  %i.g = add i32 %i.c, -40
  %i.h = icmp ult i32 %i.g, 11
  %i.i = add i32 %i.c, -100
  %i.j = icmp ult i32 %i.i, 57
  %or.cond.not = or i1 %i.h, %i.j                 ; 2 uses
  br i1 %or.cond.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @clang_getCursorReferenced(ptr dead_on_unwind nonnull writable sret(%struct.CXCursor) align 8 %2, ptr noundef nonnull byval(%struct.CXCursor) align 8 %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !117
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %.pre = load i32, ptr %1, align 8, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi i32 [ %i.c, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %i.l = icmp eq i32 %i.k, 502
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @clang_getCursorReferenced(ptr dead_on_unwind writable sret(%struct.CXCursor) align 8 %0, ptr noundef nonnull byval(%struct.CXCursor) align 8 %1)
  br label %bb.bg

bb.g:                                             ; preds = %bb.e
  %i.m = add i32 %i.k, -40
  %or.cond.i = icmp ult i32 %i.m, -39
  %i.n = add i32 %i.k, -605
  %i.o = icmp ult i32 %i.n, -5
  %narrow.i.not = and i1 %or.cond.i, %i.o
end_hunk_0
