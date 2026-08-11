inline.NumInlined: 22466
inline.NumDeleted: 7935
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN6google8protobuf17DescriptorBuilder28CheckFieldJsonNameUniquenessESt17basic_string_viewIcSt11char_traitsIcEERKNS0_15DescriptorProtoEPKNS0_10DescriptorEb:bb.a
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.5.0.ph, i64 72
  %i.hb = load i8, ptr %i.ha, align 8, !tbaa !1724, !range !50, !noundef !52
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %.thread, label %bb.ao

.thread:                                          ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store ptr %9, ptr %13, align 8, !tbaa !1726
  store ptr %i.gx, ptr %i.ab, align 8, !tbaa !1726
  store ptr %i.ap, ptr %i.ac, align 8, !tbaa !1725
  br label %bb.aj

bb.ah:                                            ; preds = %.loopexit.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store ptr %9, ptr %13, align 8, !tbaa !1726
  store ptr %i.gx, ptr %i.ab, align 8, !tbaa !1726
  store ptr %i.ap, ptr %i.ac, align 8, !tbaa !1725
  br i1 %i.gz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.5.0.ph, i64 72
  %i.he = load i8, ptr %i.hd, align 8, !tbaa !1724, !range !50, !noundef !52
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = xor i1 %i.hf, true
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %.thread
  %i.hh = phi i1 [ true, %bb.ah ], [ %i.hg, %bb.ai ], [ true, %.thread ]
  %i.hi = load ptr, ptr %i.ad, align 8, !tbaa !1304
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 60
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !23
  %i.hl = icmp eq i32 %i.hk, 2
  %or.cond4 = select i1 %i.hl, i1 %i.hh, i1 false
  br i1 %or.cond4, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder28CheckFieldJsonNameUniquenessESt17basic_string_viewIcSt11char_traitsIcEERKNS4_15DescriptorProtoEPKNS4_10DescriptorEbE3$_1NSt7__cxx1112basic_stringIcS8_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.af, align 8, !tbaa !1213
  store ptr %13, ptr %14, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf17DescriptorBuilder10AddWarningESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i32 noundef 0, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %14)
          to label %bb.an unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %.body58

bb.am:                                            ; preds = %bb.aj
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder28CheckFieldJsonNameUniquenessESt17basic_string_viewIcSt11char_traitsIcEERKNS4_15DescriptorProtoEPKNS4_10DescriptorEbE3$_1NSt7__cxx1112basic_stringIcS8_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.ae, align 8, !tbaa !1213
  store ptr %13, ptr %15, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i32 noundef 0, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %15)
          to label %bb.an unwind label %bb.al

bb.an:                                            ; preds = %bb.am, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ag, %bb.an, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SD_EEE11try_emplaceIS9_Li0EJRSD_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISE_SF_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSR_8iteratorEbERKSP_DpOT1_.exit, %bb.u
  %i.hn = load ptr, ptr %i.s, align 8, !tbaa !21  ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.t
  br i1 %i.ho, label %_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.ao
  %i.hp = load i64, ptr %i.t, align 8, !tbaa !23
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit

_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.068.095, i64 8 ; 2 uses
  %.not75 = icmp eq ptr %i.hr, %i.q
  br i1 %.not75, label %._crit_edge, label %bb.d

.body58:                                          ; preds = %bb.ae, %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.af, %bb.x, %bb.w
  %.pn43 = phi { ptr, i32 } [ %i.dj, %bb.x ], [ %i.di, %bb.w ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hm, %bb.al ], [ %i.gw, %bb.af ], [ %i.gl, %bb.ae ] ; 2 uses
  %i.hs = load ptr, ptr %i.s, align 8, !tbaa !21  ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.t
  br i1 %i.ht, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %.body58
  %i.hu = load i64, ptr %i.t, align 8, !tbaa !23
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #41
  br label %.body

