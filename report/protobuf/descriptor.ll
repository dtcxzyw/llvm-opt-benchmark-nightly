inline.NumInlined: 22184
inline.NumDeleted: 7878
begin_hunk_0_@_ZNK6google8protobuf14DescriptorPool6Tables10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %.pn32.i.i.i.i = phi i64 [ %i.aq, %bb.g ], [ %i.aw, %bb.h ], [ %i.bc, %bb.i ], [ %i.bi, %bb.j ], [ %i.bq, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i ], [ %i.bu, %bb.k ], [ %i.ca, %bb.l ], [ %i.ch, %bb.m ], [ %.sroa.speculated.i.i.i.i.i, %bb.n ]
  %.pn30.i.i.i.i = phi ptr [ %i.as, %bb.g ], [ %i.ay, %bb.h ], [ %i.be, %bb.i ], [ %i.bk, %bb.j ], [ %i.bo, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i ], [ %i.bw, %bb.k ], [ %i.cc, %bb.l ], [ %i.cf, %bb.m ], [ %i.cm, %bb.n ]
  %i.ct = icmp eq i64 %.pn32.i.i.i.i, %1
  br i1 %i.ct, label %bb.q, label %bb.r, !prof !162

bb.q:                                             ; preds = %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i
  br i1 %i.aa, label %.thread36.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i12.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i12.i.i: ; preds = %bb.q
  %bcmp.i.i.i.i.i.i.i13.i.i = tail call i32 @bcmp(ptr %.pn30.i.i.i.i, ptr %2, i64 %1)
  %i.cu = icmp eq i32 %bcmp.i.i.i.i.i.i.i13.i.i, 0
  br i1 %i.cu, label %.thread36.i.i.i, label %bb.r

.thread36.i.i.i:                                  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i12.i.i, %bb.q
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i, i64 %i.aj
  %i.cw = getelementptr inbounds nuw i8, ptr %.val15.i.i.i, i64 %i.aj ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cw) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE10find_largeINS8_13FullNameQueryEEENSC_8iteratorERKT_m.exit.i.i

bb.r:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i12.i.i, %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i
  %i.cx = add i16 %.sroa.021.052.i.i.i, -1
  %i.cy = and i16 %i.cx, %.sroa.021.052.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cy, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.r, %bb.f
  %i.cz = icmp eq <16 x i8> %i.ad, splat (i8 -128)
  %i.da = bitcast <16 x i1> %i.cz to i16
  %.not47.i.i.i = icmp eq i16 %i.da, 0
  br i1 %.not47.i.i.i, label %bb.s, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE10find_largeINS8_13FullNameQueryEEENSC_8iteratorERKT_m.exit.i.i, !prof !163

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.db = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.dc = add i64 %i.db, %.sroa.6.0.i.i.i
  br label %bb.f, !llvm.loop !268

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE10find_largeINS8_13FullNameQueryEEENSC_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread36.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.cw, %.thread36.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.cv, %.thread36.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findINS8_13FullNameQueryEEENSC_14const_iteratorERKT_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findINS8_13FullNameQueryEEENSC_14const_iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_120SymbolByFullNameHashENSB_18SymbolByFullNameEqESaIS6_EE12EqualElementINSB_13FullNameQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE10find_largeINS8_13FullNameQueryEEENSC_8iteratorERKT_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE10find_largeINS8_13FullNameQueryEEENSC_8iteratorERKT_m.exit.i.i ], [ %.fca.1.insert.i.i.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEEvE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_120SymbolByFullNameHashENSB_18SymbolByFullNameEqESaIS6_EE12EqualElementINSB_13FullNameQueryEEEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dd = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findINS8_13FullNameQueryEEENSC_14const_iteratorERKT_.exit
  %i.df = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !269
  %i.dh = inttoptr i64 %i.dg to ptr
  br label %bb.u

bb.u:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findINS8_13FullNameQueryEEENSC_14const_iteratorERKT_.exit, %bb.t
  %.sroa.011.0 = phi ptr [ %i.dh, %bb.t ], [ @_ZZN6google8protobuf6SymbolC1EvE11null_symbol, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE4findINS8_13FullNameQueryEEENSC_14const_iteratorERKT_.exit ]
  ret ptr %.sroa.011.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool31TryFindSymbolInFallbackDatabaseESt17basic_string_viewIcSt11char_traitsIcEERNS1_18DeferredValidationE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(736) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"struct.std::pair.245", align 8    ; 6 uses
  store i64 %1, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !263
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findISt17basic_string_viewIcS7_EEENSE_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.j = extractvalue { ptr, ptr } %i.i, 0
  %.not29 = icmp eq ptr %i.j, null
  br i1 %.not29, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %.sroa.0.0.copyload.i = load i64, ptr %4, align 8, !tbaa !19 ; 5 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %i.b, align 8, !tbaa !270 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !16
  %i.l = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.m = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !19
  %i.n = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.n, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !20
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.p, ptr %i.k, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !22
  store i8 %i.r, ptr %i.q, align 1, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23
  %i.u = load ptr, ptr %5, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 680 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !227  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.w, align 8, !tbaa !271
  br label %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.z = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_19FileDescriptorProtoEEEPvPS1_(ptr noundef nonnull %i.y)
          to label %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit unwind label %.loopexit.split-lp

_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.x, %bb.h ], [ %i.z, %bb.i ] ; 3 uses
  %.sroa.03.0.copyload = load i64, ptr %4, align 8, !tbaa !19 ; 5 uses
  %.sroa.24.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !270 ; 4 uses
  %.not31.i = icmp eq i64 %.sroa.03.0.copyload, 0
  %i.aa = ptrtoint ptr %.sroa.24.0.copyload to i64 ; 2 uses
  br i1 %.not31.i, label %.loopexit30, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit, %.thread.i
  %.tr.i = phi ptr [ %i.as, %.thread.i ], [ %0, %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit ] ; 2 uses
  %i.ab = call ptr @memchr(ptr noundef %.sroa.24.0.copyload, i32 noundef 46, i64 noundef %.sroa.03.0.copyload) #40, !inline_history !272 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.aa                    ; 2 uses
  %.not3538.i = icmp eq i64 %i.ad, -1
  %.not35.i = select i1 %.not.i.i, i1 true, i1 %.not3538.i
  br i1 %.not35.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr.i, i64 56
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16.i, %.lr.ph.i
  %.0936.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %i.aq, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16.i ] ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.sroa.03.0.copyload, i64 %.0936.i)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !114
  %i.ag = invoke ptr @_ZNK6google8protobuf14DescriptorPool6Tables10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.af, i64 %.sroa.speculated.i.i, ptr %.sroa.24.0.copyload)
          to label %.noexc21 unwind label %.loopexit, !inline_history !272

.noexc21:                                         ; preds = %bb.j
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !135 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %.noexc21
  %i.aj = add i8 %i.ah, -9
  %spec.select.i.i = icmp ult i8 %i.aj, 2
  br i1 %spec.select.i.i, label %bb.l, label %_ZNK6google8protobuf14DescriptorPool22IsSubSymbolOfBuiltTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.l:                                             ; preds = %bb.k
  %i.ak = add nuw i64 %.0936.i, 1                 ; 3 uses
  %i.al = icmp ult i64 %i.ak, %.sroa.03.0.copyload
  br i1 %i.al, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16.i, label %.thread.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16.i:   ; preds = %bb.l
  %i.am = sub nuw i64 %.sroa.03.0.copyload, %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.24.0.copyload, i64 %i.ak
  %i.ao = call ptr @memchr(ptr noundef nonnull %i.an, i32 noundef 46, i64 noundef %i.am) #40, !inline_history !272
  %.fr.i = freeze ptr %i.ao                       ; 2 uses
  %.not.i17.i = icmp eq ptr %.fr.i, null
  %i.ap = ptrtoint ptr %.fr.i to i64
  %i.aq = sub i64 %i.ap, %i.aa                    ; 2 uses
  %.not.i20 = icmp eq i64 %i.aq, -1
  %or.cond.i = select i1 %.not.i17.i, i1 true, i1 %.not.i20
  br i1 %or.cond.i, label %.thread.i, label %bb.j, !llvm.loop !273

.thread.i:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16.i, %bb.l, %.noexc21, %tailrecurse.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !264 ; 2 uses
  %.not13.i = icmp eq ptr %i.as, null
  br i1 %.not13.i, label %.loopexit30, label %tailrecurse.i

.loopexit30:                                      ; preds = %.thread.i, %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !263 ; 2 uses
  %i.au = load ptr, ptr %5, align 8, !tbaa !20
  %i.av = load i64, ptr %i.t, align 8, !tbaa !23
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !274
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i64 %i.av, ptr %i.au, ptr noundef nonnull %.0.i)
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %.loopexit30
  br i1 %i.az, label %bb.n, label %_ZNK6google8protobuf14DescriptorPool22IsSubSymbolOfBuiltTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.n:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 152
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !276
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = and i64 %i.bd, -4
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !23
  %i.bj = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool6Tables8FindFileESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.ba, i64 %i.bi, ptr %i.bg)
          to label %bb.o unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.p, label %_ZNK6google8protobuf14DescriptorPool22IsSubSymbolOfBuiltTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.p:                                             ; preds = %bb.o
  %i.bk = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool21BuildFileFromDatabaseERKNS0_19FileDescriptorProtoERNS1_18DeferredValidationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(200) %.0.i, ptr noundef nonnull align 8 dereferenceable(736) %3)
          to label %bb.q unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZNK6google8protobuf14DescriptorPool22IsSubSymbolOfBuiltTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.u

_ZNK6google8protobuf14DescriptorPool22IsSubSymbolOfBuiltTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.k, %bb.q, %bb.o, %bb.m
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooIS9_EESt4pairINSE_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.245") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc24 unwind label %bb.t

.noexc24:                                         ; preds = %_ZNK6google8protobuf14DescriptorPool22IsSubSymbolOfBuiltTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !296, !range !49, !alias.scope !299, !noundef !51
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.r, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertEOS9_.exit

