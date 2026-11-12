Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 254
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 338
begin_hunk_0_@_ZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS_7SDValueERKNS_5APIntERS2_S5_RNS_14TargetLowering17TargetLoweringOptEj:bb.a
  store i64 %i.adm, ptr %161, align 8, !tbaa !673
  %i.adn = getelementptr inbounds nuw i8, ptr %161, i64 8
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !674
  store i32 %i.adp, ptr %i.adn, align 8, !tbaa !676
  %.sroa.01039.0.copyload = load i16, ptr %61, align 8, !tbaa !345
  %.sroa.21041.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !471
  %i.adq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.adk, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(12) %161, i16 %.sroa.01039.0.copyload, ptr %.sroa.21041.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %159, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %160) #39 ; 2 uses
  %.fca.0.extract1035 = extractvalue { ptr, i32 } %i.adq, 0
  %.fca.1.extract1036 = extractvalue { ptr, i32 } %i.adq, 1
  %i.adr = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %i.adr, align 8, !tbaa !465
  %.sroa.22.0..sroa_idx.i2090 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %2, ptr %.sroa.22.0..sroa_idx.i2090, align 8, !tbaa !240
  %i.ads = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract1035, ptr %i.ads, align 8, !tbaa !465
  %.sroa.2.0..sroa_idx.i2091 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.fca.1.extract1036, ptr %.sroa.2.0..sroa_idx.i2091, align 8, !tbaa !240
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #39
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho, %bb.hn, %bb.hm
  %i.adt = phi i1 [ true, %bb.hn ], [ false, %bb.hm ], [ true, %bb.ho ], [ false, %bb.hp ]
  %i.adu = load i32, ptr %i.ada, align 8, !tbaa !643
  %i.adv = icmp ugt i32 %i.adu, 64
  br i1 %i.adv, label %bb.hr, label %_ZN4llvm5APIntD2Ev.exit2092

bb.hr:                                            ; preds = %bb.hq
  %i.adw = load ptr, ptr %158, align 8, !tbaa !357 ; 2 uses
  %i.adx = icmp eq ptr %i.adw, null
  br i1 %i.adx, label %_ZN4llvm5APIntD2Ev.exit2092, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @_ZdaPv(ptr noundef nonnull %i.adw) #42
  br label %_ZN4llvm5APIntD2Ev.exit2092

_ZN4llvm5APIntD2Ev.exit2092:                      ; preds = %bb.hq, %bb.hr, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #39
  %i.ady = load i32, ptr %i.acz, align 8, !tbaa !643
  %i.adz = icmp ugt i32 %i.ady, 64
  br i1 %i.adz, label %bb.ht, label %_ZN4llvm5APIntD2Ev.exit2093

bb.ht:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit2092
  %i.aea = load ptr, ptr %157, align 8, !tbaa !357 ; 2 uses
  %i.aeb = icmp eq ptr %i.aea, null
  br i1 %i.aeb, label %_ZN4llvm5APIntD2Ev.exit2093, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @_ZdaPv(ptr noundef nonnull %i.aea) #42
  br label %_ZN4llvm5APIntD2Ev.exit2093

_ZN4llvm5APIntD2Ev.exit2093:                      ; preds = %_ZN4llvm5APIntD2Ev.exit2092, %bb.ht, %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #39
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hl, %_ZN4llvm5APIntD2Ev.exit2093
  %.221850 = phi i1 [ %i.adt, %_ZN4llvm5APIntD2Ev.exit2093 ], [ false, %bb.hl ]
  %i.aec = load i32, ptr %i.acw, align 8, !tbaa !643
  %i.aed = icmp ugt i32 %i.aec, 64
  br i1 %i.aed, label %bb.hw, label %_ZN4llvm5APIntD2Ev.exit2094

bb.hw:                                            ; preds = %bb.hv
  %i.aee = load ptr, ptr %156, align 8, !tbaa !357 ; 2 uses
  %i.aef = icmp eq ptr %i.aee, null
  br i1 %i.aef, label %_ZN4llvm5APIntD2Ev.exit2094, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @_ZdaPv(ptr noundef nonnull %i.aee) #42
  br label %_ZN4llvm5APIntD2Ev.exit2094

_ZN4llvm5APIntD2Ev.exit2094:                      ; preds = %bb.hv, %bb.hw, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #39
  %i.aeg = load i32, ptr %i.acv, align 8, !tbaa !643
  %i.aeh = icmp ugt i32 %i.aeg, 64
  br i1 %i.aeh, label %bb.hy, label %_ZN4llvm5APIntD2Ev.exit2095

bb.hy:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit2094
  %i.aei = load ptr, ptr %155, align 8, !tbaa !357 ; 2 uses
  %i.aej = icmp eq ptr %i.aei, null
  br i1 %i.aej, label %_ZN4llvm5APIntD2Ev.exit2095, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  call void @_ZdaPv(ptr noundef nonnull %i.aei) #42
  br label %_ZN4llvm5APIntD2Ev.exit2095

_ZN4llvm5APIntD2Ev.exit2095:                      ; preds = %_ZN4llvm5APIntD2Ev.exit2094, %bb.hy, %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #39
  %i.aek = load i32, ptr %i.acu, align 8, !tbaa !643
  %i.ael = icmp ugt i32 %i.aek, 64
  br i1 %i.ael, label %bb.ia, label %_ZN4llvm5APIntD2Ev.exit2096

