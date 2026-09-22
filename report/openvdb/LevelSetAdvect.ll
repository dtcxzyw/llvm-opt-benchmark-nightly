Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetAdvect?download=true
inline.NumInlined: 45983
inline.NumDeleted: 12404
loop-unroll.NumCompletelyUnrolled: 486
loop-unroll.NumRuntimeUnrolled: 808
loop-unroll.NumUnrolled: 1305
begin_hunk_0_@_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeISB_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKS7_RKNS5_5CoordERT_:bb.a
  %i.ao = icmp sgt i32 %i.k, %i.am
  br i1 %i.ao, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !258
  %i.ar = icmp slt i32 %i.l, %i.aq
  br i1 %i.ar, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeIS9_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKS6_RKNS4_5CoordERT_.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !474 ; 2 uses
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit
  %i.av = and i32 %i.p, -4096
  %i.aw = and i32 %i.b, -4096
  %i.ax = and i32 %i.g, -4096
  %.sroa.2.0.insert.ext.i = zext i32 %i.aw to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.av to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ay, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.ax, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !185
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.au, ptr %i.az, align 8, !tbaa !463
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !478 ; 2 uses
  %i.bb = load i32, ptr %1, align 4, !tbaa !258   ; 2 uses
  %i.bc = shl i32 %i.bb, 3
  %i.bd = and i32 %i.bc, 31744
  %i.be = load i32, ptr %i.a, align 4, !tbaa !258 ; 2 uses
  %i.bf = lshr i32 %i.be, 2
  %i.bg = and i32 %i.bf, 992
  %i.bh = or disjoint i32 %i.bg, %i.bd            ; 2 uses
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !258 ; 2 uses
  %i.bj = lshr i32 %i.bi, 7
  %i.bk = and i32 %i.bj, 31
  %i.bl = or disjoint i32 %i.bh, %i.bk            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 524288
  %i.bn = lshr i32 %i.bh, 6
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !282
  %i.br = and i32 %i.bl, 63
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = and i64 %i.bt, %i.bq
  %.not.i = icmp eq i64 %i.bu, 0
  %i.bv = zext nneg i32 %i.bl to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.bv ; 3 uses
  br i1 %.not.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeIS9_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKS6_RKNS4_5CoordERT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !185
  %i.by = and i32 %i.bb, -128
  %i.bz = and i32 %i.be, -128
  %i.ca = and i32 %i.bi, -128
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bz to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.by to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.cb, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.ca, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !185
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.bx, ptr %i.cc, align 8, !tbaa !461
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !185
  %i.ce = tail call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS8_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKS6_RKNS4_5CoordERT_(ptr noundef nonnull align 8 dereferenceable(66576) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %2)
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeIS9_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKS6_RKNS4_5CoordERT_.exit