bb.r:                                             ; preds = %.noexc24
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !299 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.br, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !16
  %i.bs = load ptr, ptr %5, align 8, !tbaa !20, !noalias !299 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.k
  br i1 %i.bt, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bu = load i64, ptr %i.t, align 8, !tbaa !23, !noalias !299 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.bw, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  store ptr %i.bs, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !20
  %i.bx = load i64, ptr %i.k, align 8, !tbaa !22, !noalias !299
  store i64 %i.bx, ptr %i.br, align 8, !tbaa !22
  %.pre = load i64, ptr %i.t, align 8, !tbaa !23, !noalias !299
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s
  %i.by = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bu, %bb.s ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !23
  store ptr %i.k, ptr %5, align 8, !tbaa !20, !noalias !299
  store i64 0, ptr %i.t, align 8, !tbaa !23, !noalias !299
  store i8 0, ptr %i.k, align 8, !tbaa !22, !noalias !299
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertEOS9_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertEOS9_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.u

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %.loopexit30, %bb.n, %bb.p, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %_ZNK6google8protobuf14DescriptorPool22IsSubSymbolOfBuiltTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.v

bb.u:                                             ; preds = %bb.q, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertEOS9_.exit
  %.0 = phi i1 [ false, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertEOS9_.exit ], [ true, %bb.q ]
  %i.cb = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.k
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.cd = load i64, ptr %i.k, align 8, !tbaa !22
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.w

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cf = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.k
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.v
  %i.ch = load i64, ptr %i.k, align 8, !tbaa !22
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  resume { ptr, i32 } %.pn

bb.w:                                             ; preds = %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi i1 [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051214MutexLockMaybeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !261    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6google8protobuf14DescriptorPool18DeferredValidation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(736) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.775, align 8            ; 4 uses
  %2 = alloca %"struct.google::protobuf::FeatureResolver::ValidationResults", align 8 ; 14 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.c = load i64, ptr %i.b, align 8, !tbaa !79
  %.not.i = icmp ult i64 %i.c, 131072
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorESt6vectorINS5_14DescriptorPool18DeferredValidation13LifetimesInfoESaISC_EEEENS1_6HashEqIS8_vE4HashENSH_2EqESaISt4pairIKS8_SE_EEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !73
  %i.e = icmp eq i64 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 720
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf14DescriptorPool21BuildFileFromDatabaseERKNS0_19FileDescriptorProtoERNS1_18DeferredValidationE:bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !259
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %i.aa = call noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #45, !noalias !796 ; 29 uses
  store ptr %0, ptr %i.aa, align 8, !tbaa !799, !noalias !796
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !818, !noalias !796
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %2, ptr %i.ac, align 8, !tbaa !793, !noalias !796
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !819, !noalias !796
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  store i8 0, ptr %i.ae, align 8, !tbaa !820, !noalias !796
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 160 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.af, i8 0, i64 25, i1 false), !noalias !796
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !16, !noalias !796
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  store i64 0, ptr %i.ai, align 8, !tbaa !23, !noalias !796
  store i8 0, ptr %i.ah, align 8, !tbaa !22, !noalias !796
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  store i64 1, ptr %i.aj, align 8, !noalias !796
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 200
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !796
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  store i64 1, ptr %i.ak, align 8, !noalias !796
  %.sroa.4.0..sroa_idx.i.i8.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 232
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i8.i.i, align 8, !noalias !796
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i8 0, i64 16, i1 false), !noalias !796
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 272
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !796
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 288
  store i64 1, ptr %i.am, align 8, !noalias !796
  %.sroa.4.0..sroa_idx.i.i9.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 296
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i9.i.i, align 8, !noalias !796
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 320
  store ptr null, ptr %i.an, align 8, !tbaa !821, !noalias !796
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 328
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 344 ; 2 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !16, !noalias !796
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 336
  store i64 0, ptr %i.aq, align 8, !tbaa !23, !noalias !796
  store i8 0, ptr %i.ap, align 8, !tbaa !22, !noalias !796
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 360
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 376 ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !16, !noalias !796
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 368
  store i64 0, ptr %i.at, align 8, !tbaa !23, !noalias !796
  store i8 0, ptr %i.as, align 8, !tbaa !22, !noalias !796
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 392
  store i32 32, ptr %i.au, align 8, !tbaa !822, !noalias !796
  store ptr %i.aa, ptr %3, align 8, !tbaa !823, !alias.scope !796
  %i.av = invoke noundef ptr @_ZN6google8protobuf17DescriptorBuilder9BuildFileERKNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(396) %i.aa, ptr noundef nonnull align 8 dereferenceable(200) %1)
          to label %_ZNSt10unique_ptrIN6google8protobuf17DescriptorBuilderESt14default_deleteIS2_EED2Ev.exit unwind label %bb.e, !inline_history !825

bb.e:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6google8protobuf17DescriptorBuilderESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #40, !inline_history !825
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.aw

_ZNSt10unique_ptrIN6google8protobuf17DescriptorBuilderESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d
  store ptr %i.av, ptr %i.b, align 8, !tbaa !166
  call void @_ZN6google8protobuf17DescriptorBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(396) dereferenceable(396) %i.aa) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 400) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6google8protobuf17DescriptorBuilderESt14default_deleteIS2_EED2Ev.exit, %bb.c
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !166 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !276
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -4
  %i.be = inttoptr i64 %i.bd to ptr               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !826)
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  call void @llvm.experimental.noalias.scope.decl(metadata !832)
  call void @llvm.experimental.noalias.scope.decl(metadata !835)
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooIS9_EESt4pairINSE_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.245") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !296, !range !49, !alias.scope !844, !noundef !51
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIS9_Li0EEESt4pairINSE_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %bb.g
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !844 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.bi, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !16
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !20, !noalias !844 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !23, !noalias !844 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !844
  store i64 %i.bl, ptr %i.a, align 8, !tbaa !19, !noalias !844
  %i.bm = icmp ugt i64 %i.bl, 15
  br i1 %i.bm, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h
  %i.bn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bn, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !20
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !844
  store i64 %i.bo, ptr %i.bi, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %i.bp = phi ptr [ %i.bn, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bi, %bb.h ] ; 2 uses
  switch i64 %i.bl, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJRKS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = load i8, ptr %i.bj, align 1, !tbaa !22
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !22
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJRKS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.bj, i64 %i.bl, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJRKS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJRKS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.br = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !844 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !23
  %i.bt = load ptr, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !20
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !844
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIS9_Li0EEESt4pairINSE_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIS9_Li0EEESt4pairINSE_8iteratorEbERKT_.exit: ; preds = %bb.g, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJRKS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !166
  br label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIS9_Li0EEESt4pairINSE_8iteratorEbERKT_.exit, %bb.f
  %i.bv = phi ptr [ %.pre, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIS9_Li0EEESt4pairINSE_8iteratorEbERKT_.exit ], [ %i.ax, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.0 = phi ptr [ %i.bv, %bb.k ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool22IsSubSymbolOfBuiltTypeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not31 = icmp eq i64 %1, 0
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  br i1 %.not31, label %.loopexit, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %.thread
  %.tr = phi ptr [ %i.s, %.thread ], [ %0, %bb.a ] ; 2 uses
  %i.b = tail call ptr @memchr(ptr noundef %2, i32 noundef 46, i64 noundef %1) #40 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = sub i64 %i.c, %i.a                       ; 2 uses
  %.not3538 = icmp eq i64 %i.d, -1
  %.not35 = select i1 %.not.i, i1 true, i1 %.not3538
  br i1 %.not35, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16, %.lr.ph
  %.0936 = phi i64 [ %i.d, %.lr.ph ], [ %i.q, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16 ] ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %.0936)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.g = tail call ptr @_ZNK6google8protobuf14DescriptorPool6Tables10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.f, i64 %.sroa.speculated.i, ptr %2)
  %i.h = load i8, ptr %i.g, align 1, !tbaa !135   ; 2 uses
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i8 %i.h, -9
  %spec.select.i = icmp ult i8 %i.j, 2
  br i1 %spec.select.i, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.0936, 1                    ; 3 uses
  %i.l = icmp ult i64 %i.k, %1
  br i1 %i.l, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16, label %.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16:     ; preds = %bb.d
  %i.m = sub nuw i64 %1, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.o = tail call ptr @memchr(ptr noundef nonnull %i.n, i32 noundef 46, i64 noundef %i.m) #40
  %.fr = freeze ptr %i.o                          ; 2 uses
  %.not.i17 = icmp eq ptr %.fr, null
  %i.p = ptrtoint ptr %.fr to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %.not = icmp eq i64 %i.q, -1
  %or.cond = select i1 %.not.i17, i1 true, i1 %.not
  br i1 %or.cond, label %.thread, label %bb.b, !llvm.loop !273

.thread:                                          ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16, %bb.d, %bb.b, %tailrecurse
  %i.r = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !264  ; 2 uses
  %.not13 = icmp eq ptr %i.s, null
  br i1 %.not13, label %.loopexit, label %tailrecurse

