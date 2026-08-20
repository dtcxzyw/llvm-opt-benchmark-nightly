inline.NumInlined: 1088
inline.NumDeleted: 543
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6duckdb12VariantValue7AddItemEOS0_:bb.a
bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !127
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.o, ptr %i.r, align 8, !tbaa !126
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !128
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !128
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.m, ptr %i.w, align 8, !tbaa !129
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !130
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %i.y, ptr %i.z, align 8, !tbaa !130
  store ptr null, ptr %i.n, align 8, !tbaa !126
  store ptr %i.p, ptr %i.s, align 8, !tbaa !131
  store ptr %i.p, ptr %i.u, align 8, !tbaa !132
  store i64 0, ptr %i.x, align 8, !tbaa !130
  br label %_ZN6duckdb12VariantValueC2EOS0_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr null, ptr %i.aa, align 8, !tbaa !126
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.m, ptr %i.ab, align 8, !tbaa !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.m, ptr %i.ac, align 8, !tbaa !132
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 0, ptr %i.ad, align 8, !tbaa !130
  br label %_ZN6duckdb12VariantValueC2EOS0_.exit.i.i

_ZN6duckdb12VariantValueC2EOS0_.exit.i.i:         ; preds = %bb.j, %bb.i
  %.sink.i.i.i.i.i.i.i = phi i32 [ 0, %bb.j ], [ %i.q, %bb.i ]
  store i32 %.sink.i.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !127
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !133
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !133
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, ptr noundef nonnull align 8 dereferenceable(64) %i.al) #21
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !124
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 144
  store ptr %i.an, ptr %i.i, align 8, !tbaa !124
  br label %_ZNSt6vectorIN6duckdb12VariantValueESaIS1_EE9push_backEOS1_.exit

bb.k:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6vectorIN6duckdb12VariantValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZNSt6vectorIN6duckdb12VariantValueESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb12VariantValueESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN6duckdb12VariantValueC2EOS0_.exit.i.i, %bb.k
  ret void

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.m:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6duckdb16GetOrCreateIndexERNS_15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEEERS6_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.std::pair.41", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = trunc i64 %i.b to i32
  store i32 %i.d, ptr %i.c, align 8, !tbaa !134
  %i.e = call { ptr, i8 } @_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE7emplaceEOS7_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(20) %2)
  %.fca.0.extract = extractvalue { ptr, i8 } %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i32 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE7emplaceEOS7_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.i.sroa.4.i = alloca [12 x i8], align 4 ; 6 uses
  %2 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %3 = alloca %"struct.std::pair.197", align 8    ; 7 uses
  %4 = alloca %"struct.std::pair.41", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call ptr @_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.fca.0.insert.i = insertvalue { ptr, i8 } poison, ptr %i.b, 0
  %.fca.1.insert.i = insertvalue { ptr, i8 } %.fca.0.insert.i, i8 0, 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.d = load i32, ptr %4, align 8, !tbaa !95
  %i.e = icmp ult i32 %i.d, 13
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = call { ptr, i8 } @_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE16_M_insert_uniqueIS4_EES2_ISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %4)
  br label %_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE6insertES7_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %.sroa.01.0.copyload.i = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !95 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.01.0.copyload.i, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.22.0.copyload.i, ptr %i.g, align 8
  %i.h = trunc i64 %.sroa.01.0.copyload.i to i32  ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !137, !nonnull !49, !align !50
  %i.j = and i64 %.sroa.01.0.copyload.i, 4294967295 ; 3 uses
  %i.k = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.j) ; 3 uses
  %i.l = icmp ult i32 %i.h, 13                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.n = select i1 %i.l, ptr %i.m, ptr %.sroa.22.0.copyload.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.n, i64 %i.j, i1 false)
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i.sroa.4.i, i8 0, i64 12, i1 false)
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE10CopyStringES2_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.sroa.4.i, ptr nonnull align 4 %i.m, i64 %i.j, i1 false)
  %.sroa.0.i.sroa.4.i.4.i.4.i.4.i.8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.4.i, i64 4
  %.sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.4..sroa.0.i.sroa.4.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i.i = load ptr, ptr %.sroa.0.i.sroa.4.i.4.i.4.i.4.i.8..fca.1.gep.sroa_idx, align 4
  %.sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.0..sroa.0.i.sroa.4.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i12.pre.i = load i32, ptr %.sroa.0.i.sroa.4.i, align 4
  br label %_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE10CopyStringES2_.exit.i

