Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/soi_simplex?download=true
inline.NumInlined: 1924
inline.NumDeleted: 789
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD21greedyConflictSubsetsEv:bb.a
  %.not.i.i.i.i.i291 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i.i.i291, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !82
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = ptrtoint ptr %i.ks to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.kx) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i:                ; preds = %bb.bc, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i
  %i.ky = load ptr, ptr %4, align 8, !tbaa !81    ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i1.i.i, label %_ZN4cvc58internal8DenseSetD2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !82
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = ptrtoint ptr %i.ky to i64
  %i.ld = sub i64 %i.lb, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.ld) #25
  br label %_ZN4cvc58internal8DenseSetD2Ev.exit

_ZN4cvc58internal8DenseSetD2Ev.exit:              ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.le = load ptr, ptr %i.az, align 8, !tbaa !83 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.le, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjiES0_IKS1_St6vectorIjSaIjEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4cvc58internal8DenseSetD2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IjiESt6vectorIjSaIjEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.lf, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IjiESt6vectorIjSaIjEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit.i.i.i.i ], [ %i.le, %_ZN4cvc58internal8DenseSetD2Ev.exit ] ; 4 uses
  %i.lf = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !84 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IjiESt6vectorIjSaIjEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !82
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.lh to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.lh, i64 noundef %i.lm) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IjiESt6vectorIjSaIjEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IjiESt6vectorIjSaIjEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit.i.i.i.i: ; preds = %bb.be, %.lr.ph.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #25
  %.not.i.i.i.i292 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i.i292, label %_ZNSt10_HashtableISt4pairIjiES0_IKS1_St6vectorIjSaIjEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt10_HashtableISt4pairIjiES0_IKS1_St6vectorIjSaIjEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IjiESt6vectorIjSaIjEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit.i.i.i.i, %_ZN4cvc58internal8DenseSetD2Ev.exit
  %i.ln = load ptr, ptr %3, align 8, !tbaa !70
  %i.lo = load i64, ptr %i.ay, align 8, !tbaa !71
  %i.lp = shl i64 %i.lo, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ln, i8 0, i64 %i.lp, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.lq = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.ax
  br i1 %i.lr, label %_ZNSt13unordered_mapISt4pairIjiESt6vectorIjSaIjEEN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncESt8equal_toIS1_ESaIS0_IKS1_S4_EEED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt10_HashtableISt4pairIjiES0_IKS1_St6vectorIjSaIjEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ls = load i64, ptr %i.ay, align 8, !tbaa !71
  %i.lt = shl i64 %i.ls, 3
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #25
  br label %_ZNSt13unordered_mapISt4pairIjiESt6vectorIjSaIjEEN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncESt8equal_toIS1_ESaIS0_IKS1_S4_EEED2Ev.exit

_ZNSt13unordered_mapISt4pairIjiESt6vectorIjSaIjEEN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncESt8equal_toIS1_ESaIS0_IKS1_S4_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt4pairIjiES0_IKS1_St6vectorIjSaIjEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bj

.loopexit.split-lp469:                            ; preds = %.loopexit.split-lp469.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIjSaIjEED2Ev.exit282
  %.pn55.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp578, %_ZNSt6vectorIjSaIjEED2Ev.exit282 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp469.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.lu = load ptr, ptr %6, align 8, !tbaa !81    ; 3 uses
  %.not.i.i.i293 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i293, label %_ZNSt6vectorIjSaIjEED2Ev.exit294, label %bb.bg

bb.bg:                                            ; preds = %.loopexit.split-lp469
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !82
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = ptrtoint ptr %i.lu to i64
  %i.lz = sub i64 %i.lx, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.lz) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit294

_ZNSt6vectorIjSaIjEED2Ev.exit294:                 ; preds = %.loopexit.split-lp469, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.loopexit.split-lp477.loopexit.split-lp

.loopexit.split-lp477.loopexit.split-lp:          ; preds = %.loopexit.split-lp477.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIjSaIjEED2Ev.exit294
  %.pn60.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit294 ], [ %lpad.loopexit.split-lp584, %.loopexit.split-lp477.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ma = load ptr, ptr %5, align 8, !tbaa !81    ; 3 uses
  %.not.i.i.i295 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i295, label %_ZNSt6vectorIjSaIjEED2Ev.exit296, label %bb.bh

bb.bh:                                            ; preds = %.loopexit.split-lp477.loopexit.split-lp
  %i.mb = load ptr, ptr %i.bj, align 8, !tbaa !82
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = ptrtoint ptr %i.ma to i64
  %i.me = sub i64 %i.mc, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.me) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit296

_ZNSt6vectorIjSaIjEED2Ev.exit296:                 ; preds = %.loopexit.split-lp477.loopexit.split-lp, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.bi

