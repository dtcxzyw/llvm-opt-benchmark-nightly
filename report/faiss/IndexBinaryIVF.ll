Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexBinaryIVF?download=true
inline.NumInlined: 1965
inline.NumDeleted: 821
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumUnrolled: 49
begin_hunk_0_@"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_36search_knn_hamming_per_invlist_fixSLILS1_0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEE3$_0EEDciOT0_":bb.a
bb.ci:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i
  %i.adg = icmp sgt i32 %i.acg, %i.acq
  br i1 %i.adg, label %.loopexit.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i:        ; preds = %bb.ci
  %i.adh = icmp eq i32 %i.acg, %i.acq
  %i.adi = icmp sgt i64 %i.acj, %i.acs
  %i.adj = and i1 %i.adh, %i.adi
  br i1 %i.adj, label %.loopexit.i.i, label %bb.cj

bb.cj:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i
  %.sink71.i.i.i = phi i32 [ %i.acz, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i ], [ %i.acq, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.adc, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i ], [ %i.acs, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i ]
  %.1.i.i.i = phi i64 [ %i.acl, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i ], [ %i.ack, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i ] ; 3 uses
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.abp, i64 %.056.i.i.i
  store i32 %.sink71.i.i.i, ptr %i.adk, align 4, !tbaa !77, !alias.scope !645, !noalias !651
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %i.abq, i64 %.056.i.i.i
  store i64 %.sink.i.i.i, ptr %i.adl, align 8, !tbaa !91, !alias.scope !646, !noalias !650
  %i.adm = shl i64 %.1.i.i.i, 1                   ; 3 uses
  %i.adn = or disjoint i64 %i.adm, 1
  %i.ado = icmp ugt i64 %i.adm, %i.m
  br i1 %i.ado, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %bb.cj, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i, %bb.ci, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i
  %.0.lcssa.i.ph.i.i = phi i64 [ %.1.i.i.i, %bb.cj ], [ %.056.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i ], [ %.056.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i ], [ %.056.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i ], [ %.056.i.i.i, %bb.ci ] ; 2 uses
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.abp, i64 %.0.lcssa.i.ph.i.i
  store i32 %i.acg, ptr %i.adp, align 4, !tbaa !77, !alias.scope !645, !noalias !651
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.abq, i64 %.0.lcssa.i.ph.i.i
  store i64 %i.acj, ptr %i.adq, align 8, !tbaa !91, !alias.scope !646, !noalias !650
  %i.adr = load i32, ptr %i.abn, align 4, !tbaa !77, !alias.scope !645, !noalias !651
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit.i.i, %.lr.ph151.split.i.i
  %.1.i.i = phi i32 [ %i.adr, %.loopexit.i.i ], [ %.0169148.i.i, %.lr.ph151.split.i.i ]
  %i.ads = add nuw nsw i64 %.0168149.i.i, 1       ; 2 uses
  %exitcond195.not.i.i = icmp eq i64 %i.ads, %i.ef
  br i1 %exitcond195.not.i.i, label %._crit_edge152.i.i, label %.lr.ph151.split.i.i, !llvm.loop !360

._crit_edge156.split.i.i:                         ; preds = %._crit_edge152.i.i, %.lr.ph155.i.i, %.loopexit75.i.i
  %i.adt = load ptr, ptr %i.dw, align 8, !tbaa !62, !noalias !648
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 48
  %i.adv = load ptr, ptr %i.adu, align 8, !noalias !648
  invoke void %i.adv(ptr noundef nonnull align 8 dereferenceable(25) %i.dw, i64 noundef %.0176.i.i, ptr noundef %i.ea)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i unwind label %bb.cl, !noalias !648

bb.cl:                                            ; preds = %._crit_edge156.split.i.i
  %i.adw = landingpad { ptr, i32 }
          catch ptr null
  %i.adx = extractvalue { ptr, i32 } %i.adw, 0
  tail call void @__clang_call_terminate(ptr %i.adx) #34, !noalias !648
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i:  ; preds = %._crit_edge156.split.i.i
  %i.ady = load ptr, ptr %i.dr, align 8, !tbaa !62, !noalias !648
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 40
  %i.aea = load ptr, ptr %i.adz, align 8, !noalias !648
  invoke void %i.aea(ptr noundef nonnull align 8 dereferenceable(25) %i.dr, i64 noundef %.0176.i.i, ptr noundef %i.dv)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.i.i unwind label %bb.cm, !noalias !648, !llvm.loop !362

bb.cm:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i
  %i.aeb = landingpad { ptr, i32 }
          catch ptr null
  %i.aec = extractvalue { ptr, i32 } %i.aeb, 0
  tail call void @__clang_call_terminate(ptr %i.aec) #34, !noalias !648
  unreachable

bb.cn:                                            ; preds = %bb.ac
  %i.aed = landingpad { ptr, i32 }
          catch ptr null
  %i.aee = extractvalue { ptr, i32 } %i.aed, 0
  tail call void @__clang_call_terminate(ptr %i.aee) #34, !noalias !648
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit340.i.i: ; preds = %bb.ac, %bb.ab
  %.pn225.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.gb, %bb.ab ], [ %i.gc, %bb.ac ]
  %i.aef = load ptr, ptr %i.dr, align 8, !tbaa !62, !noalias !648
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 40
  %i.aeh = load ptr, ptr %i.aeg, align 8, !noalias !648
  invoke void %i.aeh(ptr noundef nonnull align 8 dereferenceable(25) %i.dr, i64 noundef %.0176.i.i, ptr noundef %i.dv)
          to label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit355.i.i unwind label %bb.co, !noalias !648

bb.co:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit340.i.i
  %i.aei = landingpad { ptr, i32 }
          catch ptr null
  %i.aej = extractvalue { ptr, i32 } %i.aei, 0
  tail call void @__clang_call_terminate(ptr %i.aej) #34, !noalias !648
  unreachable

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i: ; preds = %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i, %.preheader.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.cd) #31, !noalias !648
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.056.0.i.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit", label %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit.sink.split"

.lr.ph.i342.i.i:                                  ; preds = %.preheader.i.i, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i
  %.0157.i.i = phi i64 [ %i.ahe, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.aek = mul i64 %.0157.i.i, %i.m               ; 2 uses
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aek ; 8 uses
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aek ; 7 uses
  %i.aen = getelementptr inbounds i8, ptr %i.ael, i64 -4 ; 4 uses
  %i.aeo = getelementptr inbounds i8, ptr %i.aem, i64 -8 ; 5 uses
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i, %.lr.ph.i342.i.i
  %.041.i.i.i = phi i64 [ 0, %.lr.ph.i342.i.i ], [ %spec.select.i.i.i, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i ] ; 3 uses
  %.03740.i.i.i = phi i64 [ 0, %.lr.ph.i342.i.i ], [ %i.agl, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i ] ; 2 uses
  %i.aep = load i32, ptr %i.ael, align 4, !tbaa !77, !alias.scope !645, !noalias !651
  %i.aeq = load i64, ptr %i.aem, align 8, !tbaa !91, !alias.scope !646, !noalias !650 ; 2 uses
  %i.aer = sub nuw i64 %i.m, %.03740.i.i.i        ; 5 uses
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %i.aer ; 3 uses
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !77, !alias.scope !645, !noalias !651 ; 5 uses
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %i.aeo, i64 %i.aer ; 2 uses
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !91, !alias.scope !646, !noalias !650 ; 3 uses
  %i.aew = icmp ult i64 %i.aer, 2
  br i1 %i.aew, label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i, label %.lr.ph.i.i343.i.i

.lr.ph.i.i343.i.i:                                ; preds = %bb.cp, %bb.cs
  %i.aex = phi i64 [ %i.aga, %bb.cs ], [ 3, %bb.cp ]
  %i.aey = phi i64 [ %i.afz, %bb.cs ], [ 2, %bb.cp ] ; 7 uses
  %.062.i.i.i.i = phi i64 [ %.1.i.i346.i.i, %bb.cs ], [ 1, %bb.cp ] ; 6 uses
  %i.aez = icmp eq i64 %i.aey, %i.aer
  br i1 %i.aez, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i351.i.i, label %bb.cq

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i351.i.i: ; preds = %.lr.ph.i.i343.i.i
  %.pre.i.i352.i.i = load i32, ptr %i.aes, align 4, !tbaa !77, !alias.scope !645, !noalias !651
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i350.i.i

bb.cq:                                            ; preds = %.lr.ph.i.i343.i.i
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %i.aey
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !77, !alias.scope !645, !noalias !651 ; 4 uses
  %i.afc = getelementptr [4 x i8], ptr %i.ael, i64 %i.aey
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !77, !alias.scope !645, !noalias !651 ; 5 uses
  %i.afe = getelementptr [8 x i8], ptr %i.aem, i64 %i.aey
  %i.aff = load i64, ptr %i.afe, align 8, !tbaa !91, !alias.scope !646, !noalias !650 ; 3 uses
  %i.afg = icmp sgt i32 %i.afb, %i.afd
  br i1 %i.afg, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i350.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i344.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i344.i.i:     ; preds = %bb.cq
  %i.afh = getelementptr inbounds nuw [8 x i8], ptr %i.aeo, i64 %i.aey
  %i.afi = load i64, ptr %i.afh, align 8, !tbaa !91, !alias.scope !646, !noalias !650
  %i.afj = icmp eq i32 %i.afb, %i.afd
  %i.afk = icmp sgt i64 %i.afi, %i.aff
  %i.afl = and i1 %i.afj, %i.afk
  br i1 %i.afl, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i350.i.i, label %bb.cr

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i350.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i344.i.i, %bb.cq, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i351.i.i
  %i.afm = phi i32 [ %.pre.i.i352.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i351.i.i ], [ %i.afb, %bb.cq ], [ %i.afb, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i344.i.i ] ; 3 uses
  %i.afn = icmp sgt i32 %i.aet, %i.afm
  br i1 %i.afn, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i:      ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i350.i.i
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %i.aeo, i64 %i.aey
  %i.afp = load i64, ptr %i.afo, align 8, !tbaa !91, !alias.scope !646, !noalias !650 ; 2 uses
  %i.afq = icmp eq i32 %i.aet, %i.afm
  %i.afr = icmp sgt i64 %i.aev, %i.afp
  %i.afs = and i1 %i.afq, %i.afr
  br i1 %i.afs, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i, label %bb.cs

bb.cr:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i344.i.i
  %i.aft = icmp sgt i32 %i.aet, %i.afd
  br i1 %i.aft, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i:      ; preds = %bb.cr
  %i.afu = icmp eq i32 %i.aet, %i.afd
  %i.afv = icmp sgt i64 %i.aev, %i.aff
  %i.afw = and i1 %i.afu, %i.afv
  br i1 %i.afw, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i
  %.sink79.i.i.i.i = phi i32 [ %i.afm, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i ], [ %i.afd, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i ]
  %.sink.i.i345.i.i = phi i64 [ %i.afp, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i ], [ %i.aff, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i ]
  %.1.i.i346.i.i = phi i64 [ %i.aey, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i ], [ %i.aex, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i ] ; 3 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %.062.i.i.i.i
  store i32 %.sink79.i.i.i.i, ptr %i.afx, align 4, !tbaa !77, !alias.scope !645, !noalias !651
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %i.aeo, i64 %.062.i.i.i.i
  store i64 %.sink.i.i345.i.i, ptr %i.afy, align 8, !tbaa !91, !alias.scope !646, !noalias !650
  %i.afz = shl i64 %.1.i.i346.i.i, 1              ; 3 uses
  %i.aga = or disjoint i64 %i.afz, 1
  %i.agb = icmp ugt i64 %i.afz, %i.aer
  br i1 %i.agb, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i, label %.lr.ph.i.i343.i.i, !llvm.loop !4

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i: ; preds = %bb.cs, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i, %bb.cr, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i350.i.i
  %.0.lcssa.ph.i.i.i.i = phi i64 [ %.1.i.i346.i.i, %bb.cs ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i350.i.i ], [ %.062.i.i.i.i, %bb.cr ]
  %.pre68.i.i.i.i = load i32, ptr %i.aes, align 4, !tbaa !77, !alias.scope !645, !noalias !651
  %.pre69.i.i.i.i = load i64, ptr %i.aeu, align 8, !tbaa !91, !alias.scope !646, !noalias !650
  br label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i

_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i, %bb.cp
  %i.agc = phi i64 [ %i.aev, %bb.cp ], [ %.pre69.i.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i ]
  %i.agd = phi i32 [ %i.aet, %bb.cp ], [ %.pre68.i.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i ]
  %.0.lcssa.i.i347.i.i = phi i64 [ 1, %bb.cp ], [ %.0.lcssa.ph.i.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i ] ; 2 uses
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %.0.lcssa.i.i347.i.i
  store i32 %i.agd, ptr %i.age, align 4, !tbaa !77, !alias.scope !645, !noalias !651
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.aeo, i64 %.0.lcssa.i.i347.i.i
  store i64 %i.agc, ptr %i.agf, align 8, !tbaa !91, !alias.scope !646, !noalias !650
  %i.agg = xor i64 %.041.i.i.i, -1
  %i.agh = add i64 %i.m, %i.agg                   ; 2 uses
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.agh
  store i32 %i.aep, ptr %i.agi, align 4, !tbaa !77, !alias.scope !645, !noalias !651
  %i.agj = getelementptr inbounds nuw [8 x i8], ptr %i.aem, i64 %i.agh
  store i64 %i.aeq, ptr %i.agj, align 8, !tbaa !91, !alias.scope !646, !noalias !650
  %.not.i348.i.i = icmp ne i64 %i.aeq, -1
  %i.agk = zext i1 %.not.i348.i.i to i64          ; 2 uses
  %spec.select.i.i.i = add i64 %.041.i.i.i, %i.agk ; 9 uses
  %i.agl = add nuw i64 %.03740.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.agl, %i.m
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.loopexit.i.i, label %bb.cp, !llvm.loop !5

._crit_edge.i.loopexit.i.i:                       ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.m
  %i.agn = sub i64 0, %spec.select.i.i.i          ; 2 uses
  %i.ago = getelementptr inbounds [4 x i8], ptr %i.agm, i64 %i.agn
  %i.agp = shl i64 %spec.select.i.i.i, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ael, ptr nonnull align 4 %i.ago, i64 %i.agp, i1 false), !alias.scope !645, !noalias !651
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %i.aem, i64 %i.m
  %i.agr = getelementptr inbounds [8 x i8], ptr %i.agq, i64 %i.agn
  %i.ags = shl i64 %spec.select.i.i.i, 3          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aem, ptr nonnull align 8 %i.agr, i64 %i.ags, i1 false), !alias.scope !646, !noalias !650
  %i.agt = icmp ult i64 %spec.select.i.i.i, %i.m
  br i1 %i.agt, label %.lr.ph44.i.preheader.i.i, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i

.lr.ph44.i.preheader.i.i:                         ; preds = %._crit_edge.i.loopexit.i.i
  %scevgep.i.i = getelementptr i8, ptr %i.aem, i64 %i.ags
  %i.agu = sub nuw i64 %i.m, %spec.select.i.i.i
  %i.agv = shl nuw i64 %i.agu, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i, i8 -1, i64 %i.agv, i1 false), !tbaa !91, !alias.scope !646, !noalias !650
  %24 = add i64 %.041.i.i.i, %i.agk
  %i.agw = sub i64 %i.m, %24                      ; 3 uses
  %min.iters.check2519 = icmp ult i64 %i.agw, 8
  br i1 %min.iters.check2519, label %.lr.ph44.i.i.i.preheader, label %vector.ph2520

vector.ph2520:                                    ; preds = %.lr.ph44.i.preheader.i.i
  %n.vec2521 = and i64 %i.agw, -8                 ; 3 uses
  %i.agx = add i64 %spec.select.i.i.i, %n.vec2521
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %spec.select.i.i.i
  br label %vector.body2522

vector.body2522:                                  ; preds = %vector.body2522, %vector.ph2520
  %index2523 = phi i64 [ 0, %vector.ph2520 ], [ %index.next2524, %vector.body2522 ] ; 2 uses
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %index2523 ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.agz, align 4, !tbaa !77, !alias.scope !645, !noalias !651
  store <4 x i32> splat (i32 2147483647), ptr %i.aha, align 4, !tbaa !77, !alias.scope !645, !noalias !651
  %index.next2524 = add nuw i64 %index2523, 8     ; 2 uses
  %i.ahb = icmp eq i64 %index.next2524, %n.vec2521
  br i1 %i.ahb, label %middle.block2525, label %vector.body2522, !llvm.loop !363

middle.block2525:                                 ; preds = %vector.body2522
  %cmp.n2526 = icmp eq i64 %i.agw, %n.vec2521
  br i1 %cmp.n2526, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i, label %.lr.ph44.i.i.i.preheader

.lr.ph44.i.i.i.preheader:                         ; preds = %.lr.ph44.i.preheader.i.i, %middle.block2525
  %.242.i.i.i.ph = phi i64 [ %spec.select.i.i.i, %.lr.ph44.i.preheader.i.i ], [ %i.agx, %middle.block2525 ]
  br label %.lr.ph44.i.i.i

.lr.ph44.i.i.i:                                   ; preds = %.lr.ph44.i.i.i.preheader, %.lr.ph44.i.i.i
  %.242.i.i.i = phi i64 [ %i.ahd, %.lr.ph44.i.i.i ], [ %.242.i.i.i.ph, %.lr.ph44.i.i.i.preheader ] ; 2 uses
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %.242.i.i.i
  store i32 2147483647, ptr %i.ahc, align 4, !tbaa !77, !alias.scope !645, !noalias !651
  %i.ahd = add nuw i64 %.242.i.i.i, 1             ; 2 uses
  %exitcond47.not.i.i.i = icmp eq i64 %i.ahd, %i.m
  br i1 %exitcond47.not.i.i.i, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i, label %.lr.ph44.i.i.i, !llvm.loop !364

_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i: ; preds = %.lr.ph44.i.i.i, %middle.block2525, %._crit_edge.i.loopexit.i.i
  %i.ahe = add nuw i64 %.0157.i.i, 1              ; 2 uses
  %exitcond197.not.i.i = icmp eq i64 %i.ahe, %i.g
  br i1 %exitcond197.not.i.i, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i, label %.lr.ph.i342.i.i, !llvm.loop !365

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit355.i.i: ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit340.i.i, %bb.aa, %bb.w
  %.pn225.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.dk, %bb.w ], [ %.pn225.pn.pn.pn.i.i, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit340.i.i ], [ %i.ga, %bb.aa ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.cd) #31, !noalias !648
  br label %bb.ct

bb.ct:                                            ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit355.i.i, %bb.u
  %.pn225.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn225.pn.pn.pn.pn.pn.pn.i.i, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit355.i.i ], [ %i.cn, %bb.u ] ; 2 uses
  %.not.i.i.i356.i.i = icmp eq ptr %.sroa.056.0.i.i, null
  br i1 %.not.i.i.i356.i.i, label %common.resume, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ahf = ptrtoint ptr %.sroa.1262.0.i.i to i64
  %i.ahg = ptrtoint ptr %.sroa.056.0.i.i to i64
  %i.ahh = sub i64 %i.ahf, %i.ahg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.0.i.i, i64 noundef %i.ahh) #31, !noalias !648
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i639, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.i.i772, %bb.agt, %bb.agu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i500, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i631, %bb.sl, %bb.sm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i380, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i492, %bb.px, %bb.py, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i372, %bb.nb, %bb.nc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i259, %bb.kf, %bb.kg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i, %bb.gm, %bb.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.i.i, %bb.ct, %bb.cu
  %common.resume.op = phi { ptr, i32 } [ %.pn222.pn.pn.pn.pn.pn.pn.pn.i.i511, %bb.sl ], [ %.pn225.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.ct ], [ %.pn222.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.gm ], [ %.pn222.pn.pn.pn.pn.pn.pn.pn.i.i154, %bb.kf ], [ %.pn222.pn.pn.pn.pn.pn.pn.pn.i.i277, %bb.nb ], [ %.pn222.pn.pn.pn.pn.pn.pn.pn.i.i390, %bb.px ], [ %.pn235.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.i.i ], [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn225.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.cu ], [ %.pn232.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i ], [ %.pn.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i12 ], [ %.pn222.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.gn ], [ %.pn232.i.i257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i259 ], [ %.pn.i.i142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i144 ], [ %.pn222.pn.pn.pn.pn.pn.pn.pn.i.i154, %bb.kg ], [ %.pn232.i.i370, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i372 ], [ %.pn.i.i265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i267 ], [ %.pn222.pn.pn.pn.pn.pn.pn.pn.i.i277, %bb.nc ], [ %.pn232.i.i490, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i492 ], [ %.pn.i.i378, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i380 ], [ %.pn222.pn.pn.pn.pn.pn.pn.pn.i.i390, %bb.py ], [ %.pn232.i.i629, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i631 ], [ %.pn.i.i498, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i500 ], [ %.pn222.pn.pn.pn.pn.pn.pn.pn.i.i511, %bb.sm ], [ %.pn235.i.i770, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.i.i772 ], [ %.pn.i.i637, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i639 ], [ %.pn225.pn.pn.pn.pn.pn.pn.pn.i.i648, %bb.agu ], [ %.pn225.pn.pn.pn.pn.pn.pn.pn.i.i648, %bb.agt ]
  resume { ptr, i32 } %common.resume.op

bb.cv:                                            ; preds = %bb.q, %bb.h
  unreachable

bb.cw:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.ahi = load i64, ptr %.in.i.i634, align 8, !tbaa !91, !noalias !689
  %i.ahj = load i64, ptr %i.ae, align 8, !tbaa !59, !noalias !689
  %.sroa.speculated.i.i9 = tail call i64 @llvm.smin.i64(i64 %i.ahi, i64 %i.ahj) ; 2 uses
  %i.ahk = load i64, ptr %.in211.i.i636, align 8, !tbaa !91, !noalias !689
  %i.ahl = icmp eq i64 %i.ahk, 0
  br i1 %i.ahl, label %bb.df, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21, !noalias !689
  %i.ahm = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  store ptr %i.ahm, ptr %20, align 8, !tbaa !88, !noalias !689
  %i.ahn = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i64 0, ptr %i.ahn, align 8, !tbaa !89, !noalias !689
  store i8 0, ptr %i.ahm, align 8, !tbaa !76, !noalias !689
  %i.aho = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21, !noalias !690 ; 2 uses
  %i.ahp = icmp sgt i32 %i.aho, 0
  br i1 %i.ahp, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.ahq = zext nneg i32 %i.aho to i64            ; 2 uses
  %i.ahr = add nuw nsw i64 %i.ahq, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.ahr)
          to label %bb.cz unwind label %bb.da, !noalias !690

bb.cz:                                            ; preds = %bb.cy
  %i.ahs = load ptr, ptr %20, align 8, !tbaa !87, !noalias !689
  %i.aht = load i64, ptr %i.ahn, align 8, !tbaa !89, !noalias !689
  %i.ahu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ahs, i64 noundef %i.aht, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21, !noalias !690 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.ahq)
          to label %bb.db unwind label %bb.da, !noalias !690

bb.da:                                            ; preds = %bb.dc, %bb.cz, %bb.cy
  %i.ahv = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.db:                                            ; preds = %bb.cz, %bb.cx
  %i.ahw = call ptr @__cxa_allocate_exception(i64 40) #21, !noalias !690 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ahw, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_130search_knn_hamming_per_invlistINS_16HammingComputer8EEEvPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE, ptr noundef nonnull @.str.2, i32 noundef 294)
          to label %bb.dc unwind label %bb.dd, !noalias !690

bb.dc:                                            ; preds = %bb.db
  invoke void @__cxa_throw(ptr nonnull %i.ahw, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #33
          to label %bb.go unwind label %bb.da, !noalias !690

bb.dd:                                            ; preds = %bb.db
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ahw) #21, !noalias !690
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.da
  %.pn.i.i10 = phi { ptr, i32 } [ %i.ahv, %bb.da ], [ %i.ahx, %bb.dd ]
  %i.ahy = load ptr, ptr %20, align 8, !tbaa !87, !noalias !689 ; 2 uses
  %i.ahz = icmp eq ptr %i.ahy, %i.ahm
  br i1 %i.ahz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11: ; preds = %bb.de
  %i.aia = load i64, ptr %i.ahm, align 8, !tbaa !76, !noalias !689
  %i.aib = add i64 %i.aia, 1
  call void @_ZdlPvm(ptr noundef %i.ahy, i64 noundef %i.aib) #31, !noalias !690
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i12: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21, !noalias !689
  br label %common.resume

bb.df:                                            ; preds = %bb.cw
  %i.aic = trunc nuw i8 %i.y to i1
  br i1 %i.aic, label %bb.dg, label %bb.do

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21, !noalias !689
  %i.aid = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.aid, ptr %21, align 8, !tbaa !88, !noalias !689
  %i.aie = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 0, ptr %i.aie, align 8, !tbaa !89, !noalias !689
  store i8 0, ptr %i.aid, align 8, !tbaa !76, !noalias !689
  %i.aif = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21, !noalias !690 ; 2 uses
  %i.aig = icmp sgt i32 %i.aif, 0
  br i1 %i.aig, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %i.aih = zext nneg i32 %i.aif to i64            ; 2 uses
  %i.aii = add nuw nsw i64 %i.aih, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.aii)
          to label %bb.di unwind label %bb.dj, !noalias !690

bb.di:                                            ; preds = %bb.dh
  %i.aij = load ptr, ptr %21, align 8, !tbaa !87, !noalias !689
  %i.aik = load i64, ptr %i.aie, align 8, !tbaa !89, !noalias !689
  %i.ail = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.aij, i64 noundef %i.aik, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21, !noalias !690 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.aih)
          to label %bb.dk unwind label %bb.dj, !noalias !690

bb.dj:                                            ; preds = %bb.dl, %bb.di, %bb.dh
  %i.aim = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.dk:                                            ; preds = %bb.di, %bb.dg
  %i.ain = call ptr @__cxa_allocate_exception(i64 40) #21, !noalias !690 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ain, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_130search_knn_hamming_per_invlistINS_16HammingComputer8EEEvPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE, ptr noundef nonnull @.str.2, i32 noundef 295)
          to label %bb.dl unwind label %bb.dm, !noalias !690

