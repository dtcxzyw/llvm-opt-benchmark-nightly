Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpRestoIterateInitializer?download=true
inline.NumInlined: 586
inline.NumDeleted: 161
begin_hunk_0_@_ZN5Ipopt23RestoIterateInitializer18SetInitialIteratesEv:bb.a
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.aax = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i311, i64 168
  %i.aay = load i32, ptr %i.aax, align 8, !tbaa !66
  %i.aaz = icmp eq i32 %i.zd, %i.aay
  br i1 %i.aaz, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.aba = getelementptr inbounds nuw i8, ptr %i.yg, i64 48
  %i.abb = load i32, ptr %i.aba, align 8, !tbaa !56
  %i.abc = getelementptr inbounds nuw i8, ptr %i.yg, i64 168
  store i32 %i.abb, ptr %i.abc, align 8, !tbaa !66
  %i.abd = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i311, i64 176
  %i.abe = load double, ptr %i.abd, align 8, !tbaa !67
  %i.abf = getelementptr inbounds nuw i8, ptr %i.yg, i64 176
  store double %i.abe, ptr %i.abf, align 8, !tbaa !67
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.abg = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i311, i64 184
  %i.abh = load i32, ptr %i.abg, align 8, !tbaa !68
  %i.abi = icmp eq i32 %i.zd, %i.abh
  br i1 %i.abi, label %bb.eg, label %_ZN5Ipopt6Vector4CopyERKS0_.exit318

bb.eg:                                            ; preds = %bb.ef
  %i.abj = getelementptr inbounds nuw i8, ptr %i.yg, i64 48
  %i.abk = load i32, ptr %i.abj, align 8, !tbaa !56
  %i.abl = getelementptr inbounds nuw i8, ptr %i.yg, i64 184
  store i32 %i.abk, ptr %i.abl, align 8, !tbaa !68
  %i.abm = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i311, i64 192
  %i.abn = load double, ptr %i.abm, align 8, !tbaa !69
  %i.abo = getelementptr inbounds nuw i8, ptr %i.yg, i64 192
  store double %i.abn, ptr %i.abo, align 8, !tbaa !69
  br label %_ZN5Ipopt6Vector4CopyERKS0_.exit318

_ZN5Ipopt6Vector4CopyERKS0_.exit318:              ; preds = %bb.ef, %bb.eg
  %i.abp = load i32, ptr %i.yw, align 8, !tbaa !13
  %i.abq = add nsw i32 %i.abp, -1                 ; 2 uses
  store i32 %i.abq, ptr %i.yw, align 8, !tbaa !13
  %i.abr = icmp eq i32 %i.abq, 0
  br i1 %i.abr, label %bb.eh, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit320

bb.eh:                                            ; preds = %_ZN5Ipopt6Vector4CopyERKS0_.exit318
  %i.abs = load ptr, ptr %.0.i3.i.i.i311, align 8, !tbaa !15
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  %i.abu = load ptr, ptr %i.abt, align 8
  call void %i.abu(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i311) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit320

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit320:     ; preds = %bb.eh, %_ZN5Ipopt6Vector4CopyERKS0_.exit318
  %i.abv = getelementptr inbounds nuw i8, ptr %i.yk, i64 8 ; 2 uses
  %i.abw = load i32, ptr %i.abv, align 8, !tbaa !13
  %i.abx = add nsw i32 %i.abw, -1                 ; 2 uses
  store i32 %i.abx, ptr %i.abv, align 8, !tbaa !13
  %i.aby = icmp eq i32 %i.abx, 0
  br i1 %i.aby, label %bb.ei, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit322

bb.ei:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit320
  %i.abz = load ptr, ptr %i.yk, align 8, !tbaa !15
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.acb = load ptr, ptr %i.aca, align 8
  call void %i.acb(ptr noundef nonnull align 8 dereferenceable(280) %i.yk) #8, !inline_history !91
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit322

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit322: ; preds = %bb.ei, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit320
  %i.acc = getelementptr inbounds nuw i8, ptr %i.yg, i64 8 ; 2 uses
  %i.acd = load i32, ptr %i.acc, align 8, !tbaa !13
  %i.ace = add nsw i32 %i.acd, -1                 ; 2 uses
  store i32 %i.ace, ptr %i.acc, align 8, !tbaa !13
  %i.acf = icmp eq i32 %i.ace, 0
  br i1 %i.acf, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit322
  %i.acg = load ptr, ptr %i.yg, align 8, !tbaa !15
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %i.aci = load ptr, ptr %i.ach, align 8
  call void %i.aci(ptr noundef nonnull align 8 dereferenceable(205) %i.yg) #8, !inline_history !102
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit322
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.acj = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 16
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !245, !noalias !292 ; 9 uses
  %.not.i.i.i.i325 = icmp eq ptr %i.acl, null
  br i1 %.not.i.i.i.i325, label %_ZNK5Ipopt9IpoptData4currEv.exit326, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 8 ; 2 uses
  %i.acn = load i32, ptr %i.acm, align 8, !tbaa !13, !noalias !292
  %i.aco = add nsw i32 %i.acn, 1
  store i32 %i.aco, ptr %i.acm, align 8, !tbaa !13, !noalias !292
  br label %_ZNK5Ipopt9IpoptData4currEv.exit326

_ZNK5Ipopt9IpoptData4currEv.exit326:              ; preds = %bb.el, %bb.ek
  invoke void @_ZNK5Ipopt14IteratesVector16MakeNewContainerEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.48") align 8 %5, ptr noundef nonnull align 8 dereferenceable(280) %i.acl)
          to label %bb.em unwind label %bb.ke

bb.em:                                            ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit326
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acl, i64 8 ; 2 uses
  %i.acq = load i32, ptr %i.acp, align 8, !tbaa !13
  %i.acr = add nsw i32 %i.acq, -1                 ; 2 uses
  store i32 %i.acr, ptr %i.acp, align 8, !tbaa !13
  %i.acs = icmp eq i32 %i.acr, 0
  br i1 %i.acs, label %bb.en, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit328

bb.en:                                            ; preds = %bb.em
  %i.act = load ptr, ptr %i.acl, align 8, !tbaa !15
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  %i.acv = load ptr, ptr %i.acu, align 8
  call void %i.acv(ptr noundef nonnull align 8 dereferenceable(280) %i.acl) #8, !inline_history !91
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit328

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit328: ; preds = %bb.em, %bb.en
  %i.acw = load ptr, ptr %5, align 8, !tbaa !294  ; 2 uses
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.acw, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(205) %i.co)
          to label %.noexc329 unwind label %bb.kg

.noexc329:                                        ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit328
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.acw, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(205) %i.xk)
          to label %bb.eo unwind label %bb.kg

bb.eo:                                            ; preds = %.noexc329
  %i.acx = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.acy = load ptr, ptr %5, align 8, !tbaa !294, !noalias !295 ; 6 uses
  %.not.i.i.i.i331 = icmp eq ptr %i.acy, null     ; 2 uses
  br i1 %.not.i.i.i.i331, label %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 8 ; 2 uses
  %i.ada = load i32, ptr %i.acz, align 8, !tbaa !13, !noalias !295
  %i.adb = add nsw i32 %i.ada, 2
  store i32 %i.adb, ptr %i.acz, align 8, !tbaa !13
  br label %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i

_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i: ; preds = %bb.ep, %bb.eo
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acx, i64 24 ; 2 uses
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !245 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.add, null
  br i1 %.not.i.i.i.i.i, label %bb.es, label %bb.eq

bb.eq:                                            ; preds = %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 8 ; 2 uses
  %i.adf = load i32, ptr %i.ade, align 8, !tbaa !13
  %i.adg = add nsw i32 %i.adf, -1                 ; 2 uses
  store i32 %i.adg, ptr %i.ade, align 8, !tbaa !13
  %i.adh = icmp eq i32 %i.adg, 0
  br i1 %i.adh, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.adi = load ptr, ptr %i.add, align 8, !tbaa !15
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.adk = load ptr, ptr %i.adj, align 8
  call void %i.adk(ptr noundef nonnull align 8 dereferenceable(280) %i.add) #8, !inline_history !136
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i
  store ptr %i.acy, ptr %i.adc, align 8, !tbaa !245
  br i1 %.not.i.i.i.i331, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.adl = getelementptr inbounds nuw i8, ptr %i.acy, i64 8 ; 2 uses
  %i.adm = load i32, ptr %i.adl, align 8, !tbaa !13
  %i.adn = add nsw i32 %i.adm, -1                 ; 2 uses
  store i32 %i.adn, ptr %i.adl, align 8, !tbaa !13
  %i.ado = icmp eq i32 %i.adn, 0
  br i1 %i.ado, label %bb.eu, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i

