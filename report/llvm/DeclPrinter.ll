Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DeclPrinter?download=true
inline.NumInlined: 4084
inline.NumDeleted: 2398
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_111DeclPrinter17VisitFunctionDeclEPN5clang12FunctionDeclE:bb.a
  %i.acb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.eh

bb.eh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit82.i, %.lr.ph106.i
  %.046105.i = phi i1 [ false, %.lr.ph106.i ], [ %.2.i, %_ZN4llvm11raw_ostreamlsEPKc.exit82.i ] ; 3 uses
  %.048104.i = phi ptr [ %i.abp, %.lr.ph106.i ], [ %i.aif, %_ZN4llvm11raw_ostreamlsEPKc.exit82.i ] ; 2 uses
  %i.ace = load ptr, ptr %.048104.i, align 8, !tbaa !787 ; 6 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 8 ; 2 uses
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !794
  %i.ach = load i16, ptr %i.acg, align 8
  %i.aci = and i16 %i.ach, 511
  %i.acj = icmp eq i16 %i.aci, 115
  br i1 %i.acj, label %_ZN4llvm11raw_ostreamlsEPKc.exit82.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ace, i64 28 ; 3 uses
  %i.acl = load i16, ptr %i.ack, align 4
  %i.acm = and i16 %i.acl, 4
  %.not93.i = icmp eq i16 %i.acm, 0
  br i1 %.not93.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit82.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  br i1 %.046105.i, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.acn = load i64, ptr %i.ib, align 8, !tbaa !542
  %i.aco = add i64 %i.acn, -4611686018427387901
  %i.acp = icmp ult i64 %i.aco, 3
  br i1 %i.acp, label %bb.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

bb.el:                                            ; preds = %bb.ek
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %bb.ek
  %i.acq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.55, i64 noundef 3) #17 ; 0 uses
  %i.acr = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47
  %i.acs = load ptr, ptr %12, align 8, !tbaa !544
  %i.act = load i64, ptr %i.ib, align 8, !tbaa !542
  %i.acu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.acr, ptr noundef %i.acs, i64 noundef %i.act) #17 ; 0 uses
  store i64 0, ptr %i.ib, align 8, !tbaa !542
  %i.acv = load ptr, ptr %12, align 8, !tbaa !544
  store i8 0, ptr %i.acv, align 1, !tbaa !17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i241

bb.em:                                            ; preds = %bb.ej
  %i.acw = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47 ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 24
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !52
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acw, i64 32 ; 3 uses
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !53 ; 2 uses
  %i.adb = ptrtoint ptr %i.acy to i64
  %i.adc = ptrtoint ptr %i.ada to i64
  %i.add = sub i64 %i.adb, %i.adc
  %i.ade = icmp ult i64 %i.add, 2
  br i1 %i.ade, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.adf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.acw, ptr noundef nonnull @.str, i64 noundef 2) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i241

bb.eo:                                            ; preds = %bb.em
  store i16 8236, ptr %i.ada, align 1
  %i.adg = load ptr, ptr %i.acz, align 8, !tbaa !53
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 2
  store ptr %i.adh, ptr %i.acz, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i241

_ZN4llvm11raw_ostreamlsEPKc.exit.i241:            ; preds = %bb.eo, %bb.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ace, align 8 ; 3 uses
  %i.adi = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 6 ; 2 uses
  switch i64 %i.adi, label %bb.er [
    i64 2, label %bb.ep
    i64 4, label %bb.eq
  ]

bb.ep:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i241
  %i.adj = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -7
  %i.adk = inttoptr i64 %i.adj to ptr
  br label %_ZNK5clang18CXXCtorInitializer12getAnyMemberEv.exit.i

bb.eq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i241
  %i.adl = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -7
  %i.adm = inttoptr i64 %i.adl to ptr             ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 56
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !797
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adm, i64 64
  %i.adq = load i32, ptr %i.adp, align 8, !tbaa !798
  %i.adr = zext i32 %i.adq to i64
  %i.ads = getelementptr [8 x i8], ptr %i.ado, i64 %i.adr
  %i.adt = getelementptr i8, ptr %i.ads, i64 -8
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !45
  br label %_ZNK5clang18CXXCtorInitializer12getAnyMemberEv.exit.i

_ZNK5clang18CXXCtorInitializer12getAnyMemberEv.exit.i: ; preds = %bb.eq, %bb.ep
  %.0.i.i242 = phi ptr [ %i.adk, %bb.ep ], [ %i.adu, %bb.eq ]
  %i.adv = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47
  call void @_ZNK5clang9NamedDecl9printNameERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i242, ptr noundef nonnull align 8 dereferenceable(48) %i.adv) #17
  br label %bb.eu

