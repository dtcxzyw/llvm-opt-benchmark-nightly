Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BugReporterVisitors?download=true
inline.NumInlined: 8634
inline.NumDeleted: 4808
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5clang4ento36SuppressInlineDefensiveChecksVisitor9VisitNodeEPKNS0_12ExplodedNodeERNS0_18BugReporterContextERNS0_22PathSensitiveBugReportE:bb.a
  %i.al = tail call noundef zeroext i1 @_ZNK5clang10StackFrame10isParentOfEPKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef %i.ak) #24
  br i1 %i.al, label %._crit_edge122, label %.critedge53

._crit_edge122:                                   ; preds = %bb.k
  %.pre123 = load ptr, ptr %i.ah, align 8, !tbaa !831 ; 2 uses
  %.sroa.5.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre123, i64 24
  %.sroa.5.0.copyload.pre = load i64, ptr %.sroa.5.0..sroa_idx.phi.trans.insert, align 8, !tbaa !115
  br label %bb.l

.critedge53:                                      ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 696
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr @.str.14, ptr %8, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ag, ptr %i.an, align 8
  call void @_ZN4llvm8SmallSetISt4pairIPKvS3_ELj4ESt4lessIS4_EE10insertImplIS4_EES1_INS_16SmallSetIteratorIS4_Lj4ES6_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1347") align 8 %7, ptr noundef nonnull align 8 dereferenceable(128) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %.critedge58

bb.l:                                             ; preds = %._crit_edge122, %bb.j
  %.sroa.5.0.copyload = phi i64 [ %.sroa.5.0.copyload.pre, %._crit_edge122 ], [ %.sroa.3.0.copyload.i60, %bb.j ]
  %i.ao = phi ptr [ %.pre123, %._crit_edge122 ], [ %i.ai, %bb.j ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.085.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !115
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.691.0.copyload = load i64, ptr %.sroa.691.0..sroa_idx, align 8, !tbaa !115
  %i.aq = trunc i64 %.sroa.691.0.copyload to i32
  %i.ar = trunc i64 %.sroa.5.0.copyload to i32
  %i.as = shl i32 %i.aq, 3
  %i.at = and i32 %i.as, 48
  %i.au = shl i32 %i.ar, 1
  %i.av = and i32 %i.au, 12
  %i.aw = trunc i64 %.sroa.4.0.copyload to i32
  %i.ax = and i32 %i.aw, 3
  %i.ay = add nsw i32 %i.ax, -3
  %i.az = add nsw i32 %i.ay, %i.av
  %i.ba = add nsw i32 %i.az, %i.at
  %i.bb = icmp ult i32 %i.ba, 11
  br i1 %i.bb, label %bb.m, label %.critedge56

.critedge56:                                      ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %.critedge58

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.081.0.copyload = load ptr, ptr %i.bc, align 8, !tbaa !47 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !115
  %.sroa.10.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !115
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !115
  %i.bd = trunc i64 %.sroa.12.0.copyload to i32
  %i.be = trunc i64 %.sroa.10.0.copyload to i32
  %i.bf = shl i32 %i.bd, 3
  %i.bg = and i32 %i.bf, 48                       ; 2 uses
  %i.bh = shl i32 %i.be, 1
  %i.bi = and i32 %i.bh, 12                       ; 2 uses
  %i.bj = trunc i64 %.sroa.6.0.copyload to i32
  %i.bk = and i32 %i.bj, 3                        ; 2 uses
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = or disjoint i32 %i.bl, %i.bg
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.p, label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit

_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit: ; preds = %bb.m
  %i.bo = add nsw i32 %i.bk, -3
  %i.bp = add nsw i32 %i.bo, %i.bi
  %i.bq = add nsw i32 %i.bp, %i.bg
  %i.br = icmp ult i32 %i.bq, 11
  br i1 %i.br, label %bb.n, label %.critedge51.critedge

bb.n:                                             ; preds = %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit
  %i.bs = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.081.0.copyload) #23
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !201
  %i.bw = tail call noundef ptr @_ZN5clang19AnalysisDeclContext13getCFGStmtMapEv(ptr noundef nonnull align 8 dereferenceable(280) %i.bv) #24
  %i.bx = tail call noundef ptr @_ZNK5clang10CFGStmtMap8getBlockEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull %.sroa.081.0.copyload) #24
  br label %bb.p

.critedge51.critedge:                             ; preds = %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %.critedge58

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %.critedge58

bb.p:                                             ; preds = %bb.m, %.thread
  %.sroa.081.0.copyload.pn = phi ptr [ %i.bx, %.thread ], [ %.sroa.081.0.copyload, %bb.m ]
  %.346.in.in.in = getelementptr inbounds nuw i8, ptr %.sroa.081.0.copyload.pn, i64 32
  %.346.in.in = load i64, ptr %.346.in.in.in, align 8
  %.346.in = and i64 %.346.in.in, -8              ; 2 uses
  %.not49 = icmp eq i64 %.346.in, 0
  br i1 %.not49, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %.critedge58

bb.r:                                             ; preds = %bb.p
  %.346 = inttoptr i64 %.346.in to ptr
  %i.by = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %.346) #23 ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.ca = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.085.0.copyload) #23 ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %bb.t, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.cc = tail call fastcc { ptr, i64 } @_ZL12getMacroNameN5clang14SourceLocationERNS_4ento18BugReporterContextE(i32 %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.cd = extractvalue { ptr, i64 } %i.cc, 0
  %i.ce = extractvalue { ptr, i64 } %i.cc, 1      ; 3 uses
  %i.cf = tail call fastcc { ptr, i64 } @_ZL12getMacroNameN5clang14SourceLocationERNS_4ento18BugReporterContextE(i32 %i.by, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.cg = extractvalue { ptr, i64 } %i.cf, 0
  %i.ch = extractvalue { ptr, i64 } %i.cf, 1
  %.not.i.i = icmp eq i64 %i.ce, %i.ch
  br i1 %.not.i.i, label %bb.u, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ci = icmp eq i64 %i.ce, 0
  br i1 %i.ci, label %_ZN4llvmneENS_9StringRefES0_.exit.thread118, label %_ZN4llvmneENS_9StringRefES0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.u
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.cd, ptr %i.cg, i64 %i.ce)
  %.not121 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not121, label %_ZN4llvmneENS_9StringRefES0_.exit.thread118, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %bb.t, %_ZN4llvmneENS_9StringRefES0_.exit, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 696
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr @.str.15, ptr %6, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ag, ptr %i.ck, align 8
  call void @_ZN4llvm8SmallSetISt4pairIPKvS3_ELj4ESt4lessIS4_EE10insertImplIS4_EES1_INS_16SmallSetIteratorIS4_Lj4ES6_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1347") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread118

