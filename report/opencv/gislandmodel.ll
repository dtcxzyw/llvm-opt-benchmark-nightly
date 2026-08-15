inline.NumInlined: 3354
inline.NumDeleted: 1628
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@llvm.lifetime.start.p0
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv5gimpl7GIsland4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(248) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.c = load i64, ptr %i.b, align 8, !tbaa !30
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %_ZNK2cv4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit, label %bb.d

_ZNK2cv4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !108
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.i = load i64, ptr %i.h, align 8, !tbaa !61   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.i, ptr %i.a, align 8, !tbaa !55
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNK2cv4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !32
  %i.l = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.l, ptr %i.f, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZNK2cv4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %_ZNK2cv4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !13
  store i8 %i.n, ptr %i.m, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !61
  %i.q = load ptr, ptr %0, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.7, i64 noundef 8)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !123
  %i.aa = and i32 %i.z, -75
  %i.ab = or disjoint i32 %i.aa, 8
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !124
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %1)
          to label %_ZNSolsEPKv.exit unwind label %bb.i ; 0 uses

_ZNSolsEPKv.exit:                                 ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !108, !alias.scope !131
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !61, !alias.scope !131
  store i8 0, ptr %i.ad, align 8, !tbaa !13, !alias.scope !131
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !110, !noalias !131 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !131 ; 2 uses
  %i.aj = icmp ugt ptr %i.ag, %i.ai
  %.08.i.i.i = select i1 %i.aj, ptr %i.ag, ptr %i.ai ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNSolsEPKv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !112, !noalias !131 ; 2 uses
  %i.am = ptrtoint ptr %.08.i.i.i to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.al, i64 noundef %i.ao)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !32, !alias.scope !131 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ad
  br i1 %i.as, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.at = load i64, ptr %i.ad, align 8, !tbaa !13, !alias.scope !131
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #27
  br label %.body

bb.h:                                             ; preds = %_ZNSolsEPKv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.aw = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aw, ptr %2, align 8, !tbaa !42
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ay = getelementptr i8, ptr %i.aw, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %2, i64 %i.az
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !42
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bb, ptr %i.s, align 8, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bc, align 8, !tbaa !42
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !13
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bc, align 8, !tbaa !42
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bj) #25
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bk, ptr %2, align 8, !tbaa !42
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bm = getelementptr i8, ptr %i.bk, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %i.bn
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !42
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bp, align 8, !tbaa !121
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bq) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.i ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aq, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

declare noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() local_unnamed_addr #7

declare void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv5gimpl7GIsland9consumersERKN3ade5GraphERKNS2_6HandleINS2_4NodeEEE(ptr dead_on_unwind noalias writable sret(%"class.std::unordered_set") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ade::Handle.111", align 8   ; 6 uses
  %5 = alloca %"class.ade::Handle", align 8       ; 5 uses
  %6 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>, ade::Node::InEdgeMapper>>::iterator", align 8 ; 9 uses
  %7 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %8 = alloca %"class.ade::details::MetadataId", align 8 ; 6 uses
  %9 = alloca %"class.ade::Handle", align 16      ; 5 uses
  %10 = alloca %"struct.ade::details::InitIdsArray", align 1 ; 3 uses
  %11 = alloca %"class.ade::ConstTypedGraph", align 8 ; 7 uses
  %12 = alloca %"struct.ade::util::Range::MapRange", align 8 ; 7 uses
  %13 = alloca %"struct.ade::util::Range::MapRange", align 8 ; 4 uses
  %14 = alloca %"struct.ade::util::Range::MapRange", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.a = ptrtoint ptr %2 to i64
  store i64 %i.a, ptr %11, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false), !tbaa !135
  tail call void @_ZN3ade7details16checkUniqueNamesIJN2cv5gimpl8NodeKindENS3_11FusedIslandENS3_8DataSlotENS3_10IslandExecENS3_7EmitterENS3_4SinkENS3_15IslandsCompiledENS3_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEEEvv()
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZNK3ade7details12InitIdsArrayIN2cv5gimpl8NodeKindEJNS3_11FusedIslandENS3_8DataSlotENS3_10IslandExecENS3_7EmitterENS3_4SinkENS3_15IslandsCompiledENS3_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEEclERKNS_5GraphENS_4util11MemoryRangeINS0_10MetadataIdEEE(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr nonnull %i.b, i64 9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.c = load i64, ptr %11, align 8, !tbaa !132, !noalias !137
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40, !noalias !137 ; 2 uses
  %i.h = load <2 x ptr>, ptr %3, align 8, !tbaa !12, !noalias !137
  store <2 x ptr> %i.h, ptr %9, align 16, !tbaa !12, !noalias !137
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13, !noalias !137
  %.not.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !14, !noalias !137
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !14, !noalias !137
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4, !noalias !137 ; 0 uses
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i:         ; preds = %bb.d, %bb.c, %bb.a
  %i.n = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK3ade5Graph8metadataENS_6HandleINS_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.d, ptr noundef nonnull align 8 %9)
          to label %bb.e unwind label %bb.j, !noalias !137 ; 5 uses