bb.ia:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit2095
  %i.aem = load ptr, ptr %154, align 8, !tbaa !357 ; 2 uses
  %i.aen = icmp eq ptr %i.aem, null
  br i1 %i.aen, label %_ZN4llvm5APIntD2Ev.exit2096, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void @_ZdaPv(ptr noundef nonnull %i.aem) #42
  br label %_ZN4llvm5APIntD2Ev.exit2096

_ZN4llvm5APIntD2Ev.exit2096:                      ; preds = %_ZN4llvm5APIntD2Ev.exit2095, %bb.ia, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #39
  %i.aeo = load i32, ptr %i.act, align 8, !tbaa !643
  %i.aep = icmp ugt i32 %i.aeo, 64
  br i1 %i.aep, label %bb.ic, label %_ZN4llvm5APIntD2Ev.exit2097

bb.ic:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit2096
  %i.aeq = load ptr, ptr %153, align 8, !tbaa !357 ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, null
  br i1 %i.aer, label %_ZN4llvm5APIntD2Ev.exit2097, label %bb.id

bb.id:                                            ; preds = %bb.ic
  call void @_ZdaPv(ptr noundef nonnull %i.aeq) #42
  br label %_ZN4llvm5APIntD2Ev.exit2097

_ZN4llvm5APIntD2Ev.exit2097:                      ; preds = %_ZN4llvm5APIntD2Ev.exit2096, %bb.ic, %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #39
  br i1 %.221850, label %thread-pre-split, label %.thread2729

bb.ie:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #39
  %i.aes = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !638 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %162, ptr noundef nonnull align 8 dereferenceable(16) %i.aet, i64 16, i1 false), !tbaa.struct !683
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #39
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, ptr noundef nonnull align 8 dereferenceable(16) %i.aeu, i64 16, i1 false), !tbaa.struct !683
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #39
  %i.aev = getelementptr inbounds nuw i8, ptr %164, i64 8 ; 4 uses
  store i32 1, ptr %i.aev, align 8, !tbaa !643
  store i64 0, ptr %164, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #39
  %i.aew = getelementptr inbounds nuw i8, ptr %165, i64 8 ; 4 uses
  store i32 1, ptr %i.aew, align 8, !tbaa !643
  store i64 0, ptr %165, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  store i16 %.sroa.0.0.copyload.i.i, ptr %53, align 8
  %i.aex = getelementptr inbounds nuw i8, ptr %53, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.aex, align 8
  %.not.i.i2098 = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i2098, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.aey = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.aez = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aey ; 2 uses
  %i.afa = getelementptr i8, ptr %i.aez, i64 -16
  %.sroa.0.0.copyload.i.i.i2099 = load i64, ptr %i.afa, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.aez, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i2099, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

bb.ig:                                            ; preds = %bb.ie
  %i.afb = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %53) #40
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i:            ; preds = %bb.ig, %bb.if
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i, %bb.if ], [ %i.afb, %bb.ig ] ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.afc = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.afc, label %bb.ih, label %_ZNK4llvm8TypeSizecvmEv.exit.i

bb.ih:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  %.fca.0.extract.i = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.afd = trunc i64 %.fca.0.extract.i to i32
  call void @_ZN4llvm35getHorizDemandedEltsForFirstOperandEjRKNS_5APIntERS0_S3_(i32 noundef %i.afd, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %164, ptr noundef nonnull align 8 dereferenceable(12) %165) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !3241)
  call void @llvm.experimental.noalias.scope.decl(metadata !3242)
  %i.afe = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 3 uses
  %i.aff = load i32, ptr %i.aev, align 8, !tbaa !643, !noalias !3243 ; 3 uses
  store i32 %i.aff, ptr %i.afe, align 8, !tbaa !643, !alias.scope !3243
  %i.afg = icmp ult i32 %i.aff, 65
  br i1 %i.afg, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i.i

_ZN4llvm5APIntC2ERKS0_.exit.i.i.i:                ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %54, ptr noundef nonnull align 8 dereferenceable(12) %164) #39
  %.pr.i.i.i = load i32, ptr %i.afe, align 8, !tbaa !643, !alias.scope !3243 ; 2 uses
  %i.afh = icmp ult i32 %.pr.i.i.i, 65
  br i1 %i.afh, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i, label %bb.ii

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i:   ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i.i, %_ZNK4llvm8TypeSizecvmEv.exit.i
  %.sink.i.i.i = phi ptr [ %164, %_ZNK4llvm8TypeSizecvmEv.exit.i ], [ %54, %_ZN4llvm5APIntC2ERKS0_.exit.i.i.i ]
  %i.afi = phi i32 [ %i.aff, %_ZNK4llvm8TypeSizecvmEv.exit.i ], [ %.pr.i.i.i, %_ZN4llvm5APIntC2ERKS0_.exit.i.i.i ] ; 3 uses
  %.pre.i.i.i = load i64, ptr %.sink.i.i.i, align 8
  %i.afj = icmp eq i32 %i.afi, 1
  %i.afk = shl i64 %.pre.i.i.i, 1
  %storemerge.i.i.i.i = select i1 %i.afj, i64 0, i64 %i.afk
  %i.afl = sub nsw i32 0, %i.afi
  %i.afm = and i32 %i.afl, 63
  %i.afn = zext nneg i32 %i.afm to i64
  %i.afo = lshr i64 -1, %i.afn
  %i.afp = icmp eq i32 %i.afi, 0
  %.04.i.i.i.i.i = select i1 %i.afp, i64 0, i64 %i.afo, !prof !648
  %256 = and i64 %.04.i.i.i.i.i, %storemerge.i.i.i.i
  store i64 %256, ptr %54, align 8, !tbaa !357, !alias.scope !3243
  br label %_ZNK4llvm5APIntlsEj.exit.i

