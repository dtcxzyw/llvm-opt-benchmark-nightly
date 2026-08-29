Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplateInstantiate?download=true
inline.NumInlined: 46814
inline.NumDeleted: 15846
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5clang4Sema28getTemplateInstantiationArgsEPKNS_9NamedDeclEPKNS_11DeclContextEbSt8optionalIN4llvm8ArrayRefINS_16TemplateArgumentEEEEbPKNS_12FunctionDeclEbbb:bb.a
  %.013.in11.i.i = phi i64 [ %.013.in.i.i, %.lr.ph.i.i ], [ %.013.in9.i.i, %bb.dn ]
  %.013.i.i = inttoptr i64 %.013.in11.i.i to ptr  ; 2 uses
  %i.ov = call noundef ptr @_ZNK5clang24RedeclarableTemplateDecl12getCommonPtrEv(ptr noundef nonnull align 8 dereferenceable(88) %.013.i.i) #26, !noalias !805
  %.0.copyload.i.i.i.i.i15.i.i = load i64, ptr %i.ov, align 8, !noalias !805
  %.013.in.i.i = and i64 %.0.copyload.i.i.i.i.i15.i.i, -8 ; 2 uses
  %.not14.i.i = icmp eq i64 %.013.in.i.i, 0
  br i1 %.not14.i.i, label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers33getEnclosingTypeAliasTemplateDeclERN5clang4SemaE.exit.i, label %.lr.ph.i.i, !llvm.loop !809

_ZN12_GLOBAL__N_123TemplateInstArgsHelpers33getEnclosingTypeAliasTemplateDeclERN5clang4SemaE.exit.i: ; preds = %.lr.ph.i.i, %bb.dn
  %.sroa.7.02.i = phi ptr [ %i.oo, %bb.dn ], [ %.013.i.i, %.lr.ph.i.i ]
  br i1 %8, label %bb.do, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread.i

bb.do:                                            ; preds = %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers33getEnclosingTypeAliasTemplateDeclERN5clang4SemaE.exit.i
  %i.ow = call noundef ptr @_ZNK5clang13CXXRecordDecl21getLambdaCallOperatorEv(ptr noundef nonnull align 8 dereferenceable(144) %.1285) #26
  %i.ox = getelementptr i8, ptr %.sroa.7.02.i, i64 48
  %.val67.i = load ptr, ptr %i.ox, align 8, !tbaa !810
  %i.oy = getelementptr i8, ptr %.val67.i, i64 80
  %.val67.val.i = load i64, ptr %i.oy, align 8
  %i.oz = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123TemplateInstArgsHelpers31isLambdaEnclosedByTypeAliasDeclEPKN5clang12FunctionDeclEPKNS1_21TypeAliasTemplateDeclE(ptr noundef %i.ow, i64 %.val67.val.i)
  br i1 %i.oz, label %bb.dp, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread.i

bb.dp:                                            ; preds = %bb.do
  call void @_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb(ptr noundef nonnull align 8 dereferenceable(118) %0, ptr noundef nonnull %i.oo, ptr %i.or, i64 %i.ou, i1 noundef zeroext false)
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i192 = load i64, ptr %i.pa, align 8 ; 3 uses
  %i.pb = and i64 %.0.copyload.i.i.i.i.i.i.i.i192, 4
  %i.pc = icmp eq i64 %i.pb, 0
  br i1 %i.pc, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.pd = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i192 to ptr
  br label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit.thread333.sink.split

bb.dr:                                            ; preds = %bb.dp
  %i.pe = and i64 %.0.copyload.i.i.i.i.i.i.i.i192, -5
  %i.pf = inttoptr i64 %i.pe to ptr
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !39
  br label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit.thread333.sink.split

_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread.i: ; preds = %.thread.i.i, %bb.dl, %bb.do, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers33getEnclosingTypeAliasTemplateDeclERN5clang4SemaE.exit.i, %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i, %.critedge.i188
  %i.ph = getelementptr i8, ptr %.1285, i64 16
  %.val.i190 = load i64, ptr %i.ph, align 8       ; 3 uses
  %i.pi = and i64 %.val.i190, 4
  %i.pj = icmp eq i64 %i.pi, 0
  br i1 %i.pj, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread.i
  %i.pk = inttoptr i64 %.val.i190 to ptr
  br label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit.thread333.sink.split

bb.dt:                                            ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread.i
  %i.pl = and i64 %.val.i190, -5
  %i.pm = inttoptr i64 %i.pl to ptr
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !39
  br label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit.thread333.sink.split

