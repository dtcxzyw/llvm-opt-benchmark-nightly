Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDeclCXX?download=true
inline.NumInlined: 22648
inline.NumDeleted: 9795
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5clang4Sema34CheckOverloadedOperatorDeclarationEPNS_12FunctionDeclE:bb.a
  %i.fl = and i24 %i.fk, 1048576
  %.not.i.i124 = icmp eq i24 %i.fl, 0
  br i1 %.not.i.i124, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.fm, align 8, !tbaa !92
  %.pre = and i64 %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, -16
  %.pre213 = inttoptr i64 %.pre to ptr
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.ae, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.pre-phi214 = phi ptr [ %i.el, %bb.ae ], [ %i.el, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %.pre213, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ]
  %i.fn = load ptr, ptr %.pre-phi214, align 8, !tbaa !98 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  %i.fp = load i16, ptr %i.fo, align 1
  %i.fq = and i16 %i.fp, 4
  %.not192 = icmp eq i16 %i.fq, 0
  br i1 %.not192, label %bb.ag, label %.thread168

bb.ag:                                            ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.fr, align 8, !tbaa !92
  %i.fs = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ft = inttoptr i64 %i.fs to ptr
  %i.fu = load ptr, ptr %i.ft, align 16, !tbaa !98
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load i8, ptr %i.fv, align 16            ; 2 uses
  %i.fx = icmp eq i8 %i.fw, 49
  br i1 %i.fx, label %.thread168, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not193 = icmp eq i8 %i.fw, 47                 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0104198, i64 8 ; 2 uses
  %.not111 = icmp eq ptr %i.fy, %i.eh
  %or.cond = select i1 %.not193, i1 true, i1 %.not111
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ah
  br i1 %.not193, label %.thread168, label %.critedge210

.critedge210:                                     ; preds = %bb.ad, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i128 = load i32, ptr %i.ga, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.fz, i32 %.sroa.0.0.copyload.i128, i32 noundef 4841) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.gb = load ptr, ptr %i.b, align 8, !tbaa !1246
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %.sroa.0.0.copyload.i129 = load i64, ptr %i.gc, align 8, !tbaa !1284
  store i64 %.sroa.0.0.copyload.i129, ptr %8, align 8
  %i.gd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 120
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !1177, !range !106, !noundef !107
  %i.gg = trunc nuw i8 %i.gf to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZL27CheckOperatorNewDeclarationRN5clang4SemaEPNS_12FunctionDeclE.exit

.thread168:                                       ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, %bb.ag, %bb.ab, %bb.z, %._crit_edge
  %.not116 = icmp eq i32 %i.h, 42                 ; 2 uses
  br i1 %.not116, label %.thread176, label %bb.ai

bb.ai:                                            ; preds = %.thread168
  %i.gh = load ptr, ptr %i.b, align 8, !tbaa !1246 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 120
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !1282 ; 2 uses
  %i.gk = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.gh) #26 ; 2 uses
  %i.gl = zext i32 %i.gk to i64
  %.idx211 = shl nuw nsw i64 %i.gl, 3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.idx211
  %.not113202 = icmp eq i32 %i.gk, 0
  br i1 %.not113202, label %.thread176, label %.lr.ph205

bb.aj:                                            ; preds = %.lr.ph205
  %i.gn = getelementptr inbounds nuw i8, ptr %.0105203, i64 8 ; 2 uses
  %.not113 = icmp eq ptr %i.gn, %i.gm
  br i1 %.not113, label %.thread176, label %.lr.ph205

.lr.ph205:                                        ; preds = %bb.ai, %bb.aj
  %.0105203 = phi ptr [ %i.gn, %bb.aj ], [ %i.gj, %bb.ai ] ; 2 uses
  %i.go = load ptr, ptr %.0105203, align 8, !tbaa !1167 ; 4 uses
  %i.gp = call noundef zeroext i1 @_ZNK5clang11ParmVarDecl13hasDefaultArgEv(ptr noundef nonnull align 8 dereferenceable(104) %i.go) #26
  br i1 %i.gp, label %._crit_edge206, label %bb.aj

