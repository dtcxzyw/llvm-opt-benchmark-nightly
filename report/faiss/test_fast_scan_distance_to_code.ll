Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_fast_scan_distance_to_code?download=true
inline.NumInlined: 1078
inline.NumDeleted: 582
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN12_GLOBAL__N_122test_search_and_encodeEPKcN5faiss10MetricTypeE:bb.a
  %.sink79.i.i.i297 = phi float [ %i.ach, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %i.aby, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ]
  %.sink.i.i.i298 = phi i64 [ %i.ack, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %i.aca, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ]
  %.1.i.i.i299 = phi i64 [ %i.abt, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %i.abs, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ] ; 3 uses
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %.062.i.i.i295
  store float %.sink79.i.i.i297, ptr %i.acs, align 4, !tbaa !108
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.uj, i64 %.062.i.i.i295
  store i64 %.sink.i.i.i298, ptr %i.act, align 8, !tbaa !32
  %i.acu = shl i64 %.1.i.i.i299, 1                ; 3 uses
  %i.acv = or disjoint i64 %i.acu, 1
  %i.acw = icmp ugt i64 %i.acu, %i.abm
  br i1 %i.acw, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %.lr.ph.i.i.i294, !llvm.loop !65

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i: ; preds = %bb.bu, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i, %bb.bt, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i312
  %.0.lcssa.ph.i.i.i300 = phi i64 [ %.1.i.i.i299, %bb.bu ], [ %.062.i.i.i295, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %.062.i.i.i295, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ], [ %.062.i.i.i295, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i312 ], [ %.062.i.i.i295, %bb.bt ]
  %.pre68.i.i.i301 = load float, ptr %i.abn, align 4, !tbaa !108
  %.pre69.i.i.i302 = load i64, ptr %i.abp, align 8, !tbaa !32
  br label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i

_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, %.preheader867
  %i.acx = phi i64 [ %i.abq, %.preheader867 ], [ %.pre69.i.i.i302, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %i.acy = phi float [ %i.abo, %.preheader867 ], [ %.pre68.i.i.i301, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %.0.lcssa.i.i.i303 = phi i64 [ 1, %.preheader867 ], [ %.0.lcssa.ph.i.i.i300, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ] ; 2 uses
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %.0.lcssa.i.i.i303
  store float %i.acy, ptr %i.acz, align 4, !tbaa !108
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.uj, i64 %.0.lcssa.i.i.i303
  store i64 %i.acx, ptr %i.ada, align 8, !tbaa !32
  %i.adb = sub i64 9, %.041.i.i292                ; 2 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.adb
  store float %i.abk, ptr %i.adc, align 4, !tbaa !108
  %i.add = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.adb
  store i64 %i.abl, ptr %i.add, align 8, !tbaa !32
  %.not.i.i304 = icmp ne i64 %i.abl, -1
  %i.ade = zext i1 %.not.i.i304 to i64            ; 3 uses
  %spec.select.i.i305 = add i64 %.041.i.i292, %i.ade ; 8 uses
  %i.adf = add nuw nsw i64 %.03740.i.i293, 1      ; 2 uses
  %exitcond.not.i.i306 = icmp eq i64 %i.adf, 10
  br i1 %exitcond.not.i.i306, label %._crit_edge.i.i307, label %.preheader867, !llvm.loop !66

._crit_edge.i.i307:                               ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.adh = sub i64 0, %spec.select.i.i305         ; 2 uses
  %i.adi = getelementptr inbounds [4 x i8], ptr %i.adg, i64 %i.adh
  %i.adj = shl i64 %spec.select.i.i305, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr nonnull align 4 %i.adi, i64 %i.adj, i1 false)
  %i.adk = getelementptr inbounds nuw i8, ptr %i.el, i64 80
  %i.adl = getelementptr inbounds [8 x i8], ptr %i.adk, i64 %i.adh
  %i.adm = shl i64 %spec.select.i.i305, 3         ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.el, ptr nonnull align 8 %i.adl, i64 %i.adm, i1 false)
  %i.adn = icmp ult i64 %spec.select.i.i305, 10
  br i1 %i.adn, label %.lr.ph44.i.i309.preheader, label %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit

.lr.ph44.i.i309.preheader:                        ; preds = %._crit_edge.i.i307
  %scevgep = getelementptr i8, ptr %i.el, i64 %i.adm
  %i.ado = add i64 %.041.i.i292, %i.ade
  %i.adp = shl i64 %i.ado, 3
  %i.adq = sub i64 80, %i.adp
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 -1, i64 %i.adq, i1 false), !tbaa !32
  %i.adr = add i64 %.041.i.i292, %i.ade
  %i.ads = sub i64 10, %i.adr                     ; 3 uses
  %min.iters.check872 = icmp ult i64 %i.ads, 8
  br i1 %min.iters.check872, label %.lr.ph44.i.i309.preheader884, label %vector.body875

vector.body875:                                   ; preds = %.lr.ph44.i.i309.preheader
  %n.vec874 = and i64 %i.ads, -8                  ; 2 uses
  %i.adt = add i64 %spec.select.i.i305, %n.vec874
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %spec.select.i.i305 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.adu, align 4, !tbaa !108
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.adv, align 4, !tbaa !108
  %cmp.n879 = icmp eq i64 %i.ads, %n.vec874
  br i1 %cmp.n879, label %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i309.preheader884

.lr.ph44.i.i309.preheader884:                     ; preds = %.lr.ph44.i.i309.preheader, %vector.body875
  %.242.i.i310.ph = phi i64 [ %spec.select.i.i305, %.lr.ph44.i.i309.preheader ], [ %i.adt, %vector.body875 ]
  br label %.lr.ph44.i.i309

.lr.ph44.i.i309:                                  ; preds = %.lr.ph44.i.i309.preheader884, %.lr.ph44.i.i309
  %.242.i.i310 = phi i64 [ %i.adx, %.lr.ph44.i.i309 ], [ %.242.i.i310.ph, %.lr.ph44.i.i309.preheader884 ] ; 2 uses
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.242.i.i310
  store float f0x7F7FFFFF, ptr %i.adw, align 4, !tbaa !108
  %i.adx = add nuw nsw i64 %.242.i.i310, 1        ; 2 uses
  %exitcond47.not.i.i311 = icmp eq i64 %i.adx, 10
  br i1 %exitcond47.not.i.i311, label %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i309, !llvm.loop !67

_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit:       ; preds = %.lr.ph44.i.i309, %.lr.ph44.i.i, %vector.body875, %vector.body, %._crit_edge.i.i307, %._crit_edge.i.i
  %i.ady = add nuw nsw i64 %.0145692, 1           ; 2 uses
  %exitcond709.not = icmp eq i64 %i.ady, 100
  br i1 %exitcond709.not, label %bb.av, label %bb.ba, !llvm.loop !68

bb.bv:                                            ; preds = %bb.av
  %i.adz = invoke noalias noundef nonnull dereferenceable(4000) ptr @_Znwm(i64 noundef 4000) #23
          to label %bb.bw unwind label %bb.cc     ; 4 uses

bb.bw:                                            ; preds = %bb.bv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4000) %i.adz, i8 0, i64 4000, i1 false)
  %i.aea = invoke noalias noundef nonnull dereferenceable(8000) ptr @_Znwm(i64 noundef 8000) #23
          to label %bb.bx unwind label %bb.cd     ; 5 uses

bb.bx:                                            ; preds = %bb.bw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8000) %i.aea, i8 0, i64 8000, i1 false)
  %i.aeb = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 72
  %i.aed = load ptr, ptr %i.aec, align 8
  invoke void %i.aed(ptr noundef nonnull align 8 dereferenceable(273) %i.e, i64 noundef 100, ptr noundef nonnull %i.o, i64 noundef 10, ptr noundef nonnull %i.adz, ptr noundef nonnull %i.aea, ptr noundef null)
          to label %bb.by unwind label %bb.ce

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !36
  %i.aee = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aeg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aej = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.cf

bb.bz:                                            ; preds = %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit333
  %i.ael = load i32, ptr %i.a, align 4, !tbaa !36
  %i.aem = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.ael, i32 noundef 1000) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 5, ptr %i.b, align 4, !tbaa !36
  %i.aen = load i32, ptr %i.a, align 4, !tbaa !36, !noalias !111
  %.not.i = icmp sgt i32 %i.aen, 5
  br i1 %.not.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.cq

