Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MCWin64EH?download=true
inline.NumInlined: 2228
inline.NumDeleted: 892
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL14EmitUnwindInfoRN4llvm10MCStreamerEPNS_5WinEH9FrameInfoE:bb.a
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.aas = zext i8 %.2132 to i64
  %i.aat = load ptr, ptr %0, align 8, !tbaa !62
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 528
  %i.aav = load ptr, ptr %i.aau, align 8
  call void %i.aav(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.aas, i32 noundef 1) #22, !inline_history !1
  %i.aaw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aax = load i32, ptr %i.aaw, align 8, !tbaa !302 ; 2 uses
  %i.aay = icmp sgt i32 %i.aax, -1
  br i1 %i.aay, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.aaz = zext nneg i32 %i.aax to i64
  %i.aba = load ptr, ptr %i.vc, align 8, !tbaa !170
  %i.abb = getelementptr inbounds nuw [24 x i8], ptr %i.aba, i64 %i.aaz ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 12
  %i.abd = load i16, ptr %i.abc, align 4, !tbaa !21
  %i.abe = and i16 %i.abd, 15
  %i.abf = zext nneg i16 %i.abe to i32
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  %i.abh = load i32, ptr %i.abg, align 8, !tbaa !28
  %i.abi = and i32 %i.abh, 240
  %i.abj = or disjoint i32 %i.abi, %i.abf
  %i.abk = zext nneg i32 %i.abj to i64
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.0126 = phi i64 [ %i.abk, %bb.dw ], [ 0, %bb.dv ]
  %i.abl = load ptr, ptr %0, align 8, !tbaa !62
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 528
  %i.abn = load ptr, ptr %i.abm, align 8
  call void %i.abn(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %.0126, i32 noundef 1) #22, !inline_history !1
  br i1 %i.zt, label %bb.dy, label %.loopexit

bb.dy:                                            ; preds = %bb.dx
  %i.abo = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.abp = load i32, ptr %i.abo, align 8, !tbaa !108
  %i.abq = zext i32 %i.abp to i64
  %i.abr = shl nuw nsw i64 %i.abq, 1
  %i.abs = add nuw nsw i64 %i.abr, 2
  call void @_ZN4llvm16MCObjectStreamer14ensureHeadroomEm(ptr noundef nonnull align 8 dereferenceable(448) %0, i64 noundef %i.abs) #22
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !107, !noalias !303 ; 2 uses
  %i.abv = load i32, ptr %i.abo, align 8, !tbaa !108, !noalias !303 ; 3 uses
  %.not225235 = icmp eq i32 %i.abv, 0
  br i1 %.not225235, label %.loopexit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.abw = zext i32 %i.abv to i64
  %.idx = mul nuw nsw i64 %i.abw, 72
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abu, i64 %.idx ; 3 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.vq, i64 192 ; 6 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.vq, i64 200 ; 2 uses
  %i.aca = getelementptr inbounds i8, ptr %i.abx, i64 -72
  %i.acb = zext nneg i8 %.2135 to i64
  %i.acc = shl nuw nsw i64 %i.acb, 4
  %i.acd = or disjoint i64 %i.acc, 6
  %i.ace = zext i8 %.0219 to i64
  %i.acf = trunc nuw i8 %.2135 to i1
  %i.acg = load ptr, ptr %0, align 8, !tbaa !62
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 528
  %i.aci = load ptr, ptr %i.ach, align 8
  call void %i.aci(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.ace, i32 noundef 1) #22, !inline_history !1
  %i.acj = load ptr, ptr %0, align 8, !tbaa !62
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 528
  %i.acl = load ptr, ptr %i.ack, align 8
  call void %i.acl(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.acd, i32 noundef 1) #22, !inline_history !1
  br i1 %i.acf, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.acm = load ptr, ptr %i.aby, align 8, !tbaa !186 ; 3 uses
  %i.acn = ptrtoint ptr %i.acm to i64
  %i.aco = add i64 %i.acn, 64                     ; 2 uses
  %i.acp = load i64, ptr %i.abz, align 8, !tbaa !187
  %i.acq = icmp ult i64 %i.aco, %i.acp
  br i1 %i.acq, label %_ZnwmRN4llvm9MCContextEm.exit.i.peel, label %_ZnwmRN4llvm9MCContextEm.exit.thread.i.peel, !prof !26

_ZnwmRN4llvm9MCContextEm.exit.thread.i.peel:      ; preds = %bb.ea
  %i.acr = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.aby, i64 noundef 64, i64 noundef 64, i8 3)
  br label %bb.eb

_ZnwmRN4llvm9MCContextEm.exit.i.peel:             ; preds = %bb.ea
  %i.acs = inttoptr i64 %i.aco to ptr
  store ptr %i.acs, ptr %i.aby, align 8, !tbaa !186
  %i.act = icmp eq ptr %i.acm, null
  br i1 %i.act, label %_ZN12_GLOBAL__N_126MCUnwindV2EpilogTargetExpr6createERKN4llvm5WinEH9FrameInfoERKNS3_6EpilogEhRNS1_9MCContextE.exit.peel, label %bb.eb

bb.eb:                                            ; preds = %_ZnwmRN4llvm9MCContextEm.exit.i.peel, %_ZnwmRN4llvm9MCContextEm.exit.thread.i.peel
  %.0.i.i.i.i4.i.peel = phi ptr [ %i.acr, %_ZnwmRN4llvm9MCContextEm.exit.thread.i.peel ], [ %i.acm, %_ZnwmRN4llvm9MCContextEm.exit.i.peel ] ; 9 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i4.i.peel, i64 8
  store i8 5, ptr %i.acu, align 8, !tbaa !297
  %i.acv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i4.i.peel, i64 9 ; 2 uses
  %i.acw = load i32, ptr %i.acv, align 1
  %i.acx = and i32 %i.acw, -16777216
  store i32 %i.acx, ptr %i.acv, align 1
  %i.acy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i4.i.peel, i64 16
  store ptr null, ptr %i.acy, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN12_GLOBAL__N_126MCUnwindV2EpilogTargetExprE, i64 16), ptr %.0.i.i.i.i4.i.peel, align 8, !tbaa !62
  %i.acz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i4.i.peel, i64 24
  store ptr %1, ptr %i.acz, align 8, !tbaa !35
  %i.ada = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i4.i.peel, i64 32
  %i.adb = getelementptr inbounds i8, ptr %i.abx, i64 -24
  %i.adc = load <2 x ptr>, ptr %i.adb, align 8, !tbaa !117
  %i.add = shufflevector <2 x ptr> %i.adc, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.add, ptr %i.ada, align 8, !tbaa !117
  %i.ade = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i4.i.peel, i64 48
  store i8 %.0219, ptr %i.ade, align 8, !tbaa !202
  %i.adf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i4.i.peel, i64 56
  %i.adg = getelementptr inbounds i8, ptr %i.abx, i64 -8
  %i.adh = load i64, ptr %i.adg, align 8, !tbaa !175
  store i64 %i.adh, ptr %i.adf, align 8, !tbaa !175
  br label %_ZN12_GLOBAL__N_126MCUnwindV2EpilogTargetExpr6createERKN4llvm5WinEH9FrameInfoERKNS3_6EpilogEhRNS1_9MCContextE.exit.peel