bb.eu:                                            ; preds = %bb.et
  %i.adp = load ptr, ptr %i.acy, align 8, !tbaa !15
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  %i.adr = load ptr, ptr %i.adq, align 8
  call void %i.adr(ptr noundef nonnull align 8 dereferenceable(280) %i.acy) #8, !inline_history !137
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i: ; preds = %bb.eu, %bb.et, %bb.es
  %i.ads = load ptr, ptr %5, align 8, !tbaa !294  ; 4 uses
  %.not.i.i.i5.i = icmp eq ptr %i.ads, null
  br i1 %.not.i.i.i5.i, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 8 ; 2 uses
  %i.adu = load i32, ptr %i.adt, align 8, !tbaa !13
  %i.adv = add nsw i32 %i.adu, -1                 ; 2 uses
  store i32 %i.adv, ptr %i.adt, align 8, !tbaa !13
  %i.adw = icmp eq i32 %i.adv, 0
  br i1 %i.adw, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.adx = load ptr, ptr %i.ads, align 8, !tbaa !15
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 8
  %i.adz = load ptr, ptr %i.ady, align 8
  call void %i.adz(ptr noundef nonnull align 8 dereferenceable(280) %i.ads) #8, !inline_history !138
  br label %bb.ex

bb.ex:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i, %bb.ev, %bb.ew
  store ptr null, ptr %5, align 8, !tbaa !294
  %i.aea = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 16
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !245, !noalias !296 ; 10 uses
  %.not.i.i.i.i332 = icmp eq ptr %i.aec, null
  br i1 %.not.i.i.i.i332, label %_ZNK5Ipopt9IpoptData4currEv.exit333, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aee = load i32, ptr %i.aed, align 8, !tbaa !13, !noalias !296
  %i.aef = add nsw i32 %i.aee, 1
  store i32 %i.aef, ptr %i.aed, align 8, !tbaa !13, !noalias !296
  br label %_ZNK5Ipopt9IpoptData4currEv.exit333

_ZNK5Ipopt9IpoptData4currEv.exit333:              ; preds = %bb.ey, %bb.ex
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aec, i64 208
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !249, !noalias !297
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 32
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !252, !noalias !297 ; 2 uses
  %.not.i.i.i334 = icmp eq ptr %i.aej, null
  br i1 %.not.i.i.i334, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i338, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i335

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i338: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit333
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aec, i64 232
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !255, !noalias !297
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 32
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !243, !noalias !297, !nonnull !256, !noundef !256
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i335

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i335: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i338, %_ZNK5Ipopt9IpoptData4currEv.exit333
  %.0.i3.i.i.i336 = phi ptr [ %i.aej, %_ZNK5Ipopt9IpoptData4currEv.exit333 ], [ %i.aen, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i338 ] ; 6 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i336, i64 8 ; 6 uses
  %i.aep = load i32, ptr %i.aeo, align 8, !tbaa !13, !noalias !298
  %i.aeq = add nsw i32 %i.aep, 1
  store i32 %i.aeq, ptr %i.aeo, align 8, !tbaa !13, !noalias !298
  %i.aer = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i336, i64 56
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !258 ; 2 uses
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !15
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 16
  %i.aev = load ptr, ptr %i.aeu, align 8
  %i.aew = invoke noundef ptr %i.aev(ptr noundef nonnull align 8 dereferenceable(16) %i.aes)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit341 unwind label %bb.kh, !inline_history !90 ; 20 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit341:              ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i335
  %.not.i.i342 = icmp eq ptr %i.aew, null         ; 3 uses
  br i1 %.not.i.i342, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit343, label %bb.ez

bb.ez:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit341
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 8 ; 2 uses
  %i.aey = load i32, ptr %i.aex, align 8, !tbaa !13
  %i.aez = add nsw i32 %i.aey, 1
  store i32 %i.aez, ptr %i.aex, align 8, !tbaa !13
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit343

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit343:   ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit341, %bb.ez
  %i.afa = load i32, ptr %i.aeo, align 8, !tbaa !13
  %i.afb = add nsw i32 %i.afa, -1                 ; 2 uses
  store i32 %i.afb, ptr %i.aeo, align 8, !tbaa !13
  %i.afc = icmp eq i32 %i.afb, 0
  br i1 %i.afc, label %bb.fa, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit345

bb.fa:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit343
  %i.afd = load ptr, ptr %.0.i3.i.i.i336, align 8, !tbaa !15
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 8
  %i.aff = load ptr, ptr %i.afe, align 8
  call void %i.aff(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i336) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit345

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit345:     ; preds = %bb.fa, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit343
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.afh = load i32, ptr %i.afg, align 8, !tbaa !13
  %i.afi = add nsw i32 %i.afh, -1                 ; 2 uses
  store i32 %i.afi, ptr %i.afg, align 8, !tbaa !13
  %i.afj = icmp eq i32 %i.afi, 0
  br i1 %i.afj, label %bb.fb, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit347

bb.fb:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit345
  %i.afk = load ptr, ptr %i.aec, align 8, !tbaa !15
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  %i.afm = load ptr, ptr %i.afl, align 8
  call void %i.afm(ptr noundef nonnull align 8 dereferenceable(280) %i.aec) #8, !inline_history !91
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit347

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit347: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit345, %bb.fb
  br i1 %.not.i.i342, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit347
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aew, i64 8 ; 2 uses
  %i.afo = load i32, ptr %i.afn, align 8, !tbaa !13
  %i.afp = add nsw i32 %i.afo, 1
  store i32 %i.afp, ptr %i.afn, align 8, !tbaa !13
  br label %bb.fd

bb.fd:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit347, %bb.fc
  %i.afq = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 16
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !245, !noalias !299 ; 9 uses
  %.not.i.i.i.i350 = icmp eq ptr %i.afs, null
  br i1 %.not.i.i.i.i350, label %_ZNK5Ipopt9IpoptData4currEv.exit351, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 8 ; 2 uses
  %i.afu = load i32, ptr %i.aft, align 8, !tbaa !13, !noalias !299
  %i.afv = add nsw i32 %i.afu, 1
  store i32 %i.afv, ptr %i.aft, align 8, !tbaa !13, !noalias !299
  br label %_ZNK5Ipopt9IpoptData4currEv.exit351

_ZNK5Ipopt9IpoptData4currEv.exit351:              ; preds = %bb.fe, %bb.fd
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afs, i64 208
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !249, !noalias !300
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 40
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !252, !noalias !300 ; 2 uses
  %.not.i.i.i352 = icmp eq ptr %i.afz, null
  br i1 %.not.i.i.i352, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i356, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i353

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i356: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit351
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afs, i64 232
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !255, !noalias !300
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 40
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !243, !noalias !300, !nonnull !256, !noundef !256
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i353

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i353: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i356, %_ZNK5Ipopt9IpoptData4currEv.exit351
  %.0.i3.i.i.i354 = phi ptr [ %i.afz, %_ZNK5Ipopt9IpoptData4currEv.exit351 ], [ %i.agd, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i356 ] ; 6 uses
  %i.age = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i354, i64 8 ; 6 uses
  %i.agf = load i32, ptr %i.age, align 8, !tbaa !13, !noalias !301
  %i.agg = add nsw i32 %i.agf, 1
  store i32 %i.agg, ptr %i.age, align 8, !tbaa !13, !noalias !301
  %i.agh = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i354, i64 56
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !258 ; 2 uses
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !15
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 16
  %i.agl = load ptr, ptr %i.agk, align 8
  %i.agm = invoke noundef ptr %i.agl(ptr noundef nonnull align 8 dereferenceable(16) %i.agi)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit359 unwind label %bb.kj, !inline_history !90 ; 15 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit359:              ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i353
  %.not.i.i360 = icmp eq ptr %i.agm, null         ; 3 uses
  br i1 %.not.i.i360, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit361, label %bb.ff