bb.cb:                                            ; preds = %bb.bz
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.17)
          to label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.cq

bb.cc:                                            ; preds = %bb.bv
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.cd:                                            ; preds = %bb.bw
  %i.aep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit374

bb.ce:                                            ; preds = %bb.bx
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit372

bb.cf:                                            ; preds = %bb.by, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit333
  %indvars.iv710 = phi i64 [ 0, %bb.by ], [ %indvars.iv.next711, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit333 ] ; 2 uses
  %i.aer = mul nuw nsw i64 %indvars.iv710, 10     ; 2 uses
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aer ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEEC2IPKlEET_SG_mRKS6_RKS4_RKS0_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %i.aes, ptr noundef nonnull %i.aet, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit unwind label %bb.ck

_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit: ; preds = %bb.cf
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %i.aer ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEEC2IPKlEET_SG_mRKS6_RKS4_RKS0_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull %i.aeu, ptr noundef nonnull %i.aev, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit326 unwind label %bb.cl

_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit326: ; preds = %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aew = load ptr, ptr %i.aee, align 8, !tbaa !38 ; 3 uses
  %i.aex = icmp eq ptr %i.aew, null
  br i1 %i.aex, label %._crit_edge696, label %.lr.ph695

.lr.ph695:                                        ; preds = %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit326
  %i.aey = load i64, ptr %i.aef, align 8, !tbaa !39
  %.not.not.i.i = icmp eq i64 %i.aey, 0
  %i.aez = load i64, ptr %i.aeg, align 8          ; 2 uses
  %i.afa = load ptr, ptr %6, align 8
  br i1 %.not.not.i.i, label %.lr.ph695.split.us, label %.lr.ph695.split

.lr.ph695.split.us:                               ; preds = %.lr.ph695, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us
  %.0694.us = phi i32 [ %spec.select.us, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us ], [ 0, %.lr.ph695 ]
  %.sroa.0424.0693.us = phi ptr [ %i.afi, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us ], [ %i.aew, %.lr.ph695 ] ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %.sroa.0424.0693.us, i64 8
  %i.afc = load i64, ptr %i.afb, align 8, !tbaa !32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ch, %.lr.ph695.split.us
  %.sroa.06.0.in.i.i.us = phi ptr [ %i.aeh, %.lr.ph695.split.us ], [ %.sroa.06.0.i.i.us, %bb.ch ]
  %.sroa.06.0.i.i.us = load ptr, ptr %.sroa.06.0.in.i.i.us, align 8, !tbaa !40 ; 3 uses
  %i.afd = icmp eq ptr %.sroa.06.0.i.i.us, null   ; 2 uses
  br i1 %i.afd, label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.afe = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us, i64 8
  %i.aff = load i64, ptr %i.afe, align 8, !tbaa !32
  %i.afg = icmp eq i64 %i.afc, %i.aff
  br i1 %i.afg, label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us, label %bb.cg, !llvm.loop !71

_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us: ; preds = %bb.ch, %bb.cg
  %i.afh = zext i1 %i.afd to i32
  %spec.select.us = add nuw nsw i32 %.0694.us, %i.afh ; 2 uses
  %i.afi = load ptr, ptr %.sroa.0424.0693.us, align 8, !tbaa !40 ; 2 uses
  %i.afj = icmp eq ptr %i.afi, null
  br i1 %i.afj, label %._crit_edge696, label %.lr.ph695.split.us