bb.er:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i241
  %i.adw = icmp eq i64 %i.adi, 0
  %i.adx = load i16, ptr %i.ack, align 4
  %i.ady = trunc i16 %i.adx to i1
  %i.adz = select i1 %i.adw, i1 %i.ady, i1 false
  %i.aea = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47 ; 2 uses
  br i1 %i.adz, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNK5clang15DeclarationName11getAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.abx) #17
  %i.aeb = load ptr, ptr %2, align 8, !tbaa !544
  %i.aec = load i64, ptr %i.aby, align 8, !tbaa !542
  %i.aed = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aea, ptr noundef %i.aeb, i64 noundef %i.aec) #17 ; 0 uses
  %i.aee = load ptr, ptr %2, align 8, !tbaa !544  ; 2 uses
  %i.aef = icmp eq ptr %i.aee, %i.abz
  br i1 %i.aef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i248: ; preds = %bb.es
  %i.aeg = load i64, ptr %i.abz, align 8, !tbaa !17
  %i.aeh = add i64 %i.aeg, 1
  call void @_ZdlPvm(ptr noundef %i.aee, i64 noundef %i.aeh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.eu

bb.et:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.aei = call noundef ptr @_ZNK5clang18CXXCtorInitializer12getBaseClassEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ace) #17
  %i.aej = ptrtoint ptr %i.aei to i64
  %i.aek = and i64 %i.aej, -8
  store i64 %i.aek, ptr %4, align 8
  call void @_ZNK5clang8QualType11getAsStringB5cxx11ERKNS_14PrintingPolicyE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #17
  %i.ael = load ptr, ptr %3, align 8, !tbaa !544
  %i.aem = load i64, ptr %i.abv, align 8, !tbaa !542
  %i.aen = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aea, ptr noundef %i.ael, i64 noundef %i.aem) #17 ; 0 uses
  %i.aeo = load ptr, ptr %3, align 8, !tbaa !544  ; 2 uses
  %i.aep = icmp eq ptr %i.aeo, %i.abw
  br i1 %i.aep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i: ; preds = %bb.et
  %i.aeq = load i64, ptr %i.abw, align 8, !tbaa !17
  %i.aer = add i64 %i.aeq, 1
  call void @_ZdlPvm(ptr noundef %i.aeo, i64 noundef %i.aer) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.eu

bb.eu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNK5clang18CXXCtorInitializer12getAnyMemberEv.exit.i
  %i.aes = load ptr, ptr %i.acf, align 8, !tbaa !794 ; 5 uses
  %.not52.i = icmp eq ptr %i.aes, null
  br i1 %.not52.i, label %bb.fl, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aet = load i16, ptr %i.aes, align 8
  %i.aeu = and i16 %i.aet, 511
  %i.aev = icmp eq i16 %i.aeu, 55                 ; 2 uses
  br i1 %i.aev, label %_ZN4llvm11raw_ostreamlsEPKc.exit65.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aew = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47 ; 3 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 24
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !52
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aew, i64 32 ; 3 uses
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !53 ; 2 uses
  %i.afb = icmp eq ptr %i.aey, %i.afa
  br i1 %i.afb, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.afc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aew, ptr noundef nonnull @.str.29, i64 noundef 1) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65.i

bb.ey:                                            ; preds = %bb.ew
  store i8 40, ptr %i.afa, align 1
  %i.afd = load ptr, ptr %i.aez, align 8, !tbaa !53
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 1
  store ptr %i.afe, ptr %i.aez, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65.i

_ZN4llvm11raw_ostreamlsEPKc.exit65.i:             ; preds = %bb.ey, %bb.ex, %bb.ev
  %i.aff = load i16, ptr %i.aes, align 8
  %i.afg = and i16 %i.aff, 511
  %.not95.i = icmp eq i16 %i.afg, 62
  br i1 %.not95.i, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit65.i
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aes, i64 16
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !800
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %_ZN4llvm11raw_ostreamlsEPKc.exit65.i
  %.087.i = phi ptr [ %i.aes, %_ZN4llvm11raw_ostreamlsEPKc.exit65.i ], [ %i.afi, %bb.ez ]
  %i.afj = call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.087.i) #16 ; 4 uses
  %i.afk = load i16, ptr %i.afj, align 8
  %i.afl = and i16 %i.afk, 511                    ; 3 uses
  %.not97.i = icmp eq i16 %i.afl, 19
  br i1 %.not97.i, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.afm = add nsw i16 %i.afl, -119
  %spec.select.i.i.i.i.i.i.i.i.i243 = icmp ult i16 %i.afm, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i243, label %bb.fe, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %.not.i.i.i244 = icmp eq i16 %i.afl, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i244, i64 48, i64 40
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fa
  %.sink.i = phi i64 [ 32, %bb.fc ], [ 4, %bb.fa ]
  %38 = phi i64 [ %spec.select.v.i.i.i, %bb.fc ], [ 24, %bb.fa ]
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afj, i64 %.sink.i
  %.1.i245 = load i32, ptr %i.afn, align 4, !tbaa !17 ; 3 uses
  %39 = getelementptr inbounds nuw i8, ptr %i.afj, i64 %38 ; 2 uses
  %.not57100.i = icmp eq i32 %.1.i245, 0
  br i1 %.not57100.i, label %.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.fd
  %i.afo = zext i32 %.1.i245 to i64
  %i.afp = load ptr, ptr %39, align 8, !tbaa !55  ; 2 uses
  %i.afq = load i16, ptr %i.afp, align 8
  %i.afr = and i16 %i.afq, 511
  %i.afs = icmp eq i16 %i.afr, 116
  br i1 %i.afs, label %.loopexit.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit71.peel.i