bb.e:                                             ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !137 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13, !noalias !137
  %.not.i.i.i.i3.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.p, align 4, !tbaa !14, !noalias !137 ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !14, !noalias !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.t = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4, !noalias !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %bb.g ], [ %i.t, %bb.h ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.i, label %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !42, !noalias !137
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !noalias !137
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25, !noalias !137, !inline_history !140
  br label %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit

bb.j:                                             ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !137 ; 4 uses
  %.not.i.i.i4.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i4.i, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13, !noalias !137
  %.not.i.i.i.i5.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !14, !noalias !137 ; 2 uses
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !14, !noalias !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i

bb.m:                                             ; preds = %bb.k
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4, !noalias !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i7.i = phi i32 [ %i.ac, %bb.l ], [ %i.ae, %bb.m ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i7.i, 1
  br i1 %i.af, label %bb.n, label %common.resume

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !42, !noalias !137
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !137
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25, !noalias !137, !inline_history !140
  br label %common.resume

common.resume:                                    ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i, %bb.n, %_ZN3ade6HandleINS_4NodeEED2Ev.exit54
  %common.resume.op = phi { ptr, i32 } [ %.pn14, %_ZN3ade6HandleINS_4NodeEED2Ev.exit54 ], [ %i.y, %bb.n ], [ %i.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i ], [ %i.y, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.aj, align 8, !tbaa !12
  store ptr %.sroa.0.0.copyload.i.i, ptr %8, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !141
  %.not.not.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.not.i.i.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.am, %bb.o ], [ %.sroa.06.0.i.i.i.i, %bb.p ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !39, !nonnull !147, !noundef !147 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.ao = call noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.an)
  br i1 %i.ao, label %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE3getIS5_EENSt11conditionalILb1ERKT_RSG_E4typeEv.exit, label %bb.p, !llvm.loop !148

bb.q:                                             ; preds = %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit
  %i.ap = call noundef i64 @_ZNK3ade7details8Metadata6IdHashclERKNS0_10MetadataIdE(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %8) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !149 ; 2 uses
  %i.as = urem i64 %i.ap, %i.ar                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !150
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !59, !nonnull !147, !noundef !147 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.pre.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !57
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i, %bb.q
  %i.ay = phi i64 [ %i.ar, %bb.q ], [ %i.bd, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i ]
  %i.az = phi i64 [ %.pre.i.i.i.i.i.i, %bb.q ], [ %i.bg, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i ]
  %.015.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.q ], [ %.0.i.i.i.i.i.i16, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i16 = phi ptr [ %i.ax, %bb.q ], [ %i.be, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %i.ba = icmp eq i64 %i.ap, %i.az
  br i1 %i.ba, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i: ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i16, i64 8
  %i.bc = call noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
  br i1 %i.bc, label %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i
  %.pre.i.i = load i64, ptr %i.aq, align 8, !tbaa !149
  br label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i, %bb.r
  %i.bd = phi i64 [ %.pre.i.i, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i ], [ %i.ay, %bb.r ] ; 2 uses
  %i.be = load ptr, ptr %.0.i.i.i.i.i.i16, align 8, !tbaa !39, !nonnull !147, !noundef !147 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !57 ; 2 uses
  %i.bh = urem i64 %i.bg, %i.bd
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.bh, %i.as
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  br label %bb.r

_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i
  %i.bi = load ptr, ptr %.015.i.i.i.i.i.i, align 8, !tbaa !39
  br label %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE3getIS5_EENSt11conditionalILb1ERKT_RSG_E4typeEv.exit

_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE3getIS5_EENSt11conditionalILb1ERKT_RSG_E4typeEv.exit: ; preds = %bb.p, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i
  %.sroa.06.1.i.i.i.i = phi ptr [ %i.bi, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i ], [ %.sroa.06.0.i.i.i.i, %bb.p ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !151 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40 ; 2 uses
  %i.bo = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !12 ; 4 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i17, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE3getIS5_EENSt11conditionalILb1ERKT_RSG_E4typeEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 3 uses
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i.i18 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i18, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !14
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !14
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bp, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit:           ; preds = %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE3getIS5_EENSt11conditionalILb1ERKT_RSG_E4typeEv.exit, %bb.t, %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.bw, align 8, !tbaa !28
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.by, align 8, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0118.0134 = load ptr, ptr %i.ca, align 8, !tbaa !39 ; 2 uses
  %.not135 = icmp eq ptr %.sroa.0118.0134, null
  br i1 %.not135, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.0110.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.0110.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.9159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.0.8.vec.extract164 = extractelement <2 x ptr> %i.bo, i64 1 ; 8 uses
  %.not.i.i.i.i.i2.i = icmp eq ptr %.sroa.0.8.vec.extract164, null
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.8.vec.extract164, i64 8 ; 7 uses
  %.sroa.0.0.vec.extract = extractelement <2 x ptr> %i.bo, i64 0
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.8.vec.extract164, i64 12
  br label %bb.z

._crit_edge:                                      ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratorneERKSL_.exit.thread, %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit
  %.sroa.0.8.vec.extract162 = extractelement <2 x ptr> %i.bo, i64 1 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.8.vec.extract162, null
  br i1 %.not.i.i.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.8.vec.extract162, i64 12 ; 3 uses
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i19 = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i19, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !14 ; 2 uses
  %i.ck = add nsw i32 %i.cj, -1
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cl = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i = phi i32 [ %i.cj, %bb.w ], [ %i.cl, %bb.x ]
  %i.cm = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cm, label %bb.y, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.cn = load ptr, ptr %.sroa.0.8.vec.extract162, align 8, !tbaa !42
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.8.vec.extract162) #25, !inline_history !153
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit

_ZN3ade6HandleINS_4NodeEED2Ev.exit:               ; preds = %._crit_edge, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  ret void

bb.z:                                             ; preds = %.lr.ph, %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratorneERKSL_.exit.thread
  %.sroa.0110.sroa.3.0 = phi <16 x i8> [ undef, %.lr.ph ], [ %.sroa.0110.sroa.3.0.vecblend, %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratorneERKSL_.exit.thread ]
  %.sroa.0118.0136 = phi ptr [ %.sroa.0118.0134, %.lr.ph ], [ %.sroa.0118.0, %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratorneERKSL_.exit.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0118.0136, i64 16 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !40, !noalias !154, !nonnull !147, !noundef !147 ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 7 uses
  %i.ct = load atomic i32, ptr %i.cs monotonic, align 8, !noalias !154
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.ct, %bb.z ], [ %i.cx, %bb.aa ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp ne i32 %.06.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i)
  %i.cu = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.cv = cmpxchg weak ptr %i.cs, i32 %.06.i.i.i.i.i.i.i, i32 %i.cu acq_rel monotonic, align 8, !noalias !154 ; 2 uses
  %i.cw = extractvalue { i32, i1 } %i.cv, 1
  %i.cx = extractvalue { i32, i1 } %i.cv, 0
  br i1 %i.cw, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.aa, !llvm.loop !65

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0118.0136, i64 8 ; 5 uses
  %i.cz = load atomic i32, ptr %i.cs monotonic, align 8, !noalias !154
  %.not.i.i.i.i.i21 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i.i.i21, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !66, !noalias !154
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i:     ; preds = %bb.ab, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.db = phi ptr [ %i.da, %bb.ab ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i ] ; 2 uses
  %i.dc = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i
  store i32 0, ptr %i.cs, align 8, !tbaa !47
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !49
  %i.dg = load ptr, ptr %i.cr, align 8, !tbaa !42
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #25, !inline_history !157
  %i.dj = load ptr, ptr %i.cr, align 8, !tbaa !42
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #25, !inline_history !157
  br label %bb.ah

bb.ad:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i1.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i1.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.cs, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22

bb.af:                                            ; preds = %bb.ad
  %i.do = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i23 = phi i32 [ %i.de, %bb.ae ], [ %i.do, %bb.af ]
  %i.dp = icmp eq i32 %.0.i.i.i.i.i.i23, 1
  br i1 %i.dp, label %bb.ag, label %bb.ah, !prof !51

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #25
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22, %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  invoke void @_ZN3ade4Node7inNodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %i.db)
          to label %bb.ai unwind label %bb.ch

bb.ai:                                            ; preds = %bb.ah
  %.sroa.0110.sroa.0.0.copyload = load ptr, ptr %12, align 8 ; 2 uses
  %.sroa.0110.sroa.2.0.copyload = load ptr, ptr %.sroa.0110.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.0110.sroa.3.0.copyload = load <9 x i8>, ptr %.sroa.0110.sroa.3.0..sroa_idx, align 8
  %.sroa.0110.sroa.3.0.vec.expand = shufflevector <9 x i8> %.sroa.0110.sroa.3.0.copyload, <9 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0110.sroa.3.0.vecblend = shufflevector <16 x i8> %.sroa.0110.sroa.3.0.vec.expand, <16 x i8> %.sroa.0110.sroa.3.0, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.dq = load ptr, ptr %i.cq, align 8, !tbaa !40, !noalias !158, !nonnull !147, !noundef !147 ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 7 uses
  %i.ds = load atomic i32, ptr %i.dr monotonic, align 8, !noalias !158
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.06.i.i.i.i.i.i.i25 = phi i32 [ %i.ds, %bb.ai ], [ %i.dw, %bb.aj ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i26 = icmp ne i32 %.06.i.i.i.i.i.i.i25, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i26)
  %i.dt = add nsw i32 %.06.i.i.i.i.i.i.i25, 1
  %i.du = cmpxchg weak ptr %i.dr, i32 %.06.i.i.i.i.i.i.i25, i32 %i.dt acq_rel monotonic, align 8, !noalias !158 ; 2 uses
  %i.dv = extractvalue { i32, i1 } %i.du, 1
  %i.dw = extractvalue { i32, i1 } %i.du, 0
  br i1 %i.dv, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i27, label %bb.aj, !llvm.loop !65

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i27: ; preds = %bb.aj
  %i.dx = load atomic i32, ptr %i.dr monotonic, align 8, !noalias !158
  %.not.i.i.i.i.i28 = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i.i.i.i28, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i29, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i27
  %i.dy = load ptr, ptr %i.cy, align 8, !tbaa !66, !noalias !158
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i29

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i29:   ; preds = %bb.ak, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i27
  %i.dz = phi ptr [ %i.dy, %bb.ak ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i27 ] ; 2 uses
  %i.ea = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 4294967297
  %i.ec = trunc i64 %i.ea to i32                  ; 2 uses
  br i1 %i.eb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i29
  store i32 0, ptr %i.dr, align 8, !tbaa !47
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.ed, align 4, !tbaa !49
  %i.ee = load ptr, ptr %i.dq, align 8, !tbaa !42
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #25, !inline_history !157
  %i.eh = load ptr, ptr %i.dq, align 8, !tbaa !42
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #25, !inline_history !157
  br label %bb.aq

bb.am:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i29
  %i.ek = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i1.i.i30 = icmp eq i8 %i.ek, 0
  br i1 %.not.i.i.i1.i.i30, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.el = add nsw i32 %i.ec, -1
  store i32 %i.el, ptr %i.dr, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31

bb.ao:                                            ; preds = %bb.am
  %i.em = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i32 = phi i32 [ %i.ec, %bb.an ], [ %i.em, %bb.ao ]
  %i.en = icmp eq i32 %.0.i.i.i.i.i.i32, 1
  br i1 %i.en, label %bb.ap, label %bb.aq, !prof !51

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31, %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dz) ]
  invoke void @_ZN3ade4Node7inNodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %i.dz)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %i.eo = icmp eq ptr %.sroa.0110.sroa.0.0.copyload, %.sroa.0110.sroa.2.0.copyload
  br i1 %i.eo, label %.loopexit129, label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i