bb.du:                                            ; preds = %bb.cu
  switch i32 %i.ez, label %bb.ew [
    i32 86, label %bb.dv
    i32 72, label %bb.ea
    i32 73, label %bb.et
  ]

bb.dv:                                            ; preds = %bb.du
  %i.po = getelementptr inbounds nuw i8, ptr %.1285, i64 36
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !811
  %i.pq = zext i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw i8, ptr %.1285, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.ps = load ptr, ptr %.1285, align 8, !tbaa !32
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  %i.pu = load ptr, ptr %i.pt, align 8
  %i.pv = call noundef ptr %i.pu(ptr noundef nonnull align 8 dereferenceable(33) %.1285) #26, !inline_history !813
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = and i64 %i.pw, -5
  store i64 %i.px, ptr %14, align 8
  store ptr %i.pr, ptr %i.bk, align 8, !tbaa !28
  store i64 %i.pq, ptr %.sroa.2.0..sroa_idx.i.i198, align 8, !tbaa !30
  %i.py = load i32, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.pz = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i.i.i199 = icmp ult i32 %i.py, %i.pz
  br i1 %.not.i.i.i199, label %bb.dx, label %bb.dw, !prof !36

bb.dw:                                            ; preds = %bb.dv
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(118) %0, ptr noundef nonnull align 8 dereferenceable(24) %14)
  br label %_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit.i200

bb.dx:                                            ; preds = %bb.dv
  %i.qa = zext i32 %i.py to i64
  %i.qb = load ptr, ptr %0, align 8, !tbaa !8
  %i.qc = getelementptr inbounds nuw [24 x i8], ptr %i.qb, i64 %i.qa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.qc, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false)
  %i.qd = load i32, ptr %i.b, align 8, !tbaa !11
  %i.qe = add i32 %i.qd, 1
  store i32 %i.qe, ptr %i.b, align 8, !tbaa !11
  br label %_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit.i200

_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit.i200: ; preds = %bb.dx, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.qf = getelementptr i8, ptr %.1285, i64 16
  %.val.i201 = load i64, ptr %i.qf, align 8       ; 3 uses
  %i.qg = and i64 %.val.i201, 4
  %i.qh = icmp eq i64 %i.qg, 0
  br i1 %i.qh, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit.i200
  %i.qi = inttoptr i64 %.val.i201 to ptr
  br label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers39HandleImplicitConceptSpecializationDeclEPKN5clang33ImplicitConceptSpecializationDeclERNS1_30MultiLevelTemplateArgumentListE.exit

bb.dz:                                            ; preds = %_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit.i200
  %i.qj = and i64 %.val.i201, -5
  %i.qk = inttoptr i64 %i.qj to ptr
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !39
  br label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers39HandleImplicitConceptSpecializationDeclEPKN5clang33ImplicitConceptSpecializationDeclERNS1_30MultiLevelTemplateArgumentListE.exit

_ZN12_GLOBAL__N_123TemplateInstArgsHelpers39HandleImplicitConceptSpecializationDeclEPKN5clang33ImplicitConceptSpecializationDeclERNS1_30MultiLevelTemplateArgumentListE.exit: ; preds = %bb.dy, %bb.dz
  %.0.i.i.i.i203 = phi ptr [ %i.qi, %bb.dy ], [ %i.ql, %bb.dz ]
  %i.qm = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %.0.i.i.i.i203) #26
  br label %.backedge

bb.ea:                                            ; preds = %bb.du
  %i.qn = getelementptr inbounds nuw i8, ptr %.1285, i64 16 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i205 = load i64, ptr %i.qn, align 8 ; 3 uses
  %i.qo = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i205, 4
  %i.qp = icmp eq i64 %i.qo, 0
  br i1 %i.qp, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.qq = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i205 to ptr
  br label %_ZNK5clang4Decl14getDeclContextEv.exit.i

bb.ec:                                            ; preds = %bb.ea
  %i.qr = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i205, -5
  %i.qs = inttoptr i64 %i.qr to ptr
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !39
  br label %_ZNK5clang4Decl14getDeclContextEv.exit.i

_ZNK5clang4Decl14getDeclContextEv.exit.i:         ; preds = %bb.ec, %bb.eb
  %.0.i.i.i206 = phi ptr [ %i.qq, %bb.eb ], [ %i.qt, %bb.ec ]
  %i.qu = getelementptr inbounds nuw i8, ptr %.0.i.i.i206, i64 8
  %i.qv = load i16, ptr %i.qu, align 8
  %i.qw = and i16 %i.qv, 127
  %i.qx = add nsw i16 %i.qw, -61
  %i.qy = icmp ult i16 %i.qx, 2
  br i1 %i.qy, label %.critedge.i213, label %bb.ed

