Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDecl?download=true
inline.NumInlined: 28669
inline.NumDeleted: 12983
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN5clang4Sema27BuildAnonymousStructOrUnionEPNS_5ScopeERNS_8DeclSpecENS_15AccessSpecifierEPNS_10RecordDeclERKNS_14PrintingPolicyE:bb.a
_ZN5clang4Decl14getDeclContextEv.exit278:         ; preds = %bb.cr, %bb.cs
  %.0.i277 = phi ptr [ %i.qq, %bb.cr ], [ %i.qt, %bb.cs ]
  call void @_ZN5clang4Sema29getCurrentMangleNumberContextEPKNS_11DeclContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.1824") align 8 %35, ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %.0.i277) #28
  %i.qu = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !1984 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %.not180 = icmp eq ptr %i.qv, null
  br i1 %.not180, label %_ZNK5clang7VarDecl13isStaticLocalEv.exit.thread, label %bb.ct

bb.ct:                                            ; preds = %_ZN5clang4Decl14getDeclContextEv.exit278
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !804, !nonnull !805, !align !806
  %i.qy = load ptr, ptr %i.al, align 8, !tbaa !853, !nonnull !805, !align !806
  %i.qz = getelementptr i8, ptr %i.qy, i64 144
  %.val188 = load i64, ptr %i.qz, align 8
  %i.ra = icmp ugt i64 %.val188, 816043786239999999
  br i1 %i.ra, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rc = load i16, ptr %i.rb, align 8, !tbaa !1980
  br label %_ZL19getMSManglingNumberRKN5clang11LangOptionsEPNS_5ScopeE.exit

bb.cv:                                            ; preds = %bb.ct
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !1981 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.re, null
  br i1 %.not.not.i.i, label %_ZL19getMSManglingNumberRKN5clang11LangOptionsEPNS_5ScopeE.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 14
  %i.rg = load i16, ptr %i.rf, align 2, !tbaa !1982
  br label %_ZL19getMSManglingNumberRKN5clang11LangOptionsEPNS_5ScopeE.exit

_ZL19getMSManglingNumberRKN5clang11LangOptionsEPNS_5ScopeE.exit: ; preds = %bb.cu, %bb.cv, %bb.cw
  %.shrunk.i = phi i16 [ %i.rc, %bb.cu ], [ %i.rg, %bb.cw ], [ 1, %bb.cv ]
  %i.rh = zext i16 %.shrunk.i to i32
  %i.ri = load ptr, ptr %i.qv, align 8, !tbaa !810
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 40
  %i.rk = load ptr, ptr %i.rj, align 8
  %i.rl = call noundef i32 %i.rk(ptr noundef nonnull align 8 dereferenceable(12) %i.qv, ptr noundef nonnull %.0154, i32 noundef %i.rh) #28
  call void @_ZN5clang10ASTContext17setManglingNumberEPKNS_9NamedDeclEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.qx, ptr noundef nonnull %.0154, i32 noundef %i.rl) #28
  %i.rm = load ptr, ptr %i.qw, align 8, !tbaa !804, !nonnull !805, !align !806
  %i.rn = load ptr, ptr %i.qv, align 8, !tbaa !810
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  %i.rp = load ptr, ptr %i.ro, align 8
  %i.rq = call noundef i32 %i.rp(ptr noundef nonnull align 8 dereferenceable(12) %i.qv, ptr noundef nonnull %.0154) #28
  call void @_ZN5clang10ASTContext20setStaticLocalNumberEPKNS_7VarDeclEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.rm, ptr noundef nonnull %.0154, i32 noundef %i.rq) #28
  br label %_ZNK5clang7VarDecl13isStaticLocalEv.exit.thread