_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i: ; preds = %bb.ar, %bb.bw
  %.sroa.0.0 = phi ptr [ %i.hq, %bb.bw ], [ %.sroa.0110.sroa.0.0.copyload, %bb.ar ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.0.0, ptr %6, align 8
  store ptr %.sroa.0110.sroa.2.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  store <16 x i8> %.sroa.0110.sroa.3.0.vecblend, ptr %.sroa.9.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.9159.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !161
  %i.ep = load ptr, ptr %6, align 8, !tbaa !166, !noalias !169
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !172, !noalias !169
  invoke void @_ZNK3ade4Node12HandleMapperclEPNS_4EdgeE(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle.111") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %i.cb, ptr noundef %i.eq)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit

.noexc60:                                         ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i
  invoke void @_ZNK3ade4Node12InEdgeMapperclERKNS_6HandleINS_4EdgeEEE(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %.noexc60
  %i.er = load ptr, ptr %i.cd, align 8, !tbaa !40, !noalias !161 ; 4 uses
  %.not.i.i.i.i.i.i55 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i.i55, label %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratordeEv.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 12 ; 3 uses
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13, !noalias !161
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !14 ; 2 uses
  %i.ev = add nsw i32 %i.eu, -1
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.ew = atomicrmw volatile add ptr %i.es, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.eu, %bb.au ], [ %i.ew, %bb.av ]
  %i.ex = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ex, label %bb.aw, label %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratordeEv.exit.i

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  %i.ey = load ptr, ptr %i.er, align 8, !tbaa !42
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #25, !inline_history !174
  br label %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratordeEv.exit.i

bb.ax:                                            ; preds = %.noexc60
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = load ptr, ptr %i.cd, align 8, !tbaa !40, !noalias !161 ; 4 uses
  %.not.i.i.i2.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i2.i.i.i, label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 12 ; 3 uses
  %i.fe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13, !noalias !161
  %.not.i.i.i.i3.i.i.i = icmp eq i8 %i.fe, 0
  br i1 %.not.i.i.i.i3.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !14 ; 2 uses
  %i.fg = add nsw i32 %i.ff, -1
  store i32 %i.fg, ptr %i.fd, align 4, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.fh = atomicrmw volatile add ptr %i.fd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i.i5.i.i.i = phi i32 [ %i.ff, %bb.az ], [ %i.fh, %bb.ba ]
  %i.fi = icmp eq i32 %.0.i.i.i.i.i5.i.i.i, 1
  br i1 %i.fi, label %bb.bb, label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i
  %i.fj = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #25, !inline_history !174
  br label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i

_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i:        ; preds = %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !161
  br label %.body

_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratordeEv.exit.i: ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !161
  %i.fm = load ptr, ptr %i.ce, align 8, !tbaa !40, !noalias !175 ; 8 uses
  %.not.i.i.i.i.i.i79 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i.i79, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratordeEv.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 7 uses
  %i.fo = load atomic i32, ptr %i.fn monotonic, align 8, !noalias !175
  br label %bb.bd

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %.06.i.i.i.i.i.i.i80 = phi i32 [ %i.fo, %bb.bc ], [ %i.fs, %bb.be ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i81 = icmp eq i32 %.06.i.i.i.i.i.i.i80, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i81, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fp = add nsw i32 %.06.i.i.i.i.i.i.i80, 1
  %i.fq = cmpxchg weak ptr %i.fn, i32 %.06.i.i.i.i.i.i.i80, i32 %i.fp acq_rel monotonic, align 8, !noalias !175 ; 2 uses
  %i.fr = extractvalue { i32, i1 } %i.fq, 1
  %i.fs = extractvalue { i32, i1 } %i.fq, 0
  br i1 %i.fr, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i82, label %bb.bd, !llvm.loop !65

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i82: ; preds = %bb.be
  %i.ft = load atomic i32, ptr %i.fn monotonic, align 8, !noalias !175
  %.not.i.i.i.i.i83 = icmp eq i32 %i.ft, 0
  %i.fu = load ptr, ptr %5, align 8
  %spec.select = select i1 %.not.i.i.i.i.i83, ptr null, ptr %i.fu ; 3 uses
  %i.fv = load atomic i64, ptr %i.fn acquire, align 8 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 4294967297
  %i.fx = trunc i64 %i.fv to i32                  ; 2 uses
  br i1 %i.fw, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i82
  store i32 0, ptr %i.fn, align 8, !tbaa !47
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 0, ptr %i.fy, align 4, !tbaa !49
  %i.fz = load ptr, ptr %i.fm, align 8, !tbaa !42
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #25, !inline_history !178
  %i.gc = load ptr, ptr %i.fm, align 8, !tbaa !42
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #25, !inline_history !178
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i

bb.bg:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i82
  %i.gf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i1.i.i85 = icmp eq i8 %i.gf, 0
  br i1 %.not.i.i.i1.i.i85, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gg = add nsw i32 %i.fx, -1
  store i32 %i.gg, ptr %i.fn, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86

bb.bi:                                            ; preds = %bb.bg
  %i.gh = atomicrmw volatile add ptr %i.fn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i87 = phi i32 [ %i.fx, %bb.bh ], [ %i.gh, %bb.bi ]
  %i.gi = icmp eq i32 %.0.i.i.i.i.i.i87, 1
  br i1 %i.gi, label %bb.bj, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, !prof !51

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #25
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i

_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i:          ; preds = %bb.bd, %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86, %bb.bf, %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratordeEv.exit.i
  %i.gj = phi ptr [ %spec.select, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86 ], [ %spec.select, %bb.bj ], [ %spec.select, %bb.bf ], [ null, %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratordeEv.exit.i ], [ null, %bb.bd ]
  br i1 %.not.i.i.i.i.i2.i, label %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i
  %i.gk = load atomic i32, ptr %i.cf monotonic, align 8, !noalias !179
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  %.06.i.i.i.i.i.i3.i = phi i32 [ %i.gk, %bb.bk ], [ %i.go, %bb.bm ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i4.i = icmp eq i32 %.06.i.i.i.i.i.i3.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i4.i, label %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gl = add nsw i32 %.06.i.i.i.i.i.i3.i, 1
  %i.gm = cmpxchg weak ptr %i.cf, i32 %.06.i.i.i.i.i.i3.i, i32 %i.gl acq_rel monotonic, align 8, !noalias !179 ; 2 uses
  %i.gn = extractvalue { i32, i1 } %i.gm, 1
  %i.go = extractvalue { i32, i1 } %i.gm, 0
  br i1 %i.gn, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i, label %bb.bl, !llvm.loop !65

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i: ; preds = %bb.bm
  %i.gp = load atomic i32, ptr %i.cf monotonic, align 8, !noalias !179
  %.not.i.i.i.i6.i = icmp eq i32 %i.gp, 0
  %spec.select168 = select i1 %.not.i.i.i.i6.i, ptr null, ptr %.sroa.0.0.vec.extract ; 3 uses
  %i.gq = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 4294967297
  %i.gs = trunc i64 %i.gq to i32                  ; 2 uses
  br i1 %i.gr, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i
  store i32 0, ptr %i.cf, align 8, !tbaa !47
  store i32 0, ptr %i.cg, align 4, !tbaa !49
  %i.gt = load ptr, ptr %.sroa.0.8.vec.extract164, align 8, !tbaa !42
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.8.vec.extract164) #25, !inline_history !178
  %i.gw = load ptr, ptr %.sroa.0.8.vec.extract164, align 8, !tbaa !42
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.8.vec.extract164) #25, !inline_history !178
  br label %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit

bb.bo:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i
  %i.gz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i1.i8.i = icmp eq i8 %i.gz, 0
  br i1 %.not.i.i.i1.i8.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ha = add nsw i32 %i.gs, -1
  store i32 %i.ha, ptr %i.cf, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i

bb.bq:                                            ; preds = %bb.bo
  %i.hb = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i.i10.i = phi i32 [ %i.gs, %bb.bp ], [ %i.hb, %bb.bq ]
  %i.hc = icmp eq i32 %.0.i.i.i.i.i10.i, 1
  br i1 %i.hc, label %bb.br, label %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit, !prof !51

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.8.vec.extract164) #25
  br label %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit

_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit:          ; preds = %bb.bl, %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i, %bb.br
  %i.hd = phi ptr [ %spec.select168, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i ], [ %spec.select168, %bb.br ], [ %spec.select168, %bb.bn ], [ null, %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i ], [ null, %bb.bl ]
  %i.he = icmp eq ptr %i.gj, %i.hd
  %i.hf = load ptr, ptr %i.ce, align 8, !tbaa !40 ; 4 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i56, label %.noexc38, label %bb.bs

bb.bs:                                            ; preds = %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 12 ; 3 uses
  %i.hh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i.i57 = icmp eq i8 %i.hh, 0
  br i1 %.not.i.i.i.i.i57, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hi = load i32, ptr %i.hg, align 4, !tbaa !14 ; 2 uses
  %i.hj = add nsw i32 %i.hi, -1
  store i32 %i.hj, ptr %i.hg, align 4, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58

bb.bu:                                            ; preds = %bb.bs
  %i.hk = atomicrmw volatile add ptr %i.hg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i.i59 = phi i32 [ %i.hi, %bb.bt ], [ %i.hk, %bb.bu ]
  %i.hl = icmp eq i32 %.0.i.i.i.i.i.i59, 1
  br i1 %i.hl, label %bb.bv, label %.noexc38

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58
  %i.hm = load ptr, ptr %i.hf, align 8, !tbaa !42
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #25, !inline_history !182
  br label %.noexc38

.noexc38:                                         ; preds = %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58, %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %i.he, label %.noexc38..loopexit129.loopexit137_crit_edge, label %bb.bw

.noexc38..loopexit129.loopexit137_crit_edge:      ; preds = %.noexc38
  %i.hp = icmp eq ptr %.sroa.0.0, %.sroa.0110.sroa.2.0.copyload
  br label %.loopexit129

bb.bw:                                            ; preds = %.noexc38
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %.sroa.0110.sroa.2.0.copyload
  br i1 %i.hr, label %.loopexit129, label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i, !llvm.loop !183

.loopexit129:                                     ; preds = %.noexc38..loopexit129.loopexit137_crit_edge, %bb.bw, %bb.ar
  %.sroa.0113.0.copyload = phi i1 [ true, %bb.ar ], [ %i.hp, %.noexc38..loopexit129.loopexit137_crit_edge ], [ true, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.hs = load ptr, ptr %i.cq, align 8, !tbaa !40, !noalias !184, !nonnull !147, !noundef !147 ; 7 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 7 uses
  %i.hu = load atomic i32, ptr %i.ht monotonic, align 8, !noalias !184
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %.loopexit129
  %.06.i.i.i.i.i.i.i40 = phi i32 [ %i.hu, %.loopexit129 ], [ %i.hy, %bb.bx ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i41 = icmp ne i32 %.06.i.i.i.i.i.i.i40, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i41)
  %i.hv = add nsw i32 %.06.i.i.i.i.i.i.i40, 1
  %i.hw = cmpxchg weak ptr %i.ht, i32 %.06.i.i.i.i.i.i.i40, i32 %i.hv acq_rel monotonic, align 8, !noalias !184 ; 2 uses
  %i.hx = extractvalue { i32, i1 } %i.hw, 1
  %i.hy = extractvalue { i32, i1 } %i.hw, 0
  br i1 %i.hx, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i42, label %bb.bx, !llvm.loop !65

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i42: ; preds = %bb.bx
  %i.hz = load atomic i32, ptr %i.ht monotonic, align 8, !noalias !184
  %.not.i.i.i.i.i43 = icmp eq i32 %i.hz, 0
  br i1 %.not.i.i.i.i.i43, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i44, label %bb.by

bb.by:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i42
  %i.ia = load ptr, ptr %i.cy, align 8, !tbaa !66, !noalias !184
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i44

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i44:   ; preds = %bb.by, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i42
  %i.ib = phi ptr [ %i.ia, %bb.by ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i42 ] ; 2 uses
  %i.ic = load atomic i64, ptr %i.ht acquire, align 8 ; 2 uses
  %i.id = icmp eq i64 %i.ic, 4294967297
  %i.ie = trunc i64 %i.ic to i32                  ; 2 uses
  br i1 %i.id, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i44
  store i32 0, ptr %i.ht, align 8, !tbaa !47
  %i.if = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  store i32 0, ptr %i.if, align 4, !tbaa !49
  %i.ig = load ptr, ptr %i.hs, align 8, !tbaa !42
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #25, !inline_history !157
  %i.ij = load ptr, ptr %i.hs, align 8, !tbaa !42
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #25, !inline_history !157
  br label %bb.ce

bb.ca:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i44
  %i.im = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i1.i.i45 = icmp eq i8 %i.im, 0
  br i1 %.not.i.i.i1.i.i45, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.in = add nsw i32 %i.ie, -1
  store i32 %i.in, ptr %i.ht, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i46

bb.cc:                                            ; preds = %bb.ca
  %i.io = atomicrmw volatile add ptr %i.ht, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i46

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i46: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i.i.i47 = phi i32 [ %i.ie, %bb.cb ], [ %i.io, %bb.cc ]
  %i.ip = icmp eq i32 %.0.i.i.i.i.i.i47, 1
  br i1 %i.ip, label %bb.cd, label %bb.ce, !prof !51

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i46
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #25
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i46, %bb.bz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ib) ]
  invoke void @_ZN3ade4Node7inNodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange") align 8 %14, ptr noundef nonnull align 8 dereferenceable(72) %i.ib)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br i1 %.sroa.0113.0.copyload, label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratorneERKSL_.exit.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %0, ptr %7, align 8, !tbaa !36
  %i.iq = invoke { ptr, i8 } @_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_12HandleHasherIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZNSt13unordered_setIN3ade6HandleINS0_4NodeEEENS0_12HandleHasherIS2_EESt8equal_toIS3_ESaIS3_EE6insertERKS3_.exit unwind label %bb.ck ; 0 uses

