Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ODRDiagsEmitter?download=true
inline.NumInlined: 2863
inline.NumDeleted: 1272
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK5clang15ODRDiagsEmitter24diagnoseSubMismatchFieldEPKNS_9NamedDeclEN4llvm9StringRefES5_PKNS_9FieldDeclES8_:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.0.0.copyload.i70 = load i64, ptr %i.bj, align 8, !tbaa !17 ; 2 uses
  %i.bk = tail call fastcc noundef i32 @_ZL14computeODRHashN5clang8QualTypeE(i64 %.sroa.0.0.copyload.i)
  %i.bl = tail call fastcc noundef i32 @_ZL14computeODRHashN5clang8QualTypeE(i64 %.sroa.0.0.copyload.i70)
  %.not = icmp eq i32 %i.bk, %i.bl
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread185
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call fastcc void @"_ZZNK5clang15ODRDiagsEmitter24diagnoseSubMismatchFieldEPKNS_9NamedDeclEN4llvm9StringRefES5_PKNS_9FieldDeclES8_ENK3$_0clEZNKS0_24diagnoseSubMismatchFieldES3_S5_S5_S8_S8_E18ODRFieldDifference"(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 1)
  %i.bm = load ptr, ptr %12, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i71, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i72, label %_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i72: ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !41
  %i.bp = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.bo) ; 2 uses
  store ptr %i.bp, ptr %12, align 8, !tbaa !40
  br label %_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEEERKS0_RKT_.exit: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i72, %bb.c
  %i.bq = phi ptr [ %i.bp, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i72 ], [ %i.bm, %bb.c ] ; 2 uses
  %i.br = ptrtoint ptr %.0.i.i to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bt = load i8, ptr %i.bq, align 8, !tbaa !54
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bu
  store i8 5, ptr %i.bv, align 1, !tbaa !17
  %i.bw = load ptr, ptr %12, align 8, !tbaa !40   ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i8, ptr %i.bw, align 8, !tbaa !54  ; 2 uses
  %i.bz = add i8 %i.by, 1                         ; 2 uses
  store i8 %i.bz, ptr %i.bw, align 8, !tbaa !54
  %i.ca = zext i8 %i.by to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ca
  store i64 %i.br, ptr %i.cb, align 8, !tbaa !25
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.cd = zext i8 %i.bz to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  store i8 8, ptr %i.ce, align 1, !tbaa !17
  %i.cf = load ptr, ptr %12, align 8, !tbaa !40   ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i8, ptr %i.cf, align 8, !tbaa !54  ; 2 uses
  %i.ci = add i8 %i.ch, 1
  store i8 %i.ci, ptr %i.cf, align 8, !tbaa !54
  %i.cj = zext i8 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cj
  store i64 %.sroa.0.0.copyload.i, ptr %i.ck, align 8, !tbaa !25
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call fastcc void @"_ZZNK5clang15ODRDiagsEmitter24diagnoseSubMismatchFieldEPKNS_9NamedDeclEN4llvm9StringRefES5_PKNS_9FieldDeclES8_ENK3$_1clEZNKS0_24diagnoseSubMismatchFieldES3_S5_S5_S8_S8_E18ODRFieldDifference"(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 1)
  %i.cl = load ptr, ptr %13, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i77, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i78, label %_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEEERKS0_RKT_.exit83

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i78: ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEEERKS0_RKT_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !41
  %i.co = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.cn) ; 2 uses
  store ptr %i.co, ptr %13, align 8, !tbaa !40
  br label %_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEEERKS0_RKT_.exit83