_ZNK5clang7VarDecl13isStaticLocalEv.exit.thread:  ; preds = %_ZNK5clang4Decl21getLexicalDeclContextEv.exit.i.i, %_ZNK5clang4Decl21getLexicalDeclContextEv.exit.i.i, %bb.ch, %bb.ci, %_ZN5clang4Decl14getDeclContextEv.exit278, %_ZL19getMSManglingNumberRKN5clang11LangOptionsEPNS_5ScopeE.exit, %bb.cg, %_ZNK5clang7VarDecl13isStaticLocalEv.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9NamedDeclELb1EE9push_backES3_.exit
  %i.rr = trunc nuw i8 %.9 to i1
  %i.rs = select i1 %i.pb, i1 true, i1 %i.rr
  br i1 %i.rs, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZNK5clang7VarDecl13isStaticLocalEv.exit.thread
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %.0154, i1 noundef zeroext true) #28
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %_ZNK5clang7VarDecl13isStaticLocalEv.exit.thread
  %i.rt = load ptr, ptr %34, align 8, !tbaa !876  ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.oy
  br i1 %i.ru, label %_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj2EED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @free(ptr noundef %i.rt) #28
  br label %_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj2EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj2EED2Ev.exit: ; preds = %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN5clang10DeclaratorD2Ev(ptr noundef nonnull align 8 dead_on_return(2664) dereferenceable(2664) %32) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  ret ptr %.0154
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4Type15getAsRecordDeclEv(ptr noundef nonnull align 16 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !834
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !856 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 16              ; 2 uses
  %i.g = add i8 %i.f, -47
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.g, 3
  %.not.i5 = icmp ne ptr %i.d, null
  %.not.i.not7 = and i1 %.not.i5, %switch.i.i.i.i.i.i.i.i.i
  %i.h = and i8 %i.f, 62
  %spec.select.i.i = icmp eq i8 %i.h, 48
  %or.cond = and i1 %.not.i.not7, %spec.select.i.i
  br i1 %or.cond, label %bb.b, label %_ZN4llvm15isa_and_presentIJN5clang10RecordTypeENS1_21InjectedClassNameTypeEEPKNS1_7TagTypeEEEbRKT0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1602 ; 2 uses
  %i.k = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.j) #28 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.k, null
  %spec.select.i.i2 = select i1 %.not.not.i.i, ptr %i.j, ptr %i.k
  br label %_ZN4llvm15isa_and_presentIJN5clang10RecordTypeENS1_21InjectedClassNameTypeEEPKNS1_7TagTypeEEEbRKT0_.exit.thread