_ZN12_GLOBAL__N_126MCUnwindV2EpilogTargetExpr6createERKN4llvm5WinEH9FrameInfoERKNS3_6EpilogEhRNS1_9MCContextE.exit.peel: ; preds = %bb.eb, %_ZnwmRN4llvm9MCContextEm.exit.i.peel
  %i.adi = phi ptr [ %.0.i.i.i.i4.i.peel, %bb.eb ], [ null, %_ZnwmRN4llvm9MCContextEm.exit.i.peel ] ; 2 uses
  %i.adj = icmp eq ptr %i.adi, null
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %spec.select.peel = select i1 %i.adj, ptr null, ptr %i.adk
  call void @_ZN4llvm16MCObjectStreamer8addFixupEPKNS_6MCExprEt(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %spec.select.peel, i16 noundef zeroext 4002) #22
  call void @_ZN4llvm16MCObjectStreamer14appendContentsEmh(ptr noundef nonnull align 8 dereferenceable(448) %0, i64 noundef 2, i8 noundef zeroext 0) #22
  br label %bb.ec

bb.ec:                                            ; preds = %_ZN12_GLOBAL__N_126MCUnwindV2EpilogTargetExpr6createERKN4llvm5WinEH9FrameInfoERKNS3_6EpilogEhRNS1_9MCContextE.exit.peel, %bb.dz
  %.not225.peel = icmp eq i32 %i.abv, 1
  br i1 %.not225.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.ec, %bb.ee
  %.sroa.0201.0236 = phi ptr [ %i.adl, %bb.ee ], [ %i.aca, %bb.ec ] ; 3 uses
  %i.adl = getelementptr inbounds i8, ptr %.sroa.0201.0236, i64 -72 ; 2 uses
  %.pre256 = load ptr, ptr %i.aby, align 8, !tbaa !186 ; 3 uses
  %.pre257 = load i64, ptr %i.abz, align 8, !tbaa !187
  %i.adm = ptrtoint ptr %.pre256 to i64
  %i.adn = add i64 %i.adm, 64                     ; 2 uses
  %i.ado = icmp ult i64 %i.adn, %.pre257
  br i1 %i.ado, label %_ZnwmRN4llvm9MCContextEm.exit.i, label %_ZnwmRN4llvm9MCContextEm.exit.thread.i, !prof !26

_ZnwmRN4llvm9MCContextEm.exit.thread.i:           ; preds = %.peel.next
  %i.adp = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.aby, i64 noundef 64, i64 noundef 64, i8 3)
  br label %bb.ed

_ZnwmRN4llvm9MCContextEm.exit.i:                  ; preds = %.peel.next
  %i.adq = inttoptr i64 %i.adn to ptr
  store ptr %i.adq, ptr %i.aby, align 8, !tbaa !186
  %i.adr = icmp eq ptr %.pre256, null
  br i1 %i.adr, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %_ZnwmRN4llvm9MCContextEm.exit.i, %_ZnwmRN4llvm9MCContextEm.exit.thread.i
  %.0.i.i.i.i4.i = phi ptr [ %i.adp, %_ZnwmRN4llvm9MCContextEm.exit.thread.i ], [ %.pre256, %_ZnwmRN4llvm9MCContextEm.exit.i ] ; 9 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i4.i, i64 8
  store i8 5, ptr %i.ads, align 8, !tbaa !297
  %i.adt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i4.i, i64 9 ; 2 uses
  %i.adu = load i32, ptr %i.adt, align 1
  %i.adv = and i32 %i.adu, -16777216
  store i32 %i.adv, ptr %i.adt, align 1
  %i.adw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i4.i, i64 16
  store ptr null, ptr %i.adw, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN12_GLOBAL__N_126MCUnwindV2EpilogTargetExprE, i64 16), ptr %.0.i.i.i.i4.i, align 8, !tbaa !62
  %i.adx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i4.i, i64 24
  store ptr %1, ptr %i.adx, align 8, !tbaa !35
  %i.ady = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i4.i, i64 32
  %i.adz = getelementptr inbounds i8, ptr %.sroa.0201.0236, i64 -24
  %i.aea = load <2 x ptr>, ptr %i.adz, align 8, !tbaa !117
  %i.aeb = shufflevector <2 x ptr> %i.aea, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.aeb, ptr %i.ady, align 8, !tbaa !117
  %i.aec = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i4.i, i64 48
  store i8 %.0219, ptr %i.aec, align 8, !tbaa !202
  %i.aed = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i4.i, i64 56
  %i.aee = getelementptr inbounds i8, ptr %.sroa.0201.0236, i64 -8
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !175
  store i64 %i.aef, ptr %i.aed, align 8, !tbaa !175
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %_ZnwmRN4llvm9MCContextEm.exit.i
  %i.aeg = phi ptr [ %.0.i.i.i.i4.i, %bb.ed ], [ null, %_ZnwmRN4llvm9MCContextEm.exit.i ] ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, null
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %spec.select = select i1 %i.aeh, ptr null, ptr %i.aei
  call void @_ZN4llvm16MCObjectStreamer8addFixupEPKNS_6MCExprEt(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %spec.select, i16 noundef zeroext 4002) #22
  call void @_ZN4llvm16MCObjectStreamer14appendContentsEmh(ptr noundef nonnull align 8 dereferenceable(448) %0, i64 noundef 2, i8 noundef zeroext 0) #22
  %.not225 = icmp eq ptr %i.adl, %i.abu
  br i1 %.not225, label %.loopexit, label %.peel.next, !llvm.loop !279

.loopexit:                                        ; preds = %bb.ee, %bb.ec, %bb.dy, %bb.dx
  br i1 %.2138, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.loopexit
  %i.aej = load ptr, ptr %0, align 8, !tbaa !62
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 528
  %i.ael = load ptr, ptr %i.aek, align 8
  call void %i.ael(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef 1536, i32 noundef 2) #22, !inline_history !280
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.loopexit
  %i.aem = load ptr, ptr %i.ve, align 8, !tbaa !106
  %i.aen = load ptr, ptr %i.vc, align 8, !tbaa !170
  %i.aeo = ptrtoint ptr %i.aem to i64
  %i.aep = ptrtoint ptr %i.aen to i64
  %i.aeq = sub i64 %i.aeo, %i.aep
  %i.aer = sdiv exact i64 %i.aeq, 24              ; 2 uses
  %26 = and i64 %i.aer, 255
  %.not243 = icmp eq i64 %26, 0
  br i1 %.not243, label %._crit_edge242, label %.lr.ph241

.lr.ph241:                                        ; preds = %bb.eg
  %i.aes = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aet = getelementptr inbounds nuw i8, ptr %3, i64 33
  %27 = trunc i64 %i.aer to i8
  br label %bb.eh

._crit_edge242:                                   ; preds = %_ZL14EmitUnwindCodeRN4llvm10MCStreamerEPKNS_8MCSymbolERNS_5WinEH11InstructionE.exit, %bb.eg
  %i.aeu = and i8 %.2132, 1
  %.not147 = icmp eq i8 %i.aeu, 0
  br i1 %.not147, label %bb.ev, label %bb.eu