._crit_edge696:                                   ; preds = %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit326
  %.0.lcssa = phi i32 [ 0, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit326 ], [ %spec.select.us, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us ], [ %spec.select, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit ]
  %i.afk = load i32, ptr %i.a, align 4, !tbaa !36
  %i.afl = add nsw i32 %i.afk, %.0.lcssa
  store i32 %i.afl, ptr %i.a, align 4, !tbaa !36
  %i.afm = load ptr, ptr %i.aeh, align 8, !tbaa !38 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.afm, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge696, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.afn, %.lr.ph.i.i.i.i ], [ %i.afm, %._crit_edge696 ] ; 2 uses
  %i.afn = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !40 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #21
  %.not.i.i.i.i327 = icmp eq ptr %i.afn, null
  br i1 %.not.i.i.i.i327, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge696
  %i.afo = load ptr, ptr %6, align 8, !tbaa !41
  %i.afp = load i64, ptr %i.aeg, align 8, !tbaa !42
  %i.afq = shl i64 %i.afp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.afo, i8 0, i64 %i.afq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aeh, i8 0, i64 16, i1 false)
  %i.afr = load ptr, ptr %6, align 8, !tbaa !41   ; 2 uses
  %i.afs = icmp eq ptr %i.afr, %i.aei
  br i1 %i.afs, label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.aft = load i64, ptr %i.aeg, align 8, !tbaa !42
  %i.afu = shl i64 %i.aft, 3
  call void @_ZdlPvm(ptr noundef %i.afr, i64 noundef %i.afu) #21
  br label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit

_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit: ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.afv = load ptr, ptr %i.aee, align 8, !tbaa !38 ; 2 uses
  %.not5.i.i.i.i328 = icmp eq ptr %i.afv, null
  br i1 %.not5.i.i.i.i328, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i332, label %.lr.ph.i.i.i.i329

.lr.ph.i.i.i.i329:                                ; preds = %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit, %.lr.ph.i.i.i.i329
  %.06.i.i.i.i330 = phi ptr [ %i.afw, %.lr.ph.i.i.i.i329 ], [ %i.afv, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit ] ; 2 uses
  %i.afw = load ptr, ptr %.06.i.i.i.i330, align 8, !tbaa !40 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i330, i64 noundef 16) #21
  %.not.i.i.i.i331 = icmp eq ptr %i.afw, null
  br i1 %.not.i.i.i.i331, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i332, label %.lr.ph.i.i.i.i329, !llvm.loop !0

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i332: ; preds = %.lr.ph.i.i.i.i329, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit
  %i.afx = load ptr, ptr %2, align 8, !tbaa !41
  %i.afy = load i64, ptr %i.aej, align 8, !tbaa !42
  %i.afz = shl i64 %i.afy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.afx, i8 0, i64 %i.afz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aee, i8 0, i64 16, i1 false)
  %i.aga = load ptr, ptr %2, align 8, !tbaa !41   ; 2 uses
  %i.agb = icmp eq ptr %i.aga, %i.aek
  br i1 %i.agb, label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit333, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i332
  %i.agc = load i64, ptr %i.aej, align 8, !tbaa !42
  %i.agd = shl i64 %i.agc, 3
  call void @_ZdlPvm(ptr noundef %i.aga, i64 noundef %i.agd) #21
  br label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit333

_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit333: ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i332, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %indvars.iv.next711 = add nuw nsw i64 %indvars.iv710, 1 ; 2 uses
  %exitcond713.not = icmp eq i64 %indvars.iv.next711, 100
  br i1 %exitcond713.not, label %bb.bz, label %bb.cf, !llvm.loop !72

bb.ck:                                            ; preds = %bb.cf
  %i.age = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.cp

bb.cl:                                            ; preds = %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit
  %i.agf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #20
  br label %bb.cp

.lr.ph695.split:                                  ; preds = %.lr.ph695, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit
  %.0694 = phi i32 [ %spec.select, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit ], [ 0, %.lr.ph695 ]
  %.sroa.0424.0693 = phi ptr [ %i.agw, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit ], [ %i.aew, %.lr.ph695 ] ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.sroa.0424.0693, i64 8
  %i.agh = load i64, ptr %i.agg, align 8, !tbaa !32 ; 3 uses
  %i.agi = urem i64 %i.agh, %i.aez                ; 2 uses
  %i.agj = getelementptr inbounds nuw [8 x i8], ptr %i.afa, i64 %i.agi
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i334 = icmp eq ptr %i.agk, null
  br i1 %.not.i.i.i.i334, label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph695.split
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !40 ; 3 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 8
  %i.agn = load i64, ptr %i.agm, align 8, !tbaa !32
  %i.ago = icmp eq i64 %i.agh, %i.agn
  br i1 %i.ago, label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit, label %.lr.ph.i.i.i.i335