bb.ff:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit359
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 8 ; 2 uses
  %i.ago = load i32, ptr %i.agn, align 8, !tbaa !13
  %i.agp = add nsw i32 %i.ago, 1
  store i32 %i.agp, ptr %i.agn, align 8, !tbaa !13
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit361

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit361:   ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit359, %bb.ff
  %i.agq = load i32, ptr %i.age, align 8, !tbaa !13
  %i.agr = add nsw i32 %i.agq, -1                 ; 2 uses
  store i32 %i.agr, ptr %i.age, align 8, !tbaa !13
  %i.ags = icmp eq i32 %i.agr, 0
  br i1 %i.ags, label %bb.fg, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit363

bb.fg:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit361
  %i.agt = load ptr, ptr %.0.i3.i.i.i354, align 8, !tbaa !15
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  %i.agv = load ptr, ptr %i.agu, align 8
  call void %i.agv(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i354) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit363

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit363:     ; preds = %bb.fg, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit361
  %i.agw = getelementptr inbounds nuw i8, ptr %i.afs, i64 8 ; 2 uses
  %i.agx = load i32, ptr %i.agw, align 8, !tbaa !13
  %i.agy = add nsw i32 %i.agx, -1                 ; 2 uses
  store i32 %i.agy, ptr %i.agw, align 8, !tbaa !13
  %i.agz = icmp eq i32 %i.agy, 0
  br i1 %i.agz, label %bb.fh, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit365

bb.fh:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit363
  %i.aha = load ptr, ptr %i.afs, align 8, !tbaa !15
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  %i.ahc = load ptr, ptr %i.ahb, align 8
  call void %i.ahc(ptr noundef nonnull align 8 dereferenceable(280) %i.afs) #8, !inline_history !91
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit365

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit365: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit363, %bb.fh
  br i1 %.not.i.i360, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit365
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agm, i64 8 ; 2 uses
  %i.ahe = load i32, ptr %i.ahd, align 8, !tbaa !13
  %i.ahf = add nsw i32 %i.ahe, 1
  store i32 %i.ahf, ptr %i.ahd, align 8, !tbaa !13
  br label %bb.fj

bb.fj:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit365, %bb.fi
  %i.ahg = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 16
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !245, !noalias !302 ; 9 uses
  %.not.i.i.i.i368 = icmp eq ptr %i.ahi, null
  br i1 %.not.i.i.i.i368, label %_ZNK5Ipopt9IpoptData4currEv.exit369, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8 ; 2 uses
  %i.ahk = load i32, ptr %i.ahj, align 8, !tbaa !13, !noalias !302
  %i.ahl = add nsw i32 %i.ahk, 1
  store i32 %i.ahl, ptr %i.ahj, align 8, !tbaa !13, !noalias !302
  br label %_ZNK5Ipopt9IpoptData4currEv.exit369

_ZNK5Ipopt9IpoptData4currEv.exit369:              ; preds = %bb.fk, %bb.fj
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahi, i64 208
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !249, !noalias !303
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 48
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !252, !noalias !303 ; 2 uses
  %.not.i.i.i370 = icmp eq ptr %i.ahp, null
  br i1 %.not.i.i.i370, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i374, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i371

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i374: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit369
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahi, i64 232
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !255, !noalias !303
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 48
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !243, !noalias !303, !nonnull !256, !noundef !256
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i371

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i371: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i374, %_ZNK5Ipopt9IpoptData4currEv.exit369
  %.0.i3.i.i.i372 = phi ptr [ %i.ahp, %_ZNK5Ipopt9IpoptData4currEv.exit369 ], [ %i.aht, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i374 ] ; 6 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i372, i64 8 ; 6 uses
  %i.ahv = load i32, ptr %i.ahu, align 8, !tbaa !13, !noalias !304
  %i.ahw = add nsw i32 %i.ahv, 1
  store i32 %i.ahw, ptr %i.ahu, align 8, !tbaa !13, !noalias !304
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i372, i64 56
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !258 ; 2 uses
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !15
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aib = load ptr, ptr %i.aia, align 8
  %i.aic = invoke noundef ptr %i.aib(ptr noundef nonnull align 8 dereferenceable(16) %i.ahy)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit377 unwind label %bb.kl, !inline_history !90 ; 15 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit377:              ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i371
  %.not.i.i378 = icmp eq ptr %i.aic, null         ; 3 uses
  br i1 %.not.i.i378, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit379, label %bb.fl

bb.fl:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit377
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 8 ; 2 uses
  %i.aie = load i32, ptr %i.aid, align 8, !tbaa !13
  %i.aif = add nsw i32 %i.aie, 1
  store i32 %i.aif, ptr %i.aid, align 8, !tbaa !13
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit379

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit379:   ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit377, %bb.fl
  %i.aig = load i32, ptr %i.ahu, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@_ZN5Ipopt23RestoIterateInitializer18SetInitialIteratesEv:bb.a
  %i.bfg = load i32, ptr %i.bff, align 8, !tbaa !13
  %i.bfh = add nsw i32 %i.bfg, -1                 ; 2 uses
  store i32 %i.bfh, ptr %i.bff, align 8, !tbaa !13
  %i.bfi = icmp eq i32 %i.bfh, 0
  br i1 %i.bfi, label %bb.jm, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit611.thread

bb.jm:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit609.thread
  %i.bfj = load ptr, ptr %i.dp, align 8, !tbaa !15
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfj, i64 8
  %i.bfl = load ptr, ptr %i.bfk, align 8
  call void %i.bfl(ptr noundef nonnull align 8 dereferenceable(280) %i.dp) #8, !inline_history !91
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit611.thread

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit611.thread: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit609.thread, %bb.jm
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.bfn = load i32, ptr %i.bfm, align 8, !tbaa !13
  %i.bfo = add nsw i32 %i.bfn, -1                 ; 2 uses
  store i32 %i.bfo, ptr %i.bfm, align 8, !tbaa !13
  %i.bfp = icmp eq i32 %i.bfo, 0
  br i1 %i.bfp, label %bb.jn, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit613.thread

bb.jn:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit611.thread
  %i.bfq = load ptr, ptr %i.dk, align 8, !tbaa !15
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfq, i64 8
  %i.bfs = load ptr, ptr %i.bfr, align 8
  call void %i.bfs(ptr noundef nonnull align 8 dereferenceable(205) %i.dk) #8, !inline_history !102
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit613.thread

bb.jo:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit
  %i.bft = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit613.thread

bb.jp:                                            ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit227
  %i.bfu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit713

bb.jq:                                            ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit230
  %i.bfv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit711

bb.jr:                                            ; preds = %bb.ap
  %i.bfw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit709

bb.js:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit234
  %i.bfx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit707

bb.jt:                                            ; preds = %.noexc249, %_ZN5Ipopt6Vector4CopyERKS0_.exit248, %.noexc246, %bb.bg, %.noexc243, %_ZN5Ipopt6Vector4AxpyEdRKS0_.exit, %.noexc241, %_ZN5Ipopt6Vector3SetEd.exit, %.noexc239, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit238, %bb.bf, %_ZN5Ipopt6Vector4CopyERKS0_.exit245
  %i.bfy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705.thread: ; preds = %_ZN5Ipopt6Vector4AxpyEdRKS0_.exit251
  %i.bfz = landingpad { ptr, i32 }
          cleanup
  br label %bb.me

bb.ju:                                            ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit254
  %i.bga = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit703

bb.jv:                                            ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit257
  %i.bgb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619

bb.jw:                                            ; preds = %.noexc283, %_ZN5Ipopt6Vector4CopyERKS0_.exit282, %.noexc280, %bb.cy, %.noexc277, %_ZN5Ipopt6Vector4AxpyEdRKS0_.exit276, %.noexc274, %_ZN5Ipopt6Vector3SetEd.exit273, %.noexc271, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit270, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit261, %bb.cx, %_ZN5Ipopt6Vector4CopyERKS0_.exit279
  %.sroa.0886.0 = phi ptr [ %i.pw, %.noexc283 ], [ %i.pw, %_ZN5Ipopt6Vector4CopyERKS0_.exit282 ], [ %i.pw, %.noexc280 ], [ %i.pw, %bb.cy ], [ %i.pw, %bb.cx ], [ %i.pw, %_ZN5Ipopt6Vector4CopyERKS0_.exit279 ], [ %i.pw, %.noexc277 ], [ %i.pw, %_ZN5Ipopt6Vector4AxpyEdRKS0_.exit276 ], [ %i.pw, %.noexc274 ], [ %i.pw, %_ZN5Ipopt6Vector3SetEd.exit273 ], [ %i.pw, %.noexc271 ], [ %i.pw, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit270 ], [ %i.pw, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit ], [ %i.if, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit261 ]
  %.sroa.0877.0 = phi ptr [ %i.ql, %.noexc283 ], [ %i.ql, %_ZN5Ipopt6Vector4CopyERKS0_.exit282 ], [ %i.ql, %.noexc280 ], [ %i.ql, %bb.cy ], [ %i.ql, %bb.cx ], [ %i.ql, %_ZN5Ipopt6Vector4CopyERKS0_.exit279 ], [ %i.ql, %.noexc277 ], [ %i.ql, %_ZN5Ipopt6Vector4AxpyEdRKS0_.exit276 ], [ %i.ql, %.noexc274 ], [ %i.ql, %_ZN5Ipopt6Vector3SetEd.exit273 ], [ %i.ql, %.noexc271 ], [ %i.ql, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit270 ], [ %i.in, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit ], [ %i.in, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit261 ]
  %i.bgc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619