_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEEERKS0_RKT_.exit83: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i78, %_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEEERKS0_RKT_.exit
  %i.cp = phi ptr [ %i.co, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i78 ], [ %i.cl, %_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEEERKS0_RKT_.exit ] ; 2 uses
  %i.cq = ptrtoint ptr %.0.i.i63 to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cs = load i8, ptr %i.cp, align 8, !tbaa !54
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ct
  store i8 5, ptr %i.cu, align 1, !tbaa !17
  %i.cv = load ptr, ptr %13, align 8, !tbaa !40   ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i8, ptr %i.cv, align 8, !tbaa !54  ; 2 uses
  %i.cy = add i8 %i.cx, 1                         ; 2 uses
  store i8 %i.cy, ptr %i.cv, align 8, !tbaa !54
  %i.cz = zext i8 %i.cx to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz
  store i64 %i.cq, ptr %i.da, align 8, !tbaa !25
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.dc = zext i8 %i.cy to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  store i8 8, ptr %i.dd, align 1, !tbaa !17
  %i.de = load ptr, ptr %13, align 8, !tbaa !40   ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load i8, ptr %i.de, align 8, !tbaa !54  ; 2 uses
  %i.dh = add i8 %i.dg, 1
  store i8 %i.dh, ptr %i.de, align 8, !tbaa !54
  %i.di = zext i8 %i.dg to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.di
  store i64 %.sroa.0.0.copyload.i70, ptr %i.dj, align 8, !tbaa !25
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %.critedge62

bb.d:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread185
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 4            ; 3 uses
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = and i8 %i.dm, 1                         ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 68 ; 4 uses
  %i.dp = load i32, ptr %i.do, align 4            ; 2 uses
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = and i8 %i.dq, 1                         ; 2 uses
  %.not55 = icmp eq i8 %i.dn, %i.dr
  br i1 %.not55, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call fastcc void @"_ZZNK5clang15ODRDiagsEmitter24diagnoseSubMismatchFieldEPKNS_9NamedDeclEN4llvm9StringRefES5_PKNS_9FieldDeclES8_ENK3$_0clEZNKS0_24diagnoseSubMismatchFieldES3_S5_S5_S8_S8_E18ODRFieldDifference"(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 2)
  %i.ds = load ptr, ptr %14, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i84, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i85, label %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i85: ; preds = %bb.e
  %i.dt = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !41
  %i.dv = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.du) ; 2 uses
  store ptr %i.dv, ptr %14, align 8, !tbaa !40
  br label %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i85, %bb.e
  %i.dw = phi ptr [ %i.dv, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i85 ], [ %i.ds, %bb.e ] ; 2 uses
  %i.dx = ptrtoint ptr %.0.i.i to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.dz = load i8, ptr %i.dw, align 8, !tbaa !54
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ea
  store i8 5, ptr %i.eb, align 1, !tbaa !17
  %i.ec = load ptr, ptr %14, align 8, !tbaa !40   ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load i8, ptr %i.ec, align 8, !tbaa !54  ; 2 uses
  %i.ef = add i8 %i.ee, 1                         ; 2 uses
  store i8 %i.ef, ptr %i.ec, align 8, !tbaa !54
  %i.eg = zext i8 %i.ee to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eg
  store i64 %i.dx, ptr %i.eh, align 8, !tbaa !25
  %i.ei = zext nneg i8 %i.dn to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ek = zext i8 %i.ef to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek
  store i8 2, ptr %i.el, align 1, !tbaa !17
  %i.em = load ptr, ptr %14, align 8, !tbaa !40   ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i8, ptr %i.em, align 8, !tbaa !54  ; 2 uses
  %i.ep = add i8 %i.eo, 1
  store i8 %i.ep, ptr %i.em, align 8, !tbaa !54
  %i.eq = zext i8 %i.eo to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.eq
  store i64 %i.ei, ptr %i.er, align 8, !tbaa !25
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call fastcc void @"_ZZNK5clang15ODRDiagsEmitter24diagnoseSubMismatchFieldEPKNS_9NamedDeclEN4llvm9StringRefES5_PKNS_9FieldDeclES8_ENK3$_1clEZNKS0_24diagnoseSubMismatchFieldES3_S5_S5_S8_S8_E18ODRFieldDifference"(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 2)
  %i.es = load ptr, ptr %15, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i89, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i90, label %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit94

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i90: ; preds = %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit
  %i.et = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !41
  %i.ev = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.eu) ; 2 uses
  store ptr %i.ev, ptr %15, align 8, !tbaa !40
  br label %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit94

