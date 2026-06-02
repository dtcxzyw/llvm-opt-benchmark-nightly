inline.NumInlined: 8841
inline.NumDeleted: 3439
begin_hunk_0_@_ZN6google8protobuf8compiler20CommandLineInterface17RegisterGeneratorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_PNS1_13CodeGeneratorESA_:bb.a
  store ptr %i.af, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !105
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !299
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !34
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.noexc13, %bb.c
  %i.ah = phi ptr [ %i.af, %.noexc13 ], [ %i.aa, %bb.c ] ; 2 uses
  switch i64 %i.ad, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSJ_EESR_IJEEEEEvNSM_8iteratorEDpOT_.exit.i.i.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !34
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !34
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSJ_EESR_IJEEEEEvNSM_8iteratorEDpOT_.exit.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSJ_EESR_IJEEEEEvNSM_8iteratorEDpOT_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSJ_EESR_IJEEEEEvNSM_8iteratorEDpOT_.exit.i.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !299 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !101
  %i.al = load ptr, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !105
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37, !noalias !299
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ao, i8 0, i64 88, i1 false)
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !132
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 40
  store i64 0, ptr %i.ap, align 8, !tbaa !101
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 80
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !132
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 120
  store ptr %i.at, ptr %i.as, align 8, !tbaa !132
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSJ_EESR_IJEEEEEvNSM_8iteratorEDpOT_.exit.i.i.i, %.noexc12
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(104) %9)
          to label %.noexc14 unwind label %bb.g

.noexc14:                                         ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc15 unwind label %bb.g

.noexc15:                                         ; preds = %.noexc14
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !268
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 96
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !268
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 104
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoaSERKS3_.exit17 unwind label %bb.g

_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoaSERKS3_.exit17: ; preds = %.noexc15
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !105 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.h
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoaSERKS3_.exit17
  %i.bb = load i64, ptr %i.h, align 8, !tbaa !34
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoaSERKS3_.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !105 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.e
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bf = load i64, ptr %i.e, align 8, !tbaa !34
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bh = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.b
  br i1 %i.bi, label %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !34
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #42
  br label %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit

_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  ret void

