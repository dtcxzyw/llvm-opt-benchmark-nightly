Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/RandomNumber?download=true
inline.NumInlined: 146
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0

$_ZNSt8_Rb_treeI16RNDNUM_GENERATORSt4pairIKS0_P18AbsRndNumGeneratorESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_ = comdat any

@_ZN12RandomNumber9instance_E = dso_local local_unnamed_addr global ptr null, align 8
@_ZTV12RandomNumber = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI12RandomNumber, ptr @_ZN12RandomNumber8rnd_uptoEjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN12RandomNumber12rnd_flipcoinEjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN12RandomNumberD2Ev, ptr @_ZN12RandomNumberD0Ev, ptr @_ZN12RandomNumber15RandomHexDigitsB5cxx11Ei, ptr @_ZN12RandomNumber12RandomDigitsB5cxx11Ei] }, align 8
@_ZTI12RandomNumber = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS12RandomNumber }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS12RandomNumber = dso_local constant [15 x i8] c"12RandomNumber\00", align 1

@_ZN12RandomNumberC1Em = dso_local unnamed_addr alias void (ptr, i64), ptr @_ZN12RandomNumberC2Em
@_ZN12RandomNumberD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12RandomNumberD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12RandomNumberC2Em(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 8), (24, 28), (32, 40)) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV12RandomNumber, i64 16), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %1, ptr %i.h, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !31
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.i, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 1, ptr %i.a, align 4, !tbaa !31
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.j, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #12
  resume { ptr, i32 } %i.k
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i32, ptr %1, align 4, !tbaa !31    ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31
  %i.f = icmp slt i32 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !39