_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit94: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i90, %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit
  %i.ew = phi ptr [ %i.ev, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i90 ], [ %i.es, %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit ] ; 2 uses
  %i.ex = ptrtoint ptr %.0.i.i63 to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.ez = load i8, ptr %i.ew, align 8, !tbaa !54
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fa
  store i8 5, ptr %i.fb, align 1, !tbaa !17
  %i.fc = load ptr, ptr %15, align 8, !tbaa !40   ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load i8, ptr %i.fc, align 8, !tbaa !54  ; 2 uses
  %i.ff = add i8 %i.fe, 1                         ; 2 uses
  store i8 %i.ff, ptr %i.fc, align 8, !tbaa !54
  %i.fg = zext i8 %i.fe to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fg
  store i64 %i.ex, ptr %i.fh, align 8, !tbaa !25
  %i.fi = zext nneg i8 %i.dr to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fk = zext i8 %i.ff to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fk
  store i8 2, ptr %i.fl, align 1, !tbaa !17
  %i.fm = load ptr, ptr %15, align 8, !tbaa !40   ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load i8, ptr %i.fm, align 8, !tbaa !54  ; 2 uses
  %i.fp = add i8 %i.fo, 1
  store i8 %i.fp, ptr %i.fm, align 8, !tbaa !54
  %i.fq = zext i8 %i.fo to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fq
  store i64 %i.fi, ptr %i.fr, align 8, !tbaa !25
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %.critedge62

bb.f:                                             ; preds = %bb.d
  %i.fs = and i32 %i.dl, 1
  %i.ft = and i32 %i.fs, %i.dp
  %or.cond.not = icmp eq i32 %i.ft, 0
  br i1 %or.cond.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fu = lshr i32 %i.dl, 2
  %i.fv = and i32 %i.fu, 3
  %.off.i = add nsw i32 %i.fv, -1
  %switch.i = icmp ult i32 %.off.i, 2
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.in.i = select i1 %switch.i, ptr %i.fy, ptr %i.fw
  %i.fz = load ptr, ptr %.in.i, align 8, !tbaa !17
  %26 = tail call fastcc noundef i32 @_ZL14computeODRHashPKN5clang4StmtE(ptr noundef %i.fz)
  %27 = load i32, ptr %i.do, align 4              ; 2 uses
  %28 = and i32 %27, 1
  %.not.i95 = icmp eq i32 %28, 0
  br i1 %.not.i95, label %_ZNK5clang9FieldDecl11getBitWidthEv.exit100, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ga = lshr i32 %27, 2
  %i.gb = and i32 %i.ga, 3
  %.off.i96 = add nsw i32 %i.gb, -1
  %switch.i97 = icmp ult i32 %.off.i96, 2
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.in.i98 = select i1 %switch.i97, ptr %i.ge, ptr %i.gc
  %i.gf = load ptr, ptr %.in.i98, align 8, !tbaa !17
  br label %_ZNK5clang9FieldDecl11getBitWidthEv.exit100

_ZNK5clang9FieldDecl11getBitWidthEv.exit100:      ; preds = %bb.g, %bb.h
  %.0.i99 = phi ptr [ %i.gf, %bb.h ], [ null, %bb.g ]
  %i.gg = tail call fastcc noundef i32 @_ZL14computeODRHashPKN5clang4StmtE(ptr noundef %.0.i99)
  %.not56 = icmp eq i32 %26, %i.gg
  br i1 %.not56, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang9FieldDecl11getBitWidthEv.exit100
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call fastcc void @"_ZZNK5clang15ODRDiagsEmitter24diagnoseSubMismatchFieldEPKNS_9NamedDeclEN4llvm9StringRefES5_PKNS_9FieldDeclES8_ENK3$_0clEZNKS0_24diagnoseSubMismatchFieldES3_S5_S5_S8_S8_E18ODRFieldDifference"(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 3)
  %i.gh = load ptr, ptr %16, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i101 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i101, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i102, label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEEERKS0_RKT_.exit103

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i102: ; preds = %bb.i
  %i.gi = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !41
  %i.gk = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.gj) ; 2 uses
  store ptr %i.gk, ptr %16, align 8, !tbaa !40
  br label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEEERKS0_RKT_.exit103