.body:                                            ; preds = %.body58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn43.pn = phi { ptr, i32 } [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dh, %bb.v ], [ %.pn43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63 ], [ %.pn43, %.body58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call fastcc void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SD_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  resume { ptr, i32 } %.pn43.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SD_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.959, align 8            ; 4 uses
  %.val.i = load i64, ptr %0, align 8, !tbaa !74
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SD_EEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  store ptr %0, ptr %1, align 8, !tbaa !1715
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 80, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SF_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSQ_SR_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %.val1.i.i = load i64, ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !80
  %i.e = and i64 %i.d, 65536
  %i.f = icmp ne i64 %i.e, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.val1.i.i, ptr noundef %.val3.i.i, i64 noundef 80, i64 noundef 8, i1 noundef zeroext %i.f)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SD_EEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SD_EEE15destructor_implEv.exit: ; preds = %bb.a, %.noexc
  ret void

bb.c:                                             ; preds = %.noexc, %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf17DescriptorBuilder21BuildFieldOrExtensionERKNS0_20FieldDescriptorProtoEPNS0_10DescriptorEPNS0_15FieldDescriptorEbRNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(396) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(224) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.std::pair.1236", align 8   ; 6 uses
  %7 = alloca %"struct.std::pair.1236", align 8   ; 6 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 5 uses
  %10 = alloca %class.anon.354, align 8           ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %i.e = alloca ptr, align 8                      ; 49 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %17 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %18 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %19 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %20 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %21 = alloca %class.anon.454, align 8           ; 4 uses
  %22 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %23 = alloca %class.anon.455, align 8           ; 4 uses
  %i.f = alloca ptr, align 8                      ; 11 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %26 = alloca %class.anon.456, align 8           ; 4 uses
  %27 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %28 = alloca %class.anon.457, align 1           ; 3 uses
  %29 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %30 = alloca %class.anon.459, align 8           ; 5 uses
  store ptr %2, ptr %i.d, align 8, !tbaa !701
  store ptr %3, ptr %i.e, align 8, !tbaa !339
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1284
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !139  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.q, align 1
  %i.r = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.s = xor i64 %i.r, -1
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0209.0 = phi i64 [ %i.n, %bb.b ], [ %i.r, %bb.c ] ; 12 uses
  %.sroa.8.0 = phi ptr [ %i.l, %bb.b ], [ %i.t, %bb.c ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !278
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, -4
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !24 ; 26 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !94
  %i.ae = and i32 %i.ad, 16
  %.not230 = icmp eq i32 %i.ae, 0
  br i1 %.not230, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !278
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = and i64 %i.ah, -4
  %i.aj = inttoptr i64 %i.ai to ptr
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ak = phi ptr [ %i.aj, %bb.e ], [ null, %bb.d ] ; 3 uses
  %.val.i = load ptr, ptr %5, align 8, !tbaa !272
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %bb.g, label %.critedge.i, !prof !165

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.62, i32 noundef 563, ptr noundef nonnull @.str.268) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.h

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.g
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #42
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #42
  unreachable

.critedge.i:                                      ; preds = %bb.f
  %i.am = icmp ne i64 %.sroa.0209.0, 0            ; 2 uses
  %i.an = select i1 %i.am, ptr @.str.73, ptr @.str.74 ; 3 uses
  %i.ao = zext i1 %i.am to i64                    ; 9 uses
  %i.ap = add i64 %.sroa.0209.0, %i.ao
  %i.aq = add i64 %i.ap, %i.ab                    ; 9 uses
  %i.ar = icmp eq ptr %i.ak, null                 ; 2 uses
  br i1 %i.ar, label %bb.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i