bb.eh:                                            ; preds = %.lr.ph241, %_ZL14EmitUnwindCodeRN4llvm10MCStreamerEPKNS_8MCSymbolERNS_5WinEH11InstructionE.exit
  %.0239 = phi i8 [ 0, %.lr.ph241 ], [ %i.aiz, %_ZL14EmitUnwindCodeRN4llvm10MCStreamerEPKNS_8MCSymbolERNS_5WinEH11InstructionE.exit ]
  %i.aev = load ptr, ptr %i.ve, align 8, !tbaa !105 ; 4 uses
  %i.aew = getelementptr inbounds i8, ptr %i.aev, i64 -24 ; 2 uses
  %.sroa.0180.0.copyload = load ptr, ptr %i.aew, align 8, !tbaa !117 ; 7 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %i.aev, i64 -16
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !204 ; 9 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %i.aev, i64 -12
  %.sroa.19.0.copyload = load i16, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !205 ; 3 uses
  %.sroa.22197.0..sroa_idx = getelementptr inbounds i8, ptr %i.aev, i64 -8
  %.sroa.22197.0.copyload = load i8, ptr %.sroa.22197.0..sroa_idx, align 8, !tbaa !114 ; 4 uses
  store ptr %i.aew, ptr %i.ve, align 8, !tbaa !106
  %i.aex = load ptr, ptr %1, align 8, !tbaa !118  ; 7 uses
  %i.aey = and i8 %.sroa.22197.0.copyload, 15     ; 8 uses
  switch i8 %.sroa.22197.0.copyload, label %bb.ei [
    i8 66, label %bb.ej
    i8 0, label %bb.ek
    i8 1, label %bb.el
    i8 2, label %bb.ep
    i8 3, label %bb.eq
    i8 4, label %bb.er
    i8 8, label %bb.er
    i8 5, label %bb.es
    i8 9, label %bb.es
    i8 10, label %bb.et
  ]

bb.ei:                                            ; preds = %bb.eh
  unreachable

bb.ej:                                            ; preds = %bb.eh
  %i.aez = load ptr, ptr %i.vp, align 8, !tbaa !100, !nonnull !101, !align !102
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i8 1, ptr %i.aet, align 1, !tbaa !113
  store ptr @.str.4, ptr %3, align 8, !tbaa !114
  store i8 3, ptr %i.aes, align 8, !tbaa !115
  call void @_ZN4llvm9MCContext11reportErrorENS_5SMLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.aez, ptr null, ptr noundef nonnull align 8 dereferenceable(34) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZL14EmitUnwindCodeRN4llvm10MCStreamerEPKNS_8MCSymbolERNS_5WinEH11InstructionE.exit

bb.ek:                                            ; preds = %bb.eh
  %i.afa = load ptr, ptr %i.vp, align 8, !tbaa !100, !nonnull !101, !align !102 ; 3 uses
  %i.afb = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %.sroa.0180.0.copyload, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.afa, ptr null) #22
  %i.afc = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.aex, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.afa, ptr null) #22
  %i.afd = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 18, ptr noundef %i.afb, ptr noundef %i.afc, ptr noundef nonnull align 8 dereferenceable(2208) %i.afa, ptr null) #22
  call void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.afd, i32 noundef 1, ptr null) #22
  %.tr74.i = trunc i16 %.sroa.19.0.copyload to i8
  %i.afe = shl i8 %.tr74.i, 4
  %i.aff = or disjoint i8 %i.afe, %i.aey
  %i.afg = zext i8 %i.aff to i64
  %i.afh = load ptr, ptr %0, align 8, !tbaa !62
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 528
  %i.afj = load ptr, ptr %i.afi, align 8
  call void %i.afj(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.afg, i32 noundef 1) #22, !inline_history !281
  br label %_ZL14EmitUnwindCodeRN4llvm10MCStreamerEPKNS_8MCSymbolERNS_5WinEH11InstructionE.exit

bb.el:                                            ; preds = %bb.eh
  %i.afk = load ptr, ptr %i.vp, align 8, !tbaa !100, !nonnull !101, !align !102 ; 3 uses
  %i.afl = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %.sroa.0180.0.copyload, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.afk, ptr null) #22
  %i.afm = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.aex, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.afk, ptr null) #22
  %i.afn = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 18, ptr noundef %i.afl, ptr noundef %i.afm, ptr noundef nonnull align 8 dereferenceable(2208) %i.afk, ptr null) #22
  call void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.afn, i32 noundef 1, ptr null) #22
  %i.afo = icmp ugt i32 %.sroa.10.0.copyload, 524280
  br i1 %i.afo, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.afp = or disjoint i8 %i.aey, 16
  %i.afq = zext nneg i8 %i.afp to i64
  %i.afr = load ptr, ptr %0, align 8, !tbaa !62
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 528
  %i.aft = load ptr, ptr %i.afs, align 8
  call void %i.aft(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.afq, i32 noundef 1) #22, !inline_history !281
  %i.afu = and i32 %.sroa.10.0.copyload, 65528
  %i.afv = zext nneg i32 %i.afu to i64
  %i.afw = load ptr, ptr %0, align 8, !tbaa !62
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 528
  %i.afy = load ptr, ptr %i.afx, align 8
  call void %i.afy(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.afv, i32 noundef 2) #22, !inline_history !282
  br label %bb.eo

bb.en:                                            ; preds = %bb.el
  %i.afz = zext nneg i8 %i.aey to i64
  %i.aga = load ptr, ptr %0, align 8, !tbaa !62
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 528
  %i.agc = load ptr, ptr %i.agb, align 8
  call void %i.agc(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.afz, i32 noundef 1) #22, !inline_history !281
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.sink = phi i32 [ 3, %bb.en ], [ 16, %bb.em ]
  %i.agd = lshr i32 %.sroa.10.0.copyload, %.sink
  %i.age = zext nneg i32 %i.agd to i64
  %i.agf = load ptr, ptr %0, align 8, !tbaa !62
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 528
  %i.agh = load ptr, ptr %i.agg, align 8
  call void %i.agh(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.age, i32 noundef 2) #22, !inline_history !282
  br label %_ZL14EmitUnwindCodeRN4llvm10MCStreamerEPKNS_8MCSymbolERNS_5WinEH11InstructionE.exit

bb.ep:                                            ; preds = %bb.eh
  %.tr73.i = zext i32 %.sroa.10.0.copyload to i64
  %i.agi = shl nuw nsw i64 %.tr73.i, 1
  %i.agj = and i64 %i.agi, 240
  %i.agk = add nuw nsw i64 %i.agj, 242
  %i.agl = load ptr, ptr %i.vp, align 8, !tbaa !100, !nonnull !101, !align !102 ; 3 uses
  %i.agm = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %.sroa.0180.0.copyload, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.agl, ptr null) #22
  %i.agn = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.aex, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.agl, ptr null) #22
  %i.ago = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 18, ptr noundef %i.agm, ptr noundef %i.agn, ptr noundef nonnull align 8 dereferenceable(2208) %i.agl, ptr null) #22
  call void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.ago, i32 noundef 1, ptr null) #22
  %i.agp = and i64 %i.agk, 242
  %i.agq = load ptr, ptr %0, align 8, !tbaa !62
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 528
  %i.ags = load ptr, ptr %i.agr, align 8
  call void %i.ags(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.agp, i32 noundef 1) #22, !inline_history !281
  br label %_ZL14EmitUnwindCodeRN4llvm10MCStreamerEPKNS_8MCSymbolERNS_5WinEH11InstructionE.exit