bb.h:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.k, align 1
  br label %_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE10CopyStringES2_.exit.i

_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE10CopyStringES2_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.i.sroa.4.0..sroa.0.i.sroa.4.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i12.i = phi i32 [ 0, %bb.f ], [ %.sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.0..sroa.0.i.sroa.4.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i12.pre.i, %bb.g ], [ %i.p, %bb.h ]
  %.sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i.i = phi ptr [ null, %bb.f ], [ %.sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.4..sroa.0.i.sroa.4.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i.i, %bb.g ], [ %i.k, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  store i32 %i.h, ptr %3, align 8
  %.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.0.i.sroa.4.0..sroa.0.i.sroa.4.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i12.i, ptr %.sroa_idx.i, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i32, ptr %i.q, align 8, !tbaa !3, !noalias !146
  store i32 %i.s, ptr %i.r, align 8, !tbaa !149, !alias.scope !146
  %i.t = call { ptr, i8 } @_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_emplace_uniqueIJS2_IS1_jEEEES2_ISt17_Rb_tree_iteratorIS4_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE6insertES7_.exit

_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE6insertES7_.exit: ; preds = %bb.d, %_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE10CopyStringES2_.exit.i
  %.pn.i = phi { ptr, i8 } [ %i.f, %bb.d ], [ %i.t, %_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE10CopyStringES2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE6insertES7_.exit, %bb.b
  %.pn = phi { ptr, i8 } [ %.fca.1.insert.i, %bb.b ], [ %.pn.i, %_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE6insertES7_.exit ]
  ret { ptr, i8 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12VariantValue9ToVARIANTERNS_6vectorIS0_Lb1ESaIS0_EEERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::DataChunk", align 8 ; 14 uses
  %3 = alloca %"class.duckdb::vector.60", align 8 ; 12 uses
  %4 = alloca [4 x %"struct.duckdb::LogicalType"], align 8 ; 17 uses
  %5 = alloca %"struct.duckdb::SelectionVector", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::OwningStringMap", align 8 ; 14 uses
  %7 = alloca %"class.duckdb::DataChunk", align 8 ; 11 uses
  %8 = alloca %"class.duckdb::vector.60", align 8 ; 12 uses
  %9 = alloca [4 x %"struct.duckdb::LogicalType"], align 8 ; 17 uses
  %10 = alloca %"struct.duckdb::VariantVectorData", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 144                 ; 10 uses
  %i.h = icmp eq ptr %i.c, %i.b
  br i1 %i.h, label %bb.bq, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv()
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 30)
          to label %bb.d unwind label %.thread

.thread:                                          ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit174

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 noundef zeroext 30)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 noundef zeroext 30)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 noundef zeroext 30)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.n = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24
          to label %.noexc139 unwind label %.body140.thread ; 8 uses

.noexc139:                                        ; preds = %bb.g
  store ptr %i.n, ptr %3, align 8, !tbaa !152
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !155
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.h

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc139
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.thread224

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.2 unwind label %.thread224

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.2: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.3 unwind label %.thread224

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.3: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.2
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !156
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.g)
          to label %bb.m unwind label %bb.r

.thread224:                                       ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.2
  %.016.i.i.i.i.i.lcssa.ph = phi ptr [ %i.s, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.2 ], [ %i.r, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ], [ %i.q, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.w = call ptr @__cxa_begin_catch(ptr %i.v) #21 ; 0 uses
  br label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.noexc139
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.y = call ptr @__cxa_begin_catch(ptr %i.x) #21 ; 0 uses
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.thread224, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %i.n, %.thread224 ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i.i) #21
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, %.016.i.i.i.i.i.lcssa.ph
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !157

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h
  invoke void @__cxa_rethrow() #22
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body140 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #25
  unreachable

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body140.thread:                                  ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body140:                                         ; preds = %bb.i
  %.pr = load ptr, ptr %3, align 8, !tbaa !152    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.l