bb.ii:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i.i
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %54, i32 noundef 1) #39
  br label %_ZNK4llvm5APIntlsEj.exit.i

_ZNK4llvm5APIntlsEj.exit.i:                       ; preds = %bb.ii, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i
  %i.afq = load i32, ptr %i.aev, align 8, !tbaa !643
  %i.afr = icmp ult i32 %i.afq, 65
  br i1 %i.afr, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %_ZNK4llvm5APIntlsEj.exit.i
  %i.afs = load i64, ptr %54, align 8, !tbaa !357
  %i.aft = load i64, ptr %164, align 8, !tbaa !357
  %i.afu = or i64 %i.aft, %i.afs
  store i64 %i.afu, ptr %164, align 8, !tbaa !357
  br label %_ZN4llvm5APIntoRERKS0_.exit.i

bb.ik:                                            ; preds = %_ZNK4llvm5APIntlsEj.exit.i
  call void @_ZN4llvm5APInt16orAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %164, ptr noundef nonnull align 8 dereferenceable(12) %54) #39
  br label %_ZN4llvm5APIntoRERKS0_.exit.i

_ZN4llvm5APIntoRERKS0_.exit.i:                    ; preds = %bb.ik, %bb.ij
  %i.afv = load i32, ptr %i.afe, align 8, !tbaa !643
  %i.afw = icmp ugt i32 %i.afv, 64
  br i1 %i.afw, label %bb.il, label %_ZN4llvm5APIntD2Ev.exit.i2100

bb.il:                                            ; preds = %_ZN4llvm5APIntoRERKS0_.exit.i
  %i.afx = load ptr, ptr %54, align 8, !tbaa !357 ; 2 uses
  %i.afy = icmp eq ptr %i.afx, null
  br i1 %i.afy, label %_ZN4llvm5APIntD2Ev.exit.i2100, label %bb.im

bb.im:                                            ; preds = %bb.il
  call void @_ZdaPv(ptr noundef nonnull %i.afx) #42
  br label %_ZN4llvm5APIntD2Ev.exit.i2100

_ZN4llvm5APIntD2Ev.exit.i2100:                    ; preds = %bb.im, %bb.il, %_ZN4llvm5APIntoRERKS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !3244)
  call void @llvm.experimental.noalias.scope.decl(metadata !3245)
  %i.afz = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 3 uses
  %i.aga = load i32, ptr %i.aew, align 8, !tbaa !643, !noalias !3246 ; 3 uses
  store i32 %i.aga, ptr %i.afz, align 8, !tbaa !643, !alias.scope !3246
  %i.agb = icmp ult i32 %i.aga, 65
  br i1 %i.agb, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i9.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i7.i

_ZN4llvm5APIntC2ERKS0_.exit.i.i7.i:               ; preds = %_ZN4llvm5APIntD2Ev.exit.i2100
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %55, ptr noundef nonnull align 8 dereferenceable(12) %165) #39
  %.pr.i.i8.i = load i32, ptr %i.afz, align 8, !tbaa !643, !alias.scope !3246 ; 2 uses
  %i.agc = icmp ult i32 %.pr.i.i8.i, 65
  br i1 %i.agc, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i9.i, label %bb.in

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i9.i:  ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i7.i, %_ZN4llvm5APIntD2Ev.exit.i2100
  %.sink.i.i10.i = phi ptr [ %165, %_ZN4llvm5APIntD2Ev.exit.i2100 ], [ %55, %_ZN4llvm5APIntC2ERKS0_.exit.i.i7.i ]
  %i.agd = phi i32 [ %i.aga, %_ZN4llvm5APIntD2Ev.exit.i2100 ], [ %.pr.i.i8.i, %_ZN4llvm5APIntC2ERKS0_.exit.i.i7.i ] ; 3 uses
  %.pre.i.i11.i = load i64, ptr %.sink.i.i10.i, align 8
  %i.age = icmp eq i32 %i.agd, 1
  %i.agf = shl i64 %.pre.i.i11.i, 1
  %storemerge.i.i.i12.i = select i1 %i.age, i64 0, i64 %i.agf
  %i.agg = sub nsw i32 0, %i.agd
  %i.agh = and i32 %i.agg, 63
  %i.agi = zext nneg i32 %i.agh to i64
  %i.agj = lshr i64 -1, %i.agi
  %i.agk = icmp eq i32 %i.agd, 0
  %.04.i.i.i.i13.i = select i1 %i.agk, i64 0, i64 %i.agj, !prof !648
  %257 = and i64 %.04.i.i.i.i13.i, %storemerge.i.i.i12.i
  store i64 %257, ptr %55, align 8, !tbaa !357, !alias.scope !3246
  br label %_ZNK4llvm5APIntlsEj.exit14.i