bb.ed:                                            ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit.i
  %i.qz = load ptr, ptr %i.bi, align 8, !tbaa !82, !nonnull !27, !align !763
  %i.ra = getelementptr inbounds nuw i8, ptr %.1285, i64 56
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !764
  %i.rc = call { ptr, i64 } @_ZN5clang21TemplateParameterList23getInjectedTemplateArgsERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %i.rb, ptr noundef nonnull align 8 dereferenceable(23904) %i.qz) #26 ; 2 uses
  %i.rd = extractvalue { ptr, i64 } %i.rc, 0
  %i.re = extractvalue { ptr, i64 } %i.rc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.rf = load ptr, ptr %.1285, align 8, !tbaa !32
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 32
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = call noundef ptr %i.rh(ptr noundef nonnull align 8 dereferenceable(33) %.1285) #26, !inline_history !814
  %i.rj = ptrtoint ptr %i.ri to i64
  %i.rk = and i64 %i.rj, -5
  store i64 %i.rk, ptr %12, align 8
  store ptr %i.rd, ptr %i.bl, align 8, !tbaa !28
  store i64 %i.re, ptr %.sroa.2.0..sroa_idx.i.i207, align 8, !tbaa !30
  %i.rl = load i32, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.rm = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i.i.i208 = icmp ult i32 %i.rl, %i.rm
  br i1 %.not.i.i.i208, label %bb.ef, label %bb.ee, !prof !36

bb.ee:                                            ; preds = %bb.ed
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(118) %0, ptr noundef nonnull align 8 dereferenceable(24) %12)
  br label %_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit.i209

bb.ef:                                            ; preds = %bb.ed
  %i.rn = zext i32 %i.rl to i64
  %i.ro = load ptr, ptr %0, align 8, !tbaa !8
  %i.rp = getelementptr inbounds nuw [24 x i8], ptr %i.ro, i64 %i.rn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.rp, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false)
  %i.rq = load i32, ptr %i.b, align 8, !tbaa !11
  %i.rr = add i32 %i.rq, 1
  store i32 %i.rr, ptr %i.b, align 8, !tbaa !11
  br label %_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit.i209

_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit.i209: ; preds = %bb.ef, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.rs = getelementptr inbounds nuw i8, ptr %.1285, i64 48
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !810
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 56
  %.0.copyload.i.i.i.i.i.i.i.i210 = load i64, ptr %i.ru, align 8 ; 2 uses
  %i.rv = and i64 %.0.copyload.i.i.i.i.i.i.i.i210, 4
  %.not.i.i211 = icmp eq i64 %i.rv, 0
  br i1 %.not.i.i211, label %.critedge.i213, label %_ZNK5clang14DeclaratorDecl12getQualifierEv.exit.i

_ZNK5clang14DeclaratorDecl12getQualifierEv.exit.i: ; preds = %_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit.i209
  %i.rw = and i64 %.0.copyload.i.i.i.i.i.i.i.i210, -5
  %i.rx = inttoptr i64 %i.rw to ptr
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.rx, align 8, !tbaa !30 ; 3 uses
  %i.ry = icmp ugt i64 %.sroa.0.0.copyload.i.i.i, 7
  %i.rz = and i64 %.sroa.0.0.copyload.i.i.i, 6
  %i.sa = icmp eq i64 %i.rz, 0
  %or.cond.i212 = and i1 %i.ry, %i.sa
  br i1 %or.cond.i212, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread.i, label %.critedge.i213

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread.i: ; preds = %_ZNK5clang14DeclaratorDecl12getQualifierEv.exit.i
  %23 = and i64 %.sroa.0.0.copyload.i.i.i, -8
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eq, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread.i
  %.081.in.i.a = phi i64 [ %23, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread.i ], [ %24, %bb.eq ]
  %.081.i = inttoptr i64 %.081.in.i.a to ptr      ; 7 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.081.i, i64 17
  %i.sc = load i16, ptr %i.sb, align 1
  %i.sd = and i16 %i.sc, 2
  %.not73.i216 = icmp eq i16 %i.sd, 0
  br i1 %.not73.i216, label %.critedge.i213, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit46.thread.i

_ZNK5clang19NestedNameSpecifier7getKindEv.exit46.thread.i: ; preds = %bb.eg
  %i.se = call i64 @_ZNK5clang4Type9getPrefixEv(ptr noundef nonnull align 16 dereferenceable(24) %.081.i) #26 ; 2 uses
  %i.sf = and i64 %i.se, 6
  %i.sg = icmp ne i64 %i.sf, 0
  %24 = and i64 %i.se, -8                         ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.081.i, i64 16
  %i.si = load i8, ptr %i.sh, align 16
  %.not75.i = icmp eq i8 %i.si, 50
  br i1 %.not75.i, label %bb.eh, label %bb.eq

