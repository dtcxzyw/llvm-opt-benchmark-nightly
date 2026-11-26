Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/adjacency_matrix?download=true
inline.NumInlined: 3282
inline.NumDeleted: 745
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN4test18throwing_allocatorImE8allocateEm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ao = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.ao, label %bb.k, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit, !prof !107

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit:     ; preds = %bb.j
  %i.aq = shl nuw nsw i64 %1, 3
  %i.ar = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #27
  ret ptr %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE5eraseERS6_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !65     ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 4294967295         ; 2 uses
  %i.k = and i64 %i.j, %i.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.012 = phi ptr [ %i.l, %bb.a ], [ %i.p, %bb.c ] ; 2 uses
  %i.o = load i64, ptr %.012, align 8, !tbaa !33  ; 4 uses
  %.not = icmp eq i64 %i.o, -1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.o ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !65
  %i.s = icmp eq i32 %i.r, %i.a
  br i1 %i.s, label %bb.d, label %bb.b, !llvm.loop !542

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.p, align 8, !tbaa !130
  store i64 %i.t, ptr %.012, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127  ; 5 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.n to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 24
  %i.aa = add nsw i64 %i.z, -1                    ; 3 uses
  %.not.i = icmp eq i64 %i.o, %i.aa
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ac = getelementptr inbounds i8, ptr %i.v, i64 -24
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 -16
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !65 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = and i64 %i.j, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !130
  store i64 %i.ai, ptr %i.p, align 8, !tbaa !130
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !131
  %i.aj = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !132
  %i.am = load i64, ptr %i.ah, align 8, !tbaa !33 ; 2 uses
  %.not1011.i = icmp eq i64 %i.am, %i.aa
  br i1 %.not1011.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.an = phi i64 [ %i.ap, %.lr.ph.i ], [ %i.am, %bb.e ]
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !33 ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, %i.aa
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !543

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.0.lcssa.i = phi ptr [ %i.ah, %bb.e ], [ %i.ao, %.lr.ph.i ]
  store i64 %i.o, ptr %.0.lcssa.i, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.d
  %i.aq = getelementptr inbounds i8, ptr %i.v, i64 -24
  store ptr %i.aq, ptr %i.u, align 8, !tbaa !127
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.f
  %i.ar = phi i64 [ 1, %bb.f ], [ 0, %bb.b ]
  ret i64 %i.ar
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2ImEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexImE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexImE5valueEv.exit, !prof !110

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexImE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexImE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !65 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !65
  store i32 %i.d, ptr @_ZZN4entt10type_indexImE5valueEvE5value, align 4, !tbaa !65
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexImE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexImE5valueEvE5value) #26
  br label %_ZN4entt10type_indexImE5valueEv.exit

_ZN4entt10type_indexImE5valueEv.exit:             ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexImE5valueEvE5value, align 4, !tbaa !65
  store i32 %i.g, ptr %0, align 8, !tbaa !544
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 983627388, ptr %i.h, align 4, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.131, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE20insert_or_do_nothingIRS6_JEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !65     ; 3 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = load ptr, ptr %0, align 8, !tbaa !57     ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = lshr exact i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 4294967295
  %i.k = and i64 %i.j, %i.b                       ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.in.i = phi ptr [ %i.l, %bb.a ], [ %i.o, %bb.c ]
  %.07.i = load i64, ptr %.07.in.i, align 8, !tbaa !33 ; 2 uses
  %.not.i = icmp eq i64 %.07.i, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.07.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !65
  %i.r = icmp eq i32 %i.q, %i.a
  br i1 %i.r, label %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit.loopexit, label %bb.b, !llvm.loop !9

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !127  ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w
  br label %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit

_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit.loopexit: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !127
  %.pre31 = ptrtoint ptr %i.n to i64
  br label %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit

_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit: ; preds = %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit.loopexit, %bb.d
  %.pre-phi = phi i64 [ %.pre31, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit.loopexit ], [ %i.v, %bb.d ] ; 3 uses
  %i.y = phi ptr [ %.pre, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit.loopexit ], [ %i.t, %bb.d ] ; 9 uses
  %.sroa.0.1.i = phi ptr [ %i.o, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit.loopexit ], [ %i.x, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = icmp eq ptr %.sroa.0.1.i, %i.y
  br i1 %i.aa, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92 ; 2 uses
  %.not.i12 = icmp eq ptr %i.y, %i.ac
  br i1 %.not.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !33
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !130
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %i.a, ptr %i.ae, align 8, !tbaa !131
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 0, ptr %i.af, align 8, !tbaa !132
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !127
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = sub i64 %i.ah, %.pre-phi                ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.h, label %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #30
  unreachable

_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ak = sdiv exact i64 %i.ai, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 384307168202282325)
  %i.ao = select i1 %i.am, i64 384307168202282325, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = mul nuw nsw i64 %i.ao, 24
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #27 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai ; 3 uses
  %i.as = load i64, ptr %i.l, align 8, !tbaa !33
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !130
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.au, ptr %i.at, align 8, !tbaa !131
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 0, ptr %i.av, align 8, !tbaa !132
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %i.aq, %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %i.n, %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !548
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i36.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i36.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i.i
  %2 = ptrtoint ptr %i.ac to i64
  %3 = sub i64 %2, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %3) #28
  %.pre25.pre = load ptr, ptr %0, align 8, !tbaa !57 ; 2 uses
  %.pre26.pre = load ptr, ptr %i.c, align 8, !tbaa !59
  %.pre46 = ptrtoint ptr %.pre26.pre to i64
  %.pre47 = ptrtoint ptr %.pre25.pre to i64
  %.pre48 = sub i64 %.pre46, %.pre47
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i.i
  %.pre38.pre-phi = phi i64 [ %.pre48, %bb.i ], [ %i.h, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i.i ]
  %.pre25 = phi ptr [ %.pre25.pre, %bb.i ], [ %i.e, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i.i ]
  store ptr %i.aq, ptr %i.m, align 8, !tbaa !91
  store ptr %i.ay, ptr %i.z, align 8, !tbaa !127
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.az, ptr %i.ab, align 8, !tbaa !92
  %.pre32 = ptrtoint ptr %i.aq to i64
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEERS3_DpOT_.exit

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEERS3_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.pre-phi39 = phi i64 [ %i.h, %bb.f ], [ %.pre38.pre-phi, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 2 uses
  %.pre-phi33 = phi i64 [ %.pre-phi, %bb.f ], [ %.pre32, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.ba = phi ptr [ %i.e, %bb.f ], [ %.pre25, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.bb = phi ptr [ %i.n, %bb.f ], [ %i.aq, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.bc = phi ptr [ %i.ag, %bb.f ], [ %i.ay, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %.pre-phi33              ; 2 uses
  %i.bf = sdiv exact i64 %i.be, 24                ; 2 uses
  %i.bg = add nsw i64 %i.bf, -1
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.k
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !33
  %i.bi = ashr exact i64 %.pre-phi39, 3
  %i.bj = uitofp i64 %i.bi to float
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !90
  %i.bm = fmul float %i.bl, %i.bj
  %i.bn = fptoui float %i.bm to i64
  %i.bo = icmp ugt i64 %i.bf, %i.bn
  br i1 %i.bo, label %bb.j, label %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE18rehash_if_requiredEv.exit

bb.j:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEERS3_DpOT_.exit
  %i.bp = ashr exact i64 %.pre-phi39, 2
  tail call void @_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %i.bp)
  %.pre27 = load ptr, ptr %i.m, align 8, !tbaa !91 ; 2 uses
  %.pre28 = load ptr, ptr %i.z, align 8, !tbaa !127
  %.pre40 = ptrtoint ptr %.pre28 to i64
  %.pre42 = ptrtoint ptr %.pre27 to i64
  %.pre44 = sub i64 %.pre40, %.pre42
  br label %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE18rehash_if_requiredEv.exit

_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE18rehash_if_requiredEv.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEERS3_DpOT_.exit, %bb.j
  %.pre-phi45 = phi i64 [ %i.be, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEERS3_DpOT_.exit ], [ %.pre44, %bb.j ]
  %i.bq = phi ptr [ %i.bb, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESB_IJEEEEERS3_DpOT_.exit ], [ %.pre27, %bb.j ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.pre-phi45
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -24
  br label %bb.k

bb.k:                                             ; preds = %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE18rehash_if_requiredEv.exit
  %.sroa.011.1 = phi ptr [ %i.bs, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE18rehash_if_requiredEv.exit ], [ %.sroa.0.1.i, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit ]
  %.sroa.3.1 = phi i8 [ 1, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE18rehash_if_requiredEv.exit ], [ 0, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE20insert_or_do_nothingIjJEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !65     ; 3 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = load ptr, ptr %0, align 8, !tbaa !57     ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = lshr exact i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 4294967295
  %i.k = and i64 %i.j, %i.b                       ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.in.i = phi ptr [ %i.l, %bb.a ], [ %i.o, %bb.c ]
  %.07.i = load i64, ptr %.07.in.i, align 8, !tbaa !33 ; 2 uses
  %.not.i = icmp eq i64 %.07.i, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.07.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !65
  %i.r = icmp eq i32 %i.q, %i.a
  br i1 %i.r, label %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit.loopexit, label %bb.b, !llvm.loop !9

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !127  ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w
  br label %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit

_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit.loopexit: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !127
  %.pre31 = ptrtoint ptr %i.n to i64
  br label %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit

_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit: ; preds = %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit.loopexit, %bb.d
  %.pre-phi = phi i64 [ %.pre31, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit.loopexit ], [ %i.v, %bb.d ] ; 3 uses
  %i.y = phi ptr [ %.pre, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit.loopexit ], [ %i.t, %bb.d ] ; 9 uses
  %.sroa.0.1.i = phi ptr [ %i.o, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit.loopexit ], [ %i.x, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = icmp eq ptr %.sroa.0.1.i, %i.y
  br i1 %i.aa, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92 ; 2 uses
  %.not.i12 = icmp eq ptr %i.y, %i.ac
  br i1 %.not.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !33
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !130
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %i.a, ptr %i.ae, align 8, !tbaa !131
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 0, ptr %i.af, align 8, !tbaa !132
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !127
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = sub i64 %i.ah, %.pre-phi                ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.h, label %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #30
  unreachable

_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ak = sdiv exact i64 %i.ai, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 384307168202282325)
  %i.ao = select i1 %i.am, i64 384307168202282325, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = mul nuw nsw i64 %i.ao, 24
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #27 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai ; 3 uses
  %i.as = load i64, ptr %i.l, align 8, !tbaa !33
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !130
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.au, ptr %i.at, align 8, !tbaa !131
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 0, ptr %i.av, align 8, !tbaa !132
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %i.aq, %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %i.n, %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !552
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i36.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i36.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i.i
  %2 = ptrtoint ptr %i.ac to i64
  %3 = sub i64 %2, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %3) #28
  %.pre25.pre = load ptr, ptr %0, align 8, !tbaa !57 ; 2 uses
  %.pre26.pre = load ptr, ptr %i.c, align 8, !tbaa !59
  %.pre46 = ptrtoint ptr %.pre26.pre to i64
  %.pre47 = ptrtoint ptr %.pre25.pre to i64
  %.pre48 = sub i64 %.pre46, %.pre47
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i.i
  %.pre38.pre-phi = phi i64 [ %.pre48, %bb.i ], [ %i.h, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i.i ]
  %.pre25 = phi ptr [ %.pre25.pre, %bb.i ], [ %i.e, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i.i ]
  store ptr %i.aq, ptr %i.m, align 8, !tbaa !91
  store ptr %i.ay, ptr %i.z, align 8, !tbaa !127
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.az, ptr %i.ab, align 8, !tbaa !92
  %.pre32 = ptrtoint ptr %i.aq to i64
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEERS3_DpOT_.exit

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEERS3_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.pre-phi39 = phi i64 [ %i.h, %bb.f ], [ %.pre38.pre-phi, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 2 uses
  %.pre-phi33 = phi i64 [ %.pre-phi, %bb.f ], [ %.pre32, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.ba = phi ptr [ %i.e, %bb.f ], [ %.pre25, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.bb = phi ptr [ %i.n, %bb.f ], [ %i.aq, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.bc = phi ptr [ %i.ag, %bb.f ], [ %i.ay, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %.pre-phi33              ; 2 uses
  %i.bf = sdiv exact i64 %i.be, 24                ; 2 uses
  %i.bg = add nsw i64 %i.bf, -1
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.k
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !33
  %i.bi = ashr exact i64 %.pre-phi39, 3
  %i.bj = uitofp i64 %i.bi to float
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !90
  %i.bm = fmul float %i.bl, %i.bj
  %i.bn = fptoui float %i.bm to i64
  %i.bo = icmp ugt i64 %i.bf, %i.bn
  br i1 %i.bo, label %bb.j, label %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE18rehash_if_requiredEv.exit

bb.j:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEERS3_DpOT_.exit
  %i.bp = ashr exact i64 %.pre-phi39, 2
  tail call void @_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %i.bp)
  %.pre27 = load ptr, ptr %i.m, align 8, !tbaa !91 ; 2 uses
  %.pre28 = load ptr, ptr %i.z, align 8, !tbaa !127
  %.pre40 = ptrtoint ptr %.pre28 to i64
  %.pre42 = ptrtoint ptr %.pre27 to i64
  %.pre44 = sub i64 %.pre40, %.pre42
  br label %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE18rehash_if_requiredEv.exit

_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE18rehash_if_requiredEv.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEERS3_DpOT_.exit, %bb.j
  %.pre-phi45 = phi i64 [ %i.be, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEERS3_DpOT_.exit ], [ %.pre44, %bb.j ]
  %i.bq = phi ptr [ %i.bb, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESB_IJEEEEERS3_DpOT_.exit ], [ %.pre27, %bb.j ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.pre-phi45
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -24
  br label %bb.k

bb.k:                                             ; preds = %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE18rehash_if_requiredEv.exit
  %.sroa.011.1 = phi ptr [ %i.bs, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE18rehash_if_requiredEv.exit ], [ %.sroa.0.1.i, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit ]
  %.sroa.3.1 = phi i8 [ 1, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE18rehash_if_requiredEv.exit ], [ 0, %_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE16constrained_findIjEEDaRKT_m.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorImN4test18throwing_allocatorImEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !63
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !63
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !117
  store ptr %i.h, ptr %i.c, align 8, !tbaa !117
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !63
  store ptr %i.d, ptr %i.f, align 8, !tbaa !117
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !118
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load <2 x ptr>, ptr %i.l, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !95   ; 8 uses
  store <2 x ptr> %i.n, ptr %i.i, align 8, !tbaa !118
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4test18throwing_allocatorImEaSEOS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.p, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !78
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #26, !inline_history !553
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #26, !inline_history !553
  br label %_ZN4test18throwing_allocatorImEaSEOS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !65
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.s, %bb.e ], [ %i.ac, %bb.f ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.g, label %_ZN4test18throwing_allocatorImEaSEOS1_.exit.i, !prof !107

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #26
  br label %_ZN4test18throwing_allocatorImEaSEOS1_.exit.i

_ZN4test18throwing_allocatorImEaSEOS1_.exit.i:    ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %bb.a
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !95  ; 8 uses
  store <2 x ptr> %i.k, ptr %i.l, align 8, !tbaa !118
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i4.i, label %_ZSt4swapIN4test18throwing_allocatorImEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4test18throwing_allocatorImEaSEOS1_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.af, align 8, !tbaa !77
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !78
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #26, !inline_history !553
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #26, !inline_history !553
  br label %_ZSt4swapIN4test18throwing_allocatorImEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit

bb.j:                                             ; preds = %bb.h
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i.i5.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i5.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !65
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i

bb.l:                                             ; preds = %bb.j
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i7.i = phi i32 [ %i.ai, %bb.k ], [ %i.as, %bb.l ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i.i7.i, 1
  br i1 %i.at, label %bb.m, label %_ZSt4swapIN4test18throwing_allocatorImEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit, !prof !107

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #26
  br label %_ZSt4swapIN4test18throwing_allocatorImEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit

_ZSt4swapIN4test18throwing_allocatorImEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i, %bb.i, %_ZN4test18throwing_allocatorImEaSEOS1_.exit.i
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_adjacency_matrix.cpp() #21 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %2 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %3 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %4 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %5 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %6 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %7 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
end_hunk_0