bb.l:                                             ; preds = %.body140
  call void @_ZdlPv(ptr noundef nonnull %.pr) #23
  br label %.body

bb.m:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.3
  %i.ae = load ptr, ptr %3, align 8, !tbaa !152   ; 3 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !156 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %i.ae, %bb.m ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.af
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !157

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !152
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.m
  %i.ah = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ae, %bb.m ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #23
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ai) #21
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aj) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ak) #21
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i64 %i.g, ptr %i.al, align 8, !tbaa !159
  invoke void @_ZN6duckdb7variant17InitializeOffsetsERNS_9DataChunkEm(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.g)
          to label %.lr.ph unwind label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.p:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.055 = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ], [ %i.k, %bb.d ]
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.q
  %i.ao = phi ptr [ %.055, %bb.p ], [ %i.ap, %bb.q ]
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -24 ; 3 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ap) #21
  %i.aq = icmp eq ptr %i.ap, %4
  br i1 %i.aq, label %.loopexit174, label %bb.q

bb.r:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.3
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  br label %.body

.body:                                            ; preds = %.body140.thread, %bb.l, %.body140, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.aa, %.body140 ], [ %i.aa, %bb.l ], [ %i.ad, %.body140.thread ]
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #21
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.at) #21
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.au) #21
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #21
  br label %.loopexit174

.loopexit174:                                     ; preds = %bb.q, %.body, %.thread
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.j, %.thread ], [ %i.an, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.bv

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %bb.v
  %.054185 = phi i64 [ %i.bd, %bb.v ], [ 0, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit ] ; 3 uses
  %i.av = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb6vectorINS_12VariantValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.054185)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %.lr.ph
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !97
  %i.ax = icmp eq i8 %i.aw, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  %i.az = load i8, ptr %i.ay, align 8, !range !172
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = select i1 %i.ax, i1 %i.ba, i1 false
  br i1 %i.bb, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.u, %.lr.ph
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.u:                                             ; preds = %bb.s
  invoke fastcc void @_ZN6duckdbL12AnalyzeValueERKNS_12VariantValueEmRNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(144) %i.av, i64 noundef %.054185, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.bd = add nuw i64 %.054185, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !173

._crit_edge:                                      ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.be = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc:                                           ; preds = %._crit_edge
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !174
  %i.bg = icmp eq i8 %i.bf, 3
  br i1 %i.bg, label %tailrecurse.i.i, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i

tailrecurse.i.i:                                  ; preds = %.noexc, %.noexc91
  %.tr5.i.i = phi ptr [ %i.bj, %.noexc91 ], [ %i.be, %.noexc ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc90:                                         ; preds = %tailrecurse.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr5.i.i, i64 88
  %i.bi = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc91:                                         ; preds = %.noexc90
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !174
  %i.bl = icmp eq i8 %i.bk, 3
  br i1 %i.bl, label %tailrecurse.i.i, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i

_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i: ; preds = %.noexc91, %.noexc
  %.tr.lcssa.i.i = phi ptr [ %i.be, %.noexc ], [ %i.bj, %.noexc91 ] ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i.i)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !12
  %i.bo = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector11GetChildrenERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc93:                                         ; preds = %.noexc92
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !174
  %i.bq = icmp eq i8 %i.bp, 3
  br i1 %i.bq, label %tailrecurse.i67.i, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit69.i

tailrecurse.i67.i:                                ; preds = %.noexc93, %.noexc95
  %.tr5.i68.i = phi ptr [ %i.bt, %.noexc95 ], [ %i.bo, %.noexc93 ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i68.i)
          to label %.noexc94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc94:                                         ; preds = %tailrecurse.i67.i
  %i.br = getelementptr inbounds nuw i8, ptr %.tr5.i68.i, i64 88
  %i.bs = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc95:                                         ; preds = %.noexc94
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48 ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !174
  %i.bv = icmp eq i8 %i.bu, 3
  br i1 %i.bv, label %tailrecurse.i67.i, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit69.i