_ZNSt13unordered_setIN3ade6HandleINS0_4NodeEEENS0_12HandleHasherIS2_EESt8equal_toIS3_ESaIS3_EE6insertERKS3_.exit: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratorneERKSL_.exit.thread

bb.ch:                                            ; preds = %bb.ah
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit.split-lp.loopexit:                      ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i
  %lpad.loopexit130 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.aq
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.fb, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i ], [ %lpad.loopexit.split-lp131, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit130, %.loopexit.split-lp.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.ci

bb.ci:                                            ; preds = %.body, %bb.ch
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ir, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.cl

bb.cj:                                            ; preds = %bb.ce
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cg
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_12InEdgeMapperEEEE8iteratorneERKSL_.exit.thread: ; preds = %bb.cf, %_ZNSt13unordered_setIN3ade6HandleINS0_4NodeEEENS0_12HandleHasherIS2_EESt8equal_toIS3_ESaIS3_EE6insertERKS3_.exit
  %.sroa.0118.0 = load ptr, ptr %.sroa.0118.0136, align 8, !tbaa !39 ; 2 uses
  %.not = icmp eq ptr %.sroa.0118.0, null
  br i1 %.not, label %._crit_edge, label %bb.z

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  %.pn14 = phi { ptr, i32 } [ %i.it, %bb.ck ], [ %i.is, %bb.cj ], [ %.pn, %bb.ci ]
  call void @_ZNSt13unordered_setIN3ade6HandleINS0_4NodeEEENS0_12HandleHasherIS2_EESt8equal_toIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #25
  %.sroa.0.8.vec.extract = extractelement <2 x ptr> %i.bo, i64 1 ; 4 uses
  %.not.i.i.i50 = icmp eq ptr %.sroa.0.8.vec.extract, null
  br i1 %.not.i.i.i50, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit54, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.8.vec.extract, i64 12 ; 3 uses
  %i.iv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i51 = icmp eq i8 %i.iv, 0
  br i1 %.not.i.i.i.i51, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.iw = load i32, ptr %i.iu, align 4, !tbaa !14 ; 2 uses
  %i.ix = add nsw i32 %i.iw, -1
  store i32 %i.ix, ptr %i.iu, align 4, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52

bb.co:                                            ; preds = %bb.cm
  %i.iy = atomicrmw volatile add ptr %i.iu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i.i53 = phi i32 [ %i.iw, %bb.cn ], [ %i.iy, %bb.co ]
  %i.iz = icmp eq i32 %.0.i.i.i.i.i53, 1
  br i1 %i.iz, label %bb.cp, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit54

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52
  %i.ja = load ptr, ptr %.sroa.0.8.vec.extract, align 8, !tbaa !42
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.8.vec.extract) #25, !inline_history !153
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit54