bb.eq:                                            ; preds = %bb.eh
  %i.agt = load ptr, ptr %i.vp, align 8, !tbaa !100, !nonnull !101, !align !102 ; 3 uses
  %i.agu = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %.sroa.0180.0.copyload, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.agt, ptr null) #22
  %i.agv = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.aex, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.agt, ptr null) #22
  %i.agw = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 18, ptr noundef %i.agu, ptr noundef %i.agv, ptr noundef nonnull align 8 dereferenceable(2208) %i.agt, ptr null) #22
  call void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.agw, i32 noundef 1, ptr null) #22
  %i.agx = zext nneg i8 %i.aey to i64
  %i.agy = load ptr, ptr %0, align 8, !tbaa !62
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 528
  %i.aha = load ptr, ptr %i.agz, align 8
  call void %i.aha(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.agx, i32 noundef 1) #22, !inline_history !281
  br label %_ZL14EmitUnwindCodeRN4llvm10MCStreamerEPKNS_8MCSymbolERNS_5WinEH11InstructionE.exit

bb.er:                                            ; preds = %bb.eh, %bb.eh
  %.tr72.i = trunc i16 %.sroa.19.0.copyload to i8
  %i.ahb = shl i8 %.tr72.i, 4
  %i.ahc = or disjoint i8 %i.ahb, %i.aey
  %i.ahd = load ptr, ptr %i.vp, align 8, !tbaa !100, !nonnull !101, !align !102 ; 3 uses
  %i.ahe = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %.sroa.0180.0.copyload, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.ahd, ptr null) #22
  %i.ahf = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.aex, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.ahd, ptr null) #22
  %i.ahg = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 18, ptr noundef %i.ahe, ptr noundef %i.ahf, ptr noundef nonnull align 8 dereferenceable(2208) %i.ahd, ptr null) #22
  call void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.ahg, i32 noundef 1, ptr null) #22
  %i.ahh = zext i8 %i.ahc to i64
  %i.ahi = load ptr, ptr %0, align 8, !tbaa !62
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 528
  %i.ahk = load ptr, ptr %i.ahj, align 8
  call void %i.ahk(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.ahh, i32 noundef 1) #22, !inline_history !281
  %i.ahl = lshr i32 %.sroa.10.0.copyload, 3
  %i.ahm = icmp eq i8 %.sroa.22197.0.copyload, 8
  %i.ahn = lshr i32 %.sroa.10.0.copyload, 4
  %i.aho = and i32 %i.ahn, 32767
  %i.ahp = and i32 %i.ahl, 65535
  %i.ahq = select i1 %i.ahm, i32 %i.aho, i32 %i.ahp
  %i.ahr = zext nneg i32 %i.ahq to i64
  %i.ahs = load ptr, ptr %0, align 8, !tbaa !62
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 528
  %i.ahu = load ptr, ptr %i.aht, align 8
  call void %i.ahu(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.ahr, i32 noundef 2) #22, !inline_history !282
  br label %_ZL14EmitUnwindCodeRN4llvm10MCStreamerEPKNS_8MCSymbolERNS_5WinEH11InstructionE.exit

bb.es:                                            ; preds = %bb.eh, %bb.eh
  %.tr.i = trunc i16 %.sroa.19.0.copyload to i8
  %i.ahv = shl i8 %.tr.i, 4
  %i.ahw = or disjoint i8 %i.ahv, %i.aey
  %i.ahx = load ptr, ptr %i.vp, align 8, !tbaa !100, !nonnull !101, !align !102 ; 3 uses
  %i.ahy = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %.sroa.0180.0.copyload, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.ahx, ptr null) #22
  %i.ahz = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.aex, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.ahx, ptr null) #22
  %i.aia = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 18, ptr noundef %i.ahy, ptr noundef %i.ahz, ptr noundef nonnull align 8 dereferenceable(2208) %i.ahx, ptr null) #22
  call void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.aia, i32 noundef 1, ptr null) #22
  %i.aib = zext i8 %i.ahw to i64
  %i.aic = load ptr, ptr %0, align 8, !tbaa !62
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 528
  %i.aie = load ptr, ptr %i.aid, align 8
  call void %i.aie(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.aib, i32 noundef 1) #22, !inline_history !281
  %i.aif = icmp eq i8 %.sroa.22197.0.copyload, 9
  %..i = select i1 %i.aif, i32 65520, i32 65528
  %i.aig = and i32 %..i, %.sroa.10.0.copyload
  %.2.i = zext nneg i32 %i.aig to i64
  %i.aih = load ptr, ptr %0, align 8, !tbaa !62
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 528
  %i.aij = load ptr, ptr %i.aii, align 8
  call void %i.aij(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %.2.i, i32 noundef 2) #22, !inline_history !282
  %i.aik = lshr i32 %.sroa.10.0.copyload, 16
  %i.ail = zext nneg i32 %i.aik to i64
  %i.aim = load ptr, ptr %0, align 8, !tbaa !62
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 528
  %i.aio = load ptr, ptr %i.ain, align 8
  call void %i.aio(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.ail, i32 noundef 2) #22, !inline_history !282
  br label %_ZL14EmitUnwindCodeRN4llvm10MCStreamerEPKNS_8MCSymbolERNS_5WinEH11InstructionE.exit

bb.et:                                            ; preds = %bb.eh
  %i.aip = icmp eq i32 %.sroa.10.0.copyload, 1
  %i.aiq = or disjoint i8 %i.aey, 16
  %spec.select.i177 = select i1 %i.aip, i8 %i.aiq, i8 %i.aey
  %i.air = load ptr, ptr %i.vp, align 8, !tbaa !100, !nonnull !101, !align !102 ; 3 uses
  %i.ais = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %.sroa.0180.0.copyload, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.air, ptr null) #22
  %i.ait = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.aex, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.air, ptr null) #22
  %i.aiu = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 18, ptr noundef %i.ais, ptr noundef %i.ait, ptr noundef nonnull align 8 dereferenceable(2208) %i.air, ptr null) #22
  call void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.aiu, i32 noundef 1, ptr null) #22
  %i.aiv = zext nneg i8 %spec.select.i177 to i64
  %i.aiw = load ptr, ptr %0, align 8, !tbaa !62
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 528
  %i.aiy = load ptr, ptr %i.aix, align 8
  call void %i.aiy(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.aiv, i32 noundef 1) #22, !inline_history !281
  br label %_ZL14EmitUnwindCodeRN4llvm10MCStreamerEPKNS_8MCSymbolERNS_5WinEH11InstructionE.exit

_ZL14EmitUnwindCodeRN4llvm10MCStreamerEPKNS_8MCSymbolERNS_5WinEH11InstructionE.exit: ; preds = %bb.ej, %bb.ek, %bb.eo, %bb.ep, %bb.eq, %bb.er, %bb.es, %bb.et
  %i.aiz = add nuw i8 %.0239, 1                   ; 2 uses
  %28 = icmp ult i8 %i.aiz, %27
  br i1 %28, label %bb.eh, label %._crit_edge242, !llvm.loop !283

bb.eu:                                            ; preds = %._crit_edge242
  %i.aja = load ptr, ptr %0, align 8, !tbaa !62
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 528
  %i.ajc = load ptr, ptr %i.ajb, align 8
  call void %i.ajc(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef 0, i32 noundef 2) #22, !inline_history !280
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %._crit_edge242
  %i.ajd = zext i8 %.1128 to i32                  ; 2 uses
  %i.aje = and i32 %i.ajd, 32
  %.not148 = icmp eq i32 %i.aje, 0
  br i1 %.not148, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ajf = load ptr, ptr %i.zu, align 8, !tbaa !295
  call fastcc void @_ZL19EmitRuntimeFunctionRN4llvm10MCStreamerEPKNS_5WinEH9FrameInfoE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.ajf)
  br label %.critedge152