._crit_edge206:                                   ; preds = %.lr.ph205
  %i.gq = icmp eq i32 %i.h, 43
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.gq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %._crit_edge206
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.gs = load ptr, ptr %i.b, align 8, !tbaa !1246
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %.sroa.0.0.copyload.i132 = load i32, ptr %i.gt, align 8, !tbaa !116
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !1172, !nonnull !107, !align !791
  %i.gw = load i64, ptr %i.gv, align 8
  %i.gx = and i64 %i.gw, 131072
  %.not115 = icmp eq i64 %i.gx, 0
  %i.gy = select i1 %.not115, i32 5623, i32 5813
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.gr, i32 %.sroa.0.0.copyload.i132, i32 noundef %i.gy) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.gz = load ptr, ptr %i.b, align 8, !tbaa !1246
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %.sroa.0.0.copyload.i133 = load i64, ptr %i.ha, align 8, !tbaa !1284
  store i64 %.sroa.0.0.copyload.i133, ptr %10, align 8
  %i.hb = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 1, ptr %i.c, align 4, !tbaa !116
  %i.hc = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.hb, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.hd = call i64 @_ZNK5clang11ParmVarDecl18getDefaultArgRangeEv(ptr noundef nonnull align 8 dereferenceable(104) %i.go) #26
  store i64 %i.hd, ptr %11, align 8
  %i.he = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.hc, ptr noundef nonnull align 4 dereferenceable(8) %11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.thread176

bb.al:                                            ; preds = %._crit_edge206
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.hf = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %.sroa.0.0.copyload.i134 = load i32, ptr %i.hf, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.gr, i32 %.sroa.0.0.copyload.i134, i32 noundef 4838) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.hg = load ptr, ptr %i.b, align 8, !tbaa !1246
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  %.sroa.0.0.copyload.i135 = load i64, ptr %i.hh, align 8, !tbaa !1284
  store i64 %.sroa.0.0.copyload.i135, ptr %13, align 8
  %i.hi = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 8 dereferenceable(8) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.hj = call i64 @_ZNK5clang11ParmVarDecl18getDefaultArgRangeEv(ptr noundef nonnull align 8 dereferenceable(104) %i.go) #26
  store i64 %i.hj, ptr %14, align 8
  %i.hk = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.hi, ptr noundef nonnull align 4 dereferenceable(8) %14)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 120
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !1177, !range !106, !noundef !107
  %i.hn = trunc nuw i8 %i.hm to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZL27CheckOperatorNewDeclarationRN5clang4SemaEPNS_12FunctionDeclE.exit

.thread176:                                       ; preds = %bb.aj, %bb.ai, %bb.ak, %.thread168
  %i.ho = sext i32 %i.h to i64
  %i.hp = getelementptr inbounds [3 x i8], ptr @_ZZN5clang4Sema34CheckOverloadedOperatorDeclarationEPNS_12FunctionDeclEE12OperatorUses, i64 %i.ho ; 3 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !1283, !range !106, !noundef !107 ; 2 uses
  %i.hr = trunc nuw i8 %i.hq to i1                ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !1283, !range !106, !noundef !107 ; 2 uses
  %i.hu = trunc nuw i8 %i.ht to i1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !1283, !range !106, !noundef !107
  %i.hx = trunc nuw i8 %i.hw to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.hy = load ptr, ptr %i.b, align 8, !tbaa !1246
  %i.hz = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.hy) #26
  %i.ia = load ptr, ptr %i.b, align 8, !tbaa !1246 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 28
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = and i32 %i.ic, 124
  %i.ie = icmp eq i32 %i.id, 36
  br i1 %i.ie, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.thread176
  %i.if = call noundef zeroext i1 @_ZNK5clang12FunctionDecl37hasCXXExplicitFunctionObjectParameterEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ia) #26
  %i.ig = xor i1 %i.if, true
  %i.ih = zext i1 %i.ig to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread176
  %i.ii = phi i32 [ 0, %.thread176 ], [ %i.ih, %bb.am ]
  %i.ij = add i32 %i.ii, %i.hz                    ; 7 uses
  store i32 %i.ij, ptr %i.d, align 4, !tbaa !116
  %i.ik = add i32 %i.h, -44
  %or.cond13 = icmp ult i32 %i.ik, -2
  br i1 %or.cond13, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.il = icmp ne i32 %i.ij, 1
  %or.cond15 = or i1 %i.il, %i.hr
  br i1 %or.cond15, label %bb.ap, label %.thread179

