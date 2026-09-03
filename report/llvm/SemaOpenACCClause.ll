Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOpenACCClause?download=true
inline.NumInlined: 5668
inline.NumDeleted: 2408
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5clang11SemaOpenACC20CheckReductionClauseEN4llvm8ArrayRefIPKNS_13OpenACCClauseEEENS_20OpenACCDirectiveKindENS_14SourceLocationES8_NS_24OpenACCReductionOperatorENS2_IPNS_4ExprEEENS2_INS_33OpenACCReductionRecipeWithStorageEEES8_:bb.a
.critedge:                                        ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br i1 %i.af, label %bb.m, label %.critedge..critedge.thread_crit_edge

.critedge..critedge.thread_crit_edge:             ; preds = %.critedge
  %.pre = load i64, ptr %i.l, align 8, !tbaa !174
  br label %.critedge.thread

bb.m:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %4, i32 noundef 2899) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 120 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !51, !range !52, !noundef !53
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIivEERKS1_OT_.exit.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !97
  %i.ar = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.aq) ; 2 uses
  store ptr %i.ar, ptr %i.ak, align 8, !tbaa !96
  br label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIivEERKS1_OT_.exit.i

_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIivEERKS1_OT_.exit.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, %bb.n
  %i.as = phi ptr [ %i.ar, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i ], [ %i.ao, %bb.n ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.as, align 8, !tbaa !109
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  store i8 2, ptr %i.aw, align 1, !tbaa !110
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !96 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ax, align 8, !tbaa !109 ; 2 uses
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ax, align 8, !tbaa !109
  %i.bb = zext i8 %i.az to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  store i64 1, ptr %i.bc, align 8, !tbaa !81
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_.exit

bb.o:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 132
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !55, !range !52, !noundef !53
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.p, label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_.exit

bb.p:                                             ; preds = %bb.o
  %i.bh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !66 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !68
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(168) %i.bj) #17, !inline_history !429
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i: ; preds = %bb.q, %bb.p
  %i.bo = phi ptr [ %i.bn, %bb.q ], [ null, %bb.p ]
  store ptr %i.bo, ptr %12, align 8, !tbaa !70
  %i.bp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.bp, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.br = load i32, ptr %i.bd, align 8, !tbaa !42
  %i.bs = zext i32 %i.br to i64
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !73
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bs ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i.i52 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i52, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIivEERKS0_OT_.exit.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !97
  %i.bz = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.by) ; 2 uses
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !96
  br label %_ZNK5clang17PartialDiagnosticlsIivEERKS0_OT_.exit.i