bb.g:                                             ; preds = %.noexc15, %.noexc14, %bb.f, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoaSERKS3_.exit, %.noexc10, %.noexc, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  resume { ptr, i32 } %i.bl
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8compiler20CommandLineInterface12AllowPluginsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(647) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6google8protobuf8compiler20CommandLineInterface3RunEiPKPKc(ptr noundef nonnull align 8 dereferenceable(647) initializes((8, 16)) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.std::pair.640", align 8    ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %class.anon.238, align 8            ; 8 uses
  %5 = alloca %"struct.google::protobuf::internal::VisitImpl.612", align 8 ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %8 = alloca %"struct.google::protobuf::internal::VisitImpl", align 8 ; 5 uses
  %9 = alloca %"class.absl::lts_20250512::flat_hash_map.417", align 8 ; 11 uses
  %10 = alloca %"class.std::optional.409", align 8 ; 18 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.google::protobuf::FileDescriptorSet", align 8 ; 11 uses
  %14 = alloca %"class.google::protobuf::FileDescriptorProto", align 8 ; 9 uses
  %15 = alloca %"class.std::vector.92", align 8   ; 19 uses
  %16 = alloca %"class.std::unique_ptr.134", align 8 ; 20 uses
  %17 = alloca %"class.std::unique_ptr.142", align 8 ; 20 uses
  %18 = alloca %"class.std::vector.150", align 8  ; 12 uses
  %19 = alloca %"class.std::vector.179", align 8  ; 13 uses
  %i.d = alloca i8, align 1                       ; 12 uses
  %i.e = alloca ptr, align 8                      ; 10 uses
  %20 = alloca %"class.google::protobuf::FileDescriptorProto", align 8 ; 12 uses
  %21 = alloca %"class.absl::lts_20250512::flat_hash_map.239", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %23 = alloca %"class.google::protobuf::DescriptorPool", align 8 ; 8 uses
  %24 = alloca %"class.google::protobuf::FileDescriptorProto", align 8 ; 11 uses
  %25 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %26 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  tail call void @_ZN6google8protobuf8compiler20CommandLineInterface5ClearEv(ptr noundef nonnull align 8 dereferenceable(647) %0)
  %i.f = tail call noundef i32 @_ZN6google8protobuf8compiler20CommandLineInterface14ParseArgumentsEiPKPKc(ptr noundef nonnull align 8 dereferenceable(647) %0, i32 noundef %1, ptr noundef %2)
  switch i32 %i.f, label %bb.c [
    i32 1, label %bb.gm
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.gm

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  store ptr null, ptr %16, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  store ptr null, ptr %17, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.at, label %.preheader524

.preheader524:                                    ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %18, i64 16
  br label %.preheader518

.preheader518:                                    ; preds = %.preheader524, %_ZNSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit
  %i.p = phi ptr [ null, %.preheader524 ], [ %i.gh, %_ZNSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit ] ; 11 uses
  %i.q = phi ptr [ null, %.preheader524 ], [ %i.gi, %_ZNSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit ] ; 5 uses
  %i.r = phi ptr [ null, %.preheader524 ], [ %i.gj, %_ZNSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit ] ; 3 uses
  %.sroa.0393.0607 = phi ptr [ %i.h, %.preheader524 ], [ %i.gk, %_ZNSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit ] ; 8 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader518, %bb.e
  %i.s = load ptr, ptr %.sroa.0393.0607, align 8, !tbaa !105, !noalias !305
  %i.t = invoke i32 (ptr, i32, ...) @open(ptr noundef %i.s, i32 noundef 0)
          to label %.noexc161 unwind label %.loopexit519 ; 3 uses

.noexc161:                                        ; preds = %bb.d
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %.critedge30.i

bb.e:                                             ; preds = %.noexc161
  %i.v = tail call ptr @__errno_location() #40
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = icmp eq i32 %i.w, 4
  br i1 %i.x, label %bb.d, label %.critedge.i, !llvm.loop !308

.critedge.i:                                      ; preds = %bb.e
  %i.y = load ptr, ptr %.sroa.0393.0607, align 8, !tbaa !105, !noalias !305
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0393.0607, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !101, !noalias !305
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.y, i64 noundef %i.aa)
          to label %.noexc162 unwind label %.loopexit.split-lp520.loopexit.split-lp ; 7 uses

.noexc162:                                        ; preds = %.critedge.i
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %.noexc163 unwind label %.loopexit.split-lp520.loopexit.split-lp ; 0 uses

.noexc163:                                        ; preds = %.noexc162
  %i.ad = call ptr @strerror(i32 noundef 2) #37, !noalias !305 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc163
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !82, !noalias !305
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8, !noalias !305
  %i.ah = getelementptr inbounds i8, ptr %i.ab, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !106, !noalias !305
  %i.ak = or i32 %i.aj, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ah, i32 noundef %i.ak)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %.loopexit.split-lp520.loopexit.split-lp

bb.g:                                             ; preds = %.noexc163
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #37, !noalias !305
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.ad, i64 noundef %i.al)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %.loopexit.split-lp520.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.g, %bb.f
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !82, !noalias !305
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !305
  %i.aq = getelementptr inbounds i8, ptr %i.ab, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 240
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !115, !noalias !305 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  invoke void @_ZSt16__throw_bad_castv() #41
          to label %.noexc166 unwind label %.loopexit.split-lp520.loopexit.split-lp

.noexc166:                                        ; preds = %bb.h
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load i8, ptr %i.at, align 8, !tbaa !122, !noalias !305
  %.not.i1.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i1.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 67
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !34, !noalias !305
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.as)
          to label %.noexc167 unwind label %.loopexit.split-lp520.loopexit.split-lp

.noexc167:                                        ; preds = %bb.j
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !82, !noalias !305
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !305
  %i.ba = invoke noundef signext i8 %i.az(ptr noundef nonnull align 8 dereferenceable(570) %i.as, i8 noundef signext 10)
          to label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i unwind label %.loopexit.split-lp520.loopexit.split-lp, !inline_history !309

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i: ; preds = %.noexc167, %bb.i
  %.0.i.i.i.i = phi i8 [ %i.aw, %bb.i ], [ %i.ba, %.noexc167 ]
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext %.0.i.i.i.i)
          to label %.noexc169 unwind label %.loopexit.split-lp520.loopexit.split-lp

.noexc169:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %_ZNSt10unique_ptrIN6google8protobuf24MergedDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit302 unwind label %.loopexit.split-lp520.loopexit.split-lp ; 0 uses

.critedge30.i:                                    ; preds = %.noexc161
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37, !noalias !305
  invoke void @_ZN6google8protobuf17FileDescriptorSetC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef null)
          to label %.noexc171 unwind label %.loopexit.split-lp520.loopexit