_ZN4llvm15isa_and_presentIJN5clang10RecordTypeENS1_21InjectedClassNameTypeEEPKNS1_7TagTypeEEEbRKT0_.exit.thread: ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %spec.select.i.i2, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang4Sema30BuildMicrosoftCAnonymousStructEPNS_5ScopeERNS_8DeclSpecEPNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(304) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::Sema::SizelessTypeDiagnoser", align 8 ; 5 uses
  %5 = alloca %"class.clang::Declarator", align 8 ; 32 uses
  %6 = alloca %"class.llvm::SmallVector.1872", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = load atomic i8, ptr @_ZGVZN5clang20ParsedAttributesView4noneEvE5Attrs acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9NamedDeclELb1EE9push_backES3_.exit, !prof !1033

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5clang20ParsedAttributesView4noneEvE5Attrs) #28
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9NamedDeclELb1EE9push_backES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, align 8, !tbaa !857
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, i64 4), align 4, !tbaa !857
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, i64 8), align 8, !tbaa !876
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, i64 16), align 8, !tbaa !877
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, i64 20), align 4, !tbaa !878
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5clang20ParsedAttributesViewD2Ev, ptr nonnull @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, ptr nonnull @__dso_handle) #28 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5clang20ParsedAttributesView4noneEvE5Attrs) #28
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9NamedDeclELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang9NamedDeclELb1EE9push_backES3_.exit: ; preds = %bb.a, %bb.b, %bb.c
  store ptr %2, ptr %5, align 8, !tbaa !1035
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr null, ptr %i.f, align 8, !tbaa !834
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 0, ptr %i.g, align 8, !tbaa !857
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 84
  store i32 0, ptr %i.h, align 4, !tbaa !857
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.e, i8 0, i64 52, i1 false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.j, align 8, !tbaa !813
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i32 5, ptr %i.k, align 8, !tbaa !1047
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.l, i8 0, i64 20, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 144
  store ptr %i.n, ptr %i.m, align 8, !tbaa !876
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i32 0, ptr %i.o, align 8, !tbaa !877
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 140
  store i32 4, ptr %i.p, align 4, !tbaa !878
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 720 ; 2 uses
  %i.r = load i64, ptr %2, align 8
  %i.s = and i64 %i.r, 520192
  %i.t = icmp eq i64 %i.s, 282624
  %i.u = zext i1 %i.t to i16
  %i.v = load i16, ptr %i.q, align 8
  %i.w = and i16 %i.v, -1024
  %i.x = or disjoint i16 %i.w, %i.u
  store i16 %i.x, ptr %i.q, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 728
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1048, !nonnull !805, !align !806
  store i32 0, ptr %i.y, align 8, !tbaa !857
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 732
  store i32 0, ptr %i.ab, align 4, !tbaa !857
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 736
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 752
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !876
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 744
  store i32 0, ptr %i.ae, align 8, !tbaa !877
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 748
  store i32 2, ptr %i.af, align 4, !tbaa !878
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 768
  store ptr %i.aa, ptr %i.ag, align 8, !tbaa !1013
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 776
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 792
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !876
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 784
  store i32 0, ptr %i.aj, align 8, !tbaa !877
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 788
  store i32 2, ptr %i.ak, align 4, !tbaa !878
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 808
  store ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, ptr %i.al, align 8, !tbaa !1049
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 816
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 2648
  store i32 0, ptr %i.an, align 8, !tbaa !857
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 2652
  store i32 0, ptr %i.ao, align 4, !tbaa !857
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, i8 0, i64 40, i1 false)
  %i.ap = call noundef ptr @_ZN5clang4Sema20GetTypeForDeclaratorERNS_10DeclaratorE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(2664) %5) #28
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !932 ; 2 uses
  %7 = icmp eq ptr %i.ar, null                    ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -64 ; 2 uses
  %8 = select i1 %7, ptr null, ptr %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !804, !nonnull !805, !align !806
  %i.av = call i64 @_ZNK5clang10ASTContext19getCanonicalTagTypeEPKNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.au, ptr noundef %3) #28 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !804, !nonnull !805, !align !806
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 64
  %spec.select = select i1 %7, ptr null, ptr %9
  %.sroa.0.0.copyload.i.i22 = load i32, ptr %i.j, align 8, !tbaa !813 ; 2 uses
  %i.ax = call noundef ptr @_ZN5clang9FieldDecl6CreateERKNS_10ASTContextEPNS_11DeclContextENS_14SourceLocationES6_PKNS_14IdentifierInfoENS_8QualTypeEPNS_14TypeSourceInfoEPNS_4ExprEbNS_16InClassInitStyleE(ptr noundef nonnull align 8 dereferenceable(23904) %i.aw, ptr noundef %spec.select, i32 %.sroa.0.0.copyload.i.i22, i32 %.sroa.0.0.copyload.i.i22, ptr noundef null, i64 %i.av, ptr noundef %i.ap, ptr noundef null, i1 noundef zeroext false, i32 noundef 0) #28 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 28 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = or i32 %i.az, 512
  store i32 %i.ba, ptr %i.ay, align 4
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !932
  call void @_ZN5clang11DeclContext7addDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull %i.ax) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bc, ptr %6, align 8, !tbaa !876
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 2, ptr %i.be, align 4, !tbaa !878
  store ptr %i.ax, ptr %i.bc, align 8
  store i32 1, ptr %i.bd, align 8, !tbaa !877
  %i.bf = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %3) #28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.bg, align 8, !tbaa !813
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3862, ptr %i.bh, align 8, !tbaa !2021
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang4Sema21SizelessTypeDiagnoserIJEEE, i64 16), ptr %4, align 8, !tbaa !810
  %i.bi = call noundef zeroext i1 @_ZN5clang4Sema19RequireCompleteTypeENS_14SourceLocationENS_8QualTypeENS0_16CompleteTypeKindERNS0_13TypeDiagnoserE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.0.0.copyload.i24, i64 %i.av, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.bi, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9NamedDeclELb1EE9push_backES3_.exit
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !932
  %.val = load i64, ptr %2, align 8               ; 2 uses
  %i.bk = trunc i64 %.val to i32
  %i.bl = and i32 %i.bk, 7                        ; 2 uses
  switch i32 %i.bl, label %default.unreachable [
    i32 0, label %_ZL37StorageClassSpecToVarDeclStorageClassRKN5clang8DeclSpecE.exit
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %_ZL37StorageClassSpecToVarDeclStorageClassRKN5clang8DeclSpecE.exit
    i32 1, label %_ZL37StorageClassSpecToVarDeclStorageClassRKN5clang8DeclSpecE.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.bm = and i64 %.val, 32
  %.not.i26 = icmp eq i64 %i.bm, 0
  %..i = zext i1 %.not.i26 to i32
  br label %_ZL37StorageClassSpecToVarDeclStorageClassRKN5clang8DeclSpecE.exit

bb.f:                                             ; preds = %bb.d
  br label %_ZL37StorageClassSpecToVarDeclStorageClassRKN5clang8DeclSpecE.exit

bb.g:                                             ; preds = %bb.d, %bb.d
  br label %_ZL37StorageClassSpecToVarDeclStorageClassRKN5clang8DeclSpecE.exit

bb.h:                                             ; preds = %bb.d
  br label %_ZL37StorageClassSpecToVarDeclStorageClassRKN5clang8DeclSpecE.exit

default.unreachable:                              ; preds = %bb.d
  unreachable

_ZL37StorageClassSpecToVarDeclStorageClassRKN5clang8DeclSpecE.exit: ; preds = %bb.d, %bb.d, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ 0, %bb.d ], [ %..i, %bb.e ], [ 0, %bb.d ], [ 2, %bb.f ], [ %i.bl, %bb.g ], [ 0, %bb.d ], [ 3, %bb.h ]
  %i.bn = call fastcc noundef zeroext i1 @_ZL35InjectAnonymousStructOrUnionMembersRN5clang4SemaEPNS_5ScopeEPNS_11DeclContextEPNS_10RecordDeclENS_15AccessSpecifierENS_12StorageClassERN4llvm15SmallVectorImplIPNS_9NamedDeclEEE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %i.bj, ptr noundef %i.bf, i8 noundef zeroext 3, i32 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZL37StorageClassSpecToVarDeclStorageClassRKN5clang8DeclSpecE.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9NamedDeclELb1EE9push_backES3_.exit
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %i.ax, i1 noundef zeroext true) #28
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %i.as, i1 noundef zeroext true) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZL37StorageClassSpecToVarDeclStorageClassRKN5clang8DeclSpecE.exit
  %i.bo = load ptr, ptr %6, align 8, !tbaa !876   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bc
  br i1 %i.bp, label %_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.bo) #28
  br label %_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj2EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj2EED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZN5clang10DeclaratorD2Ev(ptr noundef nonnull align 8 dead_on_return(2664) dereferenceable(2664) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret ptr %i.ax
}