bb.eh:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit46.thread.i
  %i.sj = getelementptr inbounds nuw i8, ptr %.081.i, i64 48 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.081.i, i64 20
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !81
  %i.sm = zext i32 %i.sl to i64                   ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.081.i, i64 8
  %.sroa.0.0.copyload.i.i47.i = load i64, ptr %i.sn, align 8, !tbaa !81
  %i.so = and i64 %.sroa.0.0.copyload.i.i47.i, -16
  %i.sp = inttoptr i64 %i.so to ptr
  %i.sq = load ptr, ptr %i.sp, align 16, !tbaa !815 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.ss = load i8, ptr %i.sr, align 16
  %i.st = icmp eq i8 %i.ss, 48
  br i1 %i.st, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i, label %bb.el

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i:     ; preds = %bb.eh
  %i.su = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.su, align 8, !tbaa !81
  %i.sv = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.sw = inttoptr i64 %i.sv to ptr
  %i.sx = load ptr, ptr %i.sw, align 16, !tbaa !815, !nonnull !27, !noundef !27 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.sz = load i8, ptr %i.sy, align 16            ; 2 uses
  %i.ta = add nsw i8 %i.sz, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ta, 3
  %i.tb = and i8 %i.sz, 62
  %spec.select.i.i.i.i = icmp eq i8 %i.tb, 48
  call void @llvm.assume(i1 %switch.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.assume(i1 %spec.select.i.i.i.i)
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sx, i64 24
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !817 ; 2 uses
  %i.te = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.td) ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.te, null
  %spec.select.i.i49.i = select i1 %.not.not.i.i.i, ptr %i.td, ptr %i.te ; 4 uses
  %i.tf = call noundef ptr @_ZNK5clang13CXXRecordDecl25getDescribedClassTemplateEv(ptr noundef nonnull align 8 dereferenceable(144) %spec.select.i.i49.i) #26 ; 2 uses
  %.not39.i218 = icmp eq ptr %i.tf, null
  br i1 %.not39.i218, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.tg = load ptr, ptr %i.bi, align 8, !tbaa !82, !nonnull !27, !align !763
  %i.th = getelementptr inbounds nuw i8, ptr %i.tf, i64 56
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !764
  %i.tj = call { ptr, i64 } @_ZN5clang21TemplateParameterList23getInjectedTemplateArgsERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %i.ti, ptr noundef nonnull align 8 dereferenceable(23904) %i.tg) #26 ; 2 uses
  %i.tk = extractvalue { ptr, i64 } %i.tj, 0
  %i.tl = extractvalue { ptr, i64 } %i.tj, 1
  br label %bb.el