bb.l:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeIS9_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKS6_RKNS4_5CoordERT_.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeIS9_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKS6_RKNS4_5CoordERT_.exit: ; preds = %bb.k, %bb.j, %bb.l, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread
  %.0 = phi ptr [ %i.as, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread ], [ %i.cf, %bb.l ], [ %i.ce, %bb.k ], [ %i.bw, %bb.j ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !482    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !229
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !231
  store i8 0, ptr %i.b, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.47, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #16 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !232    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !185
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #16 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #16 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.o, align 8, !tbaa !167
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #28
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !232    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.s = load i64, ptr %i.b, align 8, !tbaa !185
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %i.p

bb.l:                                             ; preds = %bb.a
  ret ptr %i.a

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr { <2 x float>, float } @_ZN7openvdb5v13_05tools10BoxSampler6sampleINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEENT_9ValueTypeERKSM_RKNSB_IdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %3 = load <3 x double>, ptr %1, align 8, !tbaa !524
  %4 = shufflevector <3 x double> %3, <3 x double> poison, <3 x i32> <i32 2, i32 1, i32 0> ; 2 uses
  %5 = tail call <3 x double> @llvm.floor.v3f64(<3 x double> %4)
  %6 = fptosi <3 x double> %5 to <3 x i32>        ; 4 uses
  %7 = extractelement <3 x i32> %6, i64 1
  %.sroa.2.0.insert.ext.i = zext i32 %7 to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %8 = sitofp <3 x i32> %6 to <3 x double>
  %9 = fsub <3 x double> %4, %8                   ; 4 uses
  %10 = extractelement <3 x i32> %6, i64 2
  %.sroa.0.0.insert.ext = zext i32 %10 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %2, align 8
  %11 = extractelement <3 x i32> %6, i64 0
  store i32 %11, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.b = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.b, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4
  %i.c = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !258
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !258
  %i.e = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %.sroa.7.12.copyload = load <2 x float>, ptr %i.e, align 4
  %.sroa.9.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.9.12.copyload = load float, ptr %.sroa.9.12..sroa_idx, align 4
  %i.f = load i32, ptr %i.a, align 4, !tbaa !258
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.a, align 4, !tbaa !258
  %i.h = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %.sroa.15.36.copyload = load <2 x float>, ptr %i.h, align 4
  %.sroa.17.36..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.17.36.copyload = load float, ptr %.sroa.17.36..sroa_idx, align 4
  %i.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !258
  %i.j = add nsw i32 %i.i, -1
  store i32 %i.j, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !258
  %i.k = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %.sroa.10.24.copyload = load <2 x float>, ptr %i.k, align 4 ; 2 uses
  %.sroa.14.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.14.24.copyload = load float, ptr %.sroa.14.24..sroa_idx, align 4
  %i.l = load <2 x i32>, ptr %2, align 8, !tbaa !258
  %i.m = add nsw <2 x i32> %i.l, <i32 1, i32 -1>
  store <2 x i32> %i.m, ptr %2, align 8, !tbaa !258
  %i.n = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %.sroa.18.48.copyload = load <2 x float>, ptr %i.n, align 4 ; 2 uses
  %.sroa.22.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.22.48.copyload = load float, ptr %.sroa.22.48..sroa_idx, align 4
  %i.o = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !258
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !258
  %i.q = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %.sroa.23.60.copyload = load <2 x float>, ptr %i.q, align 4
  %.sroa.25.60..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.25.60.copyload = load float, ptr %.sroa.25.60..sroa_idx, align 4
  %i.r = load i32, ptr %i.a, align 4, !tbaa !258
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.a, align 4, !tbaa !258
  %i.t = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %.sroa.31.84.copyload = load <2 x float>, ptr %i.t, align 4
  %.sroa.33.84..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.33.84.copyload = load float, ptr %.sroa.33.84..sroa_idx, align 4
  %i.u = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !258
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !258
  %i.w = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %.sroa.26.72.copyload = load <2 x float>, ptr %i.w, align 4 ; 2 uses
  %.sroa.30.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.30.72.copyload = load float, ptr %.sroa.30.72..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.x = fsub <2 x float> %.sroa.7.12.copyload, %.sroa.013.0.copyload
  %i.y = fpext <2 x float> %i.x to <2 x double>
  %12 = shufflevector <3 x double> %9, <3 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %13 = fmul <2 x double> %12, %i.y
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = fadd <2 x float> %.sroa.013.0.copyload, %14 ; 2 uses
  %16 = fsub <2 x float> %.sroa.15.36.copyload, %.sroa.10.24.copyload
  %17 = fpext <2 x float> %16 to <2 x double>
  %18 = fmul <2 x double> %12, %17
  %19 = fptrunc <2 x double> %18 to <2 x float>
  %20 = fadd <2 x float> %.sroa.10.24.copyload, %19
  %i.z = fsub <2 x float> %20, %15
  %21 = fpext <2 x float> %i.z to <2 x double>
  %22 = shufflevector <3 x double> %9, <3 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %23 = fmul <2 x double> %22, %21
  %24 = fptrunc <2 x double> %23 to <2 x float>
  %25 = fadd <2 x float> %15, %24                 ; 2 uses
  %26 = fsub <2 x float> %.sroa.23.60.copyload, %.sroa.18.48.copyload
  %27 = fpext <2 x float> %26 to <2 x double>
  %28 = fmul <2 x double> %12, %27
  %29 = fptrunc <2 x double> %28 to <2 x float>
  %30 = fadd <2 x float> %.sroa.18.48.copyload, %29 ; 2 uses
  %31 = fsub <2 x float> %.sroa.31.84.copyload, %.sroa.26.72.copyload
  %i.aa = fpext <2 x float> %31 to <2 x double>
  %32 = fmul <2 x double> %12, %i.aa
  %33 = fptrunc <2 x double> %32 to <2 x float>
  %34 = fadd <2 x float> %.sroa.26.72.copyload, %33
  %35 = fsub <2 x float> %34, %30
  %36 = fpext <2 x float> %35 to <2 x double>
  %37 = fmul <2 x double> %22, %36
  %38 = fptrunc <2 x double> %37 to <2 x float>
  %i.ab = fadd <2 x float> %30, %38
  %39 = insertelement <2 x float> poison, float %.sroa.25.60.copyload, i64 0
  %40 = insertelement <2 x float> %39, float %.sroa.9.12.copyload, i64 1
  %41 = insertelement <2 x float> poison, float %.sroa.22.48.copyload, i64 0
  %42 = insertelement <2 x float> %41, float %.sroa.6.0.copyload, i64 1 ; 2 uses
  %43 = fsub <2 x float> %40, %42
  %44 = fpext <2 x float> %43 to <2 x double>
  %45 = fmul <2 x double> %12, %44
  %i.ac = fptrunc <2 x double> %45 to <2 x float>
  %i.ad = fadd <2 x float> %42, %i.ac             ; 2 uses
  %46 = insertelement <2 x float> poison, float %.sroa.33.84.copyload, i64 0
  %47 = insertelement <2 x float> %46, float %.sroa.17.36.copyload, i64 1
  %48 = insertelement <2 x float> poison, float %.sroa.30.72.copyload, i64 0
  %49 = insertelement <2 x float> %48, float %.sroa.14.24.copyload, i64 1 ; 2 uses
  %50 = fsub <2 x float> %47, %49
  %51 = fpext <2 x float> %50 to <2 x double>
  %52 = fmul <2 x double> %12, %51
  %i.ae = fptrunc <2 x double> %52 to <2 x float>
  %i.af = fadd <2 x float> %49, %i.ae
  %i.ag = fsub <2 x float> %i.af, %i.ad
  %i.ah = fpext <2 x float> %i.ag to <2 x double>
  %i.ai = fmul <2 x double> %22, %i.ah
  %i.aj = fptrunc <2 x double> %i.ai to <2 x float>
  %53 = fadd <2 x float> %i.ad, %i.aj             ; 2 uses
  %54 = fsub <2 x float> %i.ab, %25
  %55 = extractelement <2 x float> %53, i64 0
  %56 = extractelement <2 x float> %53, i64 1     ; 2 uses
  %i.ak = fsub float %55, %56
  %i.al = fpext <2 x float> %54 to <2 x double>
  %i.am = fpext float %i.ak to double
  %57 = shufflevector <3 x double> %9, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %58 = fmul <2 x double> %57, %i.al
  %59 = extractelement <3 x double> %9, i64 2
  %i.an = fmul double %59, %i.am
  %i.ao = fptrunc <2 x double> %58 to <2 x float>
  %i.ap = fptrunc double %i.an to float
  %i.aq = fadd <2 x float> %25, %i.ao
  %i.ar = fadd float %56, %i.ap
  %.fca.0.insert.i19.i113.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.aq, 0
  %.fca.1.insert.i20.i114.i = insertvalue { <2 x float>, float } %.fca.0.insert.i19.i113.i, float %i.ar, 1
  ret { <2 x float>, float } %.fca.1.insert.i20.i114.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools17LevelSetAdvectionINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS2_13DiscreteFieldINS4_INS6_INS7_INS8_INS8_INS9_INS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS2_10BoxSamplerEEENS1_4util15NullInterrupterEE6AdvectINSH_15UniformScaleMapELNSH_20BiasedGradientSchemeE0ELNSH_25TemporalIntegrationSchemeE0EEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSZ_FvS15_ffESt12_PlaceholderILi1EES1A_ILi2EEffEEE9_M_invokeERKSt9_Any_dataOS10_S15_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !360    ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !526
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !185 ; 3 uses
  %.elt5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.unpack6.i.i.i.i.i.i = load i64, ptr %.elt5.i.i.i.i.i.i, align 8, !tbaa !185
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %.unpack6.i.i.i.i.i.i ; 2 uses
  %i.d = and i64 %.unpack.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.f = getelementptr i8, ptr %i.e, i64 %.unpack.i.i.i.i.i.i
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load ptr, ptr %i.g, align 8, !nosanitize !184
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS2_4GridINS2_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_13DiscreteFieldINS5_INS7_INS8_INS9_INS9_INSA_INS2_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS3_10BoxSamplerEEENS2_4util15NullInterrupterEE6AdvectINSI_15UniformScaleMapELNSI_20BiasedGradientSchemeE0ELNSI_25TemporalIntegrationSchemeE0EEEFvRKNS6_11LeafManagerISF_E9LeafRangeEffESt12_PlaceholderILi1EES18_ILi2EEffEEJPS10_S15_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1G_E4typeEOS1H_DpOS1I_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %.unpack.i.i.i.i.i.i to ptr
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS2_4GridINS2_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_13DiscreteFieldINS5_INS7_INS8_INS9_INS9_INSA_INS2_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS3_10BoxSamplerEEENS2_4util15NullInterrupterEE6AdvectINSI_15UniformScaleMapELNSI_20BiasedGradientSchemeE0ELNSI_25TemporalIntegrationSchemeE0EEEFvRKNS6_11LeafManagerISF_E9LeafRangeEffESt12_PlaceholderILi1EES18_ILi2EEffEEJPS10_S15_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1G_E4typeEOS1H_DpOS1I_.exit

_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS2_4GridINS2_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_13DiscreteFieldINS5_INS7_INS8_INS9_INS9_INSA_INS2_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS3_10BoxSamplerEEENS2_4util15NullInterrupterEE6AdvectINSI_15UniformScaleMapELNSI_20BiasedGradientSchemeE0ELNSI_25TemporalIntegrationSchemeE0EEEFvRKNS6_11LeafManagerISF_E9LeafRangeEffESt12_PlaceholderILi1EES18_ILi2EEffEEJPS10_S15_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1G_E4typeEOS1H_DpOS1I_.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.m = load float, ptr %i.l, align 4, !tbaa !347
  %i.n = load float, ptr %i.k, align 8, !tbaa !347
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(73) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.m, float noundef %i.n), !inline_history !2786
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools17LevelSetAdvectionINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS2_13DiscreteFieldINS4_INS6_INS7_INS8_INS8_INS9_INS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS2_10BoxSamplerEEENS1_4util15NullInterrupterEE6AdvectINSH_15UniformScaleMapELNSH_20BiasedGradientSchemeE0ELNSH_25TemporalIntegrationSchemeE0EEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSZ_FvS15_ffESt12_PlaceholderILi1EES1A_ILi2EEffEEE10_M_managerERSt9_Any_dataRKS1G_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS4_13DiscreteFieldINS6_INS8_INS9_INSA_INSA_INSB_INS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS4_10BoxSamplerEEENS3_4util15NullInterrupterEE6AdvectINSJ_15UniformScaleMapELNSJ_20BiasedGradientSchemeE0ELNSJ_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEffESt12_PlaceholderILi1EES19_ILi2EEffEEE10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS2_13DiscreteFieldINS4_INS6_INS7_INS8_INS8_INS9_INS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS2_10BoxSamplerEEENS1_4util15NullInterrupterEE6AdvectINSH_15UniformScaleMapELNSH_20BiasedGradientSchemeE0ELNSH_25TemporalIntegrationSchemeE0EEEFvRKNS5_11LeafManagerISE_E9LeafRangeEffESt12_PlaceholderILi1EES17_ILi2EEffEE, ptr %0, align 8, !tbaa !411
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS4_13DiscreteFieldINS6_INS8_INS9_INSA_INSA_INSB_INS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS4_10BoxSamplerEEENS3_4util15NullInterrupterEE6AdvectINSJ_15UniformScaleMapELNSJ_20BiasedGradientSchemeE0ELNSJ_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEffESt12_PlaceholderILi1EES19_ILi2EEffEEE10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !360
  store ptr %i.a, ptr %0, align 8, !tbaa !360
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS4_13DiscreteFieldINS6_INS8_INS9_INSA_INSA_INSB_INS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS4_10BoxSamplerEEENS3_4util15NullInterrupterEE6AdvectINSJ_15UniformScaleMapELNSJ_20BiasedGradientSchemeE0ELNSJ_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEffESt12_PlaceholderILi1EES19_ILi2EEffEEE10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !360
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !360
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS4_13DiscreteFieldINS6_INS8_INS9_INSA_INSA_INSB_INS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS4_10BoxSamplerEEENS3_4util15NullInterrupterEE6AdvectINSJ_15UniformScaleMapELNSJ_20BiasedGradientSchemeE0ELNSJ_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEffESt12_PlaceholderILi1EES19_ILi2EEffEEE10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS4_13DiscreteFieldINS6_INS8_INS9_INSA_INSA_INSB_INS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS4_10BoxSamplerEEENS3_4util15NullInterrupterEE6AdvectINSJ_15UniformScaleMapELNSJ_20BiasedGradientSchemeE0ELNSJ_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEffESt12_PlaceholderILi1EES19_ILi2EEffEEE10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #27
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS4_13DiscreteFieldINS6_INS8_INS9_INSA_INSA_INSB_INS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS4_10BoxSamplerEEENS3_4util15NullInterrupterEE6AdvectINSJ_15UniformScaleMapELNSJ_20BiasedGradientSchemeE0ELNSJ_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEffESt12_PlaceholderILi1EES19_ILi2EEffEEE10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS4_13DiscreteFieldINS6_INS8_INS9_INSA_INSA_INSB_INS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS4_10BoxSamplerEEENS3_4util15NullInterrupterEE6AdvectINSJ_15UniformScaleMapELNSJ_20BiasedGradientSchemeE0ELNSJ_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEffESt12_PlaceholderILi1EES19_ILi2EEffEEE10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools17LevelSetAdvectionINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_13DiscreteFieldINS3_INS5_INS6_INS7_INS7_INS8_INS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS1_10BoxSamplerEEENS0_4util15NullInterrupterEE6AdvectINSG_15UniformScaleMapELNSG_20BiasedGradientSchemeE0ELNSG_25TemporalIntegrationSchemeE0EE6sampleILb0EEEvRKNS4_11LeafManagerISD_E9LeafRangeEff(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, float noundef %2, float noundef %3) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::math::Vec3<float>, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::tools::DiscreteField", align 8 ; 20 uses
  %7 = alloca %"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter", align 8 ; 7 uses
  %8 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 6 uses
  %i.c = fcmp olt float %2, %3                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !291  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !323, !nonnull !184, !align !324 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !171  ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %6, align 8, !tbaa !167
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr null, ptr %5, align 8, !tbaa !175
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i8 0, ptr %i.k, align 8, !tbaa !176
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr %6, ptr %i.b, align 8, !tbaa !178
  %i.n = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISL_EENSM_13tbb_allocatorISt4pairIKSL_bEEEE6lookupILb1ESL_PFPNSU_4nodeERNSP_INS1_13hash_map_baseIST_NSM_13spin_rw_mutexEE6bucketEEERSR_PKbEEEbRKT0_S16_PNSU_14const_accessorEbT1_SX_(ptr noundef nonnull align 8 dereferenceable(570) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISL_EENSM_13tbb_allocatorISt4pairIKSL_bEEEE31allocate_node_default_constructISL_EEPNSU_4nodeERNSP_INS1_13hash_map_baseIST_NSM_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISL_EENSM_13tbb_allocatorISt4pairIKSL_bEEEE6insertERNSU_8accessorERSR_.exit.i.i.i.i unwind label %bb.e ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISL_EENSM_13tbb_allocatorISt4pairIKSL_bEEEE6insertERNSU_8accessorERSR_.exit.i.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.l, align 8, !tbaa !182
  %i.o = load ptr, ptr %5, align 8, !tbaa !175    ; 3 uses
  %.not.i.i3.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i3.i.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISL_EENSM_13tbb_allocatorISt4pairIKSL_bEEEE6insertERNSU_8accessorERSR_.exit.i.i.i.i
  store ptr null, ptr %5, align 8, !tbaa !175
  %i.p = load i8, ptr %i.k, align 8, !tbaa !176, !range !183, !noundef !184
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = atomicrmw and ptr %i.o, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.s = atomicrmw sub ptr %i.o, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.l, align 8, !tbaa !182
  %i.u = load ptr, ptr %5, align 8, !tbaa !175    ; 3 uses
  %.not.i.i4.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i4.i.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISL_EENSM_13tbb_allocatorISt4pairIKSL_bEEEE14const_accessorD2Ev.exit5.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %5, align 8, !tbaa !175
  %i.v = load i8, ptr %i.k, align 8, !tbaa !176, !range !183, !noundef !184
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = atomicrmw and ptr %i.u, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISL_EENSM_13tbb_allocatorISt4pairIKSL_bEEEE14const_accessorD2Ev.exit5.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = atomicrmw sub ptr %i.u, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISL_EENSM_13tbb_allocatorISt4pairIKSL_bEEEE14const_accessorD2Ev.exit5.i.i.i.i

common.resume:                                    ; preds = %bb.z, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISL_EENSM_13tbb_allocatorISt4pairIKSL_bEEEE14const_accessorD2Ev.exit5.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.t, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISL_EENSM_13tbb_allocatorISt4pairIKSL_bEEEE14const_accessorD2Ev.exit5.i.i.i.i ], [ %.pn29.pn.pn, %bb.z ]
  resume { ptr, i32 } %common.resume.op

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISL_EENSM_13tbb_allocatorISt4pairIKSL_bEEEE14const_accessorD2Ev.exit5.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %common.resume