bb.bi:                                            ; preds = %bb.n, %_ZNSt6vectorIjSaIjEED2Ev.exit296
  %.pn71.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit296 ], [ %i.bv, %bb.n ]
  call void @_ZN4cvc58internal8DenseSetD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZNSt13unordered_mapISt4pairIjiESt6vectorIjSaIjEEN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncESt8equal_toIS1_ESaIS0_IKS1_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bk

bb.bj:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNSt13unordered_mapISt4pairIjiESt6vectorIjSaIjEEN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncESt8equal_toIS1_ESaIS0_IKS1_S4_EEED2Ev.exit
  ret void

bb.bk:                                            ; preds = %bb.bi, %_ZNSt6vectorIjSaIjEED2Ev.exit85
  %.pn77 = phi { ptr, i32 } [ %i.aq, %_ZNSt6vectorIjSaIjEED2Ev.exit85 ], [ %.pn71.pn.pn.pn, %bb.bi ]
  call void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %.pn77
}

declare ptr @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure9find_sgnsERKSt13unordered_mapISt4pairIjiESt6vectorIjSaIjEENS4_23ArithVarIntPairHashFuncESt8equal_toIS7_ESaIS6_IKS7_SA_EEEji(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !377    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !374  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #25
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !377
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !375
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD19generateSOIConflictERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(800) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.b = tail call noundef i32 @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure29constructInfeasiblityFunctionERNS0_9TimerStatERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  store i32 %i.b, ptr %i.c, align 8, !tbaa !67
  %i.d = load ptr, ptr %1, align 8, !tbaa !101    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 2 uses
  %.not86 = icmp eq ptr %i.d, %i.f
  br i1 %.not86, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e
  %2 = trunc nuw i8 %.1 to i1
  br i1 %2, label %bb.f, label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.088 = phi i8 [ 0, %.lr.ph ], [ %.1, %bb.e ]
  %.sroa.081.087 = phi ptr [ %i.d, %.lr.ph ], [ %i.aa, %bb.e ] ; 2 uses
  %i.i = load i32, ptr %.sroa.081.087, align 4, !tbaa !20
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !98, !nonnull !99, !align !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !353
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !549  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !371
  %i.s = icmp sgt i32 %i.r, 0
  %.v = select i1 %i.s, i64 264, i64 232
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.v
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !550
  tail call void @_ZN4cvc58internal6theory5arith6linear21FarkasConflictBuilder13addConstraintEPKNS3_10ConstraintERKNS0_8RationalE(ptr noundef nonnull align 8 dereferenceable(58) %i.u, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  %3 = trunc nuw i8 %.088 to i1
  br i1 %3, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !551
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load i64, ptr %i.x, align 8, !tbaa !552
  %.not85 = icmp eq i64 %i.y, -1
  br i1 %.not85, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !550
  tail call void @_ZN4cvc58internal6theory5arith6linear21FarkasConflictBuilder18makeLastConsequentEv(ptr noundef nonnull align 8 dereferenceable(58) %i.z)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.1 = phi i8 [ 1, %bb.b ], [ 0, %bb.c ], [ 1, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.081.087, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !547

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !550
  tail call void @_ZN4cvc58internal6theory5arith6linear21FarkasConflictBuilder5resetEv(ptr noundef nonnull align 8 dereferenceable(58) %i.ac)
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !105, !nonnull !99, !align !100 ; 2 uses
  %i.af = load i32, ptr %i.c, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 400
  %i.ah = zext i32 %i.af to i64
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !81
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !20
  %i.al = zext i32 %i.ak to i64
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.al ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !111 ; 2 uses
  %.sroa.071.089 = load i32, ptr %i.an, align 8, !tbaa !20 ; 2 uses
  %i.aq = icmp eq i32 %.sroa.071.089, -1
  br i1 %i.aq, label %._crit_edge93, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.pre = load ptr, ptr %i.ap, align 8, !tbaa !114
  br label %bb.g

._crit_edge93:                                    ; preds = %bb.i, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !550
  %i.av = tail call noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.aw = tail call noundef ptr @_ZN4cvc58internal6theory5arith6linear21FarkasConflictBuilder14commitConflictEPNS0_11NodeManagerE(ptr noundef nonnull align 8 dereferenceable(58) %i.au, ptr noundef %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZNK4cvc58internal6theory5arith6linear13RaiseConflict13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef %i.aw, i32 noundef 14)
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph92, %bb.i
  %i.ay = phi ptr [ %.pre, %.lr.ph92 ], [ %i.br, %bb.i ] ; 2 uses
  %.sroa.071.090 = phi i32 [ %.sroa.071.089, %.lr.ph92 ], [ %.sroa.071.0, %bb.i ]
  %i.az = zext i32 %.sroa.071.090 to i64          ; 2 uses
  %i.ba = getelementptr inbounds nuw [56 x i8], ptr %i.ay, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !117 ; 2 uses
  %i.bd = load i32, ptr %i.c, align 8, !tbaa !67
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !120
  %i.bi = icmp sgt i32 %i.bh, 0
  %i.bj = load ptr, ptr %i.ar, align 8, !tbaa !121, !nonnull !99, !align !100
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = zext i32 %i.bc to i64
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !124
  %i.bn = getelementptr inbounds nuw [120 x i8], ptr %i.bm, i64 %i.bl
  %. = select i1 %i.bi, i64 80, i64 72
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !553
  %i.bq = load ptr, ptr %i.as, align 8, !tbaa !550
  tail call void @_ZN4cvc58internal6theory5arith6linear21FarkasConflictBuilder13addConstraintEPKNS3_10ConstraintERKNS0_8RationalE(ptr noundef nonnull align 8 dereferenceable(58) %i.bq, ptr noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
  %.pre94 = load ptr, ptr %i.ap, align 8, !tbaa !114
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.br = phi ptr [ %i.ay, %bb.g ], [ %.pre94, %bb.h ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [56 x i8], ptr %i.br, i64 %i.az
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.071.0 = load i32, ptr %i.bt, align 8, !tbaa !20 ; 2 uses
  %i.bu = icmp eq i32 %.sroa.071.0, -1
  br i1 %i.bu, label %._crit_edge93, label %bb.g, !llvm.loop !548

bb.j:                                             ; preds = %._crit_edge93, %._crit_edge.thread
  %.0.lcssa99 = phi i1 [ true, %._crit_edge93 ], [ false, %._crit_edge.thread ]
  %i.bv = load i32, ptr %i.c, align 8, !tbaa !67
  tail call void @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure28tearDownInfeasiblityFunctionERNS0_9TimerStatEj(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.bv)
  %i.bw = load i32, ptr @_ZN4cvc58internal6theory5arith6linear17ARITHVAR_SENTINELE, align 4, !tbaa !20
  store i32 %i.bw, ptr %i.c, align 8, !tbaa !67
  ret i1 %.0.lcssa99
}

declare void @_ZN4cvc58internal6theory5arith6linear21FarkasConflictBuilder13addConstraintEPKNS3_10ConstraintERKNS0_8RationalE(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN4cvc58internal6theory5arith6linear21FarkasConflictBuilder18makeLastConsequentEv(ptr noundef nonnull align 8 dereferenceable(58)) local_unnamed_addr #2

declare void @_ZN4cvc58internal6theory5arith6linear21FarkasConflictBuilder5resetEv(ptr noundef nonnull align 8 dereferenceable(58)) local_unnamed_addr #2

declare noundef ptr @_ZN4cvc58internal6theory5arith6linear21FarkasConflictBuilder14commitConflictEPNS0_11NodeManagerE(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZNK4cvc58internal6theory5arith6linear13RaiseConflict13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD11SOIConflictEv(ptr noundef nonnull align 8 dereferenceable(800) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.std::vector.342", align 8   ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !67
  tail call void @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure28tearDownInfeasiblityFunctionERNS0_9TimerStatEj(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.d)
  %i.e = load i32, ptr @_ZN4cvc58internal6theory5arith6linear17ARITHVAR_SENTINELE, align 4, !tbaa !20
  store i32 %i.e, ptr %i.c, align 8, !tbaa !67
  %i.f = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !315, !nonnull !99, !align !100
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 259
  %i.j = load i8, ptr %i.i, align 1, !tbaa !555, !range !324, !noundef !99
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD12quickExplainEv(ptr noundef nonnull align 8 dereferenceable(800) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.m = tail call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD19generateSOIConflictERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(800) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD21greedyConflictSubsetsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.342") align 8 %1, ptr noundef nonnull align 8 dereferenceable(800) %0)
  %i.n = load ptr, ptr %1, align 8, !tbaa !556    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !556  ; 2 uses
  %.not56 = icmp eq ptr %i.n, %i.p
  br i1 %.not56, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr %1, align 8, !tbaa !377   ; 3 uses
  %.pre59 = load ptr, ptr %i.o, align 8, !tbaa !374 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre59
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.q = load ptr, ptr %.05.i.i.i, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !82
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i:  ; preds = %bb.d, %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %.pre59
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !377
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !375
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #25
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.g

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %.sroa.048.057 = phi ptr [ %i.ae, %bb.f ], [ %i.n, %bb.c ] ; 2 uses
  %i.ad = invoke noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD19generateSOIConflictERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(800) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.048.057)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.048.057, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !554

bb.g:                                             ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, %bb.b
  %i.af = call noundef i32 @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure29constructInfeasiblityFunctionERNS0_9TimerStatE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  store i32 %i.af, ptr %i.c, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !364
  call void @_ZN4cvc58internal8DenseMapIbE3setEjRKb(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, i32 noundef %i.af, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
end_hunk_0