.loopexit:                                        ; preds = %.thread, %bb.c, %bb.a
  %.3 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %.thread ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor19is_map_message_typeEv(ptr noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 6 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr %i.b acquire, align 4
  %.not.i.i = icmp eq i32 %i.c, 221
  br i1 %.not.i.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, label %bb.c, !prof !322

bb.c:                                             ; preds = %bb.b
  %i.d = cmpxchg ptr %i.b, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i: ; preds = %bb.c
  %i.f = tail call noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIRFvPKN6google8protobuf15FieldDescriptorEEJS7_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef 1), !inline_history !695
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i: ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i, %bb.c
  tail call void @_ZNK6google8protobuf15FieldDescriptor20InternalTypeOnceInitEv(ptr noundef nonnull align 8 dereferenceable(88) %0), !inline_history !696
  %i.h = atomicrmw xchg ptr %i.b, i32 221 release, align 4
  %i.i = icmp eq i32 %i.h, 94570706
  br i1 %i.i, label %bb.d, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i
  tail call void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true), !inline_history !695
  br label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i: ; preds = %bb.d, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !689
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 51
  %i.o = load i8, ptr %i.n, align 1, !tbaa !22, !range !49, !noundef !51
  %i.p = trunc nuw i8 %i.o to i1
  ret i1 %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf15FieldDescriptor20DefaultValueAsStringB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 captures(none) dereferenceable(88) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %12 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = trunc i8 %i.h to i1
  br i1 %i.i, label %.critedge, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.62, i32 noundef 3099, ptr noundef nonnull @.str.64) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, ptr nonnull @.str.65)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit: ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i8, ptr %i.k, align 2, !tbaa !692   ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !845
  switch i32 %i.o, label %bb.ak [
    i32 1, label %bb.d
    i32 2, label %bb.g
    i32 3, label %bb.j
    i32 4, label %bb.m
    i32 6, label %bb.p
    i32 5, label %bb.q
    i32 7, label %._crit_edge.i.i
    i32 9, label %bb.r
    i32 8, label %bb.ac
  ]

bb.d:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = load i32, ptr %i.p, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.s = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.q, ptr noundef nonnull %i.r)
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  store i64 %i.v, ptr %4, align 8, !tbaa !847
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.r, ptr %i.w, align 8, !tbaa !848
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !16, !alias.scope !849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #40, !noalias !849
  store i64 %i.v, ptr %i.f, align 8, !tbaa !19, !noalias !849
  %i.y = icmp ugt i64 %i.v, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !20, !alias.scope !849
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !19, !noalias !849
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !22, !alias.scope !849
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.d
  %i.ab = phi ptr [ %i.z, %.noexc.i.i ], [ %i.x, %bb.d ] ; 2 uses
  switch i64 %i.v, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.r, align 8, !tbaa !22
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !22
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 8 %i.r, i64 %i.v, i1 false)
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit

_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !19, !noalias !849 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !23, !alias.scope !849
  %i.af = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !849
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40, !noalias !849
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.am

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.ak = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferElPc(i64 noundef %i.ai, ptr noundef nonnull %i.aj)
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am                    ; 5 uses
  store i64 %i.an, ptr %5, align 8, !tbaa !847
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !848
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !16, !alias.scope !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40, !noalias !852
  store i64 %i.an, ptr %i.e, align 8, !tbaa !19, !noalias !852
  %i.aq = icmp ugt i64 %i.an, 15
  br i1 %i.aq, label %.noexc.i.i15, label %._crit_edge.i.i.i14

.noexc.i.i15:                                     ; preds = %bb.g
  %i.ar = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !20, !alias.scope !852
  %i.as = load i64, ptr %i.e, align 8, !tbaa !19, !noalias !852
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf17DescriptorBuilder26FindSymbolNotEnforcingDepsESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp ult i64 %i.ae, 2
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !79
  %.not.i.i.i.i.i = icmp ugt i64 %i.ai, 131071
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, %.0.i
  %or.cond = select i1 %.not.i.i.i.i.i, i1 %i.al, i1 false
  br i1 %or.cond, label %.sink.split, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !22 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.an, i32 0, i32 1, i32 1)
  %i.ao = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.ap = xor i64 %i.ao, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.aq = mul i64 %i.ap, -2543921745674291987
  %i.ar = tail call noundef i64 @llvm.bswap.i64(i64 %i.aq)
  %i.as = xor i64 %i.ar, %i.ao
  %i.at = mul i64 %i.as, -2543921745674291987
  %i.au = tail call noundef i64 @llvm.bswap.i64(i64 %i.at) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !79, !noalias !1282
  %i.ax = and i64 %i.aw, 65535
  %i.ay = lshr i64 %i.au, 7
  %i.az = xor i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.au to i8
  %i.bb = and i8 %i.ba, 127
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !22 ; 2 uses
  %i.bd = insertelement <16 x i8> poison, i8 %i.bb, i64 0
  %i.be = shufflevector <16 x i8> %i.bd, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.pn.i6.i.i.i = phi i64 [ %i.az, %bb.l ], [ %i.bw, %bb.o ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.l ], [ %i.bv, %bb.o ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.ae ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.bf, i32 0, i32 3, i32 1)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.6.0.i.i.i.i
  %i.bh = load <16 x i8>, ptr %i.bg, align 1, !tbaa !22 ; 2 uses
  %i.bi = icmp eq <16 x i8> %i.be, %i.bh
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.bj, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %bb.n
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.bs, %bb.n ], [ %i.bj, %bb.m ] ; 3 uses
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = add i64 %.sroa.6.0.i.i.i.i, %i.bl
  %i.bn = and i64 %i.bm, %i.ae
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !166
  %i.bq = icmp eq ptr %i.bp, %.0.i
  br i1 %i.bq, label %.sink.split, label %bb.n, !prof !322

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.br = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.bs = and i16 %i.br, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.n, %bb.m
  %i.bt = icmp eq <16 x i8> %i.bh, splat (i8 -128)
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %.not43.i.i.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not43.i.i.i.i, label %bb.o, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread, !prof !163

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bv = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.bw = add i64 %i.bv, %.sroa.6.0.i.i.i.i
  br label %bb.m, !llvm.loop !1285

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !73 ; 4 uses
  %i.bz = icmp ne i64 %i.by, 0
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp ult i64 %i.by, 2
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !79
  %.not.i.i.i.i.i15 = icmp ult i64 %i.cc, 131072
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = icmp ne ptr %i.ce, %.0.i
  %or.cond29.not31 = select i1 %.not.i.i.i.i.i15, i1 true, i1 %i.cf
  %i.cg = add i8 %i.d, -9
  %spec.select.i = icmp ult i8 %i.cg, 2
  %or.cond30 = or i1 %spec.select.i, %or.cond29.not31
  br i1 %or.cond30, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16.thread, label %bb.u

bb.q:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !22 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ci, i32 0, i32 1, i32 1)
  %i.cj = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.ck = xor i64 %i.cj, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.cl = mul i64 %i.ck, -2543921745674291987
  %i.cm = tail call noundef i64 @llvm.bswap.i64(i64 %i.cl)
  %i.cn = xor i64 %i.cm, %i.cj
  %i.co = mul i64 %i.cn, -2543921745674291987
  %i.cp = tail call noundef i64 @llvm.bswap.i64(i64 %i.co) ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !79, !noalias !1286
  %i.cs = and i64 %i.cr, 65535
  %i.ct = lshr i64 %i.cp, 7
  %i.cu = xor i64 %i.cs, %i.ct
  %i.cv = trunc i64 %i.cp to i8
  %i.cw = and i8 %i.cv, 127
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.0.0.copyload.i.i.i.i.i.i.i3 = load ptr, ptr %i.cx, align 8, !tbaa !22 ; 2 uses
  %i.cy = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %i.cz = shufflevector <16 x i8> %i.cy, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.pn.i6.i.i.i4 = phi i64 [ %i.cu, %bb.q ], [ %i.dr, %bb.t ]
  %.sroa.13.0.i.i.i.i5 = phi i64 [ 0, %bb.q ], [ %i.dq, %bb.t ]
  %.sroa.6.0.i.i.i.i6 = and i64 %.pn.i6.i.i.i4, %i.by ; 4 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i3, i64 %.sroa.6.0.i.i.i.i6
  tail call void @llvm.prefetch.p0(ptr %i.da, i32 0, i32 3, i32 1)
  %i.db = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.6.0.i.i.i.i6
  %i.dc = load <16 x i8>, ptr %i.db, align 1, !tbaa !22 ; 2 uses
  %i.dd = icmp eq <16 x i8> %i.cz, %i.dc
  %i.de = bitcast <16 x i1> %i.dd to i16          ; 2 uses
  %.not46.i.i.i.i7 = icmp eq i16 %i.de, 0
  br i1 %.not46.i.i.i.i7, label %._crit_edge.i.i.i.i11, label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %bb.r, %bb.s
  %.sroa.017.047.i.i.i.i9 = phi i16 [ %i.dn, %bb.s ], [ %i.de, %bb.r ] ; 3 uses
  %i.df = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i9, i1 true)
  %i.dg = zext nneg i16 %i.df to i64
  %i.dh = add i64 %.sroa.6.0.i.i.i.i6, %i.dg
  %i.di = and i64 %i.dh, %i.by
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i3, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !166
  %i.dl = icmp eq ptr %i.dk, %.0.i
  br i1 %i.dl, label %.sink.split, label %bb.s, !prof !322

bb.s:                                             ; preds = %.lr.ph.i.i.i.i8
  %i.dm = add i16 %.sroa.017.047.i.i.i.i9, -1
  %i.dn = and i16 %i.dm, %.sroa.017.047.i.i.i.i9  ; 2 uses
  %.not.i.i.i.i10 = icmp eq i16 %i.dn, 0
  br i1 %.not.i.i.i.i10, label %._crit_edge.i.i.i.i11, label %.lr.ph.i.i.i.i8

._crit_edge.i.i.i.i11:                            ; preds = %bb.s, %bb.r
  %i.do = icmp eq <16 x i8> %i.dc, splat (i8 -128)
  %i.dp = bitcast <16 x i1> %i.do to i16
  %.not43.i.i.i.i12 = icmp eq i16 %i.dp, 0
  br i1 %.not43.i.i.i.i12, label %bb.t, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16.thread, !prof !163

bb.t:                                             ; preds = %._crit_edge.i.i.i.i11
  %i.dq = add i64 %.sroa.13.0.i.i.i.i5, 16        ; 2 uses
  %i.dr = add i64 %i.dq, %.sroa.6.0.i.i.i.i6
  br label %bb.r, !llvm.loop !1285

.sink.split:                                      ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i8, %bb.k, %_ZNK6google8protobuf6Symbol7GetFileEv.exit
  %.old = add i8 %i.d, -9
  %spec.select.i.old = icmp ult i8 %.old, 2
  br i1 %spec.select.i.old, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16.thread, label %bb.u