_ZN4llvmneENS_9StringRefES0_.exit.thread118:      ; preds = %bb.u, %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %.critedge58

.critedge:                                        ; preds = %bb.r, %.thread128, %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %.critedge58

.critedge58:                                      ; preds = %bb.q, %bb.o, %.critedge51.critedge, %_ZN4llvmneENS_9StringRefES0_.exit.thread118, %.critedge56, %.critedge53, %.critedge, %bb.h, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZNK5clang10StackFrame10isParentOfEPKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef ptr @_ZN5clang19AnalysisDeclContext13getCFGStmtMapEv(ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang10CFGStmtMap8getBlockEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZL12getMacroNameN5clang14SourceLocationERNS_4ento18BugReporterContextE(i32 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194, !nonnull !114, !align !195
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !728, !nonnull !114, !align !195 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(776) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #24, !inline_history !5
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !194, !nonnull !114, !align !195
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !728, !nonnull !114, !align !195 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(23904) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #24, !inline_history !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2600
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !832, !nonnull !114, !align !195
  %i.r = tail call { ptr, i64 } @_ZN5clang5Lexer21getImmediateMacroNameENS_14SourceLocationERKNS_13SourceManagerERKNS_11LangOptionsE(i32 %0, ptr noundef nonnull align 8 dereferenceable(776) %i.h, ptr noundef nonnull align 8 dereferenceable(1136) %i.q) #24
  ret { ptr, i64 } %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento11bugreporter12StoreHandler13constructNoteENS1_9StoreInfoERNS0_18BugReporterContextEN4llvm9StringRefE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.750") align 8 captures(none) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef readonly byval(%"struct.clang::ento::bugreporter::StoreInfo") align 8 captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr %4, i64 %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.clang::ProgramPoint", align 8 ; 7 uses
  %.sroa.6 = alloca <{ [4 x i8], ptr, ptr }>, align 8 ; 5 uses
  %.sroa.14 = alloca <{ %"class.clang::ento::PathDiagnosticRange", [4 x i8] }>, align 8 ; 5 uses
  %7 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 14 uses
  %8 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1332
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !tbaa.struct !669
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !1333
  %i.e = trunc i64 %.0.copyload.i.i.i.i.i.i to i32
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.0.copyload.i.i.i5.i.i.i = load i64, ptr %i.f, align 8, !noalias !1333 ; 2 uses
  %i.g = trunc i64 %.0.copyload.i.i.i5.i.i.i to i32
  %i.h = shl i32 %i.e, 3
  %i.i = and i32 %i.h, 48
  %i.j = shl i32 %i.g, 1
  %i.k = and i32 %i.j, 12
  %i.l = or disjoint i32 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.0.copyload.i.i.i6.i.i.i = load i64, ptr %i.m, align 8, !noalias !1333
  %i.n = trunc i64 %.0.copyload.i.i.i6.i.i.i to i32
  %i.o = and i32 %i.n, 3
  %i.p = or disjoint i32 %i.l, %i.o
  %i.q = icmp eq i32 %i.p, 15
  br i1 %i.q, label %_ZNK5clang12ProgramPoint5getAsINS_9CallEnterEEESt8optionalIT_Ev.exit, label %.thread

_ZNK5clang12ProgramPoint5getAsINS_9CallEnterEEESt8optionalIT_Ev.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang12ProgramPoint5getAsINS_9CallEnterEEESt8optionalIT_Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !194, !nonnull !114, !align !195
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !728, !nonnull !114, !align !195 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef nonnull align 8 dereferenceable(776) ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #24, !inline_history !5
  %i.ab = and i64 %.0.copyload.i.i.i5.i.i.i, -8   ; 2 uses
  %i.ac = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #23
  %.not.i = icmp eq i32 %i.ac, 0                  ; 2 uses
  %i.ad = select i1 %.not.i, i32 1, i32 2
  store i32 %i.ad, ptr %7, align 8, !tbaa !157
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = select i1 %.not.i, ptr null, ptr %i.s
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !835
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.ag, align 8, !tbaa !836
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.aa, ptr %i.ah, align 8, !tbaa !729
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.aj = call { i32, ptr } @_ZNK5clang4ento22PathDiagnosticLocation11genLocationENS_14SourceLocationEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %7, i32 0, i64 %i.ab) #24 ; 2 uses
  %i.ak = extractvalue { i32, ptr } %i.aj, 0
  store i32 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.am = extractvalue { i32, ptr } %i.aj, 1
  store ptr %i.am, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.ao = call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %7, i64 %i.ab) #24 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.ao, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.ao, 1
  store i64 %.fca.0.extract.i, ptr %i.an, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i8 %.fca.1.extract.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.019.0.copyload20 = load i32, ptr %7, align 8
  %.sroa.6.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx22, i64 20, i1 false)
  %.sroa.7.0.copyload25 = load ptr, ptr %i.ah, align 8 ; 2 uses
  %i.ap = load <2 x i32>, ptr %i.ai, align 8
  %.sroa.9.0.copyload30 = load i32, ptr %i.ai, align 8
  %.sroa.1137.0.copyload39 = load ptr, ptr %i.al, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(12) %i.an, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.not77 = icmp eq ptr %.sroa.7.0.copyload25, null
  %.not78 = icmp eq i32 %.sroa.9.0.copyload30, 0
  %or.cond = select i1 %.not77, i1 true, i1 %.not78
  br i1 %or.cond, label %.thread, label %.thread64

.thread:                                          ; preds = %bb.a, %_ZNK5clang12ProgramPoint5getAsINS_9CallEnterEEESt8optionalIT_Ev.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !194, !nonnull !114, !align !195
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !728, !nonnull !114, !align !195 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !113
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef nonnull align 8 dereferenceable(776) ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #24, !inline_history !5
  call void @_ZN5clang4ento22PathDiagnosticLocation6createERKNS_12ProgramPointERKNS_13SourceManagerE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(776) %i.ax) #24
  %.sroa.019.0.copyload21 = load i32, ptr %8, align 8
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx23, i64 20, i1 false)
  %.sroa.7.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.7.0.copyload27 = load ptr, ptr %.sroa.7.0..sroa_idx26, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ay = load <2 x i32>, ptr %.sroa.9.0..sroa_idx31, align 8
  %.sroa.9.0.copyload32 = load i32, ptr %.sroa.9.0..sroa_idx31, align 8
  %.sroa.1137.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.1137.0.copyload41 = load ptr, ptr %.sroa.1137.0..sroa_idx40, align 8
  %.sroa.14.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.14.0..sroa_idx43, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.not79 = icmp eq ptr %.sroa.7.0.copyload27, null
  %.not80 = icmp eq i32 %.sroa.9.0.copyload32, 0
  %or.cond81 = select i1 %.not79, i1 true, i1 %.not80
  br i1 %or.cond81, label %.critedge2, label %.thread64