bb.jx:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i289
  %i.bgd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bge = load i32, ptr %i.xc, align 8, !tbaa !13
  %i.bgf = add nsw i32 %i.bge, -1                 ; 2 uses
  store i32 %i.bgf, ptr %i.xc, align 8, !tbaa !13
  %i.bgg = icmp eq i32 %i.bgf, 0
  br i1 %i.bgg, label %bb.jy, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit617.thread

bb.jy:                                            ; preds = %bb.jx
  %i.bgh = load ptr, ptr %.0.i3.i.i.i290, align 8, !tbaa !15
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bgh, i64 8
  %i.bgj = load ptr, ptr %i.bgi, align 8
  call void %i.bgj(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i290) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit617.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit617.thread: ; preds = %bb.jx, %bb.jy
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.wq, i64 8 ; 2 uses
  %i.bgl = load i32, ptr %i.bgk, align 8, !tbaa !13
  %i.bgm = add nsw i32 %i.bgl, -1                 ; 2 uses
  store i32 %i.bgm, ptr %i.bgk, align 8, !tbaa !13
  %i.bgn = icmp eq i32 %i.bgm, 0
  br i1 %i.bgn, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread

bb.jz:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit303
  %i.bgo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625.thread

bb.ka:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i310, %.noexc316
  %i.bgp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bgq = load i32, ptr %i.yw, align 8, !tbaa !13
  %i.bgr = add nsw i32 %i.bgq, -1                 ; 2 uses
  store i32 %i.bgr, ptr %i.yw, align 8, !tbaa !13
  %i.bgs = icmp eq i32 %i.bgr, 0
  br i1 %i.bgs, label %bb.kb, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit621.thread

bb.kb:                                            ; preds = %bb.ka
  %i.bgt = load ptr, ptr %.0.i3.i.i.i311, align 8, !tbaa !15
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgt, i64 8
  %i.bgv = load ptr, ptr %i.bgu, align 8
  call void %i.bgv(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i311) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit621.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit621.thread: ; preds = %bb.ka, %bb.kb
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.yk, i64 8 ; 2 uses
  %i.bgx = load i32, ptr %i.bgw, align 8, !tbaa !13
  %i.bgy = add nsw i32 %i.bgx, -1                 ; 2 uses
  store i32 %i.bgy, ptr %i.bgw, align 8, !tbaa !13
  %i.bgz = icmp eq i32 %i.bgy, 0
  br i1 %i.bgz, label %bb.kc, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit623.thread

bb.kc:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit621.thread
  %i.bha = load ptr, ptr %i.yk, align 8, !tbaa !15
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 8
  %i.bhc = load ptr, ptr %i.bhb, align 8
  call void %i.bhc(ptr noundef nonnull align 8 dereferenceable(280) %i.yk) #8, !inline_history !91
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit623.thread

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit623.thread: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit621.thread, %bb.kc
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.yg, i64 8 ; 2 uses
  %i.bhe = load i32, ptr %i.bhd, align 8, !tbaa !13
  %i.bhf = add nsw i32 %i.bhe, -1                 ; 2 uses
  store i32 %i.bhf, ptr %i.bhd, align 8, !tbaa !13
  %i.bhg = icmp eq i32 %i.bhf, 0
  br i1 %i.bhg, label %bb.kd, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625.thread

bb.kd:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit623.thread
  %i.bhh = load ptr, ptr %i.yg, align 8, !tbaa !15
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhh, i64 8
  %i.bhj = load ptr, ptr %i.bhi, align 8
  call void %i.bhj(ptr noundef nonnull align 8 dereferenceable(205) %i.yg) #8, !inline_history !102
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625.thread

bb.ke:                                            ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit326
  %i.bhk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.acl, i64 8 ; 2 uses
  %i.bhm = load i32, ptr %i.bhl, align 8, !tbaa !13
  %i.bhn = add nsw i32 %i.bhm, -1                 ; 2 uses
  store i32 %i.bhn, ptr %i.bhl, align 8, !tbaa !13
  %i.bho = icmp eq i32 %i.bhn, 0
  br i1 %i.bho, label %bb.kf, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit627.thread

bb.kf:                                            ; preds = %bb.ke
  %i.bhp = load ptr, ptr %i.acl, align 8, !tbaa !15
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 8
  %i.bhr = load ptr, ptr %i.bhq, align 8
  call void %i.bhr(ptr noundef nonnull align 8 dereferenceable(280) %i.acl) #8, !inline_history !91
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit627.thread

bb.kg:                                            ; preds = %.noexc329, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit328
  %i.bhs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit631

bb.kh:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i335
  %i.bht = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bhu = load i32, ptr %i.aeo, align 8, !tbaa !13
  %i.bhv = add nsw i32 %i.bhu, -1                 ; 2 uses
  store i32 %i.bhv, ptr %i.aeo, align 8, !tbaa !13
  %i.bhw = icmp eq i32 %i.bhv, 0
  br i1 %i.bhw, label %bb.ki, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit629.thread

bb.ki:                                            ; preds = %bb.kh
  %i.bhx = load ptr, ptr %.0.i3.i.i.i336, align 8, !tbaa !15
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhx, i64 8
  %i.bhz = load ptr, ptr %i.bhy, align 8
  call void %i.bhz(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i336) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit629.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit629.thread: ; preds = %bb.kh, %bb.ki
  %i.bia = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.bib = load i32, ptr %i.bia, align 8, !tbaa !13
  %i.bic = add nsw i32 %i.bib, -1                 ; 2 uses
  store i32 %i.bic, ptr %i.bia, align 8, !tbaa !13
  %i.bid = icmp eq i32 %i.bic, 0
  br i1 %i.bid, label %7, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit631

7:                                                ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit629.thread
  %8 = load ptr, ptr %i.aec, align 8, !tbaa !15
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr noundef nonnull align 8 dereferenceable(280) %i.aec) #8, !inline_history !91
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit631

bb.kj:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i353
  %i.bie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bif = load i32, ptr %i.age, align 8, !tbaa !13
  %i.big = add nsw i32 %i.bif, -1                 ; 2 uses
  store i32 %i.big, ptr %i.age, align 8, !tbaa !13
  %i.bih = icmp eq i32 %i.big, 0
  br i1 %i.bih, label %bb.kk, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit633.thread

bb.kk:                                            ; preds = %bb.kj
  %i.bii = load ptr, ptr %.0.i3.i.i.i354, align 8, !tbaa !15
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bii, i64 8
  %i.bik = load ptr, ptr %i.bij, align 8
  call void %i.bik(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i354) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit633.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit633.thread: ; preds = %bb.kj, %bb.kk
  %i.bil = getelementptr inbounds nuw i8, ptr %i.afs, i64 8 ; 2 uses
  %i.bim = load i32, ptr %i.bil, align 8, !tbaa !13
  %i.bin = add nsw i32 %i.bim, -1                 ; 2 uses
  store i32 %i.bin, ptr %i.bil, align 8, !tbaa !13
  %i.bio = icmp eq i32 %i.bin, 0
  br i1 %i.bio, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit635.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit635

bb.kl:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i371
  %i.bip = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.biq = load i32, ptr %i.ahu, align 8, !tbaa !13
  %i.bir = add nsw i32 %i.biq, -1                 ; 2 uses
  store i32 %i.bir, ptr %i.ahu, align 8, !tbaa !13
  %i.bis = icmp eq i32 %i.bir, 0
  br i1 %i.bis, label %bb.km, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit637.thread