bb.u:                                             ; preds = %bb.p, %.sink.split
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.dt = call noundef i64 @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16.thread

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16.thread: ; preds = %._crit_edge.i.i.i.i11, %bb.p, %bb.u, %.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !73     ; 4 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !79
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.h = load ptr, ptr %1, align 8, !tbaa !166
  %i.i = icmp eq ptr %i.g, %i.h
  %cond.fr = freeze i1 %i.i
  br i1 %cond.fr, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %i.l = load ptr, ptr %1, align 8, !tbaa !166    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = xor i64 %i.p, %i.m
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !79, !noalias !1289
  %i.v = and i64 %i.u, 65535
  %i.w = lshr i64 %i.s, 7
  %i.x = xor i64 %i.w, %i.v
  %i.y = trunc i64 %i.s to i8
  %i.z = and i8 %i.y, 127
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !22 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i = phi i64 [ %i.x, %bb.d ], [ %i.au, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i6.i, %i.a        ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.6.0.i.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !tbaa !22 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.aq, %bb.f ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.6.0.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.a                     ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !166
  %i.ao = icmp eq ptr %i.an, %i.l
  br i1 %i.ao, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit, label %bb.f, !prof !322

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i16 %.sroa.017.047.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not43.i.i = icmp eq i16 %i.as, 0
  br i1 %.not43.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit, !prof !163

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.at = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !1285

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9: ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !19
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit: ; preds = %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.al
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZN4absl12lts_2025051218container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb, i64 noundef 8)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9
  %.0 = phi i64 [ 1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit ], [ 1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9 ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %._crit_edge.i.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i1 noundef zeroext %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = tail call ptr @_ZN6google8protobuf17DescriptorBuilder26FindSymbolNotEnforcingDepsESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i1 noundef zeroext %3) ; 23 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !135   ; 5 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread101, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !799
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load i8, ptr %i.f, align 8, !tbaa !606, !range !49, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread101

bb.c:                                             ; preds = %bb.b
  switch i8 %i.c, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit [
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i
    i8 7, label %bb.h
    i8 8, label %bb.i
    i8 9, label %bb.j
    i8 10, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !669
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !670
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !671
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !669
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.g:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !674
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !465
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !674
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.h:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.i:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !679
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.j:                                             ; preds = %bb.c
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.k:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !158
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

_ZNK6google8protobuf6Symbol7GetFileEv.exit:       ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi ptr [ %i.ad, %bb.k ], [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ %i.p, %bb.f ], [ %i.r, %bb.g ], [ %i.v, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i ], [ %i.x, %bb.h ], [ %i.ab, %bb.i ], [ %i.b, %bb.j ], [ null, %bb.c ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1281 ; 2 uses
  %i.ag = icmp eq ptr %.0.i, %i.af
  br i1 %i.ag, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread101, label %bb.l

bb.l:                                             ; preds = %_ZNK6google8protobuf6Symbol7GetFileEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !73 ; 4 uses
  %i.aj = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp ult i64 %i.ai, 2
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.am = load i64, ptr %i.al, align 8, !tbaa !79
  %.not.i.i.i.i.i = icmp ugt i64 %i.am, 131071
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.ao, %.0.i
  %or.cond = select i1 %.not.i.i.i.i.i, i1 %i.ap, i1 false
  br i1 %or.cond, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread101, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 1, i32 1)
  %i.as = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.at = xor i64 %i.as, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.au = mul i64 %i.at, -2543921745674291987
  %i.av = tail call noundef i64 @llvm.bswap.i64(i64 %i.au)
  %i.aw = xor i64 %i.av, %i.as
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  %i.he = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.he, ptr %i.gz, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i64

._crit_edge.i.i.i.i64:                            ; preds = %.noexc.i.i.i, %bb.ac
  %i.hf = phi ptr [ %i.hd, %.noexc.i.i.i ], [ %i.gz, %bb.ac ] ; 2 uses
  switch i64 %1, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i64
  %i.hg = load i8, ptr %2, align 1, !tbaa !22
  store i8 %i.hg, ptr %i.hf, align 1, !tbaa !22
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hf, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i.i64
  %i.hh = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !23
  %i.hj = load ptr, ptr %4, align 8, !tbaa !20
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hh
  store i8 0, ptr %i.hk, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !20 ; 6 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  %i.hp = load ptr, ptr %4, align 8, !tbaa !20    ; 6 uses
  %i.hq = icmp eq ptr %i.hp, %i.gz                ; 2 uses
  br i1 %i.ho, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.af
  br i1 %i.hq, label %bb.ag, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.af
  br i1 %i.hq, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hr = load i64, ptr %i.hi, align 8, !tbaa !23 ; 3 uses
  %i.hs = icmp ult i64 %i.hr, 16
  call void @llvm.assume(i1 %i.hs)
  %.not21.i = icmp eq ptr %4, %i.hl
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ah, !prof !163

bb.ah:                                            ; preds = %bb.ag
  switch i64 %i.hr, label %bb.aj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ht = load i8, ptr %i.hp, align 1, !tbaa !22
  store i8 %i.ht, ptr %i.hm, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr align 1 %i.hp, i64 %i.hr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.hu = load i64, ptr %i.hi, align 8, !tbaa !23 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !23
  %i.hw = load ptr, ptr %i.hl, align 8, !tbaa !20
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hu
  store i8 0, ptr %i.hx, align 1, !tbaa !22
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.hp, ptr %i.hl, align 8, !tbaa !20
  %i.hz = load <2 x i64>, ptr %i.hi, align 8, !tbaa !22
  store <2 x i64> %i.hz, ptr %i.hy, align 8, !tbaa !22
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ia = load i64, ptr %i.hn, align 8, !tbaa !22
  store ptr %i.hp, ptr %i.hl, align 8, !tbaa !20
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ic = load <2 x i64>, ptr %i.hi, align 8, !tbaa !22
  store <2 x i64> %i.ic, ptr %i.ib, align 8, !tbaa !22
  %.not.i = icmp eq ptr %i.hm, null
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.hm, ptr %4, align 8, !tbaa !20
  store i64 %i.ia, ptr %i.gz, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.gz, ptr %4, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ak, %bb.al
  %i.id = phi ptr [ %i.hm, %bb.ak ], [ %i.gz, %bb.al ], [ %i.hp, %bb.ag ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.hi, align 8, !tbaa !23
  store i8 0, ptr %i.id, align 1, !tbaa !22
  %i.ie = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.gz
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ig = load i64, ptr %i.gz, align 8, !tbaa !22
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread101

_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread101: ; preds = %.lr.ph.i.i.i.i, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i55, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i59, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i, %_ZNK6google8protobuf6Symbol7GetFileEv.exit, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit51.thread99, %bb.m, %bb.r, %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ii = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.a ], [ %i.b, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60 ], [ %i.b, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ @_ZZN6google8protobuf6SymbolC1EvE11null_symbol, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.b, %_ZNK6google8protobuf6Symbol7GetFileEv.exit ], [ %i.b, %bb.r ], [ %i.b, %bb.m ], [ %i.b, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56 ], [ %i.b, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit51.thread99 ], [ %i.b, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i ], [ %i.b, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i59 ], [ %i.b, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i55 ], [ %i.b, %.lr.ph.i.i.i.i ]
  ret ptr %i.ii
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !79
  %.not.i = icmp ult i64 %i.b, 131072
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit, label %bb.b, !prof !163

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !73     ; 2 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.e, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22, !nonnull !51, !noundef !51 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !22 ; 2 uses
  %i.i = load i8, ptr %i.g, align 1, !tbaa !300
  %i.j = icmp slt i8 %i.i, -1
  br i1 %i.j, label %.lr.ph.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.k = phi ptr [ %i.u, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i, %bb.c ]
  %i.l = phi ptr [ %i.t, %.lr.ph.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !22
  %i.n = icmp slt <16 x i8> %i.m, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = zext i16 %i.o to i32
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.q, i1 true)
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.s ; 2 uses
  %i.v = load i8, ptr %i.t, align 1, !tbaa !300
  %i.w = icmp slt i8 %i.v, -1
  br i1 %i.w, label %.lr.ph.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit, !llvm.loop !1298

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c, %bb.a
  %.sroa.6.0 = phi ptr [ undef, %bb.a ], [ %i.f, %bb.b ], [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %i.u, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.b ], [ %i.g, %bb.c ], [ %i.t, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.6.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6google8protobuf17DescriptorBuilder25LookupSymbolNoPlaceholderESt17basic_string_viewIcSt11char_traitsIcEES5_NS1_11ResolveModeEb(ptr noundef nonnull align 8 dereferenceable(396) initializes((320, 328), (368, 376)) %0, i64 %1, ptr %2, i64 %3, ptr readonly captures(address_is_null) %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 30 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 14 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 14 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr null, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.d, align 8, !tbaa !23
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20
  store i8 0, ptr %i.e, align 1, !tbaa !22
  %cond = icmp eq i64 %1, 0
  br i1 %cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %2, align 1, !tbaa !22
  %i.g = icmp eq i8 %i.f, 46
  br i1 %i.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.b
  %i.h = add i64 %1, -1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.j = tail call ptr @_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.h, ptr nonnull %i.i, i1 noundef zeroext %6)
  br label %bb.y

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.b
  %i.k = tail call ptr @memchr(ptr noundef nonnull %2, i32 noundef 46, i64 noundef %1) #40
  %.fr = freeze ptr %i.k                          ; 2 uses
  %.not.i.i = icmp eq ptr %.fr, null
  %i.l = ptrtoint ptr %.fr to i64
  %i.m = ptrtoint ptr %2 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = icmp eq i64 %i.n, -1
  %or.cond = select i1 %.not.i.i, i1 true, i1 %i.o
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.n)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread: ; preds = %bb.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.c
  %.sroa.067.0 = phi i64 [ %.sroa.speculated.i, %bb.c ], [ %1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ 0, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !16
  %i.q = icmp eq ptr %4, null
  %i.r = icmp ne i64 %3, 0
  %or.cond.i.i.i = and i1 %i.r, %i.q
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.d

.noexc:                                           ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %3, ptr %i.a, align 8, !tbaa !19
  %i.s = icmp ugt i64 %3, 15
  br i1 %i.s, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %7, align 8, !tbaa !20
  %i.u = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.u, ptr %i.p, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.v = phi ptr [ %i.t, %.noexc.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  switch i64 %3, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = load i8, ptr %4, align 1, !tbaa !22
  store i8 %i.w, ptr %i.v, align 1, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %4, i64 %3, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 20 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !23
  %i.z = load ptr, ptr %7, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ab = icmp eq i32 %5, 1
  %i.ac = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef signext 46, i64 noundef -1) #40 ; 4 uses
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.af = icmp ult i64 %.sroa.067.0, %1
  %.fr122 = freeze i1 %i.af
  br i1 %.fr122, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us
  %i.ag = phi i64 [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us ], [ %i.ac, %.lr.ph ] ; 4 uses
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !23  ; 2 uses
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  br i1 %i.ai, label %.split.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !23
  %i.aj = load ptr, ptr %7, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  store i8 0, ptr %i.ak, align 1, !tbaa !22
  %i.al = load i64, ptr %i.y, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  store i64 1, ptr %8, align 8
  store ptr @.str.73, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store i64 %.sroa.067.0, ptr %9, align 8, !tbaa !19
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i49, align 8, !tbaa !270
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %bb.i unwind label %.split115.us

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  %i.am = load ptr, ptr %7, align 8, !tbaa !20
  %i.an = load i64, ptr %i.y, align 8, !tbaa !23
  %i.ao = invoke ptr @_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.an, ptr %i.am, i1 noundef zeroext %6)
          to label %bb.j unwind label %.loopexit39.loopexit.split.us

bb.j:                                             ; preds = %bb.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !135
  switch i8 %i.ap, label %bb.k [
    i8 7, label %_ZNK6google8protobuf6Symbol11IsAggregateEv.exit.thread
    i8 4, label %_ZNK6google8protobuf6Symbol11IsAggregateEv.exit.thread
    i8 1, label %_ZNK6google8protobuf6Symbol11IsAggregateEv.exit.thread
    i8 10, label %_ZNK6google8protobuf6Symbol11IsAggregateEv.exit.thread
    i8 9, label %_ZNK6google8protobuf6Symbol11IsAggregateEv.exit.thread
  ]

bb.k:                                             ; preds = %bb.j
  %i.aq = load i64, ptr %i.y, align 8, !tbaa !23  ; 2 uses
  %i.ar = icmp ugt i64 %i.al, %i.aq
  br i1 %i.ar, label %.split119.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us: ; preds = %bb.k
  store i64 %i.al, ptr %i.y, align 8, !tbaa !23
  %i.as = load ptr, ptr %7, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.al
  store i8 0, ptr %i.at, align 1, !tbaa !22
  %i.au = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef signext 46, i64 noundef -1) #40 ; 2 uses
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %._crit_edge, label %.lr.ph.split.us