bb.cn:                                            ; preds = %bb.co
  %i.agp = icmp eq i64 %i.agh, %i.ags
  br i1 %i.agp, label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit, label %.lr.ph.i.i.i.i335, !llvm.loop !73

.lr.ph.i.i.i.i335:                                ; preds = %bb.cm, %bb.cn
  %.020.i.i.i.i = phi ptr [ %i.agq, %bb.cn ], [ %i.agl, %bb.cm ]
  %i.agq = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !40 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.agq, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i.i.i335
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 8
  %i.ags = load i64, ptr %i.agr, align 8, !tbaa !32 ; 2 uses
  %i.agt = urem i64 %i.ags, %i.aez
  %.not19.i.i.i.i = icmp eq i64 %i.agt, %i.agi
  br i1 %.not19.i.i.i.i, label %bb.cn, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !73

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.co
  br label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit, !llvm.loop !73

_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit: ; preds = %.lr.ph.i.i.i.i335, %bb.cn, %..loopexit_crit_edge21.i.i.i.i, %bb.cm, %.lr.ph695.split
  %.sroa.06.1.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i ], [ null, %.lr.ph695.split ], [ %i.agl, %bb.cm ], [ %i.agq, %bb.cn ], [ null, %.lr.ph.i.i.i.i335 ]
  %i.agu = icmp eq ptr %.sroa.06.1.i.i, null
  %i.agv = zext i1 %i.agu to i32
  %spec.select = add nuw nsw i32 %.0694, %i.agv   ; 2 uses
  %i.agw = load ptr, ptr %.sroa.0424.0693, align 8, !tbaa !40 ; 2 uses
  %i.agx = icmp eq ptr %i.agw, null
  br i1 %i.agx, label %._crit_edge696, label %.lr.ph695.split

bb.cp:                                            ; preds = %bb.cl, %bb.ck
  %.pn193.pn = phi { ptr, i32 } [ %i.agf, %bb.cl ], [ %i.age, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.dk

_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.agy = load i8, ptr %10, align 8, !tbaa !119, !range !120, !noundef !121
  %i.agz = trunc nuw i8 %i.agy to i1
  br i1 %i.agz, label %bb.da, label %bb.cr

bb.cq:                                            ; preds = %bb.cb, %bb.ca
  %i.aha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.dj

bb.cr:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.cs unwind label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.ahb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !45 ; 2 uses
  %.not.i.i336 = icmp eq ptr %i.ahc, null
  br i1 %.not.i.i336, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ct, %bb.cs
  %i.ahe = phi ptr [ %i.ahd, %bb.ct ], [ @.str.28, %bb.cs ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 165, ptr noundef %i.ahe)
          to label %bb.cu unwind label %bb.cx

bb.cu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.cv unwind label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.ahf = load ptr, ptr %11, align 8, !tbaa !50  ; 3 uses
  %.not.i.i337 = icmp eq ptr %i.ahf, null
  br i1 %.not.i.i337, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.cv
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !12
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 8
  %i.ahi = load ptr, ptr %i.ahh, align 8
  call void %i.ahi(ptr noundef nonnull align 8 dereferenceable(128) %i.ahf) #20, !inline_history !74
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.cv, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.da

bb.cw:                                            ; preds = %bb.cr
  %i.ahj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit340

bb.cx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cu
  %i.ahl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #20
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.pn = phi { ptr, i32 } [ %i.ahl, %bb.cy ], [ %i.ahk, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.ahm = load ptr, ptr %11, align 8, !tbaa !50  ; 3 uses
  %.not.i.i338 = icmp eq ptr %i.ahm, null
  br i1 %.not.i.i338, label %_ZN7testing7MessageD2Ev.exit340, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i339

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i339: ; preds = %bb.cz
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !12
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  %i.ahp = load ptr, ptr %i.aho, align 8
  call void %i.ahp(ptr noundef nonnull align 8 dereferenceable(128) %i.ahm) #20, !inline_history !74
  br label %_ZN7testing7MessageD2Ev.exit340

_ZN7testing7MessageD2Ev.exit340:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i339, %bb.cz, %bb.cw
  %.pn.pn = phi { ptr, i32 } [ %i.ahj, %bb.cw ], [ %.pn, %bb.cz ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i339 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #20
  br label %bb.dj

bb.da:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ahq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !45 ; 4 uses
  %.not.i.i341 = icmp eq ptr %i.ahr, null
  br i1 %.not.i.i341, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !48 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahr, i64 16 ; 2 uses
  %i.ahu = icmp eq ptr %i.ahs, %i.aht
  br i1 %i.ahu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.db
  %i.ahv = load i64, ptr %i.aht, align 8, !tbaa !30
  %i.ahw = add i64 %i.ahv, 1
  call void @_ZdlPvm(ptr noundef %i.ahs, i64 noundef %i.ahw) #21
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ahr, i64 noundef 32) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.da, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.aea, i64 noundef 8000) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.adz, i64 noundef 4000) #21
  %.not.i.i.i343 = icmp eq ptr %.sroa.0440.0, null
  br i1 %.not.i.i.i343, label %_ZNSt6vectorIlSaIlEED2Ev.exit344, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ahx = ptrtoint ptr %.sroa.0440.0 to i64
  %i.ahy = sub i64 %.sroa.11.0, %i.ahx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0440.0, i64 noundef %i.ahy) #21
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit344