bb.ex:                                            ; preds = %bb.ev
  %i.ajg = and i32 %i.ajd, 24
  %.not149 = icmp eq i32 %i.ajg, 0
  br i1 %.not149, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ajh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !194
  %i.ajj = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.aji, i16 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(2208) %i.vq, ptr null) #22
  call void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.ajj, i32 noundef 4, ptr null) #22
  br label %.critedge152

bb.ez:                                            ; preds = %bb.ex
  %i.ajk = icmp eq i8 %.2132, 0
  br i1 %i.ajk, label %bb.fa, label %.critedge152

bb.fa:                                            ; preds = %bb.ez
  %i.ajl = load ptr, ptr %0, align 8, !tbaa !62
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 528
  %i.ajn = load ptr, ptr %i.ajm, align 8
  call void %i.ajn(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef 0, i32 noundef 4) #22, !inline_history !2
  br label %.critedge152

.critedge152:                                     ; preds = %bb.ey, %bb.fa, %bb.ez, %bb.ew, %bb.dp, %_ZNK4llvm8MCSymbol7getNameEv.exit, %_ZNK4llvm8MCSymbol7getNameEv.exit170, %bb.cw, %bb.a, %_ZL16EmitUnwindInfoV3RN4llvm10MCStreamerEPNS_5WinEH9FrameInfoE.exit
  ret void
}

declare noundef ptr @_ZN4llvm10MCStreamer25getAssociatedPDataSectionEPKNS_9MCSectionE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL19EmitRuntimeFunctionRN4llvm10MCStreamerEPKNS_5WinEH9FrameInfoE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100, !nonnull !101, !align !102
  %i.c = load ptr, ptr %0, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 600
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(304) %0, i8 2, i64 noundef 0, i8 noundef zeroext 1, i32 noundef 0) #22
  %i.f = load ptr, ptr %1, align 8, !tbaa !118    ; 3 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !100, !nonnull !101, !align !102 ; 5 uses
  %i.h = tail call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.f, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.g, ptr null) #22
  %i.i = tail call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.f, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.g, ptr null) #22
  %i.j = tail call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 18, ptr noundef %i.i, ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(2208) %i.g, ptr null) #22
  %i.k = tail call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.f, i16 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(2208) %i.g, ptr null) #22
  %i.l = tail call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 0, ptr noundef %i.k, ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(2208) %i.g, ptr null) #22
  tail call void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.l, i32 noundef 4, ptr null) #22
  %i.m = load ptr, ptr %1, align 8, !tbaa !118    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !200
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !100, !nonnull !101, !align !102 ; 5 uses
  %i.q = tail call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.m, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.p, ptr null) #22
  %i.r = tail call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.o, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.p, ptr null) #22
  %i.s = tail call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 18, ptr noundef %i.r, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(2208) %i.p, ptr null) #22
  %i.t = tail call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.m, i16 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(2208) %i.p, ptr null) #22
  %i.u = tail call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 0, ptr noundef %i.t, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(2208) %i.p, ptr null) #22
  tail call void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.u, i32 noundef 4, ptr null) #22
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.x = tail call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.w, i16 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(2208) %i.b, ptr null) #22
  tail call void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.x, i32 noundef 4, ptr null) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm7Win64EH13UnwindEmitter14EmitUnwindInfoERNS_10MCStreamerEPNS_5WinEH9FrameInfoEb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef %2, i1 zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.c = tail call noundef ptr @_ZN4llvm10MCStreamer25getAssociatedXDataSectionEPKNS_9MCSectionE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef %i.b) #22
  %i.d = load ptr, ptr %1, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef %i.c, i32 noundef 0) #22
  tail call fastcc void @_ZL14EmitUnwindInfoRN4llvm10MCStreamerEPNS_5WinEH9FrameInfoE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm7Win64EH18ARM64UnwindEmitter4EmitERNS_10MCStreamerE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %.not46 = icmp eq ptr %i.b, %i.d
  br i1 %.not46, label %._crit_edge52, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK4llvm5WinEH9FrameInfo5emptyEv.exit.thread
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %.pre53 = load ptr, ptr %i.c, align 8, !tbaa !33 ; 2 uses
  %.not3548 = icmp eq ptr %.pre, %.pre53
  br i1 %.not3548, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.d

.lr.ph:                                           ; preds = %bb.a, %_ZNK4llvm5WinEH9FrameInfo5emptyEv.exit.thread
  %.03347 = phi ptr [ %i.ad, %_ZNK4llvm5WinEH9FrameInfo5emptyEv.exit.thread ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.03347, align 8, !tbaa !35 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZNK4llvm5WinEH9FrameInfo5emptyEv.exit

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !107  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.o = load i32, ptr %i.n, align 8, !tbaa !108  ; 2 uses
  %i.p = zext i32 %i.o to i64
  %.idx.i = mul nuw nsw i64 %i.p, 72
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.o, 0
  br i1 %.not13.i, label %_ZNK4llvm5WinEH9FrameInfo5emptyEv.exit.thread, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01014.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i, label %_ZNK4llvm5WinEH9FrameInfo5emptyEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.01014.i = phi ptr [ %i.r, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01014.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.u = getelementptr inbounds nuw i8, ptr %.01014.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !105
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.c, label %_ZNK4llvm5WinEH9FrameInfo5emptyEv.exit

_ZNK4llvm5WinEH9FrameInfo5emptyEv.exit:           ; preds = %.lr.ph.i, %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.z = tail call noundef ptr @_ZN4llvm10MCStreamer25getAssociatedXDataSectionEPKNS_9MCSectionE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef %i.y) #22
  %i.aa = load ptr, ptr %1, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef %i.z, i32 noundef 0) #22
  tail call fastcc void @_ZL19ARM64EmitUnwindInfoRN4llvm10MCStreamerEPNS_5WinEH9FrameInfoEb(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull %i.f, i1 noundef zeroext true)
  br label %_ZNK4llvm5WinEH9FrameInfo5emptyEv.exit.thread

_ZNK4llvm5WinEH9FrameInfo5emptyEv.exit.thread:    ; preds = %bb.c, %bb.b, %_ZNK4llvm5WinEH9FrameInfo5emptyEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.03347, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge52:                                    ; preds = %_ZL24ARM64EmitRuntimeFunctionRN4llvm10MCStreamerEPKNS_5WinEH9FrameInfoE.exit, %bb.a, %._crit_edge
  ret void

bb.d:                                             ; preds = %.lr.ph51, %_ZL24ARM64EmitRuntimeFunctionRN4llvm10MCStreamerEPKNS_5WinEH9FrameInfoE.exit
  %.049 = phi ptr [ %.pre, %.lr.ph51 ], [ %i.bl, %_ZL24ARM64EmitRuntimeFunctionRN4llvm10MCStreamerEPKNS_5WinEH9FrameInfoE.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.049, align 8, !tbaa !35 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !63
  %.not36 = icmp eq ptr %i.ag, null
  br i1 %.not36, label %_ZL24ARM64EmitRuntimeFunctionRN4llvm10MCStreamerEPKNS_5WinEH9FrameInfoE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60
  %i.aj = tail call noundef ptr @_ZN4llvm10MCStreamer25getAssociatedPDataSectionEPKNS_9MCSectionE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef %i.ai) #22
  %i.ak = load ptr, ptr %1, align 8, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef %i.aj, i32 noundef 0) #22
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !100, !nonnull !101, !align !102
  %i.ao = load ptr, ptr %1, align 8, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 600
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(304) %1, i8 2, i64 noundef 0, i8 noundef zeroext 1, i32 noundef 0) #22, !inline_history !304
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !206 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 176
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !206 ; 2 uses
  %.not2021.i = icmp eq ptr %i.as, %i.au
  br i1 %.not2021.i, label %_ZL24ARM64EmitRuntimeFunctionRN4llvm10MCStreamerEPKNS_5WinEH9FrameInfoE.exit, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