.split115.us:                                     ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.split115

.loopexit39.loopexit.split.us:                    ; preds = %bb.i
  %lpad.loopexit90.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit39

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.ab, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us123
  %i.ax = phi i64 [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us123 ], [ %i.ac, %.lr.ph.split ] ; 4 uses
  %i.ay = load i64, ptr %i.y, align 8, !tbaa !23  ; 2 uses
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %.split.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.split.us
  store i64 %i.ax, ptr %i.y, align 8, !tbaa !23
  %i.ba = load ptr, ptr %7, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax
  store i8 0, ptr %i.bb, align 1, !tbaa !22
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  store i64 1, ptr %8, align 8
  store ptr @.str.73, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store i64 %.sroa.067.0, ptr %9, align 8, !tbaa !19
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i49, align 8, !tbaa !270
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %bb.m unwind label %.split115.split.us

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  %i.bd = load ptr, ptr %7, align 8, !tbaa !20
  %i.be = load i64, ptr %i.y, align 8, !tbaa !23
  %i.bf = invoke ptr @_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.be, ptr %i.bd, i1 noundef zeroext %6)
          to label %bb.n unwind label %.loopexit39.loopexit.split.split.us ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !135
  switch i8 %i.bg, label %bb.o [
    i8 1, label %.critedge
    i8 4, label %.critedge
  ]

bb.o:                                             ; preds = %bb.n
  %i.bh = load i64, ptr %i.y, align 8, !tbaa !23  ; 2 uses
  %i.bi = icmp ugt i64 %i.bc, %i.bh
  br i1 %i.bi, label %.split119.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us123: ; preds = %bb.o
  store i64 %i.bc, ptr %i.y, align 8, !tbaa !23
  %i.bj = load ptr, ptr %7, align 8, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bc
  store i8 0, ptr %i.bk, align 1, !tbaa !22
  %i.bl = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef signext 46, i64 noundef -1) #40 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %._crit_edge, label %.lr.ph.split.split.us

.split115.split.us:                               ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.split115

.loopexit39.loopexit.split.split.us:              ; preds = %bb.m
  %lpad.loopexit90.us129 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit39

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us, %bb.g
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS0_15FieldDescriptorERKNS0_20FieldDescriptorProtoE:bb.a

.critedge:                                        ; preds = %bb.x, %bb.x, %bb.x
  %i.ez = load ptr, ptr %i.du, align 8, !tbaa !276
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = and i64 %i.fa, -4
  %i.fc = inttoptr i64 %i.fb to ptr               ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 3 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !23
  %i.ff = add i64 %i.fe, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !276
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, -4
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !23
  %i.fn = add i64 %i.ff, %i.fm
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !818
  %i.fr = add i32 %i.fo, 5
  %i.fs = call noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables13AllocateBytesEi(ptr noundef nonnull align 8 dereferenceable(416) %i.fq, i32 noundef %i.fr) ; 3 uses
  store i32 0, ptr %i.fs, align 4, !tbaa !107
  %i.ft = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store ptr %i.fs, ptr %i.fu, align 8, !tbaa !694
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 4 ; 2 uses
  %i.fw = load ptr, ptr %i.fc, align 8, !tbaa !20
  %i.fx = load i64, ptr %i.fd, align 8, !tbaa !23
  %i.fy = add i64 %i.fx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fv, ptr align 1 %i.fw, i64 %i.fy, i1 false)
  %i.fz = load i64, ptr %i.fd, align 8, !tbaa !23
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gc = load ptr, ptr %i.fg, align 8, !tbaa !276
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = and i64 %i.gd, -4
  %i.gf = inttoptr i64 %i.ge to ptr               ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !20
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !23
  %i.gj = add i64 %i.gi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gb, ptr align 1 %i.gg, i64 %i.gj, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !1308
  %i.gm = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.gn = call noundef zeroext i1 @_ZN6google8protobuf20FileDescriptorTables16AddFieldByNumberEPNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(200) %i.gl, ptr noundef %i.gm) ; 0 uses
  %i.go = load ptr, ptr %i.b, align 8, !tbaa !337 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = and i8 %i.gq, 8
  %.not343 = icmp eq i8 %i.gr, 0
  br i1 %.not343, label %bb.bg, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  %i.gs = load ptr, ptr %i.fp, align 8, !tbaa !818
  %i.gt = call noundef zeroext i1 @_ZN6google8protobuf14DescriptorPool6Tables12AddExtensionEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(416) %i.gs, ptr noundef nonnull %i.go) ; 0 uses
  br label %bb.bg

bb.ac:                                            ; preds = %bb.w
  br i1 %i.do, label %bb.ad, label %.thread393

bb.ad:                                            ; preds = %bb.ac
  %i.gu = call ptr @_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 21, ptr nonnull @.str.172, i1 noundef zeroext true) ; 3 uses
  store ptr %i.gu, ptr %11, align 8, !tbaa !269
  %.pre373 = load i8, ptr %i.gu, align 1, !tbaa !135 ; 2 uses
  %i.gv = icmp eq i8 %.pre373, 0
  br i1 %i.gv, label %.thread393, label %bb.ae

.thread393:                                       ; preds = %bb.ac, %bb.ad
  %i.gw = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !137 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %.0.copyload.i.i.i252 = load i16, ptr %i.gz, align 1
  %i.ha = zext i16 %.0.copyload.i.i.i252 to i64   ; 2 uses
  %i.hb = xor i64 %i.ha, -1
  %i.hc = getelementptr inbounds i8, ptr %i.gy, i64 %i.hb
  %i.hd = load ptr, ptr %i.du, align 8, !tbaa !276
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = and i64 %i.he, -4
  %i.hg = inttoptr i64 %i.hf to ptr               ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !20
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !23
  store i64 %i.hj, ptr %13, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.hh, ptr %i.hk, align 8
  call void @_ZN6google8protobuf17DescriptorBuilder18AddNotDefinedErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationES5_(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.ha, ptr nonnull %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 2, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %13)
  br label %bb.bg