_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEEERKS0_RKT_.exit103: ; preds = %bb.i, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i102
  %i.gl = phi ptr [ %i.gk, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i102 ], [ %i.gh, %bb.i ] ; 2 uses
  %i.gm = ptrtoint ptr %.0.i.i to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.go = load i8, ptr %i.gl, align 8, !tbaa !54
  %i.gp = zext i8 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gp
  store i8 5, ptr %i.gq, align 1, !tbaa !17
  %i.gr = load ptr, ptr %16, align 8, !tbaa !40   ; 6 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load i8, ptr %i.gr, align 8, !tbaa !54  ; 2 uses
  %i.gu = add i8 %i.gt, 1
  store i8 %i.gu, ptr %i.gr, align 8, !tbaa !54
  %i.gv = zext i8 %i.gt to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gv
  store i64 %i.gm, ptr %i.gw, align 8, !tbaa !25
  %i.gx = load i32, ptr %i.dk, align 4            ; 2 uses
  %.not.i104 = trunc i32 %i.gx to i1
  call void @llvm.assume(i1 %.not.i104)
  %i.gy = lshr i32 %i.gx, 2
  %i.gz = and i32 %i.gy, 3
  %.off.i105 = add nsw i32 %i.gz, -1
  %switch.i106 = icmp ult i32 %.off.i105, 2
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %.in.i107 = select i1 %switch.i106, ptr %i.hc, ptr %i.ha
  %i.hd = load ptr, ptr %.in.i107, align 8, !tbaa !17
  %i.he = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hd) #20 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gr, i64 416 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gr, i64 424 ; 3 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !55 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gr, i64 428
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !56
  %.not.i5.i.i.i = icmp ult i32 %i.hh, %i.hj
  br i1 %.not.i5.i.i.i, label %bb.k, label %bb.j, !prof !57

bb.j:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEEERKS0_RKT_.exit103
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, i64 %i.he, i8 1)
  br label %_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit

bb.k:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEEERKS0_RKT_.exit103
  %i.hk = zext i32 %i.hh to i64
  %i.hl = load ptr, ptr %i.hf, align 8, !tbaa !58
  %i.hm = getelementptr inbounds nuw [12 x i8], ptr %i.hl, i64 %i.hk ; 2 uses
  store i64 %i.he, ptr %i.hm, align 1
  %.sroa.38.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i, align 1
  %i.hn = load i32, ptr %i.hg, align 8, !tbaa !55
  %i.ho = add i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hg, align 8, !tbaa !55
  br label %_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit: ; preds = %bb.j, %bb.k
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call fastcc void @"_ZZNK5clang15ODRDiagsEmitter24diagnoseSubMismatchFieldEPKNS_9NamedDeclEN4llvm9StringRefES5_PKNS_9FieldDeclES8_ENK3$_1clEZNKS0_24diagnoseSubMismatchFieldES3_S5_S5_S8_S8_E18ODRFieldDifference"(ptr dead_on_unwind noalias writable align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
  %i.hp = load ptr, ptr %17, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i113 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i113, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i114, label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEEERKS0_RKT_.exit115

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i114: ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !41
  %i.hs = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.hr) ; 2 uses
  store ptr %i.hs, ptr %17, align 8, !tbaa !40
  br label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEEERKS0_RKT_.exit115

_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEEERKS0_RKT_.exit115: ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i114
  %i.ht = phi ptr [ %i.hs, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i114 ], [ %i.hp, %_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit ] ; 2 uses
  %i.hu = ptrtoint ptr %.0.i.i63 to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  %i.hw = load i8, ptr %i.ht, align 8, !tbaa !54
  %i.hx = zext i8 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hx
  store i8 5, ptr %i.hy, align 1, !tbaa !17
  %i.hz = load ptr, ptr %17, align 8, !tbaa !40   ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load i8, ptr %i.hz, align 8, !tbaa !54  ; 2 uses
  %i.ic = add i8 %i.ib, 1
  store i8 %i.ic, ptr %i.hz, align 8, !tbaa !54
  %i.id = zext i8 %i.ib to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.id
  store i64 %i.hu, ptr %i.ie, align 8, !tbaa !25
  %i.if = load i32, ptr %i.do, align 4            ; 2 uses
  %.not.i116 = trunc i32 %i.if to i1
  call void @llvm.assume(i1 %.not.i116)
  %i.ig = lshr i32 %i.if, 2
  %i.ih = and i32 %i.ig, 3
  %.off.i117 = add nsw i32 %i.ih, -1
  %switch.i118 = icmp ult i32 %.off.i117, 2
  %i.ii = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %.in.i119 = select i1 %switch.i118, ptr %i.ik, ptr %i.ii
  %i.il = load ptr, ptr %.in.i119, align 8, !tbaa !17
  %i.im = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.il) #20 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.hz, i64 416 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.hz, i64 424 ; 3 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !55 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hz, i64 428
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !56
  %.not.i5.i.i.i124 = icmp ult i32 %i.ip, %i.ir
  br i1 %.not.i5.i.i.i124, label %bb.m, label %bb.l, !prof !57