end_hunk_0
begin_hunk_1_@_ZL17ARMEmitUnwindInfoRN4llvm10MCStreamerEPNS_5WinEH9FrameInfoEb:bb.a
  %i.vz = select i1 %i.vx, i1 true, i1 %i.vy      ; 2 uses
  %i.wa = shl nuw nsw i32 %i.vw, 23
  %i.wb = shl nuw i32 %spec.select, 28
  %i.wc = add nuw nsw i32 %i.wa, %i.wb
  %.0193 = select i1 %i.vz, i32 0, i32 %i.wc
  %i.wd = load i8, ptr %i.fq, align 1, !tbaa !174, !range !173, !noundef !101
  %i.we = zext nneg i8 %i.wd to i32
  %i.wf = shl nuw nsw i32 %i.we, 20
  %.1 = or disjoint i32 %.0193, %i.wf             ; 2 uses
  %i.wg = or disjoint i32 %.1, 2097152
  %.2 = select i1 %i.op, i32 %i.wg, i32 %.1
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 83
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !535, !range !173, !noundef !101
  %i.wj = zext nneg i8 %i.wi to i32
  %i.wk = shl nuw nsw i32 %i.wj, 22
  %.3 = or disjoint i32 %.2, %i.wk
  %i.wl = or i32 %.3, %.0200383
  %i.wm = zext i32 %i.wl to i64                   ; 2 uses
  br i1 %i.ex, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.wn = load ptr, ptr %0, align 8, !tbaa !62
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 528
  %i.wp = load ptr, ptr %i.wo, align 8
  call void %i.wp(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.wm, i32 noundef 4) #22, !inline_history !2
  br label %bb.dx

bb.dw:                                            ; preds = %bb.du
  %i.wq = call noundef ptr @_ZN4llvm14MCConstantExpr6createElRNS_9MCContextEbj(i64 noundef %i.wm, ptr noundef nonnull align 8 dereferenceable(2208) %i.ai, i1 noundef zeroext false, i32 noundef 0) #22
  %i.wr = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 13, ptr noundef %.0202377382, ptr noundef %i.wq, ptr noundef nonnull align 8 dereferenceable(2208) %i.ai, ptr null) #22
  call void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.wr, i32 noundef 4, ptr null) #22
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  br i1 %i.vz, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %i.ws = icmp samesign ugt i32 %spec.select, 255
  %i.wt = icmp ugt i32 %i.vw, 65535
  %or.cond5 = or i1 %i.ws, %i.wt
  br i1 %or.cond5, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.47, i1 noundef zeroext true) #21
  unreachable

bb.ea:                                            ; preds = %bb.dy
  %i.wu = shl nuw nsw i32 %spec.select, 16
  %i.wv = or disjoint i32 %i.vw, %i.wu
  %i.ww = zext nneg i32 %i.wv to i64
  %i.wx = load ptr, ptr %0, align 8, !tbaa !62
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 528
  %i.wz = load ptr, ptr %i.wy, align 8
  call void %i.wz(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.ww, i32 noundef 4) #22, !inline_history !2
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dx
  %i.xa = icmp slt i32 %.5.i, 0
  br i1 %i.xa, label %bb.ec, label %.loopexit

bb.ec:                                            ; preds = %bb.eb
  %i.xb = load ptr, ptr %i.ob, align 8, !tbaa !107 ; 2 uses
  %i.xc = load i32, ptr %i.od, align 8, !tbaa !108 ; 2 uses
  %i.xd = zext i32 %i.xc to i64
  %.idx502 = shl nuw nsw i64 %i.xd, 4
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xb, i64 %.idx502
  %.not213479 = icmp eq i32 %i.xc, 0
  br i1 %.not213479, label %.loopexit, label %.lr.ph482

.lr.ph482:                                        ; preds = %bb.ec
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 164
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph482, %bb.en
  %.0191480 = phi ptr [ %i.xb, %.lr.ph482 ], [ %i.zh, %bb.en ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  %i.xg = load ptr, ptr %.0191480, align 8, !tbaa !236 ; 2 uses
  store ptr %i.xg, ptr %i.j, align 8, !tbaa !117
  %i.xh = getelementptr inbounds nuw i8, ptr %.0191480, i64 8
  %i.xi = load i32, ptr %i.xh, align 8, !tbaa !227
  %i.xj = load ptr, ptr %1, align 8, !tbaa !118
  %.val = load ptr, ptr %i.es, align 8, !tbaa !104 ; 2 uses
  %i.xk = load ptr, ptr %.val, align 8, !tbaa !162, !nonnull !101, !align !102 ; 3 uses
  %i.xl = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.xg, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.xk, ptr null) #22
  %i.xm = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.xj, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.xk, ptr null) #22
  %i.xn = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 18, ptr noundef %i.xl, ptr noundef %i.xm, ptr noundef nonnull align 8 dereferenceable(2208) %i.xk, ptr null) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.xo = call noundef zeroext i1 @_ZNK4llvm6MCExpr18evaluateAsAbsoluteERlRKNS_11MCAssemblerE(ptr noundef nonnull align 8 dereferenceable(16) %i.xn, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(400) %.val) #22 ; 2 uses
  %i.xp = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %i.xo, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.xq = sdiv i64 %i.xp, 2
  %i.xr = trunc i64 %i.xq to i32
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ed
  %i.xs = load ptr, ptr %i.j, align 8, !tbaa !117
  %i.xt = load ptr, ptr %1, align 8, !tbaa !118
  %.val230 = load ptr, ptr %i.ah, align 8, !tbaa !100 ; 5 uses
  %i.xu = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.xs, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %.val230, ptr null) #22
  %i.xv = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.xt, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %.val230, ptr null) #22
  %i.xw = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 18, ptr noundef %i.xu, ptr noundef %i.xv, ptr noundef nonnull align 8 dereferenceable(2208) %.val230, ptr null) #22
  %i.xx = call noundef ptr @_ZN4llvm14MCConstantExpr6createElRNS_9MCContextEbj(i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(2208) %.val230, i1 noundef zeroext false, i32 noundef 0) #22
  %i.xy = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 2, ptr noundef %i.xw, ptr noundef %i.xx, ptr noundef nonnull align 8 dereferenceable(2208) %.val230, ptr null) #22
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.0190 = phi ptr [ null, %bb.ee ], [ %i.xy, %bb.ef ]
  %.0189 = phi i32 [ %i.xr, %bb.ee ], [ 0, %bb.ef ]
  %i.xz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !547 ; 2 uses
  %.fca.0.extract.i.i.i.i328 = extractvalue { ptr, i8 } %i.xz, 0
  %.fca.1.extract.i.i.i.i329 = extractvalue { ptr, i8 } %i.xz, 1
  %i.ya = trunc nuw i8 %.fca.1.extract.i.i.i.i329 to i1
  %i.yb = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i328, i64 8 ; 2 uses
  br i1 %i.ya, label %bb.eh, label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  %i.yc = load i32, ptr %i.cw, align 8, !tbaa !108 ; 3 uses
  store i32 %i.yc, ptr %i.yb, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.j, ptr %3, align 8, !tbaa !234, !alias.scope !548
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.yd = load i32, ptr %i.xf, align 4, !tbaa !109
  %.not.i.i.i331 = icmp ult i32 %i.yc, %i.yd
  br i1 %.not.i.i.i331, label %bb.ej, label %bb.ei, !prof !26