bb.ap:                                            ; preds = %bb.ao
  %i.im = icmp ne i32 %i.ij, 2
  %or.cond17 = or i1 %i.im, %i.hu
  %i.in = add i32 %i.ij, -1
  %i.io = icmp ult i32 %i.in, 2
  %or.cond21.not = and i1 %i.io, %or.cond17
  br i1 %or.cond21.not, label %.thread185, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.ip = and i8 %i.ht, %i.hq
  %or.cond23.not.not = icmp eq i8 %i.ip, 0
  %.mux = select i1 %or.cond23.not.not, i32 0, i32 2
  br i1 %i.hr, label %bb.ar, label %.thread181

.thread179:                                       ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  br label %.thread181

.thread181:                                       ; preds = %bb.aq, %.thread179
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread181
  %.sink = phi i32 [ %.mux, %bb.aq ], [ 1, %.thread181 ]
  store i32 %.sink, ptr %i.e, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ir = load ptr, ptr %i.b, align 8, !tbaa !1246
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %.sroa.0.0.copyload.i136 = load i32, ptr %i.is, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.iq, i32 %.sroa.0.0.copyload.i136, i32 noundef 4839) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.it = load ptr, ptr %i.b, align 8, !tbaa !1246
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %.sroa.0.0.copyload.i137 = load i64, ptr %i.iu, align 8, !tbaa !1284
  store i64 %.sroa.0.0.copyload.i137, ptr %16, align 8
  %i.iv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %15, ptr noundef nonnull align 8 dereferenceable(8) %16)
  %i.iw = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIjEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.iv, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.ix = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIjEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.iw, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 120
  %i.iz = load i8, ptr %i.iy, align 8, !tbaa !1177, !range !106, !noundef !107
  %i.ja = trunc nuw i8 %i.iz to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %.thread188

bb.as:                                            ; preds = %bb.an
  %i.jb = icmp eq i32 %i.h, 43
  %i.jc = icmp ne i32 %i.ij, 2
  %or.cond25 = and i1 %i.jb, %i.jc
  br i1 %or.cond25, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.je = load ptr, ptr %i.b, align 8, !tbaa !1246
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %.sroa.0.0.copyload.i138 = load i32, ptr %i.jf, align 8, !tbaa !116
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !1172, !nonnull !107, !align !791
  %i.ji = load i64, ptr %i.jh, align 8
  %i.jj = and i64 %i.ji, 131072
  %.not118 = icmp eq i64 %i.jj, 0
  %i.jk = select i1 %.not118, i32 5623, i32 5813
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.jd, i32 %.sroa.0.0.copyload.i138, i32 noundef %i.jk) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.jl = load ptr, ptr %i.b, align 8, !tbaa !1246
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 40
  %.sroa.0.0.copyload.i139 = load i64, ptr %i.jm, align 8, !tbaa !1284
  store i64 %.sroa.0.0.copyload.i139, ptr %18, align 8
  %i.jn = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %17, ptr noundef nonnull align 8 dereferenceable(8) %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.jo = icmp eq i32 %i.ij, 1
  %i.jp = select i1 %i.jo, i32 0, i32 2
  store i32 %i.jp, ptr %i.f, align 4, !tbaa !116
  %i.jq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.jn, ptr noundef nonnull align 4 dereferenceable(4) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %.thread185

bb.au:                                            ; preds = %bb.as
  br i1 %.not116, label %.critedge, label %.thread185

.thread185:                                       ; preds = %bb.ap, %bb.at, %bb.au
  %i.jr = load ptr, ptr %i.b, align 8, !tbaa !1246
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %.sroa.0.0.copyload.i140 = load i64, ptr %i.js, align 8, !tbaa !92
  %i.jt = and i64 %.sroa.0.0.copyload.i140, -16
  %i.ju = inttoptr i64 %i.jt to ptr
  %i.jv = load ptr, ptr %i.ju, align 16, !tbaa !98 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load i8, ptr %i.jw, align 16
  %.not.i142 = icmp eq i8 %i.jx, 24
  br i1 %.not.i142, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.av

