Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaConcept?download=true
inline.NumInlined: 43754
inline.NumDeleted: 19584
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE25TransformTemplateArgumentERKNS_19TemplateArgumentLocERS4_b:bb.a

bb.i:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.thread.thread, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread

bb.j:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.thread
  switch i32 %i.s, label %bb.o [
    i32 4, label %bb.k
    i32 3, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %.val74 = load ptr, ptr %0, align 8, !tbaa !1113
  %i.bq = getelementptr inbounds nuw i8, ptr %.val74, i64 232
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !771, !nonnull !769, !align !770
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3296)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bs = lshr i64 %i.q, 32                       ; 2 uses
  %i.bt = trunc nuw i64 %i.bs to i32
  %i.bu = and i32 %i.bt, 2147483647               ; 3 uses
  %i.bv = icmp samesign ult i32 %i.bu, 65
  br i1 %i.bv, label %_ZN4llvm5APIntD2Ev.exit.i, label %_ZN4llvm5APIntD2Ev.exit1.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK5clang16TemplateArgument13getAsIntegralEv.exit

_ZN4llvm5APIntD2Ev.exit1.i:                       ; preds = %bb.k
  %i.bx = and i64 %i.bs, 2147483647
  %i.by = add nuw nsw i64 %i.bx, 63
  %i.bz = lshr i64 %i.by, 6
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !78, !noalias !3296
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %6, i32 noundef %i.bu, ptr %i.cb, i64 %i.bz) #25, !noalias !3296
  %i.cc = load i64, ptr %1, align 8, !noalias !3296
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !1203, !noalias !3296
  br label %_ZNK5clang16TemplateArgument13getAsIntegralEv.exit

_ZNK5clang16TemplateArgument13getAsIntegralEv.exit: ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %_ZN4llvm5APIntD2Ev.exit1.i
  %.sink4.i = phi i32 [ %i.bu, %_ZN4llvm5APIntD2Ev.exit.i ], [ %i.ce, %_ZN4llvm5APIntD2Ev.exit1.i ]
  %.sink3.in.i = phi ptr [ %i.bw, %_ZN4llvm5APIntD2Ev.exit.i ], [ %6, %_ZN4llvm5APIntD2Ev.exit1.i ]
  %.sink.in.in.i = phi i64 [ %i.q, %_ZN4llvm5APIntD2Ev.exit.i ], [ %i.cc, %_ZN4llvm5APIntD2Ev.exit1.i ]
  %.sink3.i = load i64, ptr %.sink3.in.i, align 8, !noalias !3296
  %.sink.in.i = lshr i64 %.sink.in.in.i, 63
  %.sink.i = trunc nuw nsw i64 %.sink.in.i to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %.sink4.i, ptr %i.cf, align 8, !tbaa !1203, !alias.scope !3296
  store i64 %.sink3.i, ptr %8, align 8, !alias.scope !3296
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i8 %.sink.i, ptr %i.cg, align 4, !tbaa !1669, !alias.scope !3296
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN5clang16TemplateArgumentC1ERKNS_10ASTContextERKN4llvm6APSIntENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(23904) %i.br, ptr noundef nonnull align 8 dereferenceable(13) %8, i64 %.sroa.0.0.i159164, i1 noundef zeroext false) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.4118.0..sroa_idx, align 8
  %i.ch = load i32, ptr %i.cf, align 8, !tbaa !1203
  %i.ci = icmp ugt i32 %i.ch, 64
  br i1 %i.ci, label %bb.l, label %_ZN4llvm5APIntD2Ev.exit

bb.l:                                             ; preds = %_ZNK5clang16TemplateArgument13getAsIntegralEv.exit
  %i.cj = load ptr, ptr %8, align 8, !tbaa !78    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZN4llvm5APIntD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.cj) #27
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK5clang16TemplateArgument13getAsIntegralEv.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0114)
  call void @_ZN5clang16TemplateArgument12initFromTypeENS_8QualTypeEbb(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0114, i64 %.sroa.0.0.i159164, i1 noundef zeroext true, i1 noundef zeroext false) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0114, i64 24, i1 false)
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.4115.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0114)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread

bb.o:                                             ; preds = %bb.j
  br i1 %i.t, label %.thread142, label %bb.p