bb.ei:                                            ; preds = %bb.eh
  %i.ye = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  %.pre.i.i332 = load i32, ptr %i.cw, align 8, !tbaa !108
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i

bb.ej:                                            ; preds = %bb.eh
  %i.yf = zext i32 %i.yc to i64
  %i.yg = load ptr, ptr %i.cu, align 8, !tbaa !107
  %i.yh = getelementptr inbounds nuw [72 x i8], ptr %i.yg, i64 %i.yf ; 2 uses
  %i.yi = load ptr, ptr %i.j, align 8, !tbaa !117
  store ptr %i.yi, ptr %i.yh, align 8, !tbaa !219
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.yj, i8 0, i64 64, i1 false)
  %i.yk = load i32, ptr %i.cw, align 8, !tbaa !108
  %i.yl = add i32 %i.yk, 1                        ; 2 uses
  store i32 %i.yl, ptr %i.cw, align 8, !tbaa !108
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i

_ZN4llvm15SmallVectorImplISt4pairIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i: ; preds = %bb.ej, %bb.ei
  %i.ym = phi i32 [ %.pre.i.i332, %bb.ei ], [ %i.yl, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.yn = load ptr, ptr %i.cu, align 8, !tbaa !107
  %i.yo = zext i32 %i.ym to i64
  %i.yp = getelementptr inbounds nuw [72 x i8], ptr %i.yn, i64 %i.yo
  %i.yq = getelementptr inbounds i8, ptr %i.yp, i64 -72
  br label %_ZN4llvm9MapVectorIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EEixERKS2_.exit

bb.ek:                                            ; preds = %bb.eg
  %i.yr = load ptr, ptr %i.cu, align 8, !tbaa !107
  %i.ys = load i32, ptr %i.yb, align 8, !tbaa !227
  %i.yt = zext i32 %i.ys to i64
  %i.yu = getelementptr inbounds nuw [72 x i8], ptr %i.yr, i64 %i.yt
  br label %_ZN4llvm9MapVectorIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EEixERKS2_.exit

_ZN4llvm9MapVectorIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EEixERKS2_.exit: ; preds = %_ZN4llvm15SmallVectorImplISt4pairIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i, %bb.ek
  %.sroa.09.0.i.i330 = phi ptr [ %i.yq, %_ZN4llvm15SmallVectorImplISt4pairIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i ], [ %i.yu, %bb.ek ]
  %i.yv = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i330, i64 32
  %i.yw = load i32, ptr %i.yv, align 8, !tbaa !538
  %i.yx = shl i32 %i.yw, 20
  %i.yy = shl i32 %i.xi, 24
  %i.yz = or i32 %.0189, %i.yy
  %i.za = or i32 %i.yz, %i.yx
  %i.zb = zext i32 %i.za to i64                   ; 2 uses
  br i1 %i.xo, label %bb.el, label %bb.em

bb.el:                                            ; preds = %_ZN4llvm9MapVectorIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EEixERKS2_.exit
  %i.zc = load ptr, ptr %0, align 8, !tbaa !62
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 528
  %i.ze = load ptr, ptr %i.zd, align 8
  call void %i.ze(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.zb, i32 noundef 4) #22, !inline_history !2
  br label %bb.en

bb.em:                                            ; preds = %_ZN4llvm9MapVectorIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EEixERKS2_.exit
  %i.zf = call noundef ptr @_ZN4llvm14MCConstantExpr6createElRNS_9MCContextEbj(i64 noundef %i.zb, ptr noundef nonnull align 8 dereferenceable(2208) %i.ai, i1 noundef zeroext false, i32 noundef 0) #22
  %i.zg = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 13, ptr noundef %.0190, ptr noundef %i.zf, ptr noundef nonnull align 8 dereferenceable(2208) %i.ai, ptr null) #22
  call void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.zg, i32 noundef 4, ptr null) #22
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  %i.zh = getelementptr inbounds nuw i8, ptr %.0191480, i64 16 ; 2 uses
  %.not213 = icmp eq ptr %i.zh, %i.xe
  br i1 %.not213, label %.loopexit, label %bb.ed

.loopexit:                                        ; preds = %bb.en, %bb.ec, %bb.eb
  %i.zi = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.zj = load ptr, ptr %i.m, align 8, !tbaa !170
  %i.zk = ptrtoint ptr %i.zi to i64
  %i.zl = ptrtoint ptr %i.zj to i64
  %i.zm = sub i64 %i.zk, %i.zl
  %i.zn = sdiv exact i64 %i.zm, 24
  %19 = trunc i64 %i.zn to i32
  %20 = and i32 %19, 255                          ; 2 uses
  %.not503 = icmp eq i32 %20, 0
  br i1 %.not503, label %._crit_edge486, label %.lr.ph485

._crit_edge486:                                   ; preds = %.lr.ph485, %.loopexit
  %i.zo = load ptr, ptr %i.cu, align 8, !tbaa !107 ; 2 uses
  %i.zp = load i32, ptr %i.cw, align 8, !tbaa !108 ; 2 uses
  %i.zq = zext i32 %i.zp to i64
  %.idx504 = mul nuw nsw i64 %i.zq, 72
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zo, i64 %.idx504
  %.not214492 = icmp eq i32 %i.zp, 0
  br i1 %.not214492, label %._crit_edge496, label %.lr.ph495

.lr.ph485:                                        ; preds = %.loopexit, %.lr.ph485
  %indvars.iv = phi i32 [ %indvars.iv.next, %.lr.ph485 ], [ 0, %.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.zs = load ptr, ptr %i.o, align 8, !tbaa !105
  %i.zt = getelementptr inbounds i8, ptr %i.zs, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %i.zt, i64 24, i1 false), !tbaa.struct !237
  store ptr %i.zt, ptr %i.o, align 8, !tbaa !106
  call fastcc void @_ZL17ARMEmitUnwindCodeRN4llvm10MCStreamerERKNS_5WinEH11InstructionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(17) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %20
  br i1 %exitcond.not, label %._crit_edge486, label %.lr.ph485, !llvm.loop !529

._crit_edge496:                                   ; preds = %._crit_edge491, %._crit_edge486
  %i.zu = shl i32 %spec.select, 2
  %i.zv = sub i32 %i.zu, %.0198.lcssa             ; 2 uses
  %i.zw = icmp sgt i32 %i.zv, 0
  br i1 %i.zw, label %.lr.ph499, label %._crit_edge500

.lr.ph495:                                        ; preds = %._crit_edge486, %._crit_edge491
  %.0187493 = phi ptr [ %i.aab, %._crit_edge491 ], [ %i.zo, %._crit_edge486 ] ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %.0187493, i64 8
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !105 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.0187493, i64 16
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !105 ; 2 uses
  %.not392487 = icmp eq ptr %i.zy, %i.aaa
  br i1 %.not392487, label %._crit_edge491, label %.lr.ph490