bb.dl:                                            ; preds = %bb.dk
  invoke void @__cxa_throw(ptr nonnull %i.ain, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #33
          to label %bb.go unwind label %bb.dj, !noalias !690

bb.dm:                                            ; preds = %bb.dk
  %i.aio = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ain) #21, !noalias !690
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dj
  %.pn232.i.i = phi { ptr, i32 } [ %i.aim, %bb.dj ], [ %i.aio, %bb.dm ]
  %i.aip = load ptr, ptr %21, align 8, !tbaa !87, !noalias !689 ; 2 uses
  %i.aiq = icmp eq ptr %i.aip, %i.aid
  br i1 %i.aiq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235.i.i: ; preds = %bb.dn
  %i.air = load i64, ptr %i.aid, align 8, !tbaa !76, !noalias !689
  %i.ais = add i64 %i.air, 1
  call void @_ZdlPvm(ptr noundef %i.aip, i64 noundef %i.ais) #31, !noalias !690
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21, !noalias !689
  br label %common.resume

bb.do:                                            ; preds = %bb.df
  %i.ait = add i64 %i.g, 1                        ; 4 uses
  %i.aiu = icmp ugt i64 %i.ait, 1152921504606846975
  br i1 %i.aiu, label %.noexc.i.i137, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i14

.noexc.i.i137:                                    ; preds = %bb.do
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #33, !noalias !690
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i14: ; preds = %bb.do
  %.not.i.i.i.i.i.i15 = icmp eq i64 %i.ait, 0
  br i1 %.not.i.i.i.i.i.i15, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.i.i18, label %.noexc238.i.i

.noexc238.i.i:                                    ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i14
  %i.aiv = shl nuw nsw i64 %i.ait, 3
  %i.aiw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aiv) #32, !noalias !690 ; 5 uses
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %i.aiw, i64 %i.ait ; 2 uses
  store i64 0, ptr %i.aiw, align 8, !tbaa !91, !noalias !690
  %i.aiy = icmp eq i64 %i.g, 0
  br i1 %i.aiy, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.i.i18, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i16

end_hunk_0
begin_hunk_1_@"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_36search_knn_hamming_per_invlist_fixSLILS1_0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEE3$_0EEDciOT0_":bb.a
bb.gb:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i64
  %i.bly = icmp slt i32 %i.bli, %i.bky
  br i1 %i.bly, label %.loopexit.i.i69, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i65

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i65:      ; preds = %bb.gb
  %i.blz = icmp eq i32 %i.bli, %i.bky
  %i.bma = icmp sgt i64 %i.blb, %i.blk
  %i.bmb = and i1 %i.blz, %i.bma
  br i1 %i.bmb, label %.loopexit.i.i69, label %bb.gc

bb.gc:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i65, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i72
  %.sink71.i.i.i66 = phi i32 [ %i.blr, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i72 ], [ %i.bli, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i65 ]
  %.sink.i.i.i67 = phi i64 [ %i.blu, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i72 ], [ %i.blk, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i65 ]
  %.1.i.i.i68 = phi i64 [ %i.bld, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i72 ], [ %i.blc, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i65 ] ; 3 uses
  %i.bmc = getelementptr inbounds nuw [4 x i8], ptr %i.bkf, i64 %.056.i.i.i63
  store i32 %.sink71.i.i.i66, ptr %i.bmc, align 4, !tbaa !77, !alias.scope !687, !noalias !693
  %i.bmd = getelementptr inbounds nuw [8 x i8], ptr %i.bkg, i64 %.056.i.i.i63
  store i64 %.sink.i.i.i67, ptr %i.bmd, align 8, !tbaa !91, !alias.scope !688, !noalias !692
  %i.bme = shl i64 %.1.i.i.i68, 1                 ; 3 uses
  %i.bmf = or disjoint i64 %i.bme, 1
  %i.bmg = icmp ugt i64 %i.bme, %i.m
  br i1 %i.bmg, label %.loopexit.i.i69, label %.lr.ph.i.i.i62, !llvm.loop !0

.loopexit.i.i69:                                  ; preds = %bb.gc, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i65, %bb.gb, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i72, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i71
  %.0.lcssa.i.ph.i.i70 = phi i64 [ %.1.i.i.i68, %bb.gc ], [ %.056.i.i.i63, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i72 ], [ %.056.i.i.i63, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i65 ], [ %.056.i.i.i63, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i71 ], [ %.056.i.i.i63, %bb.gb ] ; 2 uses
  %i.bmh = getelementptr inbounds nuw [4 x i8], ptr %i.bkf, i64 %.0.lcssa.i.ph.i.i70
  store i32 %i.bky, ptr %i.bmh, align 4, !tbaa !77, !alias.scope !687, !noalias !693
  %i.bmi = getelementptr inbounds nuw [8 x i8], ptr %i.bkg, i64 %.0.lcssa.i.ph.i.i70
  store i64 %i.blb, ptr %i.bmi, align 8, !tbaa !91, !alias.scope !688, !noalias !692
  %i.bmj = load i32, ptr %i.bkd, align 4, !tbaa !77, !alias.scope !687, !noalias !693
  br label %bb.gd

bb.gd:                                            ; preds = %.loopexit.i.i69, %.lr.ph139.split.i.i
  %.1.i.i60 = phi i32 [ %i.bmj, %.loopexit.i.i69 ], [ %.0169136.i.i, %.lr.ph139.split.i.i ]
  %i.bmk = add nuw nsw i64 %.0168137.i.i, 1       ; 2 uses
  %exitcond185.not.i.i = icmp eq i64 %i.bmk, %i.alg
  br i1 %exitcond185.not.i.i, label %._crit_edge140.i.i, label %.lr.ph139.split.i.i, !llvm.loop !403

._crit_edge144.split.i.i:                         ; preds = %._crit_edge140.i.i, %.lr.ph143.i.i58, %.loopexit66.i.i
  %i.bml = load ptr, ptr %i.akx, align 8, !tbaa !62, !noalias !690
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 48
  %i.bmn = load ptr, ptr %i.bmm, align 8, !noalias !690
  invoke void %i.bmn(ptr noundef nonnull align 8 dereferenceable(25) %i.akx, i64 noundef %.0176.i.i29, ptr noundef %i.alb)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i57 unwind label %bb.ge, !noalias !690

bb.ge:                                            ; preds = %._crit_edge144.split.i.i
  %i.bmo = landingpad { ptr, i32 }
          catch ptr null
  %i.bmp = extractvalue { ptr, i32 } %i.bmo, 0
  tail call void @__clang_call_terminate(ptr %i.bmp) #34, !noalias !690
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i57: ; preds = %._crit_edge144.split.i.i
  %i.bmq = load ptr, ptr %i.aks, align 8, !tbaa !62, !noalias !690
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bmq, i64 40
  %i.bms = load ptr, ptr %i.bmr, align 8, !noalias !690
  invoke void %i.bms(ptr noundef nonnull align 8 dereferenceable(25) %i.aks, i64 noundef %.0176.i.i29, ptr noundef %i.akw)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.i.i28 unwind label %bb.gf, !noalias !690, !llvm.loop !405

bb.gf:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i57
  %i.bmt = landingpad { ptr, i32 }
          catch ptr null
  %i.bmu = extractvalue { ptr, i32 } %i.bmt, 0
  tail call void @__clang_call_terminate(ptr %i.bmu) #34, !noalias !690
  unreachable

bb.gg:                                            ; preds = %bb.dx
  %i.bmv = landingpad { ptr, i32 }
          catch ptr null
  %i.bmw = extractvalue { ptr, i32 } %i.bmv, 0
  tail call void @__clang_call_terminate(ptr %i.bmw) #34, !noalias !690
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit292.i.i: ; preds = %bb.dx, %bb.dw
  %.pn222.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.anc, %bb.dw ], [ %i.and, %bb.dx ]
  %i.bmx = load ptr, ptr %i.aks, align 8, !tbaa !62, !noalias !690
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmx, i64 40
  %i.bmz = load ptr, ptr %i.bmy, align 8, !noalias !690
  invoke void %i.bmz(ptr noundef nonnull align 8 dereferenceable(25) %i.aks, i64 noundef %.0176.i.i29, ptr noundef %i.akw)
          to label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit308.i.i unwind label %bb.gh, !noalias !690

bb.gh:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit292.i.i
  %i.bna = landingpad { ptr, i32 }
          catch ptr null
  %i.bnb = extractvalue { ptr, i32 } %i.bna, 0
  tail call void @__clang_call_terminate(ptr %i.bnb) #34, !noalias !690
  unreachable

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i46: ; preds = %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i45, %.preheader.i.i30
  tail call void @_ZdaPv(ptr noundef nonnull %i.aje) #31, !noalias !690
  %.not.i.i.i.i.i47 = icmp eq ptr %.sroa.049.0.i.i, null
  br i1 %.not.i.i.i.i.i47, label %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit", label %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit.sink.split"

.lr.ph.i294.i.i:                                  ; preds = %.preheader.i.i30, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i45
  %.0145.i.i = phi i64 [ %i.bpw, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i45 ], [ 0, %.preheader.i.i30 ] ; 2 uses
  %i.bnc = mul i64 %.0145.i.i, %i.m               ; 2 uses
  %i.bnd = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bnc ; 8 uses
  %i.bne = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bnc ; 7 uses
  %i.bnf = getelementptr inbounds i8, ptr %i.bnd, i64 -4 ; 4 uses
  %i.bng = getelementptr inbounds i8, ptr %i.bne, i64 -8 ; 5 uses
  br label %bb.gi

bb.gi:                                            ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i42, %.lr.ph.i294.i.i
  %.041.i.i.i33 = phi i64 [ 0, %.lr.ph.i294.i.i ], [ %spec.select.i.i.i43, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i42 ] ; 3 uses
  %.03740.i.i.i34 = phi i64 [ 0, %.lr.ph.i294.i.i ], [ %i.bpd, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i42 ] ; 2 uses
  %i.bnh = load i32, ptr %i.bnd, align 4, !tbaa !77, !alias.scope !687, !noalias !693
  %i.bni = load i64, ptr %i.bne, align 8, !tbaa !91, !alias.scope !688, !noalias !692 ; 2 uses
  %i.bnj = sub nuw i64 %i.m, %.03740.i.i.i34      ; 5 uses
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %i.bnf, i64 %i.bnj ; 3 uses
  %i.bnl = load i32, ptr %i.bnk, align 4, !tbaa !77, !alias.scope !687, !noalias !693 ; 5 uses
  %i.bnm = getelementptr inbounds nuw [8 x i8], ptr %i.bng, i64 %i.bnj ; 2 uses
  %i.bnn = load i64, ptr %i.bnm, align 8, !tbaa !91, !alias.scope !688, !noalias !692 ; 3 uses
  %i.bno = icmp ult i64 %i.bnj, 2
  br i1 %i.bno, label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i42, label %.lr.ph.i.i295.i.i

.lr.ph.i.i295.i.i:                                ; preds = %bb.gi, %bb.gl
  %i.bnp = phi i64 [ %i.bos, %bb.gl ], [ 3, %bb.gi ]
  %i.bnq = phi i64 [ %i.bor, %bb.gl ], [ 2, %bb.gi ] ; 7 uses
  %.062.i.i.i.i35 = phi i64 [ %.1.i.i298.i.i, %bb.gl ], [ 1, %bb.gi ] ; 6 uses
  %i.bnr = icmp eq i64 %i.bnq, %i.bnj
  br i1 %i.bnr, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i304.i.i, label %bb.gj

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i304.i.i: ; preds = %.lr.ph.i.i295.i.i
  %.pre.i.i305.i.i = load i32, ptr %i.bnk, align 4, !tbaa !77, !alias.scope !687, !noalias !693
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i303.i.i

bb.gj:                                            ; preds = %.lr.ph.i.i295.i.i
  %i.bns = getelementptr inbounds nuw [4 x i8], ptr %i.bnf, i64 %i.bnq
  %i.bnt = load i32, ptr %i.bns, align 4, !tbaa !77, !alias.scope !687, !noalias !693 ; 4 uses
  %i.bnu = getelementptr [4 x i8], ptr %i.bnd, i64 %i.bnq
  %i.bnv = load i32, ptr %i.bnu, align 4, !tbaa !77, !alias.scope !687, !noalias !693 ; 5 uses
  %i.bnw = getelementptr [8 x i8], ptr %i.bne, i64 %i.bnq
  %i.bnx = load i64, ptr %i.bnw, align 8, !tbaa !91, !alias.scope !688, !noalias !692 ; 3 uses
  %i.bny = icmp sgt i32 %i.bnt, %i.bnv
  br i1 %i.bny, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i303.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i296.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i296.i.i:     ; preds = %bb.gj
  %i.bnz = getelementptr inbounds nuw [8 x i8], ptr %i.bng, i64 %i.bnq
  %i.boa = load i64, ptr %i.bnz, align 8, !tbaa !91, !alias.scope !688, !noalias !692
  %i.bob = icmp eq i32 %i.bnt, %i.bnv
  %i.boc = icmp sgt i64 %i.boa, %i.bnx
  %i.bod = and i1 %i.bob, %i.boc
  br i1 %i.bod, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i303.i.i, label %bb.gk

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i303.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i296.i.i, %bb.gj, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i304.i.i
  %i.boe = phi i32 [ %.pre.i.i305.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i304.i.i ], [ %i.bnt, %bb.gj ], [ %i.bnt, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i296.i.i ] ; 3 uses
  %i.bof = icmp sgt i32 %i.bnl, %i.boe
  br i1 %i.bof, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i38, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i53

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i53:    ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i303.i.i
  %i.bog = getelementptr inbounds nuw [8 x i8], ptr %i.bng, i64 %i.bnq
  %i.boh = load i64, ptr %i.bog, align 8, !tbaa !91, !alias.scope !688, !noalias !692 ; 2 uses
  %i.boi = icmp eq i32 %i.bnl, %i.boe
  %i.boj = icmp sgt i64 %i.bnn, %i.boh
  %i.bok = and i1 %i.boi, %i.boj
  br i1 %i.bok, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i38, label %bb.gl

bb.gk:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i296.i.i
  %i.bol = icmp sgt i32 %i.bnl, %i.bnv
  br i1 %i.bol, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i38, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i36

_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i36:    ; preds = %bb.gk
  %i.bom = icmp eq i32 %i.bnl, %i.bnv
  %i.bon = icmp sgt i64 %i.bnn, %i.bnx
  %i.boo = and i1 %i.bom, %i.bon
  br i1 %i.boo, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i38, label %bb.gl

bb.gl:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i36, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i53
  %.sink79.i.i.i.i37 = phi i32 [ %i.boe, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i53 ], [ %i.bnv, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i36 ]
  %.sink.i.i297.i.i = phi i64 [ %i.boh, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i53 ], [ %i.bnx, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i36 ]
  %.1.i.i298.i.i = phi i64 [ %i.bnq, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i53 ], [ %i.bnp, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i36 ] ; 3 uses
  %i.bop = getelementptr inbounds nuw [4 x i8], ptr %i.bnf, i64 %.062.i.i.i.i35
  store i32 %.sink79.i.i.i.i37, ptr %i.bop, align 4, !tbaa !77, !alias.scope !687, !noalias !693
  %i.boq = getelementptr inbounds nuw [8 x i8], ptr %i.bng, i64 %.062.i.i.i.i35
  store i64 %.sink.i.i297.i.i, ptr %i.boq, align 8, !tbaa !91, !alias.scope !688, !noalias !692
  %i.bor = shl i64 %.1.i.i298.i.i, 1              ; 3 uses
  %i.bos = or disjoint i64 %i.bor, 1
  %i.bot = icmp ugt i64 %i.bor, %i.bnj
  br i1 %i.bot, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i38, label %.lr.ph.i.i295.i.i, !llvm.loop !4

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i38: ; preds = %bb.gl, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i36, %bb.gk, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i53, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i303.i.i
  %.0.lcssa.ph.i.i.i.i39 = phi i64 [ %.1.i.i298.i.i, %bb.gl ], [ %.062.i.i.i.i35, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i53 ], [ %.062.i.i.i.i35, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i36 ], [ %.062.i.i.i.i35, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i303.i.i ], [ %.062.i.i.i.i35, %bb.gk ]
  %.pre68.i.i.i.i40 = load i32, ptr %i.bnk, align 4, !tbaa !77, !alias.scope !687, !noalias !693
  %.pre69.i.i.i.i41 = load i64, ptr %i.bnm, align 8, !tbaa !91, !alias.scope !688, !noalias !692
  br label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i42

_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i42: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i38, %bb.gi
  %i.bou = phi i64 [ %i.bnn, %bb.gi ], [ %.pre69.i.i.i.i41, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i38 ]
  %i.bov = phi i32 [ %i.bnl, %bb.gi ], [ %.pre68.i.i.i.i40, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i38 ]
  %.0.lcssa.i.i299.i.i = phi i64 [ 1, %bb.gi ], [ %.0.lcssa.ph.i.i.i.i39, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i38 ] ; 2 uses
  %i.bow = getelementptr inbounds nuw [4 x i8], ptr %i.bnf, i64 %.0.lcssa.i.i299.i.i
  store i32 %i.bov, ptr %i.bow, align 4, !tbaa !77, !alias.scope !687, !noalias !693
  %i.box = getelementptr inbounds nuw [8 x i8], ptr %i.bng, i64 %.0.lcssa.i.i299.i.i
  store i64 %i.bou, ptr %i.box, align 8, !tbaa !91, !alias.scope !688, !noalias !692
  %i.boy = xor i64 %.041.i.i.i33, -1
  %i.boz = add i64 %i.m, %i.boy                   ; 2 uses
  %i.bpa = getelementptr inbounds nuw [4 x i8], ptr %i.bnd, i64 %i.boz
  store i32 %i.bnh, ptr %i.bpa, align 4, !tbaa !77, !alias.scope !687, !noalias !693
  %i.bpb = getelementptr inbounds nuw [8 x i8], ptr %i.bne, i64 %i.boz
  store i64 %i.bni, ptr %i.bpb, align 8, !tbaa !91, !alias.scope !688, !noalias !692
  %.not.i300.i.i = icmp ne i64 %i.bni, -1
  %i.bpc = zext i1 %.not.i300.i.i to i64          ; 2 uses
  %spec.select.i.i.i43 = add i64 %.041.i.i.i33, %i.bpc ; 9 uses
  %i.bpd = add nuw i64 %.03740.i.i.i34, 1         ; 2 uses
  %exitcond.not.i301.i.i = icmp eq i64 %i.bpd, %i.m
  br i1 %exitcond.not.i301.i.i, label %._crit_edge.i.loopexit.i.i44, label %bb.gi, !llvm.loop !5

._crit_edge.i.loopexit.i.i44:                     ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i42
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.bnd, i64 %i.m
  %i.bpf = sub i64 0, %spec.select.i.i.i43        ; 2 uses
  %i.bpg = getelementptr inbounds [4 x i8], ptr %i.bpe, i64 %i.bpf
  %i.bph = shl i64 %spec.select.i.i.i43, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bnd, ptr nonnull align 4 %i.bpg, i64 %i.bph, i1 false), !alias.scope !687, !noalias !693
  %i.bpi = getelementptr inbounds nuw [8 x i8], ptr %i.bne, i64 %i.m
  %i.bpj = getelementptr inbounds [8 x i8], ptr %i.bpi, i64 %i.bpf
  %i.bpk = shl i64 %spec.select.i.i.i43, 3        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bne, ptr nonnull align 8 %i.bpj, i64 %i.bpk, i1 false), !alias.scope !688, !noalias !692
  %i.bpl = icmp ult i64 %spec.select.i.i.i43, %i.m
  br i1 %i.bpl, label %.lr.ph44.i.preheader.i.i48, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i45

.lr.ph44.i.preheader.i.i48:                       ; preds = %._crit_edge.i.loopexit.i.i44
  %scevgep.i.i49 = getelementptr i8, ptr %i.bne, i64 %i.bpk
  %i.bpm = sub nuw i64 %i.m, %spec.select.i.i.i43
  %i.bpn = shl nuw i64 %i.bpm, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i49, i8 -1, i64 %i.bpn, i1 false), !tbaa !91, !alias.scope !688, !noalias !692
  %25 = add i64 %.041.i.i.i33, %i.bpc
  %i.bpo = sub i64 %i.m, %25                      ; 3 uses
  %min.iters.check2487 = icmp ult i64 %i.bpo, 8
  br i1 %min.iters.check2487, label %.lr.ph44.i.i.i50.preheader, label %vector.ph2488

vector.ph2488:                                    ; preds = %.lr.ph44.i.preheader.i.i48
  %n.vec2489 = and i64 %i.bpo, -8                 ; 3 uses
  %i.bpp = add i64 %spec.select.i.i.i43, %n.vec2489
  %i.bpq = getelementptr inbounds nuw [4 x i8], ptr %i.bnd, i64 %spec.select.i.i.i43
  br label %vector.body2490

vector.body2490:                                  ; preds = %vector.body2490, %vector.ph2488
  %index2491 = phi i64 [ 0, %vector.ph2488 ], [ %index.next2492, %vector.body2490 ] ; 2 uses
  %i.bpr = getelementptr inbounds nuw [4 x i8], ptr %i.bpq, i64 %index2491 ; 2 uses
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpr, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.bpr, align 4, !tbaa !77, !alias.scope !687, !noalias !693
  store <4 x i32> splat (i32 2147483647), ptr %i.bps, align 4, !tbaa !77, !alias.scope !687, !noalias !693
  %index.next2492 = add nuw i64 %index2491, 8     ; 2 uses
  %i.bpt = icmp eq i64 %index.next2492, %n.vec2489
  br i1 %i.bpt, label %middle.block2493, label %vector.body2490, !llvm.loop !406

middle.block2493:                                 ; preds = %vector.body2490
  %cmp.n2494 = icmp eq i64 %i.bpo, %n.vec2489
  br i1 %cmp.n2494, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i45, label %.lr.ph44.i.i.i50.preheader

.lr.ph44.i.i.i50.preheader:                       ; preds = %.lr.ph44.i.preheader.i.i48, %middle.block2493
  %.242.i.i.i51.ph = phi i64 [ %spec.select.i.i.i43, %.lr.ph44.i.preheader.i.i48 ], [ %i.bpp, %middle.block2493 ]
  br label %.lr.ph44.i.i.i50

.lr.ph44.i.i.i50:                                 ; preds = %.lr.ph44.i.i.i50.preheader, %.lr.ph44.i.i.i50
  %.242.i.i.i51 = phi i64 [ %i.bpv, %.lr.ph44.i.i.i50 ], [ %.242.i.i.i51.ph, %.lr.ph44.i.i.i50.preheader ] ; 2 uses
  %i.bpu = getelementptr inbounds nuw [4 x i8], ptr %i.bnd, i64 %.242.i.i.i51
  store i32 2147483647, ptr %i.bpu, align 4, !tbaa !77, !alias.scope !687, !noalias !693
  %i.bpv = add nuw i64 %.242.i.i.i51, 1           ; 2 uses
  %exitcond47.not.i.i.i52 = icmp eq i64 %i.bpv, %i.m
  br i1 %exitcond47.not.i.i.i52, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i45, label %.lr.ph44.i.i.i50, !llvm.loop !407

_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i45: ; preds = %.lr.ph44.i.i.i50, %middle.block2493, %._crit_edge.i.loopexit.i.i44
  %i.bpw = add nuw i64 %.0145.i.i, 1              ; 2 uses
  %exitcond187.not.i.i = icmp eq i64 %i.bpw, %i.g
  br i1 %exitcond187.not.i.i, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i46, label %.lr.ph.i294.i.i, !llvm.loop !408

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit308.i.i: ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit292.i.i, %bb.dv, %bb.dr
  %.pn222.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.akl, %bb.dr ], [ %.pn222.pn.pn.pn.i.i, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit292.i.i ], [ %i.anb, %bb.dv ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.aje) #31, !noalias !690
  br label %bb.gm

bb.gm:                                            ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit308.i.i, %bb.dp
  %.pn222.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn222.pn.pn.pn.pn.pn.pn.i.i, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit308.i.i ], [ %i.ajo, %bb.dp ] ; 2 uses
  %.not.i.i.i309.i.i = icmp eq ptr %.sroa.049.0.i.i, null
  br i1 %.not.i.i.i309.i.i, label %common.resume, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.bpx = ptrtoint ptr %.sroa.12.0.i.i to i64
  %i.bpy = ptrtoint ptr %.sroa.049.0.i.i to i64
  %i.bpz = sub i64 %i.bpx, %i.bpy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.0.i.i, i64 noundef %i.bpz) #31, !noalias !690
  br label %common.resume

bb.go:                                            ; preds = %bb.dl, %bb.dc
  unreachable

bb.gp:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %i.bqa = load i64, ptr %.in.i.i634, align 8, !tbaa !91, !noalias !731
  %i.bqb = load i64, ptr %i.ae, align 8, !tbaa !59, !noalias !731
  %.sroa.speculated.i.i140 = tail call i64 @llvm.smin.i64(i64 %i.bqa, i64 %i.bqb) ; 2 uses
  %i.bqc = load i64, ptr %.in211.i.i636, align 8, !tbaa !91, !noalias !731
  %i.bqd = icmp eq i64 %i.bqc, 0
  br i1 %i.bqd, label %bb.gy, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21, !noalias !731
  %i.bqe = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.bqe, ptr %18, align 8, !tbaa !88, !noalias !731
  %i.bqf = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 0, ptr %i.bqf, align 8, !tbaa !89, !noalias !731
  store i8 0, ptr %i.bqe, align 8, !tbaa !76, !noalias !731
  %i.bqg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21, !noalias !732 ; 2 uses
  %i.bqh = icmp sgt i32 %i.bqg, 0
  br i1 %i.bqh, label %bb.gr, label %bb.gu

bb.gr:                                            ; preds = %bb.gq
  %i.bqi = zext nneg i32 %i.bqg to i64            ; 2 uses
  %i.bqj = add nuw nsw i64 %i.bqi, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.bqj)
          to label %bb.gs unwind label %bb.gt, !noalias !732