bb.av:                                            ; preds = %.thread185
  %i.jy = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.jv) #26
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %.thread185, %bb.av
  %.1.i = phi ptr [ %i.jy, %bb.av ], [ %i.jv, %.thread185 ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.ka = load i64, ptr %i.jz, align 16
  %i.kb = and i64 %i.ka, 2147483648
  %.not194 = icmp eq i64 %i.kb, 0
  br i1 %.not194, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kd = load ptr, ptr %i.b, align 8, !tbaa !1246
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %.sroa.0.0.copyload.i143 = load i32, ptr %i.ke, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.kc, i32 %.sroa.0.0.copyload.i143, i32 noundef 4844) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.kf = load ptr, ptr %i.b, align 8, !tbaa !1246
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 40
  %.sroa.0.0.copyload.i144 = load i64, ptr %i.kg, align 8, !tbaa !1284
  store i64 %.sroa.0.0.copyload.i144, ptr %20, align 8
  %i.kh = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %19, ptr noundef nonnull align 8 dereferenceable(8) %20)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 120
  %i.kj = load i8, ptr %i.ki, align 8, !tbaa !1177, !range !106, !noundef !107
  %i.kk = trunc nuw i8 %i.kj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %.thread188

.critedge:                                        ; preds = %bb.au, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  br i1 %i.hx, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.critedge
  %i.kl = load ptr, ptr %i.b, align 8, !tbaa !1246 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 28
  %i.kn = load i32, ptr %i.km, align 4
  %i.ko = and i32 %i.kn, 124
  %i.kp = icmp eq i32 %i.ko, 36
  br i1 %i.kp, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %.sroa.0.0.copyload.i145 = load i32, ptr %i.kr, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.kq, i32 %.sroa.0.0.copyload.i145, i32 noundef 4840) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.ks = load ptr, ptr %i.b, align 8, !tbaa !1246
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  %.sroa.0.0.copyload.i146 = load i64, ptr %i.kt, align 8, !tbaa !1284
  store i64 %.sroa.0.0.copyload.i146, ptr %22, align 8
  %i.ku = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %21, ptr noundef nonnull align 8 dereferenceable(8) %22)
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 120
  %i.kw = load i8, ptr %i.kv, align 8, !tbaa !1177, !range !106, !noundef !107
  %i.kx = trunc nuw i8 %i.kw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %.thread188

bb.az:                                            ; preds = %bb.ax, %.critedge
  %i.ky = icmp eq i32 %i.h, 38
  %i.kz = add i32 %i.h, -37
  %or.cond27 = icmp ult i32 %i.kz, 2
  %i.la = icmp eq i32 %i.ij, 2
  %or.cond29 = and i1 %or.cond27, %i.la
  br i1 %or.cond29, label %bb.ba, label %.thread188

bb.ba:                                            ; preds = %bb.az
  %i.lb = load ptr, ptr %i.b, align 8, !tbaa !1246 ; 2 uses
  %i.lc = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.lb) #26
  %i.ld = add i32 %i.lc, -1
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 120
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !1282
  %i.lg = zext i32 %i.ld to i64
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lg
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !1167 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i147 = load i64, ptr %i.lj, align 8, !tbaa !92
  %i.lk = and i64 %.sroa.0.0.copyload.i147, -16
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = load ptr, ptr %i.ll, align 16, !tbaa !98 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i149 = load i64, ptr %i.ln, align 8, !tbaa !92
  %i.lo = and i64 %.sroa.0.0.copyload.i.i.i.i.i149, -16
  %i.lp = inttoptr i64 %i.lo to ptr
  %i.lq = load ptr, ptr %i.lp, align 16, !tbaa !98 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16 ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 16
  %i.lt = icmp eq i8 %i.ls, 13
  %.not7.i = icmp ne ptr %i.lq, null
  %.not.not.not.i = and i1 %.not7.i, %i.lt
  br i1 %.not.not.not.i, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread

_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit:    ; preds = %bb.ba
  %i.lu = load i32, ptr %i.lr, align 16
  %i.lv = and i32 %i.lu, 536346624
  %i.lw = icmp eq i32 %i.lv, 245891072
  br i1 %i.lw, label %.thread188, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread

_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread: ; preds = %bb.ba, %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lm, i64 17
  %i.ly = load i16, ptr %i.lx, align 1
  %i.lz = and i16 %i.ly, 4
  %.not195 = icmp eq i16 %i.lz, 0
  br i1 %.not195, label %bb.bb, label %.thread188