bb.ej:                                            ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.tm = getelementptr inbounds nuw i8, ptr %spec.select.i.i49.i, i64 28
  %i.tn = load i32, ptr %i.tm, align 4
  %i.to = and i32 %i.tn, 127
  %i.tp = add nsw i32 %i.to, -63
  %i.tq = icmp ult i32 %i.tp, -2
  br i1 %i.tq, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.tr = getelementptr inbounds nuw i8, ptr %spec.select.i.i49.i, i64 152
  %.sroa.0.0.copyload.i.i.i.i.i.i219 = load i64, ptr %i.tr, align 8 ; 2 uses
  %i.ts = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i219, 4
  %.not.i.i.i.i.i.i220 = icmp eq i64 %i.ts, 0
  %i.tt = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i219, -5 ; 2 uses
  %.not.not7.i.i221 = icmp eq i64 %i.tt, 0
  %.not.not.i.i222 = or i1 %.not.i.i.i.i.i.i220, %.not.not7.i.i221
  %i.tu = getelementptr inbounds nuw i8, ptr %spec.select.i.i49.i, i64 168
  %i.tv = inttoptr i64 %i.tt to ptr
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %.1.in.i.i223 = select i1 %.not.not.i.i222, ptr %i.tu, ptr %i.tw
  %.1.i51.i = load ptr, ptr %.1.in.i.i223, align 8, !tbaa !47 ; 2 uses
  %i.tx = load i32, ptr %.1.i51.i, align 8, !tbaa !48
  %i.ty = zext i32 %i.tx to i64
  %i.tz = getelementptr inbounds nuw i8, ptr %.1.i51.i, i64 8
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.eh
  %.sroa.011.2.i = phi ptr [ %i.sj, %bb.eh ], [ %i.tk, %bb.ei ], [ %i.tz, %bb.ek ], [ %i.sj, %bb.ej ]
  %.sroa.6.2.i = phi i64 [ %i.sm, %bb.eh ], [ %i.tl, %bb.ei ], [ %i.ty, %bb.ek ], [ %i.sm, %bb.ej ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ua = getelementptr inbounds nuw i8, ptr %.081.i, i64 32
  %.sroa.0.0.copyload.i52.i = load i64, ptr %i.ua, align 16
  store i64 %.sroa.0.0.copyload.i52.i, ptr %13, align 8
  %i.ub = call noundef ptr @_ZNK5clang12TemplateName17getAsTemplateDeclEb(ptr noundef nonnull align 8 dereferenceable(8) %13, i1 noundef zeroext false) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %.not.i53.i = icmp eq ptr %i.ub, null
  br i1 %.not.i53.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !32
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 32
  %i.ue = load ptr, ptr %i.ud, align 8
  %i.uf = call noundef ptr %i.ue(ptr noundef nonnull align 8 dereferenceable(33) %i.ub) #26, !inline_history !814
  %i.ug = ptrtoint ptr %i.uf to i64
  %i.uh = and i64 %i.ug, -5
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.ui = phi i64 [ %i.uh, %bb.em ], [ 0, %bb.el ]
  store i64 %i.ui, ptr %11, align 8
  store ptr %.sroa.011.2.i, ptr %i.bm, align 8, !tbaa !28
  store i64 %.sroa.6.2.i, ptr %.sroa.2.0..sroa_idx.i54.i, align 8, !tbaa !30
  %i.uj = load i32, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.uk = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i.i55.i = icmp ult i32 %i.uj, %i.uk
  br i1 %.not.i.i55.i, label %bb.ep, label %bb.eo, !prof !36

bb.eo:                                            ; preds = %bb.en
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(118) %0, ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit56.i

bb.ep:                                            ; preds = %bb.en
  %i.ul = zext i32 %i.uj to i64
  %i.um = load ptr, ptr %0, align 8, !tbaa !8
  %i.un = getelementptr inbounds nuw [24 x i8], ptr %i.um, i64 %i.ul
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.un, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %i.uo = load i32, ptr %i.b, align 8, !tbaa !11
  %i.up = add i32 %i.uo, 1
  store i32 %i.up, ptr %i.b, align 8, !tbaa !11
  br label %_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit56.i

_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit56.i: ; preds = %bb.ep, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.eq

bb.eq:                                            ; preds = %_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit56.i, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit46.thread.i
  %.not88.i = icmp eq i64 %24, 0
  %.not.i217 = or i1 %.not88.i, %i.sg
  br i1 %.not.i217, label %.critedge.i213, label %bb.eg, !llvm.loop !822

.critedge.i213:                                   ; preds = %bb.eq, %bb.eg, %_ZNK5clang14DeclaratorDecl12getQualifierEv.exit.i, %_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit.i209, %_ZNK5clang4Decl14getDeclContextEv.exit.i
  %.0.copyload.i.i.i.i.i.i.i.i57.i = load i64, ptr %i.qn, align 8 ; 3 uses
  %i.uq = and i64 %.0.copyload.i.i.i.i.i.i.i.i57.i, 4
  %i.ur = icmp eq i64 %i.uq, 0
  br i1 %i.ur, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.critedge.i213
  %i.us = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i57.i to ptr
  br label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers26HandleFunctionTemplateDeclERN5clang4SemaEPKNS1_20FunctionTemplateDeclERNS1_30MultiLevelTemplateArgumentListE.exit

bb.es:                                            ; preds = %.critedge.i213
  %i.ut = and i64 %.0.copyload.i.i.i.i.i.i.i.i57.i, -5
  %i.uu = inttoptr i64 %i.ut to ptr
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !42
  br label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers26HandleFunctionTemplateDeclERN5clang4SemaEPKNS1_20FunctionTemplateDeclERNS1_30MultiLevelTemplateArgumentListE.exit

_ZN12_GLOBAL__N_123TemplateInstArgsHelpers26HandleFunctionTemplateDeclERN5clang4SemaEPKNS1_20FunctionTemplateDeclERNS1_30MultiLevelTemplateArgumentListE.exit: ; preds = %bb.er, %bb.es
  %.0.i.i58.i = phi ptr [ %i.us, %bb.er ], [ %i.uw, %bb.es ]
  %i.ux = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %.0.i.i58.i) #26
  br label %.backedge