bb.gs:                                            ; preds = %bb.gr
  %i.bqk = load ptr, ptr %18, align 8, !tbaa !87, !noalias !731
  %i.bql = load i64, ptr %i.bqf, align 8, !tbaa !89, !noalias !731
  %i.bqm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bqk, i64 noundef %i.bql, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21, !noalias !732 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.bqi)
          to label %bb.gu unwind label %bb.gt, !noalias !732

bb.gt:                                            ; preds = %bb.gv, %bb.gs, %bb.gr
  %i.bqn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gu:                                            ; preds = %bb.gs, %bb.gq
  %i.bqo = call ptr @__cxa_allocate_exception(i64 40) #21, !noalias !732 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.bqo, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_130search_knn_hamming_per_invlistINS_21HammingComputer16_tplILNS_9SIMDLevelE0EEEEEvPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE, ptr noundef nonnull @.str.2, i32 noundef 294)
          to label %bb.gv unwind label %bb.gw, !noalias !732

bb.gv:                                            ; preds = %bb.gu
  invoke void @__cxa_throw(ptr nonnull %i.bqo, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #33
          to label %bb.kh unwind label %bb.gt, !noalias !732

bb.gw:                                            ; preds = %bb.gu
  %i.bqp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bqo) #21, !noalias !732
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gt
  %.pn.i.i142 = phi { ptr, i32 } [ %i.bqn, %bb.gt ], [ %i.bqp, %bb.gw ]
  %i.bqq = load ptr, ptr %18, align 8, !tbaa !87, !noalias !731 ; 2 uses
  %i.bqr = icmp eq ptr %i.bqq, %i.bqe
  br i1 %i.bqr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i143: ; preds = %bb.gx
  %i.bqs = load i64, ptr %i.bqe, align 8, !tbaa !76, !noalias !731
  %i.bqt = add i64 %i.bqs, 1
  call void @_ZdlPvm(ptr noundef %i.bqq, i64 noundef %i.bqt) #31, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i144: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21, !noalias !731
  br label %common.resume

bb.gy:                                            ; preds = %bb.gp
  %i.bqu = trunc nuw i8 %i.y to i1
  br i1 %i.bqu, label %bb.gz, label %bb.hh

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21, !noalias !731
  %i.bqv = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  store ptr %i.bqv, ptr %19, align 8, !tbaa !88, !noalias !731
  %i.bqw = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i64 0, ptr %i.bqw, align 8, !tbaa !89, !noalias !731
  store i8 0, ptr %i.bqv, align 8, !tbaa !76, !noalias !731
  %i.bqx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21, !noalias !732 ; 2 uses
  %i.bqy = icmp sgt i32 %i.bqx, 0
  br i1 %i.bqy, label %bb.ha, label %bb.hd

bb.ha:                                            ; preds = %bb.gz
  %i.bqz = zext nneg i32 %i.bqx to i64            ; 2 uses
  %i.bra = add nuw nsw i64 %i.bqz, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %i.bra)
          to label %bb.hb unwind label %bb.hc, !noalias !732

bb.hb:                                            ; preds = %bb.ha
  %i.brb = load ptr, ptr %19, align 8, !tbaa !87, !noalias !731
  %i.brc = load i64, ptr %i.bqw, align 8, !tbaa !89, !noalias !731
  %i.brd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.brb, i64 noundef %i.brc, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21, !noalias !732 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %i.bqz)
          to label %bb.hd unwind label %bb.hc, !noalias !732

bb.hc:                                            ; preds = %bb.he, %bb.hb, %bb.ha
  %i.bre = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.hd:                                            ; preds = %bb.hb, %bb.gz
  %i.brf = call ptr @__cxa_allocate_exception(i64 40) #21, !noalias !732 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.brf, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_130search_knn_hamming_per_invlistINS_21HammingComputer16_tplILNS_9SIMDLevelE0EEEEEvPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE, ptr noundef nonnull @.str.2, i32 noundef 295)
          to label %bb.he unwind label %bb.hf, !noalias !732

bb.he:                                            ; preds = %bb.hd
  invoke void @__cxa_throw(ptr nonnull %i.brf, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #33
          to label %bb.kh unwind label %bb.hc, !noalias !732

bb.hf:                                            ; preds = %bb.hd
  %i.brg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.brf) #21, !noalias !732
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.hc
  %.pn232.i.i257 = phi { ptr, i32 } [ %i.bre, %bb.hc ], [ %i.brg, %bb.hf ]
  %i.brh = load ptr, ptr %19, align 8, !tbaa !87, !noalias !731 ; 2 uses
  %i.bri = icmp eq ptr %i.brh, %i.bqv
  br i1 %i.bri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235.i.i258: ; preds = %bb.hg
  %i.brj = load i64, ptr %i.bqv, align 8, !tbaa !76, !noalias !731
  %i.brk = add i64 %i.brj, 1
  call void @_ZdlPvm(ptr noundef %i.brh, i64 noundef %i.brk) #31, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i259: ; preds = %bb.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21, !noalias !731
  br label %common.resume

bb.hh:                                            ; preds = %bb.gy
  %i.brl = add i64 %i.g, 1                        ; 4 uses
  %i.brm = icmp ugt i64 %i.brl, 1152921504606846975
  br i1 %i.brm, label %.noexc.i.i256, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i147

.noexc.i.i256:                                    ; preds = %bb.hh
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #33, !noalias !732
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i147: ; preds = %bb.hh
  %.not.i.i.i.i.i.i148 = icmp eq i64 %i.brl, 0
  br i1 %.not.i.i.i.i.i.i148, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.i.i152, label %.noexc238.i.i149

.noexc238.i.i149:                                 ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i147
  %i.brn = shl nuw nsw i64 %i.brl, 3
  %i.bro = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.brn) #32, !noalias !732 ; 5 uses
  %i.brp = getelementptr inbounds nuw [8 x i8], ptr %i.bro, i64 %i.brl ; 2 uses
  store i64 0, ptr %i.bro, align 8, !tbaa !91, !noalias !732
  %i.brq = icmp eq i64 %i.g, 0
  br i1 %i.brq, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.i.i152, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i150

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i150: ; preds = %.noexc238.i.i149
  %i.brr = getelementptr i8, ptr %i.bro, i64 8
  %.idx.i.i.i.i.i.i.i.i.i151 = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.brr, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i151, i1 false), !tbaa !91, !noalias !732
end_hunk_1
begin_hunk_2_@"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_36search_knn_hamming_per_invlist_fixSLILS1_0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEE3$_0EEDciOT0_":bb.a
bb.ju:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i202
  %i.cue = icmp slt i32 %i.cto, %i.cte
  br i1 %i.cue, label %.loopexit.i.i207, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i203

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i203:     ; preds = %bb.ju
  %i.cuf = icmp eq i32 %i.cto, %i.cte
  %i.cug = icmp sgt i64 %i.cth, %i.ctq
  %i.cuh = and i1 %i.cuf, %i.cug
  br i1 %i.cuh, label %.loopexit.i.i207, label %bb.jv

bb.jv:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i203, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i209
  %.sink71.i.i.i204 = phi i32 [ %i.ctx, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i209 ], [ %i.cto, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i203 ]
  %.sink.i.i.i205 = phi i64 [ %i.cua, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i209 ], [ %i.ctq, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i203 ]
  %.1.i.i.i206 = phi i64 [ %i.ctj, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i209 ], [ %i.cti, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i203 ] ; 3 uses
  %i.cui = getelementptr inbounds nuw [4 x i8], ptr %i.csu, i64 %.056.i.i.i201
  store i32 %.sink71.i.i.i204, ptr %i.cui, align 4, !tbaa !77, !alias.scope !729, !noalias !735
  %i.cuj = getelementptr inbounds nuw [8 x i8], ptr %i.csv, i64 %.056.i.i.i201
  store i64 %.sink.i.i.i205, ptr %i.cuj, align 8, !tbaa !91, !alias.scope !730, !noalias !734
  %i.cuk = shl i64 %.1.i.i.i206, 1                ; 3 uses
  %i.cul = or disjoint i64 %i.cuk, 1
  %i.cum = icmp ugt i64 %i.cuk, %i.m
  br i1 %i.cum, label %.loopexit.i.i207, label %.lr.ph.i.i.i200, !llvm.loop !0

.loopexit.i.i207:                                 ; preds = %bb.jv, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i203, %bb.ju, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i209, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i208, %bb.js
  %.0.lcssa.i.i.i = phi i64 [ 1, %bb.js ], [ %.1.i.i.i206, %bb.jv ], [ %.056.i.i.i201, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i209 ], [ %.056.i.i.i201, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i203 ], [ %.056.i.i.i201, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i208 ], [ %.056.i.i.i201, %bb.ju ] ; 2 uses
  %i.cun = getelementptr inbounds nuw [4 x i8], ptr %i.csu, i64 %.0.lcssa.i.i.i
  store i32 %i.cte, ptr %i.cun, align 4, !tbaa !77, !alias.scope !729, !noalias !735
  %i.cuo = getelementptr inbounds nuw [8 x i8], ptr %i.csv, i64 %.0.lcssa.i.i.i
  store i64 %i.cth, ptr %i.cuo, align 8, !tbaa !91, !alias.scope !730, !noalias !734
  %i.cup = load i32, ptr %i.css, align 4, !tbaa !77, !alias.scope !729, !noalias !735
  br label %bb.jw

bb.jw:                                            ; preds = %.loopexit.i.i207, %bb.jr
  %.1.i.i199 = phi i32 [ %i.cup, %.loopexit.i.i207 ], [ %.0169121.i.i, %bb.jr ]
  %i.cuq = add nuw nsw i64 %.0168122.i.i, 1       ; 2 uses
  %exitcond167.not.i.i = icmp eq i64 %i.cuq, %i.bty
  br i1 %exitcond167.not.i.i, label %._crit_edge125.i.i, label %bb.jr, !llvm.loop !447

._crit_edge129.split.i.i:                         ; preds = %._crit_edge125.i.i, %.lr.ph128.i.i, %.loopexit54.i.i
  %i.cur = load ptr, ptr %i.btp, align 8, !tbaa !62, !noalias !732
  %i.cus = getelementptr inbounds nuw i8, ptr %i.cur, i64 48
  %i.cut = load ptr, ptr %i.cus, align 8, !noalias !732
  invoke void %i.cut(ptr noundef nonnull align 8 dereferenceable(25) %i.btp, i64 noundef %.0176.i.i166, ptr noundef %i.btt)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i196 unwind label %bb.jx, !noalias !732

bb.jx:                                            ; preds = %._crit_edge129.split.i.i
  %i.cuu = landingpad { ptr, i32 }
          catch ptr null
  %i.cuv = extractvalue { ptr, i32 } %i.cuu, 0
  tail call void @__clang_call_terminate(ptr %i.cuv) #34, !noalias !732
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i196: ; preds = %._crit_edge129.split.i.i
  %i.cuw = load ptr, ptr %i.btk, align 8, !tbaa !62, !noalias !732
  %i.cux = getelementptr inbounds nuw i8, ptr %i.cuw, i64 40
  %i.cuy = load ptr, ptr %i.cux, align 8, !noalias !732
  invoke void %i.cuy(ptr noundef nonnull align 8 dereferenceable(25) %i.btk, i64 noundef %.0176.i.i166, ptr noundef %i.bto)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.i.i165 unwind label %bb.jy, !noalias !732, !llvm.loop !448

bb.jy:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i196
  %i.cuz = landingpad { ptr, i32 }
          catch ptr null
  %i.cva = extractvalue { ptr, i32 } %i.cuz, 0
  tail call void @__clang_call_terminate(ptr %i.cva) #34, !noalias !732
  unreachable

bb.jz:                                            ; preds = %bb.hq
  %i.cvb = landingpad { ptr, i32 }
          catch ptr null
  %i.cvc = extractvalue { ptr, i32 } %i.cvb, 0
  tail call void @__clang_call_terminate(ptr %i.cvc) #34, !noalias !732
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit289.i.i: ; preds = %bb.hq, %bb.hp
  %.pn222.pn.pn.pn.i.i192 = phi { ptr, i32 } [ %i.bvu, %bb.hp ], [ %i.bvv, %bb.hq ]
  %i.cvd = load ptr, ptr %i.btk, align 8, !tbaa !62, !noalias !732
  %i.cve = getelementptr inbounds nuw i8, ptr %i.cvd, i64 40
  %i.cvf = load ptr, ptr %i.cve, align 8, !noalias !732
  invoke void %i.cvf(ptr noundef nonnull align 8 dereferenceable(25) %i.btk, i64 noundef %.0176.i.i166, ptr noundef %i.bto)
          to label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit305.i.i unwind label %bb.ka, !noalias !732

bb.ka:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit289.i.i
  %i.cvg = landingpad { ptr, i32 }
          catch ptr null
  %i.cvh = extractvalue { ptr, i32 } %i.cvg, 0
  tail call void @__clang_call_terminate(ptr %i.cvh) #34, !noalias !732
  unreachable

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i183: ; preds = %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i182, %.preheader.i.i167
  tail call void @_ZdaPv(ptr noundef nonnull %i.brw) #31, !noalias !732
  %.not.i.i.i.i.i184 = icmp eq ptr %.sroa.038.0.i.i, null
  br i1 %.not.i.i.i.i.i184, label %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit", label %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit.sink.split"

.lr.ph.i291.i.i:                                  ; preds = %.preheader.i.i167, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i182
  %.0130.i.i = phi i64 [ %i.cyc, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i182 ], [ 0, %.preheader.i.i167 ] ; 2 uses
  %i.cvi = mul i64 %.0130.i.i, %i.m               ; 2 uses
  %i.cvj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cvi ; 8 uses
  %i.cvk = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cvi ; 7 uses
  %i.cvl = getelementptr inbounds i8, ptr %i.cvj, i64 -4 ; 4 uses
  %i.cvm = getelementptr inbounds i8, ptr %i.cvk, i64 -8 ; 5 uses
  br label %bb.kb

bb.kb:                                            ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i179, %.lr.ph.i291.i.i
  %.041.i.i.i170 = phi i64 [ 0, %.lr.ph.i291.i.i ], [ %spec.select.i.i.i180, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i179 ] ; 3 uses
  %.03740.i.i.i171 = phi i64 [ 0, %.lr.ph.i291.i.i ], [ %i.cxj, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i179 ] ; 2 uses
  %i.cvn = load i32, ptr %i.cvj, align 4, !tbaa !77, !alias.scope !729, !noalias !735
  %i.cvo = load i64, ptr %i.cvk, align 8, !tbaa !91, !alias.scope !730, !noalias !734 ; 2 uses
  %i.cvp = sub nuw i64 %i.m, %.03740.i.i.i171     ; 5 uses
  %i.cvq = getelementptr inbounds nuw [4 x i8], ptr %i.cvl, i64 %i.cvp ; 3 uses
  %i.cvr = load i32, ptr %i.cvq, align 4, !tbaa !77, !alias.scope !729, !noalias !735 ; 5 uses
  %i.cvs = getelementptr inbounds nuw [8 x i8], ptr %i.cvm, i64 %i.cvp ; 2 uses
  %i.cvt = load i64, ptr %i.cvs, align 8, !tbaa !91, !alias.scope !730, !noalias !734 ; 3 uses
  %i.cvu = icmp ult i64 %i.cvp, 2
  br i1 %i.cvu, label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i179, label %.lr.ph.i.i292.i.i

.lr.ph.i.i292.i.i:                                ; preds = %bb.kb, %bb.ke
  %i.cvv = phi i64 [ %i.cwy, %bb.ke ], [ 3, %bb.kb ]
  %i.cvw = phi i64 [ %i.cwx, %bb.ke ], [ 2, %bb.kb ] ; 7 uses
  %.062.i.i.i.i172 = phi i64 [ %.1.i.i295.i.i, %bb.ke ], [ 1, %bb.kb ] ; 6 uses
  %i.cvx = icmp eq i64 %i.cvw, %i.cvp
  br i1 %i.cvx, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i301.i.i, label %bb.kc

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i301.i.i: ; preds = %.lr.ph.i.i292.i.i
  %.pre.i.i302.i.i = load i32, ptr %i.cvq, align 4, !tbaa !77, !alias.scope !729, !noalias !735
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i300.i.i

bb.kc:                                            ; preds = %.lr.ph.i.i292.i.i
  %i.cvy = getelementptr inbounds nuw [4 x i8], ptr %i.cvl, i64 %i.cvw
  %i.cvz = load i32, ptr %i.cvy, align 4, !tbaa !77, !alias.scope !729, !noalias !735 ; 4 uses
  %i.cwa = getelementptr [4 x i8], ptr %i.cvj, i64 %i.cvw
  %i.cwb = load i32, ptr %i.cwa, align 4, !tbaa !77, !alias.scope !729, !noalias !735 ; 5 uses
  %i.cwc = getelementptr [8 x i8], ptr %i.cvk, i64 %i.cvw
  %i.cwd = load i64, ptr %i.cwc, align 8, !tbaa !91, !alias.scope !730, !noalias !734 ; 3 uses
  %i.cwe = icmp sgt i32 %i.cvz, %i.cwb
  br i1 %i.cwe, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i300.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i293.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i293.i.i:     ; preds = %bb.kc
  %i.cwf = getelementptr inbounds nuw [8 x i8], ptr %i.cvm, i64 %i.cvw
  %i.cwg = load i64, ptr %i.cwf, align 8, !tbaa !91, !alias.scope !730, !noalias !734
  %i.cwh = icmp eq i32 %i.cvz, %i.cwb
  %i.cwi = icmp sgt i64 %i.cwg, %i.cwd
  %i.cwj = and i1 %i.cwh, %i.cwi
  br i1 %i.cwj, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i300.i.i, label %bb.kd

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i300.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i293.i.i, %bb.kc, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i301.i.i
  %i.cwk = phi i32 [ %.pre.i.i302.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i301.i.i ], [ %i.cvz, %bb.kc ], [ %i.cvz, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i293.i.i ] ; 3 uses
  %i.cwl = icmp sgt i32 %i.cvr, %i.cwk
  br i1 %i.cwl, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i175, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i190

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i190:   ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i300.i.i
  %i.cwm = getelementptr inbounds nuw [8 x i8], ptr %i.cvm, i64 %i.cvw
  %i.cwn = load i64, ptr %i.cwm, align 8, !tbaa !91, !alias.scope !730, !noalias !734 ; 2 uses
  %i.cwo = icmp eq i32 %i.cvr, %i.cwk
  %i.cwp = icmp sgt i64 %i.cvt, %i.cwn
  %i.cwq = and i1 %i.cwo, %i.cwp
  br i1 %i.cwq, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i175, label %bb.ke

bb.kd:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i293.i.i
  %i.cwr = icmp sgt i32 %i.cvr, %i.cwb
  br i1 %i.cwr, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i175, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i173

_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i173:   ; preds = %bb.kd
  %i.cws = icmp eq i32 %i.cvr, %i.cwb
  %i.cwt = icmp sgt i64 %i.cvt, %i.cwd
  %i.cwu = and i1 %i.cws, %i.cwt
  br i1 %i.cwu, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i175, label %bb.ke

bb.ke:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i173, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i190
  %.sink79.i.i.i.i174 = phi i32 [ %i.cwk, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i190 ], [ %i.cwb, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i173 ]
  %.sink.i.i294.i.i = phi i64 [ %i.cwn, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i190 ], [ %i.cwd, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i173 ]
  %.1.i.i295.i.i = phi i64 [ %i.cvw, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i190 ], [ %i.cvv, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i173 ] ; 3 uses
  %i.cwv = getelementptr inbounds nuw [4 x i8], ptr %i.cvl, i64 %.062.i.i.i.i172
  store i32 %.sink79.i.i.i.i174, ptr %i.cwv, align 4, !tbaa !77, !alias.scope !729, !noalias !735
  %i.cww = getelementptr inbounds nuw [8 x i8], ptr %i.cvm, i64 %.062.i.i.i.i172
  store i64 %.sink.i.i294.i.i, ptr %i.cww, align 8, !tbaa !91, !alias.scope !730, !noalias !734
  %i.cwx = shl i64 %.1.i.i295.i.i, 1              ; 3 uses
  %i.cwy = or disjoint i64 %i.cwx, 1
  %i.cwz = icmp ugt i64 %i.cwx, %i.cvp
  br i1 %i.cwz, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i175, label %.lr.ph.i.i292.i.i, !llvm.loop !4

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i175: ; preds = %bb.ke, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i173, %bb.kd, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i190, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i300.i.i
  %.0.lcssa.ph.i.i.i.i176 = phi i64 [ %.1.i.i295.i.i, %bb.ke ], [ %.062.i.i.i.i172, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i190 ], [ %.062.i.i.i.i172, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i173 ], [ %.062.i.i.i.i172, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i300.i.i ], [ %.062.i.i.i.i172, %bb.kd ]
  %.pre68.i.i.i.i177 = load i32, ptr %i.cvq, align 4, !tbaa !77, !alias.scope !729, !noalias !735
  %.pre69.i.i.i.i178 = load i64, ptr %i.cvs, align 8, !tbaa !91, !alias.scope !730, !noalias !734
  br label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i179

_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i179: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i175, %bb.kb
  %i.cxa = phi i64 [ %i.cvt, %bb.kb ], [ %.pre69.i.i.i.i178, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i175 ]
  %i.cxb = phi i32 [ %i.cvr, %bb.kb ], [ %.pre68.i.i.i.i177, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i175 ]
  %.0.lcssa.i.i296.i.i = phi i64 [ 1, %bb.kb ], [ %.0.lcssa.ph.i.i.i.i176, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i175 ] ; 2 uses
  %i.cxc = getelementptr inbounds nuw [4 x i8], ptr %i.cvl, i64 %.0.lcssa.i.i296.i.i
  store i32 %i.cxb, ptr %i.cxc, align 4, !tbaa !77, !alias.scope !729, !noalias !735
  %i.cxd = getelementptr inbounds nuw [8 x i8], ptr %i.cvm, i64 %.0.lcssa.i.i296.i.i
  store i64 %i.cxa, ptr %i.cxd, align 8, !tbaa !91, !alias.scope !730, !noalias !734
  %i.cxe = xor i64 %.041.i.i.i170, -1
  %i.cxf = add i64 %i.m, %i.cxe                   ; 2 uses
  %i.cxg = getelementptr inbounds nuw [4 x i8], ptr %i.cvj, i64 %i.cxf
  store i32 %i.cvn, ptr %i.cxg, align 4, !tbaa !77, !alias.scope !729, !noalias !735
  %i.cxh = getelementptr inbounds nuw [8 x i8], ptr %i.cvk, i64 %i.cxf
  store i64 %i.cvo, ptr %i.cxh, align 8, !tbaa !91, !alias.scope !730, !noalias !734
  %.not.i297.i.i = icmp ne i64 %i.cvo, -1
  %i.cxi = zext i1 %.not.i297.i.i to i64          ; 2 uses
  %spec.select.i.i.i180 = add i64 %.041.i.i.i170, %i.cxi ; 9 uses
  %i.cxj = add nuw i64 %.03740.i.i.i171, 1        ; 2 uses
  %exitcond.not.i298.i.i = icmp eq i64 %i.cxj, %i.m
  br i1 %exitcond.not.i298.i.i, label %._crit_edge.i.loopexit.i.i181, label %bb.kb, !llvm.loop !5

._crit_edge.i.loopexit.i.i181:                    ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i179
  %i.cxk = getelementptr inbounds nuw [4 x i8], ptr %i.cvj, i64 %i.m
  %i.cxl = sub i64 0, %spec.select.i.i.i180       ; 2 uses
  %i.cxm = getelementptr inbounds [4 x i8], ptr %i.cxk, i64 %i.cxl
  %i.cxn = shl i64 %spec.select.i.i.i180, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cvj, ptr nonnull align 4 %i.cxm, i64 %i.cxn, i1 false), !alias.scope !729, !noalias !735
  %i.cxo = getelementptr inbounds nuw [8 x i8], ptr %i.cvk, i64 %i.m
  %i.cxp = getelementptr inbounds [8 x i8], ptr %i.cxo, i64 %i.cxl
  %i.cxq = shl i64 %spec.select.i.i.i180, 3       ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cvk, ptr nonnull align 8 %i.cxp, i64 %i.cxq, i1 false), !alias.scope !730, !noalias !734
  %i.cxr = icmp ult i64 %spec.select.i.i.i180, %i.m
  br i1 %i.cxr, label %.lr.ph44.i.preheader.i.i185, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i182

.lr.ph44.i.preheader.i.i185:                      ; preds = %._crit_edge.i.loopexit.i.i181
  %scevgep.i.i186 = getelementptr i8, ptr %i.cvk, i64 %i.cxq
  %i.cxs = sub nuw i64 %i.m, %spec.select.i.i.i180
  %i.cxt = shl nuw i64 %i.cxs, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i186, i8 -1, i64 %i.cxt, i1 false), !tbaa !91, !alias.scope !730, !noalias !734
  %26 = add i64 %.041.i.i.i170, %i.cxi
  %i.cxu = sub i64 %i.m, %26                      ; 3 uses
  %min.iters.check2455 = icmp ult i64 %i.cxu, 8
  br i1 %min.iters.check2455, label %.lr.ph44.i.i.i187.preheader, label %vector.ph2456

vector.ph2456:                                    ; preds = %.lr.ph44.i.preheader.i.i185
  %n.vec2457 = and i64 %i.cxu, -8                 ; 3 uses
  %i.cxv = add i64 %spec.select.i.i.i180, %n.vec2457
  %i.cxw = getelementptr inbounds nuw [4 x i8], ptr %i.cvj, i64 %spec.select.i.i.i180
  br label %vector.body2458

vector.body2458:                                  ; preds = %vector.body2458, %vector.ph2456
  %index2459 = phi i64 [ 0, %vector.ph2456 ], [ %index.next2460, %vector.body2458 ] ; 2 uses
  %i.cxx = getelementptr inbounds nuw [4 x i8], ptr %i.cxw, i64 %index2459 ; 2 uses
  %i.cxy = getelementptr inbounds nuw i8, ptr %i.cxx, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.cxx, align 4, !tbaa !77, !alias.scope !729, !noalias !735
  store <4 x i32> splat (i32 2147483647), ptr %i.cxy, align 4, !tbaa !77, !alias.scope !729, !noalias !735
  %index.next2460 = add nuw i64 %index2459, 8     ; 2 uses
  %i.cxz = icmp eq i64 %index.next2460, %n.vec2457
  br i1 %i.cxz, label %middle.block2461, label %vector.body2458, !llvm.loop !449