bb.i:                                             ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISL_EENSM_13tbb_allocatorISt4pairIKSL_bEEEE6insertERNSU_8accessorERSR_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %6, align 8, !tbaa !167
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i64 9223372034707292159, ptr %i.aa, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !185
  %.06.i.i.i.i.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i, align 4, !tbaa !185
  %.06.i.i.i.i.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i, align 8, !tbaa !185
  store ptr null, ptr %i.z, align 8, !tbaa !188
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 0, i64 32, i1 false)
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_05tools13DiscreteFieldINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS1_10BoxSamplerEEC2ERKSJ_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !190
  br label %_ZN7openvdb5v13_05tools13DiscreteFieldINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS1_10BoxSamplerEEC2ERKSJ_.exit

_ZN7openvdb5v13_05tools13DiscreteFieldINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS1_10BoxSamplerEEC2ERKSJ_.exit: ; preds = %bb.i, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !208
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !208
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !323, !nonnull !184, !align !324
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !325 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.n, label %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i

_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i: ; preds = %_ZN7openvdb5v13_05tools13DiscreteFieldINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS1_10BoxSamplerEEC2ERKSJ_.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !167
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_05tools17LevelSetAdvectionINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_13DiscreteFieldINS3_INS5_INS6_INS7_INS7_INS8_INS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS1_10BoxSamplerEEENS0_4util15NullInterrupterEE6AdvectINSG_14TranslationMapELNSG_20BiasedGradientSchemeE4ELNSG_25TemporalIntegrationSchemeE2EE5eulerILi1ELi3EEEvRKNS4_11LeafManagerISD_E9LeafRangeEdjj:bb.a
  %i.fr = fptrunc <2 x double> %i.fq to <2 x float> ; 2 uses
  %i.fs = load double, ptr %i.aj, align 16, !tbaa !524
  %i.ft = fptrunc double %i.fs to float
  %i.fu = load float, ptr %.063, align 4, !tbaa !347
  %i.fv = load float, ptr %i.fp, align 4, !tbaa !347
  %i.fw = extractelement <2 x float> %i.fr, i64 1
  %i.fx = fmul float %i.fv, %i.fw
  %i.fy = extractelement <2 x float> %i.fr, i64 0
  %i.fz = call float @llvm.fmuladd.f32(float %i.fu, float %i.fy, float %i.fx)
  %i.ga = load float, ptr %i.fm, align 4, !tbaa !347
  %i.gb = call noundef float @llvm.fmuladd.f32(float %i.ga, float %i.ft, float %i.fz)
  %i.gc = fpext float %i.gb to double
  %i.gd = call double @llvm.fmuladd.f64(double %i.ak, double %i.gc, double %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.ge = zext i32 %i.en to i64                   ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !524
  %i.gh = fmul double %i.gd, f0x3FE5555555555556
  %i.gi = call double @llvm.fmuladd.f64(double %i.gg, double f0x3FD5555555555555, double %i.gh)
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ge
  store double %i.gi, ptr %i.gj, align 8, !tbaa !524
  %i.gk = load ptr, ptr %i.al, align 8, !tbaa !479 ; 8 uses
  %i.gl = load i32, ptr %i.ae, align 8, !tbaa !460
  %i.gm = add i32 %i.gl, 1                        ; 4 uses
  %i.gn = lshr i32 %i.gm, 6                       ; 3 uses
  %i.go = icmp ugt i32 %i.gm, 511
  br i1 %i.go, label %._crit_edge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gp = and i32 %i.gm, 63
  %i.gq = zext nneg i32 %i.gn to i64              ; 8 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !282 ; 2 uses
  %i.gt = zext nneg i32 %i.gp to i64              ; 2 uses
  %i.gu = shl nuw i64 1, %i.gt
  %i.gv = and i64 %i.gs, %i.gu
  %.not.i.i.i.i49 = icmp eq i64 %i.gv, 0
  br i1 %.not.i.i.i.i49, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.gw = shl nsw i64 -1, %i.gt
  %i.gx = and i64 %i.gs, %i.gw                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i50.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i50.preheader:                       ; preds = %bb.ag
  %exitcond.not.i.i.i.i91 = icmp eq i32 %i.gn, 7
  br i1 %exitcond.not.i.i.i.i91, label %._crit_edge, label %.lr.ph93

.lr.ph.i.i.i.i50:                                 ; preds = %.lr.ph93
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph93.1

.lr.ph93.1:                                       ; preds = %.lr.ph.i.i.i.i50
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.gq, 2 ; 3 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i.i.i.i.1
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !282 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.gz, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i50.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !20

.lr.ph.i.i.i.i50.1:                               ; preds = %.lr.ph93.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph93.2

.lr.ph93.2:                                       ; preds = %.lr.ph.i.i.i.i50.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.gq, 3 ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i.i.i.i.2
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !282 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.hb, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i50.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !20

.lr.ph.i.i.i.i50.2:                               ; preds = %.lr.ph93.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph93.3

.lr.ph93.3:                                       ; preds = %.lr.ph.i.i.i.i50.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.gq, 4 ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i.i.i.i.3
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !282 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.hd, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i50.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !20

.lr.ph.i.i.i.i50.3:                               ; preds = %.lr.ph93.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph93.4

.lr.ph93.4:                                       ; preds = %.lr.ph.i.i.i.i50.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.gq, 5 ; 3 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i.i.i.i.4
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !282 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.hf, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i50.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !20

.lr.ph.i.i.i.i50.4:                               ; preds = %.lr.ph93.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph93.5

.lr.ph93.5:                                       ; preds = %.lr.ph.i.i.i.i50.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.gq, 6 ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i.i.i.i.5
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !282 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.hh, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i50.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !20

.lr.ph.i.i.i.i50.5:                               ; preds = %.lr.ph93.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph93.6

.lr.ph93.6:                                       ; preds = %.lr.ph.i.i.i.i50.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.gq, 7 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i.i.i.i.6
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !282 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.hj, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !20

.lr.ph93:                                         ; preds = %.lr.ph.i.i.i.i50.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.gq, 1 ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i.i.i.i
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !282 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.hl, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i50, label %.critedge.loopexit.i.i.i.i, !llvm.loop !20

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph93.6, %.lr.ph93.5, %.lr.ph93.4, %.lr.ph93.3, %.lr.ph93.2, %.lr.ph93.1, %.lr.ph93
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph93 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph93.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph93.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph93.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph93.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph93.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph93.6 ]
  %.lcssa = phi i64 [ %i.hl, %.lr.ph93 ], [ %i.gz, %.lr.ph93.1 ], [ %i.hb, %.lr.ph93.2 ], [ %i.hd, %.lr.ph93.3 ], [ %i.hf, %.lr.ph93.4 ], [ %i.hh, %.lr.ph93.5 ], [ %i.hj, %.lr.ph93.6 ]
  %i.hm = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.ag
  %.016.lcssa.i.i.i.i = phi i32 [ %i.gn, %bb.ag ], [ %i.hm, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.gx, %bb.ag ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.hn = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.ho = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.hp = trunc nuw nsw i64 %i.ho to i32
  %i.hq = or disjoint i32 %i.hn, %i.hp
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.i.i.i.i, %bb.af
  %.118.i.i.i.i = phi i32 [ %i.hq, %.critedge.i.i.i.i ], [ %i.gm, %bb.af ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ae, align 8, !tbaa !460
  %i.hr = getelementptr inbounds nuw i8, ptr %.063, i64 12
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10713

bb.ah:                                            ; preds = %.noexc46, %.lr.ph
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ac
  %.pn22 = phi { ptr, i32 } [ %i.em, %bb.ac ], [ %i.ht, %bb.ai ], [ %i.hs, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.body

.body:                                            ; preds = %bb.ab, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i34, %bb.aa, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.aj
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %i.dy, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i34 ], [ %i.cn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %.pn22, %bb.aj ], [ %i.ek, %bb.aa ], [ %i.el, %bb.ab ]
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %.pn22.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x double> @llvm.floor.v3f64(<3 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #9

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nofree nounwind }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!158, !159}
!llvm.ident = !{!160}
!llvm.errno.tbaa = !{!165}

!0 = distinct !{!0, !250}
!1 = distinct !{!1, !250}
!2 = distinct !{!2, !250}
!3 = distinct !{!3, !250}
!4 = distinct !{!4, !250}
!5 = distinct !{!5, !250}
!6 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7 = distinct !{null, null, null, null}
!8 = distinct !{null, null}
!9 = distinct !{null}
!10 = distinct !{null, null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{!14, !250}
!15 = distinct !{null}
!16 = distinct !{!16, !250}
!17 = distinct !{null}
!18 = distinct !{!18, !250}
!19 = distinct !{!19, !250}
!20 = distinct !{!20, !250}
!21 = distinct !{ptr @_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!22 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!23 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!24 = distinct !{null}
!25 = distinct !{!25, !250}
!26 = distinct !{null}
!27 = distinct !{null, null, null, null, null}
!28 = distinct !{null, null, null}
!29 = distinct !{null}
!30 = distinct !{null}
!31 = distinct !{null}
!32 = distinct !{null}
!33 = distinct !{null}
!34 = distinct !{null}
!35 = distinct !{null}
!36 = distinct !{null}
!37 = distinct !{null}
!38 = distinct !{null}
!39 = distinct !{null}
!40 = distinct !{null}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = distinct !{null}
!44 = distinct !{null}
!45 = distinct !{null}
!46 = distinct !{null}
!47 = distinct !{null}
!48 = distinct !{null}
!49 = distinct !{null}
!50 = distinct !{null}
!51 = distinct !{null}
!52 = distinct !{null}
!53 = distinct !{null}
!54 = distinct !{null}
!55 = distinct !{null}
!56 = distinct !{null}
!57 = distinct !{null}
!58 = distinct !{null}
!59 = distinct !{null}
!60 = distinct !{null}
!61 = distinct !{null}
!62 = distinct !{null}
!63 = distinct !{null}
!64 = distinct !{null}
!65 = distinct !{null}
!66 = distinct !{null}
!67 = distinct !{null}
!68 = distinct !{null}
!69 = distinct !{null}
!70 = distinct !{null}
!71 = distinct !{null}
!72 = distinct !{null}
!73 = distinct !{null}
!74 = distinct !{null}
!75 = distinct !{null}
!76 = distinct !{null}
!77 = distinct !{null}
!78 = distinct !{null}
!79 = distinct !{null}
!80 = distinct !{null}
!81 = distinct !{null}
!82 = distinct !{null}
!83 = distinct !{null}
!84 = distinct !{null}
!85 = distinct !{null}
!86 = distinct !{null}
!87 = distinct !{null}
!88 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!89 = distinct !{null, null, null, null}
!90 = distinct !{null, null}
!91 = distinct !{null}
!92 = distinct !{null}
!93 = distinct !{null}
!94 = distinct !{null}
!95 = distinct !{!95, !250}
!96 = distinct !{null}
!97 = distinct !{!97, !250}
!98 = distinct !{null}
!99 = distinct !{null}
!100 = distinct !{null}
!101 = distinct !{null}
!102 = distinct !{null}
!103 = distinct !{null}
!104 = distinct !{null}
!105 = distinct !{null}
!106 = distinct !{null}
!107 = distinct !{null}
!108 = distinct !{null}
!109 = distinct !{null}
!110 = distinct !{null}
!111 = distinct !{null}
!112 = distinct !{null}
!113 = distinct !{null}
!114 = distinct !{null}
!115 = distinct !{null}
!116 = distinct !{null}
!117 = distinct !{null}
!118 = distinct !{null}
!119 = distinct !{null}
!120 = distinct !{null}
!121 = distinct !{null}
!122 = distinct !{null}
!123 = distinct !{null}
!124 = distinct !{null}
!125 = distinct !{null}
!126 = distinct !{null}
!127 = distinct !{null}
!128 = distinct !{null}
!129 = distinct !{null}
!130 = distinct !{null}
!131 = distinct !{null}
!132 = distinct !{null}
!133 = distinct !{null}
!134 = distinct !{null}
!135 = distinct !{null}
!136 = distinct !{null}
!137 = distinct !{null}
!138 = distinct !{null}
!139 = distinct !{null}
!140 = distinct !{null}
!141 = distinct !{null}
!142 = distinct !{null}
!143 = distinct !{null}
!144 = distinct !{null}
!145 = distinct !{null}
!146 = distinct !{null}
!147 = distinct !{null}
!148 = distinct !{null}
!149 = distinct !{null}
!150 = distinct !{null}
!151 = distinct !{null}
!152 = distinct !{null}
!153 = distinct !{null}
!154 = distinct !{null}
!155 = distinct !{null}
!156 = distinct !{null}
end_hunk_1