.critedge2:                                       ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

.thread64:                                        ; preds = %.thread, %bb.b
  %.sroa.019.15976 = phi i32 [ %.sroa.019.0.copyload21, %.thread ], [ %.sroa.019.0.copyload20, %bb.b ] ; 2 uses
  %.sroa.1137.16174 = phi ptr [ %.sroa.1137.0.copyload41, %.thread ], [ %.sroa.1137.0.copyload39, %bb.b ]
  %.sroa.7.16372 = phi ptr [ %.sroa.7.0.copyload27, %.thread ], [ %.sroa.7.0.copyload25, %bb.b ]
  %i.az = phi <2 x i32> [ %i.ay, %.thread ], [ %i.ap, %bb.b ]
  %i.ba = call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #25, !noalias !1334 ; 12 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 1, ptr %i.bb, align 8, !tbaa !149, !noalias !1335
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 1, ptr %i.bc, align 4, !tbaa !150, !noalias !1335
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento24PathDiagnosticEventPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ba, align 8, !tbaa !113, !noalias !1335
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 5 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(194) %i.bd, ptr %4, i64 %5, i32 noundef 1, i32 noundef 1) #24, !noalias !1335
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento23PathDiagnosticSpotPieceE, i64 16), ptr %i.bd, align 8, !tbaa !113, !noalias !1335
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  store i32 %.sroa.019.15976, ptr %i.be, align 8, !noalias !1335
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6, i64 20, i1 false), !noalias !1335
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 168
  store ptr %.sroa.7.16372, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1335
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 176
  store <2 x i32> %i.az, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !1335
  %.sroa.1137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 184
  store ptr %.sroa.1137.16174, ptr %.sroa.1137.0..sroa_idx, align 8, !noalias !1335
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false), !noalias !1335
  switch i32 %.sroa.019.15976, label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit [
    i32 2, label %bb.c
    i32 0, label %bb.c
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %.thread64, %.thread64, %.thread64
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !1335
  call void @_ZN5clang4ento19PathDiagnosticPiece8addRangeENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(194) %i.bd, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i), !noalias !1335
  br label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %.thread64
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento24PathDiagnosticEventPieceE, i64 16), ptr %i.bd, align 8, !tbaa !113, !noalias !1335
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 209
  store i8 0, ptr %i.bf, align 1, !tbaa !159, !noalias !1335
  store ptr %i.bd, ptr %0, align 8, !tbaa !164
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bg, align 8, !tbaa !165
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.critedge2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ento22PathDiagnosticLocationC2EPKNS_4StmtERKNS_13SourceManagerEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(776) %2, i64 %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #23
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  %i.b = select i1 %.not, i32 1, i32 2
  store i32 %i.b, ptr %0, align 8, !tbaa !157
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = select i1 %.not, ptr null, ptr %1
  store ptr %i.d, ptr %i.c, align 8, !tbaa !835
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !836
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.f, align 8, !tbaa !729
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = tail call { i32, ptr } @_ZNK5clang4ento22PathDiagnosticLocation11genLocationENS_14SourceLocationEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 0, i64 %3) #24 ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.h, 0
  store i32 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = extractvalue { i32, ptr } %i.h, 1
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = tail call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 %3) #24 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.m, 0
  %.fca.1.extract = extractvalue { i64, i8 } %i.m, 1
  store i64 %.fca.0.extract, ptr %i.l, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento11bugreporter7TrackerC2ERNS0_22PathSensitiveBugReportE(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 12), (16, 24)) %0, ptr noundef nonnull align 8 dereferenceable(1000) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !838
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang4ento11bugreporter7TrackerE, i64 16), ptr %0, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !1352
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !1353
  store ptr %i.c, ptr %i.c, align 8, !tbaa !842
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  store i64 0, ptr %i.e, align 8, !tbaa !1354
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.f, ptr %i.g, align 8, !tbaa !1353
  store ptr %i.f, ptr %i.f, align 8, !tbaa !842
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !1354
  %i.i = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !1355 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.j, align 8, !tbaa !1356, !noalias !1355
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_124ControlDependencyHandlerE, i64 16), ptr %i.i, align 8, !tbaa !113, !noalias !1355
  %i.k = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = ptrtoint ptr %i.i to i64
  store i64 %i.m, ptr %i.l, align 8, !tbaa !846
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #24
  %i.n = load i64, ptr %i.e, align 8, !tbaa !1357
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.e, align 8, !tbaa !1357
  %i.p = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !1358 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %0, ptr %i.q, align 8, !tbaa !1356, !noalias !1358
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_118NilReceiverHandlerE, i64 16), ptr %i.p, align 8, !tbaa !113, !noalias !1358
  %i.r = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = ptrtoint ptr %i.p to i64
  store i64 %i.t, ptr %i.s, align 8, !tbaa !846
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #24
  %i.u = load i64, ptr %i.e, align 8, !tbaa !1357
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.e, align 8, !tbaa !1357
  %i.w = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !1359 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %0, ptr %i.x, align 8, !tbaa !1356, !noalias !1359
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_117ArrayIndexHandlerE, i64 16), ptr %i.w, align 8, !tbaa !113, !noalias !1359
  %i.y = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = ptrtoint ptr %i.w to i64
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !846
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #24
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !1357
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.e, align 8, !tbaa !1357
  %i.ad = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !1360 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %0, ptr %i.ae, align 8, !tbaa !1356, !noalias !1360
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_124InterestingLValueHandlerE, i64 16), ptr %i.ad, align 8, !tbaa !113, !noalias !1360
  %i.af = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = ptrtoint ptr %i.ad to i64
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !846
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #24
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !1357
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.e, align 8, !tbaa !1357
  %i.ak = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !1361 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %0, ptr %i.al, align 8, !tbaa !1356, !noalias !1361
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_126InlinedFunctionCallHandlerE, i64 16), ptr %i.ak, align 8, !tbaa !113, !noalias !1361
  %i.am = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = ptrtoint ptr %i.ak to i64
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !846
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #24
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !1357
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.e, align 8, !tbaa !1357
  %i.ar = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !1362 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %0, ptr %i.as, align 8, !tbaa !1356, !noalias !1362
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_124DefaultExpressionHandlerE, i64 16), ptr %i.ar, align 8, !tbaa !113, !noalias !1362
  %i.at = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = ptrtoint ptr %i.ar to i64
  store i64 %i.av, ptr %i.au, align 8, !tbaa !846
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #24
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !1357
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.e, align 8, !tbaa !1357
  %i.ay = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !1363 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %0, ptr %i.az, align 8, !tbaa !1356, !noalias !1363
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_114PRValueHandlerE, i64 16), ptr %i.ay, align 8, !tbaa !113, !noalias !1363
  %i.ba = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = ptrtoint ptr %i.ay to i64
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !846
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #24
  %i.bd = load i64, ptr %i.e, align 8, !tbaa !1357
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.e, align 8, !tbaa !1357
  %i.bf = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !1364 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %0, ptr %i.bg, align 8, !tbaa !1356, !noalias !1364
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_119DefaultStoreHandlerE, i64 16), ptr %i.bf, align 8, !tbaa !113, !noalias !1364
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !842
  %i.bi = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = ptrtoint ptr %i.bf to i64
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !850
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef %i.bh) #24
  %i.bl = load i64, ptr %i.h, align 8, !tbaa !1365
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.h, align 8, !tbaa !1365
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i16 0, 256) i16 @_ZN5clang4ento11bugreporter7Tracker5trackEPKNS_4ExprEPKNS0_12ExplodedNodeENS1_15TrackingOptionsE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i64 %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef ptr @_ZL16peelOffOuterExprPKN5clang4ExprEPKNS_4ento12ExplodedNodeE(ptr noundef nonnull %1, ptr noundef nonnull %2) ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i
  %.079.i = phi ptr [ %i.k, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i ], [ %2, %bb.b ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5clang4ento18ConditionBRVisitor13VisitTrueTestEPKNS_4ExprEPKNS_11DeclRefExprERNS0_18BugReporterContextERNS0_22PathSensitiveBugReportEPKNS0_12ExplodedNodeEbb:bb.a
bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !194, !nonnull !114, !align !195
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !728, !nonnull !114, !align !195 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !113
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef nonnull align 8 dereferenceable(776) ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #24, !inline_history !5
  %i.bv = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %.not.i27 = icmp eq i32 %i.bv, 0                ; 2 uses
  %i.bw = select i1 %.not.i27, i32 1, i32 2
  store i32 %i.bw, ptr %13, align 8, !tbaa !157
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.by = select i1 %.not.i27, ptr null, ptr %3
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !835
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr null, ptr %i.bz, align 8, !tbaa !836
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.bu, ptr %i.ca, align 8, !tbaa !729
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.cc = call { i32, ptr } @_ZNK5clang4ento22PathDiagnosticLocation11genLocationENS_14SourceLocationEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %13, i32 0, i64 %i.aq) #24 ; 2 uses
  %i.cd = extractvalue { i32, ptr } %i.cc, 0
  store i32 %i.cd, ptr %i.cb, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.cf = extractvalue { i32, ptr } %i.cc, 1
  store ptr %i.cf, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.ch = call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %13, i64 %i.aq) #24 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.ch, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.ch, 1
  store i64 %.fca.0.extract.i, ptr %i.cg, align 8
  %.sroa.2.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %13, i64 56
  store i8 %.fca.1.extract.i, ptr %.sroa.2.0..sroa_idx.i28, align 8
  %i.ci = load ptr, ptr %i.o, align 8, !tbaa !688, !nonnull !114, !align !195 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !671
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !672
  %i.cm = call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #25, !noalias !1438 ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 1, ptr %i.cn, align 8, !tbaa !149, !noalias !1439
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store i32 1, ptr %i.co, align 4, !tbaa !150, !noalias !1439
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento24PathDiagnosticPopUpPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cm, align 8, !tbaa !113, !noalias !1439
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 5 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(192) %i.cp, ptr %i.cj, i64 %i.cl, i32 noundef 5, i32 noundef 1) #24, !noalias !1439
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento23PathDiagnosticSpotPieceE, i64 16), ptr %i.cp, align 8, !tbaa !113, !noalias !1439
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cq, ptr noundef nonnull align 8 dereferenceable(64) %13, i64 64, i1 false), !noalias !1439
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !157, !noalias !1439
  switch i32 %i.cr, label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticPopUpPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit [
    i32 2, label %bb.p
    i32 0, label %bb.p
    i32 3, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 192
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cs, align 8, !noalias !1439
  call void @_ZN5clang4ento19PathDiagnosticPiece8addRangeENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(192) %i.cp, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i), !noalias !1439
  br label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticPopUpPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticPopUpPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento24PathDiagnosticPopUpPieceE, i64 16), ptr %i.cp, align 8, !tbaa !113, !noalias !1439
  store ptr %i.cp, ptr %0, align 8, !tbaa !164
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cm, ptr %i.ct, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.u

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.cu = load ptr, ptr %i.bn, align 8, !tbaa !194, !nonnull !114, !align !195
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !728, !nonnull !114, !align !195 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !113
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef nonnull align 8 dereferenceable(776) ptr %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw) #24, !inline_history !5
  %i.db = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #23
  %.not.i29 = icmp eq i32 %i.db, 0                ; 2 uses
  %i.dc = select i1 %.not.i29, i32 1, i32 2
  store i32 %i.dc, ptr %14, align 8, !tbaa !157
  %i.dd = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.de = select i1 %.not.i29, ptr null, ptr %2
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !835
  %i.df = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr null, ptr %i.df, align 8, !tbaa !836
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %i.da, ptr %i.dg, align 8, !tbaa !729
  %i.dh = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.di = call { i32, ptr } @_ZNK5clang4ento22PathDiagnosticLocation11genLocationENS_14SourceLocationEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %14, i32 0, i64 %i.aq) #24 ; 2 uses
  %i.dj = extractvalue { i32, ptr } %i.di, 0
  store i32 %i.dj, ptr %i.dh, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.dl = extractvalue { i32, ptr } %i.di, 1
  store ptr %i.dl, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.dn = call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %14, i64 %i.aq) #24 ; 2 uses
  %.fca.0.extract.i30 = extractvalue { i64, i8 } %i.dn, 0
  %.fca.1.extract.i31 = extractvalue { i64, i8 } %i.dn, 1
  store i64 %.fca.0.extract.i30, ptr %i.dm, align 8
  %.sroa.2.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i8 %.fca.1.extract.i31, ptr %.sroa.2.0..sroa_idx.i32, align 8
  %i.do = load ptr, ptr %i.o, align 8, !tbaa !688, !nonnull !114, !align !195 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !671
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !672
  %i.ds = call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #25, !noalias !1440 ; 9 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i32 1, ptr %i.dt, align 8, !tbaa !149, !noalias !1441
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 1, ptr %i.du, align 4, !tbaa !150, !noalias !1441
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento24PathDiagnosticEventPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ds, align 8, !tbaa !113, !noalias !1441
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 5 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(194) %i.dv, ptr %i.dp, i64 %i.dr, i32 noundef 1, i32 noundef 1) #24, !noalias !1441
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento23PathDiagnosticSpotPieceE, i64 16), ptr %i.dv, align 8, !tbaa !113, !noalias !1441
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dw, ptr noundef nonnull align 8 dereferenceable(64) %14, i64 64, i1 false), !noalias !1441
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !157, !noalias !1441
  switch i32 %i.dx, label %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationEN4llvm9StringRefEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_.exit [
    i32 2, label %bb.r
    i32 0, label %bb.r
    i32 3, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 192
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i38 = load i64, ptr %i.dy, align 8, !noalias !1441
  call void @_ZN5clang4ento19PathDiagnosticPiece8addRangeENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(194) %i.dv, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i38), !noalias !1441
  br label %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationEN4llvm9StringRefEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_.exit

