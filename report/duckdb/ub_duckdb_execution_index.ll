Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_execution_index?download=true
inline.NumInlined: 3044
inline.NumDeleted: 1648
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6duckdb18FixedSizeAllocator11DeserializeERNS_15MetadataManagerERKNS_12BlockPointerE:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr null, ptr noundef nonnull %i.b, i64 noundef 8)
          to label %bb.l unwind label %bb.u, !inline_history !246

bb.l:                                             ; preds = %bb.k
  %i.au = load i64, ptr %i.b, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.av = load ptr, ptr %0, align 8, !tbaa !78, !nonnull !34, !align !35
  %i.aw = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #28
          to label %.noexc unwind label %bb.v     ; 5 uses

.noexc:                                           ; preds = %bb.l
  invoke void @_ZN6duckdb15FixedSizeBufferC1ERNS_12BlockManagerEmmRKNS_12BlockPointerE(ptr noundef nonnull align 8 dereferenceable(136) %i.aw, ptr noundef nonnull align 8 dereferenceable(144) %i.av, i64 noundef %i.aq, i64 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN6duckdb9make_uniqINS_15FixedSizeBufferEJRNS_12BlockManagerERmS4_RNS_12BlockPointerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.m, !noalias !250

bb.m:                                             ; preds = %.noexc
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #27, !noalias !250
  br label %.body

_ZN6duckdb9make_uniqINS_15FixedSizeBufferEJRNS_12BlockManagerERmS4_RNS_12BlockPointerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc
  %i.ay = load i64, ptr %i.z, align 8, !tbaa !47  ; 2 uses
  %i.az = urem i64 %i.ai, %i.ay                   ; 3 uses
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !76 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb9make_uniqINS_15FixedSizeBufferEJRNS_12BlockManagerERmS4_RNS_12BlockPointerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !66 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !73
  %i.bg = icmp eq i64 %i.ai, %i.bf
  br i1 %i.bg, label %.loopexit, label %.lr.ph.i.i.i.i

bb.o:                                             ; preds = %bb.p
  %i.bh = icmp eq i64 %i.ai, %i.bk
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !77

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %bb.o
  %.020.i.i.i.i = phi ptr [ %i.bi, %bb.o ], [ %i.bd, %bb.n ]
  %i.bi = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !66 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !73 ; 2 uses
  %i.bl = urem i64 %i.bk, %i.ay
  %.not19.i.i.i.i = icmp eq i64 %i.bl, %i.az
  br i1 %.not19.i.i.i.i, label %bb.o, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !77

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.p
  br label %.loopexit.i.i, !llvm.loop !77

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %_ZN6duckdb9make_uniqINS_15FixedSizeBufferEJRNS_12BlockManagerERmS4_RNS_12BlockPointerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.y, ptr %4, align 8, !tbaa !83
  %i.bm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc34 unwind label %bb.w   ; 5 uses

.noexc34:                                         ; preds = %.loopexit.i.i
  store ptr null, ptr %i.bm, align 8, !tbaa !66
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.ai, ptr %i.bn, align 8, !tbaa !87
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr null, ptr %i.bo, align 8, !tbaa !96
  store ptr %i.bm, ptr %i.aa, align 8, !tbaa !97
  %i.bp = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i64 noundef %i.az, i64 noundef %i.ai, ptr noundef nonnull %i.bm, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.q

_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.loopexit

bb.q:                                             ; preds = %.noexc34
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit39

.loopexit:                                        ; preds = %bb.o, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.n
  %.pn.i.i = phi ptr [ %i.bp, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.bd, %bb.n ], [ %i.bi, %bb.o ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 2 uses
  %i.br = load ptr, ptr %.1.i.i, align 8, !tbaa !69 ; 3 uses
  store ptr %i.aw, ptr %.1.i.i, align 8, !tbaa !69
  %.not.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15FixedSizeBufferEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15FixedSizeBufferEEclEPS1_.exit.i.i.i.i.i: ; preds = %.loopexit
  call void @_ZN6duckdb15FixedSizeBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.br) #25
  call void @_ZdlPv(ptr noundef nonnull %i.br) #27
  br label %_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb15FixedSizeBufferEEclEPS1_.exit.i.i.i.i.i, %.loopexit
  %i.bs = load i64, ptr %i.v, align 8, !tbaa !45
  %i.bt = add i64 %i.bs, %i.aq
  store i64 %i.bt, ptr %i.v, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.bu = add nuw i64 %.02053, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.q
  br i1 %exitcond.not, label %.preheader, label %bb.h, !llvm.loop !253

bb.r:                                             ; preds = %bb.h
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.s:                                             ; preds = %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.j
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.k
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %.loopexit.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit39

_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit39: ; preds = %bb.q, %bb.w
  %eh.lpad-body36 = phi { ptr, i32 } [ %i.ca, %bb.w ], [ %i.bq, %bb.q ]
  call void @_ZN6duckdb15FixedSizeBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.aw) #25
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #27
  br label %.body

