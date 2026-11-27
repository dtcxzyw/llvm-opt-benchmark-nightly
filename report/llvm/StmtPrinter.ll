Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StmtPrinter?download=true
inline.NumInlined: 4763
inline.NumDeleted: 2318
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_111StmtPrinter15VisitLambdaExprEPN5clang10LambdaExprE:bb.a
  %i.eq = icmp ult i64 %i.ep, 3
  br i1 %i.eq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.er = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ei, ptr noundef nonnull @.str.50, i64 noundef 3) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit96

bb.ak:                                            ; preds = %bb.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.em, ptr noundef nonnull align 1 dereferenceable(3) @.str.50, i64 3, i1 false)
  %i.es = load ptr, ptr %i.el, align 8, !tbaa !448
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 3
  store ptr %i.et, ptr %i.el, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit96

_ZN4llvm11raw_ostreamlsEPKc.exit96:               ; preds = %bb.ak, %bb.aj, %_ZN4llvm11raw_ostreamlsEPKc.exit72
  %i.eu = tail call noundef zeroext i1 @_ZNK5clang10LambdaExpr13isInitCaptureEPKNS_13LambdaCaptureE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.054200) #19
  br i1 %i.eu, label %bb.al, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit107

bb.al:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit96
  %.0.copyload.i.i.i.i97 = load i64, ptr %.054200, align 8
  %i.ev = and i64 %.0.copyload.i.i.i.i97, -8
  %i.ew = inttoptr i64 %i.ev to ptr               ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 96 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 8
  %i.ez = and i8 %i.ey, 96                        ; 2 uses
  %i.fa = icmp eq i8 %i.ez, 32
  br i1 %i.fa, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %i.fb = tail call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.ew) #19
  %i.fc = load i16, ptr %i.fb, align 8
  %i.fd = and i16 %i.fc, 511
  %i.fe = icmp eq i16 %i.fd, 19
  br i1 %i.fe, label %..critedge_crit_edge, label %bb.an

..critedge_crit_edge:                             ; preds = %bb.am
  %.pre = load i8, ptr %i.ex, align 8
  %.pre209 = and i8 %.pre, 96
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.al
  %.pre-phi = phi i8 [ %.pre209, %..critedge_crit_edge ], [ %i.ez, %bb.al ]
  %i.ff = icmp eq i8 %.pre-phi, 0
  br i1 %i.ff, label %bb.an, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit103

bb.an:                                            ; preds = %.critedge, %bb.am
  %.sroa.5157.0 = phi i64 [ 1, %bb.am ], [ 0, %.critedge ] ; 2 uses
  %.sroa.0156.0 = phi ptr [ @.str.3, %bb.am ], [ null, %.critedge ] ; 2 uses
  %.sroa.6.0 = phi i64 [ 1, %bb.am ], [ 3, %.critedge ] ; 4 uses
  %.sroa.0158.0 = phi ptr [ @.str.15, %bb.am ], [ @.str.72, %.critedge ] ; 2 uses
  %i.fg = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !447
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 32 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !448 ; 2 uses
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = icmp ugt i64 %.sroa.6.0, %i.fn
  br i1 %i.fo, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fp = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fg, ptr noundef nonnull %.sroa.0158.0, i64 noundef %.sroa.6.0) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit103

bb.ap:                                            ; preds = %bb.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fk, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0158.0, i64 %.sroa.6.0, i1 false)
  %i.fq = load ptr, ptr %i.fj, align 8, !tbaa !448
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.sroa.6.0
  store ptr %i.fr, ptr %i.fj, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit103

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit103:   ; preds = %.critedge, %bb.ao, %bb.ap
  %.sroa.0156.0185 = phi ptr [ %.sroa.0156.0, %bb.ao ], [ %.sroa.0156.0, %bb.ap ], [ null, %.critedge ] ; 2 uses
  %.sroa.5157.0183 = phi i64 [ %.sroa.5157.0, %bb.ao ], [ %.sroa.5157.0, %bb.ap ], [ 0, %.critedge ] ; 3 uses
  %i.fs = tail call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.ew) #19 ; 3 uses
  %.not.i104 = icmp eq ptr %i.fs, null
  br i1 %.not.i104, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit103
  %i.ft = load ptr, ptr %i.ab, align 8, !tbaa !432 ; 3 uses
  %.not.i145 = icmp eq ptr %i.ft, null
  br i1 %.not.i145, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fu = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !442
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = tail call noundef zeroext i1 %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef nonnull %i.fs, ptr noundef nonnull align 8 dereferenceable(48) %i.fu) #19, !inline_history !476
  br i1 %i.fy, label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_111StmtPrinterEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.fs), !inline_history !476
  br label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit

bb.at:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit103
  %i.fz = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !447
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 32 ; 3 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !448 ; 2 uses
  %i.ge = ptrtoint ptr %i.gb to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = icmp ult i64 %i.gg, 11
  br i1 %i.gh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gi = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fz, ptr noundef nonnull @.str.5, i64 noundef 11) #19 ; 0 uses
  br label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit

bb.av:                                            ; preds = %bb.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.gd, ptr noundef nonnull align 1 dereferenceable(11) @.str.5, i64 11, i1 false)
  %i.gj = load ptr, ptr %i.gc, align 8, !tbaa !448
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 11
  store ptr %i.gk, ptr %i.gc, align 8, !tbaa !448
  br label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit

_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit: ; preds = %bb.av, %bb.au, %bb.as, %bb.ar
  %i.gl = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !447
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !448 ; 2 uses
  %i.gq = ptrtoint ptr %i.gn to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = icmp ugt i64 %.sroa.5157.0183, %i.gs
  br i1 %i.gt, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit
  %i.gu = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gl, ptr noundef %.sroa.0156.0185, i64 noundef %.sroa.5157.0183) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit107

bb.ax:                                            ; preds = %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit
  %.not.i105 = icmp eq i64 %.sroa.5157.0183, 0
  br i1 %.not.i105, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit107, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gv = load i8, ptr %.sroa.0156.0185, align 1
  store i8 %i.gv, ptr %i.gp, align 1
  %i.gw = load ptr, ptr %i.go, align 8, !tbaa !448
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  store ptr %i.gx, ptr %i.go, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit107

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit107:   ; preds = %bb.ay, %bb.ax, %bb.aw, %_ZN4llvm11raw_ostreamlsEPKc.exit96, %bb.l
  %.2 = phi i1 [ %.1201, %bb.l ], [ true, %_ZN4llvm11raw_ostreamlsEPKc.exit96 ], [ true, %bb.aw ], [ true, %bb.ax ], [ true, %bb.ay ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.054200, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.gy, %i.aa
  br i1 %.not, label %._crit_edge, label %bb.l, !llvm.loop !786

bb.az:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit69
  %i.gz = tail call noundef ptr @_ZNK5clang10LambdaExpr24getTemplateParameterListEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #19
  %i.ha = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421
  %i.hb = tail call noundef ptr @_ZNK5clang10LambdaExpr14getLambdaClassEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #19
  %i.hc = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %i.hb) #22
  tail call void @_ZNK5clang21TemplateParameterList5printERN4llvm11raw_ostreamERKNS_10ASTContextEb(ptr noundef nonnull align 8 dereferenceable(24) %i.gz, ptr noundef nonnull align 8 dereferenceable(48) %i.ha, ptr noundef nonnull align 8 dereferenceable(23904) %i.hc, i1 noundef zeroext true) #19
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN4llvm11raw_ostreamlsEc.exit69
  %i.hd = load i32, ptr %1, align 8
  %i.he = and i32 %i.hd, 2097152
  %.not196 = icmp eq i32 %i.he, 0
  br i1 %.not196, label %bb.ck, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hf = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !448 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !447
  %.not.i108 = icmp ult ptr %i.hh, %i.hj
  br i1 %.not.i108, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hk = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.hf, i8 noundef zeroext 40) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit110

bb.bd:                                            ; preds = %bb.bb
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  store ptr %i.hl, ptr %i.hg, align 8, !tbaa !448
  store i8 40, ptr %i.hh, align 1, !tbaa !433
  br label %_ZN4llvm11raw_ostreamlsEc.exit110