_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationEN4llvm9StringRefEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_.exit: ; preds = %bb.q, %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento24PathDiagnosticEventPieceE, i64 16), ptr %i.dv, align 8, !tbaa !113, !noalias !1441
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 209 ; 2 uses
  store i8 0, ptr %i.dz, align 1, !tbaa !159, !noalias !1441
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call fastcc void @_ZL13getSValForVarPKN5clang4ExprEPKNS_4ento12ExplodedNodeE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull %3, ptr noundef nonnull readonly %6)
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !886, !range !174, !noundef !114
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %_ZL17isInterestingExprPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit, label %_ZL17isInterestingExprPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit.thread

_ZL17isInterestingExprPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit.thread: ; preds = %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationEN4llvm9StringRefEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZL17isInterestingExprPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit: ; preds = %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationEN4llvm9StringRefEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_.exit
  %.sroa.0.0.copyload.i39 = load ptr, ptr %9, align 8, !tbaa !47
  %.sroa.2.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i41 = load i8, ptr %.sroa.2.0..sroa_idx.i40, align 8, !tbaa !692
  %i.ed = call i64 @_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindENS0_4SValE(ptr noundef nonnull align 8 dereferenceable(1000) %5, ptr %.sroa.0.0.copyload.i39, i8 %.sroa.2.0.copyload.i41) #24
  %i.ee = and i64 %i.ed, 4294967296
  %.not61 = icmp eq i64 %i.ee, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %.not61, label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZL17isInterestingExprPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit
  %i.ef = load i8, ptr %i.dz, align 1, !tbaa !159, !range !174, !noundef !114
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ds, i64 208
  store i16 256, ptr %i.eh, align 8
  br label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZL17isInterestingExprPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit, %_ZL17isInterestingExprPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit.thread, %bb.s, %bb.t
  store ptr %i.dv, ptr %0, align 8, !tbaa !164
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ds, ptr %i.ei, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticPopUpPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.ej = load ptr, ptr %11, align 8, !tbaa !671  ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.h
  br i1 %i.ek, label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.ej) #24
  br label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit

_ZN4llvm11SmallVectorIcLj256EED2Ev.exit:          ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento18ConditionBRVisitor13VisitTrueTestEPKNS_4ExprEPKNS_10MemberExprERNS0_18BugReporterContextERNS0_22PathSensitiveBugReportEPKNS0_12ExplodedNodeEbb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.750") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(1000) %5, ptr nofree noundef readonly captures(none) %6, i1 noundef zeroext %7, i1 noundef zeroext %8) local_unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca %"class.std::optional.1526", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.1526", align 8 ; 7 uses
  %11 = alloca %"class.llvm::SmallString", align 8 ; 8 uses
  %12 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 16 uses
  %.sroa.7 = alloca <{ [4 x i8], ptr, ptr }>, align 8 ; 6 uses
  %.sroa.12 = alloca <{ %"class.clang::ento::PathDiagnosticRange", [4 x i8] }>, align 8 ; 6 uses
  %13 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 13 uses
  %14 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.a, ptr %11, align 8, !tbaa !671
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !672
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 256, ptr %i.c, align 8, !tbaa !673
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 2, ptr %i.d, align 8, !tbaa !677
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !678
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 1, ptr %i.f, align 4, !tbaa !679
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %12, align 8, !tbaa !113
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  store ptr %11, ptr %i.h, align 8, !tbaa !681
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef null, i64 noundef 0, i32 noundef 0) #24
  %i.i = select i1 %8, ptr @.str.30, ptr @.str.31 ; 2 uses
  %i.j = select i1 %8, i64 16, i64 7              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !682
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !683  ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ugt i64 %i.j, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull %i.i, i64 noundef %i.j) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.n, ptr noundef nonnull align 1 dereferenceable(7) %i.i, i64 %i.j, i1 false)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !683
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.j
  store ptr %i.u, ptr %i.m, align 8, !tbaa !683
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.s, %bb.b ], [ %12, %bb.c ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !141
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !879  ; 2 uses
  %i.z = and i64 %i.y, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = and i64 %i.y, -8                        ; 2 uses
  %.not2.i = icmp eq i64 %i.ab, 0
  %.not.i = or i1 %i.aa, %.not2.i
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %_ZNK5clang9NamedDecl7getNameEv.exit

_ZNK5clang9NamedDecl7getNameEv.exit:              ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !882 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !884
  %i.ah = and i64 %i.ag, 4294967295               ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !682
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !683 ; 2 uses
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ugt i64 %i.ah, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit
  %i.aq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef nonnull %i.af, i64 noundef %i.ah) #24
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.e:                                             ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit
  %.not.i25 = icmp eq i64 %i.ah, 0
  br i1 %.not.i25, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr nonnull align 8 %i.af, i64 %i.ah, i1 false)
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !683
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ah
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !683
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit, %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.aq, %bb.d ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %bb.e ], [ %.0.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !682
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !683 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.az, 5
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.bb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.29, i64 noundef 5) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit28

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.aw, ptr noundef nonnull align 1 dereferenceable(5) @.str.29, i64 5, i1 false)
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !683
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 5
  store ptr %i.bd, ptr %i.av, align 8, !tbaa !683
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit28