bb.et:                                            ; preds = %bb.du
  %i.uy = getelementptr inbounds nuw i8, ptr %.1285, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i225 = load i64, ptr %i.uy, align 8 ; 3 uses
  %i.uz = and i64 %.0.copyload.i.i.i.i.i.i.i.i225, 4
  %i.va = icmp eq i64 %i.uz, 0
  br i1 %i.va, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.vb = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i225 to ptr
  br label %_ZNK5clang4Decl21getLexicalDeclContextEv.exit

bb.ev:                                            ; preds = %bb.et
  %i.vc = and i64 %.0.copyload.i.i.i.i.i.i.i.i225, -5
  %i.vd = inttoptr i64 %i.vc to ptr
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !42
  br label %_ZNK5clang4Decl21getLexicalDeclContextEv.exit

_ZNK5clang4Decl21getLexicalDeclContextEv.exit:    ; preds = %bb.eu, %bb.ev
  %.0.i.i = phi ptr [ %i.vb, %bb.eu ], [ %i.vf, %bb.ev ]
  %i.vg = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %.0.i.i) #26
  br label %.backedge

bb.ew:                                            ; preds = %bb.du
  %i.vh = call noundef zeroext i1 @_ZN5clang11DeclContext7classofEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(33) %.1285) #26
  %i.vi = getelementptr i8, ptr %.1285, i64 16
  %.val146 = load i64, ptr %i.vi, align 8         ; 5 uses
  %i.vj = and i64 %.val146, 4
  %i.vk = icmp eq i64 %i.vj, 0                    ; 2 uses
  br i1 %i.vh, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  br i1 %i.vk, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.vl = inttoptr i64 %.val146 to ptr
  br label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers8Response34DontClearRelativeToPrimaryNextDeclEPKN5clang4DeclE.exit

bb.ez:                                            ; preds = %bb.ex
  %i.vm = and i64 %.val146, -5
  %i.vn = inttoptr i64 %i.vm to ptr
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !39
  br label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers8Response34DontClearRelativeToPrimaryNextDeclEPKN5clang4DeclE.exit

_ZN12_GLOBAL__N_123TemplateInstArgsHelpers8Response34DontClearRelativeToPrimaryNextDeclEPKN5clang4DeclE.exit: ; preds = %bb.ey, %bb.ez
  %.0.i.i.i.i229 = phi ptr [ %i.vl, %bb.ey ], [ %i.vo, %bb.ez ]
  %i.vp = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %.0.i.i.i.i229) #26
  %i.vq = load i32, ptr %i.bn, align 4
  %i.vr = and i32 %i.vq, 127
  %.not294 = icmp eq i32 %i.vr, 69
  br i1 %.not294, label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit, label %.backedge

bb.fa:                                            ; preds = %bb.ew
  br i1 %i.vk, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.vs = inttoptr i64 %.val146 to ptr
  br label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers24HandleGenericDeclContextEPKN5clang4DeclE.exit

bb.fc:                                            ; preds = %bb.fa
  %i.vt = and i64 %.val146, -5
  %i.vu = inttoptr i64 %i.vt to ptr
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !39
  br label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers24HandleGenericDeclContextEPKN5clang4DeclE.exit

_ZN12_GLOBAL__N_123TemplateInstArgsHelpers24HandleGenericDeclContextEPKN5clang4DeclE.exit: ; preds = %bb.fb, %bb.fc
  %.0.i.i.i.i233 = phi ptr [ %i.vs, %bb.fb ], [ %i.vv, %bb.fc ]
  %i.vw = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %.0.i.i.i.i233) #26
  br label %.backedge

_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit: ; preds = %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers8Response34DontClearRelativeToPrimaryNextDeclEPKN5clang4DeclE.exit
  %i.vx = getelementptr i8, ptr %.1285, i64 64
  %.val = load i32, ptr %i.vx, align 8
  %i.vy = call fastcc { ptr, i64 } @_ZN12_GLOBAL__N_123TemplateInstArgsHelpers37HandleDefaultTempArgIntoTempTempParamEPKN5clang24TemplateTemplateParmDeclERNS1_30MultiLevelTemplateArgumentListE(i32 %.val, ptr noundef nonnull align 8 dereferenceable(118) %0) ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i64 } %i.vy, 0
  %.fca.1.extract3 = extractvalue { ptr, i64 } %i.vy, 1 ; 2 uses
  %.sroa.25.0.extract.trunc = trunc nuw i64 %.fca.1.extract3 to i16
  %i.vz = trunc i64 %.fca.1.extract3 to i1
  br i1 %i.vz, label %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit, label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit.thread333

