inline.NumInlined: 22184
inline.NumDeleted: 7878
begin_hunk_0_@_ZNK6google8protobuf14DescriptorPool6Tables10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !23
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !158
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !146 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !161
  %i.cr = sext i32 %i.cq to i64
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.co, i64 %i.cr)
  br label %_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.62, i32 noundef 812, ptr noundef nonnull @.str.67) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i unwind label %bb.p

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i: ; preds = %bb.o
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

_ZNK6google8protobuf6Symbol9full_nameEv.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i.i.i.i, %bb.j, %bb.i, %bb.h, %bb.g
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
  %.tr.i = phi ptr [ %i.aq, %.thread.i ], [ %0, %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit ] ; 2 uses
  %i.ab = call ptr @memchr(ptr noundef %.sroa.24.0.copyload, i32 noundef 46, i64 noundef %.sroa.03.0.copyload) #40, !inline_history !272 ; 2 uses
  %.not3538.i = icmp eq ptr %i.ab, null
  br i1 %.not3538.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %7 = ptrtoint ptr %i.ab to i64
  %8 = sub i64 %7, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr.i, i64 56
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16.i, %.lr.ph.i
  %.0936.i = phi i64 [ %8, %.lr.ph.i ], [ %i.ao, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16.i ] ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.sroa.03.0.copyload, i64 %.0936.i)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !114
  %i.ae = invoke ptr @_ZNK6google8protobuf14DescriptorPool6Tables10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.ad, i64 %.sroa.speculated.i.i, ptr %.sroa.24.0.copyload)
          to label %.noexc21 unwind label %.loopexit, !inline_history !272

.noexc21:                                         ; preds = %bb.j
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !135 ; 2 uses
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %.noexc21
  %i.ah = add i8 %i.af, -9
  %spec.select.i.i = icmp ult i8 %i.ah, 2
  br i1 %spec.select.i.i, label %bb.l, label %_ZNK6google8protobuf14DescriptorPool22IsSubSymbolOfBuiltTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.l:                                             ; preds = %bb.k
  %i.ai = add nuw i64 %.0936.i, 1                 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, %.sroa.03.0.copyload
  br i1 %i.aj, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16.i, label %.thread.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16.i:   ; preds = %bb.l
  %i.ak = sub nuw i64 %.sroa.03.0.copyload, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.24.0.copyload, i64 %i.ai
  %i.am = call ptr @memchr(ptr noundef nonnull %i.al, i32 noundef 46, i64 noundef %i.ak) #40, !inline_history !272 ; 2 uses
  %.not.i17.i = icmp eq ptr %i.am, null
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.aa                    ; 2 uses
  %.not.i20 = icmp eq i64 %i.ao, -1
  %or.cond.i = select i1 %.not.i17.i, i1 true, i1 %.not.i20
  br i1 %or.cond.i, label %.thread.i, label %bb.j, !llvm.loop !273

.thread.i:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16.i, %bb.l, %.noexc21, %tailrecurse.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr.i, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !264 ; 2 uses
  %.not13.i = icmp eq ptr %i.aq, null
  br i1 %.not13.i, label %.loopexit30, label %tailrecurse.i

.loopexit30:                                      ; preds = %.thread.i, %_ZN6google8protobuf14DescriptorPool18DeferredValidation11CreateProtoEv.exit
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !263 ; 2 uses
  %i.as = load ptr, ptr %5, align 8, !tbaa !20
  %i.at = load i64, ptr %i.t, align 8, !tbaa !23
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !274
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i64 %i.at, ptr %i.as, ptr noundef nonnull %.0.i)
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %.loopexit30
  br i1 %i.ax, label %bb.n, label %_ZNK6google8protobuf14DescriptorPool22IsSubSymbolOfBuiltTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !276
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = and i64 %i.bb, -4
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !23
  %i.bh = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool6Tables8FindFileESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.ay, i64 %i.bg, ptr %i.be)
          to label %bb.o unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %bb.p, label %_ZNK6google8protobuf14DescriptorPool22IsSubSymbolOfBuiltTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.p:                                             ; preds = %bb.o
  %i.bi = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool21BuildFileFromDatabaseERKNS0_19FileDescriptorProtoERNS1_18DeferredValidationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(200) %.0.i, ptr noundef nonnull align 8 dereferenceable(736) %3)
          to label %bb.q unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZNK6google8protobuf14DescriptorPool22IsSubSymbolOfBuiltTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.u

_ZNK6google8protobuf14DescriptorPool22IsSubSymbolOfBuiltTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.k, %bb.q, %bb.o, %bb.m
  %i.bk = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooIS9_EESt4pairINSE_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.245") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc24 unwind label %bb.t

.noexc24:                                         ; preds = %_ZNK6google8protobuf14DescriptorPool22IsSubSymbolOfBuiltTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !296, !range !49, !alias.scope !299, !noundef !51
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.r, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertEOS9_.exit