.noexc171:                                        ; preds = %.critedge30.i
  %i.bd = invoke noundef zeroext i1 @_ZN6google8protobuf11MessageLite23ParseFromFileDescriptorEi(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %i.t)
          to label %bb.k unwind label %.loopexit528, !noalias !305

bb.k:                                             ; preds = %.noexc171
  %i.be = invoke i32 @close(i32 noundef %i.t)
          to label %bb.l unwind label %.loopexit528, !noalias !305

bb.l:                                             ; preds = %bb.k
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %.sroa.0393.0607, align 8, !tbaa !105, !noalias !305
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0393.0607, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !101, !noalias !305
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.bf, i64 noundef %i.bh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %.loopexit.split-lp529, !noalias !305 ; 8 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.m
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.8, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i unwind label %.loopexit.split-lp529, !noalias !305 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.bk = tail call ptr @__errno_location() #40
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = call ptr @strerror(i32 noundef %i.bl) #37, !noalias !305 ; 3 uses
  %.not.i34.i = icmp eq ptr %i.bm, null
  br i1 %.not.i34.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !82, !noalias !305
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !305
  %i.bq = getelementptr inbounds i8, ptr %i.bi, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !106, !noalias !305
  %i.bt = or i32 %i.bs, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bq, i32 noundef %i.bt)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i unwind label %.loopexit.split-lp529, !noalias !305

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i
  %i.bu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bm) #37, !noalias !305
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull %i.bm, i64 noundef %i.bu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i unwind label %.loopexit.split-lp529, !noalias !305 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i: ; preds = %bb.o, %bb.n
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !82, !noalias !305
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8, !noalias !305
  %i.bz = getelementptr inbounds i8, ptr %i.bi, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 240
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !115, !noalias !305 ; 6 uses
  %.not.i.i.i51.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i51.i, label %.invoke.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !122, !noalias !305
  %.not.i1.i.i53.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i1.i.i53.i, label %bb.p, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.invoke.sink.split

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cb)
          to label %.noexc56.i unwind label %.loopexit.split-lp529, !noalias !305

.noexc56.i:                                       ; preds = %bb.p
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !82, !noalias !305
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !305
  %i.ch = invoke noundef signext i8 %i.cg(ptr noundef nonnull align 8 dereferenceable(570) %i.cb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.invoke unwind label %.loopexit.split-lp529, !noalias !305, !inline_history !136

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62.i
  %.sink805 = phi ptr [ %i.cy, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62.i ], [ %i.cb, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52.i ]
  %.ph = phi ptr [ %i.cr, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62.i ], [ %i.bi, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sink805, i64 67
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !34, !noalias !305
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.invoke.sink.split, %.noexc56.i, %.noexc67.i
  %i.ck = phi ptr [ %i.bi, %.noexc56.i ], [ %i.cr, %.noexc67.i ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.invoke.sink.split ]
  %i.cl = phi i8 [ %i.ch, %.noexc56.i ], [ %i.de, %.noexc67.i ], [ %i.cj, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.invoke.sink.split ]
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i8 noundef signext %i.cl)
          to label %.noexc58.i.invoke unwind label %.loopexit.split-lp529, !noalias !305

.noexc58.i.invoke:                                ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.invoke
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %_ZN6google8protobuf8compiler12_GLOBAL__N_138PopulateSingleSimpleDescriptorDatabaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread424 unwind label %.loopexit.split-lp529, !noalias !305 ; 0 uses

.loopexit528:                                     ; preds = %.noexc171, %bb.k
  %lpad.loopexit530 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp529:                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.invoke, %.noexc58.i.invoke, %bb.m, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %bb.n, %bb.o, %bb.p, %.noexc56.i, %bb.r, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit39.i, %.invoke.i, %bb.s, %.noexc67.i
  %lpad.loopexit.split-lp531 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.q:                                             ; preds = %bb.l
  br i1 %i.bd, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %.sroa.0393.0607, align 8, !tbaa !105, !noalias !305
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0393.0607, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !101, !noalias !305
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.co, i64 noundef %i.cq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit39.i unwind label %.loopexit.split-lp529, !noalias !305 ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit39.i: ; preds = %bb.r
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull @.str.183, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41.i unwind label %.loopexit.split-lp529, !noalias !305 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit39.i
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !82, !noalias !305
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !305
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 240
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !115, !noalias !305 ; 6 uses
  %.not.i.i.i61.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i61.i, label %.invoke.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62.i

.invoke.i:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i
  invoke void @_ZSt16__throw_bad_castv() #41
          to label %.cont.i unwind label %.loopexit.split-lp529, !noalias !305

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !122, !noalias !305
  %.not.i1.i.i63.i = icmp eq i8 %i.da, 0
  br i1 %.not.i1.i.i63.i, label %bb.s, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.invoke.sink.split

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cy)
          to label %.noexc67.i unwind label %.loopexit.split-lp529, !noalias !305