bb.km:                                            ; preds = %bb.kl
  %i.bit = load ptr, ptr %.0.i3.i.i.i372, align 8, !tbaa !15
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bit, i64 8
  %i.biv = load ptr, ptr %i.biu, align 8
  call void %i.biv(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i372) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit637.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit637.thread: ; preds = %bb.kl, %bb.km
  %i.biw = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8 ; 2 uses
  %i.bix = load i32, ptr %i.biw, align 8, !tbaa !13
  %i.biy = add nsw i32 %i.bix, -1                 ; 2 uses
  store i32 %i.biy, ptr %i.biw, align 8, !tbaa !13
  %i.biz = icmp eq i32 %i.biy, 0
  br i1 %i.biz, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit639.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit639

bb.kn:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i389
  %i.bja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bjb = load i32, ptr %i.ajk, align 8, !tbaa !13
  %i.bjc = add nsw i32 %i.bjb, -1                 ; 2 uses
  store i32 %i.bjc, ptr %i.ajk, align 8, !tbaa !13
  %i.bjd = icmp eq i32 %i.bjc, 0
  br i1 %i.bjd, label %bb.ko, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit641.thread

bb.ko:                                            ; preds = %bb.kn
  %i.bje = load ptr, ptr %.0.i3.i.i.i390, align 8, !tbaa !15
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 8
  %i.bjg = load ptr, ptr %i.bjf, align 8
  call void %i.bjg(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i390) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit641.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit641.thread: ; preds = %bb.kn, %bb.ko
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8 ; 2 uses
  %i.bji = load i32, ptr %i.bjh, align 8, !tbaa !13
  %i.bjj = add nsw i32 %i.bji, -1                 ; 2 uses
  store i32 %i.bjj, ptr %i.bjh, align 8, !tbaa !13
  %i.bjk = icmp eq i32 %i.bjj, 0
  br i1 %i.bjk, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643

bb.kp:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit447
  %i.bjl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit671

bb.kq:                                            ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit450, %.noexc451, %_ZN5Ipopt6Vector3SetEd.exit453, %.noexc454, %_ZN5Ipopt6Vector14ElementWiseMinERKS0_.exit
  %i.bjm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit669

bb.kr:                                            ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit458, %.noexc459, %_ZN5Ipopt6Vector3SetEd.exit461, %.noexc462, %_ZN5Ipopt6Vector14ElementWiseMinERKS0_.exit464
  %i.bjn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit667

bb.ks:                                            ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit467, %.noexc468, %_ZN5Ipopt6Vector3SetEd.exit470, %.noexc471, %_ZN5Ipopt6Vector14ElementWiseMinERKS0_.exit473
  %i.bjo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit665

bb.kt:                                            ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit476, %.noexc477, %_ZN5Ipopt6Vector3SetEd.exit479, %.noexc480, %_ZN5Ipopt6Vector14ElementWiseMinERKS0_.exit482
  %i.bjp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit663

bb.ku:                                            ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit485, %.noexc486, %_ZN5Ipopt6Vector3SetEd.exit488, %.noexc489, %_ZN5Ipopt6Vector17ElementWiseDivideERKS0_.exit
  %i.bjq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit661

bb.kv:                                            ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit493, %.noexc494, %_ZN5Ipopt6Vector3SetEd.exit496, %.noexc497, %_ZN5Ipopt6Vector17ElementWiseDivideERKS0_.exit499
  %i.bjr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit659

bb.kw:                                            ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit502, %.noexc503, %_ZN5Ipopt6Vector3SetEd.exit505, %.noexc506, %_ZN5Ipopt6Vector17ElementWiseDivideERKS0_.exit508
  %i.bjs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit657

bb.kx:                                            ; preds = %.noexc526, %.noexc525, %.noexc524, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit523, %.noexc515, %_ZN5Ipopt6Vector3SetEd.exit514, %.noexc512, %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit511, %bb.hg, %bb.hf
  %i.bjt = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

.thread:                                          ; preds = %_ZNK5Ipopt9IpoptData5trialEv.exit
  %i.bju = landingpad { ptr, i32 }
          cleanup
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.arq, i64 8 ; 2 uses
  %i.bjw = load i32, ptr %i.bjv, align 8, !tbaa !13
  %i.bjx = add nsw i32 %i.bjw, -1                 ; 2 uses
  store i32 %i.bjx, ptr %i.bjv, align 8, !tbaa !13
  %i.bjy = icmp eq i32 %i.bjx, 0
  br i1 %i.bjy, label %bb.ky, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit655

bb.ky:                                            ; preds = %.thread
  %i.bjz = load ptr, ptr %i.arq, align 8, !tbaa !15
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjz, i64 8
  %i.bkb = load ptr, ptr %i.bka, align 8
  call void %i.bkb(ptr noundef nonnull align 8 dereferenceable(280) %i.arq) #8, !inline_history !91
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit655

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit655: ; preds = %bb.ky, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.kz

bb.kz:                                            ; preds = %bb.kx, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit655
  %.pn141 = phi { ptr, i32 } [ %i.bjt, %bb.kx ], [ %i.bju, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit655 ] ; 2 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.are, i64 8 ; 2 uses
  %i.bkd = load i32, ptr %i.bkc, align 8, !tbaa !13
  %i.bke = add nsw i32 %i.bkd, -1                 ; 2 uses
  store i32 %i.bke, ptr %i.bkc, align 8, !tbaa !13
  %i.bkf = icmp eq i32 %i.bke, 0
  br i1 %i.bkf, label %bb.la, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit657

bb.la:                                            ; preds = %bb.kz
  %i.bkg = load ptr, ptr %i.are, align 8, !tbaa !15
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkg, i64 8
  %i.bki = load ptr, ptr %i.bkh, align 8
  call void %i.bki(ptr noundef nonnull align 8 dereferenceable(205) %i.are) #8, !inline_history !102
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit657

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit657:      ; preds = %bb.la, %bb.kz, %bb.kw
  %.pn141.pn.pn = phi { ptr, i32 } [ %.pn141, %bb.la ], [ %i.bjs, %bb.kw ], [ %.pn141, %bb.kz ] ; 2 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.aqs, i64 8 ; 2 uses
  %i.bkk = load i32, ptr %i.bkj, align 8, !tbaa !13
  %i.bkl = add nsw i32 %i.bkk, -1                 ; 2 uses
  store i32 %i.bkl, ptr %i.bkj, align 8, !tbaa !13
  %i.bkm = icmp eq i32 %i.bkl, 0
  br i1 %i.bkm, label %bb.lb, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit659

bb.lb:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit657
  %i.bkn = load ptr, ptr %i.aqs, align 8, !tbaa !15
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 8
  %i.bkp = load ptr, ptr %i.bko, align 8
  call void %i.bkp(ptr noundef nonnull align 8 dereferenceable(205) %i.aqs) #8, !inline_history !102
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit659

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit659:      ; preds = %bb.lb, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit657, %bb.kv
  %.pn141.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn141.pn.pn, %bb.lb ], [ %i.bjr, %bb.kv ], [ %.pn141.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit657 ] ; 2 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.aqg, i64 8 ; 2 uses
  %i.bkr = load i32, ptr %i.bkq, align 8, !tbaa !13
  %i.bks = add nsw i32 %i.bkr, -1                 ; 2 uses
  store i32 %i.bks, ptr %i.bkq, align 8, !tbaa !13
  %i.bkt = icmp eq i32 %i.bks, 0
  br i1 %i.bkt, label %bb.lc, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit661

bb.lc:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit659
  %i.bku = load ptr, ptr %i.aqg, align 8, !tbaa !15
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 8
  %i.bkw = load ptr, ptr %i.bkv, align 8
  call void %i.bkw(ptr noundef nonnull align 8 dereferenceable(205) %i.aqg) #8, !inline_history !102
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit661

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit661:      ; preds = %bb.lc, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit659, %bb.ku
  %.pn141.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn141.pn.pn.pn.pn, %bb.lc ], [ %i.bjq, %bb.ku ], [ %.pn141.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit659 ] ; 2 uses
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.apu, i64 8 ; 2 uses
  %i.bky = load i32, ptr %i.bkx, align 8, !tbaa !13
  %i.bkz = add nsw i32 %i.bky, -1                 ; 2 uses
  store i32 %i.bkz, ptr %i.bkx, align 8, !tbaa !13
  %i.bla = icmp eq i32 %i.bkz, 0
  br i1 %i.bla, label %bb.ld, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit663

bb.ld:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit661
  %i.blb = load ptr, ptr %i.apu, align 8, !tbaa !15
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 8
  %i.bld = load ptr, ptr %i.blc, align 8