_ZN4llvm11raw_ostreamlsEPKc.exit28:               ; preds = %bb.g, %bb.h
  %i.be = call noundef zeroext i1 @_ZN5clang4ento18ConditionBRVisitor10printValueEPKNS_4ExprERN4llvm11raw_ostreamEPKNS0_12ExplodedNodeEbb(ptr nonnull align 8 poison, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8)
  br i1 %i.be, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.aa

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit28
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  br i1 %8, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.bf, align 8, !tbaa !169 ; 2 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !194, !nonnull !114, !align !195
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !728, !nonnull !114, !align !195 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !113
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef nonnull align 8 dereferenceable(776) ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) #24, !inline_history !5 ; 2 uses
  store i32 1, ptr %13, align 8, !tbaa !157
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !729
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  store i32 %.sroa.0.0.copyload.i, ptr %i.bq, align 8, !tbaa !169
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !887
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.bt = call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %13, i64 4) #24 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.bt, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.bt, 1
  store i64 %.fca.0.extract.i, ptr %i.bs, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 56
  store i8 %.fca.1.extract.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.070.0.copyload72 = load i32, ptr %13, align 8
  %.sroa.7.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %13, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx75, i64 20, i1 false)
  %.sroa.8.0.copyload80 = load ptr, ptr %i.bp, align 8
  %.sroa.9.0.copyload86 = load i32, ptr %i.bq, align 8
  %.sroa.10.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %13, i64 36
  %.sroa.10.0.copyload92 = load i32, ptr %.sroa.10.0..sroa_idx91, align 4
  %.sroa.1095.0.copyload99 = load ptr, ptr %i.br, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(12) %i.bs, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.m

.critedge:                                        ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !194, !nonnull !114, !align !195
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !728, !nonnull !114, !align !195 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !113
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef nonnull align 8 dereferenceable(776) ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx) #24, !inline_history !5
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !115
  %i.cc = and i64 %.sroa.3.0.copyload.i, -8       ; 2 uses
  %i.cd = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #23
  %.not.i30 = icmp eq i32 %i.cd, 0                ; 2 uses
  %i.ce = select i1 %.not.i30, i32 1, i32 2
  store i32 %i.ce, ptr %14, align 8, !tbaa !157
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cg = select i1 %.not.i30, ptr null, ptr %2
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !835
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr null, ptr %i.ch, align 8, !tbaa !836
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  store ptr %i.cb, ptr %i.ci, align 8, !tbaa !729
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ck = call { i32, ptr } @_ZNK5clang4ento22PathDiagnosticLocation11genLocationENS_14SourceLocationEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %14, i32 0, i64 %i.cc) #24 ; 2 uses
  %i.cl = extractvalue { i32, ptr } %i.ck, 0
  store i32 %i.cl, ptr %i.cj, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.cn = extractvalue { i32, ptr } %i.ck, 1
  store ptr %i.cn, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.cp = call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %14, i64 %i.cc) #24 ; 2 uses
  %.fca.0.extract.i31 = extractvalue { i64, i8 } %i.cp, 0
  %.fca.1.extract.i32 = extractvalue { i64, i8 } %i.cp, 1
  store i64 %.fca.0.extract.i31, ptr %i.co, align 8
  %.sroa.2.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i8 %.fca.1.extract.i32, ptr %.sroa.2.0..sroa_idx.i33, align 8
  %.sroa.070.0.copyload73 = load i32, ptr %14, align 8
  %.sroa.7.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %14, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx76, i64 20, i1 false)
  %.sroa.8.0.copyload82 = load ptr, ptr %i.ci, align 8
  %.sroa.9.0.copyload88 = load i32, ptr %i.cj, align 8
  %.sroa.10.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %14, i64 36
  %.sroa.10.0.copyload94 = load i32, ptr %.sroa.10.0..sroa_idx93, align 4
  %.sroa.1095.0.copyload101 = load ptr, ptr %i.cm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(12) %i.co, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l
  %.sroa.1095.0 = phi ptr [ %.sroa.1095.0.copyload101, %.critedge ], [ %.sroa.1095.0.copyload99, %bb.l ] ; 2 uses
  %.sroa.10.0 = phi i32 [ %.sroa.10.0.copyload94, %.critedge ], [ %.sroa.10.0.copyload92, %bb.l ] ; 2 uses
  %.sroa.070.0 = phi i32 [ %.sroa.070.0.copyload73, %.critedge ], [ %.sroa.070.0.copyload72, %bb.l ] ; 4 uses
  %.sroa.9.0 = phi i32 [ %.sroa.9.0.copyload88, %.critedge ], [ %.sroa.9.0.copyload86, %bb.l ] ; 3 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload82, %.critedge ], [ %.sroa.8.0.copyload80, %bb.l ] ; 3 uses
  %.not120 = icmp eq ptr %.sroa.8.0, null
  %.not121 = icmp eq i32 %.sroa.9.0, 0
  %or.cond = select i1 %.not120, i1 true, i1 %.not121
  br i1 %or.cond, label %.critedge2, label %bb.n

.critedge2:                                       ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.z

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 488
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !831
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !115
  %i.cs = and i64 %.sroa.3.0.copyload.i.i, -8
  %i.ct = inttoptr i64 %i.cs to ptr
  %.sroa.3.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.3.0.copyload.i11.i = load i64, ptr %.sroa.3.0..sroa_idx.i10.i, align 8, !tbaa !115
  %i.cu = and i64 %.sroa.3.0.copyload.i11.i, -8
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = call noundef zeroext i1 @_ZNK5clang10StackFrame10isParentOfEPKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ct, ptr noundef %i.cv) #24
  br i1 %i.cw, label %bb.o, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit41

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call fastcc void @_ZL13getSValForVarPKN5clang4ExprEPKNS_4ento12ExplodedNodeE(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull %3, ptr noundef nonnull readonly %6)
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !886, !range !174, !noundef !114
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.p, label %_ZL27isVarAnInterestingConditionPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit.thread117

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i37 = load ptr, ptr %10, align 8, !tbaa !47
  %.sroa.2.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i38, align 8, !tbaa !692
  %i.da = call i64 @_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindENS0_4SValE(ptr noundef nonnull align 8 dereferenceable(1000) %5, ptr %.sroa.0.0.copyload.i37, i8 %.sroa.2.0.copyload.i) #24 ; 2 uses
  %i.db = and i64 %i.da, 4294967296
  %.not.i39 = icmp eq i64 %i.db, 0
  br i1 %.not.i39, label %_ZL27isVarAnInterestingConditionPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit.thread117, label %_ZL27isVarAnInterestingConditionPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit

_ZL27isVarAnInterestingConditionPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit.thread117: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit41

_ZL27isVarAnInterestingConditionPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit: ; preds = %bb.p
  %i.dc = and i64 %i.da, 4294967295
  %i.dd = icmp eq i64 %i.dc, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br i1 %i.dd, label %bb.q, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit41

bb.q:                                             ; preds = %_ZL27isVarAnInterestingConditionPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit
  %i.de = load ptr, ptr %i.k, align 8, !tbaa !682
  %i.df = load ptr, ptr %i.m, align 8, !tbaa !683 ; 2 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = icmp ult i64 %i.di, 41
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.50, i64 noundef 41) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit41

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.df, ptr noundef nonnull align 1 dereferenceable(41) @.str.50, i64 41, i1 false)
  %i.dl = load ptr, ptr %i.m, align 8, !tbaa !683
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 41
  store ptr %i.dm, ptr %i.m, align 8, !tbaa !683
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit41

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit41:    ; preds = %bb.n, %bb.s, %bb.r, %_ZL27isVarAnInterestingConditionPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit.thread117, %_ZL27isVarAnInterestingConditionPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit
  %i.dn = load ptr, ptr %i.h, align 8, !tbaa !688, !nonnull !114, !align !195 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !671 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !672 ; 2 uses
  br i1 %8, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit41
  %i.dr = call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #25, !noalias !1450 ; 12 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i32 1, ptr %i.ds, align 8, !tbaa !149, !noalias !1451
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 1, ptr %i.dt, align 4, !tbaa !150, !noalias !1451
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento24PathDiagnosticPopUpPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dr, align 8, !tbaa !113, !noalias !1451
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 5 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(192) %i.du, ptr %i.do, i64 %i.dq, i32 noundef 5, i32 noundef 1) #24, !noalias !1451
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento23PathDiagnosticSpotPieceE, i64 16), ptr %i.du, align 8, !tbaa !113, !noalias !1451
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 144
  store i32 %.sroa.070.0, ptr %i.dv, align 8, !noalias !1451
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7, i64 20, i1 false), !noalias !1451
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 168
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !1451
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 176
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !1451
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 180
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 4, !noalias !1451
  %.sroa.1095.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 184
  store ptr %.sroa.1095.0, ptr %.sroa.1095.0..sroa_idx, align 8, !noalias !1451
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i64 16, i1 false), !noalias !1451
  switch i32 %.sroa.070.0, label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticPopUpPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit [
    i32 2, label %bb.u
    i32 0, label %bb.u
    i32 3, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.t
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !noalias !1451
  call void @_ZN5clang4ento19PathDiagnosticPiece8addRangeENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(192) %i.du, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i), !noalias !1451
  br label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticPopUpPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticPopUpPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.t
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento24PathDiagnosticPopUpPieceE, i64 16), ptr %i.du, align 8, !tbaa !113, !noalias !1451
  store ptr %i.du, ptr %0, align 8, !tbaa !164
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dr, ptr %i.dw, align 8, !tbaa !165
  br label %bb.z

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit41
  %i.dx = call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #25, !noalias !1452 ; 14 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i32 1, ptr %i.dy, align 8, !tbaa !149, !noalias !1453
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 1, ptr %i.dz, align 4, !tbaa !150, !noalias !1453
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento24PathDiagnosticEventPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dx, align 8, !tbaa !113, !noalias !1453
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 5 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(194) %i.ea, ptr %i.do, i64 %i.dq, i32 noundef 1, i32 noundef 1) #24, !noalias !1453
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento23PathDiagnosticSpotPieceE, i64 16), ptr %i.ea, align 8, !tbaa !113, !noalias !1453
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 144
  store i32 %.sroa.070.0, ptr %i.eb, align 8, !noalias !1453
  %.sroa.7.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.dx, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx74, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7, i64 20, i1 false), !noalias !1453
  %.sroa.8.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.dx, i64 168
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx77, align 8, !noalias !1453
  %.sroa.9.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.dx, i64 176
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx83, align 8, !noalias !1453
  %.sroa.10.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.dx, i64 180
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx89, align 4, !noalias !1453
  %.sroa.1095.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.dx, i64 184
  store ptr %.sroa.1095.0, ptr %.sroa.1095.0..sroa_idx96, align 8, !noalias !1453
  %.sroa.12.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.dx, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx102, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i64 16, i1 false), !noalias !1453
  switch i32 %.sroa.070.0, label %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationEN4llvm9StringRefEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_.exit [
    i32 2, label %bb.w
    i32 0, label %bb.w
    i32 3, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i49 = load i64, ptr %.sroa.12.0..sroa_idx102, align 8, !noalias !1453
  call void @_ZN5clang4ento19PathDiagnosticPiece8addRangeENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(194) %i.ea, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i49), !noalias !1453
  br label %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationEN4llvm9StringRefEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_.exit

_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationEN4llvm9StringRefEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_.exit: ; preds = %bb.v, %bb.w
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento24PathDiagnosticEventPieceE, i64 16), ptr %i.ea, align 8, !tbaa !113, !noalias !1453
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 209 ; 2 uses
  store i8 0, ptr %i.ec, align 1, !tbaa !159, !noalias !1453
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call fastcc void @_ZL13getSValForVarPKN5clang4ExprEPKNS_4ento12ExplodedNodeE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull %3, ptr noundef nonnull readonly %6)
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !886, !range !174, !noundef !114
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZL17isInterestingExprPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit, label %_ZL17isInterestingExprPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit.thread