declare noundef zeroext i1 @_ZN5clang8DeclSpec21isMissingDeclaratorOkEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11TagTypeKindEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !815, !range !816, !noundef !805
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !1977
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !820  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_11TagTypeKindEvEERKS1_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !821
  %i.i = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.h) ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !820
  br label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_11TagTypeKindEvEERKS1_OT_.exit

_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_11TagTypeKindEvEERKS1_OT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = sext i32 %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i8, ptr %i.j, align 8, !tbaa !833
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  store i8 2, ptr %i.o, align 1, !tbaa !834
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !820  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.p, align 8, !tbaa !833   ; 2 uses
  %i.s = add i8 %i.r, 1
  store i8 %i.s, ptr %i.p, align 8, !tbaa !833
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t
  store i64 %i.k, ptr %i.u, align 8, !tbaa !835
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.x = load i8, ptr %i.w, align 4, !tbaa !837, !range !816, !noundef !805
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !847 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !810
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(168) %i.ab) #28, !inline_history !1
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ]
  store ptr %i.ag, ptr %2, align 8, !tbaa !849
  %i.ah = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !813
  %i.ak = zext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !852
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i32, ptr %1, align 4, !tbaa !1977
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !820 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZNK5clang17PartialDiagnosticlsINS_11TagTypeKindEvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !821
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !820
  br label %_ZNK5clang17PartialDiagnosticlsINS_11TagTypeKindEvEERKS0_OT_.exit