bb.ae:                                            ; preds = %bb.ad, %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit251
  %i.hl = phi i8 [ %.pre373, %bb.ad ], [ %i.es, %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit251 ]
  %i.hm = phi ptr [ %i.gu, %bb.ad ], [ %.sroa.0331.0, %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit251 ]
  %.not339 = icmp eq i8 %i.hl, 1
  br i1 %.not339, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !689
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 51
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !22, !range !49, !noundef !51
  %i.hr = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 3 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1
  %i.hu = shl nuw nsw i8 %i.hq, 4
  %i.hv = and i8 %i.ht, -17
  %i.hw = or disjoint i8 %i.hv, %i.hu
  store i8 %i.hw, ptr %i.hs, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !1281
  %i.hz = call noundef zeroext i1 @_ZNK6google8protobuf6Symbol13IsVisibleFromEPNS0_14FileDescriptorE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %i.hy)
  br i1 %i.hz, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ia = load ptr, ptr %0, align 8, !tbaa !799
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 73
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !1496, !range !49, !noundef !51
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ie = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !137 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %.0.copyload.i.i.i258 = load i16, ptr %i.ih, align 1
  %i.ii = zext i16 %.0.copyload.i.i.i258 to i64   ; 2 uses
  %i.ij = xor i64 %i.ii, -1
  %i.ik = getelementptr inbounds i8, ptr %i.ig, i64 %i.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  store ptr %11, ptr %15, align 8, !tbaa !119
  %i.il = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.il, align 8, !tbaa !1803
  %i.im = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoEE3$_3NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.im, align 8, !tbaa !1210
  store ptr %15, ptr %14, align 8, !tbaa !22
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.ii, ptr nonnull %i.ik, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 2, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.bg

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.in = load i32, ptr %i.d, align 8, !tbaa !3
  %i.io = and i32 %i.in, 1024
  %.not340 = icmp eq i32 %i.io, 0
  br i1 %.not340, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ip = load ptr, ptr %11, align 8, !tbaa !132  ; 3 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !135 ; 2 uses
  %i.ir = icmp eq i8 %i.iq, 1
  br i1 %i.ir, label %.thread394, label %bb.al

.thread394:                                       ; preds = %bb.ak
  %i.is = load ptr, ptr %i.b, align 8, !tbaa !337 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 2
  store i8 11, ptr %i.it, align 2, !tbaa !692
  br label %select.unfold

bb.al:                                            ; preds = %bb.ak
  %i.iu = icmp eq i8 %i.iq, 4
  %i.iv = load ptr, ptr %i.b, align 8, !tbaa !337 ; 3 uses
  br i1 %i.iu, label %.thread396, label %bb.am

.thread396:                                       ; preds = %bb.al
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  store i8 14, ptr %i.iw, align 2, !tbaa !692
  br label %select.unfold442

bb.am:                                            ; preds = %bb.al
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !137 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 2
  %.0.copyload.i.i.i261 = load i16, ptr %i.iz, align 1
  %i.ja = zext i16 %.0.copyload.i.i.i261 to i64   ; 2 uses
  %i.jb = xor i64 %i.ja, -1
  %i.jc = getelementptr inbounds i8, ptr %i.iy, i64 %i.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  store ptr %2, ptr %17, align 8, !tbaa !1727
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoEE3$_4NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.jd, align 8, !tbaa !1210
  store ptr %17, ptr %16, align 8, !tbaa !22
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.ja, ptr nonnull %i.jc, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 2, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  br label %bb.bg

bb.an:                                            ; preds = %bb.aj
  %.pre220 = load ptr, ptr %i.b, align 8, !tbaa !337 ; 8 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre220, i64 2
  %.pre374 = load i8, ptr %.phi.trans.insert, align 2, !tbaa !692 ; 2 uses
  %i.je = and i8 %.pre374, -2
  %i.jf = icmp eq i8 %i.je, 10
  br i1 %i.jf, label %._crit_edge421, label %bb.aq

._crit_edge421:                                   ; preds = %bb.an
  %.pre422 = load ptr, ptr %11, align 8, !tbaa !132 ; 2 uses
  %.pre423 = load i8, ptr %.pre422, align 1, !tbaa !135
  %.pre423.fr = freeze i8 %.pre423
  %i.jg = icmp eq i8 %.pre423.fr, 1
  br i1 %i.jg, label %select.unfold, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge421
  %i.jh = getelementptr inbounds nuw i8, ptr %.pre220, i64 48
  store ptr null, ptr %i.jh, align 8, !tbaa !22
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre220, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !137 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %.0.copyload.i.i.i265 = load i16, ptr %i.jk, align 1
  %i.jl = zext i16 %.0.copyload.i.i.i265 to i64   ; 2 uses
  %i.jm = xor i64 %i.jl, -1
  %i.jn = getelementptr inbounds i8, ptr %i.jj, i64 %i.jm
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #40
  store ptr %2, ptr %19, align 8, !tbaa !1727
  %i.jo = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoEE3$_5NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.jo, align 8, !tbaa !1210
  store ptr %19, ptr %18, align 8, !tbaa !22
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.jl, ptr nonnull %i.jn, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 2, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #40
  br label %bb.bg

select.unfold:                                    ; preds = %._crit_edge421, %.thread394
  %spec.select.i264.ph = phi ptr [ %i.ip, %.thread394 ], [ %.pre422, %._crit_edge421 ]
  %.ph439 = phi ptr [ %i.is, %.thread394 ], [ %.pre220, %._crit_edge421 ] ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.ph439, i64 48
  store ptr %spec.select.i264.ph, ptr %i.jp, align 8, !tbaa !22
  %i.jq = getelementptr inbounds nuw i8, ptr %.ph439, i64 1
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = trunc i8 %i.jr to i1
  br i1 %i.js, label %bb.ap, label %.thread199

bb.ap:                                            ; preds = %select.unfold
  %i.jt = getelementptr inbounds nuw i8, ptr %.ph439, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !137 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 2
  %.0.copyload.i.i.i268 = load i16, ptr %i.jv, align 1
  %i.jw = zext i16 %.0.copyload.i.i.i268 to i64   ; 2 uses
  %i.jx = xor i64 %i.jw, -1
  %i.jy = getelementptr inbounds i8, ptr %i.ju, i64 %i.jx
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.jw, ptr nonnull %i.jy, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 4, ptr noundef nonnull @.str.155)
  br label %.thread199

bb.aq:                                            ; preds = %bb.an
  %i.jz = icmp eq i8 %.pre374, 14
  br i1 %i.jz, label %._crit_edge, label %bb.bf

._crit_edge:                                      ; preds = %bb.aq
  %.pre419 = load ptr, ptr %11, align 8, !tbaa !132 ; 2 uses
  %.pre420 = load i8, ptr %.pre419, align 1, !tbaa !135
  %.pre420.fr = freeze i8 %.pre420
  %i.ka = icmp eq i8 %.pre420.fr, 4
  br i1 %i.ka, label %select.unfold442, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  %i.kb = getelementptr inbounds nuw i8, ptr %.pre220, i64 48
  store ptr null, ptr %i.kb, align 8, !tbaa !22
  %i.kc = getelementptr inbounds nuw i8, ptr %.pre220, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !137 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 2
  %.0.copyload.i.i.i272 = load i16, ptr %i.ke, align 1
  %i.kf = zext i16 %.0.copyload.i.i.i272 to i64   ; 2 uses
  %i.kg = xor i64 %i.kf, -1
  %i.kh = getelementptr inbounds i8, ptr %i.kd, i64 %i.kg
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #40
  store ptr %2, ptr %21, align 8, !tbaa !1727
  %i.ki = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoEE3$_6NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.ki, align 8, !tbaa !1210
  store ptr %21, ptr %20, align 8, !tbaa !22
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.kf, ptr nonnull %i.kh, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 2, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  br label %bb.bg

select.unfold442:                                 ; preds = %._crit_edge, %.thread396
  %spec.select.i271.ph = phi ptr [ %i.ip, %.thread396 ], [ %.pre419, %._crit_edge ]
  %.ph445 = phi ptr [ %i.iv, %.thread396 ], [ %.pre220, %._crit_edge ] ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.ph445, i64 48 ; 2 uses
  store ptr %spec.select.i271.ph, ptr %i.kj, align 8, !tbaa !22
  %i.kk = getelementptr inbounds nuw i8, ptr %.ph445, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !694 ; 6 uses
  %.not.i276 = icmp eq ptr %i.kl, null
  br i1 %.not.i276, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit, label %bb.as

bb.as:                                            ; preds = %select.unfold442
  %i.km = load atomic i32, ptr %i.kl acquire, align 4
  %.not.i314 = icmp eq i32 %i.km, 221
  br i1 %.not.i314, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit, label %bb.at, !prof !322

bb.at:                                            ; preds = %bb.as
  %i.kn = cmpxchg ptr %i.kl, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.ko = extractvalue { i32, i1 } %i.kn, 1
  br i1 %i.ko, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i: ; preds = %bb.at
  %i.kp = call noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull align 4 dereferenceable(4) %i.kl, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIRFvPKN6google8protobuf15FieldDescriptorEEJS7_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef 1)
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i: ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i, %bb.at
  call void @_ZNK6google8protobuf15FieldDescriptor20InternalTypeOnceInitEv(ptr noundef nonnull align 8 dereferenceable(88) %.ph445), !inline_history !698
  %i.kr = atomicrmw xchg ptr %i.kl, i32 221 release, align 4
  %i.ks = icmp eq i32 %i.kr, 94570706
  br i1 %i.ks, label %bb.au, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit

bb.au:                                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i
  call void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull align 4 dereferenceable(4) %i.kl, i1 noundef zeroext true)
  br label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit

_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit: ; preds = %bb.as, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, %bb.au, %select.unfold442
  %i.kt = load ptr, ptr %i.kj, align 8, !tbaa !22
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  %i.kv = load i8, ptr %i.ku, align 1
  %i.kw = trunc i8 %i.kv to i1
  %.pre376 = load ptr, ptr %i.b, align 8, !tbaa !337 ; 2 uses
  br i1 %i.kw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %.pre376, i64 1 ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 1
  %i.kz = and i8 %i.ky, -2
  store i8 %i.kz, ptr %i.kx, align 1
  %.pre375 = load ptr, ptr %i.b, align 8, !tbaa !337
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit
  %i.la = phi ptr [ %.pre375, %bb.av ], [ %.pre376, %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 1
  %i.lc = load i8, ptr %i.lb, align 1
  %i.ld = trunc i8 %i.lc to i1
  br i1 %i.ld, label %bb.ax, label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !276
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = and i64 %i.lg, -4
  %i.li = inttoptr i64 %i.lh to ptr
  %i.lj = call noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer12IsIdentifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.li)
  %i.lk = load ptr, ptr %i.b, align 8, !tbaa !337 ; 2 uses
  br i1 %i.lj, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !137 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 2
  %.0.copyload.i.i.i277 = load i16, ptr %i.ln, align 1
  %i.lo = zext i16 %.0.copyload.i.i.i277 to i64   ; 2 uses
  %i.lp = xor i64 %i.lo, -1
  %i.lq = getelementptr inbounds i8, ptr %i.lm, i64 %i.lp
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.lo, ptr nonnull %i.lq, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 4, ptr noundef nonnull @.str.173)
  br label %.thread199