_ZN4llvm11raw_ostreamlsEc.exit110:                ; preds = %bb.bc, %bb.bd
  %i.hm = tail call noundef ptr @_ZNK5clang10LambdaExpr15getCallOperatorEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #19 ; 6 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 120
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !801 ; 3 uses
  %i.hp = tail call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.hm) #19 ; 3 uses
  %i.hq = zext i32 %i.hp to i64
  %.idx = shl nuw nsw i64 %i.hq, 3
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx
  %.not55202.not = icmp eq i32 %i.hp, 0
  br i1 %.not55202.not, label %._crit_edge206.thread239, label %_ZN4llvm11raw_ostreamlsEPKc.exit115.peel

_ZN4llvm11raw_ostreamlsEPKc.exit115.peel:         ; preds = %_ZN4llvm11raw_ostreamlsEc.exit110
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 33 ; 2 uses
  %i.hx = load ptr, ptr %i.ho, align 8, !tbaa !489 ; 3 uses
  %.pre208 = load i64, ptr %i.hs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.hy = and i64 %.pre208, 17592186044416
  %.not58.peel = icmp eq i64 %i.hy, 0
  br i1 %.not58.peel, label %bb.bl, label %bb.be

bb.be:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit115.peel
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 40
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !506 ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = icmp ne i64 %i.ib, 0
  %i.id = and i64 %i.ia, -8                       ; 2 uses
  %.not59197.peel = icmp eq i64 %i.id, 0
  %.not59.peel = or i1 %i.ic, %.not59197.peel
  br i1 %.not59.peel, label %bb.bl, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ie = inttoptr i64 %i.id to ptr
  %i.if = tail call { ptr, i64 } @_ZNK5clang14IdentifierInfo14deuglifiedNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ie) #19 ; 2 uses
  %i.ig = extractvalue { ptr, i64 } %i.if, 0      ; 3 uses
  %i.ih = extractvalue { ptr, i64 } %i.if, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %.not.i118.peel = icmp eq ptr %i.ig, null
  store ptr %i.ht, ptr %2, align 8, !tbaa !436, !alias.scope !802
  br i1 %.not.i118.peel, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !802
  store i64 %i.ih, ptr %i.a, align 8, !tbaa !426, !noalias !802
  %i.ii = icmp ugt i64 %i.ih, 15
  br i1 %i.ii, label %bb.bh, label %._crit_edge.i.i.i.peel

bb.bh:                                            ; preds = %bb.bg
  %i.ij = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.ij, ptr %2, align 8, !tbaa !437, !alias.scope !802
  %i.ik = load i64, ptr %i.a, align 8, !tbaa !426, !noalias !802
  store i64 %i.ik, ptr %i.ht, align 8, !tbaa !433, !alias.scope !802
  br label %._crit_edge.i.i.i.peel

._crit_edge.i.i.i.peel:                           ; preds = %bb.bh, %bb.bg
  %i.il = phi ptr [ %i.ij, %bb.bh ], [ %i.ht, %bb.bg ] ; 2 uses
  switch i64 %i.ih, label %bb.bj [
    i64 1, label %bb.bi
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.peel
  ]

bb.bi:                                            ; preds = %._crit_edge.i.i.i.peel
  %i.im = load i8, ptr %i.ig, align 1, !tbaa !433
  store i8 %i.im, ptr %i.il, align 1, !tbaa !433
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.peel

bb.bj:                                            ; preds = %._crit_edge.i.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.il, ptr nonnull align 1 %i.ig, i64 %i.ih, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.peel: ; preds = %bb.bj, %bb.bi, %._crit_edge.i.i.i.peel
  %i.in = load i64, ptr %i.a, align 8, !tbaa !426, !noalias !802 ; 2 uses
  store i64 %i.in, ptr %i.hu, align 8, !tbaa !438, !alias.scope !802
  %i.io = load ptr, ptr %2, align 8, !tbaa !437, !alias.scope !802
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.in
  store i8 0, ptr %i.ip, align 1, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !802
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.peel

bb.bk:                                            ; preds = %bb.bf
  store i64 0, ptr %i.hu, align 8, !tbaa !438, !alias.scope !802
  store i8 0, ptr %i.ht, align 8, !tbaa !433, !alias.scope !802
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.peel