_ZNK5clang17PartialDiagnosticlsINS_11TagTypeKindEvEERKS0_OT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.ap, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.au = sext i32 %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.at, align 8, !tbaa !833
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 2, ptr %i.ay, align 1, !tbaa !834
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !820 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !833 ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !833
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store i64 %i.au, ptr %i.be, align 8, !tbaa !835
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsINS_11TagTypeKindEvEERKS0_OT_.exit, %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_11TagTypeKindEvEERKS1_OT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema21ActOnDocumentableDeclEPNS_4DeclE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEE25VisitGenericSelectionExprEPNS_20GenericSelectionExprE:bb.a
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = and i32 %i.b, 1073709056
  %i.d = icmp eq i32 %i.c, 1073709056
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = lshr i32 %i.b, 30
  %.lobit.i.i = and i32 %i.f, 1
  %i.g = lshr i32 %i.b, 15
  %i.h = and i32 %i.g, 32767
  %i.i = add nuw nsw i32 %.lobit.i.i, %i.h
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2316
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEE15VisitChooseExprEPNS_10ChooseExprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2316
  %i.c = load i24, ptr %i.b, align 8
  %i.d = and i24 %i.c, 131072
  %.not = icmp eq i24 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i24, ptr %1, align 8
  %i.f = and i24 %i.e, 524288
  %.not.i = icmp eq i24 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = select i1 %.not.i, ptr %i.j, ptr %i.h
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120SelfReferenceChecker21VisitImplicitCastExprEPN5clang16ImplicitCastExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = and i32 %i.a, 66584576
  %i.c = icmp eq i32 %i.b, 2097152
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2299
  tail call fastcc void @_ZN12_GLOBAL__N_120SelfReferenceChecker11HandleValueEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120SelfReferenceChecker13VisitCallExprEPN5clang8CallExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5clang8CallExpr15isCallToStdMoveEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #28
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i32, ptr %1, align 8
  %i.d = lshr i32 %i.c, 19
  %i.e = and i32 %i.d, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1925
  tail call fastcc void @_ZN12_GLOBAL__N_120SelfReferenceChecker11HandleValueEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.h)
  br label %_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEE13VisitCallExprEPNS_8CallExprE.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !2529, !nonnull !805, !align !806
  %i.j = tail call noundef zeroext i1 @_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.i) #28, !inline_history !4240
  br i1 %i.j, label %_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEE13VisitCallExprEPNS_8CallExprE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1), !inline_history !4240
  br label %_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEE13VisitCallExprEPNS_8CallExprE.exit

_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEE13VisitCallExprEPNS_8CallExprE.exit: ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120SelfReferenceChecker24VisitCXXOperatorCallExprEPN5clang19CXXOperatorCallExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !882, !range !816, !noundef !805
  store i8 1, ptr %i.a, align 1, !tbaa !882
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2316 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, 511
  %i.g = icmp eq i16 %i.f, 24
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZNK5clang8CallExpr15isCallToStdMoveEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #28, !inline_history !4242
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %1, align 8
  %i.k = lshr i32 %i.j, 19
  %i.l = and i32 %i.k, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1925
  tail call fastcc void @_ZN12_GLOBAL__N_120SelfReferenceChecker11HandleValueEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.o), !inline_history !4242
  br label %_ZN12_GLOBAL__N_120SelfReferenceChecker13VisitCallExprEPN5clang8CallExprE.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !2529, !nonnull !805, !align !806
  %i.q = tail call noundef zeroext i1 @_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.p) #28, !inline_history !4241
  br i1 %i.q, label %_ZN12_GLOBAL__N_120SelfReferenceChecker13VisitCallExprEPN5clang8CallExprE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1), !inline_history !4241
  br label %_ZN12_GLOBAL__N_120SelfReferenceChecker13VisitCallExprEPN5clang8CallExprE.exit

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.d)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i32, ptr %1, align 8
  %i.t = lshr i32 %i.s, 19
  %i.u = and i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !4244 ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx = shl nuw nsw i64 %i.z, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %.not15 = icmp eq i32 %i.y, 0
  br i1 %.not15, label %_ZN12_GLOBAL__N_120SelfReferenceChecker13VisitCallExprEPN5clang8CallExprE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.sroa.08.016 = phi ptr [ %i.ad, %.lr.ph ], [ %i.w, %bb.f ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.08.016, align 8, !tbaa !2316
  %i.ac = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #30
  tail call fastcc void @_ZN12_GLOBAL__N_120SelfReferenceChecker11HandleValueEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.016, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.aa
  br i1 %.not, label %_ZN12_GLOBAL__N_120SelfReferenceChecker13VisitCallExprEPN5clang8CallExprE.exit, label %.lr.ph

_ZN12_GLOBAL__N_120SelfReferenceChecker13VisitCallExprEPN5clang8CallExprE.exit: ; preds = %.lr.ph, %bb.f, %bb.c, %bb.d, %bb.e
  store i8 %i.b, ptr %i.a, align 1, !tbaa !882
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEE18VisitCXXTypeidExprEPNS_13CXXTypeidExprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5clang13CXXTypeidExpr22isPotentiallyEvaluatedEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #28
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.d = inttoptr i64 %i.c to ptr
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120SelfReferenceChecker21VisitCXXConstructExprEPN5clang16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !813
  %i.d = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl17isCopyConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %1, align 8
  %i.f = and i16 %i.e, 511
  %.not.i.i.i = icmp eq i16 %i.f, 118             ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i, ptr %1, ptr null
  %2 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr %2, ptr %i.g
  %i.h = load ptr, ptr %spec.select.i.i.i, align 8, !tbaa !1925 ; 5 uses
  %i.i = load i16, ptr %i.h, align 8              ; 3 uses
  %i.j = and i16 %i.i, 511
  %.not = icmp eq i16 %i.j, 55
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2238
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !2237 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = and i64 %i.q, 34359738360
  %i.s = icmp eq i64 %i.r, 8
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !2316 ; 2 uses
  %.pre = load i16, ptr %i.t, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.u = phi i16 [ %.pre, %bb.d ], [ %i.i, %bb.c ], [ %i.i, %bb.b ]
  %.0 = phi ptr [ %i.t, %bb.d ], [ %i.h, %bb.c ], [ %i.h, %bb.b ] ; 4 uses
  %i.v = and i16 %i.u, 511
  %.not19 = icmp eq i16 %i.v, 81
  br i1 %.not19, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %.0, align 8
  %i.x = and i32 %i.w, 66584576
  %i.y = icmp eq i32 %i.x, 2621440
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2299
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.1 = phi ptr [ %i.aa, %bb.g ], [ %.0, %bb.f ], [ %.0, %bb.e ]
  call fastcc void @_ZN12_GLOBAL__N_120SelfReferenceChecker11HandleValueEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %.1)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120SelfReferenceChecker19VisitBinaryOperatorEPN5clang14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = lshr i32 %i.a, 19
  %i.c = and i32 %i.b, 62
  %i.d = add nsw i32 %i.c, -22
  %i.e = icmp ult i32 %i.d, 10
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2316
  tail call fastcc void @_ZN12_GLOBAL__N_120SelfReferenceChecker11HandleValueEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2316
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.i)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120SelfReferenceChecker30VisitBinaryConditionalOperatorEPN5clang25BinaryConditionalOperatorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2316
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2316
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.d)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::iterator_range.2382", align 8 ; 6 uses
  %3 = alloca %"struct.clang::StmtIterator", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.2382") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !834    ; 2 uses
  %i.d = icmp ne ptr %i.c, %.sroa.0.0.copyload
  %i.e = load i64, ptr %i.b, align 8              ; 2 uses
  %i.f = icmp ne i64 %i.e, %.sroa.4.0.copyload
  %.not3.i6 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %.not3.i6, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit
  %i.g = phi i64 [ %i.u, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.e, %bb.a ]
  %i.h = phi ptr [ %i.s, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.c, %bb.a ]
  %i.i = and i64 %i.g, 3
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit

_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit: ; preds = %.lr.ph, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.h, %.lr.ph ]
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2316 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.m)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  %i.n = load i64, ptr %i.b, align 8, !tbaa !2361 ; 2 uses
  %i.o = and i64 %i.n, 3
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %3, align 8, !tbaa !834
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.r, ptr %3, align 8, !tbaa !834
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ult i64 %i.n, 4
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5clang16StmtIteratorBase6NextVAEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.h:                                             ; preds = %bb.f
  call void @_ZN5clang16StmtIteratorBase8NextDeclEb(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext true) #28
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit: ; preds = %bb.e, %bb.g, %bb.h
  %i.s = load ptr, ptr %3, align 8, !tbaa !834    ; 2 uses
  %i.t = icmp ne ptr %i.s, %.sroa.0.0.copyload
  %i.u = load i64, ptr %i.b, align 8              ; 2 uses
  %i.v = icmp ne i64 %i.u, %.sroa.4.0.copyload
  %.not3.i = select i1 %i.t, i1 true, i1 %i.v
  br i1 %.not3.i, label %.lr.ph, label %._crit_edge
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120SelfReferenceChecker11HandleValueEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #30 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 511
  %i.d = icmp eq i16 %i.c, 73
  br i1 %i.d, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse.backedge, %bb.a
  %.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.n, %tailrecurse.backedge ]
  tail call fastcc void @_ZN12_GLOBAL__N_120SelfReferenceChecker17HandleDeclRefExprEPN5clang11DeclRefExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %.lcssa)
  br label %.thread63

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.e = phi i16 [ %i.o, %tailrecurse.backedge ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = phi ptr [ %i.n, %tailrecurse.backedge ], [ %i.a, %bb.a ] ; 10 uses
  %i.g = and i16 %i.e, 511
  switch i16 %i.g, label %bb.e [
    i16 132, label %bb.b
    i16 133, label %bb.c
    i16 26, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2316
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_120SelfReferenceCheckerEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.i)
end_hunk_1