end_hunk_1
begin_hunk_2_@_ZN5Ipopt23RestoIterateInitializer18SetInitialIteratesEv:bb.a
  br i1 %i.bmj, label %bb.lj, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit673

bb.lj:                                            ; preds = %bb.li
  %i.bmk = load ptr, ptr %storemerge.i.i442, align 8, !tbaa !15
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 8
  %i.bmm = load ptr, ptr %i.bml, align 8
  call void %i.bmm(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i442) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit673

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit673:     ; preds = %bb.lj, %bb.li, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit671
  %.not.i.i674 = icmp eq ptr %storemerge.i.i431, null
  br i1 %.not.i.i674, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit675, label %bb.lk

bb.lk:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit673
  %i.bmn = getelementptr inbounds nuw i8, ptr %storemerge.i.i431, i64 8 ; 2 uses
  %i.bmo = load i32, ptr %i.bmn, align 8, !tbaa !13
  %i.bmp = add nsw i32 %i.bmo, -1                 ; 2 uses
  store i32 %i.bmp, ptr %i.bmn, align 8, !tbaa !13
  %i.bmq = icmp eq i32 %i.bmp, 0
  br i1 %i.bmq, label %bb.ll, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit675

bb.ll:                                            ; preds = %bb.lk
  %i.bmr = load ptr, ptr %storemerge.i.i431, align 8, !tbaa !15
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 8
  %i.bmt = load ptr, ptr %i.bms, align 8
  call void %i.bmt(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i431) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit675

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit675:     ; preds = %bb.ll, %bb.lk, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit673
  %.not.i.i676 = icmp eq ptr %storemerge.i.i420, null
  br i1 %.not.i.i676, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit677, label %bb.lm

bb.lm:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit675
  %i.bmu = getelementptr inbounds nuw i8, ptr %storemerge.i.i420, i64 8 ; 2 uses
  %i.bmv = load i32, ptr %i.bmu, align 8, !tbaa !13
  %i.bmw = add nsw i32 %i.bmv, -1                 ; 2 uses
  store i32 %i.bmw, ptr %i.bmu, align 8, !tbaa !13
  %i.bmx = icmp eq i32 %i.bmw, 0
  br i1 %i.bmx, label %bb.ln, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit677

bb.ln:                                            ; preds = %bb.lm
  %i.bmy = load ptr, ptr %storemerge.i.i420, align 8, !tbaa !15
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 8
  %i.bna = load ptr, ptr %i.bmz, align 8
  call void %i.bna(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i420) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit677

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit677:     ; preds = %bb.ln, %bb.lm, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit675
  %.not.i.i678 = icmp eq ptr %storemerge.i.i409, null
  br i1 %.not.i.i678, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit679, label %bb.lo

bb.lo:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit677
  %i.bnb = getelementptr inbounds nuw i8, ptr %storemerge.i.i409, i64 8 ; 2 uses
  %i.bnc = load i32, ptr %i.bnb, align 8, !tbaa !13
  %i.bnd = add nsw i32 %i.bnc, -1                 ; 2 uses
  store i32 %i.bnd, ptr %i.bnb, align 8, !tbaa !13
  %i.bne = icmp eq i32 %i.bnd, 0
  br i1 %i.bne, label %bb.lp, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit679

bb.lp:                                            ; preds = %bb.lo
  %i.bnf = load ptr, ptr %storemerge.i.i409, align 8, !tbaa !15
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 8
  %i.bnh = load ptr, ptr %i.bng, align 8
  call void %i.bnh(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i409) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit679

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit679:     ; preds = %bb.lp, %bb.lo, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit677
  br i1 %.not.i.i396, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643, label %bb.lq

bb.lq:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit679
  %i.bni = getelementptr inbounds nuw i8, ptr %i.ajs, i64 8 ; 4 uses
  %i.bnj = load i32, ptr %i.bni, align 8, !tbaa !13
  %i.bnk = add nsw i32 %i.bnj, -1                 ; 3 uses
  store i32 %i.bnk, ptr %i.bni, align 8, !tbaa !13
  %i.bnl = icmp eq i32 %i.bnk, 0
  br i1 %i.bnl, label %bb.lr, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit681.thread

bb.lr:                                            ; preds = %bb.lq
  %i.bnm = load ptr, ptr %i.ajs, align 8, !tbaa !15
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 8
  %i.bno = load ptr, ptr %i.bnn, align 8
  call void %i.bno(ptr noundef nonnull align 8 dereferenceable(265) %i.ajs) #8, !inline_history !227
  %.pre1057 = load i32, ptr %i.bni, align 8, !tbaa !13
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit681.thread

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit681.thread: ; preds = %bb.lq, %bb.lr
  %i.bnp = phi i32 [ %i.bnk, %bb.lq ], [ %.pre1057, %bb.lr ]
  %i.bnq = add nsw i32 %i.bnp, -1                 ; 2 uses
  store i32 %i.bnq, ptr %i.bni, align 8, !tbaa !13
  %i.bnr = icmp eq i32 %i.bnq, 0
  br i1 %i.bnr, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643.sink.split: ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit681.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit641.thread
  %.sink1182 = phi ptr [ %i.aiy, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit641.thread ], [ %i.ajs, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit681.thread ] ; 2 uses
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.bja, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit641.thread ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit681.thread ]
  %i.bns = load ptr, ptr %.sink1182, align 8, !tbaa !15
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 8
  %i.bnu = load ptr, ptr %i.bnt, align 8
  call void %i.bnu(ptr noundef nonnull align 8 dereferenceable(205) %.sink1182) #8
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643.sink.split, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit679, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit681.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit641.thread
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bja, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit641.thread ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit679 ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit681.thread ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643.sink.split ] ; 3 uses
  br i1 %.not.i.i378, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit639, label %bb.ls

bb.ls:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.aic, i64 8 ; 4 uses
  %i.bnw = load i32, ptr %i.bnv, align 8, !tbaa !13
  %i.bnx = add nsw i32 %i.bnw, -1                 ; 3 uses
  store i32 %i.bnx, ptr %i.bnv, align 8, !tbaa !13
  %i.bny = icmp eq i32 %i.bnx, 0
  br i1 %i.bny, label %bb.lt, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit685.thread

bb.lt:                                            ; preds = %bb.ls
  %i.bnz = load ptr, ptr %i.aic, align 8, !tbaa !15
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 8
  %i.bob = load ptr, ptr %i.boa, align 8
  call void %i.bob(ptr noundef nonnull align 8 dereferenceable(265) %i.aic) #8, !inline_history !227
  %.pre1058 = load i32, ptr %i.bnv, align 8, !tbaa !13
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit685.thread

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit685.thread: ; preds = %bb.ls, %bb.lt
  %i.boc = phi i32 [ %i.bnx, %bb.ls ], [ %.pre1058, %bb.lt ]
  %i.bod = add nsw i32 %i.boc, -1                 ; 2 uses
  store i32 %i.bod, ptr %i.bnv, align 8, !tbaa !13
  %i.boe = icmp eq i32 %i.bod, 0
  br i1 %i.boe, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit639.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit639

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit639.sink.split: ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit685.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit637.thread
  %.sink1187 = phi ptr [ %i.ahi, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit637.thread ], [ %i.aic, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit685.thread ] ; 2 uses
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.bip, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit637.thread ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit685.thread ]
  %i.bof = load ptr, ptr %.sink1187, align 8, !tbaa !15
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 8
  %i.boh = load ptr, ptr %i.bog, align 8
  call void %i.boh(ptr noundef nonnull align 8 dereferenceable(205) %.sink1187) #8
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit639

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit639: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit639.sink.split, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit685.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit637.thread
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bip, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit637.thread ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643 ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit685.thread ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit639.sink.split ] ; 3 uses
  br i1 %.not.i.i360, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit635, label %bb.lu

bb.lu:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit639
  %i.boi = getelementptr inbounds nuw i8, ptr %i.agm, i64 8 ; 4 uses
  %i.boj = load i32, ptr %i.boi, align 8, !tbaa !13
  %i.bok = add nsw i32 %i.boj, -1                 ; 3 uses
  store i32 %i.bok, ptr %i.boi, align 8, !tbaa !13
  %i.bol = icmp eq i32 %i.bok, 0
  br i1 %i.bol, label %bb.lv, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit689.thread