bb.bb:                                            ; preds = %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@_ZL19isDestroyingDeleteTN5clang8QualTypeE:bb.a
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.j, 3
  %.not.i7.i = icmp ne ptr %i.g, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.k = and i8 %i.i, 62
  %spec.select.i.i.i = icmp eq i8 %i.k, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.b, label %_ZNK5clang14IdentifierInfo5isStrILm20EEEbRAT__Kc.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1388 ; 3 uses
  %i.n = icmp eq i8 %i.i, 49
  br i1 %i.n, label %bb.c, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 127
  %i.r = add nsw i32 %i.q, -60
  %i.s = icmp ult i32 %i.r, 3
  br i1 %i.s, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %_ZNK5clang14IdentifierInfo5isStrILm20EEEbRAT__Kc.exit

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %bb.c, %bb.b
  %i.t = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.m) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.t, null
  %spec.select = select i1 %.not.not.i.i, ptr %i.m, ptr %i.t ; 2 uses
  %i.u = tail call noundef zeroext i1 @_ZNK5clang4Decl16isInStdNamespaceEv(ptr noundef nonnull align 8 dereferenceable(33) %spec.select) #26
  br i1 %i.u, label %bb.d, label %_ZNK5clang14IdentifierInfo5isStrILm20EEEbRAT__Kc.exit

bb.d:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %spec.select, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1477 ; 2 uses
  %i.x = and i64 %i.w, 7
  %i.y = icmp ne i64 %i.x, 0
  %i.z = and i64 %i.w, -8                         ; 2 uses
  %.not48 = icmp eq i64 %i.z, 0
  %.not4 = or i1 %i.y, %.not48
  br i1 %.not4, label %_ZNK5clang14IdentifierInfo5isStrILm20EEEbRAT__Kc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1349 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1351
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = icmp eq i64 %i.ae, 19
  br i1 %i.af, label %bb.f, label %_ZNK5clang14IdentifierInfo5isStrILm20EEEbRAT__Kc.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ah = load i128, ptr %i.ag, align 1
  %i.ai = xor i128 %i.ah, 154717068027107704543914791081967052132
  %i.aj = getelementptr i8, ptr %i.ag, i64 3
  %i.ak = load i128, ptr %i.aj, align 1
  %i.al = xor i128 %i.ak, 154685773457836899145965989519959224948
  %i.am = or i128 %i.ai, %i.al
  %i.an = icmp ne i128 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br label %_ZNK5clang14IdentifierInfo5isStrILm20EEEbRAT__Kc.exit

_ZNK5clang14IdentifierInfo5isStrILm20EEEbRAT__Kc.exit: ; preds = %bb.a, %bb.c, %bb.f, %bb.e, %bb.d, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.aq = phi i1 [ false, %bb.d ], [ false, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit ], [ %i.ap, %bb.f ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.a ]
  ret i1 %i.aq
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL37IsPotentiallyDestroyingOperatorDeleteRN5clang4SemaEPKNS_12FunctionDeclE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(18640) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !1398
  %i.b = tail call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #26
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZL41IsPotentiallyTypeAwareOperatorNewOrDeleteRN5clang4SemaEPKNS_12FunctionDeclEPb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1282
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1167
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4160
  %i.h = call fastcc noundef zeroext i1 @_ZL18isStdClassTemplateRN5clang4SemaENS_8QualTypeEPS2_PKcPPNS_17ClassTemplateDeclEPPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i.i, ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef %i.g, ptr noundef nonnull %i.a)
  %.pr.i = load ptr, ptr %i.a, align 8
  %.not7.i = icmp ne ptr %.pr.i, null
  %or.cond.not = select i1 %i.h, i1 true, i1 %.not7.i
  %spec.select = select i1 %or.cond.not, i32 2, i32 1
  br label %_ZL41IsPotentiallyTypeAwareOperatorNewOrDeleteRN5clang4SemaEPKNS_12FunctionDeclEPb.exit