middle.block2461:                                 ; preds = %vector.body2458
  %cmp.n2462 = icmp eq i64 %i.cxu, %n.vec2457
  br i1 %cmp.n2462, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i182, label %.lr.ph44.i.i.i187.preheader

.lr.ph44.i.i.i187.preheader:                      ; preds = %.lr.ph44.i.preheader.i.i185, %middle.block2461
  %.242.i.i.i188.ph = phi i64 [ %spec.select.i.i.i180, %.lr.ph44.i.preheader.i.i185 ], [ %i.cxv, %middle.block2461 ]
  br label %.lr.ph44.i.i.i187

.lr.ph44.i.i.i187:                                ; preds = %.lr.ph44.i.i.i187.preheader, %.lr.ph44.i.i.i187
  %.242.i.i.i188 = phi i64 [ %i.cyb, %.lr.ph44.i.i.i187 ], [ %.242.i.i.i188.ph, %.lr.ph44.i.i.i187.preheader ] ; 2 uses
  %i.cya = getelementptr inbounds nuw [4 x i8], ptr %i.cvj, i64 %.242.i.i.i188
  store i32 2147483647, ptr %i.cya, align 4, !tbaa !77, !alias.scope !729, !noalias !735
  %i.cyb = add nuw i64 %.242.i.i.i188, 1          ; 2 uses
  %exitcond47.not.i.i.i189 = icmp eq i64 %i.cyb, %i.m
  br i1 %exitcond47.not.i.i.i189, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i182, label %.lr.ph44.i.i.i187, !llvm.loop !450

_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i182: ; preds = %.lr.ph44.i.i.i187, %middle.block2461, %._crit_edge.i.loopexit.i.i181
  %i.cyc = add nuw i64 %.0130.i.i, 1              ; 2 uses
  %exitcond168.not.i.i = icmp eq i64 %i.cyc, %i.g
  br i1 %exitcond168.not.i.i, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i183, label %.lr.ph.i291.i.i, !llvm.loop !451

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit305.i.i: ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit289.i.i, %bb.ho, %bb.hk
  %.pn222.pn.pn.pn.pn.pn.pn.i.i158 = phi { ptr, i32 } [ %i.btd, %bb.hk ], [ %.pn222.pn.pn.pn.i.i192, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit289.i.i ], [ %i.bvt, %bb.ho ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.brw) #31, !noalias !732
  br label %bb.kf

bb.kf:                                            ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit305.i.i, %bb.hi
  %.pn222.pn.pn.pn.pn.pn.pn.pn.i.i154 = phi { ptr, i32 } [ %.pn222.pn.pn.pn.pn.pn.pn.i.i158, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit305.i.i ], [ %i.bsg, %bb.hi ] ; 2 uses
  %.not.i.i.i306.i.i = icmp eq ptr %.sroa.038.0.i.i, null
  br i1 %.not.i.i.i306.i.i, label %common.resume, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.cyd = ptrtoint ptr %.sroa.12.0.i.i153 to i64
  %i.cye = ptrtoint ptr %.sroa.038.0.i.i to i64
  %i.cyf = sub i64 %i.cyd, %i.cye
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.038.0.i.i, i64 noundef %i.cyf) #31, !noalias !732
  br label %common.resume

bb.kh:                                            ; preds = %bb.he, %bb.gv
  unreachable

bb.ki:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  %i.cyg = load i64, ptr %.in.i.i634, align 8, !tbaa !91, !noalias !773
  %i.cyh = load i64, ptr %i.ae, align 8, !tbaa !59, !noalias !773
  %.sroa.speculated.i.i263 = tail call i64 @llvm.smin.i64(i64 %i.cyg, i64 %i.cyh) ; 2 uses
  %i.cyi = load i64, ptr %.in211.i.i636, align 8, !tbaa !91, !noalias !773
  %i.cyj = icmp eq i64 %i.cyi, 0
  br i1 %i.cyj, label %bb.kr, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21, !noalias !773
  %i.cyk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.cyk, ptr %14, align 8, !tbaa !88, !noalias !773
  %i.cyl = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 0, ptr %i.cyl, align 8, !tbaa !89, !noalias !773
  store i8 0, ptr %i.cyk, align 8, !tbaa !76, !noalias !773
  %i.cym = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21, !noalias !774 ; 2 uses
  %i.cyn = icmp sgt i32 %i.cym, 0
  br i1 %i.cyn, label %bb.kk, label %bb.kn

bb.kk:                                            ; preds = %bb.kj
  %i.cyo = zext nneg i32 %i.cym to i64            ; 2 uses
  %i.cyp = add nuw nsw i64 %i.cyo, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.cyp)
          to label %bb.kl unwind label %bb.km, !noalias !774

bb.kl:                                            ; preds = %bb.kk
  %i.cyq = load ptr, ptr %14, align 8, !tbaa !87, !noalias !773
  %i.cyr = load i64, ptr %i.cyl, align 8, !tbaa !89, !noalias !773
  %i.cys = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.cyq, i64 noundef %i.cyr, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21, !noalias !774 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.cyo)
          to label %bb.kn unwind label %bb.km, !noalias !774

bb.km:                                            ; preds = %bb.ko, %bb.kl, %bb.kk
  %i.cyt = landingpad { ptr, i32 }
          cleanup
  br label %bb.kq

bb.kn:                                            ; preds = %bb.kl, %bb.kj
  %i.cyu = call ptr @__cxa_allocate_exception(i64 40) #21, !noalias !774 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.cyu, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_130search_knn_hamming_per_invlistINS_21HammingComputer20_tplILNS_9SIMDLevelE0EEEEEvPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE, ptr noundef nonnull @.str.2, i32 noundef 294)
          to label %bb.ko unwind label %bb.kp, !noalias !774

bb.ko:                                            ; preds = %bb.kn
  invoke void @__cxa_throw(ptr nonnull %i.cyu, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #33
          to label %bb.nd unwind label %bb.km, !noalias !774

bb.kp:                                            ; preds = %bb.kn
  %i.cyv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cyu) #21, !noalias !774
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.km
  %.pn.i.i265 = phi { ptr, i32 } [ %i.cyt, %bb.km ], [ %i.cyv, %bb.kp ]
  %i.cyw = load ptr, ptr %14, align 8, !tbaa !87, !noalias !773 ; 2 uses
  %i.cyx = icmp eq ptr %i.cyw, %i.cyk
  br i1 %i.cyx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i266: ; preds = %bb.kq
  %i.cyy = load i64, ptr %i.cyk, align 8, !tbaa !76, !noalias !773
  %i.cyz = add i64 %i.cyy, 1
  call void @_ZdlPvm(ptr noundef %i.cyw, i64 noundef %i.cyz) #31, !noalias !774
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i267: ; preds = %bb.kq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21, !noalias !773
  br label %common.resume

bb.kr:                                            ; preds = %bb.ki
  %i.cza = trunc nuw i8 %i.y to i1
  br i1 %i.cza, label %bb.ks, label %bb.la

bb.ks:                                            ; preds = %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21, !noalias !773
  %i.czb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.czb, ptr %15, align 8, !tbaa !88, !noalias !773
  %i.czc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 0, ptr %i.czc, align 8, !tbaa !89, !noalias !773
  store i8 0, ptr %i.czb, align 8, !tbaa !76, !noalias !773
  %i.czd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21, !noalias !774 ; 2 uses
  %i.cze = icmp sgt i32 %i.czd, 0
  br i1 %i.cze, label %bb.kt, label %bb.kw

bb.kt:                                            ; preds = %bb.ks
  %i.czf = zext nneg i32 %i.czd to i64            ; 2 uses
  %i.czg = add nuw nsw i64 %i.czf, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.czg)
          to label %bb.ku unwind label %bb.kv, !noalias !774

bb.ku:                                            ; preds = %bb.kt
  %i.czh = load ptr, ptr %15, align 8, !tbaa !87, !noalias !773
  %i.czi = load i64, ptr %i.czc, align 8, !tbaa !89, !noalias !773
  %i.czj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.czh, i64 noundef %i.czi, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21, !noalias !774 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.czf)
          to label %bb.kw unwind label %bb.kv, !noalias !774

bb.kv:                                            ; preds = %bb.kx, %bb.ku, %bb.kt
  %i.czk = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

bb.kw:                                            ; preds = %bb.ku, %bb.ks
  %i.czl = call ptr @__cxa_allocate_exception(i64 40) #21, !noalias !774 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.czl, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_130search_knn_hamming_per_invlistINS_21HammingComputer20_tplILNS_9SIMDLevelE0EEEEEvPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE, ptr noundef nonnull @.str.2, i32 noundef 295)
          to label %bb.kx unwind label %bb.ky, !noalias !774

bb.kx:                                            ; preds = %bb.kw
  invoke void @__cxa_throw(ptr nonnull %i.czl, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #33
          to label %bb.nd unwind label %bb.kv, !noalias !774

bb.ky:                                            ; preds = %bb.kw
  %i.czm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.czl) #21, !noalias !774
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kv
  %.pn232.i.i370 = phi { ptr, i32 } [ %i.czk, %bb.kv ], [ %i.czm, %bb.ky ]
  %i.czn = load ptr, ptr %15, align 8, !tbaa !87, !noalias !773 ; 2 uses
  %i.czo = icmp eq ptr %i.czn, %i.czb
  br i1 %i.czo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235.i.i371

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235.i.i371: ; preds = %bb.kz
  %i.czp = load i64, ptr %i.czb, align 8, !tbaa !76, !noalias !773
  %i.czq = add i64 %i.czp, 1
  call void @_ZdlPvm(ptr noundef %i.czn, i64 noundef %i.czq) #31, !noalias !774
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i372: ; preds = %bb.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235.i.i371
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21, !noalias !773
  br label %common.resume

bb.la:                                            ; preds = %bb.kr
  %i.czr = add i64 %i.g, 1                        ; 4 uses
  %i.czs = icmp ugt i64 %i.czr, 1152921504606846975
  br i1 %i.czs, label %.noexc.i.i369, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i270

.noexc.i.i369:                                    ; preds = %bb.la
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #33, !noalias !774
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i270: ; preds = %bb.la
  %.not.i.i.i.i.i.i271 = icmp eq i64 %i.czr, 0
  br i1 %.not.i.i.i.i.i.i271, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.i.i275, label %.noexc238.i.i272

.noexc238.i.i272:                                 ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i270
  %i.czt = shl nuw nsw i64 %i.czr, 3
  %i.czu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.czt) #32, !noalias !774 ; 5 uses
  %i.czv = getelementptr inbounds nuw [8 x i8], ptr %i.czu, i64 %i.czr ; 2 uses
  store i64 0, ptr %i.czu, align 8, !tbaa !91, !noalias !774
  %i.czw = icmp eq i64 %i.g, 0
  br i1 %i.czw, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.i.i275, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i273

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i273: ; preds = %.noexc238.i.i272
  %i.czx = getelementptr i8, ptr %i.czu, i64 8
  %.idx.i.i.i.i.i.i.i.i.i274 = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.czx, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i274, i1 false), !tbaa !91, !noalias !774
end_hunk_2
begin_hunk_3_@"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_36search_knn_hamming_per_invlist_fixSLILS1_0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEE3$_0EEDciOT0_":bb.a
bb.mq:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i330
  %i.dxv = icmp sgt i32 %i.dwv, %i.dxf
  br i1 %i.dxv, label %.loopexit.i.i335, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i331

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i331:     ; preds = %bb.mq
  %i.dxw = icmp eq i32 %i.dwv, %i.dxf
  %i.dxx = icmp sgt i64 %i.dwy, %i.dxh
  %i.dxy = and i1 %i.dxw, %i.dxx
  br i1 %i.dxy, label %.loopexit.i.i335, label %bb.mr

bb.mr:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i331, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i338
  %.sink71.i.i.i332 = phi i32 [ %i.dxo, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i338 ], [ %i.dxf, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i331 ]
  %.sink.i.i.i333 = phi i64 [ %i.dxr, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i338 ], [ %i.dxh, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i331 ]
  %.1.i.i.i334 = phi i64 [ %i.dxa, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i338 ], [ %i.dwz, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i331 ] ; 3 uses
  %i.dxz = getelementptr inbounds nuw [4 x i8], ptr %i.dwg, i64 %.056.i.i.i329
  store i32 %.sink71.i.i.i332, ptr %i.dxz, align 4, !tbaa !77, !alias.scope !771, !noalias !777
  %i.dya = getelementptr inbounds nuw [8 x i8], ptr %i.dwh, i64 %.056.i.i.i329
  store i64 %.sink.i.i.i333, ptr %i.dya, align 8, !tbaa !91, !alias.scope !772, !noalias !776
  %i.dyb = shl i64 %.1.i.i.i334, 1                ; 3 uses
  %i.dyc = or disjoint i64 %i.dyb, 1
  %i.dyd = icmp ugt i64 %i.dyb, %i.m
  br i1 %i.dyd, label %.loopexit.i.i335, label %.lr.ph.i.i.i328, !llvm.loop !0

.loopexit.i.i335:                                 ; preds = %bb.mr, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i331, %bb.mq, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i338, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i337, %bb.mo
  %.0.lcssa.i.i.i336 = phi i64 [ 1, %bb.mo ], [ %.1.i.i.i334, %bb.mr ], [ %.056.i.i.i329, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i338 ], [ %.056.i.i.i329, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i331 ], [ %.056.i.i.i329, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i337 ], [ %.056.i.i.i329, %bb.mq ] ; 2 uses
  %i.dye = getelementptr inbounds nuw [4 x i8], ptr %i.dwg, i64 %.0.lcssa.i.i.i336
  store i32 %i.dwv, ptr %i.dye, align 4, !tbaa !77, !alias.scope !771, !noalias !777
  %i.dyf = getelementptr inbounds nuw [8 x i8], ptr %i.dwh, i64 %.0.lcssa.i.i.i336
  store i64 %i.dwy, ptr %i.dyf, align 8, !tbaa !91, !alias.scope !772, !noalias !776
  %i.dyg = load i32, ptr %i.dwe, align 4, !tbaa !77, !alias.scope !771, !noalias !777
  br label %bb.ms

bb.ms:                                            ; preds = %.loopexit.i.i335, %bb.mn
  %.1.i.i327 = phi i32 [ %i.dyg, %.loopexit.i.i335 ], [ %.0169104.i.i, %bb.mn ]
  %i.dyh = add nuw nsw i64 %.0168105.i.i, 1       ; 2 uses
  %exitcond150.not.i.i = icmp eq i64 %i.dyh, %i.ddc
  br i1 %exitcond150.not.i.i, label %._crit_edge108.i.i, label %bb.mn, !llvm.loop !492

._crit_edge112.split.i.i:                         ; preds = %._crit_edge108.i.i, %.lr.ph111.i.i325, %.loopexit40.i.i
  %i.dyi = load ptr, ptr %i.dct, align 8, !tbaa !62, !noalias !774
  %i.dyj = getelementptr inbounds nuw i8, ptr %i.dyi, i64 48
  %i.dyk = load ptr, ptr %i.dyj, align 8, !noalias !774
  invoke void %i.dyk(ptr noundef nonnull align 8 dereferenceable(25) %i.dct, i64 noundef %.0176.i.i294, ptr noundef %i.dcx)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i324 unwind label %bb.mt, !noalias !774

bb.mt:                                            ; preds = %._crit_edge112.split.i.i
  %i.dyl = landingpad { ptr, i32 }
          catch ptr null
  %i.dym = extractvalue { ptr, i32 } %i.dyl, 0
  tail call void @__clang_call_terminate(ptr %i.dym) #34, !noalias !774
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i324: ; preds = %._crit_edge112.split.i.i
  %i.dyn = load ptr, ptr %i.dco, align 8, !tbaa !62, !noalias !774
  %i.dyo = getelementptr inbounds nuw i8, ptr %i.dyn, i64 40
  %i.dyp = load ptr, ptr %i.dyo, align 8, !noalias !774
  invoke void %i.dyp(ptr noundef nonnull align 8 dereferenceable(25) %i.dco, i64 noundef %.0176.i.i294, ptr noundef %i.dcs)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.i.i293 unwind label %bb.mu, !noalias !774, !llvm.loop !493

bb.mu:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i324
  %i.dyq = landingpad { ptr, i32 }
          catch ptr null
  %i.dyr = extractvalue { ptr, i32 } %i.dyq, 0
  tail call void @__clang_call_terminate(ptr %i.dyr) #34, !noalias !774
  unreachable

bb.mv:                                            ; preds = %bb.lj
  %i.dys = landingpad { ptr, i32 }
          catch ptr null
  %i.dyt = extractvalue { ptr, i32 } %i.dys, 0
  tail call void @__clang_call_terminate(ptr %i.dyt) #34, !noalias !774
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit298.i.i: ; preds = %bb.lj, %bb.li
  %.pn222.pn.pn.pn.i.i320 = phi { ptr, i32 } [ %i.dfg, %bb.li ], [ %i.dfh, %bb.lj ]
  %i.dyu = load ptr, ptr %i.dco, align 8, !tbaa !62, !noalias !774
  %i.dyv = getelementptr inbounds nuw i8, ptr %i.dyu, i64 40
  %i.dyw = load ptr, ptr %i.dyv, align 8, !noalias !774
  invoke void %i.dyw(ptr noundef nonnull align 8 dereferenceable(25) %i.dco, i64 noundef %.0176.i.i294, ptr noundef %i.dcs)
          to label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit314.i.i unwind label %bb.mw, !noalias !774

bb.mw:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit298.i.i
  %i.dyx = landingpad { ptr, i32 }
          catch ptr null
  %i.dyy = extractvalue { ptr, i32 } %i.dyx, 0
  tail call void @__clang_call_terminate(ptr %i.dyy) #34, !noalias !774
  unreachable

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i311: ; preds = %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i310, %.preheader.i.i295
  tail call void @_ZdaPv(ptr noundef nonnull %i.dac) #31, !noalias !774
  %.not.i.i.i.i.i312 = icmp eq ptr %.sroa.025.0.i.i, null
  br i1 %.not.i.i.i.i.i312, label %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit", label %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit.sink.split"

.lr.ph.i300.i.i:                                  ; preds = %.preheader.i.i295, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i310
  %.0113.i.i = phi i64 [ %i.ebt, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i310 ], [ 0, %.preheader.i.i295 ] ; 2 uses
  %i.dyz = mul i64 %.0113.i.i, %i.m               ; 2 uses
  %i.dza = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.dyz ; 8 uses
  %i.dzb = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.dyz ; 7 uses
  %i.dzc = getelementptr inbounds i8, ptr %i.dza, i64 -4 ; 4 uses
  %i.dzd = getelementptr inbounds i8, ptr %i.dzb, i64 -8 ; 5 uses
  br label %bb.mx

bb.mx:                                            ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i307, %.lr.ph.i300.i.i
  %.041.i.i.i298 = phi i64 [ 0, %.lr.ph.i300.i.i ], [ %spec.select.i.i.i308, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i307 ] ; 3 uses
  %.03740.i.i.i299 = phi i64 [ 0, %.lr.ph.i300.i.i ], [ %i.eba, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i307 ] ; 2 uses
  %i.dze = load i32, ptr %i.dza, align 4, !tbaa !77, !alias.scope !771, !noalias !777
  %i.dzf = load i64, ptr %i.dzb, align 8, !tbaa !91, !alias.scope !772, !noalias !776 ; 2 uses
  %i.dzg = sub nuw i64 %i.m, %.03740.i.i.i299     ; 5 uses
  %i.dzh = getelementptr inbounds nuw [4 x i8], ptr %i.dzc, i64 %i.dzg ; 3 uses
  %i.dzi = load i32, ptr %i.dzh, align 4, !tbaa !77, !alias.scope !771, !noalias !777 ; 5 uses
  %i.dzj = getelementptr inbounds nuw [8 x i8], ptr %i.dzd, i64 %i.dzg ; 2 uses
  %i.dzk = load i64, ptr %i.dzj, align 8, !tbaa !91, !alias.scope !772, !noalias !776 ; 3 uses
  %i.dzl = icmp ult i64 %i.dzg, 2
  br i1 %i.dzl, label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i307, label %.lr.ph.i.i301.i.i

.lr.ph.i.i301.i.i:                                ; preds = %bb.mx, %bb.na
  %i.dzm = phi i64 [ %i.eap, %bb.na ], [ 3, %bb.mx ]
  %i.dzn = phi i64 [ %i.eao, %bb.na ], [ 2, %bb.mx ] ; 7 uses
  %.062.i.i.i.i300 = phi i64 [ %.1.i.i304.i.i, %bb.na ], [ 1, %bb.mx ] ; 6 uses
  %i.dzo = icmp eq i64 %i.dzn, %i.dzg
  br i1 %i.dzo, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i310.i.i, label %bb.my

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i310.i.i: ; preds = %.lr.ph.i.i301.i.i
  %.pre.i.i311.i.i = load i32, ptr %i.dzh, align 4, !tbaa !77, !alias.scope !771, !noalias !777
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i309.i.i

bb.my:                                            ; preds = %.lr.ph.i.i301.i.i
  %i.dzp = getelementptr inbounds nuw [4 x i8], ptr %i.dzc, i64 %i.dzn
  %i.dzq = load i32, ptr %i.dzp, align 4, !tbaa !77, !alias.scope !771, !noalias !777 ; 4 uses
  %i.dzr = getelementptr [4 x i8], ptr %i.dza, i64 %i.dzn
  %i.dzs = load i32, ptr %i.dzr, align 4, !tbaa !77, !alias.scope !771, !noalias !777 ; 5 uses
  %i.dzt = getelementptr [8 x i8], ptr %i.dzb, i64 %i.dzn
  %i.dzu = load i64, ptr %i.dzt, align 8, !tbaa !91, !alias.scope !772, !noalias !776 ; 3 uses
  %i.dzv = icmp sgt i32 %i.dzq, %i.dzs
  br i1 %i.dzv, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i309.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i302.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i302.i.i:     ; preds = %bb.my
  %i.dzw = getelementptr inbounds nuw [8 x i8], ptr %i.dzd, i64 %i.dzn
  %i.dzx = load i64, ptr %i.dzw, align 8, !tbaa !91, !alias.scope !772, !noalias !776
  %i.dzy = icmp eq i32 %i.dzq, %i.dzs
  %i.dzz = icmp sgt i64 %i.dzx, %i.dzu
  %i.eaa = and i1 %i.dzy, %i.dzz
  br i1 %i.eaa, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i309.i.i, label %bb.mz

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i309.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i302.i.i, %bb.my, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i310.i.i
  %i.eab = phi i32 [ %.pre.i.i311.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i310.i.i ], [ %i.dzq, %bb.my ], [ %i.dzq, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i302.i.i ] ; 3 uses
  %i.eac = icmp sgt i32 %i.dzi, %i.eab
  br i1 %i.eac, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i303, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i318

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i318:   ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i309.i.i
  %i.ead = getelementptr inbounds nuw [8 x i8], ptr %i.dzd, i64 %i.dzn
  %i.eae = load i64, ptr %i.ead, align 8, !tbaa !91, !alias.scope !772, !noalias !776 ; 2 uses
  %i.eaf = icmp eq i32 %i.dzi, %i.eab
  %i.eag = icmp sgt i64 %i.dzk, %i.eae
  %i.eah = and i1 %i.eaf, %i.eag
  br i1 %i.eah, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i303, label %bb.na

bb.mz:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i302.i.i
  %i.eai = icmp sgt i32 %i.dzi, %i.dzs
  br i1 %i.eai, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i303, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i301

_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i301:   ; preds = %bb.mz
  %i.eaj = icmp eq i32 %i.dzi, %i.dzs
  %i.eak = icmp sgt i64 %i.dzk, %i.dzu
  %i.eal = and i1 %i.eaj, %i.eak
  br i1 %i.eal, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i303, label %bb.na

bb.na:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i301, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i318
  %.sink79.i.i.i.i302 = phi i32 [ %i.eab, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i318 ], [ %i.dzs, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i301 ]
  %.sink.i.i303.i.i = phi i64 [ %i.eae, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i318 ], [ %i.dzu, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i301 ]
  %.1.i.i304.i.i = phi i64 [ %i.dzn, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i318 ], [ %i.dzm, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i301 ] ; 3 uses
  %i.eam = getelementptr inbounds nuw [4 x i8], ptr %i.dzc, i64 %.062.i.i.i.i300
  store i32 %.sink79.i.i.i.i302, ptr %i.eam, align 4, !tbaa !77, !alias.scope !771, !noalias !777
  %i.ean = getelementptr inbounds nuw [8 x i8], ptr %i.dzd, i64 %.062.i.i.i.i300
  store i64 %.sink.i.i303.i.i, ptr %i.ean, align 8, !tbaa !91, !alias.scope !772, !noalias !776
  %i.eao = shl i64 %.1.i.i304.i.i, 1              ; 3 uses
  %i.eap = or disjoint i64 %i.eao, 1
  %i.eaq = icmp ugt i64 %i.eao, %i.dzg
  br i1 %i.eaq, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i303, label %.lr.ph.i.i301.i.i, !llvm.loop !4

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i303: ; preds = %bb.na, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i301, %bb.mz, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i318, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i309.i.i
  %.0.lcssa.ph.i.i.i.i304 = phi i64 [ %.1.i.i304.i.i, %bb.na ], [ %.062.i.i.i.i300, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i318 ], [ %.062.i.i.i.i300, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i301 ], [ %.062.i.i.i.i300, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i309.i.i ], [ %.062.i.i.i.i300, %bb.mz ]
  %.pre68.i.i.i.i305 = load i32, ptr %i.dzh, align 4, !tbaa !77, !alias.scope !771, !noalias !777
  %.pre69.i.i.i.i306 = load i64, ptr %i.dzj, align 8, !tbaa !91, !alias.scope !772, !noalias !776
  br label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i307