_ZNSt6vectorIlSaIlEED2Ev.exit344:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.dc
  %.not.i.i.i345 = icmp eq ptr %.sroa.0447.0627, null
  br i1 %.not.i.i.i345, label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit344
  %i.ahz = ptrtoint ptr %.sroa.11452.0637 to i64
  %i.aia = ptrtoint ptr %.sroa.0447.0627 to i64
  %i.aib = sub i64 %i.ahz, %i.aia
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0447.0627, i64 noundef %i.aib) #21
  br label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit344, %bb.dd
  %i.aic = load ptr, ptr %i.bc, align 8, !tbaa !12
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 64
  %i.aie = load ptr, ptr %i.aid, align 8
  call void %i.aie(ptr noundef nonnull align 8 dereferenceable(40) %i.bc) #20, !inline_history !75
  %.not4.i.i.i = icmp eq ptr %.sroa.0464.0, %.0.lcssa.i.i.i.i.i241
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i348

.lr.ph.i.i.i348:                                  ; preds = %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ail, %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i ], [ %.sroa.0464.0, %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.aif = load ptr, ptr %.05.i.i.i, align 8, !tbaa !106 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aif, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i, label %bb.de

bb.de:                                            ; preds = %.lr.ph.i.i.i348
  %i.aig = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !105
  %i.aii = ptrtoint ptr %i.aih to i64
  %i.aij = ptrtoint ptr %i.aif to i64
  %i.aik = sub i64 %i.aii, %i.aij
  call void @_ZdlPvm(ptr noundef nonnull %i.aif, i64 noundef %i.aik) #21
  br label %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i:  ; preds = %bb.de, %.lr.ph.i.i.i348
  %i.ail = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i349 = icmp eq ptr %i.ail, %.0.lcssa.i.i.i.i.i241
  br i1 %.not.i.i.i349, label %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i348, !llvm.loop !76

_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i, %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %.sroa.0464.0, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit, label %bb.df

bb.df:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i
  %i.aim = ptrtoint ptr %.sroa.0464.0 to i64
  %i.ain = sub i64 %.sink.i240, %i.aim
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0464.0, i64 noundef %i.ain) #21
  br label %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i, %bb.df
  %.not4.i.i.i350 = icmp eq ptr %.sroa.0472.0578615, %.0.lcssa.i.i.i.i.i606611
  br i1 %.not4.i.i.i350, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i351

.lr.ph.i.i.i351:                                  ; preds = %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.05.i.i.i352 = phi ptr [ %i.aiu, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i ], [ %.sroa.0472.0578615, %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.aio = load ptr, ptr %.05.i.i.i352, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i.i.i.i.i.i353 = icmp eq ptr %i.aio, null
  br i1 %.not.i.i.i.i.i.i.i.i353, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i.i351
  %i.aip = getelementptr inbounds nuw i8, ptr %.05.i.i.i352, i64 16
end_hunk_0