.thread142:                                       ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.thread.thread, %bb.o
  %i.cl = phi ptr [ %i.bl, %bb.o ], [ null, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.thread.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0111)
  call void @_ZN5clang16TemplateArgument19initFromDeclarationEPNS_9ValueDeclENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0111, ptr noundef %i.cl, i64 %.sroa.0.0.i159164, i1 noundef zeroext false) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0111, i64 24, i1 false)
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.4112.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0111)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp eq i32 %i.s, 5
  tail call void @llvm.assume(i1 %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0108)
  %.val73 = load ptr, ptr %0, align 8, !tbaa !1113
  %i.cn = getelementptr inbounds nuw i8, ptr %.val73, i64 232
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !771, !nonnull !769, !align !770
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !78
  call void @_ZN5clang16TemplateArgumentC1ERKNS_10ASTContextENS_8QualTypeERKNS_7APValueEb(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0108, ptr noundef nonnull align 8 dereferenceable(23904) %i.co, i64 %.sroa.0.0.i159164, ptr noundef nonnull align 8 dereferenceable(56) %i.cq, i1 noundef zeroext false) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0108, i64 24, i1 false)
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.4109.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0108)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread

bb.q:                                             ; preds = %bb.a
  %i.cr = and i64 %i.a, 2147483647
  %.not.i77 = icmp ne i64 %i.cr, 1
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cs, align 8
  %i.ct = and i64 %.0.copyload.i.i.i.i.i.i.i, -4  ; 2 uses
  %i.cu = inttoptr i64 %i.ct to ptr
  %.not143 = icmp eq i64 %i.ct, 0
  %.not = select i1 %.not.i77, i1 true, i1 %.not143
  br i1 %.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !78
  %.val75 = load ptr, ptr %0, align 8, !tbaa !1113
  %i.cx = getelementptr i8, ptr %.val75, i64 232
  %.val75.val = load ptr, ptr %i.cx, align 8, !tbaa !771
  %i.cy = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %.val75.val, i64 %i.cw, i32 0) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.063 = phi ptr [ %i.cu, %bb.q ], [ %i.cy, %bb.r ]
  %i.cz = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.063) ; 3 uses
  %.not68 = icmp eq ptr %i.cz, null
  br i1 %.not68, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0105)
  %.sroa.0.0.copyload.i = load i64, ptr %i.cz, align 8, !tbaa !78
  call void @_ZN5clang16TemplateArgument12initFromTypeENS_8QualTypeEbb(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0105, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext false, i1 noundef zeroext false) #25
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = or i64 %i.da, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0105, i64 24, i1 false)
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.db, ptr %.sroa.4106.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0105)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.dc = tail call { i64, ptr } @_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #25 ; 2 uses
  %i.dd = extractvalue { i64, ptr } %i.dc, 0
  store i64 %i.dd, ptr %9, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.df = extractvalue { i64, ptr } %i.dc, 1
  store ptr %i.df, ptr %i.de, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.dg = load i64, ptr %1, align 8
  %i.dh = and i64 %i.dg, 2147483646
  %switch.i = icmp eq i64 %i.dh, 6
  br i1 %switch.i, label %bb.v, label %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit

bb.v:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.di, align 8
  %i.dj = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -4
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.dl, align 8, !tbaa !810
  br label %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit

_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit: ; preds = %bb.u, %bb.v
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i.i, %bb.v ], [ 0, %bb.u ]
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN5clang12TemplateNameC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.dn) #25
  %i.do = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dp = load i64, ptr %1, align 8
  %i.dq = and i64 %i.dp, 2147483646
  %switch.i79 = icmp eq i64 %i.dq, 6
  br i1 %switch.i79, label %bb.w, label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit

bb.w:                                             ; preds = %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i81 = load i64, ptr %i.dr, align 8
  %i.ds = and i64 %.0.copyload.i.i.i.i.i.i.i.i81, -4
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %.sroa.0.0.copyload.i.i82 = load i32, ptr %i.du, align 4, !tbaa !810
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit

_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit: ; preds = %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit, %bb.w
  %.sroa.0.0.i80 = phi i32 [ %.sroa.0.0.copyload.i.i82, %bb.w ], [ 0, %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !3297
  %i.dv = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE21TransformTemplateNameERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_NS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 %.sroa.0.0.i, i64 %i.do, i32 %.sroa.0.0.i80, i64 0, ptr noundef null, i1 noundef zeroext false), !inline_history !3293
  store i64 %i.dv, ptr %4, align 8, !noalias !3297
  %i.dw = call noundef zeroext i1 @_ZNK5clang12TemplateName6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25, !noalias !3297, !inline_history !3293
  br i1 %i.dw, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit.thread: ; preds = %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !3297
  br label %bb.z