_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i307: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i303, %bb.mx
  %i.ear = phi i64 [ %i.dzk, %bb.mx ], [ %.pre69.i.i.i.i306, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i303 ]
  %i.eas = phi i32 [ %i.dzi, %bb.mx ], [ %.pre68.i.i.i.i305, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i303 ]
  %.0.lcssa.i.i305.i.i = phi i64 [ 1, %bb.mx ], [ %.0.lcssa.ph.i.i.i.i304, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i303 ] ; 2 uses
  %i.eat = getelementptr inbounds nuw [4 x i8], ptr %i.dzc, i64 %.0.lcssa.i.i305.i.i
  store i32 %i.eas, ptr %i.eat, align 4, !tbaa !77, !alias.scope !771, !noalias !777
  %i.eau = getelementptr inbounds nuw [8 x i8], ptr %i.dzd, i64 %.0.lcssa.i.i305.i.i
  store i64 %i.ear, ptr %i.eau, align 8, !tbaa !91, !alias.scope !772, !noalias !776
  %i.eav = xor i64 %.041.i.i.i298, -1
  %i.eaw = add i64 %i.m, %i.eav                   ; 2 uses
  %i.eax = getelementptr inbounds nuw [4 x i8], ptr %i.dza, i64 %i.eaw
  store i32 %i.dze, ptr %i.eax, align 4, !tbaa !77, !alias.scope !771, !noalias !777
  %i.eay = getelementptr inbounds nuw [8 x i8], ptr %i.dzb, i64 %i.eaw
  store i64 %i.dzf, ptr %i.eay, align 8, !tbaa !91, !alias.scope !772, !noalias !776
  %.not.i306.i.i = icmp ne i64 %i.dzf, -1
  %i.eaz = zext i1 %.not.i306.i.i to i64          ; 2 uses
  %spec.select.i.i.i308 = add i64 %.041.i.i.i298, %i.eaz ; 9 uses
  %i.eba = add nuw i64 %.03740.i.i.i299, 1        ; 2 uses
  %exitcond.not.i307.i.i = icmp eq i64 %i.eba, %i.m
  br i1 %exitcond.not.i307.i.i, label %._crit_edge.i.loopexit.i.i309, label %bb.mx, !llvm.loop !5

._crit_edge.i.loopexit.i.i309:                    ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i307
  %i.ebb = getelementptr inbounds nuw [4 x i8], ptr %i.dza, i64 %i.m
  %i.ebc = sub i64 0, %spec.select.i.i.i308       ; 2 uses
  %i.ebd = getelementptr inbounds [4 x i8], ptr %i.ebb, i64 %i.ebc
  %i.ebe = shl i64 %spec.select.i.i.i308, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dza, ptr nonnull align 4 %i.ebd, i64 %i.ebe, i1 false), !alias.scope !771, !noalias !777
  %i.ebf = getelementptr inbounds nuw [8 x i8], ptr %i.dzb, i64 %i.m
  %i.ebg = getelementptr inbounds [8 x i8], ptr %i.ebf, i64 %i.ebc
  %i.ebh = shl i64 %spec.select.i.i.i308, 3       ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dzb, ptr nonnull align 8 %i.ebg, i64 %i.ebh, i1 false), !alias.scope !772, !noalias !776
  %i.ebi = icmp ult i64 %spec.select.i.i.i308, %i.m
  br i1 %i.ebi, label %.lr.ph44.i.preheader.i.i313, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i310

.lr.ph44.i.preheader.i.i313:                      ; preds = %._crit_edge.i.loopexit.i.i309
  %scevgep.i.i314 = getelementptr i8, ptr %i.dzb, i64 %i.ebh
  %i.ebj = sub nuw i64 %i.m, %spec.select.i.i.i308
  %i.ebk = shl nuw i64 %i.ebj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i314, i8 -1, i64 %i.ebk, i1 false), !tbaa !91, !alias.scope !772, !noalias !776
  %27 = add i64 %.041.i.i.i298, %i.eaz
  %i.ebl = sub i64 %i.m, %27                      ; 3 uses
  %min.iters.check2423 = icmp ult i64 %i.ebl, 8
  br i1 %min.iters.check2423, label %.lr.ph44.i.i.i315.preheader, label %vector.ph2424

vector.ph2424:                                    ; preds = %.lr.ph44.i.preheader.i.i313
  %n.vec2425 = and i64 %i.ebl, -8                 ; 3 uses
  %i.ebm = add i64 %spec.select.i.i.i308, %n.vec2425
  %i.ebn = getelementptr inbounds nuw [4 x i8], ptr %i.dza, i64 %spec.select.i.i.i308
  br label %vector.body2426

vector.body2426:                                  ; preds = %vector.body2426, %vector.ph2424
  %index2427 = phi i64 [ 0, %vector.ph2424 ], [ %index.next2428, %vector.body2426 ] ; 2 uses
  %i.ebo = getelementptr inbounds nuw [4 x i8], ptr %i.ebn, i64 %index2427 ; 2 uses
  %i.ebp = getelementptr inbounds nuw i8, ptr %i.ebo, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.ebo, align 4, !tbaa !77, !alias.scope !771, !noalias !777
  store <4 x i32> splat (i32 2147483647), ptr %i.ebp, align 4, !tbaa !77, !alias.scope !771, !noalias !777
  %index.next2428 = add nuw i64 %index2427, 8     ; 2 uses
  %i.ebq = icmp eq i64 %index.next2428, %n.vec2425
  br i1 %i.ebq, label %middle.block2429, label %vector.body2426, !llvm.loop !494

middle.block2429:                                 ; preds = %vector.body2426
  %cmp.n2430 = icmp eq i64 %i.ebl, %n.vec2425
  br i1 %cmp.n2430, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i310, label %.lr.ph44.i.i.i315.preheader

.lr.ph44.i.i.i315.preheader:                      ; preds = %.lr.ph44.i.preheader.i.i313, %middle.block2429
  %.242.i.i.i316.ph = phi i64 [ %spec.select.i.i.i308, %.lr.ph44.i.preheader.i.i313 ], [ %i.ebm, %middle.block2429 ]
  br label %.lr.ph44.i.i.i315

.lr.ph44.i.i.i315:                                ; preds = %.lr.ph44.i.i.i315.preheader, %.lr.ph44.i.i.i315
  %.242.i.i.i316 = phi i64 [ %i.ebs, %.lr.ph44.i.i.i315 ], [ %.242.i.i.i316.ph, %.lr.ph44.i.i.i315.preheader ] ; 2 uses
  %i.ebr = getelementptr inbounds nuw [4 x i8], ptr %i.dza, i64 %.242.i.i.i316
  store i32 2147483647, ptr %i.ebr, align 4, !tbaa !77, !alias.scope !771, !noalias !777
  %i.ebs = add nuw i64 %.242.i.i.i316, 1          ; 2 uses
  %exitcond47.not.i.i.i317 = icmp eq i64 %i.ebs, %i.m
  br i1 %exitcond47.not.i.i.i317, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i310, label %.lr.ph44.i.i.i315, !llvm.loop !495

_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i310: ; preds = %.lr.ph44.i.i.i315, %middle.block2429, %._crit_edge.i.loopexit.i.i309
  %i.ebt = add nuw i64 %.0113.i.i, 1              ; 2 uses
  %exitcond151.not.i.i = icmp eq i64 %i.ebt, %i.g
  br i1 %exitcond151.not.i.i, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i311, label %.lr.ph.i300.i.i, !llvm.loop !496

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit314.i.i: ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit298.i.i, %bb.lh, %bb.ld
  %.pn222.pn.pn.pn.pn.pn.pn.i.i281 = phi { ptr, i32 } [ %i.dch, %bb.ld ], [ %.pn222.pn.pn.pn.i.i320, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit298.i.i ], [ %i.dff, %bb.lh ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.dac) #31, !noalias !774
  br label %bb.nb

bb.nb:                                            ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit314.i.i, %bb.lb
  %.pn222.pn.pn.pn.pn.pn.pn.pn.i.i277 = phi { ptr, i32 } [ %.pn222.pn.pn.pn.pn.pn.pn.i.i281, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit314.i.i ], [ %i.dam, %bb.lb ] ; 2 uses
  %.not.i.i.i315.i.i = icmp eq ptr %.sroa.025.0.i.i, null
  br i1 %.not.i.i.i315.i.i, label %common.resume, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.ebu = ptrtoint ptr %.sroa.12.0.i.i276 to i64
  %i.ebv = ptrtoint ptr %.sroa.025.0.i.i to i64
  %i.ebw = sub i64 %i.ebu, %i.ebv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.025.0.i.i, i64 noundef %i.ebw) #31, !noalias !774
  br label %common.resume

bb.nd:                                            ; preds = %bb.kx, %bb.ko
  unreachable

bb.ne:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.ebx = load i64, ptr %.in.i.i634, align 8, !tbaa !91, !noalias !819
  %i.eby = load i64, ptr %i.ae, align 8, !tbaa !59, !noalias !819
  %.sroa.speculated.i.i376 = tail call i64 @llvm.smin.i64(i64 %i.ebx, i64 %i.eby) ; 2 uses
  %i.ebz = load i64, ptr %.in211.i.i636, align 8, !tbaa !91, !noalias !819
  %i.eca = icmp eq i64 %i.ebz, 0
  br i1 %i.eca, label %bb.nn, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21, !noalias !819
  %i.ecb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.ecb, ptr %10, align 8, !tbaa !88, !noalias !819
  %i.ecc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.ecc, align 8, !tbaa !89, !noalias !819
  store i8 0, ptr %i.ecb, align 8, !tbaa !76, !noalias !819
  %i.ecd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21, !noalias !820 ; 2 uses
  %i.ece = icmp sgt i32 %i.ecd, 0
  br i1 %i.ece, label %bb.ng, label %bb.nj

bb.ng:                                            ; preds = %bb.nf
  %i.ecf = zext nneg i32 %i.ecd to i64            ; 2 uses
  %i.ecg = add nuw nsw i64 %i.ecf, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ecg)
          to label %bb.nh unwind label %bb.ni, !noalias !820

bb.nh:                                            ; preds = %bb.ng
  %i.ech = load ptr, ptr %10, align 8, !tbaa !87, !noalias !819
  %i.eci = load i64, ptr %i.ecc, align 8, !tbaa !89, !noalias !819
  %i.ecj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ech, i64 noundef %i.eci, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21, !noalias !820 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ecf)
          to label %bb.nj unwind label %bb.ni, !noalias !820

bb.ni:                                            ; preds = %bb.nk, %bb.nh, %bb.ng
  %i.eck = landingpad { ptr, i32 }
          cleanup
  br label %bb.nm

bb.nj:                                            ; preds = %bb.nh, %bb.nf
  %i.ecl = call ptr @__cxa_allocate_exception(i64 40) #21, !noalias !820 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ecl, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_130search_knn_hamming_per_invlistINS_21HammingComputer32_tplILNS_9SIMDLevelE0EEEEEvPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE, ptr noundef nonnull @.str.2, i32 noundef 294)
          to label %bb.nk unwind label %bb.nl, !noalias !820

bb.nk:                                            ; preds = %bb.nj
  invoke void @__cxa_throw(ptr nonnull %i.ecl, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #33
          to label %bb.pz unwind label %bb.ni, !noalias !820

bb.nl:                                            ; preds = %bb.nj
  %i.ecm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ecl) #21, !noalias !820
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %bb.ni
  %.pn.i.i378 = phi { ptr, i32 } [ %i.eck, %bb.ni ], [ %i.ecm, %bb.nl ]
  %i.ecn = load ptr, ptr %10, align 8, !tbaa !87, !noalias !819 ; 2 uses
  %i.eco = icmp eq ptr %i.ecn, %i.ecb
  br i1 %i.eco, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i380, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i379: ; preds = %bb.nm
  %i.ecp = load i64, ptr %i.ecb, align 8, !tbaa !76, !noalias !819
  %i.ecq = add i64 %i.ecp, 1
  call void @_ZdlPvm(ptr noundef %i.ecn, i64 noundef %i.ecq) #31, !noalias !820
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i380

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i380: ; preds = %bb.nm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i379
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21, !noalias !819
  br label %common.resume

bb.nn:                                            ; preds = %bb.ne
  %i.ecr = trunc nuw i8 %i.y to i1
  br i1 %i.ecr, label %bb.no, label %bb.nw

bb.no:                                            ; preds = %bb.nn
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21, !noalias !819
  %i.ecs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.ecs, ptr %11, align 8, !tbaa !88, !noalias !819
  %i.ect = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.ect, align 8, !tbaa !89, !noalias !819
  store i8 0, ptr %i.ecs, align 8, !tbaa !76, !noalias !819
  %i.ecu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21, !noalias !820 ; 2 uses
  %i.ecv = icmp sgt i32 %i.ecu, 0
  br i1 %i.ecv, label %bb.np, label %bb.ns

bb.np:                                            ; preds = %bb.no
  %i.ecw = zext nneg i32 %i.ecu to i64            ; 2 uses
  %i.ecx = add nuw nsw i64 %i.ecw, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.ecx)
          to label %bb.nq unwind label %bb.nr, !noalias !820

bb.nq:                                            ; preds = %bb.np
  %i.ecy = load ptr, ptr %11, align 8, !tbaa !87, !noalias !819
  %i.ecz = load i64, ptr %i.ect, align 8, !tbaa !89, !noalias !819
  %i.eda = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ecy, i64 noundef %i.ecz, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21, !noalias !820 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.ecw)
          to label %bb.ns unwind label %bb.nr, !noalias !820

bb.nr:                                            ; preds = %bb.nt, %bb.nq, %bb.np
  %i.edb = landingpad { ptr, i32 }
          cleanup
  br label %bb.nv

bb.ns:                                            ; preds = %bb.nq, %bb.no
  %i.edc = call ptr @__cxa_allocate_exception(i64 40) #21, !noalias !820 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.edc, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_130search_knn_hamming_per_invlistINS_21HammingComputer32_tplILNS_9SIMDLevelE0EEEEEvPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE, ptr noundef nonnull @.str.2, i32 noundef 295)
          to label %bb.nt unwind label %bb.nu, !noalias !820

bb.nt:                                            ; preds = %bb.ns
  invoke void @__cxa_throw(ptr nonnull %i.edc, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #33
          to label %bb.pz unwind label %bb.nr, !noalias !820

bb.nu:                                            ; preds = %bb.ns
  %i.edd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.edc) #21, !noalias !820
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %bb.nr
  %.pn232.i.i490 = phi { ptr, i32 } [ %i.edb, %bb.nr ], [ %i.edd, %bb.nu ]
  %i.ede = load ptr, ptr %11, align 8, !tbaa !87, !noalias !819 ; 2 uses
  %i.edf = icmp eq ptr %i.ede, %i.ecs
  br i1 %i.edf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i492, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235.i.i491

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235.i.i491: ; preds = %bb.nv
  %i.edg = load i64, ptr %i.ecs, align 8, !tbaa !76, !noalias !819
  %i.edh = add i64 %i.edg, 1
  call void @_ZdlPvm(ptr noundef %i.ede, i64 noundef %i.edh) #31, !noalias !820
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i492

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i492: ; preds = %bb.nv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235.i.i491
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21, !noalias !819
  br label %common.resume

bb.nw:                                            ; preds = %bb.nn
  %i.edi = add i64 %i.g, 1                        ; 4 uses
  %i.edj = icmp ugt i64 %i.edi, 1152921504606846975
  br i1 %i.edj, label %.noexc.i.i489, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i383

.noexc.i.i489:                                    ; preds = %bb.nw
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #33, !noalias !820
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i383: ; preds = %bb.nw
  %.not.i.i.i.i.i.i384 = icmp eq i64 %i.edi, 0
  br i1 %.not.i.i.i.i.i.i384, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.i.i388, label %.noexc238.i.i385

.noexc238.i.i385:                                 ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i383
  %i.edk = shl nuw nsw i64 %i.edi, 3
  %i.edl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.edk) #32, !noalias !820 ; 5 uses
  %i.edm = getelementptr inbounds nuw [8 x i8], ptr %i.edl, i64 %i.edi ; 2 uses
  store i64 0, ptr %i.edl, align 8, !tbaa !91, !noalias !820
  %i.edn = icmp eq i64 %i.g, 0
  br i1 %i.edn, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.i.i388, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i386

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i386: ; preds = %.noexc238.i.i385
  %i.edo = getelementptr i8, ptr %i.edl, i64 8
  %.idx.i.i.i.i.i.i.i.i.i387 = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.edo, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i387, i1 false), !tbaa !91, !noalias !820
end_hunk_3
begin_hunk_4_@"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_36search_knn_hamming_per_invlist_fixSLILS1_0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEE3$_0EEDciOT0_":bb.a
bb.pm:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i447
  %i.ezz = icmp slt i32 %i.ezj, %i.eyz
  br i1 %i.ezz, label %.loopexit.i.i452, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i448

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i448:     ; preds = %bb.pm
  %i.faa = icmp eq i32 %i.ezj, %i.eyz
  %i.fab = icmp sgt i64 %i.ezc, %i.ezl
  %i.fac = and i1 %i.faa, %i.fab
  br i1 %i.fac, label %.loopexit.i.i452, label %bb.pn

bb.pn:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i448, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i455
  %.sink71.i.i.i449 = phi i32 [ %i.ezs, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i455 ], [ %i.ezj, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i448 ]
  %.sink.i.i.i450 = phi i64 [ %i.ezv, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i455 ], [ %i.ezl, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i448 ]
  %.1.i.i.i451 = phi i64 [ %i.eze, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i455 ], [ %i.ezd, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i448 ] ; 3 uses
  %i.fad = getelementptr inbounds nuw [4 x i8], ptr %i.eyp, i64 %.056.i.i.i446
  store i32 %.sink71.i.i.i449, ptr %i.fad, align 4, !tbaa !77, !alias.scope !817, !noalias !823
  %i.fae = getelementptr inbounds nuw [8 x i8], ptr %i.eyq, i64 %.056.i.i.i446
  store i64 %.sink.i.i.i450, ptr %i.fae, align 8, !tbaa !91, !alias.scope !818, !noalias !822
  %i.faf = shl i64 %.1.i.i.i451, 1                ; 3 uses
  %i.fag = or disjoint i64 %i.faf, 1
  %i.fah = icmp ugt i64 %i.faf, %i.m
  br i1 %i.fah, label %.loopexit.i.i452, label %.lr.ph.i.i.i445, !llvm.loop !0

.loopexit.i.i452:                                 ; preds = %bb.pn, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i448, %bb.pm, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i455, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i454, %bb.pk
  %.0.lcssa.i.i.i453 = phi i64 [ 1, %bb.pk ], [ %.1.i.i.i451, %bb.pn ], [ %.056.i.i.i446, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i455 ], [ %.056.i.i.i446, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i448 ], [ %.056.i.i.i446, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i454 ], [ %.056.i.i.i446, %bb.pm ] ; 2 uses
  %i.fai = getelementptr inbounds nuw [4 x i8], ptr %i.eyp, i64 %.0.lcssa.i.i.i453
  store i32 %i.eyz, ptr %i.fai, align 4, !tbaa !77, !alias.scope !817, !noalias !823
  %i.faj = getelementptr inbounds nuw [8 x i8], ptr %i.eyq, i64 %.0.lcssa.i.i.i453
  store i64 %i.ezc, ptr %i.faj, align 8, !tbaa !91, !alias.scope !818, !noalias !822
  %i.fak = load i32, ptr %i.eyn, align 4, !tbaa !77, !alias.scope !817, !noalias !823
  br label %bb.po

bb.po:                                            ; preds = %.loopexit.i.i452, %bb.pj
  %.1.i.i444 = phi i32 [ %i.fak, %.loopexit.i.i452 ], [ %.016990.i.i, %bb.pj ]
  %i.fal = add nuw nsw i64 %.016891.i.i, 1        ; 2 uses
  %exitcond136.not.i.i = icmp eq i64 %i.fal, %i.egt
  br i1 %exitcond136.not.i.i, label %._crit_edge94.i.i, label %bb.pj, !llvm.loop !537

._crit_edge98.split.i.i:                          ; preds = %._crit_edge94.i.i, %.lr.ph97.i.i442, %.loopexit29.i.i
  %i.fam = load ptr, ptr %i.egk, align 8, !tbaa !62, !noalias !820
  %i.fan = getelementptr inbounds nuw i8, ptr %i.fam, i64 48
  %i.fao = load ptr, ptr %i.fan, align 8, !noalias !820
  invoke void %i.fao(ptr noundef nonnull align 8 dereferenceable(25) %i.egk, i64 noundef %.0176.i.i411, ptr noundef %i.ego)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i441 unwind label %bb.pp, !noalias !820

bb.pp:                                            ; preds = %._crit_edge98.split.i.i
  %i.fap = landingpad { ptr, i32 }
          catch ptr null
  %i.faq = extractvalue { ptr, i32 } %i.fap, 0
  tail call void @__clang_call_terminate(ptr %i.faq) #34, !noalias !820
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i441: ; preds = %._crit_edge98.split.i.i
  %i.far = load ptr, ptr %i.egf, align 8, !tbaa !62, !noalias !820
  %i.fas = getelementptr inbounds nuw i8, ptr %i.far, i64 40
  %i.fat = load ptr, ptr %i.fas, align 8, !noalias !820
  invoke void %i.fat(ptr noundef nonnull align 8 dereferenceable(25) %i.egf, i64 noundef %.0176.i.i411, ptr noundef %i.egj)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.i.i410 unwind label %bb.pq, !noalias !820, !llvm.loop !538

bb.pq:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i441
  %i.fau = landingpad { ptr, i32 }
          catch ptr null
  %i.fav = extractvalue { ptr, i32 } %i.fau, 0
  tail call void @__clang_call_terminate(ptr %i.fav) #34, !noalias !820
  unreachable

bb.pr:                                            ; preds = %bb.of
  %i.faw = landingpad { ptr, i32 }
          catch ptr null
  %i.fax = extractvalue { ptr, i32 } %i.faw, 0
  tail call void @__clang_call_terminate(ptr %i.fax) #34, !noalias !820
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit313.i.i: ; preds = %bb.of, %bb.oe
  %.pn222.pn.pn.pn.i.i437 = phi { ptr, i32 } [ %i.eix, %bb.oe ], [ %i.eiy, %bb.of ]
  %i.fay = load ptr, ptr %i.egf, align 8, !tbaa !62, !noalias !820
  %i.faz = getelementptr inbounds nuw i8, ptr %i.fay, i64 40
  %i.fba = load ptr, ptr %i.faz, align 8, !noalias !820
  invoke void %i.fba(ptr noundef nonnull align 8 dereferenceable(25) %i.egf, i64 noundef %.0176.i.i411, ptr noundef %i.egj)
          to label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit329.i.i unwind label %bb.ps, !noalias !820

bb.ps:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit313.i.i
  %i.fbb = landingpad { ptr, i32 }
          catch ptr null
  %i.fbc = extractvalue { ptr, i32 } %i.fbb, 0
  tail call void @__clang_call_terminate(ptr %i.fbc) #34, !noalias !820
  unreachable

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i428: ; preds = %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i427, %.preheader.i.i412
  tail call void @_ZdaPv(ptr noundef nonnull %i.edt) #31, !noalias !820
  %.not.i.i.i.i.i429 = icmp eq ptr %.sroa.016.0.i.i, null
  br i1 %.not.i.i.i.i.i429, label %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit", label %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit.sink.split"

.lr.ph.i315.i.i:                                  ; preds = %.preheader.i.i412, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i427
  %.099.i.i = phi i64 [ %i.fdx, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i427 ], [ 0, %.preheader.i.i412 ] ; 2 uses
  %i.fbd = mul i64 %.099.i.i, %i.m                ; 2 uses
  %i.fbe = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.fbd ; 8 uses
  %i.fbf = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.fbd ; 7 uses
  %i.fbg = getelementptr inbounds i8, ptr %i.fbe, i64 -4 ; 4 uses
  %i.fbh = getelementptr inbounds i8, ptr %i.fbf, i64 -8 ; 5 uses
  br label %bb.pt

bb.pt:                                            ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i424, %.lr.ph.i315.i.i
  %.041.i.i.i415 = phi i64 [ 0, %.lr.ph.i315.i.i ], [ %spec.select.i.i.i425, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i424 ] ; 3 uses
  %.03740.i.i.i416 = phi i64 [ 0, %.lr.ph.i315.i.i ], [ %i.fde, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i424 ] ; 2 uses
  %i.fbi = load i32, ptr %i.fbe, align 4, !tbaa !77, !alias.scope !817, !noalias !823
  %i.fbj = load i64, ptr %i.fbf, align 8, !tbaa !91, !alias.scope !818, !noalias !822 ; 2 uses
  %i.fbk = sub nuw i64 %i.m, %.03740.i.i.i416     ; 5 uses
  %i.fbl = getelementptr inbounds nuw [4 x i8], ptr %i.fbg, i64 %i.fbk ; 3 uses
  %i.fbm = load i32, ptr %i.fbl, align 4, !tbaa !77, !alias.scope !817, !noalias !823 ; 5 uses
  %i.fbn = getelementptr inbounds nuw [8 x i8], ptr %i.fbh, i64 %i.fbk ; 2 uses
  %i.fbo = load i64, ptr %i.fbn, align 8, !tbaa !91, !alias.scope !818, !noalias !822 ; 3 uses
  %i.fbp = icmp ult i64 %i.fbk, 2
  br i1 %i.fbp, label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i424, label %.lr.ph.i.i316.i.i

.lr.ph.i.i316.i.i:                                ; preds = %bb.pt, %bb.pw
  %i.fbq = phi i64 [ %i.fct, %bb.pw ], [ 3, %bb.pt ]
  %i.fbr = phi i64 [ %i.fcs, %bb.pw ], [ 2, %bb.pt ] ; 7 uses
  %.062.i.i.i.i417 = phi i64 [ %.1.i.i319.i.i, %bb.pw ], [ 1, %bb.pt ] ; 6 uses
  %i.fbs = icmp eq i64 %i.fbr, %i.fbk
  br i1 %i.fbs, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i325.i.i, label %bb.pu

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i325.i.i: ; preds = %.lr.ph.i.i316.i.i
  %.pre.i.i326.i.i = load i32, ptr %i.fbl, align 4, !tbaa !77, !alias.scope !817, !noalias !823
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i324.i.i