_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit69.i: ; preds = %.noexc95, %.noexc93
  %.tr.lcssa.i66.i = phi ptr [ %i.bo, %.noexc93 ], [ %i.bt, %.noexc95 ] ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i66.i)
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc96:                                         ; preds = %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit69.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i66.i, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !12
  %i.by = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc97:                                         ; preds = %.noexc96
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !174
  %i.ca = icmp eq i8 %i.bz, 3
  br i1 %i.ca, label %tailrecurse.i71.i, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit73.i

tailrecurse.i71.i:                                ; preds = %.noexc97, %.noexc99
  %.tr5.i72.i = phi ptr [ %i.cd, %.noexc99 ], [ %i.by, %.noexc97 ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i72.i)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit

.noexc98:                                         ; preds = %tailrecurse.i71.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr5.i72.i, i64 88
  %i.cc = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit

.noexc99:                                         ; preds = %.noexc98
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !174
  %i.cf = icmp eq i8 %i.ce, 3
  br i1 %i.cf, label %tailrecurse.i71.i, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit73.i

_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit73.i: ; preds = %.noexc99, %.noexc97
  %.tr.lcssa.i70.i = phi ptr [ %i.by, %.noexc97 ], [ %i.cd, %.noexc99 ] ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i70.i)
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit73.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i70.i, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !12
  %i.ci = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector7GetDataERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc101:                                        ; preds = %.noexc100
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ci)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc102:                                        ; preds = %.noexc101
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !12
  %i.cl = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 0)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc103:                                        ; preds = %.noexc102
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.cl)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc104:                                        ; preds = %.noexc103
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !12
  %i.co = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 1)
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc105:                                        ; preds = %.noexc104
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.co)
          to label %.noexc106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc106:                                        ; preds = %.noexc105
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !12
  %i.cr = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 2)
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc107:                                        ; preds = %.noexc106
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.cr)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc108:                                        ; preds = %.noexc107
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !12
  %i.cu = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 3)
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc109:                                        ; preds = %.noexc108
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.cu)
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %.noexc109
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !12
  %i.cx = load i64, ptr %i.al, align 8, !tbaa !159 ; 2 uses
  %.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc118, %.noexc110
  %.065.lcssa.i = phi i64 [ 0, %.noexc110 ], [ %i.ds, %.noexc118 ] ; 2 uses
  %.064.lcssa.i = phi i64 [ 0, %.noexc110 ], [ %i.dr, %.noexc118 ] ; 2 uses
  %.063.lcssa.i = phi i64 [ 0, %.noexc110 ], [ %i.dt, %.noexc118 ] ; 6 uses
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.be, i64 noundef %.063.lcssa.i)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc111:                                        ; preds = %._crit_edge.i
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.bo, i64 noundef %.065.lcssa.i)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc112:                                        ; preds = %.noexc111
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.by, i64 noundef %.064.lcssa.i)
          to label %.noexc113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc113:                                        ; preds = %.noexc112
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.be, i64 noundef %.063.lcssa.i)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc114:                                        ; preds = %.noexc113
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.bo, i64 noundef %.065.lcssa.i)
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc115:                                        ; preds = %.noexc114
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.by, i64 noundef %.064.lcssa.i)
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc116:                                        ; preds = %.noexc115
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.063.lcssa.i)
          to label %_ZN6duckdbL18InitializeVariantsERNS_9DataChunkERNS_6VectorERNS_15SelectionVectorERm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i:                                         ; preds = %.noexc110, %.noexc118
  %.079.i = phi i64 [ %i.dx, %.noexc118 ], [ 0, %.noexc110 ] ; 9 uses
  %.06378.i = phi i64 [ %i.dt, %.noexc118 ], [ 0, %.noexc110 ] ; 2 uses
  %.06477.i = phi i64 [ %i.dr, %.noexc118 ], [ 0, %.noexc110 ] ; 2 uses
  %.06576.i = phi i64 [ %i.ds, %.noexc118 ], [ 0, %.noexc110 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %.079.i ; 2 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %.079.i ; 2 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %.079.i ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.079.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !175
  store i64 %.06378.i, ptr %i.cy, align 8, !tbaa !177
end_hunk_0
begin_hunk_1_@_ZN6duckdb12VariantValue9ToVARIANTERNS_6vectorIS0_Lb1ESaIS0_EEERNS_6VectorE:bb.a
  %exitcond.not.i = icmp eq i64 %i.dx, %i.cx
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !178

_ZN6duckdbL18InitializeVariantsERNS_9DataChunkERNS_6VectorERNS_15SelectionVectorERm.exit: ; preds = %.noexc116
  %i.dy = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.w unwind label %bb.an

bb.w:                                             ; preds = %_ZN6duckdbL18InitializeVariantsERNS_9DataChunkERNS_6VectorERNS_15SelectionVectorERm.exit
  %i.dz = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.dy)
          to label %bb.x unwind label %bb.ao      ; 3 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ea = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.dz)
          to label %bb.y unwind label %bb.ap