_ZN3ade6HandleINS_4NodeEED2Ev.exit54:             ; preds = %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %common.resume
}

declare void @_ZN3ade4Node7inNodesEv(ptr dead_on_unwind writable sret(%"struct.ade::util::Range::MapRange") align 8, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3ade6HandleINS_4NodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10__weak_ptrIN3ade4NodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !14   ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt10__weak_ptrIN3ade4NodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !187
  br label %_ZNSt10__weak_ptrIN3ade4NodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN3ade4NodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv5gimpl7GIsland8producerERKN3ade5GraphERKNS2_6HandleINS2_4NodeEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.ade::Handle") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ade::Handle.111", align 8   ; 6 uses
  %5 = alloca %"class.ade::Handle", align 8       ; 5 uses
  %6 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>, ade::Node::OutEdgeMapper>>::iterator", align 8 ; 9 uses
  %7 = alloca %"class.ade::details::MetadataId", align 8 ; 6 uses
  %8 = alloca %"class.ade::Handle", align 16      ; 5 uses
  %9 = alloca %"struct.ade::details::InitIdsArray", align 1 ; 3 uses
  %10 = alloca %"class.ade::ConstTypedGraph", align 8 ; 7 uses
  %11 = alloca %"struct.ade::util::Range::MapRange.58", align 8 ; 7 uses
  %12 = alloca %"struct.ade::util::Range::MapRange.58", align 8 ; 4 uses
  %13 = alloca %"struct.ade::util::Range::MapRange.58", align 8 ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.2", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.a = ptrtoint ptr %2 to i64
  store i64 %i.a, ptr %10, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false), !tbaa !135
  tail call void @_ZN3ade7details16checkUniqueNamesIJN2cv5gimpl8NodeKindENS3_11FusedIslandENS3_8DataSlotENS3_10IslandExecENS3_7EmitterENS3_4SinkENS3_15IslandsCompiledENS3_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEEEvv()
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @_ZNK3ade7details12InitIdsArrayIN2cv5gimpl8NodeKindEJNS3_11FusedIslandENS3_8DataSlotENS3_10IslandExecENS3_7EmitterENS3_4SinkENS3_15IslandsCompiledENS3_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEEclERKNS_5GraphENS_4util11MemoryRangeINS0_10MetadataIdEEE(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr nonnull %i.b, i64 9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.c = load i64, ptr %10, align 8, !tbaa !132, !noalias !188
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40, !noalias !188 ; 2 uses
  %i.h = load <2 x ptr>, ptr %3, align 8, !tbaa !12, !noalias !188
  store <2 x ptr> %i.h, ptr %8, align 16, !tbaa !12, !noalias !188
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13, !noalias !188
  %.not.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !14, !noalias !188
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !14, !noalias !188
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4, !noalias !188 ; 0 uses
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i:         ; preds = %bb.d, %bb.c, %bb.a
  %i.n = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK3ade5Graph8metadataENS_6HandleINS_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.d, ptr noundef nonnull align 8 %8)
          to label %bb.e unwind label %bb.j, !noalias !188 ; 5 uses