bb.pu:                                            ; preds = %.lr.ph.i.i316.i.i
  %i.fbt = getelementptr inbounds nuw [4 x i8], ptr %i.fbg, i64 %i.fbr
  %i.fbu = load i32, ptr %i.fbt, align 4, !tbaa !77, !alias.scope !817, !noalias !823 ; 4 uses
  %i.fbv = getelementptr [4 x i8], ptr %i.fbe, i64 %i.fbr
  %i.fbw = load i32, ptr %i.fbv, align 4, !tbaa !77, !alias.scope !817, !noalias !823 ; 5 uses
  %i.fbx = getelementptr [8 x i8], ptr %i.fbf, i64 %i.fbr
  %i.fby = load i64, ptr %i.fbx, align 8, !tbaa !91, !alias.scope !818, !noalias !822 ; 3 uses
  %i.fbz = icmp sgt i32 %i.fbu, %i.fbw
  br i1 %i.fbz, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i324.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i317.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i317.i.i:     ; preds = %bb.pu
  %i.fca = getelementptr inbounds nuw [8 x i8], ptr %i.fbh, i64 %i.fbr
  %i.fcb = load i64, ptr %i.fca, align 8, !tbaa !91, !alias.scope !818, !noalias !822
  %i.fcc = icmp eq i32 %i.fbu, %i.fbw
  %i.fcd = icmp sgt i64 %i.fcb, %i.fby
  %i.fce = and i1 %i.fcc, %i.fcd
  br i1 %i.fce, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i324.i.i, label %bb.pv

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i324.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i317.i.i, %bb.pu, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i325.i.i
  %i.fcf = phi i32 [ %.pre.i.i326.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i325.i.i ], [ %i.fbu, %bb.pu ], [ %i.fbu, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i317.i.i ] ; 3 uses
  %i.fcg = icmp sgt i32 %i.fbm, %i.fcf
  br i1 %i.fcg, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i420, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i435

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i435:   ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i324.i.i
  %i.fch = getelementptr inbounds nuw [8 x i8], ptr %i.fbh, i64 %i.fbr
  %i.fci = load i64, ptr %i.fch, align 8, !tbaa !91, !alias.scope !818, !noalias !822 ; 2 uses
  %i.fcj = icmp eq i32 %i.fbm, %i.fcf
  %i.fck = icmp sgt i64 %i.fbo, %i.fci
  %i.fcl = and i1 %i.fcj, %i.fck
  br i1 %i.fcl, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i420, label %bb.pw

bb.pv:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i317.i.i
  %i.fcm = icmp sgt i32 %i.fbm, %i.fbw
  br i1 %i.fcm, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i420, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i418

_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i418:   ; preds = %bb.pv
  %i.fcn = icmp eq i32 %i.fbm, %i.fbw
  %i.fco = icmp sgt i64 %i.fbo, %i.fby
  %i.fcp = and i1 %i.fcn, %i.fco
  br i1 %i.fcp, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i420, label %bb.pw

bb.pw:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i418, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i435
  %.sink79.i.i.i.i419 = phi i32 [ %i.fcf, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i435 ], [ %i.fbw, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i418 ]
  %.sink.i.i318.i.i = phi i64 [ %i.fci, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i435 ], [ %i.fby, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i418 ]
  %.1.i.i319.i.i = phi i64 [ %i.fbr, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i435 ], [ %i.fbq, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i418 ] ; 3 uses
  %i.fcq = getelementptr inbounds nuw [4 x i8], ptr %i.fbg, i64 %.062.i.i.i.i417
  store i32 %.sink79.i.i.i.i419, ptr %i.fcq, align 4, !tbaa !77, !alias.scope !817, !noalias !823
  %i.fcr = getelementptr inbounds nuw [8 x i8], ptr %i.fbh, i64 %.062.i.i.i.i417
  store i64 %.sink.i.i318.i.i, ptr %i.fcr, align 8, !tbaa !91, !alias.scope !818, !noalias !822
  %i.fcs = shl i64 %.1.i.i319.i.i, 1              ; 3 uses
  %i.fct = or disjoint i64 %i.fcs, 1
  %i.fcu = icmp ugt i64 %i.fcs, %i.fbk
  br i1 %i.fcu, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i420, label %.lr.ph.i.i316.i.i, !llvm.loop !4

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i420: ; preds = %bb.pw, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i418, %bb.pv, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i435, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i324.i.i
  %.0.lcssa.ph.i.i.i.i421 = phi i64 [ %.1.i.i319.i.i, %bb.pw ], [ %.062.i.i.i.i417, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i435 ], [ %.062.i.i.i.i417, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i418 ], [ %.062.i.i.i.i417, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i324.i.i ], [ %.062.i.i.i.i417, %bb.pv ]
  %.pre68.i.i.i.i422 = load i32, ptr %i.fbl, align 4, !tbaa !77, !alias.scope !817, !noalias !823
  %.pre69.i.i.i.i423 = load i64, ptr %i.fbn, align 8, !tbaa !91, !alias.scope !818, !noalias !822
  br label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i424

_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i424: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i420, %bb.pt
  %i.fcv = phi i64 [ %i.fbo, %bb.pt ], [ %.pre69.i.i.i.i423, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i420 ]
  %i.fcw = phi i32 [ %i.fbm, %bb.pt ], [ %.pre68.i.i.i.i422, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i420 ]
  %.0.lcssa.i.i320.i.i = phi i64 [ 1, %bb.pt ], [ %.0.lcssa.ph.i.i.i.i421, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i420 ] ; 2 uses
  %i.fcx = getelementptr inbounds nuw [4 x i8], ptr %i.fbg, i64 %.0.lcssa.i.i320.i.i
  store i32 %i.fcw, ptr %i.fcx, align 4, !tbaa !77, !alias.scope !817, !noalias !823
  %i.fcy = getelementptr inbounds nuw [8 x i8], ptr %i.fbh, i64 %.0.lcssa.i.i320.i.i
  store i64 %i.fcv, ptr %i.fcy, align 8, !tbaa !91, !alias.scope !818, !noalias !822
  %i.fcz = xor i64 %.041.i.i.i415, -1
  %i.fda = add i64 %i.m, %i.fcz                   ; 2 uses
  %i.fdb = getelementptr inbounds nuw [4 x i8], ptr %i.fbe, i64 %i.fda
  store i32 %i.fbi, ptr %i.fdb, align 4, !tbaa !77, !alias.scope !817, !noalias !823
  %i.fdc = getelementptr inbounds nuw [8 x i8], ptr %i.fbf, i64 %i.fda
  store i64 %i.fbj, ptr %i.fdc, align 8, !tbaa !91, !alias.scope !818, !noalias !822
  %.not.i321.i.i = icmp ne i64 %i.fbj, -1
  %i.fdd = zext i1 %.not.i321.i.i to i64          ; 2 uses
  %spec.select.i.i.i425 = add i64 %.041.i.i.i415, %i.fdd ; 9 uses
  %i.fde = add nuw i64 %.03740.i.i.i416, 1        ; 2 uses
  %exitcond.not.i322.i.i = icmp eq i64 %i.fde, %i.m
  br i1 %exitcond.not.i322.i.i, label %._crit_edge.i.loopexit.i.i426, label %bb.pt, !llvm.loop !5

._crit_edge.i.loopexit.i.i426:                    ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i424
  %i.fdf = getelementptr inbounds nuw [4 x i8], ptr %i.fbe, i64 %i.m
  %i.fdg = sub i64 0, %spec.select.i.i.i425       ; 2 uses
  %i.fdh = getelementptr inbounds [4 x i8], ptr %i.fdf, i64 %i.fdg
  %i.fdi = shl i64 %spec.select.i.i.i425, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fbe, ptr nonnull align 4 %i.fdh, i64 %i.fdi, i1 false), !alias.scope !817, !noalias !823
  %i.fdj = getelementptr inbounds nuw [8 x i8], ptr %i.fbf, i64 %i.m
  %i.fdk = getelementptr inbounds [8 x i8], ptr %i.fdj, i64 %i.fdg
  %i.fdl = shl i64 %spec.select.i.i.i425, 3       ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fbf, ptr nonnull align 8 %i.fdk, i64 %i.fdl, i1 false), !alias.scope !818, !noalias !822
  %i.fdm = icmp ult i64 %spec.select.i.i.i425, %i.m
  br i1 %i.fdm, label %.lr.ph44.i.preheader.i.i430, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i427

.lr.ph44.i.preheader.i.i430:                      ; preds = %._crit_edge.i.loopexit.i.i426
  %scevgep.i.i431 = getelementptr i8, ptr %i.fbf, i64 %i.fdl
  %i.fdn = sub nuw i64 %i.m, %spec.select.i.i.i425
  %i.fdo = shl nuw i64 %i.fdn, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i431, i8 -1, i64 %i.fdo, i1 false), !tbaa !91, !alias.scope !818, !noalias !822
  %28 = add i64 %.041.i.i.i415, %i.fdd
  %i.fdp = sub i64 %i.m, %28                      ; 3 uses
  %min.iters.check2391 = icmp ult i64 %i.fdp, 8
  br i1 %min.iters.check2391, label %.lr.ph44.i.i.i432.preheader, label %vector.ph2392

vector.ph2392:                                    ; preds = %.lr.ph44.i.preheader.i.i430
  %n.vec2393 = and i64 %i.fdp, -8                 ; 3 uses
  %i.fdq = add i64 %spec.select.i.i.i425, %n.vec2393
  %i.fdr = getelementptr inbounds nuw [4 x i8], ptr %i.fbe, i64 %spec.select.i.i.i425
  br label %vector.body2394

vector.body2394:                                  ; preds = %vector.body2394, %vector.ph2392
  %index2395 = phi i64 [ 0, %vector.ph2392 ], [ %index.next2396, %vector.body2394 ] ; 2 uses
  %i.fds = getelementptr inbounds nuw [4 x i8], ptr %i.fdr, i64 %index2395 ; 2 uses
  %i.fdt = getelementptr inbounds nuw i8, ptr %i.fds, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.fds, align 4, !tbaa !77, !alias.scope !817, !noalias !823
  store <4 x i32> splat (i32 2147483647), ptr %i.fdt, align 4, !tbaa !77, !alias.scope !817, !noalias !823
  %index.next2396 = add nuw i64 %index2395, 8     ; 2 uses
  %i.fdu = icmp eq i64 %index.next2396, %n.vec2393
  br i1 %i.fdu, label %middle.block2397, label %vector.body2394, !llvm.loop !539

middle.block2397:                                 ; preds = %vector.body2394
  %cmp.n2398 = icmp eq i64 %i.fdp, %n.vec2393
  br i1 %cmp.n2398, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i427, label %.lr.ph44.i.i.i432.preheader

.lr.ph44.i.i.i432.preheader:                      ; preds = %.lr.ph44.i.preheader.i.i430, %middle.block2397
  %.242.i.i.i433.ph = phi i64 [ %spec.select.i.i.i425, %.lr.ph44.i.preheader.i.i430 ], [ %i.fdq, %middle.block2397 ]
  br label %.lr.ph44.i.i.i432

.lr.ph44.i.i.i432:                                ; preds = %.lr.ph44.i.i.i432.preheader, %.lr.ph44.i.i.i432
  %.242.i.i.i433 = phi i64 [ %i.fdw, %.lr.ph44.i.i.i432 ], [ %.242.i.i.i433.ph, %.lr.ph44.i.i.i432.preheader ] ; 2 uses
  %i.fdv = getelementptr inbounds nuw [4 x i8], ptr %i.fbe, i64 %.242.i.i.i433
  store i32 2147483647, ptr %i.fdv, align 4, !tbaa !77, !alias.scope !817, !noalias !823
  %i.fdw = add nuw i64 %.242.i.i.i433, 1          ; 2 uses
  %exitcond47.not.i.i.i434 = icmp eq i64 %i.fdw, %i.m
  br i1 %exitcond47.not.i.i.i434, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i427, label %.lr.ph44.i.i.i432, !llvm.loop !540

_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i427: ; preds = %.lr.ph44.i.i.i432, %middle.block2397, %._crit_edge.i.loopexit.i.i426
  %i.fdx = add nuw i64 %.099.i.i, 1               ; 2 uses
  %exitcond137.not.i.i = icmp eq i64 %i.fdx, %i.g
  br i1 %exitcond137.not.i.i, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i428, label %.lr.ph.i315.i.i, !llvm.loop !541

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit329.i.i: ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit313.i.i, %bb.od, %bb.nz
  %.pn222.pn.pn.pn.pn.pn.pn.i.i394 = phi { ptr, i32 } [ %i.efy, %bb.nz ], [ %.pn222.pn.pn.pn.i.i437, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit313.i.i ], [ %i.eiw, %bb.od ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.edt) #31, !noalias !820
  br label %bb.px

bb.px:                                            ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit329.i.i, %bb.nx
  %.pn222.pn.pn.pn.pn.pn.pn.pn.i.i390 = phi { ptr, i32 } [ %.pn222.pn.pn.pn.pn.pn.pn.i.i394, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit329.i.i ], [ %i.eed, %bb.nx ] ; 2 uses
  %.not.i.i.i330.i.i = icmp eq ptr %.sroa.016.0.i.i, null
  br i1 %.not.i.i.i330.i.i, label %common.resume, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.fdy = ptrtoint ptr %.sroa.12.0.i.i389 to i64
  %i.fdz = ptrtoint ptr %.sroa.016.0.i.i to i64
  %i.fea = sub i64 %i.fdy, %i.fdz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.016.0.i.i, i64 noundef %i.fea) #31, !noalias !820
  br label %common.resume

bb.pz:                                            ; preds = %bb.nt, %bb.nk
  unreachable

bb.qa:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.feb = load i64, ptr %.in.i.i634, align 8, !tbaa !91, !noalias !865
  %i.fec = load i64, ptr %i.ae, align 8, !tbaa !59, !noalias !865
  %.sroa.speculated.i.i496 = tail call i64 @llvm.smin.i64(i64 %i.feb, i64 %i.fec) ; 2 uses
  %i.fed = load i64, ptr %.in211.i.i636, align 8, !tbaa !91, !noalias !865
  %i.fee = icmp eq i64 %i.fed, 0
  br i1 %i.fee, label %bb.qj, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !865
  %i.fef = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.fef, ptr %4, align 8, !tbaa !88, !noalias !865
  %i.feg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.feg, align 8, !tbaa !89, !noalias !865
  store i8 0, ptr %i.fef, align 8, !tbaa !76, !noalias !865
  %i.feh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21, !noalias !862 ; 2 uses
  %i.fei = icmp sgt i32 %i.feh, 0
  br i1 %i.fei, label %bb.qc, label %bb.qf

bb.qc:                                            ; preds = %bb.qb
  %i.fej = zext nneg i32 %i.feh to i64            ; 2 uses
  %i.fek = add nuw nsw i64 %i.fej, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.fek)
          to label %bb.qd unwind label %bb.qe, !noalias !862

bb.qd:                                            ; preds = %bb.qc
  %i.fel = load ptr, ptr %4, align 8, !tbaa !87, !noalias !865
  %i.fem = load i64, ptr %i.feg, align 8, !tbaa !89, !noalias !865
  %i.fen = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.fel, i64 noundef %i.fem, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21, !noalias !862 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.fej)
          to label %bb.qf unwind label %bb.qe, !noalias !862

bb.qe:                                            ; preds = %bb.qg, %bb.qd, %bb.qc
  %i.feo = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.qf:                                            ; preds = %bb.qd, %bb.qb
  %i.fep = call ptr @__cxa_allocate_exception(i64 40) #21, !noalias !862 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.fep, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_130search_knn_hamming_per_invlistINS_21HammingComputer64_tplILNS_9SIMDLevelE0EEEEEvPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE, ptr noundef nonnull @.str.2, i32 noundef 294)
          to label %bb.qg unwind label %bb.qh, !noalias !862

bb.qg:                                            ; preds = %bb.qf
  invoke void @__cxa_throw(ptr nonnull %i.fep, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #33
          to label %bb.sn unwind label %bb.qe, !noalias !862

bb.qh:                                            ; preds = %bb.qf
  %i.feq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fep) #21, !noalias !862
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qh, %bb.qe
  %.pn.i.i498 = phi { ptr, i32 } [ %i.feo, %bb.qe ], [ %i.feq, %bb.qh ]
  %i.fer = load ptr, ptr %4, align 8, !tbaa !87, !noalias !865 ; 2 uses
  %i.fes = icmp eq ptr %i.fer, %i.fef
  br i1 %i.fes, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i500, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i499

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i499: ; preds = %bb.qi
  %i.fet = load i64, ptr %i.fef, align 8, !tbaa !76, !noalias !865
  %i.feu = add i64 %i.fet, 1
  call void @_ZdlPvm(ptr noundef %i.fer, i64 noundef %i.feu) #31, !noalias !862
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i500

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i500: ; preds = %bb.qi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i499
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !865
  br label %common.resume

bb.qj:                                            ; preds = %bb.qa
  %i.fev = trunc nuw i8 %i.y to i1
  br i1 %i.fev, label %bb.qk, label %bb.qs

bb.qk:                                            ; preds = %bb.qj
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !865
  %i.few = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.few, ptr %5, align 8, !tbaa !88, !noalias !865
  %i.fex = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.fex, align 8, !tbaa !89, !noalias !865
  store i8 0, ptr %i.few, align 8, !tbaa !76, !noalias !865
  %i.fey = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21, !noalias !862 ; 2 uses
  %i.fez = icmp sgt i32 %i.fey, 0
  br i1 %i.fez, label %bb.ql, label %bb.qo

bb.ql:                                            ; preds = %bb.qk
  %i.ffa = zext nneg i32 %i.fey to i64            ; 2 uses
  %i.ffb = add nuw nsw i64 %i.ffa, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ffb)
          to label %bb.qm unwind label %bb.qn, !noalias !862

bb.qm:                                            ; preds = %bb.ql
  %i.ffc = load ptr, ptr %5, align 8, !tbaa !87, !noalias !865
  %i.ffd = load i64, ptr %i.fex, align 8, !tbaa !89, !noalias !865
  %i.ffe = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ffc, i64 noundef %i.ffd, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21, !noalias !862 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ffa)
          to label %bb.qo unwind label %bb.qn, !noalias !862

bb.qn:                                            ; preds = %bb.qp, %bb.qm, %bb.ql
  %i.fff = landingpad { ptr, i32 }
          cleanup
  br label %bb.qr

bb.qo:                                            ; preds = %bb.qm, %bb.qk
  %i.ffg = call ptr @__cxa_allocate_exception(i64 40) #21, !noalias !862 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ffg, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_130search_knn_hamming_per_invlistINS_21HammingComputer64_tplILNS_9SIMDLevelE0EEEEEvPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE, ptr noundef nonnull @.str.2, i32 noundef 295)
          to label %bb.qp unwind label %bb.qq, !noalias !862

bb.qp:                                            ; preds = %bb.qo
  invoke void @__cxa_throw(ptr nonnull %i.ffg, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #33
          to label %bb.sn unwind label %bb.qn, !noalias !862

bb.qq:                                            ; preds = %bb.qo
  %i.ffh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ffg) #21, !noalias !862
  br label %bb.qr

bb.qr:                                            ; preds = %bb.qq, %bb.qn
  %.pn232.i.i629 = phi { ptr, i32 } [ %i.fff, %bb.qn ], [ %i.ffh, %bb.qq ]
  %i.ffi = load ptr, ptr %5, align 8, !tbaa !87, !noalias !865 ; 2 uses
  %i.ffj = icmp eq ptr %i.ffi, %i.few
  br i1 %i.ffj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i631, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235.i.i630

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235.i.i630: ; preds = %bb.qr
  %i.ffk = load i64, ptr %i.few, align 8, !tbaa !76, !noalias !865
  %i.ffl = add i64 %i.ffk, 1
  call void @_ZdlPvm(ptr noundef %i.ffi, i64 noundef %i.ffl) #31, !noalias !862
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i631

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i631: ; preds = %bb.qr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235.i.i630
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !865
  br label %common.resume

bb.qs:                                            ; preds = %bb.qj
  %i.ffm = add i64 %i.g, 1                        ; 4 uses
  %i.ffn = icmp ugt i64 %i.ffm, 1152921504606846975
  br i1 %i.ffn, label %.noexc.i.i628, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i503

.noexc.i.i628:                                    ; preds = %bb.qs
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #33, !noalias !862
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i503: ; preds = %bb.qs
  %.not.i.i.i.i.i.i504 = icmp eq i64 %i.ffm, 0
  br i1 %.not.i.i.i.i.i.i504, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.i.i508, label %.noexc238.i.i505

.noexc238.i.i505:                                 ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i503
  %i.ffo = shl nuw nsw i64 %i.ffm, 3
  %i.ffp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ffo) #32, !noalias !862 ; 5 uses
  %i.ffq = getelementptr inbounds nuw [8 x i8], ptr %i.ffp, i64 %i.ffm ; 2 uses
  store i64 0, ptr %i.ffp, align 8, !tbaa !91, !noalias !862
  %i.ffr = icmp eq i64 %i.g, 0
  br i1 %i.ffr, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.i.i508, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i506

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i506: ; preds = %.noexc238.i.i505
  %i.ffs = getelementptr i8, ptr %i.ffp, i64 8
  %.idx.i.i.i.i.i.i.i.i.i507 = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ffs, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i507, i1 false), !tbaa !91, !noalias !862
end_hunk_4
begin_hunk_5_@"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_36search_knn_hamming_per_invlist_fixSLILS1_0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEE3$_0EEDciOT0_":bb.a
bb.sa:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i587
  %i.gcw = icmp slt i32 %i.gcg, %i.gbw
  br i1 %i.gcw, label %.loopexit.i.i592, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i588

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i588:     ; preds = %bb.sa
  %i.gcx = icmp eq i32 %i.gcg, %i.gbw
  %i.gcy = icmp sgt i64 %i.gbz, %i.gci
  %i.gcz = and i1 %i.gcx, %i.gcy
  br i1 %i.gcz, label %.loopexit.i.i592, label %bb.sb

bb.sb:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i588, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i595
  %.sink71.i.i.i589 = phi i32 [ %i.gcp, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i595 ], [ %i.gcg, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i588 ]
  %.sink.i.i.i590 = phi i64 [ %i.gcs, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i595 ], [ %i.gci, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i588 ]
  %.1.i.i.i591 = phi i64 [ %i.gcb, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i595 ], [ %i.gca, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i588 ] ; 3 uses
  %i.gda = getelementptr inbounds nuw [4 x i8], ptr %i.gbm, i64 %.056.i.i.i586
  store i32 %.sink71.i.i.i589, ptr %i.gda, align 4, !tbaa !77, !alias.scope !863, !noalias !868
  %i.gdb = getelementptr inbounds nuw [8 x i8], ptr %i.gbn, i64 %.056.i.i.i586
  store i64 %.sink.i.i.i590, ptr %i.gdb, align 8, !tbaa !91, !alias.scope !864, !noalias !867
  %i.gdc = shl i64 %.1.i.i.i591, 1                ; 3 uses
  %i.gdd = or disjoint i64 %i.gdc, 1
  %i.gde = icmp ugt i64 %i.gdc, %i.m
  br i1 %i.gde, label %.loopexit.i.i592, label %.lr.ph.i.i.i585, !llvm.loop !0

.loopexit.i.i592:                                 ; preds = %bb.sb, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i588, %bb.sa, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i595, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i594, %bb.ry
  %.0.lcssa.i.i.i593 = phi i64 [ 1, %bb.ry ], [ %.1.i.i.i591, %bb.sb ], [ %.056.i.i.i586, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i595 ], [ %.056.i.i.i586, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i588 ], [ %.056.i.i.i586, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i594 ], [ %.056.i.i.i586, %bb.sa ] ; 2 uses
  %i.gdf = getelementptr inbounds nuw [4 x i8], ptr %i.gbm, i64 %.0.lcssa.i.i.i593
  store i32 %i.gbw, ptr %i.gdf, align 4, !tbaa !77, !alias.scope !863, !noalias !868
  %i.gdg = getelementptr inbounds nuw [8 x i8], ptr %i.gbn, i64 %.0.lcssa.i.i.i593
  store i64 %i.gbz, ptr %i.gdg, align 8, !tbaa !91, !alias.scope !864, !noalias !867
  %i.gdh = load i32, ptr %i.gbk, align 4, !tbaa !77, !alias.scope !863, !noalias !868
  br label %bb.sc

bb.sc:                                            ; preds = %.loopexit.i.i592, %bb.rx
  %.1.i.i583 = phi i32 [ %i.gdh, %.loopexit.i.i592 ], [ %.016991.i.i, %bb.rx ]
  %i.gdi = add nuw nsw i64 %.016892.i.i, 1        ; 2 uses
  %exitcond137.not.i.i584 = icmp eq i64 %i.gdi, %i.fjv
  br i1 %exitcond137.not.i.i584, label %._crit_edge95.i.i, label %bb.rx, !llvm.loop !584

._crit_edge99.split.i.i:                          ; preds = %._crit_edge95.i.i, %.lr.ph98.i.i580, %.loopexit30.i.i
  %i.gdj = load ptr, ptr %i.fjm, align 8, !tbaa !62, !noalias !862
  %i.gdk = getelementptr inbounds nuw i8, ptr %i.gdj, i64 48
  %i.gdl = load ptr, ptr %i.gdk, align 8, !noalias !862
  invoke void %i.gdl(ptr noundef nonnull align 8 dereferenceable(25) %i.fjm, i64 noundef %.0176.i.i549, ptr noundef %i.fjq)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i579 unwind label %bb.sd, !noalias !862

bb.sd:                                            ; preds = %._crit_edge99.split.i.i
  %i.gdm = landingpad { ptr, i32 }
          catch ptr null
  %i.gdn = extractvalue { ptr, i32 } %i.gdm, 0
  tail call void @__clang_call_terminate(ptr %i.gdn) #34, !noalias !862
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i579: ; preds = %._crit_edge99.split.i.i
  %i.gdo = load ptr, ptr %i.fjh, align 8, !tbaa !62, !noalias !862
  %i.gdp = getelementptr inbounds nuw i8, ptr %i.gdo, i64 40
  %i.gdq = load ptr, ptr %i.gdp, align 8, !noalias !862
  invoke void %i.gdq(ptr noundef nonnull align 8 dereferenceable(25) %i.fjh, i64 noundef %.0176.i.i549, ptr noundef %i.fjl)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.i.i548 unwind label %bb.se, !noalias !862, !llvm.loop !585