_ZNK5clang17PartialDiagnosticlsIivEERKS0_OT_.exit.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i
  %i.ca = phi ptr [ %i.bz, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.bw, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.ca, align 8, !tbaa !109
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd
  store i8 2, ptr %i.ce, align 1, !tbaa !110
  %i.cf = load ptr, ptr %i.bv, align 8, !tbaa !96 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i8, ptr %i.cf, align 8, !tbaa !109 ; 2 uses
  %i.ci = add i8 %i.ch, 1
  store i8 %i.ci, ptr %i.cf, align 8, !tbaa !109
  %i.cj = zext i8 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cj
  store i64 1, ptr %i.ck, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_.exit

_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_.exit: ; preds = %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIivEERKS1_OT_.exit.i, %bb.o, %_ZNK5clang17PartialDiagnosticlsIivEERKS0_OT_.exit.i
  %i.cl = load i8, ptr %i.al, align 8, !tbaa !51, !range !52, !noundef !53
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_.exit
  %i.cn = call noundef nonnull align 8 dereferenceable(66) ptr @_ZNK5clang17DiagnosticBuilderlsINS_20OpenACCDirectiveKindEEERKS0_RKT_(ptr noundef nonnull align 8 dereferenceable(84) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  br label %_ZN5clanglsINS_20OpenACCDirectiveKindEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_.exit

bb.s:                                             ; preds = %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 132
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !55, !range !52, !noundef !53
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.t, label %_ZN5clanglsINS_20OpenACCDirectiveKindEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_.exit

bb.t:                                             ; preds = %bb.s
  %i.cs = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !66 ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i53, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i54, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !68
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef ptr %i.cx(ptr noundef nonnull align 8 dereferenceable(168) %i.cu) #17, !inline_history !5
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i54

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i54: ; preds = %bb.u, %bb.t
  %i.cz = phi ptr [ %i.cy, %bb.u ], [ null, %bb.t ]
  store ptr %i.cz, ptr %11, align 8, !tbaa !70
  %i.da = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %.fca.0.extract.i.i55 = extractvalue { ptr, i8 } %i.da, 0
  %i.db = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i55, i64 8
  %i.dc = load i32, ptr %i.co, align 8, !tbaa !42
  %i.dd = zext i32 %i.dc to i64
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !73
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %i.dd
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK5clang17PartialDiagnosticlsINS_20OpenACCDirectiveKindEEERKS0_RKT_(ptr noundef nonnull align 8 dereferenceable(20) %i.dg, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %_ZN5clanglsINS_20OpenACCDirectiveKindEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_.exit

_ZN5clanglsINS_20OpenACCDirectiveKindEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_.exit: ; preds = %bb.r, %bb.s, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i54
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.di, align 4, !tbaa !42
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %.sroa.0.0.copyload.i.i, i32 noundef 5886) #17
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !47  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %16, i64 120
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !51, !range !52, !noundef !53
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %switch.lookup, label %bb.v

switch.lookup:                                    ; preds = %_ZN5clanglsINS_20OpenACCDirectiveKindEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.dp = zext nneg i8 %i.dk to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_124SemaOpenACCClauseVisitor27DisallowSinceLastDeviceTypeIN4llvm6detail17IsaCheckPredicateIJN5clang25OpenACCVectorLengthClauseEEEEEEbT_RNS5_11SemaOpenACC19OpenACCParsedClauseEb.176, i64 %i.dp
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZN5clanglsERKNS_19StreamingDiagnosticENS_17OpenACCClauseKindE.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %switch.lookup
  %i.dr = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !97
  %i.dt = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ds) ; 2 uses
  store ptr %i.dt, ptr %i.do, align 8, !tbaa !96
  br label %_ZN5clanglsERKNS_19StreamingDiagnosticENS_17OpenACCClauseKindE.exit

_ZN5clanglsERKNS_19StreamingDiagnosticENS_17OpenACCClauseKindE.exit: ; preds = %switch.lookup, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.du = phi ptr [ %i.dt, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.dq, %switch.lookup ] ; 2 uses
  %i.dv = ptrtoint ptr %switch.load to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dx = load i8, ptr %i.du, align 8, !tbaa !109
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dy
  store i8 1, ptr %i.dz, align 1, !tbaa !110
  %i.ea = load ptr, ptr %i.do, align 8, !tbaa !96 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load i8, ptr %i.ea, align 8, !tbaa !109 ; 2 uses
  %i.ed = add i8 %i.ec, 1
  store i8 %i.ed, ptr %i.ea, align 8, !tbaa !109
  %i.ee = zext i8 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ee
  store i64 %i.dv, ptr %i.ef, align 8, !tbaa !81
  br label %.thread77

bb.v:                                             ; preds = %_ZN5clanglsINS_20OpenACCDirectiveKindEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.eh = getelementptr inbounds nuw i8, ptr %16, i64 132
  %i.ei = load i8, ptr %i.eh, align 4, !tbaa !55, !range !52, !noundef !53
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.w, label %.thread77

bb.w:                                             ; preds = %bb.v
  %i.ek = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.el = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !66 ; 3 uses
  %.not.i.i56 = icmp eq ptr %i.em, null
  br i1 %.not.i.i56, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i57, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !68
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call noundef ptr %i.ep(ptr noundef nonnull align 8 dereferenceable(168) %i.em) #17, !inline_history !2
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i57

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i57: ; preds = %bb.x, %bb.w
  %i.er = phi ptr [ %i.eq, %bb.x ], [ null, %bb.w ]
  store ptr %i.er, ptr %10, align 8, !tbaa !70
  %i.es = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ek, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %.fca.0.extract.i.i58 = extractvalue { ptr, i8 } %i.es, 0
  %i.et = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i58, i64 8
  %i.eu = load i32, ptr %i.eg, align 8, !tbaa !42
  %i.ev = zext i32 %i.eu to i64
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !73
  %i.ex = getelementptr inbounds nuw [32 x i8], ptr %i.ew, i64 %i.ev
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5clanglsERKNS_19StreamingDiagnosticENS_17OpenACCClauseKindE(ptr noundef nonnull align 8 dereferenceable(20) %i.ey, i8 noundef zeroext %i.dk) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %.thread77

.critedge.thread:                                 ; preds = %.critedge..critedge.thread_crit_edge, %bb.f, %bb.e
  %i.fa = phi i64 [ %.pre, %.critedge..critedge.thread_crit_edge ], [ %i.q, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fb = and i64 %i.fa, 4294967295
  %i.fc = icmp samesign ult i64 %indvars.iv.next, %i.fb
  br i1 %i.fc, label %bb.e, label %._crit_edge, !llvm.loop !430

.thread77:                                        ; preds = %_ZN5clanglsERKNS_19StreamingDiagnosticENS_17OpenACCClauseKindE.exit, %bb.v, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i57
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.z

._crit_edge:                                      ; preds = %.critedge.thread, %bb.d
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.063.086, i64 8 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.fd, %i.b
  br i1 %.not1.i.i, label %_ZN4llvm20filter_iterator_baseIPKPKN5clang13OpenACCClauseENS_6detail17IsaCheckPredicateIJNS1_17OpenACCGangClauseEEEESt26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %bb.y
  %.sroa.063.1 = phi ptr [ %i.fi, %bb.y ], [ %i.fd, %._crit_edge ] ; 3 uses
  %i.fe = load ptr, ptr %.sroa.063.1, align 8, !tbaa !45
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !47
  %i.fh = icmp eq i8 %i.fg, 29
  br i1 %i.fh, label %_ZN4llvm20filter_iterator_baseIPKPKN5clang13OpenACCClauseENS_6detail17IsaCheckPredicateIJNS1_17OpenACCGangClauseEEEESt26bidirectional_iterator_tagEppEv.exit, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.063.1, i64 8 ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.fi, %i.b
  br i1 %.not.i.i59, label %_ZN4llvm20filter_iterator_baseIPKPKN5clang13OpenACCClauseENS_6detail17IsaCheckPredicateIJNS1_17OpenACCGangClauseEEEESt26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZN4llvm20filter_iterator_baseIPKPKN5clang13OpenACCClauseENS_6detail17IsaCheckPredicateIJNS1_17OpenACCGangClauseEEEESt26bidirectional_iterator_tagEppEv.exit: ; preds = %.lr.ph.i.i, %bb.y, %._crit_edge
  %.sroa.063.2 = phi ptr [ %i.fd, %._crit_edge ], [ %i.fi, %bb.y ], [ %.sroa.063.1, %.lr.ph.i.i ] ; 2 uses
  %.not81 = icmp eq ptr %.sroa.063.2, %i.b
  br i1 %.not81, label %.thread77.a, label %bb.d

.thread77.a:                                      ; preds = %bb.c, %_ZN4llvm20filter_iterator_baseIPKPKN5clang13OpenACCClauseENS_6detail17IsaCheckPredicateIJNS1_17OpenACCGangClauseEEEESt26bidirectional_iterator_tagEppEv.exit, %_ZN4llvm17make_filter_rangeIRNS_8ArrayRefIPKN5clang13OpenACCClauseEEENS_6detail17IsaCheckPredicateIJNS2_17OpenACCGangClauseEEEEEENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISG_E17iterator_categoryEEESJ_St20forward_iterator_tagE4typeEEEEEOSE_SH_.exit, %bb.a
  %i.fj = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %.sroa.08.0.copyload = load ptr, ptr %7, align 8, !tbaa !433
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !81
  %i.fk = call noundef ptr @_ZN5clang22OpenACCReductionClause6CreateERKNS_10ASTContextENS_14SourceLocationES4_NS_24OpenACCReductionOperatorEN4llvm8ArrayRefIPNS_4ExprEEENS7_INS_33OpenACCReductionRecipeWithStorageEEES4_(ptr noundef nonnull align 8 dereferenceable(23904) %i.fj, i32 %4, i32 %5, i8 noundef zeroext %6, ptr %.sroa.08.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.502") align 8 %8, i32 %9) #17
  br label %bb.z

bb.z:                                             ; preds = %.thread77, %.thread77.a
  %.6 = phi ptr [ %i.fk, %.thread77.a ], [ null, %.thread77 ]
  ret ptr %.6
}

declare noundef ptr @_ZN5clang22OpenACCReductionClause6CreateERKNS_10ASTContextENS_14SourceLocationES4_NS_24OpenACCReductionOperatorEN4llvm8ArrayRefIPNS_4ExprEEENS7_INS_33OpenACCReductionRecipeWithStorageEEES4_(ptr noundef nonnull align 8 dereferenceable(23904), i32, i32, i8 noundef zeroext, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.502") align 8, i32) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang11SemaOpenACC22CheckLinkClauseVarListEN4llvm8ArrayRefIPNS_4ExprEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.508") align 8 %0, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr nofree readonly captures(address) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %i.a = tail call noundef ptr @_ZNK5clang8SemaBase13getCurContextEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 127                        ; 2 uses
  %i.e = icmp eq i16 %i.d, 4
  br i1 %i.e, label %.lr.ph.i, label %_ZN12_GLOBAL__N_119removeLinkageSpecDCEPKN5clang11DeclContextE.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZNK5clang11DeclContext9getParentEv.exit.i
  %storemerge3.i = phi ptr [ %.0.i.i.i.i, %_ZNK5clang11DeclContext9getParentEv.exit.i ], [ %i.a, %bb.a ]
  %i.f = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %storemerge3.i) #17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8 ; 3 uses
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang11DeclContext9getParentEv.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !209
  br label %_ZNK5clang11DeclContext9getParentEv.exit.i

_ZNK5clang11DeclContext9getParentEv.exit.i:       ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, 127                        ; 2 uses
  %i.q = icmp eq i16 %i.p, 4
  br i1 %i.q, label %.lr.ph.i, label %_ZN12_GLOBAL__N_119removeLinkageSpecDCEPKN5clang11DeclContextE.exit, !llvm.loop !8

_ZN12_GLOBAL__N_119removeLinkageSpecDCEPKN5clang11DeclContextE.exit: ; preds = %_ZNK5clang11DeclContext9getParentEv.exit.i, %bb.a
  %.pre-phi = phi i16 [ %i.d, %bb.a ], [ %i.p, %_ZNK5clang11DeclContext9getParentEv.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  store i32 0, ptr %i.s, align 8, !tbaa !88
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  store i32 6, ptr %i.t, align 4, !tbaa !89
  %.idx = shl nuw nsw i64 %3, 3                   ; 2 uses
  switch i16 %.pre-phi, label %bb.f [
    i16 78, label %bb.d
    i16 0, label %bb.d
  ]

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_119removeLinkageSpecDCEPKN5clang11DeclContextE.exit, %_ZN12_GLOBAL__N_119removeLinkageSpecDCEPKN5clang11DeclContextE.exit
  %i.u = icmp ugt i64 %3, 6
  br i1 %i.u, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.thread.i: ; preds = %bb.d
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.r, i64 noundef %3, i64 noundef 8) #17
  %.pre8.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !88
  %i.v = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !87
  br label %bb.e

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i: ; preds = %bb.d
  %.not.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj6EEC2IS3_vEENS_8ArrayRefIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.thread.i
  %i.w = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.thread.i ], [ %i.r, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.v, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre8.i5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 8 %2, i64 %.idx, i1 false)
  %.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !88
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj6EEC2IS3_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj6EEC2IS3_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i, %bb.e
  %i.y = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.e ]
  %i.z = trunc i64 %3 to i32
  %i.aa = add i32 %i.y, %i.z
  store i32 %i.aa, ptr %i.s, align 8, !tbaa !88
  br label %.loopexit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_119removeLinkageSpecDCEPKN5clang11DeclContextE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not45 = icmp eq i64 %3, 0
  br i1 %.not45, label %.loopexit, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.f, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.046 = phi ptr [ %i.bt, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %2, %bb.f ] ; 2 uses
  %i.ac = load ptr, ptr %.046, align 8, !tbaa !176 ; 9 uses
  %i.ad = load i16, ptr %i.ac, align 8
  %i.ae = and i16 %i.ad, 511                      ; 3 uses
  switch i16 %i.ae, label %.preheader [
    i16 113, label %bb.g
    i16 71, label %bb.g
    i16 46, label %bb.j
  ]