_ZL17isInterestingExprPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit.thread: ; preds = %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationEN4llvm9StringRefEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZL17isInterestingExprPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit: ; preds = %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationEN4llvm9StringRefEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_.exit
  %.sroa.0.0.copyload.i50 = load ptr, ptr %9, align 8, !tbaa !47
  %.sroa.2.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i52 = load i8, ptr %.sroa.2.0..sroa_idx.i51, align 8, !tbaa !692
  %i.eg = call i64 @_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindENS0_4SValE(ptr noundef nonnull align 8 dereferenceable(1000) %5, ptr %.sroa.0.0.copyload.i50, i8 %.sroa.2.0.copyload.i52) #24
  %i.eh = and i64 %i.eg, 4294967296
  %.not122 = icmp eq i64 %i.eh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %.not122, label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZL17isInterestingExprPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit
  %i.ei = load i8, ptr %i.ec, align 1, !tbaa !159, !range !174, !noundef !114
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dx, i64 208
  store i16 256, ptr %i.ek, align 8
  br label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZL17isInterestingExprPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit, %_ZL17isInterestingExprPKN5clang4ExprEPKNS_4ento12ExplodedNodeEPKNS3_22PathSensitiveBugReportE.exit.thread, %bb.x, %bb.y
  store ptr %i.ea, ptr %0, align 8, !tbaa !164
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dx, ptr %i.el, align 8, !tbaa !165
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticPopUpPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.critedge2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.i
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.em = load ptr, ptr %11, align 8, !tbaa !671  ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.a
  br i1 %i.en, label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef %i.em) #24
  br label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit

_ZN4llvm11SmallVectorIcLj256EED2Ev.exit:          ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4ento18ConditionBRVisitor12patternMatchEPKNS_4ExprES4_RN4llvm11raw_ostreamERNS0_18BugReporterContextERNS0_22PathSensitiveBugReportEPKNS0_12ExplodedNodeERSt8optionalIbEb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(1000) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(2) %7, i1 noundef zeroext %8) local_unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca %"class.clang::ento::Loc", align 8  ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.clang::DeclarationName", align 8 ; 8 uses
  %12 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %13 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %14 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %i.a = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #23 ; 11 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 511
  switch i16 %i.c, label %_ZN4llvm3isaIJN5clang11GNUNullExprENS1_19ObjCBoolLiteralExprENS1_18CXXBoolLiteralExprENS1_14IntegerLiteralENS1_15FloatingLiteralEEPKNS1_4ExprEEEbRKT0_.exit [
    i16 60, label %bb.b
    i16 41, label %bb.b
    i16 119, label %bb.b
    i16 54, label %bb.b
    i16 64, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #23 ; 3 uses
  %i.e = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #23 ; 3 uses
  %i.f = icmp slt i32 %i.d, 0
  %i.g = icmp slt i32 %i.e, 0
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN4llvm3isaIJN5clang11GNUNullExprENS1_19ObjCBoolLiteralExprENS1_18CXXBoolLiteralExprENS1_14IntegerLiteralENS1_15FloatingLiteralEEPKNS1_4ExprEEEbRKT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !194, !nonnull !114, !align !195
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !728, !nonnull !114, !align !195 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(776) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #24, !inline_history !5 ; 4 uses
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !194, !nonnull !114, !align !195
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !728, !nonnull !114, !align !195 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(23904) ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #24, !inline_history !6
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2600
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !832, !nonnull !114, !align !195 ; 4 uses
  %i.y = tail call noundef zeroext i1 @_ZN5clang5Lexer25isAtStartOfMacroExpansionENS_14SourceLocationERKNS_13SourceManagerERKNS_11LangOptionsEPS1_(i32 %i.d, ptr noundef nonnull align 8 dereferenceable(776) %i.o, ptr noundef nonnull align 8 dereferenceable(1136) %i.x, ptr noundef null) #24
  br i1 %i.y, label %bb.d, label %_ZN4llvm3isaIJN5clang11GNUNullExprENS1_19ObjCBoolLiteralExprENS1_18CXXBoolLiteralExprENS1_14IntegerLiteralENS1_15FloatingLiteralEEPKNS1_4ExprEEEbRKT0_.exit

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef zeroext i1 @_ZN5clang5Lexer23isAtEndOfMacroExpansionENS_14SourceLocationERKNS_13SourceManagerERKNS_11LangOptionsEPS1_(i32 %i.e, ptr noundef nonnull align 8 dereferenceable(776) %i.o, ptr noundef nonnull align 8 dereferenceable(1136) %i.x, ptr noundef null) #24
  br i1 %i.z, label %.critedge, label %_ZN4llvm3isaIJN5clang11GNUNullExprENS1_19ObjCBoolLiteralExprENS1_18CXXBoolLiteralExprENS1_14IntegerLiteralENS1_15FloatingLiteralEEPKNS1_4ExprEEEbRKT0_.exit

.critedge:                                        ; preds = %bb.d
  %.sroa.0169.0.insert.ext = zext i32 %i.d to i64
  %i.aa = tail call i32 @_ZN5clang5Lexer19getLocForEndOfTokenENS_14SourceLocationEjRKNS_13SourceManagerERKNS_11LangOptionsE(i32 %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(776) %i.o, ptr noundef nonnull align 8 dereferenceable(1136) %i.x) #24 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.aa to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0169.0.insert.ext
  %.sroa.010.0.i = select i1 %i.ab, i64 0, i64 %.sroa.0.0.insert.insert.i.i
  %i.ac = tail call { ptr, i64 } @_ZN5clang5Lexer13getSourceTextENS_15CharSourceRangeERKNS_13SourceManagerERKNS_11LangOptionsEPb(i64 %.sroa.010.0.i, i8 0, ptr noundef nonnull align 8 dereferenceable(776) %i.o, ptr noundef nonnull align 8 dereferenceable(1136) %i.x, ptr noundef null) #24 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !682
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !683 ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ugt i64 %i.ae, %i.al
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.an = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ad, i64 noundef %i.ae) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.f:                                             ; preds = %.critedge
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ad, i64 %i.ae, i1 false)
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !683
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ae
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !683
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm3isaIJN5clang11GNUNullExprENS1_19ObjCBoolLiteralExprENS1_18CXXBoolLiteralExprENS1_14IntegerLiteralENS1_15FloatingLiteralEEPKNS1_4ExprEEEbRKT0_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.aq = load i16, ptr %i.a, align 8
  %i.ar = and i16 %i.aq, 511
  switch i16 %i.ar, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit [
    i16 73, label %bb.h
    i16 54, label %bb.q
    i16 46, label %bb.ae
  ]

bb.h:                                             ; preds = %_ZN4llvm3isaIJN5clang11GNUNullExprENS1_19ObjCBoolLiteralExprENS1_18CXXBoolLiteralExprENS1_14IntegerLiteralENS1_15FloatingLiteralEEPKNS1_4ExprEEEbRKT0_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !659 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.av, 127
  %i.ax = add nsw i32 %i.aw, -41
  %i.ay = icmp ult i32 %i.ax, 7
  br i1 %i.ay, label %bb.i, label %.critedge112

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !683 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !682
  %.not.i113 = icmp ult ptr %i.ba, %i.bc
  br i1 %.not.i113, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_1