bb.l:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEEERKS0_RKT_.exit115
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.in, i64 %i.im, i8 1)
  br label %_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit127

bb.m:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEEERKS0_RKT_.exit115
  %i.is = zext i32 %i.ip to i64
  %i.it = load ptr, ptr %i.in, align 8, !tbaa !58
  %i.iu = getelementptr inbounds nuw [12 x i8], ptr %i.it, i64 %i.is ; 2 uses
  store i64 %i.im, ptr %i.iu, align 1
  %.sroa.38.0..sroa_idx.i.i.i.i125 = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i125, align 1
  %i.iv = load i32, ptr %i.io, align 8, !tbaa !55
  %i.iw = add i32 %i.iv, 1
  store i32 %i.iw, ptr %i.io, align 8, !tbaa !55
  br label %_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit127

_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit127: ; preds = %bb.l, %bb.m
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %.critedge62

.critedge:                                        ; preds = %_ZNK5clang9FieldDecl11getBitWidthEv.exit100, %bb.f
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !63, !nonnull !64, !align !65
  %i.iz = load i64, ptr %i.iy, align 8
  %i.ja = and i64 %i.iz, 4096
  %.not57 = icmp eq i64 %i.ja, 0
  br i1 %.not57, label %.critedge62, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.jb = load i32, ptr %i.dk, align 4
  %i.jc = trunc i32 %i.jb to i8
  %i.jd = lshr i8 %i.jc, 1
  %i.je = and i8 %i.jd, 1                         ; 2 uses
  %i.jf = load i32, ptr %i.do, align 4
  %i.jg = trunc i32 %i.jf to i8
  %i.jh = lshr i8 %i.jg, 1
  %i.ji = and i8 %i.jh, 1                         ; 2 uses
  %.not58 = icmp eq i8 %i.je, %i.ji
  br i1 %.not58, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call fastcc void @"_ZZNK5clang15ODRDiagsEmitter24diagnoseSubMismatchFieldEPKNS_9NamedDeclEN4llvm9StringRefES5_PKNS_9FieldDeclES8_ENK3$_0clEZNKS0_24diagnoseSubMismatchFieldES3_S5_S5_S8_S8_E18ODRFieldDifference"(ptr dead_on_unwind noalias writable align 8 %18, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 4)
  %i.jj = load ptr, ptr %18, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i128 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i128, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i129, label %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit133

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i129: ; preds = %bb.o
  %i.jk = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !41
  %i.jm = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.jl) ; 2 uses
  store ptr %i.jm, ptr %18, align 8, !tbaa !40
  br label %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit133

_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit133: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i129, %bb.o
  %i.jn = phi ptr [ %i.jm, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i129 ], [ %i.jj, %bb.o ] ; 2 uses
  %i.jo = ptrtoint ptr %.0.i.i to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.jq = load i8, ptr %i.jn, align 8, !tbaa !54
  %i.jr = zext i8 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jr
  store i8 5, ptr %i.js, align 1, !tbaa !17
  %i.jt = load ptr, ptr %18, align 8, !tbaa !40   ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load i8, ptr %i.jt, align 8, !tbaa !54  ; 2 uses
  %i.jw = add i8 %i.jv, 1                         ; 2 uses
  store i8 %i.jw, ptr %i.jt, align 8, !tbaa !54
  %i.jx = zext i8 %i.jv to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.jx
  store i64 %i.jo, ptr %i.jy, align 8, !tbaa !25
  %i.jz = zext nneg i8 %i.je to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  %i.kb = zext i8 %i.jw to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kb
  store i8 2, ptr %i.kc, align 1, !tbaa !17
  %i.kd = load ptr, ptr %18, align 8, !tbaa !40   ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
end_hunk_0