_ZN4llvm11raw_ostreamlsEPKc.exit71.peel.i:        ; preds = %.lr.ph.preheader.i
  %.pre.i246 = load ptr, ptr %0, align 8, !tbaa !43
  %.pre110.i = load ptr, ptr %i.acc, align 8, !tbaa !60
  %.pre109.i = load i32, ptr %i.aca, align 8, !tbaa !26
  store ptr @.str.4, ptr %6, align 8, !tbaa !58
  store i64 1, ptr %i.acd, align 8, !tbaa !59
  call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.afp, ptr noundef nonnull align 8 dereferenceable(48) %.pre.i246, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i32 noundef %.pre109.i, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %6, ptr noundef nonnull %.pre110.i) #17
  %.not57.peel.i = icmp eq i32 %.1.i245, 1
  br i1 %.not57.peel.i, label %.loopexit.i, label %.lr.ph.i

bb.fe:                                            ; preds = %bb.fb
  %i.aft = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47
  %i.afu = load i32, ptr %i.aca, align 8, !tbaa !26
  store ptr @.str.4, ptr %5, align 8, !tbaa !58
  store i64 1, ptr %i.acb, align 8, !tbaa !59
  %i.afv = load ptr, ptr %i.acc, align 8, !tbaa !60, !nonnull !46, !align !47
  call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.afj, ptr noundef nonnull align 8 dereferenceable(48) %i.aft, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i32 noundef %i.afu, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %5, ptr noundef nonnull %i.afv) #17
  br label %.loopexit.i

.lr.ph.i:                                         ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit71.peel.i, %_ZN4llvm11raw_ostreamlsEPKc.exit71.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN4llvm11raw_ostreamlsEPKc.exit71.i ], [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit71.peel.i ] ; 2 uses
  %i.afw = getelementptr inbounds nuw [8 x i8], ptr %39, i64 %indvars.iv.i ; 2 uses
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !55
  %i.afy = load i16, ptr %i.afx, align 8
  %i.afz = and i16 %i.afy, 511
  %i.aga = icmp eq i16 %i.afz, 116
  br i1 %i.aga, label %.loopexit.i, label %bb.ff

bb.ff:                                            ; preds = %.lr.ph.i
  %i.agb = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47 ; 3 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 24
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !52
  %i.age = getelementptr inbounds nuw i8, ptr %i.agb, i64 32 ; 3 uses
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !53 ; 2 uses
  %i.agg = ptrtoint ptr %i.agd to i64
  %i.agh = ptrtoint ptr %i.agf to i64
  %i.agi = sub i64 %i.agg, %i.agh
  %i.agj = icmp ult i64 %i.agi, 2
  br i1 %i.agj, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.agk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.agb, ptr noundef nonnull @.str, i64 noundef 2) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71.i

bb.fh:                                            ; preds = %bb.ff
  store i16 8236, ptr %i.agf, align 1
  %i.agl = load ptr, ptr %i.age, align 8, !tbaa !53
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 2
  store ptr %i.agm, ptr %i.age, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71.i

_ZN4llvm11raw_ostreamlsEPKc.exit71.i:             ; preds = %bb.fh, %bb.fg
  %i.agn = load ptr, ptr %i.afw, align 8, !tbaa !55
  %i.ago = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47
  %i.agp = load i32, ptr %i.aca, align 8, !tbaa !26
  store ptr @.str.4, ptr %6, align 8, !tbaa !58
  store i64 1, ptr %i.acd, align 8, !tbaa !59
  %i.agq = load ptr, ptr %i.acc, align 8, !tbaa !60, !nonnull !46, !align !47
  call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.agn, ptr noundef nonnull align 8 dereferenceable(48) %i.ago, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i32 noundef %i.agp, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %6, ptr noundef nonnull %i.agq) #17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not57.i = icmp eq i64 %indvars.iv.next.i, %i.afo
  br i1 %.not57.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !776

.loopexit.i:                                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit71.i, %.lr.ph.i, %bb.fe, %_ZN4llvm11raw_ostreamlsEPKc.exit71.peel.i, %.lr.ph.preheader.i, %bb.fd
  br i1 %i.aev, label %_ZN4llvm11raw_ostreamlsEPKc.exit74.i, label %bb.fi