bb.se:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i579
  %i.gdr = landingpad { ptr, i32 }
          catch ptr null
  %i.gds = extractvalue { ptr, i32 } %i.gdr, 0
  tail call void @__clang_call_terminate(ptr %i.gds) #34, !noalias !862
  unreachable

bb.sf:                                            ; preds = %bb.rb
  %i.gdt = landingpad { ptr, i32 }
          catch ptr null
  %i.gdu = extractvalue { ptr, i32 } %i.gdt, 0
  tail call void @__clang_call_terminate(ptr %i.gdu) #34, !noalias !862
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit361.i.i: ; preds = %bb.rb, %bb.ra
  %.pn222.pn.pn.pn.i.i575 = phi { ptr, i32 } [ %i.fmp, %bb.ra ], [ %i.fmq, %bb.rb ]
  %i.gdv = load ptr, ptr %i.fjh, align 8, !tbaa !62, !noalias !862
  %i.gdw = getelementptr inbounds nuw i8, ptr %i.gdv, i64 40
  %i.gdx = load ptr, ptr %i.gdw, align 8, !noalias !862
  invoke void %i.gdx(ptr noundef nonnull align 8 dereferenceable(25) %i.fjh, i64 noundef %.0176.i.i549, ptr noundef %i.fjl)
          to label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit377.i.i unwind label %bb.sg, !noalias !862

bb.sg:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit361.i.i
  %i.gdy = landingpad { ptr, i32 }
          catch ptr null
  %i.gdz = extractvalue { ptr, i32 } %i.gdy, 0
  tail call void @__clang_call_terminate(ptr %i.gdz) #34, !noalias !862
  unreachable

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i566: ; preds = %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i565, %.preheader.i.i550
  tail call void @_ZdaPv(ptr noundef nonnull %i.ffx) #31, !noalias !862
  %.not.i.i.i.i.i567 = icmp eq ptr %.sroa.016.0.i.i509, null
  br i1 %.not.i.i.i.i.i567, label %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit", label %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit.sink.split"

.lr.ph.i363.i.i:                                  ; preds = %.preheader.i.i550, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i565
  %.0100.i.i = phi i64 [ %i.ggu, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i565 ], [ 0, %.preheader.i.i550 ] ; 2 uses
  %i.gea = mul i64 %.0100.i.i, %i.m               ; 2 uses
  %i.geb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.gea ; 8 uses
  %i.gec = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.gea ; 7 uses
  %i.ged = getelementptr inbounds i8, ptr %i.geb, i64 -4 ; 4 uses
  %i.gee = getelementptr inbounds i8, ptr %i.gec, i64 -8 ; 5 uses
  br label %bb.sh

bb.sh:                                            ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i562, %.lr.ph.i363.i.i
  %.041.i.i.i553 = phi i64 [ 0, %.lr.ph.i363.i.i ], [ %spec.select.i.i.i563, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i562 ] ; 3 uses
  %.03740.i.i.i554 = phi i64 [ 0, %.lr.ph.i363.i.i ], [ %i.ggb, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i562 ] ; 2 uses
  %i.gef = load i32, ptr %i.geb, align 4, !tbaa !77, !alias.scope !863, !noalias !868
  %i.geg = load i64, ptr %i.gec, align 8, !tbaa !91, !alias.scope !864, !noalias !867 ; 2 uses
  %i.geh = sub nuw i64 %i.m, %.03740.i.i.i554     ; 5 uses
  %i.gei = getelementptr inbounds nuw [4 x i8], ptr %i.ged, i64 %i.geh ; 3 uses
  %i.gej = load i32, ptr %i.gei, align 4, !tbaa !77, !alias.scope !863, !noalias !868 ; 5 uses
  %i.gek = getelementptr inbounds nuw [8 x i8], ptr %i.gee, i64 %i.geh ; 2 uses
  %i.gel = load i64, ptr %i.gek, align 8, !tbaa !91, !alias.scope !864, !noalias !867 ; 3 uses
  %i.gem = icmp ult i64 %i.geh, 2
  br i1 %i.gem, label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i562, label %.lr.ph.i.i364.i.i

.lr.ph.i.i364.i.i:                                ; preds = %bb.sh, %bb.sk
  %i.gen = phi i64 [ %i.gfq, %bb.sk ], [ 3, %bb.sh ]
  %i.geo = phi i64 [ %i.gfp, %bb.sk ], [ 2, %bb.sh ] ; 7 uses
  %.062.i.i.i.i555 = phi i64 [ %.1.i.i367.i.i, %bb.sk ], [ 1, %bb.sh ] ; 6 uses
  %i.gep = icmp eq i64 %i.geo, %i.geh
  br i1 %i.gep, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i373.i.i, label %bb.si

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i373.i.i: ; preds = %.lr.ph.i.i364.i.i
  %.pre.i.i374.i.i = load i32, ptr %i.gei, align 4, !tbaa !77, !alias.scope !863, !noalias !868
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i372.i.i

bb.si:                                            ; preds = %.lr.ph.i.i364.i.i
  %i.geq = getelementptr inbounds nuw [4 x i8], ptr %i.ged, i64 %i.geo
  %i.ger = load i32, ptr %i.geq, align 4, !tbaa !77, !alias.scope !863, !noalias !868 ; 4 uses
  %i.ges = getelementptr [4 x i8], ptr %i.geb, i64 %i.geo
  %i.get = load i32, ptr %i.ges, align 4, !tbaa !77, !alias.scope !863, !noalias !868 ; 5 uses
  %i.geu = getelementptr [8 x i8], ptr %i.gec, i64 %i.geo
  %i.gev = load i64, ptr %i.geu, align 8, !tbaa !91, !alias.scope !864, !noalias !867 ; 3 uses
  %i.gew = icmp sgt i32 %i.ger, %i.get
  br i1 %i.gew, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i372.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i365.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i365.i.i:     ; preds = %bb.si
  %i.gex = getelementptr inbounds nuw [8 x i8], ptr %i.gee, i64 %i.geo
  %i.gey = load i64, ptr %i.gex, align 8, !tbaa !91, !alias.scope !864, !noalias !867
  %i.gez = icmp eq i32 %i.ger, %i.get
  %i.gfa = icmp sgt i64 %i.gey, %i.gev
  %i.gfb = and i1 %i.gez, %i.gfa
  br i1 %i.gfb, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i372.i.i, label %bb.sj

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i372.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i365.i.i, %bb.si, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i373.i.i
  %i.gfc = phi i32 [ %.pre.i.i374.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i373.i.i ], [ %i.ger, %bb.si ], [ %i.ger, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i365.i.i ] ; 3 uses
  %i.gfd = icmp sgt i32 %i.gej, %i.gfc
  br i1 %i.gfd, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i558, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i573

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i573:   ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i372.i.i
  %i.gfe = getelementptr inbounds nuw [8 x i8], ptr %i.gee, i64 %i.geo
  %i.gff = load i64, ptr %i.gfe, align 8, !tbaa !91, !alias.scope !864, !noalias !867 ; 2 uses
  %i.gfg = icmp eq i32 %i.gej, %i.gfc
  %i.gfh = icmp sgt i64 %i.gel, %i.gff
  %i.gfi = and i1 %i.gfg, %i.gfh
  br i1 %i.gfi, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i558, label %bb.sk

bb.sj:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i365.i.i
  %i.gfj = icmp sgt i32 %i.gej, %i.get
  br i1 %i.gfj, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i558, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i556

_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i556:   ; preds = %bb.sj
  %i.gfk = icmp eq i32 %i.gej, %i.get
  %i.gfl = icmp sgt i64 %i.gel, %i.gev
  %i.gfm = and i1 %i.gfk, %i.gfl
  br i1 %i.gfm, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i558, label %bb.sk

bb.sk:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i556, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i573
  %.sink79.i.i.i.i557 = phi i32 [ %i.gfc, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i573 ], [ %i.get, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i556 ]
  %.sink.i.i366.i.i = phi i64 [ %i.gff, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i573 ], [ %i.gev, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i556 ]
  %.1.i.i367.i.i = phi i64 [ %i.geo, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i573 ], [ %i.gen, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i556 ] ; 3 uses
  %i.gfn = getelementptr inbounds nuw [4 x i8], ptr %i.ged, i64 %.062.i.i.i.i555
  store i32 %.sink79.i.i.i.i557, ptr %i.gfn, align 4, !tbaa !77, !alias.scope !863, !noalias !868
  %i.gfo = getelementptr inbounds nuw [8 x i8], ptr %i.gee, i64 %.062.i.i.i.i555
  store i64 %.sink.i.i366.i.i, ptr %i.gfo, align 8, !tbaa !91, !alias.scope !864, !noalias !867
  %i.gfp = shl i64 %.1.i.i367.i.i, 1              ; 3 uses
  %i.gfq = or disjoint i64 %i.gfp, 1
  %i.gfr = icmp ugt i64 %i.gfp, %i.geh
  br i1 %i.gfr, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i558, label %.lr.ph.i.i364.i.i, !llvm.loop !4

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i558: ; preds = %bb.sk, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i556, %bb.sj, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i573, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i372.i.i
  %.0.lcssa.ph.i.i.i.i559 = phi i64 [ %.1.i.i367.i.i, %bb.sk ], [ %.062.i.i.i.i555, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i573 ], [ %.062.i.i.i.i555, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i556 ], [ %.062.i.i.i.i555, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i372.i.i ], [ %.062.i.i.i.i555, %bb.sj ]
  %.pre68.i.i.i.i560 = load i32, ptr %i.gei, align 4, !tbaa !77, !alias.scope !863, !noalias !868
  %.pre69.i.i.i.i561 = load i64, ptr %i.gek, align 8, !tbaa !91, !alias.scope !864, !noalias !867
  br label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i562

_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i562: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i558, %bb.sh
  %i.gfs = phi i64 [ %i.gel, %bb.sh ], [ %.pre69.i.i.i.i561, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i558 ]
  %i.gft = phi i32 [ %i.gej, %bb.sh ], [ %.pre68.i.i.i.i560, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i558 ]
  %.0.lcssa.i.i368.i.i = phi i64 [ 1, %bb.sh ], [ %.0.lcssa.ph.i.i.i.i559, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i558 ] ; 2 uses
  %i.gfu = getelementptr inbounds nuw [4 x i8], ptr %i.ged, i64 %.0.lcssa.i.i368.i.i
  store i32 %i.gft, ptr %i.gfu, align 4, !tbaa !77, !alias.scope !863, !noalias !868
  %i.gfv = getelementptr inbounds nuw [8 x i8], ptr %i.gee, i64 %.0.lcssa.i.i368.i.i
  store i64 %i.gfs, ptr %i.gfv, align 8, !tbaa !91, !alias.scope !864, !noalias !867
  %i.gfw = xor i64 %.041.i.i.i553, -1
  %i.gfx = add i64 %i.m, %i.gfw                   ; 2 uses
  %i.gfy = getelementptr inbounds nuw [4 x i8], ptr %i.geb, i64 %i.gfx
  store i32 %i.gef, ptr %i.gfy, align 4, !tbaa !77, !alias.scope !863, !noalias !868
  %i.gfz = getelementptr inbounds nuw [8 x i8], ptr %i.gec, i64 %i.gfx
  store i64 %i.geg, ptr %i.gfz, align 8, !tbaa !91, !alias.scope !864, !noalias !867
  %.not.i369.i.i = icmp ne i64 %i.geg, -1
  %i.gga = zext i1 %.not.i369.i.i to i64          ; 2 uses
  %spec.select.i.i.i563 = add i64 %.041.i.i.i553, %i.gga ; 9 uses
  %i.ggb = add nuw i64 %.03740.i.i.i554, 1        ; 2 uses
  %exitcond.not.i370.i.i = icmp eq i64 %i.ggb, %i.m
  br i1 %exitcond.not.i370.i.i, label %._crit_edge.i.loopexit.i.i564, label %bb.sh, !llvm.loop !5

._crit_edge.i.loopexit.i.i564:                    ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i562
  %i.ggc = getelementptr inbounds nuw [4 x i8], ptr %i.geb, i64 %i.m
  %i.ggd = sub i64 0, %spec.select.i.i.i563       ; 2 uses
  %i.gge = getelementptr inbounds [4 x i8], ptr %i.ggc, i64 %i.ggd
  %i.ggf = shl i64 %spec.select.i.i.i563, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.geb, ptr nonnull align 4 %i.gge, i64 %i.ggf, i1 false), !alias.scope !863, !noalias !868
  %i.ggg = getelementptr inbounds nuw [8 x i8], ptr %i.gec, i64 %i.m
  %i.ggh = getelementptr inbounds [8 x i8], ptr %i.ggg, i64 %i.ggd
  %i.ggi = shl i64 %spec.select.i.i.i563, 3       ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gec, ptr nonnull align 8 %i.ggh, i64 %i.ggi, i1 false), !alias.scope !864, !noalias !867
  %i.ggj = icmp ult i64 %spec.select.i.i.i563, %i.m
  br i1 %i.ggj, label %.lr.ph44.i.preheader.i.i568, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i565

.lr.ph44.i.preheader.i.i568:                      ; preds = %._crit_edge.i.loopexit.i.i564
  %scevgep.i.i569 = getelementptr i8, ptr %i.gec, i64 %i.ggi
  %i.ggk = sub nuw i64 %i.m, %spec.select.i.i.i563
  %i.ggl = shl nuw i64 %i.ggk, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i569, i8 -1, i64 %i.ggl, i1 false), !tbaa !91, !alias.scope !864, !noalias !867
  %29 = add i64 %.041.i.i.i553, %i.gga
  %i.ggm = sub i64 %i.m, %29                      ; 3 uses
  %min.iters.check2359 = icmp ult i64 %i.ggm, 8
  br i1 %min.iters.check2359, label %.lr.ph44.i.i.i570.preheader, label %vector.ph2360

vector.ph2360:                                    ; preds = %.lr.ph44.i.preheader.i.i568
  %n.vec2361 = and i64 %i.ggm, -8                 ; 3 uses
  %i.ggn = add i64 %spec.select.i.i.i563, %n.vec2361
  %i.ggo = getelementptr inbounds nuw [4 x i8], ptr %i.geb, i64 %spec.select.i.i.i563
  br label %vector.body2362

vector.body2362:                                  ; preds = %vector.body2362, %vector.ph2360
  %index2363 = phi i64 [ 0, %vector.ph2360 ], [ %index.next2364, %vector.body2362 ] ; 2 uses
  %i.ggp = getelementptr inbounds nuw [4 x i8], ptr %i.ggo, i64 %index2363 ; 2 uses
  %i.ggq = getelementptr inbounds nuw i8, ptr %i.ggp, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.ggp, align 4, !tbaa !77, !alias.scope !863, !noalias !868
  store <4 x i32> splat (i32 2147483647), ptr %i.ggq, align 4, !tbaa !77, !alias.scope !863, !noalias !868
  %index.next2364 = add nuw i64 %index2363, 8     ; 2 uses
  %i.ggr = icmp eq i64 %index.next2364, %n.vec2361
  br i1 %i.ggr, label %middle.block2365, label %vector.body2362, !llvm.loop !586

middle.block2365:                                 ; preds = %vector.body2362
  %cmp.n2366 = icmp eq i64 %i.ggm, %n.vec2361
  br i1 %cmp.n2366, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i565, label %.lr.ph44.i.i.i570.preheader

.lr.ph44.i.i.i570.preheader:                      ; preds = %.lr.ph44.i.preheader.i.i568, %middle.block2365
  %.242.i.i.i571.ph = phi i64 [ %spec.select.i.i.i563, %.lr.ph44.i.preheader.i.i568 ], [ %i.ggn, %middle.block2365 ]
  br label %.lr.ph44.i.i.i570

.lr.ph44.i.i.i570:                                ; preds = %.lr.ph44.i.i.i570.preheader, %.lr.ph44.i.i.i570
  %.242.i.i.i571 = phi i64 [ %i.ggt, %.lr.ph44.i.i.i570 ], [ %.242.i.i.i571.ph, %.lr.ph44.i.i.i570.preheader ] ; 2 uses
  %i.ggs = getelementptr inbounds nuw [4 x i8], ptr %i.geb, i64 %.242.i.i.i571
  store i32 2147483647, ptr %i.ggs, align 4, !tbaa !77, !alias.scope !863, !noalias !868
  %i.ggt = add nuw i64 %.242.i.i.i571, 1          ; 2 uses
  %exitcond47.not.i.i.i572 = icmp eq i64 %i.ggt, %i.m
  br i1 %exitcond47.not.i.i.i572, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i565, label %.lr.ph44.i.i.i570, !llvm.loop !587

_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i565: ; preds = %.lr.ph44.i.i.i570, %middle.block2365, %._crit_edge.i.loopexit.i.i564
  %i.ggu = add nuw i64 %.0100.i.i, 1              ; 2 uses
  %exitcond138.not.i.i = icmp eq i64 %i.ggu, %i.g
  br i1 %exitcond138.not.i.i, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i566, label %.lr.ph.i363.i.i, !llvm.loop !588

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit377.i.i: ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit361.i.i, %bb.qz, %bb.qv
  %.pn222.pn.pn.pn.pn.pn.pn.i.i516 = phi { ptr, i32 } [ %i.fja, %bb.qv ], [ %.pn222.pn.pn.pn.i.i575, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit361.i.i ], [ %i.fmo, %bb.qz ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.ffx) #31, !noalias !862
  br label %bb.sl

bb.sl:                                            ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit377.i.i, %bb.qt
  %.pn222.pn.pn.pn.pn.pn.pn.pn.i.i511 = phi { ptr, i32 } [ %.pn222.pn.pn.pn.pn.pn.pn.i.i516, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit377.i.i ], [ %i.fgh, %bb.qt ] ; 2 uses
  %.not.i.i.i378.i.i = icmp eq ptr %.sroa.016.0.i.i509, null
  br i1 %.not.i.i.i378.i.i, label %common.resume, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.ggv = ptrtoint ptr %.sroa.12.0.i.i510 to i64
  %i.ggw = ptrtoint ptr %.sroa.016.0.i.i509 to i64
  %i.ggx = sub i64 %i.ggv, %i.ggw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.016.0.i.i509, i64 noundef %i.ggx) #31, !noalias !862
  br label %common.resume

bb.sn:                                            ; preds = %bb.qp, %bb.qg
  unreachable

bb.so:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.ggy = load i64, ptr %.in.i.i634, align 8, !tbaa !91, !noalias !912
  %i.ggz = load i64, ptr %i.ae, align 8, !tbaa !59, !noalias !912
  %.sroa.speculated.i.i635 = tail call i64 @llvm.smin.i64(i64 %i.ggy, i64 %i.ggz) ; 2 uses
  %i.gha = load i64, ptr %.in211.i.i636, align 8, !tbaa !91, !noalias !912
  %i.ghb = icmp eq i64 %i.gha, 0
  br i1 %i.ghb, label %bb.sx, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !912
  %i.ghc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.ghc, ptr %2, align 8, !tbaa !88, !noalias !912
  %i.ghd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.ghd, align 8, !tbaa !89, !noalias !912
  store i8 0, ptr %i.ghc, align 8, !tbaa !76, !noalias !912
  %i.ghe = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21, !noalias !909 ; 2 uses
  %i.ghf = icmp sgt i32 %i.ghe, 0
  br i1 %i.ghf, label %bb.sq, label %bb.st

bb.sq:                                            ; preds = %bb.sp
  %i.ghg = zext nneg i32 %i.ghe to i64            ; 2 uses
  %i.ghh = add nuw nsw i64 %i.ghg, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ghh)
          to label %bb.sr unwind label %bb.ss, !noalias !909

bb.sr:                                            ; preds = %bb.sq
  %i.ghi = load ptr, ptr %2, align 8, !tbaa !87, !noalias !912
  %i.ghj = load i64, ptr %i.ghd, align 8, !tbaa !89, !noalias !912
  %i.ghk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ghi, i64 noundef %i.ghj, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21, !noalias !909 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ghg)
          to label %bb.st unwind label %bb.ss, !noalias !909

bb.ss:                                            ; preds = %bb.su, %bb.sr, %bb.sq
  %i.ghl = landingpad { ptr, i32 }
          cleanup
  br label %bb.sw

bb.st:                                            ; preds = %bb.sr, %bb.sp
  %i.ghm = call ptr @__cxa_allocate_exception(i64 40) #21, !noalias !909 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ghm, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_130search_knn_hamming_per_invlistINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEEEEvPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE, ptr noundef nonnull @.str.2, i32 noundef 294)
          to label %bb.su unwind label %bb.sv, !noalias !909

bb.su:                                            ; preds = %bb.st
  invoke void @__cxa_throw(ptr nonnull %i.ghm, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #33
          to label %bb.agv unwind label %bb.ss, !noalias !909

bb.sv:                                            ; preds = %bb.st
  %i.ghn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ghm) #21, !noalias !909
  br label %bb.sw

bb.sw:                                            ; preds = %bb.sv, %bb.ss
  %.pn.i.i637 = phi { ptr, i32 } [ %i.ghl, %bb.ss ], [ %i.ghn, %bb.sv ]
  %i.gho = load ptr, ptr %2, align 8, !tbaa !87, !noalias !912 ; 2 uses
  %i.ghp = icmp eq ptr %i.gho, %i.ghc
  br i1 %i.ghp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i639, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i638

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i638: ; preds = %bb.sw
  %i.ghq = load i64, ptr %i.ghc, align 8, !tbaa !76, !noalias !912
  %i.ghr = add i64 %i.ghq, 1
  call void @_ZdlPvm(ptr noundef %i.gho, i64 noundef %i.ghr) #31, !noalias !909
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i639

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i639: ; preds = %bb.sw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i638
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !912
  br label %common.resume

bb.sx:                                            ; preds = %bb.so
  %i.ghs = trunc nuw i8 %i.y to i1
  br i1 %i.ghs, label %bb.sy, label %bb.tg

bb.sy:                                            ; preds = %bb.sx
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !912
  %i.ght = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ght, ptr %3, align 8, !tbaa !88, !noalias !912
  %i.ghu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.ghu, align 8, !tbaa !89, !noalias !912
  store i8 0, ptr %i.ght, align 8, !tbaa !76, !noalias !912
  %i.ghv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21, !noalias !909 ; 2 uses
  %i.ghw = icmp sgt i32 %i.ghv, 0
  br i1 %i.ghw, label %bb.sz, label %bb.tc

bb.sz:                                            ; preds = %bb.sy
  %i.ghx = zext nneg i32 %i.ghv to i64            ; 2 uses
  %i.ghy = add nuw nsw i64 %i.ghx, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ghy)
          to label %bb.ta unwind label %bb.tb, !noalias !909

bb.ta:                                            ; preds = %bb.sz
  %i.ghz = load ptr, ptr %3, align 8, !tbaa !87, !noalias !912
  %i.gia = load i64, ptr %i.ghu, align 8, !tbaa !89, !noalias !912
  %i.gib = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ghz, i64 noundef %i.gia, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21, !noalias !909 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ghx)
          to label %bb.tc unwind label %bb.tb, !noalias !909

bb.tb:                                            ; preds = %bb.td, %bb.ta, %bb.sz
  %i.gic = landingpad { ptr, i32 }
          cleanup
  br label %bb.tf

bb.tc:                                            ; preds = %bb.ta, %bb.sy
  %i.gid = call ptr @__cxa_allocate_exception(i64 40) #21, !noalias !909 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.gid, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_130search_knn_hamming_per_invlistINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEEEEvPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE, ptr noundef nonnull @.str.2, i32 noundef 295)
          to label %bb.td unwind label %bb.te, !noalias !909

bb.td:                                            ; preds = %bb.tc
  invoke void @__cxa_throw(ptr nonnull %i.gid, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #33
          to label %bb.agv unwind label %bb.tb, !noalias !909

bb.te:                                            ; preds = %bb.tc
  %i.gie = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gid) #21, !noalias !909
  br label %bb.tf

bb.tf:                                            ; preds = %bb.te, %bb.tb
  %.pn235.i.i770 = phi { ptr, i32 } [ %i.gic, %bb.tb ], [ %i.gie, %bb.te ]
  %i.gif = load ptr, ptr %3, align 8, !tbaa !87, !noalias !912 ; 2 uses
  %i.gig = icmp eq ptr %i.gif, %i.ght
  br i1 %i.gig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.i.i772, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238.i.i771

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238.i.i771: ; preds = %bb.tf
  %i.gih = load i64, ptr %i.ght, align 8, !tbaa !76, !noalias !912
  %i.gii = add i64 %i.gih, 1
  call void @_ZdlPvm(ptr noundef %i.gif, i64 noundef %i.gii) #31, !noalias !909
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.i.i772

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.i.i772: ; preds = %bb.tf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238.i.i771
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !912
  br label %common.resume

bb.tg:                                            ; preds = %bb.sx
  %i.gij = add i64 %i.g, 1                        ; 4 uses
  %i.gik = icmp ugt i64 %i.gij, 1152921504606846975
  br i1 %i.gik, label %.noexc.i.i769, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i642

.noexc.i.i769:                                    ; preds = %bb.tg
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #33, !noalias !909
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i642: ; preds = %bb.tg
  %.not.i.i.i.i.i.i643 = icmp eq i64 %i.gij, 0
  br i1 %.not.i.i.i.i.i.i643, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.i.i647, label %.noexc241.i.i644

.noexc241.i.i644:                                 ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i642
  %i.gil = shl nuw nsw i64 %i.gij, 3
  %i.gim = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gil) #32, !noalias !909 ; 5 uses
  %i.gin = getelementptr inbounds nuw [8 x i8], ptr %i.gim, i64 %i.gij ; 2 uses
  store i64 0, ptr %i.gim, align 8, !tbaa !91, !noalias !909
  %i.gio = icmp eq i64 %i.g, 0
  br i1 %i.gio, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.i.i647, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i645

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i645: ; preds = %.noexc241.i.i644
  %i.gip = getelementptr i8, ptr %i.gim, i64 8
  %.idx.i.i.i.i.i.i.i.i.i646 = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gip, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i646, i1 false), !tbaa !91, !noalias !909