bb.y:                                             ; preds = %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  store ptr %i.eb, ptr %6, align 8, !tbaa !179
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i32 0, ptr %i.ec, align 8, !tbaa !127
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.ed, align 8, !tbaa !126
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !131
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.ec, ptr %i.ef, align 8, !tbaa !132
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 0, ptr %i.eg, align 8, !tbaa !130
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i32 1, ptr %i.eh, align 8, !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %bb.z unwind label %bb.aq

bb.z:                                             ; preds = %bb.y
  %i.ei = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv()
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 30)
          to label %bb.ab unwind label %.thread161

.thread161:                                       ; preds = %bb.aa
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i8 noundef zeroext 30)
          to label %bb.ac unwind label %bb.as

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.el, i8 noundef zeroext 30)
          to label %bb.ad unwind label %bb.as

bb.ad:                                            ; preds = %bb.ac
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.em, i8 noundef zeroext 30)
          to label %bb.ae unwind label %bb.as

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.en = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24
          to label %.noexc152 unwind label %.body153.thread ; 8 uses

.noexc152:                                        ; preds = %bb.ae
  store ptr %i.en, ptr %8, align 8, !tbaa !152
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !155
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150 unwind label %bb.af

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150: ; preds = %.noexc152
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %i.ek)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150.1 unwind label %.thread235

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 48 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef nonnull align 8 dereferenceable(24) %i.el)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150.2 unwind label %.thread235

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150.2: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150.1
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 72 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150.3 unwind label %.thread235

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150.3: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150.2
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !156
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.g)
          to label %bb.ak unwind label %bb.au

.thread235:                                       ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150.1, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150.2
  %.016.i.i.i.i.i143.lcssa.ph = phi ptr [ %i.es, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150.2 ], [ %i.er, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150.1 ], [ %i.eq, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150 ]
  %lpad.thr_comm233 = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %lpad.thr_comm233, 0
  %i.ew = call ptr @__cxa_begin_catch(ptr %i.ev) #21 ; 0 uses
  br label %.lr.ph.i.i.i.i.i.i.i146

bb.af:                                            ; preds = %.noexc152
  %lpad.thr_comm.split-lp234 = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp234, 0
  %i.ey = call ptr @__cxa_begin_catch(ptr %i.ex) #21 ; 0 uses
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i149

.lr.ph.i.i.i.i.i.i.i146:                          ; preds = %.thread235, %.lr.ph.i.i.i.i.i.i.i146
  %.05.i.i.i.i.i.i.i147 = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i.i.i146 ], [ %i.en, %.thread235 ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i.i147) #21
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i147, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i148 = icmp eq ptr %i.ez, %.016.i.i.i.i.i143.lcssa.ph
  br i1 %.not.i.i.i.i.i.i.i148, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i149, label %.lr.ph.i.i.i.i.i.i.i146, !llvm.loop !157

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i149: ; preds = %.lr.ph.i.i.i.i.i.i.i146, %bb.af
  invoke void @__cxa_rethrow() #22
          to label %bb.ai unwind label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i149
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body153 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #25
  unreachable

bb.ai:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i149
  unreachable

.body153.thread:                                  ; preds = %bb.ae
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body121

.body153:                                         ; preds = %bb.ag
  %.pr160 = load ptr, ptr %8, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i.i119 = icmp eq ptr %.pr160, null
  br i1 %.not.i.i.i.i119, label %.body121, label %bb.aj