_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit.thread333.sink.split: ; preds = %bb.di, %bb.dj, %bb.dq, %bb.dr, %bb.ds, %bb.dt, %bb.cs, %bb.ct, %bb.cp, %bb.cq, %bb.ck, %bb.cl, %bb.br, %bb.bs, %bb.bi, %bb.bj, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.ah, %bb.ai, %.thread77.i, %_ZNK5clang29VarTemplateSpecializationDecl34isClassScopeExplicitSpecializationEv.exit.i
  %.0.i.i117.i.sink = phi ptr [ %i.ls, %bb.cl ], [ %i.mj, %bb.ct ], [ %i.if, %bb.bj ], [ %i.hs, %bb.bc ], [ %i.bx, %_ZNK5clang29VarTemplateSpecializationDecl34isClassScopeExplicitSpecializationEv.exit.i ], [ %i.ey, %bb.ai ], [ %i.jl, %bb.bs ], [ %i.mc, %bb.cq ], [ %i.cm, %.thread77.i ], [ %i.ev, %bb.ah ], [ %i.hm, %bb.ba ], [ %i.hi, %bb.az ], [ %i.hp, %bb.bb ], [ %i.ic, %bb.bi ], [ %i.ji, %bb.br ], [ %i.lo, %bb.ck ], [ %i.ly, %bb.cp ], [ %i.mg, %bb.cs ], [ %i.oc, %bb.dj ], [ %i.pg, %bb.dr ], [ %i.ny, %bb.di ], [ %i.pd, %bb.dq ], [ %i.pk, %bb.ds ], [ %i.pn, %bb.dt ]
  %.sroa.15.0338.ph = phi i16 [ 256, %bb.cl ], [ 256, %bb.ct ], [ 256, %bb.bj ], [ 256, %bb.bc ], [ 0, %_ZNK5clang29VarTemplateSpecializationDecl34isClassScopeExplicitSpecializationEv.exit.i ], [ 0, %bb.ai ], [ 256, %bb.bs ], [ 256, %bb.cq ], [ 0, %.thread77.i ], [ 0, %bb.ah ], [ 256, %bb.ba ], [ 256, %bb.az ], [ 256, %bb.bb ], [ 256, %bb.bi ], [ 256, %bb.br ], [ 256, %bb.ck ], [ 256, %bb.cp ], [ 256, %bb.cs ], [ 256, %bb.dj ], [ 256, %bb.dr ], [ 256, %bb.di ], [ 256, %bb.dq ], [ 256, %bb.ds ], [ 256, %bb.dt ]
  %.0117288337.ph = phi i1 [ %.0117287, %bb.cl ], [ %.0117287, %bb.ct ], [ false, %bb.bj ], [ %.0117287, %bb.bc ], [ %.0117287, %_ZNK5clang29VarTemplateSpecializationDecl34isClassScopeExplicitSpecializationEv.exit.i ], [ %.0117287, %bb.ai ], [ true, %bb.bs ], [ %.0117287, %bb.cq ], [ %.0117287, %.thread77.i ], [ %.0117287, %bb.ah ], [ %.0117287, %bb.ba ], [ %.0117287, %bb.az ], [ %.0117287, %bb.bb ], [ false, %bb.bi ], [ true, %bb.br ], [ %.0117287, %bb.ck ], [ %.0117287, %bb.cp ], [ %.0117287, %bb.cs ], [ %.0117287, %bb.dj ], [ %.0117287, %bb.dr ], [ %.0117287, %bb.di ], [ %.0117287, %bb.dq ], [ %.0117287, %bb.ds ], [ %.0117287, %bb.dt ]
  %i.wa = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %.0.i.i117.i.sink) #26
  br label %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit.thread333

_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit.thread333: ; preds = %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit.thread333.sink.split, %bb.dk, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit
  %.sroa.0.0339 = phi ptr [ %.fca.0.extract2, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit ], [ %i.oi, %bb.dk ], [ %i.wa, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit.thread333.sink.split ]
  %.sroa.15.0338 = phi i16 [ %.sroa.25.0.extract.trunc, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit ], [ 256, %bb.dk ], [ %.sroa.15.0338.ph, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit.thread333.sink.split ]
  %.0117288337 = phi i1 [ %.0117287, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit ], [ %.0117287, %bb.dk ], [ %.0117288337.ph, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit.thread333.sink.split ]
  %i.wb = and i16 %.sroa.15.0338, 256
  %.not281 = icmp eq i16 %i.wb, 0
  %spec.select = select i1 %.not281, i1 %.0117288337, i1 false
  br label %.backedge