bb.bl:                                            ; preds = %bb.be, %_ZN4llvm11raw_ostreamlsEPKc.exit115.peel
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hx, i64 40
  call void @_ZNK5clang15DeclarationName11getAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.iq) #19
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.peel

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.peel:       ; preds = %bb.bl, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ir = call i64 @_ZNK5clang11ParmVarDecl15getOriginalTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %i.hx) #19
  store i64 %i.ir, ptr %3, align 8
  %i.is = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i8 4, ptr %i.hv, align 8, !tbaa !481
  store i8 1, ptr %i.hw, align 1, !tbaa !482
  store ptr %2, ptr %4, align 8, !tbaa !433
  call void @_ZNK5clang8QualType5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS1_5TwineEj(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.is, ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(34) %4, i32 noundef 0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.it = load ptr, ptr %2, align 8, !tbaa !437   ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.ht
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.peel
  %i.iv = load i64, ptr %i.ht, align 8, !tbaa !433
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %.not55.peel = icmp eq i32 %i.hp, 1
  br i1 %.not55.peel, label %._crit_edge206.thread, label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  br label %bb.bm

._crit_edge206:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.iy = call noundef zeroext i1 @_ZNK5clang12FunctionDecl10isVariadicEv(ptr noundef nonnull align 8 dereferenceable(168) %i.hm) #19
  br i1 %i.iy, label %.thread, label %_ZN4llvm11raw_ostreamlsEPKc.exit124

._crit_edge206.thread239:                         ; preds = %_ZN4llvm11raw_ostreamlsEc.exit110
  %i.iz = tail call noundef zeroext i1 @_ZNK5clang12FunctionDecl10isVariadicEv(ptr noundef nonnull align 8 dereferenceable(168) %i.hm) #19
  br i1 %i.iz, label %_ZN4llvm11raw_ostreamlsEPKc.exit121, label %_ZN4llvm11raw_ostreamlsEPKc.exit124

._crit_edge206.thread:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.ja = call noundef zeroext i1 @_ZNK5clang12FunctionDecl10isVariadicEv(ptr noundef nonnull align 8 dereferenceable(168) %i.hm) #19
  br i1 %i.ja, label %.thread, label %_ZN4llvm11raw_ostreamlsEPKc.exit124

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.peel.next
  %.0204 = phi ptr [ %i.ix, %.peel.next ], [ %i.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.jb = load ptr, ptr %.0204, align 8, !tbaa !489 ; 3 uses
  %i.jc = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !447
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 32 ; 3 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !448 ; 2 uses
  %i.jh = ptrtoint ptr %i.je to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = icmp ult i64 %i.jj, 2
  br i1 %i.jk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.jl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.jc, ptr noundef nonnull @.str.10, i64 noundef 2) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit115

bb.bo:                                            ; preds = %bb.bm
  store i16 8236, ptr %i.jg, align 1
  %i.jm = load ptr, ptr %i.jf, align 8, !tbaa !448
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  store ptr %i.jn, ptr %i.jf, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit115

_ZN4llvm11raw_ostreamlsEPKc.exit115:              ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.jo = load i64, ptr %i.hs, align 8
  %i.jp = and i64 %i.jo, 17592186044416
  %.not58 = icmp eq i64 %i.jp, 0
  br i1 %.not58, label %bb.bw, label %bb.bp

bb.bp:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit115
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !506 ; 2 uses
  %i.js = and i64 %i.jr, 7
  %i.jt = icmp ne i64 %i.js, 0
  %i.ju = and i64 %i.jr, -8                       ; 2 uses
  %.not59197 = icmp eq i64 %i.ju, 0
  %.not59 = or i1 %i.jt, %.not59197
  br i1 %.not59, label %bb.bw, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jv = inttoptr i64 %i.ju to ptr
  %i.jw = call { ptr, i64 } @_ZNK5clang14IdentifierInfo14deuglifiedNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jv) #19 ; 2 uses
  %i.jx = extractvalue { ptr, i64 } %i.jw, 0      ; 3 uses
  %i.jy = extractvalue { ptr, i64 } %i.jw, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %.not.i118 = icmp eq ptr %i.jx, null
  store ptr %i.ht, ptr %2, align 8, !tbaa !436, !alias.scope !803
  br i1 %.not.i118, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i64 0, ptr %i.hu, align 8, !tbaa !438, !alias.scope !803
  store i8 0, ptr %i.ht, align 8, !tbaa !433, !alias.scope !803
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !803
  store i64 %i.jy, ptr %i.a, align 8, !tbaa !426, !noalias !803
  %i.jz = icmp ugt i64 %i.jy, 15
  br i1 %i.jz, label %bb.bt, label %._crit_edge.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.ka = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.ka, ptr %2, align 8, !tbaa !437, !alias.scope !803
  %i.kb = load i64, ptr %i.a, align 8, !tbaa !426, !noalias !803
  store i64 %i.kb, ptr %i.ht, align 8, !tbaa !433, !alias.scope !803
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.bt, %bb.bs
  %i.kc = phi ptr [ %i.ka, %bb.bt ], [ %i.ht, %bb.bs ] ; 2 uses
  switch i64 %i.jy, label %bb.bv [
    i64 1, label %bb.bu
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.bu:                                            ; preds = %._crit_edge.i.i.i
  %i.kd = load i8, ptr %i.jx, align 1, !tbaa !433
  store i8 %i.kd, ptr %i.kc, align 1, !tbaa !433
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.bv:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kc, ptr nonnull align 1 %i.jx, i64 %i.jy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.bv, %bb.bu, %._crit_edge.i.i.i
  %i.ke = load i64, ptr %i.a, align 8, !tbaa !426, !noalias !803 ; 2 uses
  store i64 %i.ke, ptr %i.hu, align 8, !tbaa !438, !alias.scope !803
  %i.kf = load ptr, ptr %2, align 8, !tbaa !437, !alias.scope !803
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.ke
  store i8 0, ptr %i.kg, align 1, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !803
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.bw:                                            ; preds = %bb.bp, %_ZN4llvm11raw_ostreamlsEPKc.exit115
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  call void @_ZNK5clang15DeclarationName11getAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.kh) #19
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i, %bb.br, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ki = call i64 @_ZNK5clang11ParmVarDecl15getOriginalTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %i.jb) #19
  store i64 %i.ki, ptr %3, align 8
  %i.kj = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i8 4, ptr %i.hv, align 8, !tbaa !481
  store i8 1, ptr %i.hw, align 1, !tbaa !482
  store ptr %2, ptr %4, align 8, !tbaa !433
  call void @_ZNK5clang8QualType5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS1_5TwineEj(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.kj, ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(34) %4, i32 noundef 0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.kk = load ptr, ptr %2, align 8, !tbaa !437   ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.ht
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.km = load i64, ptr %i.ht, align 8, !tbaa !433
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ko = getelementptr inbounds nuw i8, ptr %.0204, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.ko, %i.hr
  br i1 %.not55, label %._crit_edge206, label %bb.bm, !llvm.loop !791

.thread:                                          ; preds = %._crit_edge206, %._crit_edge206.thread
  %i.kp = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !447
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 32 ; 3 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !448 ; 2 uses
  %i.ku = ptrtoint ptr %i.kr to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = icmp ult i64 %i.kw, 2
  br i1 %i.kx, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.thread
  %i.ky = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.kp, ptr noundef nonnull @.str.10, i64 noundef 2) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit121

bb.by:                                            ; preds = %.thread
  store i16 8236, ptr %i.kt, align 1
  %i.kz = load ptr, ptr %i.ks, align 8, !tbaa !448
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 2
  store ptr %i.la, ptr %i.ks, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit121

_ZN4llvm11raw_ostreamlsEPKc.exit121:              ; preds = %._crit_edge206.thread239, %bb.by, %bb.bx
  %i.lb = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !447
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 32 ; 3 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !448 ; 2 uses
  %i.lg = ptrtoint ptr %i.ld to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = icmp ult i64 %i.li, 3
  br i1 %i.lj, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit121
  %i.lk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.lb, ptr noundef nonnull @.str.50, i64 noundef 3) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit124

bb.ca:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lf, ptr noundef nonnull align 1 dereferenceable(3) @.str.50, i64 3, i1 false)
  %i.ll = load ptr, ptr %i.le, align 8, !tbaa !448
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 3
  store ptr %i.lm, ptr %i.le, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit124

_ZN4llvm11raw_ostreamlsEPKc.exit124:              ; preds = %._crit_edge206.thread239, %._crit_edge206.thread, %bb.ca, %bb.bz, %._crit_edge206
  %i.ln = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 32 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !448 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !447
end_hunk_0