bb.in:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i7.i
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %55, i32 noundef 1) #39
  br label %_ZNK4llvm5APIntlsEj.exit14.i

_ZNK4llvm5APIntlsEj.exit14.i:                     ; preds = %bb.in, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i9.i
  %i.agl = load i32, ptr %i.aew, align 8, !tbaa !643
  %i.agm = icmp ult i32 %i.agl, 65
  br i1 %i.agm, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %_ZNK4llvm5APIntlsEj.exit14.i
  %i.agn = load i64, ptr %55, align 8, !tbaa !357
  %i.ago = load i64, ptr %165, align 8, !tbaa !357
  %i.agp = or i64 %i.ago, %i.agn
  store i64 %i.agp, ptr %165, align 8, !tbaa !357
  br label %_ZN4llvm5APIntoRERKS0_.exit15.i

bb.ip:                                            ; preds = %_ZNK4llvm5APIntlsEj.exit14.i
  call void @_ZN4llvm5APInt16orAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %165, ptr noundef nonnull align 8 dereferenceable(12) %55) #39
  br label %_ZN4llvm5APIntoRERKS0_.exit15.i

_ZN4llvm5APIntoRERKS0_.exit15.i:                  ; preds = %bb.ip, %bb.io
  %i.agq = load i32, ptr %i.afz, align 8, !tbaa !643
  %i.agr = icmp ugt i32 %i.agq, 64
  br i1 %i.agr, label %bb.iq, label %_ZL20getHorizDemandedEltsN4llvm3EVTERKNS_5APIntERS1_S4_.exit

bb.iq:                                            ; preds = %_ZN4llvm5APIntoRERKS0_.exit15.i
  %i.ags = load ptr, ptr %55, align 8, !tbaa !357 ; 2 uses
  %i.agt = icmp eq ptr %i.ags, null
  br i1 %i.agt, label %_ZL20getHorizDemandedEltsN4llvm3EVTERKNS_5APIntERS1_S4_.exit, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call void @_ZdaPv(ptr noundef nonnull %i.ags) #42
  br label %_ZL20getHorizDemandedEltsN4llvm3EVTERKNS_5APIntERS1_S4_.exit

_ZL20getHorizDemandedEltsN4llvm3EVTERKNS_5APIntERS1_S4_.exit: ; preds = %_ZN4llvm5APIntoRERKS0_.exit15.i, %bb.iq, %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %53)
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #39
  %i.agu = getelementptr inbounds nuw i8, ptr %166, i64 8 ; 2 uses
  store i32 1, ptr %i.agu, align 8, !tbaa !643
  store i64 0, ptr %166, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %167) #39
  %i.agv = getelementptr inbounds nuw i8, ptr %167, i64 8 ; 2 uses
  store i32 1, ptr %i.agv, align 8, !tbaa !643
  store i64 0, ptr %167, align 8, !tbaa !357
  %.sroa.01029.0.copyload = load ptr, ptr %162, align 8, !tbaa !465 ; 3 uses
  %.sroa.21030.0..sroa_idx = getelementptr inbounds nuw i8, ptr %162, i64 8
  %.sroa.21030.0.copyload = load i32, ptr %.sroa.21030.0..sroa_idx, align 8, !tbaa !240 ; 3 uses
  %i.agw = add i32 %7, 1                          ; 4 uses
  %i.agx = call noundef zeroext i1 @_ZNK4llvm14TargetLowering26SimplifyDemandedVectorEltsENS_7SDValueERKNS_5APIntERS2_S5_RNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.01029.0.copyload, i32 %.sroa.21030.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %164, ptr noundef nonnull align 8 dereferenceable(12) %166, ptr noundef nonnull align 8 dereferenceable(12) %167, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.agw, i1 noundef zeroext false) #39
  br i1 %i.agx, label %bb.jc, label %bb.is

bb.is:                                            ; preds = %_ZL20getHorizDemandedEltsN4llvm3EVTERKNS_5APIntERS1_S4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %168) #39
  %i.agy = getelementptr inbounds nuw i8, ptr %168, i64 8 ; 2 uses
  store i32 1, ptr %i.agy, align 8, !tbaa !643
  store i64 0, ptr %168, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #39
  %i.agz = getelementptr inbounds nuw i8, ptr %169, i64 8 ; 2 uses
  store i32 1, ptr %i.agz, align 8, !tbaa !643
  store i64 0, ptr %169, align 8, !tbaa !357
  %.sroa.01026.0.copyload = load ptr, ptr %163, align 8, !tbaa !465 ; 3 uses
  %.sroa.21027.0..sroa_idx = getelementptr inbounds nuw i8, ptr %163, i64 8
  %.sroa.21027.0.copyload = load i32, ptr %.sroa.21027.0..sroa_idx, align 8, !tbaa !240 ; 3 uses
  %i.aha = call noundef zeroext i1 @_ZNK4llvm14TargetLowering26SimplifyDemandedVectorEltsENS_7SDValueERKNS_5APIntERS2_S5_RNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.01026.0.copyload, i32 %.sroa.21027.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %165, ptr noundef nonnull align 8 dereferenceable(12) %168, ptr noundef nonnull align 8 dereferenceable(12) %169, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.agw, i1 noundef zeroext false) #39
  br i1 %i.aha, label %bb.ix, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.ahb = icmp ne ptr %.sroa.01029.0.copyload, %.sroa.01026.0.copyload
  %i.ahc = icmp ne i32 %.sroa.21030.0.copyload, %.sroa.21027.0.copyload
  %.not3.i = select i1 %i.ahb, i1 true, i1 %i.ahc
  br i1 %.not3.i, label %bb.iu, label %bb.ix