_ZL41IsPotentiallyTypeAwareOperatorNewOrDeleteRN5clang4SemaEPKNS_12FunctionDeclEPb.exit: ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ 1, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 124
  %i.m = icmp eq i32 %i.l, 36
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZL41IsPotentiallyTypeAwareOperatorNewOrDeleteRN5clang4SemaEPKNS_12FunctionDeclEPb.exit
  %i.n = call noundef i32 @_ZNK5clang12FunctionDecl21getOverloadedOperatorEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #26
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #26
  %i.q = icmp ugt i32 %i.p, %i.i
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1282
  %i.t = zext nneg i32 %i.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1167
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !92
  %i.x = call fastcc noundef zeroext i1 @_ZL19isDestroyingDeleteTN5clang8QualTypeE(i64 %.sroa.0.0.copyload.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %_ZL41IsPotentiallyTypeAwareOperatorNewOrDeleteRN5clang4SemaEPKNS_12FunctionDeclEPb.exit
  %i.y = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ false, %_ZL41IsPotentiallyTypeAwareOperatorNewOrDeleteRN5clang4SemaEPKNS_12FunctionDeclEPb.exit ], [ %i.x, %bb.e ]
  ret i1 %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL27CheckOperatorNewDeleteTypesRN5clang4SemaEPNS_12FunctionDeclE22AllocationOperatorKindNS_7CanQualINS_4TypeEEES7_jj(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 2) %2, i64 %3, i64 %4, i32 noundef range(i32 4827, 4837) %5, i32 noundef range(i32 4828, 4838) %6) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %7 = alloca %"class.clang::CanQual", align 8    ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %8 = alloca %class.anon.3197, align 8           ; 7 uses
  %i.e = alloca i8, align 1                       ; 7 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %11 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %13 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %14 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %15 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %16 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %18 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %19 = alloca %class.anon.3198, align 8          ; 12 uses
  store i64 %3, ptr %7, align 8
  store ptr %1, ptr %i.b, align 8, !tbaa !1246
  store i32 %5, ptr %i.c, align 4, !tbaa !116
  store i32 %6, ptr %i.d, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %0, ptr %8, align 8, !tbaa !1173
  %i.i = tail call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !1398
  %i.j = tail call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #26
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZL41IsPotentiallyTypeAwareOperatorNewOrDeleteRN5clang4SemaEPKNS_12FunctionDeclEPb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1282
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1167
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.n, align 8, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4160
  %i.p = call fastcc noundef zeroext i1 @_ZL18isStdClassTemplateRN5clang4SemaENS_8QualTypeEPS2_PKcPPNS_17ClassTemplateDeclEPPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i.i, ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef %i.o, ptr noundef nonnull %i.a) ; 2 uses
  %.pr.i = load ptr, ptr %i.a, align 8
  %.not7.i = icmp ne ptr %.pr.i, null
  %or.cond87.not = select i1 %i.p, i1 true, i1 %.not7.i
  br i1 %or.cond87.not, label %bb.c, label %_ZL41IsPotentiallyTypeAwareOperatorNewOrDeleteRN5clang4SemaEPKNS_12FunctionDeclEPb.exit

_ZL41IsPotentiallyTypeAwareOperatorNewOrDeleteRN5clang4SemaEPKNS_12FunctionDeclEPb.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.e, align 1, !tbaa !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %.076.ph = xor i1 %i.p, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store i8 1, ptr %i.e, align 1, !tbaa !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store i32 1, ptr %i.f, align 4, !tbaa !116
  %i.q = call noundef zeroext i1 @_ZNK5clang12FunctionDecl23isTemplateInstantiationEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #26
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.s, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 %.sroa.0.0.copyload.i, i32 noundef 7099) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %20 = icmp eq i32 %2, 0                         ; 2 uses
  %. = select i1 %20, i32 3, i32 4
  %.50 = select i1 %20, i32 1, i32 2
  br label %bb.f