.preheader:                                       ; preds = %.lr.ph48
  %i.af = add nsw i16 %i.ae, -127
  %spec.select.i2243 = icmp ult i16 %i.af, 2
  br i1 %spec.select.i2243, label %.lr.ph, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph48, %.lr.ph48
  %i.ag = load i32, ptr %i.s, align 8, !tbaa !88  ; 2 uses
  %i.ah = load i32, ptr %i.t, align 4, !tbaa !89
  %.not.i = icmp ult i32 %i.ag, %i.ah
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !92

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ac)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = zext i32 %i.ag to i64
  %i.aj = load ptr, ptr %0, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  store ptr %i.ac, ptr %i.ak, align 1
  %i.al = load i32, ptr %i.s, align 8, !tbaa !88
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.s, align 8, !tbaa !88
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.j:                                             ; preds = %.lr.ph48
  %i.an = load i32, ptr %i.s, align 8, !tbaa !88  ; 2 uses
  %i.ao = load i32, ptr %i.t, align 4, !tbaa !89
  %.not.i20 = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i20, label %bb.l, label %bb.k, !prof !92

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ac)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.l:                                             ; preds = %bb.j
  %i.ap = zext i32 %i.an to i64
  %i.aq = load ptr, ptr %0, align 8, !tbaa !87
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  store ptr %i.ac, ptr %i.ar, align 1
  %i.as = load i32, ptr %i.s, align 8, !tbaa !88
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.s, align 8, !tbaa !88
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %i.au = phi i16 [ %i.az, %bb.n ], [ %i.ae, %.preheader ]
  %.03944 = phi ptr [ %i.ax, %bb.n ], [ %i.ac, %.preheader ] ; 2 uses
  %.not42 = icmp eq i16 %i.au, 128
  br i1 %.not42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.av = call noundef zeroext i1 @_ZNK5clang18ArraySubscriptExpr9lhsIsBaseEv(ptr noundef nonnull align 8 dereferenceable(32) %.03944)
  %.in.v.i = select i1 %i.av, i64 16, i64 24
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.in.v.i.sink = phi i64 [ %.in.v.i, %bb.m ], [ 24, %.lr.ph ]
  %.in.i = getelementptr inbounds nuw i8, ptr %.03944, i64 %.in.v.i.sink
  %i.aw = load ptr, ptr %.in.i, align 8, !tbaa !178
  %i.ax = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #19 ; 3 uses
  %i.ay = load i16, ptr %i.ax, align 8
  %i.az = and i16 %i.ay, 511                      ; 2 uses
  %i.ba = add nsw i16 %i.az, -127
  %spec.select.i22 = icmp ult i16 %i.ba, 2
  br i1 %spec.select.i22, label %.lr.ph, label %._crit_edge, !llvm.loop !434

._crit_edge:                                      ; preds = %bb.n, %.preheader
  %.039.lcssa = phi ptr [ %i.ac, %.preheader ], [ %i.ax, %bb.n ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !187 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = and i32 %i.be, 127
  %i.bg = add nsw i32 %i.bf, -48
  %i.bh = icmp ult i32 %i.bg, -7
  %.not1740 = icmp eq ptr %i.bc, null
  %.not17 = or i1 %.not1740, %i.bh
  br i1 %.not17, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.bj = load i8, ptr %i.bi, align 8
  %i.bk = and i8 %i.bj, 5
  %spec.select.i24 = icmp eq i8 %i.bk, 1
  br i1 %spec.select.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.bl = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %.039.lcssa) #19
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %i.bl, i32 noundef 2912) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #17
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.q:                                             ; preds = %bb.o
  %i.bm = load i32, ptr %i.s, align 8, !tbaa !88  ; 2 uses
  %i.bn = load i32, ptr %i.t, align 4, !tbaa !89
  %.not.i25 = icmp ult i32 %i.bm, %i.bn
end_hunk_0