bb.iu:                                            ; preds = %bb.it
  %i.ahd = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
  br i1 %i.ahd, label %bb.ix, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.ahe = load ptr, ptr %6, align 8, !tbaa !1108, !nonnull !80, !align !237
  %i.ahf = call { ptr, i32 } @_ZNK4llvm14TargetLowering37SimplifyMultipleUseDemandedVectorEltsENS_7SDValueERKNS_5APIntERNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.01029.0.copyload, i32 %.sroa.21030.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %164, ptr noundef nonnull align 8 dereferenceable(920) %i.ahe, i32 noundef %i.agw) #39 ; 2 uses
  %.fca.0.extract1019 = extractvalue { ptr, i32 } %i.ahf, 0 ; 2 uses
  %.fca.1.extract1020 = extractvalue { ptr, i32 } %i.ahf, 1
  store ptr %.fca.0.extract1019, ptr %170, align 8
  %.sroa.21022.0..sroa_idx = getelementptr inbounds nuw i8, ptr %170, i64 8
  store i32 %.fca.1.extract1020, ptr %.sroa.21022.0..sroa_idx, align 8
  %i.ahg = load ptr, ptr %6, align 8, !tbaa !1108, !nonnull !80, !align !237
  %i.ahh = call { ptr, i32 } @_ZNK4llvm14TargetLowering37SimplifyMultipleUseDemandedVectorEltsENS_7SDValueERKNS_5APIntERNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.01026.0.copyload, i32 %.sroa.21027.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %165, ptr noundef nonnull align 8 dereferenceable(920) %i.ahg, i32 noundef %i.agw) #39 ; 2 uses
  %.fca.0.extract1012 = extractvalue { ptr, i32 } %i.ahh, 0 ; 2 uses
  %.fca.1.extract1013 = extractvalue { ptr, i32 } %i.ahh, 1
  store ptr %.fca.0.extract1012, ptr %171, align 8
  %.sroa.21015.0..sroa_idx = getelementptr inbounds nuw i8, ptr %171, i64 8
  store i32 %.fca.1.extract1013, ptr %.sroa.21015.0..sroa_idx, align 8
  %i.ahi = icmp eq ptr %.fca.0.extract1019, null  ; 2 uses
  %i.ahj = icmp eq ptr %.fca.0.extract1012, null  ; 2 uses
  %or.cond2792.not = select i1 %i.ahi, i1 %i.ahj, i1 false
  br i1 %or.cond2792.not, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %.43 = select i1 %i.ahi, ptr %162, ptr %170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %170, ptr noundef nonnull align 8 dereferenceable(12) %.43, i64 12, i1 false)
  %i.ahk = select i1 %i.ahj, ptr %163, ptr %171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %171, ptr noundef nonnull align 8 dereferenceable(12) %i.ahk, i64 12, i1 false)
  %i.ahl = load ptr, ptr %6, align 8, !tbaa !1108, !nonnull !80, !align !237
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #39
  %i.ahm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ahn = load i64, ptr %i.ahm, align 8, !tbaa !673
  store i64 %i.ahn, ptr %172, align 8, !tbaa !673
  %i.aho = getelementptr inbounds nuw i8, ptr %172, i64 8
  %i.ahp = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ahq = load i32, ptr %i.ahp, align 4, !tbaa !674
  store i32 %i.ahq, ptr %i.aho, align 8, !tbaa !676
  %.sroa.01001.0.copyload = load i16, ptr %61, align 8, !tbaa !345
  %.sroa.21003.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !471
  %i.ahr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ahl, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(12) %172, i16 %.sroa.01001.0.copyload, ptr %.sroa.21003.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %170, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %171) #39 ; 2 uses
  %.fca.0.extract997 = extractvalue { ptr, i32 } %i.ahr, 0
  %.fca.1.extract998 = extractvalue { ptr, i32 } %i.ahr, 1
  %i.ahs = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %i.ahs, align 8, !tbaa !465
  %.sroa.22.0..sroa_idx.i2101 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %2, ptr %.sroa.22.0..sroa_idx.i2101, align 8, !tbaa !240
  %i.aht = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract997, ptr %i.aht, align 8, !tbaa !465
  %.sroa.2.0..sroa_idx.i2102 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.fca.1.extract998, ptr %.sroa.2.0..sroa_idx.i2102, align 8, !tbaa !240
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #39
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv, %bb.it, %bb.iu, %bb.is
  %i.ahu = phi i1 [ true, %bb.it ], [ false, %bb.is ], [ true, %bb.iu ], [ true, %bb.iv ], [ false, %bb.iw ]
  %i.ahv = load i32, ptr %i.agz, align 8, !tbaa !643
  %i.ahw = icmp ugt i32 %i.ahv, 64
  br i1 %i.ahw, label %bb.iy, label %_ZN4llvm5APIntD2Ev.exit2103