bb.fi:                                            ; preds = %.loopexit.i
  %i.agr = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47 ; 3 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 24
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !52
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agr, i64 32 ; 3 uses
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !53 ; 2 uses
  %i.agw = icmp eq ptr %i.agt, %i.agv
  br i1 %i.agw, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.agx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.agr, ptr noundef nonnull @.str.27, i64 noundef 1) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74.i

bb.fk:                                            ; preds = %bb.fi
  store i8 41, ptr %i.agv, align 1
  %i.agy = load ptr, ptr %i.agu, align 8, !tbaa !53
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 1
  store ptr %i.agz, ptr %i.agu, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74.i

bb.fl:                                            ; preds = %bb.eu
  %i.aha = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47 ; 3 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !52
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.aha, i64 32 ; 3 uses
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !53 ; 2 uses
  %i.ahf = ptrtoint ptr %i.ahc to i64
  %i.ahg = ptrtoint ptr %i.ahe to i64
  %i.ahh = sub i64 %i.ahf, %i.ahg
  %i.ahi = icmp ult i64 %i.ahh, 2
  br i1 %i.ahi, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.ahj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aha, ptr noundef nonnull @.str.101, i64 noundef 2) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74.i

bb.fn:                                            ; preds = %bb.fl
  store i16 10536, ptr %i.ahe, align 1
  %i.ahk = load ptr, ptr %i.ahd, align 8, !tbaa !53
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 2
  store ptr %i.ahl, ptr %i.ahd, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74.i

_ZN4llvm11raw_ostreamlsEPKc.exit74.i:             ; preds = %bb.fn, %bb.fm, %bb.fk, %bb.fj, %.loopexit.i
  %.0.copyload.i.i.i.i.i.i.i78.i = load i64, ptr %i.ace, align 8
  %i.ahm = and i64 %.0.copyload.i.i.i.i.i.i.i78.i, 6
  %i.ahn = icmp eq i64 %i.ahm, 0
  %i.aho = load i16, ptr %i.ack, align 4
  %i.ahp = and i16 %i.aho, 1
  %.not.i.i79.i = icmp eq i16 %i.ahp, 0
  %i.ahq = select i1 %i.ahn, i1 %.not.i.i79.i, i1 false
  br i1 %i.ahq, label %_ZNK5clang18CXXCtorInitializer15isPackExpansionEv.exit.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit82.i

_ZNK5clang18CXXCtorInitializer15isPackExpansionEv.exit.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74.i
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ace, i64 16
  %i.ahs = load i32, ptr %i.ahr, align 8, !tbaa !566
  %.not99.i = icmp eq i32 %i.ahs, 0
  br i1 %.not99.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit82.i, label %bb.fo

bb.fo:                                            ; preds = %_ZNK5clang18CXXCtorInitializer15isPackExpansionEv.exit.i
  %i.aht = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47 ; 3 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 24
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !52
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aht, i64 32 ; 3 uses
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !53 ; 2 uses
  %i.ahy = ptrtoint ptr %i.ahv to i64
  %i.ahz = ptrtoint ptr %i.ahx to i64
  %i.aia = sub i64 %i.ahy, %i.ahz
  %i.aib = icmp ult i64 %i.aia, 3
  br i1 %i.aib, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.aic = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aht, ptr noundef nonnull @.str.17, i64 noundef 3) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit82.i

bb.fq:                                            ; preds = %bb.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ahx, ptr noundef nonnull align 1 dereferenceable(3) @.str.17, i64 3, i1 false)
  %i.aid = load ptr, ptr %i.ahw, align 8, !tbaa !53
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 3
  store ptr %i.aie, ptr %i.ahw, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit82.i

_ZN4llvm11raw_ostreamlsEPKc.exit82.i:             ; preds = %bb.fq, %bb.fp, %_ZNK5clang18CXXCtorInitializer15isPackExpansionEv.exit.i, %_ZN4llvm11raw_ostreamlsEPKc.exit74.i, %bb.ei, %bb.eh
  %.2.i = phi i1 [ %.046105.i, %bb.eh ], [ %.046105.i, %bb.ei ], [ true, %bb.fq ], [ true, %_ZNK5clang18CXXCtorInitializer15isPackExpansionEv.exit.i ], [ true, %bb.fp ], [ true, %_ZN4llvm11raw_ostreamlsEPKc.exit74.i ]
  %i.aif = getelementptr inbounds nuw i8, ptr %.048104.i, i64 8 ; 2 uses
  %.not.i247 = icmp eq ptr %i.aif, %i.abu
  br i1 %.not.i247, label %_ZN12_GLOBAL__N_111DeclPrinter28PrintConstructorInitializersEPN5clang18CXXConstructorDeclERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.eh