end_hunk_5
begin_hunk_6_@"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_36search_knn_hamming_per_invlist_fixSLILS1_0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEE3$_0EEDciOT0_":bb.a
bb.agi:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i696
  %i.jzv = icmp sgt i32 %.11.i943.i.i, %i.jzf
  br i1 %i.jzv, label %.loopexit.i.i701, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i697

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i697:     ; preds = %bb.agi
  %i.jzw = icmp eq i32 %.11.i943.i.i, %i.jzf
  %i.jzx = icmp sgt i64 %i.jyy, %i.jzh
  %i.jzy = and i1 %i.jzw, %i.jzx
  br i1 %i.jzy, label %.loopexit.i.i701, label %bb.agj

bb.agj:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i697, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i704
  %.sink71.i.i.i698 = phi i32 [ %i.jzo, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i704 ], [ %i.jzf, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i697 ]
  %.sink.i.i.i699 = phi i64 [ %i.jzr, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i704 ], [ %i.jzh, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i697 ]
  %.1.i.i.i700 = phi i64 [ %i.jza, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i704 ], [ %i.jyz, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i697 ] ; 3 uses
  %i.jzz = getelementptr inbounds nuw [4 x i8], ptr %i.juo, i64 %.056.i.i.i695
  store i32 %.sink71.i.i.i698, ptr %i.jzz, align 4, !tbaa !77, !alias.scope !910, !noalias !915
  %i.kaa = getelementptr inbounds nuw [8 x i8], ptr %i.jup, i64 %.056.i.i.i695
  store i64 %.sink.i.i.i699, ptr %i.kaa, align 8, !tbaa !91, !alias.scope !911, !noalias !914
  %i.kab = shl i64 %.1.i.i.i700, 1                ; 3 uses
  %i.kac = or disjoint i64 %i.kab, 1
  %i.kad = icmp ugt i64 %i.kab, %i.m
  br i1 %i.kad, label %.loopexit.i.i701, label %.lr.ph.i.i.i694, !llvm.loop !0

.loopexit.i.i701:                                 ; preds = %bb.agj, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i697, %bb.agi, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i704, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i703, %bb.agg
  %.0.lcssa.i.i.i702 = phi i64 [ 1, %bb.agg ], [ %.1.i.i.i700, %bb.agj ], [ %.056.i.i.i695, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i704 ], [ %.056.i.i.i695, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i697 ], [ %.056.i.i.i695, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i703 ], [ %.056.i.i.i695, %bb.agi ] ; 2 uses
  %i.kae = getelementptr inbounds nuw [4 x i8], ptr %i.juo, i64 %.0.lcssa.i.i.i702
  store i32 %.11.i943.i.i, ptr %i.kae, align 4, !tbaa !77, !alias.scope !910, !noalias !915
  %i.kaf = getelementptr inbounds nuw [8 x i8], ptr %i.jup, i64 %.0.lcssa.i.i.i702
  store i64 %i.jyy, ptr %i.kaf, align 8, !tbaa !91, !alias.scope !911, !noalias !914
  %i.kag = load i32, ptr %i.juk, align 4, !tbaa !77, !alias.scope !910, !noalias !915
  br label %bb.agk

bb.agk:                                           ; preds = %.loopexit.i.i701, %_ZNK5faiss26HammingComputerDefault_tplILNS_9SIMDLevelE0EE7hammingEPKh.exit.i.i
  %.1.i.i693 = phi i32 [ %i.kag, %.loopexit.i.i701 ], [ %.0169268.i.i, %_ZNK5faiss26HammingComputerDefault_tplILNS_9SIMDLevelE0EE7hammingEPKh.exit.i.i ]
  %i.kah = add nuw nsw i64 %.0168269.i.i, 1       ; 2 uses
  %exitcond411.not.i.i = icmp eq i64 %i.kah, %i.gld
  br i1 %exitcond411.not.i.i, label %._crit_edge272.i.i, label %bb.afp, !llvm.loop !627

._crit_edge276.split.i.i:                         ; preds = %._crit_edge272.i.i, %.lr.ph275.i.i, %.loopexit94.i.i
  %i.kai = load ptr, ptr %i.gku, align 8, !tbaa !62, !noalias !909
  %i.kaj = getelementptr inbounds nuw i8, ptr %i.kai, i64 48
  %i.kak = load ptr, ptr %i.kaj, align 8, !noalias !909
  invoke void %i.kak(ptr noundef nonnull align 8 dereferenceable(25) %i.gku, i64 noundef %.0176.i.i660, ptr noundef %i.gky)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i691 unwind label %bb.agl, !noalias !909

bb.agl:                                           ; preds = %._crit_edge276.split.i.i
  %i.kal = landingpad { ptr, i32 }
          catch ptr null
  %i.kam = extractvalue { ptr, i32 } %i.kal, 0
  tail call void @__clang_call_terminate(ptr %i.kam) #34, !noalias !909
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i691: ; preds = %._crit_edge276.split.i.i
  %i.kan = load ptr, ptr %i.gkp, align 8, !tbaa !62, !noalias !909
  %i.kao = getelementptr inbounds nuw i8, ptr %i.kan, i64 40
  %i.kap = load ptr, ptr %i.kao, align 8, !noalias !909
  invoke void %i.kap(ptr noundef nonnull align 8 dereferenceable(25) %i.gkp, i64 noundef %.0176.i.i660, ptr noundef %i.gkt)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.i.i659 unwind label %bb.agm, !noalias !909, !llvm.loop !628

bb.agm:                                           ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i691
  %i.kaq = landingpad { ptr, i32 }
          catch ptr null
  %i.kar = extractvalue { ptr, i32 } %i.kaq, 0
  tail call void @__clang_call_terminate(ptr %i.kar) #34, !noalias !909
  unreachable

bb.agn:                                           ; preds = %bb.tp
  %i.kas = landingpad { ptr, i32 }
          catch ptr null
  %i.kat = extractvalue { ptr, i32 } %i.kas, 0
  tail call void @__clang_call_terminate(ptr %i.kat) #34, !noalias !909
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit371.i.i: ; preds = %bb.tp, %bb.to
  %.pn225.pn.pn.pn.i.i687 = phi { ptr, i32 } [ %i.gnd, %bb.to ], [ %i.gne, %bb.tp ]
  %i.kau = load ptr, ptr %i.gkp, align 8, !tbaa !62, !noalias !909
  %i.kav = getelementptr inbounds nuw i8, ptr %i.kau, i64 40
  %i.kaw = load ptr, ptr %i.kav, align 8, !noalias !909
  invoke void %i.kaw(ptr noundef nonnull align 8 dereferenceable(25) %i.gkp, i64 noundef %.0176.i.i660, ptr noundef %i.gkt)
          to label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit386.i.i unwind label %bb.ago, !noalias !909

bb.ago:                                           ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit371.i.i
  %i.kax = landingpad { ptr, i32 }
          catch ptr null
  %i.kay = extractvalue { ptr, i32 } %i.kax, 0
  tail call void @__clang_call_terminate(ptr %i.kay) #34, !noalias !909
  unreachable

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i678: ; preds = %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i677, %.preheader.i.i661
  tail call void @_ZdaPv(ptr noundef nonnull %i.giu) #31, !noalias !909
  %.not.i.i.i.i.i679 = icmp eq ptr %.sroa.075.0.i.i, null
  br i1 %.not.i.i.i.i.i679, label %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit", label %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit.sink.split"

.lr.ph.i373.i.i:                                  ; preds = %.preheader.i.i661, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i677
  %.0277.i.i = phi i64 [ %i.kdt, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i677 ], [ 0, %.preheader.i.i661 ] ; 2 uses
  %i.kaz = mul i64 %.0277.i.i, %i.m               ; 2 uses
  %i.kba = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.kaz ; 8 uses
  %i.kbb = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.kaz ; 7 uses
  %i.kbc = getelementptr inbounds i8, ptr %i.kba, i64 -4 ; 4 uses
  %i.kbd = getelementptr inbounds i8, ptr %i.kbb, i64 -8 ; 5 uses
  br label %bb.agp

bb.agp:                                           ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i673, %.lr.ph.i373.i.i
  %.041.i.i.i664 = phi i64 [ 0, %.lr.ph.i373.i.i ], [ %spec.select.i.i.i674, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i673 ] ; 3 uses
  %.03740.i.i.i665 = phi i64 [ 0, %.lr.ph.i373.i.i ], [ %i.kda, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i673 ] ; 2 uses
  %i.kbe = load i32, ptr %i.kba, align 4, !tbaa !77, !alias.scope !910, !noalias !915
  %i.kbf = load i64, ptr %i.kbb, align 8, !tbaa !91, !alias.scope !911, !noalias !914 ; 2 uses
  %i.kbg = sub nuw i64 %i.m, %.03740.i.i.i665     ; 5 uses
  %i.kbh = getelementptr inbounds nuw [4 x i8], ptr %i.kbc, i64 %i.kbg ; 3 uses
  %i.kbi = load i32, ptr %i.kbh, align 4, !tbaa !77, !alias.scope !910, !noalias !915 ; 5 uses
  %i.kbj = getelementptr inbounds nuw [8 x i8], ptr %i.kbd, i64 %i.kbg ; 2 uses
  %i.kbk = load i64, ptr %i.kbj, align 8, !tbaa !91, !alias.scope !911, !noalias !914 ; 3 uses
  %i.kbl = icmp ult i64 %i.kbg, 2
  br i1 %i.kbl, label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i673, label %.lr.ph.i.i374.i.i

.lr.ph.i.i374.i.i:                                ; preds = %bb.agp, %bb.ags
  %i.kbm = phi i64 [ %i.kcp, %bb.ags ], [ 3, %bb.agp ]
  %i.kbn = phi i64 [ %i.kco, %bb.ags ], [ 2, %bb.agp ] ; 7 uses
  %.062.i.i.i.i666 = phi i64 [ %.1.i.i377.i.i, %bb.ags ], [ 1, %bb.agp ] ; 6 uses
  %i.kbo = icmp eq i64 %i.kbn, %i.kbg
  br i1 %i.kbo, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i382.i.i, label %bb.agq

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i382.i.i: ; preds = %.lr.ph.i.i374.i.i
  %.pre.i.i383.i.i = load i32, ptr %i.kbh, align 4, !tbaa !77, !alias.scope !910, !noalias !915
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i381.i.i

bb.agq:                                           ; preds = %.lr.ph.i.i374.i.i
  %i.kbp = getelementptr inbounds nuw [4 x i8], ptr %i.kbc, i64 %i.kbn
  %i.kbq = load i32, ptr %i.kbp, align 4, !tbaa !77, !alias.scope !910, !noalias !915 ; 4 uses
  %i.kbr = getelementptr [4 x i8], ptr %i.kba, i64 %i.kbn
  %i.kbs = load i32, ptr %i.kbr, align 4, !tbaa !77, !alias.scope !910, !noalias !915 ; 5 uses
  %i.kbt = getelementptr [8 x i8], ptr %i.kbb, i64 %i.kbn
  %i.kbu = load i64, ptr %i.kbt, align 8, !tbaa !91, !alias.scope !911, !noalias !914 ; 3 uses
  %i.kbv = icmp sgt i32 %i.kbq, %i.kbs
  br i1 %i.kbv, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i381.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i375.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i375.i.i:     ; preds = %bb.agq
  %i.kbw = getelementptr inbounds nuw [8 x i8], ptr %i.kbd, i64 %i.kbn
  %i.kbx = load i64, ptr %i.kbw, align 8, !tbaa !91, !alias.scope !911, !noalias !914
  %i.kby = icmp eq i32 %i.kbq, %i.kbs
  %i.kbz = icmp sgt i64 %i.kbx, %i.kbu
  %i.kca = and i1 %i.kby, %i.kbz
  br i1 %i.kca, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i381.i.i, label %bb.agr

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i381.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i375.i.i, %bb.agq, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i382.i.i
  %i.kcb = phi i32 [ %.pre.i.i383.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i382.i.i ], [ %i.kbq, %bb.agq ], [ %i.kbq, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i375.i.i ] ; 3 uses
  %i.kcc = icmp sgt i32 %i.kbi, %i.kcb
  br i1 %i.kcc, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i669, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i685

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i685:   ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i381.i.i
  %i.kcd = getelementptr inbounds nuw [8 x i8], ptr %i.kbd, i64 %i.kbn
  %i.kce = load i64, ptr %i.kcd, align 8, !tbaa !91, !alias.scope !911, !noalias !914 ; 2 uses
  %i.kcf = icmp eq i32 %i.kbi, %i.kcb
  %i.kcg = icmp sgt i64 %i.kbk, %i.kce
  %i.kch = and i1 %i.kcf, %i.kcg
  br i1 %i.kch, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i669, label %bb.ags

bb.agr:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i375.i.i
  %i.kci = icmp sgt i32 %i.kbi, %i.kbs
  br i1 %i.kci, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i669, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i667

_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i667:   ; preds = %bb.agr
  %i.kcj = icmp eq i32 %i.kbi, %i.kbs
  %i.kck = icmp sgt i64 %i.kbk, %i.kbu
  %i.kcl = and i1 %i.kcj, %i.kck
  br i1 %i.kcl, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i669, label %bb.ags

bb.ags:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i667, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i685
  %.sink79.i.i.i.i668 = phi i32 [ %i.kcb, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i685 ], [ %i.kbs, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i667 ]
  %.sink.i.i376.i.i = phi i64 [ %i.kce, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i685 ], [ %i.kbu, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i667 ]
  %.1.i.i377.i.i = phi i64 [ %i.kbn, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i685 ], [ %i.kbm, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i667 ] ; 3 uses
  %i.kcm = getelementptr inbounds nuw [4 x i8], ptr %i.kbc, i64 %.062.i.i.i.i666
  store i32 %.sink79.i.i.i.i668, ptr %i.kcm, align 4, !tbaa !77, !alias.scope !910, !noalias !915
  %i.kcn = getelementptr inbounds nuw [8 x i8], ptr %i.kbd, i64 %.062.i.i.i.i666
  store i64 %.sink.i.i376.i.i, ptr %i.kcn, align 8, !tbaa !91, !alias.scope !911, !noalias !914
  %i.kco = shl i64 %.1.i.i377.i.i, 1              ; 3 uses
  %i.kcp = or disjoint i64 %i.kco, 1
  %i.kcq = icmp ugt i64 %i.kco, %i.kbg
  br i1 %i.kcq, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i669, label %.lr.ph.i.i374.i.i, !llvm.loop !4

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i669: ; preds = %bb.ags, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i667, %bb.agr, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i685, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i381.i.i
  %.0.lcssa.ph.i.i.i.i670 = phi i64 [ %.1.i.i377.i.i, %bb.ags ], [ %.062.i.i.i.i666, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i.i.i685 ], [ %.062.i.i.i.i666, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i.i.i667 ], [ %.062.i.i.i.i666, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i381.i.i ], [ %.062.i.i.i.i666, %bb.agr ]
  %.pre68.i.i.i.i671 = load i32, ptr %i.kbh, align 4, !tbaa !77, !alias.scope !910, !noalias !915
  %.pre69.i.i.i.i672 = load i64, ptr %i.kbj, align 8, !tbaa !91, !alias.scope !911, !noalias !914
  br label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i673

_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i673: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i669, %bb.agp
  %i.kcr = phi i64 [ %i.kbk, %bb.agp ], [ %.pre69.i.i.i.i672, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i669 ]
  %i.kcs = phi i32 [ %i.kbi, %bb.agp ], [ %.pre68.i.i.i.i671, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i669 ]
  %.0.lcssa.i.i378.i.i = phi i64 [ 1, %bb.agp ], [ %.0.lcssa.ph.i.i.i.i670, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i.i.i669 ] ; 2 uses
  %i.kct = getelementptr inbounds nuw [4 x i8], ptr %i.kbc, i64 %.0.lcssa.i.i378.i.i
  store i32 %i.kcs, ptr %i.kct, align 4, !tbaa !77, !alias.scope !910, !noalias !915
  %i.kcu = getelementptr inbounds nuw [8 x i8], ptr %i.kbd, i64 %.0.lcssa.i.i378.i.i
  store i64 %i.kcr, ptr %i.kcu, align 8, !tbaa !91, !alias.scope !911, !noalias !914
  %i.kcv = xor i64 %.041.i.i.i664, -1
  %i.kcw = add i64 %i.m, %i.kcv                   ; 2 uses
  %i.kcx = getelementptr inbounds nuw [4 x i8], ptr %i.kba, i64 %i.kcw
  store i32 %i.kbe, ptr %i.kcx, align 4, !tbaa !77, !alias.scope !910, !noalias !915
  %i.kcy = getelementptr inbounds nuw [8 x i8], ptr %i.kbb, i64 %i.kcw
  store i64 %i.kbf, ptr %i.kcy, align 8, !tbaa !91, !alias.scope !911, !noalias !914
  %.not.i379.i.i = icmp ne i64 %i.kbf, -1
  %i.kcz = zext i1 %.not.i379.i.i to i64          ; 2 uses
  %spec.select.i.i.i674 = add i64 %.041.i.i.i664, %i.kcz ; 9 uses
  %i.kda = add nuw i64 %.03740.i.i.i665, 1        ; 2 uses
  %exitcond.not.i.i.i675 = icmp eq i64 %i.kda, %i.m
  br i1 %exitcond.not.i.i.i675, label %._crit_edge.i.loopexit.i.i676, label %bb.agp, !llvm.loop !5

._crit_edge.i.loopexit.i.i676:                    ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i673
  %i.kdb = getelementptr inbounds nuw [4 x i8], ptr %i.kba, i64 %i.m
  %i.kdc = sub i64 0, %spec.select.i.i.i674       ; 2 uses
  %i.kdd = getelementptr inbounds [4 x i8], ptr %i.kdb, i64 %i.kdc
  %i.kde = shl i64 %spec.select.i.i.i674, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kba, ptr nonnull align 4 %i.kdd, i64 %i.kde, i1 false), !alias.scope !910, !noalias !915
  %i.kdf = getelementptr inbounds nuw [8 x i8], ptr %i.kbb, i64 %i.m
  %i.kdg = getelementptr inbounds [8 x i8], ptr %i.kdf, i64 %i.kdc
  %i.kdh = shl i64 %spec.select.i.i.i674, 3       ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kbb, ptr nonnull align 8 %i.kdg, i64 %i.kdh, i1 false), !alias.scope !911, !noalias !914
  %i.kdi = icmp ult i64 %spec.select.i.i.i674, %i.m
  br i1 %i.kdi, label %.lr.ph44.i.preheader.i.i680, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i677

.lr.ph44.i.preheader.i.i680:                      ; preds = %._crit_edge.i.loopexit.i.i676
  %scevgep.i.i681 = getelementptr i8, ptr %i.kbb, i64 %i.kdh
  %i.kdj = sub nuw i64 %i.m, %spec.select.i.i.i674
  %i.kdk = shl nuw i64 %i.kdj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i681, i8 -1, i64 %i.kdk, i1 false), !tbaa !91, !alias.scope !911, !noalias !914
  %30 = add i64 %.041.i.i.i664, %i.kcz
  %i.kdl = sub i64 %i.m, %30                      ; 3 uses
  %min.iters.check2551 = icmp ult i64 %i.kdl, 8
  br i1 %min.iters.check2551, label %.lr.ph44.i.i.i682.preheader, label %vector.ph2552

vector.ph2552:                                    ; preds = %.lr.ph44.i.preheader.i.i680
  %n.vec2553 = and i64 %i.kdl, -8                 ; 3 uses
  %i.kdm = add i64 %spec.select.i.i.i674, %n.vec2553
  %i.kdn = getelementptr inbounds nuw [4 x i8], ptr %i.kba, i64 %spec.select.i.i.i674
  br label %vector.body2554

vector.body2554:                                  ; preds = %vector.body2554, %vector.ph2552
  %index2555 = phi i64 [ 0, %vector.ph2552 ], [ %index.next2556, %vector.body2554 ] ; 2 uses
  %i.kdo = getelementptr inbounds nuw [4 x i8], ptr %i.kdn, i64 %index2555 ; 2 uses
  %i.kdp = getelementptr inbounds nuw i8, ptr %i.kdo, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.kdo, align 4, !tbaa !77, !alias.scope !910, !noalias !915
  store <4 x i32> splat (i32 2147483647), ptr %i.kdp, align 4, !tbaa !77, !alias.scope !910, !noalias !915
  %index.next2556 = add nuw i64 %index2555, 8     ; 2 uses
  %i.kdq = icmp eq i64 %index.next2556, %n.vec2553
  br i1 %i.kdq, label %middle.block2557, label %vector.body2554, !llvm.loop !629

middle.block2557:                                 ; preds = %vector.body2554
  %cmp.n2558 = icmp eq i64 %i.kdl, %n.vec2553
  br i1 %cmp.n2558, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i677, label %.lr.ph44.i.i.i682.preheader

.lr.ph44.i.i.i682.preheader:                      ; preds = %.lr.ph44.i.preheader.i.i680, %middle.block2557
  %.242.i.i.i683.ph = phi i64 [ %spec.select.i.i.i674, %.lr.ph44.i.preheader.i.i680 ], [ %i.kdm, %middle.block2557 ]
  br label %.lr.ph44.i.i.i682

.lr.ph44.i.i.i682:                                ; preds = %.lr.ph44.i.i.i682.preheader, %.lr.ph44.i.i.i682
  %.242.i.i.i683 = phi i64 [ %i.kds, %.lr.ph44.i.i.i682 ], [ %.242.i.i.i683.ph, %.lr.ph44.i.i.i682.preheader ] ; 2 uses
  %i.kdr = getelementptr inbounds nuw [4 x i8], ptr %i.kba, i64 %.242.i.i.i683
  store i32 2147483647, ptr %i.kdr, align 4, !tbaa !77, !alias.scope !910, !noalias !915
  %i.kds = add nuw i64 %.242.i.i.i683, 1          ; 2 uses
  %exitcond47.not.i.i.i684 = icmp eq i64 %i.kds, %i.m
  br i1 %exitcond47.not.i.i.i684, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i677, label %.lr.ph44.i.i.i682, !llvm.loop !630

_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i.i677: ; preds = %.lr.ph44.i.i.i682, %middle.block2557, %._crit_edge.i.loopexit.i.i676
  %i.kdt = add nuw i64 %.0277.i.i, 1              ; 2 uses
  %exitcond412.not.i.i = icmp eq i64 %i.kdt, %i.g
  br i1 %exitcond412.not.i.i, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i678, label %.lr.ph.i373.i.i, !llvm.loop !631

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit386.i.i: ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit371.i.i, %bb.tn, %bb.tj
  %.pn225.pn.pn.pn.pn.pn.pn.i.i652 = phi { ptr, i32 } [ %i.gki, %bb.tj ], [ %.pn225.pn.pn.pn.i.i687, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit371.i.i ], [ %i.gnc, %bb.tn ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.giu) #31, !noalias !909
  br label %bb.agt

bb.agt:                                           ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit386.i.i, %bb.th
  %.pn225.pn.pn.pn.pn.pn.pn.pn.i.i648 = phi { ptr, i32 } [ %.pn225.pn.pn.pn.pn.pn.pn.i.i652, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit386.i.i ], [ %i.gje, %bb.th ] ; 2 uses
  %.not.i.i.i387.i.i = icmp eq ptr %.sroa.075.0.i.i, null
  br i1 %.not.i.i.i387.i.i, label %common.resume, label %bb.agu

bb.agu:                                           ; preds = %bb.agt
  %i.kdu = ptrtoint ptr %.sroa.1281.0.i.i to i64
  %i.kdv = ptrtoint ptr %.sroa.075.0.i.i to i64
  %i.kdw = sub i64 %i.kdu, %i.kdv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.075.0.i.i, i64 noundef %i.kdw) #31, !noalias !909
  br label %common.resume

bb.agv:                                           ; preds = %bb.td, %bb.su
  unreachable

"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit.sink.split": ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i678, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i566, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i428, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i311, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i183, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i46, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i
  %.sroa.1281.0.i.i.sink = phi ptr [ %.sroa.12.0.i.i510, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i566 ], [ %.sroa.12.0.i.i389, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i428 ], [ %.sroa.12.0.i.i276, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i311 ], [ %.sroa.12.0.i.i153, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i183 ], [ %.sroa.12.0.i.i, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i46 ], [ %.sroa.1262.0.i.i, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i ], [ %.sroa.1281.0.i.i, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i678 ]
  %.sroa.075.0.i.i.sink2106 = phi ptr [ %.sroa.016.0.i.i509, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i566 ], [ %.sroa.016.0.i.i, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i428 ], [ %.sroa.025.0.i.i, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i311 ], [ %.sroa.038.0.i.i, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i183 ], [ %.sroa.049.0.i.i, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i46 ], [ %.sroa.056.0.i.i, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i ], [ %.sroa.075.0.i.i, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i678 ] ; 2 uses
  %i.kdx = ptrtoint ptr %.sroa.1281.0.i.i.sink to i64
  %i.kdy = ptrtoint ptr %.sroa.075.0.i.i.sink2106 to i64
  %i.kdz = sub i64 %i.kdx, %i.kdy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.075.0.i.i.sink2106, i64 noundef %i.kdz) #31, !noalias !31
  br label %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit"

"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit": ; preds = %"_ZZN5faiss36search_knn_hamming_per_invlist_fixSLILNS_9SIMDLevelE0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEENK3$_0clINS_16HammingComputer4EEEDav.exit.sink.split", %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i678, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i566, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i428, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i311, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i183, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i46, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !89   ; 7 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.e = sub i64 9223372036854775807, %i.b
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #33
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !87     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !76
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %1, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef %i.d)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.m = phi ptr [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %.pre.i, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  store i8 0, ptr %i.n, align 1, !tbaa !76
  br label %.sink.split.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.d, i1 false)
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %1, %i.b
  br i1 %i.o, label %.sink.split.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.e
  store i64 %1, ptr %i.a, align 8, !tbaa !89
  %i.p = load ptr, ptr %0, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store i8 0, ptr %i.q, align 1, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit: ; preds = %bb.g, %.sink.split.i
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss14FaissExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss14FaissExceptionE, i64 16), ptr %0, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !76
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #21
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

declare void @_ZN5faiss26matrix_bucket_sort_inplaceEmmPiiPli(i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #34
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !89   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !76
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
end_hunk_6