.noexc67.i:                                       ; preds = %bb.s
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !82, !noalias !305
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !305
  %i.de = invoke noundef signext i8 %i.dd(ptr noundef nonnull align 8 dereferenceable(570) %i.cy, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.invoke unwind label %.loopexit.split-lp529, !noalias !305, !inline_history !136

bb.t:                                             ; preds = %bb.q
  %i.df = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #43
          to label %.noexc44.i unwind label %bb.v, !noalias !305 ; 13 uses

.noexc44.i:                                       ; preds = %bb.t
  invoke void @_ZN6google8protobuf24SimpleDescriptorDatabaseC1Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.df)
          to label %_ZSt11make_uniqueIN6google8protobuf24SimpleDescriptorDatabaseEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.preheader.i unwind label %bb.u, !noalias !310

_ZSt11make_uniqueIN6google8protobuf24SimpleDescriptorDatabaseEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.preheader.i: ; preds = %.noexc44.i
  %i.dg = load i32, ptr %i.l, align 8, !tbaa !178, !noalias !305
  %.not2780.i = icmp sgt i32 %i.dg, 0
  br i1 %.not2780.i, label %.lr.ph.i, label %.loopexit517

bb.u:                                             ; preds = %.noexc44.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 104) #42, !noalias !310
  br label %.body.i

bb.v:                                             ; preds = %bb.t
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph.i:                                         ; preds = %_ZSt11make_uniqueIN6google8protobuf24SimpleDescriptorDatabaseEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.preheader.i, %_ZSt11make_uniqueIN6google8protobuf24SimpleDescriptorDatabaseEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt11make_uniqueIN6google8protobuf24SimpleDescriptorDatabaseEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i ], [ 0, %_ZSt11make_uniqueIN6google8protobuf24SimpleDescriptorDatabaseEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37, !noalias !305
  invoke void @_ZN6google8protobuf19FileDescriptorProtoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(200) %14, ptr noundef null)
          to label %bb.w unwind label %bb.y, !noalias !305

bb.w:                                             ; preds = %.lr.ph.i
  %i.dj = load ptr, ptr %i.m, align 8, !tbaa !176, !noalias !305
  %i.dk = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dl = and i64 %i.dk, 1
  %i.dm = icmp eq i64 %i.dl, 0
  %i.dn = add i64 %i.dk, -1
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i
  %.0.i.i.i.i.i.i = select i1 %i.dm, ptr %i.m, ptr %i.dq
  %i.dr = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !179, !noalias !305
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 152
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !313, !noalias !305
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = and i64 %i.du, -4
  %i.dw = inttoptr i64 %i.dv to ptr               ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !105, !noalias !305
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !101, !noalias !305
  %i.ea = load ptr, ptr %i.df, align 8, !tbaa !82, !noalias !305
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !305
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(104) %i.df, i64 %i.dz, ptr %i.dx, ptr noundef nonnull %14)
          to label %bb.x unwind label %bb.z, !noalias !305

bb.x:                                             ; preds = %bb.w
  br i1 %i.ed, label %_ZSt11make_uniqueIN6google8protobuf24SimpleDescriptorDatabaseEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i, label %bb.aa

bb.y:                                             ; preds = %.lr.ph.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit.i

bb.z:                                             ; preds = %bb.aa, %bb.w
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %14) #37, !noalias !305
  br label %_ZNSt10unique_ptrIN6google8protobuf24SimpleDescriptorDatabaseESt14default_deleteIS2_EED2Ev.exit.i

bb.aa:                                            ; preds = %bb.x
  %i.eg = load ptr, ptr %i.m, align 8, !tbaa !176, !noalias !305
  %i.eh = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ei = and i64 %i.eh, 1
  %i.ej = icmp eq i64 %i.ei, 0
  %i.ek = add i64 %i.eh, -1
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.i
end_hunk_0