bb.iy:                                            ; preds = %bb.ix
  %i.ahx = load ptr, ptr %169, align 8, !tbaa !357 ; 2 uses
  %i.ahy = icmp eq ptr %i.ahx, null
  br i1 %i.ahy, label %_ZN4llvm5APIntD2Ev.exit2103, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  call void @_ZdaPv(ptr noundef nonnull %i.ahx) #42
  br label %_ZN4llvm5APIntD2Ev.exit2103

_ZN4llvm5APIntD2Ev.exit2103:                      ; preds = %bb.ix, %bb.iy, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #39
  %i.ahz = load i32, ptr %i.agy, align 8, !tbaa !643
  %i.aia = icmp ugt i32 %i.ahz, 64
  br i1 %i.aia, label %bb.ja, label %_ZN4llvm5APIntD2Ev.exit2104

bb.ja:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit2103
  %i.aib = load ptr, ptr %168, align 8, !tbaa !357 ; 2 uses
  %i.aic = icmp eq ptr %i.aib, null
  br i1 %i.aic, label %_ZN4llvm5APIntD2Ev.exit2104, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  call void @_ZdaPv(ptr noundef nonnull %i.aib) #42
  br label %_ZN4llvm5APIntD2Ev.exit2104

_ZN4llvm5APIntD2Ev.exit2104:                      ; preds = %_ZN4llvm5APIntD2Ev.exit2103, %bb.ja, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #39
  br label %bb.jc

bb.jc:                                            ; preds = %_ZL20getHorizDemandedEltsN4llvm3EVTERKNS_5APIntERS1_S4_.exit, %_ZN4llvm5APIntD2Ev.exit2104
  %.251853 = phi i1 [ %i.ahu, %_ZN4llvm5APIntD2Ev.exit2104 ], [ false, %_ZL20getHorizDemandedEltsN4llvm3EVTERKNS_5APIntERS1_S4_.exit ]
  %i.aid = load i32, ptr %i.agv, align 8, !tbaa !643
  %i.aie = icmp ugt i32 %i.aid, 64
  br i1 %i.aie, label %bb.jd, label %_ZN4llvm5APIntD2Ev.exit2105

bb.jd:                                            ; preds = %bb.jc
  %i.aif = load ptr, ptr %167, align 8, !tbaa !357 ; 2 uses
  %i.aig = icmp eq ptr %i.aif, null
  br i1 %i.aig, label %_ZN4llvm5APIntD2Ev.exit2105, label %bb.je

bb.je:                                            ; preds = %bb.jd
  call void @_ZdaPv(ptr noundef nonnull %i.aif) #42
  br label %_ZN4llvm5APIntD2Ev.exit2105

_ZN4llvm5APIntD2Ev.exit2105:                      ; preds = %bb.jc, %bb.jd, %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #39
  %i.aih = load i32, ptr %i.agu, align 8, !tbaa !643
  %i.aii = icmp ugt i32 %i.aih, 64
  br i1 %i.aii, label %bb.jf, label %_ZN4llvm5APIntD2Ev.exit2106

bb.jf:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit2105
  %i.aij = load ptr, ptr %166, align 8, !tbaa !357 ; 2 uses
  %i.aik = icmp eq ptr %i.aij, null
  br i1 %i.aik, label %_ZN4llvm5APIntD2Ev.exit2106, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  call void @_ZdaPv(ptr noundef nonnull %i.aij) #42
  br label %_ZN4llvm5APIntD2Ev.exit2106

_ZN4llvm5APIntD2Ev.exit2106:                      ; preds = %_ZN4llvm5APIntD2Ev.exit2105, %bb.jf, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #39
  %i.ail = load i32, ptr %i.aew, align 8, !tbaa !643
  %i.aim = icmp ugt i32 %i.ail, 64
  br i1 %i.aim, label %bb.jh, label %_ZN4llvm5APIntD2Ev.exit2107

bb.jh:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit2106
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_:bb.a
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.lcssa12.i ; 6 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !1088
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !633
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 2 uses
  store i32 4, ptr %i.aw, align 4, !tbaa !634
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !633 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ba = icmp eq ptr %i.as, %i.u
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !83 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.e, label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i

_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i: ; preds = %bb.d
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !83
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !633
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !634
  store i32 %i.bf, ptr %i.aw, align 4, !tbaa !634
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !83
  store i32 0, ptr %i.be, align 4, !tbaa !634
  br label %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bg = icmp ugt i32 %i.ay, 4
  br i1 %i.bg, label %bb.f, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i

bb.f:                                             ; preds = %bb.e
  %i.bh = zext i32 %i.ay to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull %i.au, i64 noundef %i.bh, i64 noundef 4) #39
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i:             ; preds = %bb.e, %bb.f
  %i.bi = load i32, ptr %i.ax, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i9 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i9, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i
  %i.bj = zext i32 %i.bi to i64
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !83
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !83
  %gepdiff.i = shl nuw nsw i64 %i.bj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 4 %i.bk, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i: ; preds = %bb.g, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !633
  br label %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i.sink.split

_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i
  store i32 0, ptr %i.ax, align 8, !tbaa !633
  br label %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i