bb.lv:                                            ; preds = %bb.lu
  %i.bom = load ptr, ptr %i.agm, align 8, !tbaa !15
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bom, i64 8
  %i.boo = load ptr, ptr %i.bon, align 8
  call void %i.boo(ptr noundef nonnull align 8 dereferenceable(265) %i.agm) #8, !inline_history !227
  %.pre1059 = load i32, ptr %i.boi, align 8, !tbaa !13
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit689.thread

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit689.thread: ; preds = %bb.lu, %bb.lv
  %i.bop = phi i32 [ %i.bok, %bb.lu ], [ %.pre1059, %bb.lv ]
  %i.boq = add nsw i32 %i.bop, -1                 ; 2 uses
  store i32 %i.boq, ptr %i.boi, align 8, !tbaa !13
  %i.bor = icmp eq i32 %i.boq, 0
  br i1 %i.bor, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit635.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit635

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit635.sink.split: ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit689.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit633.thread
  %.sink1192 = phi ptr [ %i.afs, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit633.thread ], [ %i.agm, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit689.thread ] ; 2 uses
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.bie, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit633.thread ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit689.thread ]
  %i.bos = load ptr, ptr %.sink1192, align 8, !tbaa !15
  %i.bot = getelementptr inbounds nuw i8, ptr %i.bos, i64 8
  %i.bou = load ptr, ptr %i.bot, align 8
  call void %i.bou(ptr noundef nonnull align 8 dereferenceable(205) %.sink1192) #8
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit635

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit635: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit635.sink.split, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit639, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit689.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit633.thread
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bie, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit633.thread ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit639 ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit689.thread ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit635.sink.split ] ; 3 uses
  br i1 %.not.i.i342, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit631, label %bb.lw

bb.lw:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit635
  %i.bov = getelementptr inbounds nuw i8, ptr %i.aew, i64 8 ; 4 uses
  %i.bow = load i32, ptr %i.bov, align 8, !tbaa !13
  %i.box = add nsw i32 %i.bow, -1                 ; 3 uses
  store i32 %i.box, ptr %i.bov, align 8, !tbaa !13
  %i.boy = icmp eq i32 %i.box, 0
  br i1 %i.boy, label %bb.lx, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit693.thread

bb.lx:                                            ; preds = %bb.lw
  %i.boz = load ptr, ptr %i.aew, align 8, !tbaa !15
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.boz, i64 8
  %i.bpb = load ptr, ptr %i.bpa, align 8
  call void %i.bpb(ptr noundef nonnull align 8 dereferenceable(265) %i.aew) #8, !inline_history !227
  %.pre1060 = load i32, ptr %i.bov, align 8, !tbaa !13
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit693.thread

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit693.thread: ; preds = %bb.lw, %bb.lx
  %i.bpc = phi i32 [ %i.box, %bb.lw ], [ %.pre1060, %bb.lx ]
  %i.bpd = add nsw i32 %i.bpc, -1                 ; 2 uses
  store i32 %i.bpd, ptr %i.bov, align 8, !tbaa !13
  %i.bpe = icmp eq i32 %i.bpd, 0
  br i1 %i.bpe, label %bb.ly, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit631

bb.ly:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit693.thread
  %i.bpf = load ptr, ptr %i.aew, align 8, !tbaa !15
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bpf, i64 8
  %i.bph = load ptr, ptr %i.bpg, align 8
  call void %i.bph(ptr noundef nonnull align 8 dereferenceable(205) %i.aew) #8, !inline_history !102
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit631

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit631: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit635, %7, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit629.thread, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit693.thread, %bb.ly, %bb.kg
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bhs, %bb.kg ], [ %i.bht, %7 ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit635 ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ly ], [ %i.bht, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit629.thread ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit693.thread ] ; 3 uses
  %i.bpi = load ptr, ptr %5, align 8, !tbaa !294  ; 4 uses
  %.not.i.i696 = icmp eq ptr %i.bpi, null
  br i1 %.not.i.i696, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit627.thread, label %bb.lz

bb.lz:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit631
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 8 ; 2 uses
  %i.bpk = load i32, ptr %i.bpj, align 8, !tbaa !13
  %i.bpl = add nsw i32 %i.bpk, -1                 ; 2 uses
  store i32 %i.bpl, ptr %i.bpj, align 8, !tbaa !13
  %i.bpm = icmp eq i32 %i.bpl, 0
  br i1 %i.bpm, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit627, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit627.thread

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit627.thread: ; preds = %bb.lz, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit631, %bb.ke, %bb.kf
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lz ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit631 ], [ %i.bhk, %bb.ke ], [ %i.bhk, %bb.kf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625.thread

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit627: ; preds = %bb.lz
  %i.bpn = load ptr, ptr %i.bpi, align 8, !tbaa !15
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpn, i64 8
  %i.bpp = load ptr, ptr %i.bpo, align 8
  call void %i.bpp(ptr noundef nonnull align 8 dereferenceable(280) %i.bpi) #8, !inline_history !224
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625.thread

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625.thread: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit627, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit627.thread, %bb.kd, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit623.thread, %bb.jz
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1007 = phi { ptr, i32 } [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit627 ], [ %i.bgp, %bb.kd ], [ %i.bgp, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit623.thread ], [ %i.bgo, %bb.jz ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit627.thread ] ; 2 uses
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.xk, i64 8 ; 4 uses
  %i.bpr = load i32, ptr %i.bpq, align 8, !tbaa !13
  %i.bps = add nsw i32 %i.bpr, -1                 ; 3 uses
  store i32 %i.bps, ptr %i.bpq, align 8, !tbaa !13
  %i.bpt = icmp eq i32 %i.bps, 0
  br i1 %i.bpt, label %bb.ma, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit699.thread

bb.ma:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625.thread
  %i.bpu = load ptr, ptr %i.xk, align 8, !tbaa !15
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpu, i64 8
  %i.bpw = load ptr, ptr %i.bpv, align 8
  call void %i.bpw(ptr noundef nonnull align 8 dereferenceable(265) %i.xk) #8, !inline_history !227
  %.pre1061 = load i32, ptr %i.bpq, align 8, !tbaa !13
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit699.thread

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit699.thread: ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625.thread, %bb.ma
  %i.bpx = phi i32 [ %i.bps, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625.thread ], [ %.pre1061, %bb.ma ]
  %i.bpy = add nsw i32 %i.bpx, -1                 ; 2 uses
  store i32 %i.bpy, ptr %i.bpq, align 8, !tbaa !13
  %i.bpz = icmp eq i32 %i.bpy, 0
  br i1 %i.bpz, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619: ; preds = %bb.jw, %bb.jv
  %.sroa.0886.1 = phi ptr [ %i.if, %bb.jv ], [ %.sroa.0886.0, %bb.jw ] ; 2 uses
  %.sroa.0877.1 = phi ptr [ %i.in, %bb.jv ], [ %.sroa.0877.0, %bb.jw ] ; 2 uses
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bgb, %bb.jv ], [ %i.bgc, %bb.jw ] ; 2 uses
  br i1 %.not.i.i.i255, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit703, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread.sink.split: ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit699.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit617.thread
  %.sink1197.a = phi ptr [ %i.wq, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit617.thread ], [ %i.xk, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit699.thread ] ; 2 uses
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1021.ph = phi { ptr, i32 } [ %i.bgd, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit617.thread ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1007, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit699.thread ]
  %i.bqa = load ptr, ptr %.sink1197.a, align 8, !tbaa !15
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bqa, i64 8
  %i.bqc = load ptr, ptr %i.bqb, align 8
  call void %i.bqc(ptr noundef nonnull align 8 dereferenceable(205) %.sink1197.a) #8
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread.sink.split, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit699.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit617.thread, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1021 = phi { ptr, i32 } [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619 ], [ %i.bgd, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit617.thread ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1007, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit699.thread ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1021.ph, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread.sink.split ] ; 2 uses
  %.sroa.0877.11019 = phi ptr [ %.sroa.0877.1, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619 ], [ %i.ql, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit617.thread ], [ %i.ql, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit699.thread ], [ %i.ql, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread.sink.split ] ; 2 uses
  %.sroa.0886.11017 = phi ptr [ %.sroa.0886.1, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619 ], [ %i.pw, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit617.thread ], [ %i.pw, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit699.thread ], [ %i.pw, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread.sink.split ] ; 2 uses
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.ot, i64 8 ; 2 uses
  %i.bqe = load i32, ptr %i.bqd, align 8, !tbaa !13
  %i.bqf = add nsw i32 %i.bqe, -1                 ; 2 uses
  store i32 %i.bqf, ptr %i.bqd, align 8, !tbaa !13
  %i.bqg = icmp eq i32 %i.bqf, 0
  br i1 %i.bqg, label %bb.mb, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit703