_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit: ; preds = %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit
  %.sroa.0.0.copyload.i83 = load i64, ptr %4, align 8, !noalias !3297
  store i32 6, ptr %10, align 8
  %i.dx = inttoptr i64 %.sroa.0.0.copyload.i83 to ptr
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.dy, align 4, !tbaa !810
  %.pre = load i64, ptr %10, align 8
  %i.dz = and i64 %.pre, 2147483647
  %i.ea = icmp eq i64 %i.dz, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.dx, ptr %i.eb, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !3297
  br i1 %i.ea, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ec = load ptr, ptr %0, align 8, !tbaa !1113, !nonnull !769, !align !770
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 232
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !771, !nonnull !769, !align !770
  %i.ef = load i64, ptr %1, align 8
  %i.eg = and i64 %i.ef, 2147483646
  %switch.i84 = icmp eq i64 %i.eg, 6
  br i1 %switch.i84, label %bb.y, label %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88

_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88: ; preds = %bb.x
  %.sroa.2.0.copyload = load ptr, ptr %i.de, align 8, !tbaa !73
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit93

bb.y:                                             ; preds = %bb.x
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i86 = load i64, ptr %i.eh, align 8
  %i.ei = and i64 %.0.copyload.i.i.i.i.i.i.i.i86, -4
  %i.ej = inttoptr i64 %i.ei to ptr               ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.0.0.copyload.i.i87 = load i32, ptr %i.ek, align 8, !tbaa !810
  %.sroa.2.0.copyload132 = load ptr, ptr %i.de, align 8, !tbaa !73
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %.sroa.0.0.copyload.i.i92 = load i32, ptr %i.el, align 4, !tbaa !810
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit93

_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit93: ; preds = %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88, %bb.y
  %.sroa.2.0.copyload137 = phi ptr [ %.sroa.2.0.copyload132, %bb.y ], [ %.sroa.2.0.copyload, %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88 ]
  %.sroa.0.0.i85133 = phi i32 [ %.sroa.0.0.copyload.i.i87, %bb.y ], [ 0, %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88 ]
  %.sroa.0.0.i90 = phi i32 [ %.sroa.0.0.copyload.i.i92, %bb.y ], [ 0, %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88 ]
  %.sroa.05.0.copyload135 = load i64, ptr %9, align 8, !tbaa !793
  call void @_ZN5clang19TemplateArgumentLocC1ERNS_10ASTContextERKNS_16TemplateArgumentENS_14SourceLocationENS_22NestedNameSpecifierLocES6_S6_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 %.sroa.0.0.i85133, i64 %.sroa.05.0.copyload135, ptr %.sroa.2.0.copyload137, i32 %.sroa.0.0.i90, i32 0) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.z

bb.z:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit.thread, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit, %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit93
  %i.em = phi i1 [ true, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit.thread ], [ true, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit ], [ false, %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread

bb.aa:                                            ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !1113  ; 2 uses
  %i.en = select i1 %3, i32 0, i32 4
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextENS0_24ReuseLambdaContextDecl_tENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef %i.en, i32 noundef 0, i32 noundef 1) #25
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i94 = load i64, ptr %i.eo, align 8
  %i.ep = and i64 %.0.copyload.i.i.i.i.i.i.i94, -4 ; 2 uses
  %.not72 = icmp eq i64 %i.ep, 0
  br i1 %.not72, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !78
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.062.in = phi i64 [ %i.ep, %bb.aa ], [ %i.er, %bb.ab ]
  %.062 = inttoptr i64 %.062.in to ptr
  %i.es = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.062)
  %i.et = load ptr, ptr %0, align 8, !tbaa !1113, !nonnull !769, !align !770
  %i.eu = tail call i64 @_ZN5clang4Sema23ActOnConstantExpressionENS_12ActionResultIPNS_4ExprELb1EEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.et, i64 %i.es) #25 ; 3 uses
  %i.ev = icmp eq i64 %i.eu, 1                    ; 2 uses
  br i1 %i.ev, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ew = and i64 %i.eu, -2
  %i.ex = or i64 %i.eu, 1
  store i64 8, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ew, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.ex, ptr %.sroa.697.0..sroa_idx, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.ac, %bb.ad
  tail call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #25
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread

_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit.thread: ; preds = %bb.b, %_ZN12_GLOBAL__N_117AdjustConstraints18AlreadyTransformedEN5clang8QualTypeE.exit.thread9.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit, %bb.i, %bb.n, %bb.p, %.thread142, %_ZN4llvm5APIntD2Ev.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.a, %bb.t, %bb.s, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.z
  %.5 = phi i1 [ false, %bb.t ], [ %i.ev, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ], [ %i.em, %bb.z ], [ true, %bb.a ], [ true, %bb.s ], [ true, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit ], [ false, %bb.i ], [ false, %bb.n ], [ false, %bb.p ], [ false, %.thread142 ], [ false, %_ZN4llvm5APIntD2Ev.exit ], [ true, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ true, %_ZN12_GLOBAL__N_117AdjustConstraints18AlreadyTransformedEN5clang8QualTypeE.exit.thread9.i ], [ true, %bb.b ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_117AdjustConstraints20RebuildPackExpansionEN5clang19TemplateArgumentLocENS1_14SourceLocationENS1_16OptionalUnsignedIjEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.0.val, i8 %.36.val, ptr nofree noundef readonly byval(%"class.clang::TemplateArgumentLoc") align 8 captures(none) %1, i32 %2, i32 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::TemplateName", align 8 ; 4 uses
  %5 = alloca %"class.clang::TemplateArgument", align 8 ; 6 uses
  %6 = alloca %"class.clang::TemplateArgument", align 8 ; 4 uses
  %7 = alloca %"class.clang::TemplateArgumentLoc", align 8 ; 11 uses
  %i.a = trunc nuw i8 %.36.val to i1
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3300)
  %i.b = load i64, ptr %7, align 8, !noalias !3300 ; 3 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 2147483647
  switch i32 %i.d, label %.thread.i [
    i32 8, label %bb.c
    i32 6, label %bb.f
    i32 1, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !3300
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -4
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call i64 @_ZN5clang4Sema18CheckPackExpansionEPNS_4ExprENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.0.val, ptr noundef %i.g, i32 %2, i32 %3) #25, !noalias !3300 ; 3 uses
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %0, align 8, !alias.scope !3300
  %i.k = and i64 %i.j, -8589934592
  store i64 %i.k, ptr %0, align 8, !alias.scope !3300
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !1182, !alias.scope !3300
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.m, align 8, !alias.scope !3300
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE20RebuildPackExpansionENS_19TemplateArgumentLocENS_14SourceLocationENS_16OptionalUnsignedIjEE.exit

bb.e:                                             ; preds = %bb.c
  %i.n = and i64 %i.h, -2
  store i64 8, ptr %0, align 8, !alias.scope !3300
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3300
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = or i64 %i.h, 1
  store i64 %i.p, ptr %i.o, align 8, !alias.scope !3300
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE20RebuildPackExpansionENS_19TemplateArgumentLocENS_14SourceLocationENS_16OptionalUnsignedIjEE.exit

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !771, !noalias !3300, !nonnull !769, !align !770
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !3300
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !3300
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !3300
  call void @_ZN5clang12TemplateNameC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.t) #25, !noalias !3300
  %i.u = load i64, ptr %4, align 8, !noalias !3300
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !3300
  store i32 7, ptr %5, align 8, !noalias !3300
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !78, !noalias !3300
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %3, ptr %i.x, align 4, !tbaa !810, !noalias !3300
  %i.y = and i64 %i.b, 2147483646
  %switch.i.i = icmp eq i64 %i.y, 6
  br i1 %switch.i.i, label %bb.g, label %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !noalias !3300
  %i.aa = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -4
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !810, !noalias !3300
  br label %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit.i

_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i, %bb.g ], [ 0, %bb.f ]
  %i.ad = call { i64, ptr } @_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #25, !noalias !3300 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1
  %i.ag = load i64, ptr %7, align 8, !noalias !3300
  %i.ah = and i64 %i.ag, 2147483646
  %switch.i22.i = icmp eq i64 %i.ah, 6
  br i1 %switch.i22.i, label %bb.h, label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit.i

bb.h:                                             ; preds = %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 24
end_hunk_0