bb.e:                                             ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !188 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13, !noalias !188
  %.not.i.i.i.i3.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.p, align 4, !tbaa !14, !noalias !188 ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !14, !noalias !188
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.t = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4, !noalias !188
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %bb.g ], [ %i.t, %bb.h ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.i, label %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !42, !noalias !188
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !noalias !188
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25, !noalias !188, !inline_history !140
  br label %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit

bb.j:                                             ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !188 ; 4 uses
  %.not.i.i.i4.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i4.i, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13, !noalias !188
  %.not.i.i.i.i5.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !14, !noalias !188 ; 2 uses
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !14, !noalias !188
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i

bb.m:                                             ; preds = %bb.k
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4, !noalias !188
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i7.i = phi i32 [ %i.ac, %bb.l ], [ %i.ae, %bb.m ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i7.i, 1
  br i1 %i.af, label %bb.n, label %common.resume

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !42, !noalias !188
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !188
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25, !noalias !188, !inline_history !140
  br label %common.resume

common.resume:                                    ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i, %bb.n, %_ZN3ade6HandleINS_4NodeEED2Ev.exit69
  %common.resume.op = phi { ptr, i32 } [ %.pn24.pn, %_ZN3ade6HandleINS_4NodeEED2Ev.exit69 ], [ %i.y, %bb.n ], [ %i.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i ], [ %i.y, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.aj, align 8, !tbaa !12
  store ptr %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !141
  %.not.not.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.not.i.i.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.am, %bb.o ], [ %.sroa.06.0.i.i.i.i, %bb.p ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !39, !nonnull !147, !noundef !147 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.ao = call noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.an)
  br i1 %i.ao, label %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE3getIS5_EENSt11conditionalILb1ERKT_RSG_E4typeEv.exit, label %bb.p, !llvm.loop !148

bb.q:                                             ; preds = %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE8metadataERKNS_6HandleINS_4NodeEEE.exit
  %i.ap = call noundef i64 @_ZNK3ade7details8Metadata6IdHashclERKNS0_10MetadataIdE(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !149 ; 2 uses
  %i.as = urem i64 %i.ap, %i.ar                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !150
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !59, !nonnull !147, !noundef !147 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.pre.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !57
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i, %bb.q
  %i.ay = phi i64 [ %i.ar, %bb.q ], [ %i.bd, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i ]
  %i.az = phi i64 [ %.pre.i.i.i.i.i.i, %bb.q ], [ %i.bg, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i ]
  %.015.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.q ], [ %.0.i.i.i.i.i.i29, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i29 = phi ptr [ %i.ax, %bb.q ], [ %i.be, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %i.ba = icmp eq i64 %i.ap, %i.az
  br i1 %i.ba, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i: ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i29, i64 8
  %i.bc = call noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
  br i1 %i.bc, label %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i
  %.pre.i.i = load i64, ptr %i.aq, align 8, !tbaa !149
  br label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i, %bb.r
  %i.bd = phi i64 [ %.pre.i.i, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i ], [ %i.ay, %bb.r ] ; 2 uses
  %i.be = load ptr, ptr %.0.i.i.i.i.i.i29, align 8, !tbaa !39, !nonnull !147, !noundef !147 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !57 ; 2 uses
  %i.bh = urem i64 %i.bg, %i.bd
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.bh, %i.as
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  br label %bb.r

_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i
  %i.bi = load ptr, ptr %.015.i.i.i.i.i.i, align 8, !tbaa !39
  br label %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE3getIS5_EENSt11conditionalILb1ERKT_RSG_E4typeEv.exit

_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE3getIS5_EENSt11conditionalILb1ERKT_RSG_E4typeEv.exit: ; preds = %bb.p, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i
  %.sroa.06.1.i.i.i.i = phi ptr [ %i.bi, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i ], [ %.sroa.06.0.i.i.i.i, %bb.p ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !151 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40 ; 2 uses
  %i.bo = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !12 ; 4 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i30, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE3getIS5_EENSt11conditionalILb1ERKT_RSG_E4typeEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 3 uses
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i.i31 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i31, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !14
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !14
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bp, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit:           ; preds = %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeKindENS2_11FusedIslandENS2_8DataSlotENS2_10IslandExecENS2_7EmitterENS2_4SinkENS2_15IslandsCompiledENS2_13DesyncIslEdgeENS_6passes19TopologicalSortDataEEE3getIS5_EENSt11conditionalILb1ERKT_RSG_E4typeEv.exit, %bb.t, %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.sroa.0133.0162 = load ptr, ptr %i.bu, align 8, !tbaa !39 ; 2 uses
  %.not163 = icmp eq ptr %.sroa.0133.0162, null
  br i1 %.not163, label %.critedge28, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.0125.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.0125.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.9244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.0.8.vec.extract249 = extractelement <2 x ptr> %i.bo, i64 1 ; 8 uses
  %.not.i.i.i.i.i2.i = icmp eq ptr %.sroa.0.8.vec.extract249, null
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.8.vec.extract249, i64 8 ; 7 uses
  %.sroa.0.0.vec.extract = extractelement <2 x ptr> %i.bo, i64 0
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.8.vec.extract249, i64 12
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.0125.sroa.3.0 = phi <16 x i8> [ undef, %.lr.ph ], [ %.sroa.0125.sroa.3.0.vecblend, %.critedge ]
  %.sroa.0133.0164 = phi ptr [ %.sroa.0133.0162, %.lr.ph ], [ %.sroa.0133.0, %.critedge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0133.0164, i64 16 ; 4 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !40, !noalias !191, !nonnull !147, !noundef !147 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 7 uses
  %i.ce = load atomic i32, ptr %i.cd monotonic, align 8, !noalias !191
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.ce, %bb.v ], [ %i.ci, %bb.w ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp ne i32 %.06.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i)
  %i.cf = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.cg = cmpxchg weak ptr %i.cd, i32 %.06.i.i.i.i.i.i.i, i32 %i.cf acq_rel monotonic, align 8, !noalias !191 ; 2 uses
  %i.ch = extractvalue { i32, i1 } %i.cg, 1
  %i.ci = extractvalue { i32, i1 } %i.cg, 0
  br i1 %i.ch, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.w, !llvm.loop !65

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0133.0164, i64 8 ; 4 uses
  %i.ck = load atomic i32, ptr %i.cd monotonic, align 8, !noalias !191
  %.not.i.i.i.i.i33 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i.i33, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !66, !noalias !191
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i:     ; preds = %bb.x, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.cm = phi ptr [ %i.cl, %bb.x ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i ] ; 2 uses
  %i.cn = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i
  store i32 0, ptr %i.cd, align 8, !tbaa !47
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !49
  %i.cr = load ptr, ptr %i.cc, align 8, !tbaa !42
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #25, !inline_history !157
  %i.cu = load ptr, ptr %i.cc, align 8, !tbaa !42
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #25, !inline_history !157
  br label %bb.ad

bb.z:                                             ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i1.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i1.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cd, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i34

bb.ab:                                            ; preds = %bb.z
  %i.cz = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i34

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i34: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i35 = phi i32 [ %i.cp, %bb.aa ], [ %i.cz, %bb.ab ]
  %i.da = icmp eq i32 %.0.i.i.i.i.i.i35, 1
  br i1 %i.da, label %bb.ac, label %bb.ad, !prof !51

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i34
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i34, %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  invoke void @_ZN3ade4Node8outNodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange.58") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %i.cm)
          to label %bb.ae unwind label %bb.cg

bb.ae:                                            ; preds = %bb.ad
  %.sroa.0125.sroa.0.0.copyload = load ptr, ptr %11, align 8 ; 2 uses
  %.sroa.0125.sroa.2.0.copyload = load ptr, ptr %.sroa.0125.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.0125.sroa.3.0.copyload = load <9 x i8>, ptr %.sroa.0125.sroa.3.0..sroa_idx, align 8
  %.sroa.0125.sroa.3.0.vec.expand = shufflevector <9 x i8> %.sroa.0125.sroa.3.0.copyload, <9 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0125.sroa.3.0.vecblend = shufflevector <16 x i8> %.sroa.0125.sroa.3.0.vec.expand, <16 x i8> %.sroa.0125.sroa.3.0, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.db = load ptr, ptr %i.cb, align 8, !tbaa !40, !noalias !194, !nonnull !147, !noundef !147 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 7 uses
  %i.dd = load atomic i32, ptr %i.dc monotonic, align 8, !noalias !194
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.06.i.i.i.i.i.i.i37 = phi i32 [ %i.dd, %bb.ae ], [ %i.dh, %bb.af ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i38 = icmp ne i32 %.06.i.i.i.i.i.i.i37, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i38)
  %i.de = add nsw i32 %.06.i.i.i.i.i.i.i37, 1
  %i.df = cmpxchg weak ptr %i.dc, i32 %.06.i.i.i.i.i.i.i37, i32 %i.de acq_rel monotonic, align 8, !noalias !194 ; 2 uses
  %i.dg = extractvalue { i32, i1 } %i.df, 1
  %i.dh = extractvalue { i32, i1 } %i.df, 0
  br i1 %i.dg, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i39, label %bb.af, !llvm.loop !65

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i39: ; preds = %bb.af
  %i.di = load atomic i32, ptr %i.dc monotonic, align 8, !noalias !194
  %.not.i.i.i.i.i40 = icmp eq i32 %i.di, 0
  br i1 %.not.i.i.i.i.i40, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i41, label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i39
  %i.dj = load ptr, ptr %i.cj, align 8, !tbaa !66, !noalias !194
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i41

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i41:   ; preds = %bb.ag, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i39
  %i.dk = phi ptr [ %i.dj, %bb.ag ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i39 ] ; 2 uses
  %i.dl = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i41
  store i32 0, ptr %i.dc, align 8, !tbaa !47
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !49
  %i.dp = load ptr, ptr %i.db, align 8, !tbaa !42
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #25, !inline_history !157
  %i.ds = load ptr, ptr %i.db, align 8, !tbaa !42
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #25, !inline_history !157
  br label %bb.am

bb.ai:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i41
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i1.i.i42 = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i1.i.i42, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dc, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43

bb.ak:                                            ; preds = %bb.ai
  %i.dx = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i44 = phi i32 [ %i.dn, %bb.aj ], [ %i.dx, %bb.ak ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i.i44, 1
  br i1 %i.dy, label %bb.al, label %bb.am, !prof !51

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43, %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dk) ]
  invoke void @_ZN3ade4Node8outNodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange.58") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %i.dk)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  %i.dz = icmp eq ptr %.sroa.0125.sroa.0.0.copyload, %.sroa.0125.sroa.2.0.copyload
  br i1 %i.dz, label %.loopexit144, label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i

_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i: ; preds = %bb.an, %bb.bs
  %.sroa.0.0 = phi ptr [ %i.hb, %bb.bs ], [ %.sroa.0125.sroa.0.0.copyload, %bb.an ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.0.0, ptr %6, align 8
  store ptr %.sroa.0125.sroa.2.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  store <16 x i8> %.sroa.0125.sroa.3.0.vecblend, ptr %.sroa.9.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.9244.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !197
  %i.ea = load ptr, ptr %6, align 8, !tbaa !166, !noalias !202
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !172, !noalias !202
  invoke void @_ZNK3ade4Node12HandleMapperclEPNS_4EdgeE(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle.111") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %i.bv, ptr noundef %i.eb)
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit

.noexc75:                                         ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i
  invoke void @_ZNK3ade4Node13OutEdgeMapperclERKNS_6HandleINS_4EdgeEEE(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %.noexc75
  %i.ec = load ptr, ptr %i.bx, align 8, !tbaa !40, !noalias !197 ; 4 uses
  %.not.i.i.i.i.i.i70 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i.i70, label %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratordeEv.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12 ; 3 uses
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13, !noalias !197
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !14 ; 2 uses
  %i.eg = add nsw i32 %i.ef, -1
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.eh = atomicrmw volatile add ptr %i.ed, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ef, %bb.aq ], [ %i.eh, %bb.ar ]
  %i.ei = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ei, label %bb.as, label %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratordeEv.exit.i

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  %i.ej = load ptr, ptr %i.ec, align 8, !tbaa !42
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #25, !inline_history !205
  br label %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratordeEv.exit.i

bb.at:                                            ; preds = %.noexc75
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = load ptr, ptr %i.bx, align 8, !tbaa !40, !noalias !197 ; 4 uses
  %.not.i.i.i2.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i2.i.i.i, label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12 ; 3 uses
  %i.ep = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13, !noalias !197
  %.not.i.i.i.i3.i.i.i = icmp eq i8 %i.ep, 0
  br i1 %.not.i.i.i.i3.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !14 ; 2 uses
  %i.er = add nsw i32 %i.eq, -1
  store i32 %i.er, ptr %i.eo, align 4, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.es = atomicrmw volatile add ptr %i.eo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i5.i.i.i = phi i32 [ %i.eq, %bb.av ], [ %i.es, %bb.aw ]
  %i.et = icmp eq i32 %.0.i.i.i.i.i5.i.i.i, 1
  br i1 %i.et, label %bb.ax, label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i
  %i.eu = load ptr, ptr %i.en, align 8, !tbaa !42
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #25, !inline_history !205
  br label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i

_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i:        ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i.i.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !197
  br label %.body

_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratordeEv.exit.i: ; preds = %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !197
  %i.ex = load ptr, ptr %i.by, align 8, !tbaa !40, !noalias !206 ; 8 uses
  %.not.i.i.i.i.i.i94 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i.i94, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratordeEv.exit.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 7 uses
  %i.ez = load atomic i32, ptr %i.ey monotonic, align 8, !noalias !206
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %.06.i.i.i.i.i.i.i95 = phi i32 [ %i.ez, %bb.ay ], [ %i.fd, %bb.ba ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i96 = icmp eq i32 %.06.i.i.i.i.i.i.i95, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i96, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fa = add nsw i32 %.06.i.i.i.i.i.i.i95, 1
  %i.fb = cmpxchg weak ptr %i.ey, i32 %.06.i.i.i.i.i.i.i95, i32 %i.fa acq_rel monotonic, align 8, !noalias !206 ; 2 uses
  %i.fc = extractvalue { i32, i1 } %i.fb, 1
  %i.fd = extractvalue { i32, i1 } %i.fb, 0
  br i1 %i.fc, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i97, label %bb.az, !llvm.loop !65

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i97: ; preds = %bb.ba
  %i.fe = load atomic i32, ptr %i.ey monotonic, align 8, !noalias !206
  %.not.i.i.i.i.i98 = icmp eq i32 %i.fe, 0
  %i.ff = load ptr, ptr %5, align 8
  %spec.select = select i1 %.not.i.i.i.i.i98, ptr null, ptr %i.ff ; 3 uses
  %i.fg = load atomic i64, ptr %i.ey acquire, align 8 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 4294967297
  %i.fi = trunc i64 %i.fg to i32                  ; 2 uses
  br i1 %i.fh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i97
  store i32 0, ptr %i.ey, align 8, !tbaa !47
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.fj, align 4, !tbaa !49
  %i.fk = load ptr, ptr %i.ex, align 8, !tbaa !42
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #25, !inline_history !178
  %i.fn = load ptr, ptr %i.ex, align 8, !tbaa !42
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #25, !inline_history !178
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i

bb.bc:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i97
  %i.fq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i1.i.i100 = icmp eq i8 %i.fq, 0
  br i1 %.not.i.i.i1.i.i100, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fr = add nsw i32 %i.fi, -1
  store i32 %i.fr, ptr %i.ey, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i101

bb.be:                                            ; preds = %bb.bc
  %i.fs = atomicrmw volatile add ptr %i.ey, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i101

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i101: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i.i102 = phi i32 [ %i.fi, %bb.bd ], [ %i.fs, %bb.be ]
  %i.ft = icmp eq i32 %.0.i.i.i.i.i.i102, 1
  br i1 %i.ft, label %bb.bf, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, !prof !51

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i101
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #25
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i

_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i:          ; preds = %bb.az, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i101, %bb.bb, %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratordeEv.exit.i
  %i.fu = phi ptr [ %spec.select, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i101 ], [ %spec.select, %bb.bf ], [ %spec.select, %bb.bb ], [ null, %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratordeEv.exit.i ], [ null, %bb.az ]
  br i1 %.not.i.i.i.i.i2.i, label %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i
  %i.fv = load atomic i32, ptr %i.bz monotonic, align 8, !noalias !209
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  %.06.i.i.i.i.i.i3.i = phi i32 [ %i.fv, %bb.bg ], [ %i.fz, %bb.bi ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i4.i = icmp eq i32 %.06.i.i.i.i.i.i3.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i4.i, label %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fw = add nsw i32 %.06.i.i.i.i.i.i3.i, 1
  %i.fx = cmpxchg weak ptr %i.bz, i32 %.06.i.i.i.i.i.i3.i, i32 %i.fw acq_rel monotonic, align 8, !noalias !209 ; 2 uses
  %i.fy = extractvalue { i32, i1 } %i.fx, 1
  %i.fz = extractvalue { i32, i1 } %i.fx, 0
  br i1 %i.fy, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i, label %bb.bh, !llvm.loop !65

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i: ; preds = %bb.bi
  %i.ga = load atomic i32, ptr %i.bz monotonic, align 8, !noalias !209
  %.not.i.i.i.i6.i = icmp eq i32 %i.ga, 0
  %spec.select266 = select i1 %.not.i.i.i.i6.i, ptr null, ptr %.sroa.0.0.vec.extract ; 3 uses
  %i.gb = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i
  store i32 0, ptr %i.bz, align 8, !tbaa !47
  store i32 0, ptr %i.ca, align 4, !tbaa !49
  %i.ge = load ptr, ptr %.sroa.0.8.vec.extract249, align 8, !tbaa !42
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.8.vec.extract249) #25, !inline_history !178
  %i.gh = load ptr, ptr %.sroa.0.8.vec.extract249, align 8, !tbaa !42
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.8.vec.extract249) #25, !inline_history !178
  br label %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit

bb.bk:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i1.i8.i = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i1.i8.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gl = add nsw i32 %i.gd, -1
  store i32 %i.gl, ptr %i.bz, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i

bb.bm:                                            ; preds = %bb.bk
  %i.gm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i.i10.i = phi i32 [ %i.gd, %bb.bl ], [ %i.gm, %bb.bm ]
  %i.gn = icmp eq i32 %.0.i.i.i.i.i10.i, 1
  br i1 %i.gn, label %bb.bn, label %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit, !prof !51

bb.bn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.8.vec.extract249) #25
  br label %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit

_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit:          ; preds = %bb.bh, %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i, %bb.bn
  %i.go = phi ptr [ %spec.select266, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i ], [ %spec.select266, %bb.bn ], [ %spec.select266, %bb.bj ], [ null, %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i ], [ null, %bb.bh ]
  %i.gp = icmp eq ptr %i.fu, %i.go
  %i.gq = load ptr, ptr %i.by, align 8, !tbaa !40 ; 4 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i71, label %.noexc50, label %bb.bo

bb.bo:                                            ; preds = %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 12 ; 3 uses
  %i.gs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i.i72 = icmp eq i8 %i.gs, 0
  br i1 %.not.i.i.i.i.i72, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !14 ; 2 uses
  %i.gu = add nsw i32 %i.gt, -1
  store i32 %i.gu, ptr %i.gr, align 4, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i73

bb.bq:                                            ; preds = %bb.bo
  %i.gv = atomicrmw volatile add ptr %i.gr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i73

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i73: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i.i.i74 = phi i32 [ %i.gt, %bb.bp ], [ %i.gv, %bb.bq ]
  %i.gw = icmp eq i32 %.0.i.i.i.i.i.i74, 1
  br i1 %i.gw, label %bb.br, label %.noexc50

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i73
  %i.gx = load ptr, ptr %i.gq, align 8, !tbaa !42
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #25, !inline_history !212
  br label %.noexc50

.noexc50:                                         ; preds = %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i73, %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %i.gp, label %.noexc50..loopexit144.loopexit165_crit_edge, label %bb.bs

.noexc50..loopexit144.loopexit165_crit_edge:      ; preds = %.noexc50
  %i.ha = icmp eq ptr %.sroa.0.0, %.sroa.0125.sroa.2.0.copyload
  br label %.loopexit144

bb.bs:                                            ; preds = %.noexc50
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %.sroa.0125.sroa.2.0.copyload
  br i1 %i.hc, label %.loopexit144, label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i, !llvm.loop !213

.loopexit144:                                     ; preds = %.noexc50..loopexit144.loopexit165_crit_edge, %bb.bs, %bb.an
  %.sroa.0128.0.copyload = phi i1 [ true, %bb.an ], [ %i.ha, %.noexc50..loopexit144.loopexit165_crit_edge ], [ true, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.hd = load ptr, ptr %i.cb, align 8, !tbaa !40, !noalias !214, !nonnull !147, !noundef !147 ; 7 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 7 uses
  %i.hf = load atomic i32, ptr %i.he monotonic, align 8, !noalias !214
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.loopexit144
  %.06.i.i.i.i.i.i.i52 = phi i32 [ %i.hf, %.loopexit144 ], [ %i.hj, %bb.bt ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i53 = icmp ne i32 %.06.i.i.i.i.i.i.i52, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i53)
  %i.hg = add nsw i32 %.06.i.i.i.i.i.i.i52, 1
  %i.hh = cmpxchg weak ptr %i.he, i32 %.06.i.i.i.i.i.i.i52, i32 %i.hg acq_rel monotonic, align 8, !noalias !214 ; 2 uses
  %i.hi = extractvalue { i32, i1 } %i.hh, 1
  %i.hj = extractvalue { i32, i1 } %i.hh, 0
  br i1 %i.hi, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i54, label %bb.bt, !llvm.loop !65

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i54: ; preds = %bb.bt
  %i.hk = load atomic i32, ptr %i.he monotonic, align 8, !noalias !214
  %.not.i.i.i.i.i55 = icmp eq i32 %i.hk, 0
  br i1 %.not.i.i.i.i.i55, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i56, label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i54
  %i.hl = load ptr, ptr %i.cj, align 8, !tbaa !66, !noalias !214
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i56

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i56:   ; preds = %bb.bu, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i54
  %i.hm = phi ptr [ %i.hl, %bb.bu ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i54 ] ; 2 uses
  %i.hn = load atomic i64, ptr %i.he acquire, align 8 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 4294967297
  %i.hp = trunc i64 %i.hn to i32                  ; 2 uses
  br i1 %i.ho, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i56
  store i32 0, ptr %i.he, align 8, !tbaa !47
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  store i32 0, ptr %i.hq, align 4, !tbaa !49
  %i.hr = load ptr, ptr %i.hd, align 8, !tbaa !42
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #25, !inline_history !157
  %i.hu = load ptr, ptr %i.hd, align 8, !tbaa !42
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #25, !inline_history !157
  br label %bb.ca

bb.bw:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i56
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i1.i.i57 = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i1.i.i57, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hy = add nsw i32 %i.hp, -1
  store i32 %i.hy, ptr %i.he, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58

bb.by:                                            ; preds = %bb.bw
  %i.hz = atomicrmw volatile add ptr %i.he, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i.i.i59 = phi i32 [ %i.hp, %bb.bx ], [ %i.hz, %bb.by ]
  %i.ia = icmp eq i32 %.0.i.i.i.i.i.i59, 1
  br i1 %i.ia, label %bb.bz, label %bb.ca, !prof !51

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #25
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58, %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hm) ]
  invoke void @_ZN3ade4Node8outNodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange.58") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %i.hm)
          to label %bb.cb unwind label %bb.ci

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br i1 %.sroa.0128.0.copyload, label %.critedge, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ib = load ptr, ptr %i.cb, align 8, !tbaa !40 ; 2 uses
  %i.ic = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !12
  store <2 x ptr> %i.ic, ptr %0, align 8, !tbaa !12
  %.not.i.i.i.i61 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i61, label %bb.cn, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 12 ; 3 uses
  %i.ie = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i.i62 = icmp eq i8 %i.ie, 0
  br i1 %.not.i.i.i.i.i62, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.if = load i32, ptr %i.id, align 4, !tbaa !14
  %i.ig = add nsw i32 %i.if, 1
  store i32 %i.ig, ptr %i.id, align 4, !tbaa !14
  br label %bb.cn

bb.cf:                                            ; preds = %bb.cd
  %i.ih = atomicrmw volatile add ptr %i.id, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cn

bb.cg:                                            ; preds = %bb.ad
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit.split-lp.loopexit:                      ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i
  %lpad.loopexit145 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.am
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.em, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i ], [ %lpad.loopexit.split-lp146, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit145, %.loopexit.split-lp.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ch

bb.ch:                                            ; preds = %.body, %bb.cg
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ii, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.cs

bb.ci:                                            ; preds = %bb.ca
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.cs

.critedge:                                        ; preds = %bb.cb
  %.sroa.0133.0 = load ptr, ptr %.sroa.0133.0164, align 8, !tbaa !39 ; 2 uses
  %.not = icmp eq ptr %.sroa.0133.0, null
  br i1 %.not, label %.critedge28, label %bb.v

.critedge28:                                      ; preds = %.critedge, %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.cj unwind label %bb.cl

bb.cj:                                            ; preds = %.critedge28
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv5gimpl7GIsland8producerERKN3ade5GraphERKNS2_6HandleINS2_4NodeEEE, ptr noundef nonnull @.str.5, i32 noundef 123) #28
          to label %bb.ck unwind label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  unreachable

bb.cl:                                            ; preds = %.critedge28
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.cm:                                            ; preds = %bb.cj
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.im = load ptr, ptr %14, align 8, !tbaa !32   ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cm
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !13
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.cl
  %.pn24 = phi { ptr, i32 } [ %i.ik, %bb.cl ], [ %i.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.il, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.cs

bb.cn:                                            ; preds = %bb.cf, %bb.ce, %bb.cc
  %.sroa.0.8.vec.extract = extractelement <2 x ptr> %i.bo, i64 1 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.8.vec.extract, null
  br i1 %.not.i.i.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.8.vec.extract, i64 12 ; 3 uses
  %i.is = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i64 = icmp eq i8 %i.is, 0
  br i1 %.not.i.i.i.i64, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.it = load i32, ptr %i.ir, align 4, !tbaa !14 ; 2 uses
  %i.iu = add nsw i32 %i.it, -1
  store i32 %i.iu, ptr %i.ir, align 4, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.cq:                                            ; preds = %bb.co
  %i.iv = atomicrmw volatile add ptr %i.ir, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.cq, %bb.cp
  %.0.i.i.i.i.i = phi i32 [ %i.it, %bb.cp ], [ %i.iv, %bb.cq ]
end_hunk_0