bb.mb:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread
  %i.bqh = load ptr, ptr %i.ot, align 8, !tbaa !15
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqh, i64 8
  %i.bqj = load ptr, ptr %i.bqi, align 8
  call void %i.bqj(ptr noundef nonnull align 8 dereferenceable(205) %i.ot) #8, !inline_history !102
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit703

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit703:      ; preds = %bb.mb, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619, %bb.ju
  %.sroa.0886.2 = phi ptr [ %i.if, %bb.ju ], [ %.sroa.0886.1, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619 ], [ %.sroa.0886.11017, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread ], [ %.sroa.0886.11017, %bb.mb ] ; 3 uses
  %.sroa.0877.2 = phi ptr [ %i.in, %bb.ju ], [ %.sroa.0877.1, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619 ], [ %.sroa.0877.11019, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread ], [ %.sroa.0877.11019, %bb.mb ] ; 3 uses
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bga, %bb.ju ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619 ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1021, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit619.thread ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1021, %bb.mb ] ; 3 uses
  br i1 %.not.i.i.i252, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705, label %bb.mc

bb.mc:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit703
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.on, i64 8 ; 2 uses
  %i.bql = load i32, ptr %i.bqk, align 8, !tbaa !13
  %i.bqm = add nsw i32 %i.bql, -1                 ; 2 uses
  store i32 %i.bqm, ptr %i.bqk, align 8, !tbaa !13
  %i.bqn = icmp eq i32 %i.bqm, 0
  br i1 %i.bqn, label %bb.md, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705

bb.md:                                            ; preds = %bb.mc
  %i.bqo = load ptr, ptr %i.on, align 8, !tbaa !15
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqo, i64 8
  %i.bqq = load ptr, ptr %i.bqp, align 8
  call void %i.bqq(ptr noundef nonnull align 8 dereferenceable(205) %i.on) #8, !inline_history !102
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705:      ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit703, %bb.mc, %bb.md, %bb.jt
  %.sroa.0886.4 = phi ptr [ %i.if, %bb.jt ], [ %.sroa.0886.2, %bb.md ], [ %.sroa.0886.2, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit703 ], [ %.sroa.0886.2, %bb.mc ] ; 2 uses
  %.sroa.0877.4 = phi ptr [ %i.in, %bb.jt ], [ %.sroa.0877.2, %bb.md ], [ %.sroa.0877.2, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit703 ], [ %.sroa.0877.2, %bb.mc ] ; 2 uses
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bfy, %bb.jt ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.md ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit703 ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.mc ] ; 2 uses
  %.not.i.i706 = icmp eq ptr %.sroa.0877.4, null
  br i1 %.not.i.i706, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit707, label %bb.me

bb.me:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705.thread, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1030 = phi { ptr, i32 } [ %i.bfz, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705.thread ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705 ] ; 2 uses
  %.sroa.0877.41029 = phi ptr [ %i.in, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705.thread ], [ %.sroa.0877.4, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705 ] ; 3 uses
  %.sroa.0886.41027 = phi ptr [ %i.if, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705.thread ], [ %.sroa.0886.4, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705 ] ; 2 uses
  %i.bqr = getelementptr inbounds nuw i8, ptr %.sroa.0877.41029, i64 8 ; 2 uses
  %i.bqs = load i32, ptr %i.bqr, align 8, !tbaa !13
  %i.bqt = add nsw i32 %i.bqs, -1                 ; 2 uses
  store i32 %i.bqt, ptr %i.bqr, align 8, !tbaa !13
  %i.bqu = icmp eq i32 %i.bqt, 0
  br i1 %i.bqu, label %bb.mf, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit707

bb.mf:                                            ; preds = %bb.me
  %i.bqv = load ptr, ptr %.sroa.0877.41029, align 8, !tbaa !15
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqv, i64 8
  %i.bqx = load ptr, ptr %i.bqw, align 8
  call void %i.bqx(ptr noundef nonnull align 8 dereferenceable(205) %.sroa.0877.41029) #8, !inline_history !102
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit707

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit707:      ; preds = %bb.mf, %bb.me, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705, %bb.js
  %.sroa.0886.5 = phi ptr [ %i.if, %bb.js ], [ %.sroa.0886.4, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705 ], [ %.sroa.0886.41027, %bb.me ], [ %.sroa.0886.41027, %bb.mf ] ; 4 uses
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bfx, %bb.js ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit705 ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1030, %bb.me ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1030, %bb.mf ] ; 3 uses
  %.not.i.i708 = icmp eq ptr %.sroa.0886.5, null
  br i1 %.not.i.i708, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit709, label %bb.mg

bb.mg:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit707
  %i.bqy = getelementptr inbounds nuw i8, ptr %.sroa.0886.5, i64 8 ; 2 uses
  %i.bqz = load i32, ptr %i.bqy, align 8, !tbaa !13
  %i.bra = add nsw i32 %i.bqz, -1                 ; 2 uses
  store i32 %i.bra, ptr %i.bqy, align 8, !tbaa !13
  %i.brb = icmp eq i32 %i.bra, 0
  br i1 %i.brb, label %bb.mh, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit709

bb.mh:                                            ; preds = %bb.mg
  %i.brc = load ptr, ptr %.sroa.0886.5, align 8, !tbaa !15
  %i.brd = getelementptr inbounds nuw i8, ptr %i.brc, i64 8
  %i.bre = load ptr, ptr %i.brd, align 8
  call void %i.bre(ptr noundef nonnull align 8 dereferenceable(205) %.sroa.0886.5) #8, !inline_history !102
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit709

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit709:      ; preds = %bb.mh, %bb.mg, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit707, %bb.jr
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bfw, %bb.jr ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit707 ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.mg ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.mh ] ; 3 uses
  %i.brf = load ptr, ptr %3, align 8, !tbaa !243  ; 4 uses
  %.not.i.i710 = icmp eq ptr %i.brf, null
  br i1 %.not.i.i710, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit711, label %bb.mi

bb.mi:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit709
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 8 ; 2 uses
  %i.brh = load i32, ptr %i.brg, align 8, !tbaa !13
  %i.bri = add nsw i32 %i.brh, -1                 ; 2 uses
  store i32 %i.bri, ptr %i.brg, align 8, !tbaa !13
  %i.brj = icmp eq i32 %i.bri, 0
  br i1 %i.brj, label %bb.mj, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit711

bb.mj:                                            ; preds = %bb.mi
  %i.brk = load ptr, ptr %i.brf, align 8, !tbaa !15
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brk, i64 8
  %i.brm = load ptr, ptr %i.brl, align 8
  call void %i.brm(ptr noundef nonnull align 8 dereferenceable(205) %i.brf) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit711

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit711:     ; preds = %bb.mj, %bb.mi, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit709, %bb.jq
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bfv, %bb.jq ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit709 ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.mi ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.mj ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br i1 %.not.i.i.i228, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit713, label %bb.mk

bb.mk:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit711
  %i.brn = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.bro = load i32, ptr %i.brn, align 8, !tbaa !13
  %i.brp = add nsw i32 %i.bro, -1                 ; 2 uses
  store i32 %i.brp, ptr %i.brn, align 8, !tbaa !13
  %i.brq = icmp eq i32 %i.brp, 0
  br i1 %i.brq, label %bb.ml, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit713

bb.ml:                                            ; preds = %bb.mk
  %i.brr = load ptr, ptr %i.hw, align 8, !tbaa !15
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brr, i64 8
  %i.brt = load ptr, ptr %i.brs, align 8
  call void %i.brt(ptr noundef nonnull align 8 dereferenceable(205) %i.hw) #8, !inline_history !102
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit713

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit713:      ; preds = %bb.ml, %bb.mk, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit711, %bb.jp
  %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bfu, %bb.jp ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit711 ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.mk ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ml ] ; 2 uses
  br i1 %.not.i.i.i225, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit613, label %bb.mm

bb.mm:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit713
  %i.bru = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  %i.brv = load i32, ptr %i.bru, align 8, !tbaa !13
  %i.brw = add nsw i32 %i.brv, -1                 ; 2 uses
  store i32 %i.brw, ptr %i.bru, align 8, !tbaa !13
  %i.brx = icmp eq i32 %i.brw, 0
end_hunk_2