_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i:       ; preds = %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bm = shl nuw i32 1, %.lcssa.i
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !240
  %i.bp = or i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !240
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !83 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i
  tail call void @free(ptr noundef %i.br) #39
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i, %bb.h
  %i.bu = add i32 %.0.i16, -1
  %i.bv = and i32 %i.bu, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bv, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4908

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !4909

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1336
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bw = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !1338
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !1338
  %i.ca = icmp eq i32 %i.bw, 0
  br i1 %i.ca, label %_ZN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.cb = load ptr, ptr %1, align 8, !tbaa !1334
  %i.cc = zext i32 %i.bw to i64                   ; 2 uses
  %i.cd = mul nuw nsw i64 %i.cc, 40
  %i.ce = add nuw nsw i64 %i.cc, 31
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = and i64 %i.cf, 1073741820
  %i.ch = add nuw nsw i64 %i.cg, %i.cd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cb, i64 noundef %i.ch, i64 noundef 8) #39
  store i32 0, ptr %i.d, align 4, !tbaa !1336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.i
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80), i32, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm14MachineOperand16ChangeToRegisterENS_8RegisterEbbbbbb(ptr noundef nonnull align 8 dereferenceable(32), i32, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32), i32) local_unnamed_addr #4

declare void @_ZN4llvm14MachineOperand17ChangeToImmediateElj(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm5APInt18isSubsetOfSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

declare void @_ZN4llvm5APInt12ashrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm5APInt17andAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN4llvm5APInt16orAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN4llvm9KnownBits4abduERKS0_S2_(ptr dead_on_unwind writable sret(%"struct.llvm::KnownBits") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN4llvm9KnownBits8sadd_satERKS0_S2_(ptr dead_on_unwind writable sret(%"struct.llvm::KnownBits") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm5APInt19isInverseOfSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #7

declare void @_ZN4llvm5APInt17clearBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm35getHorizDemandedEltsForFirstOperandEjRKNS_5APIntERS0_S3_(i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZL38computeKnownBitsForHorizontalOperationN4llvm7SDValueERKNS_5APIntEjRKNS_12SelectionDAGENS_12function_refIFNS_9KnownBitsERKS8_SA_EEEENK3$_0clES0_RS1_"(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(12) %4) unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"struct.llvm::KnownBits", align 8  ; 8 uses
  %6 = alloca %"struct.llvm::KnownBits", align 8  ; 8 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.b = load ptr, ptr %1, align 8, !tbaa !4917, !nonnull !80, !align !237
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1113
  %i.e = add i32 %i.d, 1
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %5, ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.e) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.f = load ptr, ptr %1, align 8, !tbaa !4917, !nonnull !80, !align !237
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !4918)
  call void @llvm.experimental.noalias.scope.decl(metadata !4919)
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !643, !noalias !4920 ; 3 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !643, !alias.scope !4920
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i

_ZN4llvm5APIntC2ERKS0_.exit.i.i:                  ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %4) #39
  %.pr.i.i = load i32, ptr %i.g, align 8, !tbaa !643, !alias.scope !4920 ; 2 uses
  %i.k = icmp ult i32 %.pr.i.i, 65
  br i1 %i.k, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %bb.b

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i:     ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i, %bb.a
  %.sink.i.i = phi ptr [ %4, %bb.a ], [ %7, %_ZN4llvm5APIntC2ERKS0_.exit.i.i ]
  %i.l = phi i32 [ %i.i, %bb.a ], [ %.pr.i.i, %_ZN4llvm5APIntC2ERKS0_.exit.i.i ] ; 3 uses
  %.pre.i.i = load i64, ptr %.sink.i.i, align 8
  %i.m = icmp eq i32 %i.l, 1
  %i.n = shl i64 %.pre.i.i, 1
  %storemerge.i.i.i = select i1 %i.m, i64 0, i64 %i.n
  %i.o = sub nsw i32 0, %i.l
  %i.p = and i32 %i.o, 63
  %i.q = zext nneg i32 %i.p to i64
  %i.r = lshr i64 -1, %i.q
  %i.s = icmp eq i32 %i.l, 0
  %.04.i.i.i.i = select i1 %i.s, i64 0, i64 %i.r, !prof !648
  %8 = and i64 %.04.i.i.i.i, %storemerge.i.i.i
  store i64 %8, ptr %7, align 8, !tbaa !357, !alias.scope !4920
  br label %_ZNK4llvm5APIntlsEj.exit

bb.b:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef 1) #39
  br label %_ZNK4llvm5APIntlsEj.exit

_ZNK4llvm5APIntlsEj.exit:                         ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, %bb.b
  %i.t = load i32, ptr %i.c, align 8, !tbaa !1113
  %i.u = add i32 %i.t, 1
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %6, ptr noundef nonnull align 8 dereferenceable(920) %i.f, ptr %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef %i.u) #39
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !4921, !noalias !4922
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !4923, !noalias !4922
  call void %i.v(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %0, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) #39, !inline_history !4916
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !643
  %i.aa = icmp ugt i32 %i.z, 64
  br i1 %i.aa, label %bb.c, label %_ZN4llvm5APIntD2Ev.exit.i

