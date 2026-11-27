Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_json_schema?download=true
inline.NumInlined: 1268
inline.NumDeleted: 316
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffers5jsons19JsonSchemaGenerator18PrepareDescriptionERKSt6vectorIS9_SaIS9_EEEUlcE_EEET_SN_SN_T0_St26random_access_iterator_tag:bb.a
bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.031.1 = phi ptr [ %i.ac, %bb.g ], [ %.sroa.031.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ad = load i8, ptr %.sroa.031.1, align 1, !tbaa !13
  %i.ae = sext i8 %i.ad to i32
  %i.af = tail call i32 @isspace(i32 noundef %i.ae) #24
  %.not.i.i20 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i20, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.031.1, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.031.2 = phi ptr [ %i.ag, %bb.i ], [ %.sroa.031.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ah = load i8, ptr %.sroa.031.2, align 1, !tbaa !13
  %i.ai = sext i8 %i.ah to i32
  %i.aj = tail call i32 @isspace(i32 noundef %i.ai) #24
  %.not.i.i21 = icmp eq i32 %i.aj, 0
  %spec.select = select i1 %.not.i.i21, ptr %.sroa.031.2, ptr %1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit56:             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 2
  br label %.loopexit

.loopexit.loopexit.split.loop.exit58:             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 3
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit56, %.loopexit.loopexit.split.loop.exit58, %bb.j, %._crit_edge, %bb.h, %bb.f
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.031.1, %bb.h ], [ %spec.select, %bb.j ], [ %1, %._crit_edge ], [ %.sroa.031.0.lcssa, %bb.f ], [ %i.am, %.loopexit.loopexit.split.loop.exit58 ], [ %i.ak, %.loopexit.loopexit.split.loop.exit ], [ %i.al, %.loopexit.loopexit.split.loop.exit56 ], [ %.sroa.031.050, %.lr.ph ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZN11flatbuffers5jsons19JsonSchemaGenerator18PrepareDescriptionERKSt6vectorISA_SaISA_EEEUlcE0_EEET_SP_SP_T0_St26random_access_iterator_tag(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2) local_unnamed_addr #6 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %2, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64 ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr i64 %i.c, 2                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.f = phi ptr [ %i.ae, %bb.h ], [ %.sroa.0.0.copyload.i.i, %bb.a ] ; 10 uses
  %i.g = phi i64 [ %i.ah, %bb.h ], [ %i.a, %bb.a ] ; 2 uses
  %.030 = phi i64 [ %i.af, %bb.h ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = sext i8 %i.j to i32
  %i.l = tail call i32 @isspace(i32 noundef %i.k) #24
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -1
  store ptr %i.m, ptr %1, align 8, !tbaa !651
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %i.p = sext i8 %i.o to i32
  %i.q = tail call i32 @isspace(i32 noundef %i.p) #24
  %.not.i.i2 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.f, i64 -1
  %.cast = ptrtoint ptr %i.r to i64
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 -2
  store ptr %i.s, ptr %1, align 8, !tbaa !651
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = sext i8 %i.u to i32
  %i.w = tail call i32 @isspace(i32 noundef %i.v) #24
  %.not.i.i3 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %i.f, i64 -2
  %.cast16 = ptrtoint ptr %i.x to i64
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds i8, ptr %i.f, i64 -3
  store ptr %i.y, ptr %1, align 8, !tbaa !651
  %i.z = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = sext i8 %i.aa to i32
  %i.ac = tail call i32 @isspace(i32 noundef %i.ab) #24
  %.not.i.i4 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i4, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.f, i64 -3
  %.cast17 = ptrtoint ptr %i.ad to i64
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 4 uses
  store ptr %i.ae, ptr %1, align 8, !tbaa !651
  %i.af = add nsw i64 %.030, -1
  %i.ag = icmp sgt i64 %.030, 1
  %i.ah = ptrtoint ptr %i.ae to i64               ; 2 uses
  br i1 %i.ag, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !649

._crit_edge.loopexit:                             ; preds = %bb.h
  %.sroa.0.0.copyload.i2.i6.pre = load ptr, ptr %2, align 8
  %i.ai = ptrtoint ptr %.sroa.0.0.copyload.i2.i6.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.aj = phi i64 [ %i.ai, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.ak = phi i64 [ %i.ah, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 5 uses
  %i.al = phi ptr [ %i.ae, %._crit_edge.loopexit ], [ %.sroa.0.0.copyload.i.i, %bb.a ] ; 3 uses
  %i.am = sub i64 %i.ak, %i.aj
  switch i64 %i.am, label %.loopexit [
    i64 3, label %bb.i
    i64 2, label %bb.k
    i64 1, label %bb.m
  ]

bb.i:                                             ; preds = %._crit_edge
  %i.an = inttoptr i64 %i.ak to ptr
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = sext i8 %i.ap to i32
  %i.ar = tail call i32 @isspace(i32 noundef %i.aq) #24
  %.not.i.i7 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i7, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 -1 ; 3 uses
  store ptr %i.as, ptr %1, align 8, !tbaa !651
  %i.at = ptrtoint ptr %i.as to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.au = phi ptr [ %i.as, %bb.j ], [ %i.al, %._crit_edge ]
  %i.av = phi i64 [ %i.at, %bb.j ], [ %i.ak, %._crit_edge ] ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !13
  %i.az = sext i8 %i.ay to i32
  %i.ba = tail call i32 @isspace(i32 noundef %i.az) #24
  %.not.i.i8 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i8, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds i8, ptr %i.au, i64 -1 ; 3 uses
  store ptr %i.bb, ptr %1, align 8, !tbaa !651
  %i.bc = ptrtoint ptr %i.bb to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.bd = phi ptr [ %i.bb, %bb.l ], [ %i.al, %._crit_edge ]
  %i.be = phi i64 [ %i.bc, %bb.l ], [ %i.ak, %._crit_edge ] ; 2 uses
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bi = sext i8 %i.bh to i32
  %i.bj = tail call i32 @isspace(i32 noundef %i.bi) #24
  %.not.i.i9 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i9, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds i8, ptr %i.bd, i64 -1
  store ptr %i.bk, ptr %1, align 8, !tbaa !651
  %.pre = load i64, ptr %2, align 8, !tbaa !154
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.n, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.sink = phi i64 [ %i.be, %bb.m ], [ %i.av, %bb.k ], [ %i.ak, %bb.i ], [ %i.aj, %._crit_edge ], [ %.cast17, %bb.g ], [ %.cast16, %bb.e ], [ %.cast, %bb.c ], [ %.pre, %bb.n ], [ %i.g, %.lr.ph ]
  store i64 %.sink, ptr %0, align 8, !tbaa !154
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers14IntToStringHexB5cxx11Eii(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -24      ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.f, ptr %i.g, align 8, !tbaa !663
  %i.h = load i64, ptr %i.c, align 8
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 225
  %i.k = load i8, ptr %i.j, align 1, !tbaa !670, !range !150, !noundef !22
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !671  ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #23
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !677
  %.not.i1.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i1.i.i.i.i, label %bb.d, label %4

4:                                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %5 = getelementptr inbounds nuw i8, ptr %i.n, i64 89
  %6 = load i8, ptr %5, align 1, !tbaa !13
  %7 = freeze i8 %6
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.n)
          to label %.noexc4 unwind label %bb.j

.noexc4:                                          ; preds = %bb.d
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef signext i8 %i.s(ptr noundef nonnull align 8 dereferenceable(570) %i.n, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i unwind label %bb.j, !inline_history !652

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc4, %4
  %.0.i.i.i.i.i = phi i8 [ %7, %4 ], [ %i.t, %.noexc4 ]
  %8 = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %9 = zext i8 %.0.i.i.i.i.i to i16
  %10 = or disjoint i16 %9, 256
  store i16 %10, ptr %8, align 8
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i, %bb.a
  %i.u = phi ptr [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ], [ %i.b, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  store i8 48, ptr %i.v, align 8, !tbaa !678
  %i.w = getelementptr i8, ptr %i.u, i64 -24      ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !679
  %i.ab = and i32 %i.aa, -75
  %i.ac = or disjoint i32 %i.ab, 8
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !680
  %i.ad = load i64, ptr %i.w, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.a, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !679
  %i.ah = or i32 %i.ag, 16384
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !680
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %1)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !12, !alias.scope !683
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !136, !alias.scope !683
  store i8 0, ptr %i.aj, align 8, !tbaa !13, !alias.scope !683
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !158, !noalias !683 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !683 ; 2 uses
  %i.ap = icmp ugt ptr %i.am, %i.ao
  %.08.i.i.i = select i1 %i.ap, ptr %i.am, ptr %i.ao ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !159, !noalias !683 ; 2 uses
  %i.as = ptrtoint ptr %.08.i.i.i to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ar, i64 noundef %i.au)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !18, !alias.scope !683 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.aj
  br i1 %i.ay, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.az = load i64, ptr %i.aj, align 8, !tbaa !13, !alias.scope !683
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #20
  br label %.body

bb.i:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.bc = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bc, ptr %3, align 8, !tbaa !15
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %3, i64 %i.bf
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !15
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bi, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !18 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !13
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #20
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bp) #21
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bq, ptr %3, align 8, !tbaa !15
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bs = getelementptr i8, ptr %i.bq, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %3, i64 %i.bt
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bv, align 8, !tbaa !161
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bw) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.j:                                             ; preds = %.noexc4, %bb.d, %bb.c, %bb.e
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aw, %bb.h ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #13

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11flatbuffers5jsons12_GLOBAL__N_110GenTypeRefINS_9StructDefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call fastcc void @_ZN11flatbuffers5jsons12_GLOBAL__N_111GenFullNameINS_9StructDefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.a = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.26, i64 noundef 24)
          to label %.noexc unwind label %bb.f, !noalias !688 ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !12, !alias.scope !688
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.thread, label %bb.b

.thread:                                          ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !136  ; 3 uses
  %i.h = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %i.k, align 8, !tbaa !136, !alias.scope !688
  store ptr %i.d, ptr %i.a, align 8, !tbaa !18
  store i64 0, ptr %i.j, align 8, !tbaa !136
  store i8 0, ptr %i.d, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !18, !alias.scope !688
  %i.l = load i64, ptr %i.d, align 8, !tbaa !13
  store i64 %i.l, ptr %i.b, align 8, !tbaa !13, !alias.scope !688
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !136 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre.i, ptr %i.n, align 8, !tbaa !136, !alias.scope !688
  store ptr %i.d, ptr %i.a, align 8, !tbaa !18
  store i64 0, ptr %i.m, align 8, !tbaa !136
  store i8 0, ptr %i.d, align 8, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.o = icmp eq i64 %.pre.i, 4611686018427387903
  br i1 %i.o, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.c:                                             ; preds = %bb.b
end_hunk_0