.body:                                            ; preds = %bb.t, %_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit39, %bb.m, %bb.v, %bb.u, %bb.s
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.s ], [ %i.bx, %bb.t ], [ %i.by, %bb.u ], [ %eh.lpad-body36, %_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit39 ], [ %i.bz, %bb.v ], [ %i.ax, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.z, %.preheader
  call void @_ZN6duckdb14MetadataReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.x:                                             ; preds = %.lr.ph55, %bb.z
  %.01954 = phi i64 [ 0, %.lr.ph55 ], [ %i.cg, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.cb = load ptr, ptr %6, align 8, !tbaa !118
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr null, ptr noundef nonnull %i.a, i64 noundef 8)
          to label %bb.y unwind label %bb.aa, !inline_history !246

bb.y:                                             ; preds = %bb.x
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i64 %i.ce, ptr %i.h, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.ab, ptr %3, align 8, !tbaa !98
  %i.cf = invoke { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueImmNS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.z unwind label %bb.aa      ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  %i.cg = add nuw i64 %.01954, 1                  ; 2 uses
  %exitcond62.not = icmp eq i64 %i.cg, %i.u
  br i1 %exitcond62.not, label %._crit_edge, label %bb.x, !llvm.loop !254

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.r, %.body, %bb.f, %bb.aa, %bb.g, %bb.e
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %i.ad, %bb.f ], [ %i.ae, %bb.g ], [ %i.ch, %bb.aa ], [ %.pn.pn.pn.pn, %.body ], [ %i.bv, %bb.r ]
  call void @_ZN6duckdb14MetadataReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb14MetadataReaderC1ERNS_15MetadataManagerENS_12BlockPointerE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(168), i64, i64) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6duckdb14MetadataReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18FixedSizeAllocator13VerifyBuffersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.37", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.06.012 = load ptr, ptr %i.b, align 8, !tbaa !66 ; 2 uses
  %.not13 = icmp eq ptr %.sroa.06.012, null
  br i1 %.not13, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.06.014 = phi ptr [ %.sroa.06.0, %.lr.ph ], [ %.sroa.06.012, %bb.a ] ; 2 uses
  %i.c = phi i64 [ %spec.select, %.lr.ph ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.06.014, i64 16
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !123
  %3 = icmp eq i64 %i.g, 0
  %4 = zext i1 %3 to i64
  %spec.select = add i64 %i.c, %4                 ; 3 uses
  %.sroa.06.0 = load ptr, ptr %.sroa.06.014, align 8, !tbaa !66 ; 2 uses
  %.not.a = icmp eq ptr %.sroa.06.0, null
  br i1 %.not.a, label %._crit_edge.a, label %.lr.ph, !llvm.loop !255

._crit_edge.a:                                    ; preds = %.lr.ph
  store i64 %spec.select, ptr %i.a, align 8
  %5 = icmp ugt i64 %spec.select, 1
  br i1 %5, label %bb.b, label %._crit_edge.thread

bb.b:                                             ; preds = %._crit_edge.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.h) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %.pn11, %bb.f ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %.pn10

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJRmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.612", align 8   ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !256
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !259, !noalias !256 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !262, !noalias !256 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #27
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !263

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !259, !noalias !256
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #27
  br label %_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !256
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !256
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !52     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !52     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20PartialBlockForIndexC2ENS_17PartialBlockStateERNS_12BlockManagerERKNS_10shared_ptrINS_11BlockHandleELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef readonly byval(%"struct.duckdb::PartialBlockState") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb12PartialBlockC2ENS_17PartialBlockStateERNS_12BlockManagerERKNS_10shared_ptrINS_11BlockHandleELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull byval(%"struct.duckdb::PartialBlockState") align 8 %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb20PartialBlockForIndexE, i64 16), ptr %0, align 8, !tbaa !118
  ret void
}

declare void @_ZN6duckdb12PartialBlockC2ENS_17PartialBlockStateERNS_12BlockManagerERKNS_10shared_ptrINS_11BlockHandleELb1EEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef byval(%"struct.duckdb::PartialBlockState") align 8, ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20PartialBlockForIndex5FlushENS_12QueryContextEm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::shared_ptr", align 16 ; 7 uses
  %4 = alloca %"class.duckdb::shared_ptr", align 16 ; 4 uses
  tail call void @_ZN6duckdb12PartialBlock13FlushInternalEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264, !nonnull !34, !align !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !272
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !223
  store ptr null, ptr %i.g, align 8, !tbaa !114
  store <2 x ptr> %i.h, ptr %4, align 16, !tbaa !223
  store ptr null, ptr %i.e, align 8, !tbaa !273
  invoke void @_ZN6duckdb12BlockManager19ConvertToPersistentENS_12QueryContextElNS_10shared_ptrINS_11BlockHandleELb1EEENS_23ConvertToPersistentModeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr %1, i64 noundef %i.d, ptr noundef nonnull %4, i32 noundef 0)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load <2 x ptr>, ptr %3, align 16, !tbaa !223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !114  ; 8 uses
  store <2 x ptr> %i.j, ptr %i.e, align 8, !tbaa !223
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 8, !tbaa !115
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !117
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !118
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #25, !inline_history !224
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !118
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #25, !inline_history !224
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.h, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit, !prof !121

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #25
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit: ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !114  ; 8 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aa, align 8, !tbaa !115
end_hunk_0