bb.c:                                             ; preds = %_ZNK4llvm5APIntlsEj.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !357 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #42
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.d, %bb.c, %_ZNK4llvm5APIntlsEj.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !643
  %i.ag = icmp ugt i32 %i.af, 64
  br i1 %i.ag, label %bb.e, label %_ZN4llvm9KnownBitsD2Ev.exit

bb.e:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.ah = load ptr, ptr %6, align 8, !tbaa !357   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN4llvm9KnownBitsD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #42
  br label %_ZN4llvm9KnownBitsD2Ev.exit

_ZN4llvm9KnownBitsD2Ev.exit:                      ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %bb.e, %bb.f
  %i.aj = load i32, ptr %i.g, align 8, !tbaa !643
  %i.ak = icmp ugt i32 %i.aj, 64
  br i1 %i.ak, label %bb.g, label %_ZN4llvm5APIntD2Ev.exit

bb.g:                                             ; preds = %_ZN4llvm9KnownBitsD2Ev.exit
  %i.al = load ptr, ptr %7, align 8, !tbaa !357   ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN4llvm5APIntD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.al) #42
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm9KnownBitsD2Ev.exit, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !643
  %i.ap = icmp ugt i32 %i.ao, 64
  br i1 %i.ap, label %bb.i, label %_ZN4llvm5APIntD2Ev.exit.i10

bb.i:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !357 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN4llvm5APIntD2Ev.exit.i10, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #42
  br label %_ZN4llvm5APIntD2Ev.exit.i10

_ZN4llvm5APIntD2Ev.exit.i10:                      ; preds = %bb.j, %bb.i, %_ZN4llvm5APIntD2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !643
  %i.av = icmp ugt i32 %i.au, 64
  br i1 %i.av, label %bb.k, label %_ZN4llvm9KnownBitsD2Ev.exit11

bb.k:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i10
  %i.aw = load ptr, ptr %5, align 8, !tbaa !357   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN4llvm9KnownBitsD2Ev.exit11, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.aw) #42
  br label %_ZN4llvm9KnownBitsD2Ev.exit11

_ZN4llvm9KnownBitsD2Ev.exit11:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i10, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  ret void
}

declare void @_ZN4llvm9KnownBits16computeForAddSubEbbbRKS0_S2_(ptr dead_on_unwind writable sret(%"struct.llvm::KnownBits") align 8, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL20getTargetShuffleMaskN4llvm7SDValueEbRNS_15SmallVectorImplIS0_EERNS1_IiEERb(ptr nofree readonly captures(none) %0, i32 %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %5) unnamed_addr #1 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.1734", align 8 ; 19 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 17 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %9 = alloca %"class.llvm::SmallVector.1051", align 8 ; 9 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %11 = alloca %"class.llvm::SmallVector.1051", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !468  ; 2 uses
  %i.c = tail call fastcc noundef zeroext i1 @_ZL15isTargetShufflej(i32 noundef %i.b)
  br i1 %i.c, label %bb.b, label %bb.cq

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !469
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.g, align 8, !tbaa !345 ; 4 uses
  %i.h = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i = icmp ult i16 %i.h, 53
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #41
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %bb.b
  %i.i = zext i16 %.sroa.0.0.copyload.i.i.i to i64 ; 3 uses
  %i.j = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !339  ; 5 uses
  %i.m = zext i16 %i.l to i32                     ; 29 uses
  %i.n = add i16 %.sroa.0.0.copyload.i.i.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.n, 197
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %i.o = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.i
  %i.p = getelementptr i8, ptr %i.o, i64 -2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !345
  %.pre526 = zext i16 %i.q to i64
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit, %bb.d
  %.pre-phi = phi i64 [ %i.i, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %.pre526, %bb.d ]
  %i.r = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %.pre-phi
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.s, align 16
  %i.t = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i32 0, ptr %i.v, align 8, !tbaa !633
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 32, ptr %i.w, align 4, !tbaa !634
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 1, ptr %i.x, align 8, !tbaa !643
  store i64 0, ptr %7, align 8, !tbaa !357
  store i8 0, ptr %5, align 1, !tbaa !658
  switch i32 %i.b, label %bb.bq [
    i32 552, label %bb.e
    i32 803, label %bb.f
    i32 704, label %bb.g
    i32 631, label %bb.h
    i32 705, label %bb.k
    i32 839, label %bb.n
    i32 840, label %bb.o
    i32 743, label %bb.p
    i32 744, label %bb.q
    i32 843, label %bb.r
    i32 761, label %bb.s
    i32 969, label %bb.t
    i32 977, label %bb.u
    i32 775, label %bb.v
    i32 940, label %bb.v
    i32 776, label %bb.w
    i32 777, label %bb.x
    i32 986, label %bb.y
    i32 847, label %bb.z
    i32 941, label %bb.ab
    i32 774, label %bb.ad
    i32 938, label %bb.af
    i32 751, label %bb.ag
    i32 747, label %bb.ag
    i32 748, label %bb.ag
    i32 937, label %bb.ah
    i32 802, label %bb.ai
    i32 750, label %bb.aj
    i32 749, label %bb.ak
    i32 741, label %bb.al
    i32 939, label %bb.am
    i32 948, label %bb.ao
    i32 942, label %bb.aq
    i32 943, label %bb.as
    i32 576, label %bb.au
    i32 630, label %bb.bf
  ]

end_hunk_1