_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !31
  %i.j = icmp slt i32 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeI16RNDNUM_GENERATORSt4pairIKS0_P18AbsRndNumGeneratorESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #13 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i32 %.pre, ptr %i.l, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr null, ptr %i.m, align 8, !tbaa !42
  %i.n = invoke { ptr, ptr } @_ZNSt8_Rb_treeI16RNDNUM_GENERATORSt4pairIKS0_P18AbsRndNumGeneratorESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.c unwind label %_ZNSt8_Rb_treeI16RNDNUM_GENERATORSt4pairIKS0_P18AbsRndNumGeneratorESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.c:                                             ; preds = %.critedge
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i32, ptr %i.l, align 8, !tbaa !31
  %i.t = load i32, ptr %i.r, align 4, !tbaa !31
  %i.u = icmp slt i32 %i.s, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.v = phi i1 [ %i.u, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !21
  br label %_ZNSt8_Rb_treeI16RNDNUM_GENERATORSt4pairIKS0_P18AbsRndNumGeneratorESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

_ZNSt8_Rb_treeI16RNDNUM_GENERATORSt4pairIKS0_P18AbsRndNumGeneratorESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #14
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #14
  br label %_ZNSt8_Rb_treeI16RNDNUM_GENERATORSt4pairIKS0_P18AbsRndNumGeneratorESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

_ZNSt8_Rb_treeI16RNDNUM_GENERATORSt4pairIKS0_P18AbsRndNumGeneratorESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.aa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  invoke void @_ZNSt8_Rb_treeI16RNDNUM_GENERATORSt4pairIKS0_P18AbsRndNumGeneratorESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeI16RNDNUM_GENERATORSt4pairIKS0_P18AbsRndNumGeneratorESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #15
  unreachable

_ZNSt8_Rb_treeI16RNDNUM_GENERATORSt4pairIKS0_P18AbsRndNumGeneratorESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12RandomNumberD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV12RandomNumber, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  invoke void @_ZNSt8_Rb_treeI16RNDNUM_GENERATORSt4pairIKS0_P18AbsRndNumGeneratorESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #15
  unreachable

_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.b, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.f, ptr %i.g, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12RandomNumberD0Ev(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV12RandomNumber, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  invoke void @_ZNSt8_Rb_treeI16RNDNUM_GENERATORSt4pairIKS0_P18AbsRndNumGeneratorESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN12RandomNumberD2Ev.exit unwind label %bb.b, !inline_history !43

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #15, !inline_history !43
  unreachable

_ZN12RandomNumberD2Ev.exit:                       ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.b, align 8, !tbaa !18
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %2, align 8, !tbaa !19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12RandomNumber26make_all_rndnum_generatorsEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !31
  %i.c = tail call noundef ptr @_ZN18AbsRndNumGenerator21make_rndnum_generatorE16RNDNUM_GENERATORm(i32 noundef 0, i64 noundef %1)
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store ptr %i.c, ptr %i.d, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 1, ptr %i.a, align 4, !tbaa !31
  %i.e = call noundef ptr @_ZN18AbsRndNumGenerator21make_rndnum_generatorE16RNDNUM_GENERATORm(i32 noundef 1, i64 noundef %1)
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store ptr %i.e, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare noundef ptr @_ZN18AbsRndNumGenerator21make_rndnum_generatorE16RNDNUM_GENERATORm(i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12RandomNumber14CreateInstanceE16RNDNUM_GENERATORm(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store i32 %0, ptr %i.b, align 4, !tbaa !31
  %i.c = load ptr, ptr @_ZN12RandomNumber9instance_E, align 8, !tbaa !36 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #13 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV12RandomNumber, i64 16), ptr %i.d, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.f, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.f, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 0, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %1, ptr %i.k, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !31
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.c unwind label %.body

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.l, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 1, ptr %i.a, align 4, !tbaa !31
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.d unwind label %.body

.body:                                            ; preds = %bb.c, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.e) #12
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 72) #14
  resume { ptr, i32 } %i.n

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.m, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store ptr %i.d, ptr @_ZN12RandomNumber9instance_E, align 8, !tbaa !36
  %i.o = load i32, ptr %i.b, align 4, !tbaa !31
  %i.p = call noundef ptr @_ZN18AbsRndNumGenerator21make_rndnum_generatorE16RNDNUM_GENERATORm(i32 noundef %i.o, i64 noundef %1) ; 2 uses
  %i.q = load ptr, ptr @_ZN12RandomNumber9instance_E, align 8, !tbaa !36 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %i.r, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  store ptr %i.p, ptr %i.t, align 8, !tbaa !32
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32
  %i.x = load ptr, ptr @_ZN12RandomNumber9instance_E, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %i.y, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN12RandomNumber11GetInstanceEv() local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN12RandomNumber9instance_E, align 8, !tbaa !36
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN12RandomNumber18GetRndNumGeneratorEv() local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN12RandomNumber9instance_E, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12RandomNumber21SwitchRndNumGeneratorE16RNDNUM_GENERATOR(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !31
  %i.b = load ptr, ptr @_ZN12RandomNumber9instance_E, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.a, align 4, !tbaa !31
  %i.h = load ptr, ptr @_ZN12RandomNumber9instance_E, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29
  %i.k = call noundef ptr @_ZN18AbsRndNumGenerator21make_rndnum_generatorE16RNDNUM_GENERATORm(i32 noundef %i.g, i64 noundef %i.j) ; 2 uses
  %i.l = load ptr, ptr @_ZN12RandomNumber9instance_E, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapI16RNDNUM_GENERATORP18AbsRndNumGeneratorSt4lessIS0_ESaISt4pairIKS0_S2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store ptr %i.k, ptr %i.n, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.k, %bb.b ], [ %i.e, %bb.a ]
  %i.o = load ptr, ptr @_ZN12RandomNumber9instance_E, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.v = load ptr, ptr @_ZN12RandomNumber9instance_E, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.0, ptr %i.w, align 8, !tbaa !37
  ret i32 %i.u
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12RandomNumber17get_prefixed_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN12RandomNumber11trace_depthB5cxx11Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12RandomNumber12get_sequenceERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12RandomNumber8rnd_uptoEjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