_ZN12_GLOBAL__N_111DeclPrinter28PrintConstructorInitializersEPN5clang18CXXConstructorDeclERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit82.i, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ga

bb.fr:                                            ; preds = %.critedge122
  %i.aig = load i32, ptr %i.az, align 4
  %i.aih = and i32 %i.aig, 127
  %i.aii = icmp eq i32 %i.aih, 37
  br i1 %i.aii, label %bb.ga, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  br i1 %.not104, label %bb.fz, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aij = getelementptr inbounds nuw i8, ptr %.073, i64 16
  %i.aik = load i64, ptr %i.aij, align 16
  %i.ail = and i64 %i.aik, 4294967296
  %.not373 = icmp eq i64 %i.ail, 0
  br i1 %.not373, label %bb.fz, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  br i1 %.not363, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aim = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47
  %i.ain = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.aim, ptr noundef nonnull @.str.93) ; 0 uses
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.aio = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47
  %i.aip = load ptr, ptr %12, align 8, !tbaa !544
  %i.aiq = load i64, ptr %i.ib, align 8, !tbaa !542
  %i.air = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aio, ptr noundef %i.aip, i64 noundef %i.aiq) #17 ; 3 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 24
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !52
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.air, i64 32 ; 3 uses
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !53 ; 2 uses
  %i.aiw = ptrtoint ptr %i.ait to i64
  %i.aix = ptrtoint ptr %i.aiv to i64
  %i.aiy = sub i64 %i.aiw, %i.aix
  %i.aiz = icmp ult i64 %i.aiy, 4
  br i1 %i.aiz, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.aja = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.air, ptr noundef nonnull @.str.94, i64 noundef 4) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit516

bb.fy:                                            ; preds = %bb.fw
  store i32 540945696, ptr %i.aiv, align 1
  %i.ajb = load ptr, ptr %i.aiu, align 8, !tbaa !53
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 4
  store ptr %i.ajc, ptr %i.aiu, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit516

_ZN4llvm11raw_ostreamlsEPKc.exit516:              ; preds = %bb.fx, %bb.fy
  store i64 0, ptr %i.ib, align 8, !tbaa !542
  %i.ajd = load ptr, ptr %12, align 8, !tbaa !544
  store i8 0, ptr %i.ajd, align 1, !tbaa !17
  br label %bb.fz

bb.fz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit516, %bb.ft, %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17
  %i.aje = getelementptr inbounds nuw i8, ptr %.1.i350, i64 24
  %.sroa.0.0.copyload.i250 = load i64, ptr %i.aje, align 8, !tbaa !17
  store i64 %.sroa.0.0.copyload.i250, ptr %31, align 8
  %i.ajf = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #17
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_111DeclPrinter12VisitVarDeclEPN5clang7VarDeclE:bb.a
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = icmp ult i64 %i.fu, 10
  br i1 %i.fv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fn, ptr noundef nonnull @.str.82, i64 noundef 10) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit58

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.fr, ptr noundef nonnull align 1 dereferenceable(10) @.str.82, i64 10, i1 false)
  %i.fx = load ptr, ptr %i.fq, align 8, !tbaa !53
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 10
  store ptr %i.fy, ptr %i.fq, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit58

_ZN4llvm11raw_ostreamlsEPKc.exit58:               ; preds = %bb.ak, %bb.al
  %i.fz = and i64 %storemerge, -2
  br label %bb.am

bb.am:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit54, %_ZN4llvm11raw_ostreamlsEPKc.exit58, %_ZNK5clang10ASTContext29getUnqualifiedObjCPointerTypeENS_8QualTypeE.exit
  %.sroa.0.0111 = phi i64 [ %i.fz, %_ZN4llvm11raw_ostreamlsEPKc.exit58 ], [ %storemerge, %_ZN4llvm11raw_ostreamlsEPKc.exit54 ], [ %storemerge, %_ZNK5clang10ASTContext29getUnqualifiedObjCPointerTypeENS_8QualTypeE.exit ] ; 2 uses
  %i.ga = load i32, ptr %i.v, align 4
  %i.gb = and i32 %i.ga, 127
  %i.gc = icmp eq i32 %i.gb, 44
  br i1 %i.gc, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.gd = load i64, ptr %i.cc, align 8
  %i.ge = and i64 %i.gd, 17592186044416
  %.not18 = icmp eq i64 %i.ge, 0
  br i1 %.not18, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !103 ; 2 uses
  %i.gh = and i64 %i.gg, 7
  %i.gi = icmp ne i64 %i.gh, 0
  %i.gj = and i64 %i.gg, -8                       ; 2 uses
  %.not19116 = icmp eq i64 %i.gj, 0
  %.not19 = or i1 %i.gi, %.not19116
  br i1 %.not19, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gk = inttoptr i64 %i.gj to ptr
  %i.gl = call { ptr, i64 } @_ZNK5clang14IdentifierInfo14deuglifiedNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gk) #17
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !103 ; 2 uses
  %i.go = and i64 %i.gn, 7
  %i.gp = icmp ne i64 %i.go, 0
  %i.gq = and i64 %i.gn, -8                       ; 2 uses
  %.not2.i = icmp eq i64 %i.gq, 0
  %.not.i62 = or i1 %i.gp, %.not2.i
  br i1 %.not.i62, label %_ZNK5clang9NamedDecl7getNameEv.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gr = inttoptr i64 %i.gq to ptr
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !106 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !108
  %i.gw = and i64 %i.gv, 4294967295
  br label %_ZNK5clang9NamedDecl7getNameEv.exit