bb.r:                                             ; preds = %.noexc24
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !299 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.bp, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !16
  %i.bq = load ptr, ptr %5, align 8, !tbaa !20, !noalias !299 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.k
  br i1 %i.br, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bs = load i64, ptr %i.t, align 8, !tbaa !23, !noalias !299 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.bu, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  store ptr %i.bq, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !20
  %i.bv = load i64, ptr %i.k, align 8, !tbaa !22, !noalias !299
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !22
  %.pre = load i64, ptr %i.t, align 8, !tbaa !23, !noalias !299
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s
  %i.bw = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bs, %bb.s ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !23
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
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.v

bb.u:                                             ; preds = %bb.q, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertEOS9_.exit
  %.0 = phi i1 [ false, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertEOS9_.exit ], [ true, %bb.q ]
  %i.bz = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.k
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.cb = load i64, ptr %i.k, align 8, !tbaa !22
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.w

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.t
  %.pn = phi { ptr, i32 } [ %i.by, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cd = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.k
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.v
  %i.cf = load i64, ptr %i.k, align 8, !tbaa !22
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #41
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

end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf14DescriptorPool21BuildFileFromDatabaseERKNS0_19FileDescriptorProtoERNS1_18DeferredValidationE:bb.a
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store ptr %i.b, ptr %5, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.p, align 8, !tbaa !790
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.q, align 8, !tbaa !793
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.r, align 8, !tbaa !271
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !608  ; 3 uses
  %.not7 = icmp eq ptr %i.t, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %5, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNK6google8protobuf14DescriptorPool21BuildFileFromDatabaseERKNS4_19FileDescriptorProtoERNS5_18DeferredValidationEE3$_0vJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !794
  call void %i.w(ptr noundef nonnull align 16 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !795
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
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
  %.tr = phi ptr [ %i.q, %.thread ], [ %0, %bb.a ] ; 2 uses
  %i.b = tail call ptr @memchr(ptr noundef %2, i32 noundef 46, i64 noundef %1) #40 ; 2 uses
  %.not3538 = icmp eq ptr %i.b, null
  br i1 %.not3538, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %tailrecurse
  %3 = ptrtoint ptr %i.b to i64
  %4 = sub i64 %3, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16, %.lr.ph
  %.0936 = phi i64 [ %4, %.lr.ph ], [ %i.o, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16 ] ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %.0936)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = tail call ptr @_ZNK6google8protobuf14DescriptorPool6Tables10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.d, i64 %.sroa.speculated.i, ptr %2)
  %i.f = load i8, ptr %i.e, align 1, !tbaa !135   ; 2 uses
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i8 %i.f, -9
  %spec.select.i = icmp ult i8 %i.h, 2
  br i1 %spec.select.i, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i64 %.0936, 1                    ; 3 uses
  %i.j = icmp ult i64 %i.i, %1
  br i1 %i.j, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16, label %.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16:     ; preds = %bb.d
  %i.k = sub nuw i64 %1, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.i
  %i.m = tail call ptr @memchr(ptr noundef nonnull %i.l, i32 noundef 46, i64 noundef %i.k) #40 ; 2 uses
  %.not.i17 = icmp eq ptr %i.m, null
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.a                       ; 2 uses
  %.not = icmp eq i64 %i.o, -1
  %or.cond = select i1 %.not.i17, i1 true, i1 %.not
  br i1 %or.cond, label %.thread, label %bb.b, !llvm.loop !273

.thread:                                          ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i16, %bb.d, %bb.b, %tailrecurse
  %i.p = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !264  ; 2 uses
  %.not13 = icmp eq ptr %i.q, null
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
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
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
  %i.k = tail call ptr @memchr(ptr noundef nonnull %2, i32 noundef 46, i64 noundef %1) #40 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %11 = ptrtoint ptr %i.k to i64
  %12 = ptrtoint ptr %2 to i64
  %13 = sub i64 %11, %12
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %13)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread: ; preds = %bb.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.c
  %.sroa.067.0 = phi i64 [ %.sroa.speculated.i, %bb.c ], [ %1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ 0, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.m, ptr %7, align 8, !tbaa !16
  %i.n = icmp eq ptr %4, null
  %i.o = icmp ne i64 %3, 0
  %or.cond.i.i.i = and i1 %i.o, %i.n
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.d

.noexc:                                           ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %3, ptr %i.a, align 8, !tbaa !19
  %i.p = icmp ugt i64 %3, 15
  br i1 %i.p, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %7, align 8, !tbaa !20
  %i.r = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.r, ptr %i.m, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.s = phi ptr [ %i.q, %.noexc.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  switch i64 %3, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.t = load i8, ptr %4, align 1, !tbaa !22
  store i8 %i.t, ptr %i.s, align 1, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %4, i64 %3, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.u = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 20 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !23
  %i.w = load ptr, ptr %7, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.y = icmp eq i32 %5, 1
  %i.z = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef signext 46, i64 noundef -1) #40 ; 4 uses
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ac = icmp ult i64 %.sroa.067.0, %1
  %.fr = freeze i1 %i.ac
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us
  %i.ad = phi i64 [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us ], [ %i.z, %.lr.ph ] ; 4 uses
  %i.ae = load i64, ptr %i.v, align 8, !tbaa !23  ; 2 uses
  %i.af = icmp ugt i64 %i.ad, %i.ae
  br i1 %i.af, label %.split.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !23
  %i.ag = load ptr, ptr %7, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  store i8 0, ptr %i.ah, align 1, !tbaa !22
  %i.ai = load i64, ptr %i.v, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  store i64 1, ptr %8, align 8
  store ptr @.str.73, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store i64 %.sroa.067.0, ptr %9, align 8, !tbaa !19
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i49, align 8, !tbaa !270
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %bb.i unwind label %.split115.us

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  %i.aj = load ptr, ptr %7, align 8, !tbaa !20
  %i.ak = load i64, ptr %i.v, align 8, !tbaa !23
  %i.al = invoke ptr @_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.ak, ptr %i.aj, i1 noundef zeroext %6)
          to label %bb.j unwind label %.loopexit39.loopexit.split.us