bb.az:                                            ; preds = %bb.ax
  %i.lr = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lk)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !674
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 168
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !741
  %i.lw = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.lx = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lw)
  %i.ly = load ptr, ptr %i.le, align 8, !tbaa !276
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = and i64 %i.lz, -4
  %i.mb = inttoptr i64 %i.ma to ptr               ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !20
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.me = load i64, ptr %i.md, align 8, !tbaa !23
  %i.mf = call fastcc ptr @_ZNK6google8protobuf20FileDescriptorTables16FindNestedSymbolINS0_12_GLOBAL__N_115ParentNameQueryEEEDaPKvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %i.lv, ptr noundef %i.lx, i64 %i.me, ptr %i.mc) ; 3 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !135
  switch i8 %i.mg, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit [
    i8 5, label %bb.bb
    i8 6, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %i.mh = getelementptr inbounds i8, ptr %i.mf, i64 -1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %.ph = phi ptr [ %i.mh, %bb.ba ], [ %i.mf, %bb.az ] ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.ph, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !465
  %i.mk = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.ml = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.mk)
  %i.mm = icmp eq ptr %i.mj, %i.ml
  br i1 %i.mm, label %bb.bc, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit

bb.bc:                                            ; preds = %bb.bb
  %i.mn = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 80
  store ptr %.ph, ptr %i.mo, align 8, !tbaa !22
  br label %.thread199

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit: ; preds = %bb.az, %bb.bb
  %i.mp = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !137 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 2
  %.0.copyload.i.i.i282 = load i16, ptr %i.ms, align 1
  %i.mt = zext i16 %.0.copyload.i.i.i282 to i64   ; 2 uses
  %i.mu = xor i64 %i.mt, -1
  %i.mv = getelementptr inbounds i8, ptr %i.mr, i64 %i.mu
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #40
  store ptr %i.b, ptr %23, align 8, !tbaa !731
  %i.mw = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %2, ptr %i.mw, align 8, !tbaa !1727
  %i.mx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoEE3$_7NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.mx, align 8, !tbaa !1210
  store ptr %23, ptr %22, align 8, !tbaa !22
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.mt, ptr nonnull %i.mv, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 4, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br label %.thread199

bb.bd:                                            ; preds = %bb.aw
  %i.my = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.la)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !906
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %bb.be, label %.thread199

bb.be:                                            ; preds = %bb.bd
  %i.nc = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.nd = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.nc)
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 56
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !466
  %i.ng = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 80
  store ptr %i.nf, ptr %i.nh, align 8, !tbaa !22
  br label %.thread199

bb.bf:                                            ; preds = %bb.aq
  %i.ni = getelementptr inbounds nuw i8, ptr %.pre220, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !137 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 2
  %.0.copyload.i.i.i285 = load i16, ptr %i.nk, align 1
  %i.nl = zext i16 %.0.copyload.i.i.i285 to i64   ; 2 uses
  %i.nm = xor i64 %i.nl, -1
  %i.nn = getelementptr inbounds i8, ptr %i.nj, i64 %i.nm
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.nl, ptr nonnull %i.nn, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 2, ptr noundef nonnull @.str.174)
  br label %.thread199

.thread199:                                       ; preds = %bb.bc, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit, %bb.bf, %bb.bd, %bb.be, %bb.ay, %select.unfold, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.bj

bb.bg:                                            ; preds = %.critedge, %bb.ab, %bb.ar, %bb.ao, %bb.am, %bb.ai, %.thread393
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.cu

bb.bh:                                            ; preds = %bb.q
  %i.no = load ptr, ptr %i.b, align 8, !tbaa !337 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 2
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf17DescriptorBuilder17OptionInterpreter21InterpretSingleOptionEPNS0_7MessageERKSt6vectorIiSaIiEES9_b:bb.a
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #44
          to label %.noexc111 unwind label %bb.n

.noexc111:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #45
          to label %.noexc112 unwind label %bb.n  ; 5 uses

.noexc112:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.cb, ptr %14, align 8, !tbaa !728
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !951
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bw ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !730
  %i.cf = icmp samesign ugt i64 %i.bw, 4
  br i1 %i.cf, label %bb.k, label %bb.l, !prof !1843

bb.k:                                             ; preds = %.noexc112
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cb, ptr align 4 %i.bt, i64 %i.bw, i1 false)
  br label %.preheader

bb.l:                                             ; preds = %.noexc112
  %i.cg = icmp eq i64 %i.bw, 4
  br i1 %i.cg, label %bb.m, label %.preheader

bb.m:                                             ; preds = %bb.l
  %i.ch = load i32, ptr %i.bt, align 4, !tbaa !3
  store i32 %i.ch, ptr %i.cb, align 4, !tbaa !3
  br label %.preheader

.preheader:                                       ; preds = %bb.m, %bb.l, %bb.k, %.thread231
  %i.ci = phi ptr [ %i.ce, %bb.k ], [ %i.ce, %bb.l ], [ %i.ce, %bb.m ], [ %i.bz, %.thread231 ] ; 4 uses
  %i.cj = phi ptr [ %i.cd, %bb.k ], [ %i.cd, %bb.l ], [ %i.cd, %bb.m ], [ %i.by, %.thread231 ]
  %i.ck = phi ptr [ %i.cc, %bb.k ], [ %i.cc, %bb.l ], [ %i.cc, %bb.m ], [ %i.bx, %.thread231 ] ; 4 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !951
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !1955
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !554
  %.not83333 = icmp sgt i32 %i.co, 0
  br i1 %.not83333, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 8
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit165

bb.o:                                             ; preds = %.lr.ph, %bb.bp
  %i.cv = phi ptr [ %.049101, %.lr.ph ], [ %i.kc, %bb.bp ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bp ] ; 4 uses
  %.sroa.0200.0336 = phi ptr [ null, %.lr.ph ], [ %.sroa.0200.2, %bb.bp ] ; 29 uses
  %.sroa.10.0335 = phi ptr [ null, %.lr.ph ], [ %.sroa.10.1, %bb.bp ] ; 7 uses
  %.sroa.15.0334 = phi ptr [ null, %.lr.ph ], [ %.sroa.15.2, %bb.bp ] ; 24 uses
  %i.cw = load ptr, ptr %0, align 8, !tbaa !1933  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 360
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 368
  store i64 0, ptr %i.cy, align 8, !tbaa !23
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !20
  store i8 0, ptr %i.cz, align 1, !tbaa !22
  %i.da = load ptr, ptr %i.c, align 8, !tbaa !1955 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !557
  %i.dd = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.de = and i64 %i.dd, 1                        ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  %i.dg = add i64 %i.dd, -1
  %i.dh = inttoptr i64 %i.dg to ptr               ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv
  %.0.i.i.i.i.i113 = select i1 %i.df, ptr %i.db, ptr %i.dj
  %i.dk = load ptr, ptr %.0.i.i.i.i.i113, align 8, !tbaa !323
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = and i64 %i.dn, -4
  %i.dp = inttoptr i64 %i.do to ptr               ; 6 uses
  %i.dq = load i64, ptr %i.bq, align 8, !tbaa !23
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  store i64 1, ptr %15, align 8
  store ptr @.str.73, ptr %i.cp, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %13, ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1955 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre393 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !557
  %.pre401 = ptrtoint ptr %.pre393 to i64         ; 2 uses
  %.pre402 = and i64 %.pre401, 1
  %.pre404 = add i64 %.pre401, -1
  %.pre406 = inttoptr i64 %.pre404 to ptr
  br label %bb.s

.loopexit.loopexit:                               ; preds = %bb.aa, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i, %bb.bo, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i
  %.sroa.15.1.ph = phi ptr [ %.sroa.15.0334, %bb.aa ], [ %.sroa.10.0335, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.15.6, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i ], [ %.sroa.15.6, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i ], [ %.sroa.15.6, %bb.bo ]
  %.sroa.0200.1.ph = phi ptr [ %.sroa.0200.0336, %bb.aa ], [ %.sroa.0200.0336, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0200.6, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i ], [ %.sroa.0200.6, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i ], [ %.sroa.0200.6, %bb.bo ]
  %lpad.loopexit255 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %bb.bi
  %lpad.loopexit.split-lp256 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %.loopexit