_ZNK5clang9NamedDecl7getNameEv.exit:              ; preds = %bb.aq, %bb.ar
  %.sroa.3.0.i = phi i64 [ %i.gw, %bb.ar ], [ 0, %bb.aq ]
  %.sroa.0.0.i = phi ptr [ %i.gu, %bb.ar ], [ @.str.18, %bb.aq ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.3.0.i, 1
  br label %bb.as

bb.as:                                            ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit, %bb.ap
  %.pn = phi { ptr, i64 } [ %i.gl, %bb.ap ], [ %.fca.1.insert.i, %_ZNK5clang9NamedDecl7getNameEv.exit ] ; 2 uses
  %.sroa.0.0 = extractvalue { ptr, i64 } %.pn, 0
  %.sroa.3.0 = extractvalue { ptr, i64 } %.pn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0111, ptr %2, align 8
  %i.gx = and i64 %.sroa.0.0111, -16
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = load ptr, ptr %i.gy, align 16, !tbaa !80 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load i8, ptr %i.ha, align 16
  %.not.i.i63 = icmp eq i8 %i.hb, 36
  br i1 %.not.i.i63, label %.thread.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i64 = load i64, ptr %i.hc, align 8, !tbaa !17
  %i.hd = and i64 %.sroa.0.0.copyload.i.i.i.i.i64, -16
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = load ptr, ptr %i.he, align 16, !tbaa !80
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load i8, ptr %i.hg, align 16
  %i.hi = icmp eq i8 %i.hh, 36
  br i1 %i.hi, label %_ZNK5clang4Type5getAsINS_17PackExpansionTypeEEEPKT_v.exit.i, label %_ZN12_GLOBAL__N_111DeclPrinter13printDeclTypeEN5clang8QualTypeEN4llvm9StringRefEb.exit

_ZNK5clang4Type5getAsINS_17PackExpansionTypeEEEPKT_v.exit.i: ; preds = %bb.at
  %i.hj = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.gz) #17 ; 2 uses
  %.not.i65 = icmp eq ptr %i.hj, null
  br i1 %.not.i65, label %_ZN12_GLOBAL__N_111DeclPrinter13printDeclTypeEN5clang8QualTypeEN4llvm9StringRefEb.exit, label %.thread.i

.thread.i:                                        ; preds = %_ZNK5clang4Type5getAsINS_17PackExpansionTypeEEEPKT_v.exit.i, %bb.as
  %.1.i12.i = phi ptr [ %i.hj, %_ZNK5clang4Type5getAsINS_17PackExpansionTypeEEEPKT_v.exit.i ], [ %i.gz, %bb.as ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.1.i12.i, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.hk, align 16, !tbaa !17
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !tbaa !17
  br label %_ZN12_GLOBAL__N_111DeclPrinter13printDeclTypeEN5clang8QualTypeEN4llvm9StringRefEb.exit

_ZN12_GLOBAL__N_111DeclPrinter13printDeclTypeEN5clang8QualTypeEN4llvm9StringRefEb.exit: ; preds = %_ZNK5clang4Type5getAsINS_17PackExpansionTypeEEEPKT_v.exit.i, %bb.at, %.thread.i
  %i.hl = phi ptr [ @.str.17, %.thread.i ], [ @.str.18, %bb.at ], [ @.str.18, %_ZNK5clang4Type5getAsINS_17PackExpansionTypeEEEPKT_v.exit.i ]
  %i.hm = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.hn, align 8, !tbaa !118, !alias.scope !813
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 5, ptr %i.ho, align 1, !tbaa !119, !alias.scope !813
  store ptr %i.hl, ptr %3, align 8, !tbaa !17, !alias.scope !813
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sroa.0.0, ptr %i.hp, align 8, !tbaa !17, !alias.scope !813
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.sroa.3.0, ptr %i.hq, align 8, !tbaa !17, !alias.scope !813
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !26
  call void @_ZNK5clang8QualType5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS1_5TwineEj(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.hm, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 noundef %i.hs) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call fastcc void @_ZN12_GLOBAL__N_111DeclPrinter21prettyPrintAttributesB5cxx11EPKN5clang4DeclENS0_16AttrPosAsWrittenE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef nonnull %1, i32 noundef 2)
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !546, !range !115, !noundef !46
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.au, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit71