bb.j:                                             ; preds = %bb.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !135
  switch i8 %i.am, label %bb.k [
    i8 7, label %_ZNK6google8protobuf6Symbol11IsAggregateEv.exit.thread
    i8 4, label %_ZNK6google8protobuf6Symbol11IsAggregateEv.exit.thread
    i8 1, label %_ZNK6google8protobuf6Symbol11IsAggregateEv.exit.thread
    i8 10, label %_ZNK6google8protobuf6Symbol11IsAggregateEv.exit.thread
    i8 9, label %_ZNK6google8protobuf6Symbol11IsAggregateEv.exit.thread
  ]

bb.k:                                             ; preds = %bb.j
  %i.an = load i64, ptr %i.v, align 8, !tbaa !23  ; 2 uses
  %i.ao = icmp ugt i64 %i.ai, %i.an
  br i1 %i.ao, label %.split119.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us: ; preds = %bb.k
  store i64 %i.ai, ptr %i.v, align 8, !tbaa !23
  %i.ap = load ptr, ptr %7, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ai
  store i8 0, ptr %i.aq, align 1, !tbaa !22
  %i.ar = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef signext 46, i64 noundef -1) #40 ; 2 uses
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %._crit_edge, label %.lr.ph.split.us

.split115.us:                                     ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.split115

.loopexit39.loopexit.split.us:                    ; preds = %bb.i
  %lpad.loopexit90.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit39

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.y, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us122
  %i.au = phi i64 [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us122 ], [ %i.z, %.lr.ph.split ] ; 4 uses
  %i.av = load i64, ptr %i.v, align 8, !tbaa !23  ; 2 uses
  %i.aw = icmp ugt i64 %i.au, %i.av
  br i1 %i.aw, label %.split.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.split.us
  store i64 %i.au, ptr %i.v, align 8, !tbaa !23
  %i.ax = load ptr, ptr %7, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au
  store i8 0, ptr %i.ay, align 1, !tbaa !22
  %i.az = load i64, ptr %i.v, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  store i64 1, ptr %8, align 8
  store ptr @.str.73, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store i64 %.sroa.067.0, ptr %9, align 8, !tbaa !19
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i49, align 8, !tbaa !270
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %bb.m unwind label %.split115.split.us

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  %i.ba = load ptr, ptr %7, align 8, !tbaa !20
  %i.bb = load i64, ptr %i.v, align 8, !tbaa !23
  %i.bc = invoke ptr @_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.bb, ptr %i.ba, i1 noundef zeroext %6)
          to label %bb.n unwind label %.loopexit39.loopexit.split.split.us ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !135
  switch i8 %i.bd, label %bb.o [
    i8 1, label %.critedge
    i8 4, label %.critedge
  ]

bb.o:                                             ; preds = %bb.n
  %i.be = load i64, ptr %i.v, align 8, !tbaa !23  ; 2 uses
  %i.bf = icmp ugt i64 %i.az, %i.be
  br i1 %i.bf, label %.split119.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us122: ; preds = %bb.o
  store i64 %i.az, ptr %i.v, align 8, !tbaa !23
  %i.bg = load ptr, ptr %7, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.az
  store i8 0, ptr %i.bh, align 1, !tbaa !22
  %i.bi = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef signext 46, i64 noundef -1) #40 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, -1
  br i1 %i.bj, label %._crit_edge, label %.lr.ph.split.split.us

.split115.split.us:                               ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.split115

.loopexit39.loopexit.split.split.us:              ; preds = %bb.m
  %lpad.loopexit90.us128 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit39

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us, %bb.g
  %i.bl = invoke ptr @_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i1 noundef zeroext %6)
          to label %.critedge unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %.split.us
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit39
end_hunk_2