._crit_edge491:                                   ; preds = %.lr.ph490, %.lr.ph495
  %i.aab = getelementptr inbounds nuw i8, ptr %.0187493, i64 72 ; 2 uses
  %.not214 = icmp eq ptr %i.aab, %i.zr
  br i1 %.not214, label %._crit_edge496, label %.lr.ph495

.lr.ph490:                                        ; preds = %.lr.ph495, %.lr.ph490
  %.sroa.0336.0488 = phi ptr [ %i.aac, %.lr.ph490 ], [ %i.zy, %.lr.ph495 ] ; 2 uses
  call fastcc void @_ZL17ARMEmitUnwindCodeRN4llvm10MCStreamerERKNS_5WinEH11InstructionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.0336.0488)
  %i.aac = getelementptr inbounds nuw i8, ptr %.sroa.0336.0488, i64 24 ; 2 uses
  %.not392 = icmp eq ptr %i.aac, %i.aaa
  br i1 %.not392, label %._crit_edge491, label %.lr.ph490

._crit_edge500:                                   ; preds = %.lr.ph499, %._crit_edge496
  %i.aad = load i8, ptr %i.fq, align 1, !tbaa !174, !range !173, !noundef !101
  %i.aae = trunc nuw i8 %i.aad to i1
  br i1 %i.aae, label %bb.eo, label %bb.ep

.lr.ph499:                                        ; preds = %._crit_edge496, %.lr.ph499
  %.0497 = phi i32 [ %i.aai, %.lr.ph499 ], [ 0, %._crit_edge496 ]
  %i.aaf = load ptr, ptr %0, align 8, !tbaa !62
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 528
  %i.aah = load ptr, ptr %i.aag, align 8
  call void %i.aah(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef 251, i32 noundef 1) #22, !inline_history !1
  %i.aai = add nuw nsw i32 %.0497, 1              ; 2 uses
  %exitcond594.not = icmp eq i32 %i.aai, %i.zv
  br i1 %exitcond594.not, label %._crit_edge500, label %.lr.ph499, !llvm.loop !530

bb.eo:                                            ; preds = %._crit_edge500
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !194
  %i.aal = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.aak, i16 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(2208) %i.ai, ptr null) #22
  call void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.aal, i32 noundef 4, ptr null) #22
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %._crit_edge500
  %.not.i.i.i333 = icmp eq ptr %.sroa.0344.0.lcssa, null
  br i1 %.not.i.i.i333, label %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EED2Ev.exit, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aam = ptrtoint ptr %.sroa.0344.0.lcssa to i64
  %i.aan = sub i64 %.sroa.11.0.lcssa, %i.aam
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0344.0.lcssa, i64 noundef %i.aan) #24
  br label %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EED2Ev.exit:  ; preds = %bb.ep, %bb.eq
  %i.aao = load ptr, ptr %i.ob, align 8, !tbaa !107 ; 2 uses
  %i.aap = icmp eq ptr %i.aao, %i.oc
  br i1 %i.aap, label %_ZN4llvm11SmallVectorISt4pairIPNS_8MCSymbolEjELj0EED2Ev.exit.i, label %bb.er

bb.er:                                            ; preds = %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EED2Ev.exit
  call void @free(ptr noundef %i.aao) #22
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_8MCSymbolEjELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPNS_8MCSymbolEjELj0EED2Ev.exit.i: ; preds = %bb.er, %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EED2Ev.exit
  %i.aaq = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !222 ; 2 uses
  %i.aas = icmp eq i32 %i.aar, 0
  br i1 %i.aas, label %_ZN4llvm9MapVectorIPNS_8MCSymbolEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EED2Ev.exit, label %bb.es

bb.es:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_8MCSymbolEjELj0EED2Ev.exit.i
  %i.aat = load ptr, ptr %17, align 8, !tbaa !220
  %i.aau = zext i32 %i.aar to i64                 ; 2 uses
  %i.aav = shl nuw nsw i64 %i.aau, 4
  %i.aaw = add nuw nsw i64 %i.aau, 31
  %i.aax = lshr i64 %i.aaw, 3
  %i.aay = and i64 %i.aax, 1073741820
  %i.aaz = add nuw nsw i64 %i.aay, %i.aav
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aat, i64 noundef %i.aaz, i64 noundef 8) #22
  br label %_ZN4llvm9MapVectorIPNS_8MCSymbolEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EED2Ev.exit

_ZN4llvm9MapVectorIPNS_8MCSymbolEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_8MCSymbolEjELj0EED2Ev.exit.i, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.et

bb.et:                                            ; preds = %_ZN4llvm9MapVectorIPNS_8MCSymbolEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EED2Ev.exit, %_ZL18tryARMPackedUnwindRN4llvm10MCStreamerEPNS_5WinEH9FrameInfoEj.exit, %bb.a, %_ZN4llvmplERKNS_5TwineES2_.exit, %.loopexit394
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm7Win64EH16ARMUnwindEmitter14EmitUnwindInfoERNS_10MCStreamerEPNS_5WinEH9FrameInfoEb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = load ptr, ptr %1, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef %i.d, i32 noundef 0) #22
  %i.h = load ptr, ptr %1, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(304) %1) #22
  store ptr %i.k, ptr %i.a, align 8, !tbaa !217
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = tail call noundef ptr @_ZN4llvm10MCStreamer25getAssociatedXDataSectionEPKNS_9MCSectionE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef %i.m) #22
  %i.o = load ptr, ptr %1, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 176
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef %i.n, i32 noundef 0) #22
  %i.r = xor i1 %3, true
  tail call fastcc void @_ZL17ARMEmitUnwindInfoRN4llvm10MCStreamerEPNS_5WinEH9FrameInfoEb(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull %2, i1 noundef zeroext %i.r)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7Win64EH13UnwindEmitterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm5WinEH13UnwindEmitterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7Win64EH18ARM64UnwindEmitterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm5WinEH13UnwindEmitterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm5WinEH13UnwindEmitterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7Win64EH16ARMUnwindEmitterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm5WinEH13UnwindEmitterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

declare void @_ZN4llvm9MCContext11reportErrorENS_5SMLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208), ptr, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare noundef ptr @_ZN4llvm9MCContext16createTempSymbolEv(ptr noundef nonnull align 8 dereferenceable(2208)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i64, i8 } @_ZL24GetOptionalAbsDifferenceRKN4llvm11MCAssemblerEPKNS_8MCSymbolES5_(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !101, !align !102 ; 3 uses
  %i.c = tail call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %1, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.b, ptr null) #22
  %i.d = tail call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %2, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.b, ptr null) #22
  %i.e = tail call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 18, ptr noundef %i.c, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(2208) %i.b, ptr null) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.f = call noundef zeroext i1 @_ZNK4llvm6MCExpr18evaluateAsAbsoluteERlRKNS_11MCAssemblerE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(400) %0) #22 ; 2 uses
  %i.g = load i64, ptr %i.a, align 8
  %spec.select = select i1 %i.f, i64 %i.g, i64 undef
  %spec.select10 = zext i1 %i.f to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %spec.select, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %spec.select10, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm16MCObjectStreamer14ensureHeadroomEm(ptr noundef nonnull align 8 dereferenceable(448), i64 noundef) local_unnamed_addr #3

declare void @_ZN4llvm16MCObjectStreamer8addFixupEPKNS_6MCExprEt(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4llvm16MCObjectStreamer14appendContentsEmh(ptr noundef nonnull align 8 dereferenceable(448), i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef, i32 noundef, ptr) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(2208), ptr) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN4llvm21reportFatalUsageErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_1