bb.au:                                            ; preds = %_ZN12_GLOBAL__N_111DeclPrinter13printDeclTypeEN5clang8QualTypeEN4llvm9StringRefEb.exit
  %i.hw = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 32 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !53 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !52
  %.not.i66 = icmp ult ptr %i.hy, %i.ia
  br i1 %.not.i66, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ib = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.hw, i8 noundef zeroext 32) #17
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  store ptr %i.ic, ptr %i.hx, align 8, !tbaa !53
  store i8 32, ptr %i.hy, align 1, !tbaa !17
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0.i67 = phi ptr [ %i.ib, %bb.av ], [ %i.hw, %bb.aw ]
  %i.id = load ptr, ptr %5, align 8, !tbaa !544
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !542
  %i.ig = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i67, ptr noundef %i.id, i64 noundef %i.if) #17 ; 0 uses
  %.pre = load i8, ptr %i.ht, align 8, !tbaa !546, !range !115
  %i.ih = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.ht, align 8, !tbaa !546
  br i1 %i.ih, label %bb.ay, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit71

bb.ay:                                            ; preds = %bb.ax
  %i.ii = load ptr, ptr %5, align 8, !tbaa !544   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i69: ; preds = %bb.ay
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !17
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #19
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit71

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit71: ; preds = %bb.ay, %_ZN12_GLOBAL__N_111DeclPrinter13printDeclTypeEN5clang8QualTypeEN4llvm9StringRefEb.exit, %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.in = call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #17 ; 5 uses
  %i.io = load i64, ptr %i.cc, align 8
  %i.ip = and i64 %i.io, 65536
  %i.iq = icmp eq i64 %i.ip, 0
  %i.ir = icmp ne ptr %i.in, null
  %or.cond = and i1 %i.ir, %i.iq
  br i1 %or.cond, label %bb.az, label %.critedge

bb.az:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit71
  %i.is = load i32, ptr %i.v, align 4
  %i.it = and i32 %i.is, 127
  %i.iu = icmp ne i32 %i.it, 44
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.iw = load i16, ptr %i.iv, align 8            ; 2 uses
  %i.ix = and i16 %i.iw, 2048
  %i.iy = icmp ne i16 %i.ix, 0
  %i.iz = select i1 %i.iu, i1 %i.iy, i1 false
  %i.ja = trunc i16 %i.iw to i8                   ; 3 uses
  br i1 %i.iz, label %.critedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jb = call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #16 ; 4 uses
  %i.jc = load i16, ptr %i.jb, align 8
  %i.jd = and i16 %i.jc, 511
  %i.je = add nsw i16 %i.jd, -117
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i16 %i.je, 2
  %i.jf = and i8 %i.ja, 96
  %i.jg = icmp eq i8 %i.jf, 32
  %or.cond139 = select i1 %spec.select.i.i.i.i.i.i.i.i, i1 %i.jg, i1 false
  br i1 %or.cond139, label %bb.bb, label %.critedge23

bb.bb:                                            ; preds = %bb.ba
  %i.jh = load i32, ptr %i.jb, align 8            ; 2 uses
  %i.ji = and i32 %i.jh, 2097152
  %.not118 = icmp eq i32 %i.ji, 0
  br i1 %.not118, label %bb.bc, label %.critedge23

bb.bc:                                            ; preds = %bb.bb
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !816
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %.critedge, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jm = and i32 %i.jh, 511
  %.not.i.i.i73 = icmp eq i32 %i.jm, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i73, i64 48, i64 40
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jb, i64 %spec.select.v.i.i.i
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !55
  %i.jp = call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #17
  br i1 %i.jp, label %.critedge, label %..critedge23_crit_edge

..critedge23_crit_edge:                           ; preds = %bb.bd
  %.pre119 = load i8, ptr %i.iv, align 8
  br label %.critedge23

.critedge23:                                      ; preds = %..critedge23_crit_edge, %bb.bb, %bb.ba
  %i.jq = phi i8 [ %.pre119, %..critedge23_crit_edge ], [ %i.ja, %bb.bb ], [ %i.ja, %bb.ba ]
  %i.jr = lshr i8 %i.jq, 5
  %i.js = and i8 %i.jr, 3
  switch i8 %i.js, label %_ZN4llvm11raw_ostreamlsEPKc.exit77 [
    i8 1, label %bb.be
    i8 0, label %bb.bi
  ]