bb.aj:                                            ; preds = %.body153
  call void @_ZdlPv(ptr noundef nonnull %.pr160) #23
  br label %.body121

bb.ak:                                            ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150.3
  %i.fe = load ptr, ptr %8, align 8, !tbaa !152   ; 3 uses
  %i.ff = load ptr, ptr %i.eu, align 8, !tbaa !156 ; 2 uses
  %.not4.i.i.i124 = icmp eq ptr %i.fe, %i.ff
  br i1 %.not4.i.i.i124, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i130, label %.lr.ph.i.i.i125

.lr.ph.i.i.i125:                                  ; preds = %bb.ak, %.lr.ph.i.i.i125
  %.05.i.i.i126 = phi ptr [ %i.fg, %.lr.ph.i.i.i125 ], [ %i.fe, %bb.ak ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i126) #21
  %i.fg = getelementptr inbounds nuw i8, ptr %.05.i.i.i126, i64 24 ; 2 uses
  %.not.i.i.i127 = icmp eq ptr %i.fg, %i.ff
  br i1 %.not.i.i.i127, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i128, label %.lr.ph.i.i.i125, !llvm.loop !157

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i128: ; preds = %.lr.ph.i.i.i125
  %.pr.i129 = load ptr, ptr %8, align 8, !tbaa !152
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i130

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i130: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i128, %bb.ak
  %i.fh = phi ptr [ %.pr.i129, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i128 ], [ %i.fe, %bb.ak ] ; 2 uses
  %.not.i.i1.i131 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i1.i131, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit132, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i130
  call void @_ZdlPv(ptr noundef nonnull %i.fh) #23
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit132

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit132: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i130, %bb.al
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fi) #21
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fj) #21
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fk) #21
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.g, ptr %i.fl, align 8, !tbaa !159
  invoke void @_ZN6duckdb7variant17InitializeOffsetsERNS_9DataChunkEm(ptr noundef nonnull align 8 dereferenceable(72) %7, i64 noundef %i.g)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit132
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZN6duckdb17VariantVectorDataC1ERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.lr.ph187 unwind label %bb.av

._crit_edge188:                                   ; preds = %bb.ba
  %i.fm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %7, i64 noundef 3)
          to label %.noexc133 unwind label %bb.bb ; 2 uses

.noexc133:                                        ; preds = %._crit_edge188
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.fm)
          to label %.lr.ph190 unwind label %bb.bb

.lr.ph190:                                        ; preds = %.noexc133
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !12
  %i.fp = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.bc

.loopexit164:                                     ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc98, %tailrecurse.i71.i
  %lpad.loopexit165 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %tailrecurse.i67.i, %.noexc94
  %lpad.loopexit168 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc90, %tailrecurse.i.i
  %lpad.loopexit170 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc116, %.noexc115, %.noexc114, %.noexc113, %.noexc112, %.noexc111, %._crit_edge.i, %.noexc109, %.noexc108, %.noexc107, %.noexc106, %.noexc105, %.noexc104, %.noexc103, %.noexc102, %.noexc101, %.noexc100, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit73.i, %.noexc96, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit69.i, %.noexc92, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i, %._crit_edge
  %lpad.loopexit.split-lp171 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.an:                                            ; preds = %_ZN6duckdbL18InitializeVariantsERNS_9DataChunkERNS_6VectorERNS_15SelectionVectorERm.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ao:                                            ; preds = %bb.w
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ap:                                            ; preds = %bb.x
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.aq:                                            ; preds = %bb.y
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.ar:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit132, %bb.z
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.as:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.053 = phi ptr [ %i.em, %bb.ad ], [ %i.el, %bb.ac ], [ %i.ek, %bb.ab ]
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.at
  %i.fw = phi ptr [ %.053, %bb.as ], [ %i.fx, %bb.at ]
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -24 ; 3 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fx) #21
  %i.fy = icmp eq ptr %i.fx, %9
  br i1 %i.fy, label %.loopexit, label %bb.at

bb.au:                                            ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i150.3
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %.body121