bb.f:                                             ; preds = %_ZL41IsPotentiallyTypeAwareOperatorNewOrDeleteRN5clang4SemaEPKNS_12FunctionDeclEPb.exit, %bb.e
  %i.t = phi i32 [ %., %bb.e ], [ 1, %_ZL41IsPotentiallyTypeAwareOperatorNewOrDeleteRN5clang4SemaEPKNS_12FunctionDeclEPb.exit ] ; 3 uses
  %.07679 = phi i1 [ %.076.ph, %bb.e ], [ false, %_ZL41IsPotentiallyTypeAwareOperatorNewOrDeleteRN5clang4SemaEPKNS_12FunctionDeclEPb.exit ]
  %.141 = phi i32 [ %.50, %bb.e ], [ 0, %_ZL41IsPotentiallyTypeAwareOperatorNewOrDeleteRN5clang4SemaEPKNS_12FunctionDeclEPb.exit ] ; 2 uses
  %.039 = phi i32 [ 1, %bb.e ], [ 0, %_ZL41IsPotentiallyTypeAwareOperatorNewOrDeleteRN5clang4SemaEPKNS_12FunctionDeclEPb.exit ]
  store i32 %i.t, ptr %i.f, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.u = call fastcc noundef zeroext i1 @_ZL37IsPotentiallyDestroyingOperatorDeleteRN5clang4SemaEPKNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1) ; 2 uses
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.g, align 1, !tbaa !1283
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = add nuw nsw i32 %i.t, 1                  ; 2 uses
  store i32 %i.w, ptr %i.f, align 4, !tbaa !116
  %i.x = add nuw nsw i32 %.141, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi i32 [ %i.w, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %.242 = phi i32 [ %i.x, %bb.g ], [ %.141, %bb.f ] ; 2 uses
  %i.z = icmp ult i32 %i.i, %i.y
  br i1 %i.z, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i51 = load i32, ptr %i.ab, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 %.sroa.0.0.copyload.i51, i32 noundef 4835) #26
  %i.ac = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIbEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
  %i.ad = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIbEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i52 = load i64, ptr %i.ae, align 8, !tbaa !1284
  store i64 %.sroa.0.0.copyload.i52, ptr %11, align 8
  %i.af = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %i.ag = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIjEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.af, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !1177, !range !106, !noundef !107
  %i.aj = trunc nuw i8 %i.ai to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.x

.lr.ph.preheader:                                 ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store i32 0, ptr %i.h, align 4, !tbaa !116
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 120
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %i.al = phi i32 [ %i.bb, %bb.j ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !1282
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1167 ; 2 uses
  %i.aq = call noundef zeroext i1 @_ZNK5clang11ParmVarDecl13hasDefaultArgEv(ptr noundef nonnull align 8 dereferenceable(104) %i.ap) #26
  br i1 %i.aq, label %.thread82, label %bb.j

.thread82:                                        ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i53 = load i32, ptr %i.as, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i32 %.sroa.0.0.copyload.i53, i32 noundef 4829) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i54 = load i64, ptr %i.at, align 8, !tbaa !1284
  store i64 %.sroa.0.0.copyload.i54, ptr %13, align 8
  %i.au = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %i.av = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIjEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.aw = call i64 @_ZNK5clang11ParmVarDecl18getDefaultArgRangeEv(ptr noundef nonnull align 8 dereferenceable(104) %i.ap) #26
  store i64 %i.aw, ptr %14, align 8
  %i.ax = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.av, ptr noundef nonnull align 4 dereferenceable(8) %14)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !1177, !range !106, !noundef !107
  %i.ba = trunc nuw i8 %i.az to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %bb.x

bb.j:                                             ; preds = %.lr.ph
  %i.bb = add nuw i32 %i.al, 1                    ; 3 uses
  store i32 %i.bb, ptr %i.h, align 4, !tbaa !116
  %.not = icmp ult i32 %i.bb, %i.y
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !3488

._crit_edge:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i55 = load i64, ptr %i.bc, align 8, !tbaa !92
  %i.bd = and i64 %.sroa.0.0.copyload.i55, -16
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !98 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i8, ptr %i.bg, align 16
  %i.bi = add i8 %i.bh, -25
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bi, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.k, label %_ZNK5clang4Type6castAsINS_12FunctionTypeEEEPKT_v.exit