bb.s:                                             ; preds = %bb.q, %bb.o
  %.pre-phi407 = phi ptr [ %.pre406, %bb.q ], [ %i.dh, %bb.o ]
  %.pre-phi403 = phi i64 [ %.pre402, %bb.q ], [ %i.de, %bb.o ]
  %i.dt = phi ptr [ %.pre, %bb.q ], [ %i.da, %bb.o ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = icmp eq i64 %.pre-phi403, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre-phi407, i64 8
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv
  %.0.i.i.i.i.i114 = select i1 %i.dv, ptr %i.du, ptr %i.dx
  %i.dy = load ptr, ptr %.0.i.i.i.i.i114, align 8, !tbaa !323
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !22, !range !49, !noundef !51
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  store i64 1, ptr %16, align 8
  store ptr @.str.226, ptr %i.cr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  %i.ec = load ptr, ptr %i.dp, align 8, !tbaa !20
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !23
  store i64 %i.ee, ptr %17, align 8
  store ptr %i.ec, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #40
  store i64 1, ptr %18, align 8
  store ptr @.str.227, ptr %i.ct, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_(ptr noundef nonnull %13, ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(48) %18)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  %i.ef = load ptr, ptr %0, align 8, !tbaa !1933  ; 2 uses
  %i.eg = load ptr, ptr %i.dp, align 8, !tbaa !20 ; 2 uses
  %i.eh = load i64, ptr %i.ed, align 8, !tbaa !23 ; 2 uses
  %i.ei = load ptr, ptr %i.cl, align 8, !tbaa !1956 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !23
  %i.em = invoke ptr @_ZN6google8protobuf17DescriptorBuilder25LookupSymbolNoPlaceholderESt17basic_string_viewIcSt11char_traitsIcEES5_NS1_11ResolveModeEb(ptr noundef nonnull align 8 dereferenceable(396) %i.ef, i64 %i.eh, ptr %i.eg, i64 %i.el, ptr %i.ej, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc118 unwind label %bb.y, !inline_history !1322 ; 2 uses

.noexc118:                                        ; preds = %bb.u
  %i.en = load i8, ptr %i.em, align 1, !tbaa !135 ; 2 uses
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %bb.v, label %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit

bb.v:                                             ; preds = %.noexc118
  %i.ep = load ptr, ptr %i.ef, align 8, !tbaa !799 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 66
  %i.er = load i8, ptr %i.eq, align 2, !tbaa !1299, !range !49, !noundef !51
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.w, label %.thread232

bb.w:                                             ; preds = %bb.v
  %i.et = invoke ptr @_ZNK6google8protobuf14DescriptorPool27NewPlaceholderWithMutexHeldESt17basic_string_viewIcSt11char_traitsIcEENS1_15PlaceholderTypeE(ptr noundef nonnull align 8 dereferenceable(120) %i.ep, i64 %i.eh, ptr %i.eg, i32 noundef 0)
          to label %._ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exitthread-pre-split_crit_edge unwind label %bb.y, !inline_history !1322 ; 2 uses

._ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exitthread-pre-split_crit_edge: ; preds = %bb.w
  %.pr248.pre = load i8, ptr %i.et, align 1, !tbaa !135
  br label %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit

_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit: ; preds = %._ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exitthread-pre-split_crit_edge, %.noexc118
  %i.eu = phi i8 [ %i.en, %.noexc118 ], [ %.pr248.pre, %._ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exitthread-pre-split_crit_edge ]
  %.sroa.0227.0 = phi ptr [ %i.em, %.noexc118 ], [ %i.et, %._ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exitthread-pre-split_crit_edge ]
  %.fr = freeze i8 %i.eu
  %i.ev = icmp eq i8 %.fr, 2
  br i1 %i.ev, label %.thread238, label %.thread232

bb.x:                                             ; preds = %bb.t
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %.loopexit

bb.y:                                             ; preds = %bb.w, %bb.u
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.z:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #40
  %i.ey = load ptr, ptr %i.dp, align 8, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !23
  store i64 %i.fa, ptr %19, align 8
  store ptr %i.ey, ptr %i.cq, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %13, ptr noundef nonnull align 8 dereferenceable(48) %19)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #40
  %i.fb = load ptr, ptr %i.dp, align 8, !tbaa !20
  %i.fc = load i64, ptr %i.ez, align 8, !tbaa !23
  %i.fd = invoke noundef ptr @_ZNK6google8protobuf10Descriptor15FindFieldByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %i.cv, i64 %i.fc, ptr %i.fb)
          to label %bb.ac unwind label %.loopexit.loopexit ; 2 uses

bb.ab:                                            ; preds = %bb.z
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #40
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %i.ff = icmp eq ptr %i.fd, null
  br i1 %i.ff, label %.thread232, label %..thread238_crit_edge

..thread238_crit_edge:                            ; preds = %bb.ac
  %.pre395 = load ptr, ptr %i.a, align 8, !tbaa !702
  br label %.thread238

.thread232:                                       ; preds = %bb.v, %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit, %bb.ac
  %i.fg = load ptr, ptr %0, align 8, !tbaa !1933  ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !799
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 66
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !1299, !range !49, !noundef !51
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %.invoke, label %bb.ad

.invoke:                                          ; preds = %.thread232, %_ZN6google8protobuf17DescriptorBuilder18get_is_placeholderEPKNS0_10DescriptorE.exit
  %i.fl = load ptr, ptr %i.c, align 8, !tbaa !1955
  invoke void @_ZN6google8protobuf17DescriptorBuilder17OptionInterpreter22AddWithoutInterpretingERKNS0_19UninterpretedOptionEPNS0_7MessageE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(88) %i.fl, ptr noundef nonnull %1)
          to label %.thread105 unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %.thread232
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 368
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !23
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #40
  store ptr %13, ptr %20, align 8, !tbaa !320
  %i.fp = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %0, ptr %i.fp, align 8, !tbaa !1958
  %i.fq = invoke noundef zeroext i1 @_ZN6google8protobuf17DescriptorBuilder17OptionInterpreter12AddNameErrorEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %20, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder17OptionInterpreter21InterpretSingleOptionEPNS4_7MessageERKSt6vectorIiSaIiEESD_bE3$_2NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #40
  br label %.thread105

bb.ag:                                            ; preds = %bb.ae
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #40
  br label %.loopexit

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #40
  store ptr %13, ptr %21, align 8, !tbaa !320
  %i.fs = invoke noundef zeroext i1 @_ZN6google8protobuf17DescriptorBuilder17OptionInterpreter12AddNameErrorEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %21, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder17OptionInterpreter21InterpretSingleOptionEPNS4_7MessageERKSt6vectorIiSaIiEESD_bE3$_3NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  br label %.thread105

bb.aj:                                            ; preds = %bb.ah
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  br label %.loopexit

.thread238:                                       ; preds = %..thread238_crit_edge, %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit
  %i.fu = phi ptr [ %.pre395, %..thread238_crit_edge ], [ %i.cv, %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit ] ; 2 uses
  %storemerge240 = phi ptr [ %i.fd, %..thread238_crit_edge ], [ %.sroa.0227.0, %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit ] ; 11 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %storemerge240, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !430 ; 3 uses
  %.not78 = icmp eq ptr %i.fw, %i.fu
  br i1 %.not78, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %.thread238
  %.not.i = icmp eq ptr %i.fw, null
  br i1 %.not.i, label %_ZN6google8protobuf17DescriptorBuilder18get_is_placeholderEPKNS0_10DescriptorE.exit.thread, label %_ZN6google8protobuf17DescriptorBuilder18get_is_placeholderEPKNS0_10DescriptorE.exit

_ZN6google8protobuf17DescriptorBuilder18get_is_placeholderEPKNS0_10DescriptorE.exit: ; preds = %bb.ak
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  %i.fy = load i16, ptr %i.fx, align 1
  %i.fz = trunc i16 %i.fy to i1
  br i1 %i.fz, label %.invoke, label %_ZN6google8protobuf17DescriptorBuilder18get_is_placeholderEPKNS0_10DescriptorE.exit.thread

_ZN6google8protobuf17DescriptorBuilder18get_is_placeholderEPKNS0_10DescriptorE.exit.thread: ; preds = %bb.ak, %_ZN6google8protobuf17DescriptorBuilder18get_is_placeholderEPKNS0_10DescriptorE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #40
  store ptr %13, ptr %22, align 8, !tbaa !320
  %i.ga = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.a, ptr %i.ga, align 8, !tbaa !1550
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.gb = load ptr, ptr %0, align 8, !tbaa !1933
  %i.gc = load ptr, ptr %i.cl, align 8, !tbaa !1956 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !20
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !23
  %i.gh = load ptr, ptr %i.c, align 8, !tbaa !1955
  store ptr %22, ptr %7, align 8, !tbaa !22
  %.sroa.22.0..sroa_idx.i.i496 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder17OptionInterpreter21InterpretSingleOptionEPNS4_7MessageERKSt6vectorIiSaIiEESD_bE3$_4NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %.sroa.22.0..sroa_idx.i.i496, align 8, !tbaa !323
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %i.gb, i64 %i.gg, ptr %i.ge, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i32 noundef 7, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %7)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %_ZN6google8protobuf17DescriptorBuilder18get_is_placeholderEPKNS0_10DescriptorE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  br label %.thread105

bb.am:                                            ; preds = %_ZN6google8protobuf17DescriptorBuilder18get_is_placeholderEPKNS0_10DescriptorE.exit.thread
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  br label %.loopexit

bb.an:                                            ; preds = %.thread238
  %i.gj = getelementptr inbounds nuw i8, ptr %storemerge240, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !343 ; 2 uses
  %i.gl = load ptr, ptr %i.ck, align 8, !tbaa !951 ; 4 uses
  %i.gm = load ptr, ptr %i.ci, align 8, !tbaa !730
  %.not.i.i = icmp eq ptr %i.gl, %i.gm
  br i1 %.not.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !3
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store ptr %i.gn, ptr %i.ck, align 8, !tbaa !951
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ap:                                            ; preds = %bb.an
  %i.go = load ptr, ptr %14, align 8, !tbaa !728  ; 4 uses
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq                    ; 6 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775804
  br i1 %i.gs, label %bb.aq, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.283) #44
          to label %.noexc124 unwind label %.loopexit.split-lp258

.noexc124:                                        ; preds = %bb.aq
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ap
  %i.gt = ashr exact i64 %i.gr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = call i64 @llvm.umin.i64(i64 %i.gu, i64 2305843009213693951)
  %i.gx = select i1 %i.gv, i64 2305843009213693951, i64 %i.gw ; 3 uses
  %.not.i.i.i.i123 = icmp ne i64 %i.gx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i123)
  %i.gy = shl nuw nsw i64 %i.gx, 2
  %i.gz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #45
          to label %.noexc125 unwind label %.loopexit257 ; 4 uses

.noexc125:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 %i.gr ; 2 uses
  store i32 %i.gk, ptr %i.ha, align 4, !tbaa !3
  %i.hb = icmp sgt i64 %i.gr, 0
  br i1 %i.hb, label %bb.ar, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ar:                                            ; preds = %.noexc125
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gz, ptr align 4 %i.go, i64 %i.gr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ar, %.noexc125
end_hunk_5