.body121:                                         ; preds = %.body153.thread, %bb.aj, %.body153, %bb.au
  %.pn74 = phi { ptr, i32 } [ %i.fz, %bb.au ], [ %i.fa, %.body153 ], [ %i.fa, %bb.aj ], [ %i.fd, %.body153.thread ]
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ga) #21
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.gb) #21
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.gc) #21
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #21
  br label %.loopexit

.loopexit:                                        ; preds = %bb.at, %.body121, %.thread161
  %.pn74.pn = phi { ptr, i32 } [ %.pn74, %.body121 ], [ %i.ej, %.thread161 ], [ %i.fv, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.bs

bb.av:                                            ; preds = %bb.am
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.lr.ph187:                                        ; preds = %bb.am, %bb.ba
  %.052186 = phi i64 [ %i.gm, %bb.ba ], [ 0, %bb.am ] ; 4 uses
  %i.ge = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb6vectorINS_12VariantValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.052186)
          to label %bb.aw unwind label %bb.ay     ; 3 uses

bb.aw:                                            ; preds = %.lr.ph187
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !97
  %i.gg = icmp eq i8 %i.gf, 0
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 104
  %i.gi = load i8, ptr %i.gh, align 8, !range !172
  %i.gj = trunc nuw i8 %i.gi to i1
  %i.gk = select i1 %i.gg, i1 %i.gj, i1 false
  br i1 %i.gk, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %.052186, i1 noundef zeroext true)
          to label %bb.ba unwind label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax, %.lr.ph187
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.az:                                            ; preds = %bb.aw
  invoke fastcc void @_ZN6duckdbL12ConvertValueERKNS_12VariantValueERNS_17VariantVectorDataEmRNS_9DataChunkERNS_15SelectionVectorERNS_15OwningStringMapIjSt3mapINS_8string_tEjSt4lessISB_ESaISt4pairIKSB_jEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ge, ptr noundef nonnull align 8 dereferenceable(88) %10, i64 noundef %.052186, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(60) %6)
          to label %bb.ba unwind label %bb.ay

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %i.gm = add nuw i64 %.052186, 1                 ; 2 uses
  %exitcond204.not = icmp eq i64 %i.gm, %i.g
  br i1 %exitcond204.not, label %._crit_edge188, label %.lr.ph187, !llvm.loop !181

._crit_edge191:                                   ; preds = %_ZN6duckdb8string_t18SetSizeAndFinalizeEjm.exit
  invoke void @_ZN6duckdb12VariantUtils19FinalizeVariantKeysERNS_6VectorERNS_15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS5_ESaISt4pairIKS5_jEEEEERNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.063.lcssa.i)
          to label %bb.be unwind label %bb.bb

bb.bb:                                            ; preds = %.noexc133, %._crit_edge188, %bb.bi, %bb.bh, %bb.bf, %bb.be, %._crit_edge191
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bc:                                            ; preds = %.lr.ph190, %_ZN6duckdb8string_t18SetSizeAndFinalizeEjm.exit
  %.0189 = phi i64 [ 0, %.lr.ph190 ], [ %i.hb, %_ZN6duckdb8string_t18SetSizeAndFinalizeEjm.exit ] ; 3 uses
  %i.go = load ptr, ptr %i.fp, align 8, !tbaa !37
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %.0189 ; 5 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.0189
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !3  ; 3 uses
  store i32 %i.gr, ptr %i.gp, align 8, !tbaa !95
  %i.gs = icmp ugt i32 %i.gr, 12
  br i1 %i.gs, label %.thread4.i, label %._crit_edge.i135

._crit_edge.i135:                                 ; preds = %bb.bc
  %i.gt = zext nneg i32 %i.gr to i64              ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gt
  %i.gw = sub nuw nsw i64 12, %i.gt
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gv, i8 0, i64 %i.gw, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i

.thread4.i:                                       ; preds = %bb.bc
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = load i32, ptr %i.gz, align 1
  store i32 %i.ha, ptr %i.gx, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i

_ZN6duckdb8string_t8FinalizeEv.exit.i:            ; preds = %.thread4.i, %._crit_edge.i135
  invoke void @_ZNK6duckdb8string_t16VerifyCharactersEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp)
          to label %_ZN6duckdb8string_t18SetSizeAndFinalizeEjm.exit unwind label %bb.bd

