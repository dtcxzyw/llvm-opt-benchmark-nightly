inline.NumInlined: 1088
inline.NumDeleted: 543
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6duckdb12VariantValue7AddItemEOS0_:bb.a
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.m unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !121    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #21
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124  ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !125
  %.not.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 %i.a, ptr %i.j, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !126  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

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
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sink = phi ptr [ %.sroa.0.i.sroa.4.i, %bb.g ], [ %i.k, %bb.e ]
  %.sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i.i.ph = phi ptr [ %.sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.4..sroa.0.i.sroa.4.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i.i, %bb.g ], [ %i.k, %bb.e ]
  %i.p = load i32, ptr %.sink, align 1
  br label %_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE10CopyStringES2_.exit.i

_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE10CopyStringES2_.exit.i: ; preds = %bb.h, %bb.f
  %.sroa.0.i.sroa.4.0..sroa.0.i.sroa.4.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i12.i = phi i32 [ 0, %bb.f ], [ %i.p, %bb.h ]
  %.sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i.i = phi ptr [ null, %bb.f ], [ %.sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i.i.ph, %bb.h ]
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
end_hunk_0