bb.be:                                            ; preds = %.critedge23
  %i.jt = load i16, ptr %i.in, align 8
  %i.ju = and i16 %i.jt, 511
  %i.jv = icmp eq i16 %i.ju, 19
  br i1 %i.jv, label %_ZN4llvm11raw_ostreamlsEPKc.exit77, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jw = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !52
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 32 ; 3 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !53 ; 2 uses
  %i.kb = icmp eq ptr %i.jy, %i.ka
  br i1 %i.kb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.jw, ptr noundef nonnull @.str.29, i64 noundef 1) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit77

bb.bh:                                            ; preds = %bb.bf
  store i8 40, ptr %i.ka, align 1
  %i.kd = load ptr, ptr %i.jz, align 8, !tbaa !53
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  store ptr %i.ke, ptr %i.jz, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit77

bb.bi:                                            ; preds = %.critedge23
  %i.kf = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !52
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 32 ; 3 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !53 ; 2 uses
  %i.kk = ptrtoint ptr %i.kh to i64
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = icmp ult i64 %i.km, 3
  br i1 %i.kn, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ko = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.kf, ptr noundef nonnull @.str.16, i64 noundef 3) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit77

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kj, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false)
  %i.kp = load ptr, ptr %i.ki, align 8, !tbaa !53
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 3
  store ptr %i.kq, ptr %i.ki, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit77

_ZN4llvm11raw_ostreamlsEPKc.exit77:               ; preds = %.critedge23, %bb.be, %bb.bk, %bb.bj, %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !20
  %i.kr = load i64, ptr %6, align 8
  %i.ks = and i64 %i.kr, -257
  store i64 %i.ks, ptr %6, align 8
  %i.kt = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47
  %i.ku = load i32, ptr %i.hr, align 8, !tbaa !26
  store ptr @.str.4, ptr %7, align 8, !tbaa !58
  %i.kv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.kv, align 8, !tbaa !59
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !60, !nonnull !46, !align !47
  call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.in, ptr noundef nonnull align 8 dereferenceable(48) %i.kt, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.ku, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %7, ptr noundef nonnull %i.kx) #17
  %i.ky = load i8, ptr %i.iv, align 8
  %i.kz = and i8 %i.ky, 96
  %i.la = icmp eq i8 %i.kz, 32
  br i1 %i.la, label %bb.bl, label %_ZN4llvm11raw_ostreamlsEPKc.exit86

bb.bl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit77
  %i.lb = load i16, ptr %i.in, align 8
  %i.lc = and i16 %i.lb, 511
  %i.ld = icmp eq i16 %i.lc, 19
  br i1 %i.ld, label %_ZN4llvm11raw_ostreamlsEPKc.exit86, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.le = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !52
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 32 ; 3 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !53 ; 2 uses
  %i.lj = icmp eq ptr %i.lg, %i.li
  br i1 %i.lj, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.lk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.le, ptr noundef nonnull @.str.27, i64 noundef 1) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit86

bb.bo:                                            ; preds = %bb.bm
  store i8 41, ptr %i.li, align 1
  %i.ll = load ptr, ptr %i.lh, align 8, !tbaa !53
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 1
  store ptr %i.lm, ptr %i.lh, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit86

_ZN4llvm11raw_ostreamlsEPKc.exit86:               ; preds = %bb.bo, %bb.bn, %bb.bl, %_ZN4llvm11raw_ostreamlsEPKc.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.critedge

.critedge:                                        ; preds = %bb.bd, %_ZN4llvm11raw_ostreamlsEPKc.exit86, %bb.bc, %bb.az, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit71
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111DeclPrinter24VisitOMPCapturedExprDeclEPN5clang19OMPCapturedExprDeclE(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %i.a = tail call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #17
  %i.b = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26
  store ptr @.str.4, ptr %2, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.f, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60, !nonnull !46, !align !47
  tail call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.e, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %2, ptr noundef nonnull %i.h) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111DeclPrinter14VisitFieldDeclEPN5clang9FieldDeclE(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %6 = alloca %"class.std::optional.986", align 8 ; 8 uses
  tail call fastcc void @_ZN12_GLOBAL__N_111DeclPrinter18prettyPrintPragmasEPN5clang4DeclE(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 256
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 2
  %.not35 = icmp eq i32 %i.f, 0
  br i1 %.not35, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, 8
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull @.str.106, i64 noundef 8) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.c
  store i64 2334391151659087213, ptr %i.k, align 1
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.r, ptr %i.j, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %i.s = load i64, ptr %i.a, align 8
  %i.t = and i64 %i.s, 256
  %.not16 = icmp eq i64 %i.t, 0
  br i1 %.not16, label %bb.f, label %_ZN4llvm11raw_ostreamlsEPKc.exit19

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.u, align 8
  %i.v = and i64 %.0.copyload.i.i.i.i.i, 7
  %i.w = icmp eq i64 %i.v, 5
  br i1 %i.w, label %bb.g, label %_ZN4llvm11raw_ostreamlsEPKc.exit19

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !46, !align !47 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53 ; 2 uses
end_hunk_1