_ZN6duckdb8string_t18SetSizeAndFinalizeEjm.exit:  ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit.i
  %i.hb = add nuw i64 %.0189, 1                   ; 2 uses
  %exitcond206.not = icmp eq i64 %i.hb, %i.g
  br i1 %exitcond206.not, label %._crit_edge191, label %bb.bc, !llvm.loop !182

bb.bd:                                            ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit.i
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.be:                                            ; preds = %._crit_edge191
  invoke void @_ZN6duckdb6Vector5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.063.lcssa.i)
          to label %bb.bf unwind label %bb.bb

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %i.dz, i64 noundef %.063.lcssa.i)
          to label %bb.bg unwind label %bb.bb

bb.bg:                                            ; preds = %bb.bf
  %i.hd = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.he = load ptr, ptr %0, align 8, !tbaa !151
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = icmp eq i64 %i.hh, 144
  br i1 %i.hi, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 2)
          to label %bb.bi unwind label %bb.bb

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.g)
          to label %bb.bj unwind label %bb.bb

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !183 ; 8 uses
  %.not.i.i.i.i137 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i137, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 4 uses
  %i.hm = load atomic i64, ptr %i.hl acquire, align 8 ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 4294967297
  %i.ho = trunc i64 %i.hm to i32                  ; 2 uses
  br i1 %i.hn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.hl, align 8, !tbaa !184
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  store i32 0, ptr %i.hp, align 4, !tbaa !186
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !187
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #21, !inline_history !189
  %i.ht = load ptr, ptr %i.hk, align 8, !tbaa !187
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #21, !inline_history !189
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.bm:                                            ; preds = %bb.bk
  %i.hw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i = icmp eq i8 %i.hw, 0
  br i1 %.not.i.i.i.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hx = add nsw i32 %i.ho, -1
  store i32 %i.hx, ptr %i.hl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.hy = atomicrmw volatile add ptr %i.hl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i.i.i = phi i32 [ %i.ho, %bb.bn ], [ %i.hy, %bb.bo ]
  %i.hz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.hz, label %bb.bp, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !190

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #21
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.bj, %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.bq

bb.bq:                                            ; preds = %bb.a, %_ZN6duckdb15SelectionVectorD2Ev.exit
  ret void

bb.br:                                            ; preds = %bb.bb, %bb.bd, %bb.ay, %bb.av
  %.pn79 = phi { ptr, i32 } [ %i.gl, %bb.ay ], [ %i.gd, %bb.av ], [ %i.hc, %bb.bd ], [ %i.gn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.loopexit, %bb.ar
  %.pn79.pn = phi { ptr, i32 } [ %.pn79, %bb.br ], [ %i.fu, %bb.ar ], [ %.pn74.pn, %.loopexit ]
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %7) #21
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.aq
  %.pn79.pn.pn = phi { ptr, i32 } [ %.pn79.pn, %bb.bs ], [ %i.ft, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %6) #21
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.ap
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %.pn79.pn.pn, %bb.bt ], [ %i.fs, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit164, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.an, %bb.bu, %bb.ao
  %.pn79.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fr, %bb.ao ], [ %i.fq, %bb.an ], [ %.pn79.pn.pn.pn, %bb.bu ], [ %lpad.loopexit, %.loopexit164 ], [ %lpad.loopexit165, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit168, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit170, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp171, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit.split-lp, %bb.t, %.loopexit174, %bb.o
  %.pn88 = phi { ptr, i32 } [ %i.bc, %bb.t ], [ %.pn79.pn.pn.pn.pn.pn.pn, %.loopexit.split-lp ], [ %i.am, %bb.o ], [ %.pn.pn, %.loopexit174 ]
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn88
}

declare void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

declare void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv() local_unnamed_addr #1

declare void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef zeroext) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !152    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !156  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i) #21
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !157

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !152
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #23
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN6duckdb7variant17InitializeOffsetsERNS_9DataChunkEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb6vectorINS_12VariantValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.27", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.e = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 144                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !92
  store i64 %i.i, ptr %i.b, align 8, !tbaa !92
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_12VariantValueELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !191

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
end_hunk_1