.backedge:                                        ; preds = %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers39HandleImplicitConceptSpecializationDeclEPKN5clang33ImplicitConceptSpecializationDeclERNS1_30MultiLevelTemplateArgumentListE.exit, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers26HandleFunctionTemplateDeclERN5clang4SemaEPKNS1_20FunctionTemplateDeclERNS1_30MultiLevelTemplateArgumentListE.exit, %_ZNK5clang4Decl21getLexicalDeclContextEv.exit, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers8Response34DontClearRelativeToPrimaryNextDeclEPKN5clang4DeclE.exit, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers24HandleGenericDeclContextEPKN5clang4DeclE.exit, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit.thread333
  %.1.be = phi ptr [ %.sroa.0.0339, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit.thread333 ], [ %i.qm, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers39HandleImplicitConceptSpecializationDeclEPKN5clang33ImplicitConceptSpecializationDeclERNS1_30MultiLevelTemplateArgumentListE.exit ], [ %i.ux, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers26HandleFunctionTemplateDeclERN5clang4SemaEPKNS1_20FunctionTemplateDeclERNS1_30MultiLevelTemplateArgumentListE.exit ], [ %i.vg, %_ZNK5clang4Decl21getLexicalDeclContextEv.exit ], [ %i.vp, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers8Response34DontClearRelativeToPrimaryNextDeclEPKN5clang4DeclE.exit ], [ %i.vw, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers24HandleGenericDeclContextEPKN5clang4DeclE.exit ] ; 2 uses
  %.0117.be = phi i1 [ %spec.select, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit.thread333 ], [ false, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers39HandleImplicitConceptSpecializationDeclEPKN5clang33ImplicitConceptSpecializationDeclERNS1_30MultiLevelTemplateArgumentListE.exit ], [ false, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers26HandleFunctionTemplateDeclERN5clang4SemaEPKNS1_20FunctionTemplateDeclERNS1_30MultiLevelTemplateArgumentListE.exit ], [ false, %_ZNK5clang4Decl21getLexicalDeclContextEv.exit ], [ %.0117287, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers8Response34DontClearRelativeToPrimaryNextDeclEPKN5clang4DeclE.exit ], [ false, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers24HandleGenericDeclContextEPKN5clang4DeclE.exit ]
  %i.wc = call noundef zeroext i1 @_ZNK5clang4Decl17isFileContextDeclEv(ptr noundef nonnull align 8 dereferenceable(33) %.1.be) #26
  br i1 %i.wc, label %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit, label %bb.q

_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit: ; preds = %_ZNK5clang31ClassTemplateSpecializationDecl34isClassScopeExplicitSpecializationEv.exit.i, %bb.cw, %bb.dc, %bb.bu, %bb.bf, %bb.av, %bb.ag, %.thread.i, %bb.bw, %bb.z, %.backedge, %_ZN12_GLOBAL__N_123TemplateInstArgsHelpers30HandlePartialClassTemplateSpecEPKN5clang38ClassTemplatePartialSpecializationDeclERNS1_30MultiLevelTemplateArgumentListEb.exit, %bb.p, %bb.ak, %bb.al
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsEPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb(ptr noundef nonnull align 8 dereferenceable(118) %0, ptr noundef %1, ptr %2, i64 %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.clang::MultiLevelTemplateArgumentList::ArgumentListLevel", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(33) %1) #26
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, -5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.h = select i1 %4, i64 4, i64 0
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.j, align 8, !tbaa !28
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !11   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !12
  %.not.i = icmp ult i32 %i.l, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !36

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelELb1EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.l to i64
  %i.p = load ptr, ptr %0, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.r = load i32, ptr %i.k, align 8, !tbaa !11
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelELb1EE9push_backERKS3_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelELb1EE9push_backERKS3_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZN12_GLOBAL__N_123TemplateInstArgsHelpers37HandleDefaultTempArgIntoTempTempParamEPKN5clang24TemplateTemplateParmDeclERNS1_30MultiLevelTemplateArgumentListE(i32 %.64.val, ptr noundef nonnull align 8 dereferenceable(118) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %"struct.clang::MultiLevelTemplateArgumentList::ArgumentListLevel", align 8 ; 4 uses
  %i.a = and i32 %.64.val, 1048575
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.c

bb.b:                                             ; preds = %_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsESt9nullopt_t.exit
  ret { ptr, i64 } { ptr null, i64 257 }

bb.c:                                             ; preds = %bb.a, %_ZN5clang30MultiLevelTemplateArgumentList25addOuterTemplateArgumentsESt9nullopt_t.exit
end_hunk_0