bb.k:                                             ; preds = %._crit_edge
  %i.bj = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bf) #26
  br label %_ZNK5clang4Type6castAsINS_12FunctionTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_12FunctionTypeEEEPKT_v.exit: ; preds = %._crit_edge, %bb.k
  %.1.i = phi ptr [ %i.bj, %bb.k ], [ %i.bf, %._crit_edge ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %.sroa.0.0.copyload.i56 = load i64, ptr %i.bk, align 8, !tbaa !92
  %i.bl = call fastcc i64 @_ZZL27CheckOperatorNewDeleteTypesRN5clang4SemaEPNS_12FunctionDeclE22AllocationOperatorKindNS_7CanQualINS_4TypeEEES7_jjENKUlNS_8QualTypeEE_clES8_(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 %.sroa.0.0.copyload.i56) ; 2 uses
  %i.bm = call fastcc i64 @_ZZL27CheckOperatorNewDeleteTypesRN5clang4SemaEPNS_12FunctionDeclE22AllocationOperatorKindNS_7CanQualINS_4TypeEEES7_jjENKUlNS_8QualTypeEE_clES8_(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 %3)
  %i.bn = call fastcc i64 @_ZZL27CheckOperatorNewDeleteTypesRN5clang4SemaEPNS_12FunctionDeclE22AllocationOperatorKindNS_7CanQualINS_4TypeEEES7_jjENKUlNS_8QualTypeEE_clES8_(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 %4)
  %.not84 = icmp eq i64 %i.bl, %i.bm
  br i1 %.not84, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang4Type6castAsINS_12FunctionTypeEEEPKT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.bp, align 8, !tbaa !116
  %i.bq = and i64 %i.bl, -16
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !98
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 17
  %i.bu = load i16, ptr %i.bt, align 1
  %i.bv = and i16 %i.bu, 4
  %.not85 = icmp eq i16 %i.bv, 0
  %i.bw = select i1 %.not85, i32 4833, i32 4832
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i32 %.sroa.0.0.copyload.i62, i32 noundef %i.bw) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i64 = load i64, ptr %i.bx, align 8, !tbaa !1284
  store i64 %.sroa.0.0.copyload.i64, ptr %16, align 8
  %i.by = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %15, ptr noundef nonnull align 8 dereferenceable(8) %16)
  %i.bz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_7CanQualINS_4TypeEEEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.by, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 120
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !1177, !range !106, !noundef !107
  %i.cc = trunc nuw i8 %i.cb to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.x

bb.m:                                             ; preds = %_ZNK5clang4Type6castAsINS_12FunctionTypeEEEPKT_v.exit
  %i.cd = call noundef ptr @_ZNK5clang12FunctionDecl28getDescribedFunctionTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #26
  %i.ce = icmp ne ptr %i.cd, null
  %i.cf = icmp ult i32 %i.i, 2
  %or.cond = and i1 %i.cf, %i.ce
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i65 = load i32, ptr %i.ch, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.cg, i32 %.sroa.0.0.copyload.i65, i32 noundef 4834) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i66 = load i64, ptr %i.ci, align 8, !tbaa !1284
  store i64 %.sroa.0.0.copyload.i66, ptr %18, align 8
  %i.cj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %17, ptr noundef nonnull align 8 dereferenceable(8) %18)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 120
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !1177, !range !106, !noundef !107
  %i.cm = trunc nuw i8 %i.cl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store ptr %i.b, ptr %19, align 8, !tbaa !3490
  %i.cn = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %0, ptr %i.cn, align 8, !tbaa !1173
  %i.co = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.d, ptr %i.co, align 8, !tbaa !1536
  %i.cp = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %i.e, ptr %i.cp, align 8, !tbaa !1499
  %i.cq = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr %i.g, ptr %i.cq, align 8, !tbaa !1499
  %i.cr = getelementptr inbounds nuw i8, ptr %19, i64 40
  store ptr %8, ptr %i.cr, align 8, !tbaa !111
  %i.cs = getelementptr inbounds nuw i8, ptr %19, i64 48
  store ptr %i.c, ptr %i.cs, align 8, !tbaa !1536
  %i.ct = call fastcc noundef zeroext i1 @_ZZL27CheckOperatorNewDeleteTypesRN5clang4SemaEPNS_12FunctionDeclE22AllocationOperatorKindNS_7CanQualINS_4TypeEEES7_jjENKUljNS_8QualTypeET_E_clIPKcEEbjS8_S9_(ptr noundef nonnull align 8 dereferenceable(56) %19, i32 noundef %.039, i64 %i.bn, ptr noundef nonnull @.str.56)
  br i1 %i.ct, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !1246
  %i.cv = load i8, ptr %i.g, align 1, !tbaa !1283, !range !106, !noundef !107
  %i.cw = trunc nuw i8 %i.cv to i1
  call void @_ZN5clang12FunctionDecl29setIsDestroyingOperatorDeleteEb(ptr noundef nonnull align 8 dereferenceable(168) %i.cu, i1 noundef zeroext %i.cw) #26
  %i.cx = load i8, ptr %i.e, align 1, !tbaa !1283, !range !106, !noundef !107
end_hunk_1