bb.i:                                             ; preds = %.critedge.i
  %i.as = icmp eq i64 %i.ab, 0
  br i1 %i.as, label %.critedge.i.1.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load i8, ptr %i.z, align 1, !tbaa !23
  %i.au = add i8 %i.at, -97
  %i.av = icmp ult i8 %i.au, 26
  br i1 %i.av, label %.lr.ph.preheader.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.thread.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.thread.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.aw, ptr %13, align 8, !tbaa !17
  br label %bb.n

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.preheader.i.i
  %.0146.i.i = phi i32 [ %spec.select.i.i, %bb.k ], [ 0, %.lr.ph.preheader.i.i ]
  %.0185.i.i = phi ptr [ %i.bc, %bb.k ], [ %i.z, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ay = load i8, ptr %.0185.i.i, align 1, !tbaa !23 ; 2 uses
  %i.az = add i8 %i.ay, -65
  %i.ba = icmp ult i8 %i.az, 26
  br i1 %i.ba, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bb = icmp eq i8 %i.ay, 95
  %spec.select.i.i = select i1 %i.bb, i32 1, i32 %.0146.i.i ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0185.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.ax
  br i1 %.not.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i, label %.lr.ph.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i: ; preds = %bb.k
  %i.bd = icmp eq i32 %spec.select.i.i, 0
  br i1 %i.bd, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread184.i, label %.critedge.i59.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread184.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i
  %i.be = add nuw nsw i64 %i.ab, 1
  %.not44.i.i = icmp ult i64 %i.ab, 65536
  br i1 %.not44.i.i, label %.critedge.i.1.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE18AllocateFieldNamesESt17basic_string_viewIcS6_ESN_PKS8_.exit.thread

.critedge.i.1.i:                                  ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread184.i, %bb.i
  %i.bf = phi i64 [ %i.be, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread184.i ], [ 1, %bb.i ] ; 2 uses
  %.not44.i.1.i = icmp ult i64 %i.aq, 65536
  %.not44.i.2.i = icmp samesign ult i64 %i.bf, 65536
  %or.cond.i = select i1 %.not44.i.1.i, i1 %.not44.i.2.i, i1 false
  br i1 %or.cond.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE18AllocateFieldNamesESt17basic_string_viewIcS6_ESN_PKS8_.exit.thread216, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE18AllocateFieldNamesESt17basic_string_viewIcS6_ESN_PKS8_.exit.thread

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE18AllocateFieldNamesESt17basic_string_viewIcS6_ESN_PKS8_.exit.thread216: ; preds = %.critedge.i.1.i
  %i.bg = trunc nuw nsw i64 %i.aq to i32
  %i.bh = add nuw nsw i32 %i.bg, 17
  %i.bi = tail call fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayIcEEPT_i(ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %i.bh) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr readonly align 1 %.sroa.8.0, i64 %.sroa.0209.0, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.0209.0 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %i.an, i64 %i.ao, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ao ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr readonly align 1 %i.z, i64 %i.ab, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ab ; 2 uses
  store i8 0, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  %i.bn = trunc i64 %i.ab to i16
  %i.bo = trunc nuw i64 %i.aq to i16
  %i.bp = trunc nuw i64 %i.bf to i16
  %i.bq = insertelement <8 x i16> poison, i16 %i.bn, i64 0
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bo, i64 1
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bp, i64 2
  %i.bt = shufflevector <8 x i16> %i.bs, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 2, i32 0, i32 2, i32 0>
  store <8 x i16> %i.bt, ptr %i.bm, align 1
  br label %bb.ad

.critedge.i59.i:                                  ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_111ToCamelCaseB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEb(ptr dead_on_unwind noalias writable align 8 %12, i64 %i.ab, ptr nonnull readonly %i.z, i1 noundef zeroext true)
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !24 ; 6 uses
  %i.bw = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.bx = add i64 %i.aq, 2
  %i.by = add i64 %i.bx, %i.bv                    ; 2 uses
  %.not44.i61.1.i = icmp ult i64 %i.aq, 65536
  %.not44.i61.2.i = icmp ult i64 %i.ab, 65535
  %or.cond309.i = select i1 %.not44.i61.2.i, i1 %.not44.i61.1.i, i1 false
  %i.bz = or i64 %i.by, %i.bv
  %i.ca = icmp ult i64 %i.bz, 65536
  %or.cond311.i = select i1 %or.cond309.i, i1 %i.ca, i1 false ; 2 uses
  br i1 %or.cond311.i, label %.lr.ph.i68.preheader.i, label %.loopexit190.i

.lr.ph.i68.preheader.i:                           ; preds = %.critedge.i59.i
  %i.cb = add i64 %.sroa.0209.0, 1
  %i.cc = add i64 %i.cb, %i.ao
  %i.cd = add i64 %i.cc, %i.ab
  %i.ce = add i64 %i.cd, %i.bv
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = add i32 %i.cf, 17
  %i.ch = invoke fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayIcEEPT_i(ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %i.cg)
          to label %.lr.ph78.i74.preheader.i unwind label %bb.l ; 2 uses

.lr.ph78.i74.preheader.i:                         ; preds = %.lr.ph.i68.preheader.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr align 1 %i.bw, i64 %i.bv, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bv ; 2 uses
  store i8 0, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr readonly align 1 %.sroa.8.0, i64 %.sroa.0209.0, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.0209.0 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull align 1 %i.an, i64 %i.ao, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ao ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull readonly align 1 %i.z, i64 %i.ab, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ab ; 9 uses
  store i8 0, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 2 uses
  %i.co = trunc nuw i64 %i.ab to i16              ; 3 uses
  store i16 %i.co, ptr %i.cn, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 3
  %i.cq = trunc nuw i64 %i.aq to i16
  store i16 %i.cq, ptr %i.cp, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 5
  %31 = add nuw i16 %i.co, 1
  store i16 %31, ptr %i.cr, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 7
  store i16 %i.co, ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 9
  %i.cu = trunc nuw i64 %i.by to i16              ; 2 uses
  store i16 %i.cu, ptr %i.ct, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 11
  %i.cw = trunc nuw i64 %i.bv to i16              ; 2 uses
  store i16 %i.cw, ptr %i.cv, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 13
  store i16 %i.cu, ptr %i.cx, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 15
  store i16 %i.cw, ptr %i.cy, align 1
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !21
  br label %.loopexit190.i

.loopexit190.i:                                   ; preds = %.lr.ph78.i74.preheader.i, %.critedge.i59.i
  %i.cz = phi ptr [ %.pre.i, %.lr.ph78.i74.preheader.i ], [ %i.bw, %.critedge.i59.i ] ; 2 uses
  %.sroa.064.0.i62.i = phi ptr [ %i.cn, %.lr.ph78.i74.preheader.i ], [ undef, %.critedge.i59.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE18AllocateFieldNamesESt17basic_string_viewIcS6_ESN_PKS8_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.loopexit190.i
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !23
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE18AllocateFieldNamesESt17basic_string_viewIcS6_ESN_PKS8_.exit

bb.l:                                             ; preds = %.lr.ph.i68.preheader.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i: ; preds = %bb.l
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !23
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %common.resume

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i: ; preds = %.lr.ph.i.i, %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.dk, ptr %13, align 8, !tbaa !17
  %i.dl = icmp eq ptr %i.z, null
  %i.dm = icmp ne i64 %i.ab, 0
  %or.cond.i.i.i.i = and i1 %i.dl, %i.dm
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.272) #44
          to label %.noexc90.i unwind label %bb.x

.noexc90.i:                                       ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.thread.i
  %i.dn = phi ptr [ %i.aw, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.thread.i ], [ %i.dk, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !20
  %i.do = icmp ugt i64 %i.ab, 15
  br i1 %i.do, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.n
  %i.dp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc91.i unwind label %bb.x ; 2 uses

.noexc91.i:                                       ; preds = %.noexc.i.i.i.i
  store ptr %i.dp, ptr %13, align 8, !tbaa !21
  %i.dq = load i64, ptr %i.c, align 8, !tbaa !20
  store i64 %i.dq, ptr %i.dn, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc91.i, %bb.n
  %i.dr = phi ptr [ %i.dp, %.noexc91.i ], [ %i.dn, %bb.n ] ; 2 uses
  switch i64 %i.ab, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ds = load i8, ptr %i.z, align 1, !tbaa !23
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !23
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr readonly align 1 %i.z, i64 %i.ab, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i.i
  %i.dt = load i64, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !24
  %i.dv = load ptr, ptr %13, align 8, !tbaa !21
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dt
  store i8 0, ptr %i.dw, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  invoke void @_ZN4absl12lts_2025051215AsciiStrToLowerEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %13)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_111ToCamelCaseB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEb(ptr dead_on_unwind noalias writable align 8 %14, i64 %i.ab, ptr readonly %i.z, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  br i1 %i.ar, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.dx, ptr %15, align 8, !tbaa !17
  %i.dy = load ptr, ptr %i.ak, align 8, !tbaa !21 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 %i.ea, ptr %i.b, align 8, !tbaa !20
  %i.eb = icmp ugt i64 %i.ea, 15
  br i1 %i.eb, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.t
  %i.ec = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc92.i unwind label %bb.aa ; 2 uses

.noexc92.i:                                       ; preds = %.noexc.i.i
  store ptr %i.ec, ptr %15, align 8, !tbaa !21
  %i.ed = load i64, ptr %i.b, align 8, !tbaa !20
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !23
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc92.i, %bb.t
  %i.ee = phi ptr [ %i.ec, %.noexc92.i ], [ %i.dx, %bb.t ] ; 2 uses
  switch i64 %i.ea, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.ef = load i8, ptr %i.dy, align 1, !tbaa !23
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.v:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr align 1 %i.dy, i64 %i.ea, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i
  %i.eg = load i64, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !24
  %i.ei = load ptr, ptr %15, align 8, !tbaa !21
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 0, ptr %i.ej, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %.critedge.i99.i

bb.w:                                             ; preds = %bb.s
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_110ToJsonNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %15, i64 %i.ab, ptr readonly %i.z)
          to label %.critedge.i99.i unwind label %bb.aa

.critedge.i99.i:                                  ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ek = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !24 ; 5 uses
  %i.en = load ptr, ptr %14, align 8, !tbaa !21
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !24 ; 6 uses
  %i.eq = load ptr, ptr %13, align 8, !tbaa !21
  %i.er = load i64, ptr %i.du, align 8, !tbaa !24 ; 6 uses
  %i.es = add i64 %i.aq, 2
  %i.et = add i64 %i.es, %i.er                    ; 3 uses
  %i.eu = add i64 %i.ep, 1
  %i.ev = add i64 %i.eu, %i.et                    ; 3 uses
  %i.ew = add i64 %i.em, 1                        ; 2 uses
  %i.ex = add i64 %i.ev, %i.ew                    ; 2 uses
  %.not44.i101.i = icmp ult i64 %i.ab, 65536
  %.not44.i101.1.i = icmp ult i64 %i.aq, 65536
  %or.cond312.i = select i1 %.not44.i101.i, i1 %.not44.i101.1.i, i1 false
  %i.ey = or i64 %i.et, %i.er
  %i.ez = icmp ult i64 %i.ey, 65536
  %or.cond314.i = select i1 %or.cond312.i, i1 %i.ez, i1 false
  %.not44.i101.4.i = icmp ult i64 %i.ev, 65536
  %or.cond315.i = select i1 %or.cond314.i, i1 %.not44.i101.4.i, i1 false
  %.not44.i101.5.i = icmp ult i64 %i.ep, 65536
  %or.cond316.i = select i1 %or.cond315.i, i1 %.not44.i101.5.i, i1 false
  %.not44.i101.6.i = icmp ult i64 %i.ex, 65536
  %or.cond317.i = select i1 %or.cond316.i, i1 %.not44.i101.6.i, i1 false
  %.not44.i101.7.i = icmp ult i64 %i.em, 65536
  %or.cond318.i = select i1 %or.cond317.i, i1 %.not44.i101.7.i, i1 false ; 2 uses
  br i1 %or.cond318.i, label %.lr.ph.i108.preheader.i, label %.loopexit.i

.lr.ph.i108.preheader.i:                          ; preds = %.critedge.i99.i
  %i.fa = add i64 %.sroa.0209.0, 2
  %i.fb = add i64 %i.fa, %i.ao
end_hunk_0
