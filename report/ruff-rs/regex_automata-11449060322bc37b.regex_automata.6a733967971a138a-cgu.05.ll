Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-11449060322bc37b.regex_automata.6a733967971a138a-cgu.05?download=true
inline.NumInlined: 815
inline.NumDeleted: 283
begin_hunk_0_@_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16try_search_slots:bb.a
  %.sroa.335.16.extract.trunc = trunc i64 %.sroa.560.0.copyload to i32
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias noundef nonnull align 8 %4, i64 noundef %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46)
  %i.at = trunc nuw i64 %i.aj to i1
  %i.au = trunc nuw nsw i64 %i.aj to i32
  %.sroa.335.16.extract.trunc. = select i1 %i.at, i32 %.sroa.335.16.extract.trunc, i32 undef
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.335.16.extract.trunc., ptr %i.aw, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %storemerge = phi i32 [ 0, %bb.n ], [ 1, %bb.k ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aa

bb.p:                                             ; preds = %bb.w, %bb.v, %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEEB1z_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #25
          to label %common.resume unwind label %bb.ac

bb.q:                                             ; preds = %bb.j
  %i.ay = load i64, ptr %i.a, align 8, !range !11, !noundef !5 ; 3 uses
  %i.az = icmp eq i64 %i.ay, 2
  br i1 %i.az, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !5, !align !24, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bc, align 8
  store i32 1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEEB1z_.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.y, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.y ], [ %i.bd, %bb.s ], [ %i.ax, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEEB1z_.exit: ; preds = %bb.r
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aa

bb.u:                                             ; preds = %bb.q
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.563.0.copyload = load i64, ptr %.sroa.563.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.349.16.extract.trunc = trunc i64 %.sroa.563.0.copyload to i32
  %.not69 = icmp ugt i64 %5, %i.ao
  br i1 %.not69, label %bb.v, label %bb.w, !prof !6

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #23
          to label %bb.ab unwind label %bb.p

bb.w:                                             ; preds = %bb.u
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias noundef nonnull align 8 %4, i64 noundef %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.am, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48)
          to label %bb.x unwind label %bb.p

bb.x:                                             ; preds = %bb.w
  %i.bf = trunc nuw i64 %i.ay to i1
  %i.bg = trunc nuw nsw i64 %i.ay to i32
  %.sroa.349.16.extract.trunc. = select i1 %i.bf, i32 %.sroa.349.16.extract.trunc, i32 undef
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bg, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.349.16.extract.trunc., ptr %i.bi, align 8
  store i32 0, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEEB1z_.exit72 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEEB1z_.exit72: ; preds = %bb.x
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %bb.ae, %bb.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEEB1z_.exit, %bb.f, %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEEB1z_.exit72
  ret void

bb.ab:                                            ; preds = %bb.v
  unreachable

bb.ac:                                            ; preds = %bb.p
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ad:                                            ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !5, !align !24, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bo, align 8
  store i32 1, ptr %0, align 8
  br label %bb.aa

bb.ae:                                            ; preds = %bb.h
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.557.0.copyload = load i64, ptr %.sroa.557.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bp = trunc nuw i64 %i.ah to i1
  %.sroa.321.16.extract.trunc = trunc i64 %.sroa.557.0.copyload to i32
  %.sroa.524.0 = select i1 %i.bp, i32 %.sroa.321.16.extract.trunc, i32 undef
  %i.bq = trunc nuw nsw i64 %i.ah to i32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bq, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.524.0, ptr %i.bs, align 8
  store i32 0, ptr %0, align 8
  br label %bb.aa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i64 @_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine29try_which_overlapping_matches(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %0, ptr noalias noundef nonnull align 8 dereferenceable(704) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 17 uses
  %i.b = load i64, ptr %1, align 8, !range !11, !noundef !5
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.o, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1375
  store i64 0, ptr %i.a, align 8, !noalias !1375
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.c, align 8, !noalias !1375
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.d, align 8, !noalias !1375
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8, !noalias !1375
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.f, align 8, !noalias !1375
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.h = load ptr, ptr %i.g, align 16, !alias.scope !1376, !noalias !1377, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 386 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 387 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1374, !noalias !1378 ; 3 uses
  %i.m = load ptr, ptr %3, align 8, !alias.scope !1374, !noalias !1378, !nonnull !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = load i8, ptr %i.o, align 8, !range !21, !alias.scope !1373, !noalias !1379
  %.fr18.i = freeze i8 %i.p
  %i.q = trunc i8 %.fr18.i to i1
  %.promoted.i = load i64, ptr %i.n, align 8, !alias.scope !1374, !noalias !1378 ; 2 uses
  br i1 %i.q, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.r = load i8, ptr %i.i, align 2, !range !21, !noalias !1382, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split.us.i
  %i.t = load i8, ptr %i.j, align 1, !range !21, !noalias !1382, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.us.i
  %.sroa.01.0.not.i.us.i = phi i1 [ %i.u, %bb.c ], [ false, %.split.us.i ]
  %i.v = call noundef align 8 ptr @_RNvNtNtCs98D8VPWzHuM_14regex_automata6hybrid6search20find_overlapping_fwd(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias noundef nonnull align 8 dereferenceable(352) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a), !noalias !1374 ; 2 uses
  %.not.i.us.i = icmp eq ptr %i.v, null
  br i1 %.not.i.us.i, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %.sroa.05.0.copyload.i.us.i = load i64, ptr %i.a, align 8, !alias.scope !1381, !noalias !1383 ; 2 uses
  %i.w = trunc nuw i64 %.sroa.05.0.copyload.i.us.i to i1
  %brmerge.not.i.us.i = select i1 %i.w, i1 %.sroa.01.0.not.i.us.i, i1 false
  br i1 %brmerge.not.i.us.i, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i, !prof !26

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i: ; preds = %bb.e
  %i.x = call noundef align 8 ptr @_RINvNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa34skip_empty_utf8_splits_overlappingNCNvMs_B2_NtB2_3DFA26try_search_overlapping_fwd0EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias noundef nonnull align 8 dereferenceable(352) %1), !noalias !1374 ; 2 uses
  %.not.us.i = icmp eq ptr %i.x, null
  br i1 %.not.us.i, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i, label %.loopexit

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i
  %.sroa.03.0.copyload.us.pre.i = load i64, ptr %i.a, align 8, !noalias !1375
  br label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i, %bb.e
  %.sroa.03.0.copyload.us.i = phi i64 [ %.sroa.03.0.copyload.us.pre.i, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i ], [ %.sroa.05.0.copyload.i.us.i, %bb.e ]
  %i.y = trunc nuw i64 %.sroa.03.0.copyload.us.i to i1
  br i1 %i.y, label %bb.f, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread

bb.f:                                             ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i
  %.sroa.7.0.copyload.us.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1375
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.z = zext i32 %.sroa.7.0.copyload.us.i to i64 ; 2 uses
  %.not.i8.us.i = icmp ugt i64 %i.l, %i.z
  br i1 %.not.i8.us.i, label %bb.g, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !range !21, !noalias !1385, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = add i64 %.promoted.i, 1
  store i64 %i.ad, ptr %i.n, align 8, !alias.scope !1386, !noalias !1387
  store i8 1, ptr %i.aa, align 1, !noalias !1385
  br label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread

.split.i:                                         ; preds = %bb.b, %_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i
  %i.ae = phi i64 [ %i.as, %_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i ], [ %.promoted.i, %bb.b ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.af = load i8, ptr %i.i, align 2, !range !21, !noalias !1388, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.split.i
  %i.ah = load i8, ptr %i.j, align 1, !range !21, !noalias !1388, !noundef !5
  %i.ai = trunc nuw i8 %i.ah to i1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.split.i
  %.sroa.01.0.not.i.i = phi i1 [ %i.ai, %bb.i ], [ false, %.split.i ]
  %i.aj = call noundef align 8 ptr @_RNvNtNtCs98D8VPWzHuM_14regex_automata6hybrid6search20find_overlapping_fwd(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias noundef nonnull align 8 dereferenceable(352) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a), !noalias !1374 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.a, align 8, !alias.scope !1381, !noalias !1383 ; 2 uses
  %i.ak = trunc nuw i64 %.sroa.05.0.copyload.i.i to i1
  %brmerge.not.i.i = select i1 %i.ak, i1 %.sroa.01.0.not.i.i, i1 false
  br i1 %brmerge.not.i.i, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i, !prof !26

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i: ; preds = %bb.k
  %i.al = call noundef align 8 ptr @_RINvNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa34skip_empty_utf8_splits_overlappingNCNvMs_B2_NtB2_3DFA26try_search_overlapping_fwd0EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias noundef nonnull align 8 dereferenceable(352) %1), !noalias !1374 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i, label %.loopexit

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i
  %.sroa.03.0.copyload.pre.i = load i64, ptr %i.a, align 8, !noalias !1375
  br label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i, %bb.k
  %.sroa.03.0.copyload.i = phi i64 [ %.sroa.03.0.copyload.pre.i, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i ], [ %.sroa.05.0.copyload.i.i, %bb.k ]
  %i.am = trunc nuw i64 %.sroa.03.0.copyload.i to i1
  br i1 %i.am, label %bb.l, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread

bb.l:                                             ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1375
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.an = zext i32 %.sroa.7.0.copyload.i to i64   ; 2 uses
  %.not.i8.i = icmp ugt i64 %i.l, %i.an
  br i1 %.not.i8.i, label %bb.m, label %_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !range !21, !noalias !1385, !noundef !5
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.ar, ptr %i.n, align 8, !alias.scope !1386, !noalias !1387
  store i8 1, ptr %i.ao, align 1, !noalias !1385
  br label %_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i

_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ae, %bb.m ], [ %i.ae, %bb.l ], [ %i.ar, %bb.n ] ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.l
  br i1 %i.at, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, label %.split.i

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i, %_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1375
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #23
  unreachable

.loopexit:                                        ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i, %bb.j, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.x, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i ], [ %i.v, %bb.d ], [ %i.al, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i ], [ %i.aj, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1375
  %i.au = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %.sroa.0.0.i) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, %.loopexit
  %.sroa.0.0 = phi i64 [ 1, %.loopexit ], [ 0, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread ]
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, ptr noalias noundef nonnull align 8 dereferenceable(352) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.c = load ptr, ptr %i.b, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 386
  %i.e = load i8, ptr %i.d, align 2, !range !21, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 387
  %i.h = load i8, ptr %i.g, align 1, !range !21, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata6hybrid6search8find_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, ptr noalias noundef nonnull align 8 dereferenceable(352) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  %i.j = load i64, ptr %i.a, align 8, !range !11, !noundef !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = trunc nuw i64 %i.j to i1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %.sroa.0.0, label %bb.i, label %bb.h, !prof !20

bb.g:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store i64 1, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.69.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %.sroa.69.16.extract.trunc11 = trunc i64 %.sroa.5.0.copyload to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvMs_NtNtB6_6hybrid3dfaNtB1x_3DFA14try_search_fwd0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, i64 noundef %i.o, i32 noundef %.sroa.69.16.extract.trunc11, i64 noundef %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, ptr noalias noundef nonnull align 8 dereferenceable(352) %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.i.sroa.16 = alloca [1536 x i8], align 16 ; 4 uses
  %i.a = alloca [720 x i8], align 16              ; 7 uses
  %i.b = alloca [800 x i8], align 16              ; 6 uses
  %i.c = alloca [128 x i8], align 8               ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 9 uses
  %i.e = alloca [448 x i8], align 8               ; 6 uses
  %i.f = alloca [128 x i8], align 8               ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [104 x i8], align 8               ; 6 uses
  %i.i = alloca [104 x i8], align 8               ; 20 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 12 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.049.sroa.0.i.sroa.7 = alloca [2552 x i8], align 8 ; 5 uses
  %.sroa.3.i = alloca [328 x i8], align 8         ; 5 uses
  %.sroa.0154.i = alloca [1264 x i8], align 16    ; 5 uses
  %i.n = alloca [32 x i8], align 16               ; 6 uses
  %i.o = alloca [1440 x i8], align 16             ; 12 uses
  %i.p = alloca [32 x i8], align 16               ; 6 uses
  %i.q = alloca [1600 x i8], align 16             ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [448 x i8], align 8               ; 8 uses
  %i.t = alloca [128 x i8], align 8               ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 9 uses
  %i.v = alloca [376 x i8], align 8               ; 7 uses
  %i.w = alloca [32 x i8], align 16               ; 6 uses
  %i.x = alloca [136 x i8], align 8               ; 8 uses
  %.sroa.624.i.sroa.7 = alloca [48 x i8], align 8 ; 6 uses
  %i.y = alloca [56 x i8], align 8                ; 12 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [136 x i8], align 8              ; 8 uses
  %.sroa.615.i.sroa.7 = alloca [40 x i8], align 8 ; 6 uses
  %i.ab = alloca [48 x i8], align 8               ; 12 uses
  %i.ac = alloca [24 x i8], align 8               ; 11 uses
  %i.ad = alloca [448 x i8], align 8              ; 8 uses
  %i.ae = alloca [128 x i8], align 8              ; 6 uses
  %i.af = alloca [8 x i8], align 8                ; 14 uses
  %i.ag = alloca [8 x i8], align 8                ; 17 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 13 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [544 x i8], align 32             ; 13 uses
  %i.an = alloca [528 x i8], align 8              ; 4 uses
  %i.ao = alloca [544 x i8], align 32             ; 6 uses
  %i.ap = alloca [3600 x i8], align 16            ; 16 uses
  %i.aq = alloca [5168 x i8], align 16            ; 19 uses
  %i.ar = alloca [3632 x i8], align 16            ; 19 uses
  %i.as = alloca [3600 x i8], align 16            ; 15 uses
  %.sroa.521.sroa.6 = alloca [840 x i8], align 8  ; 8 uses
  %i.at = alloca [3584 x i8], align 16            ; 22 uses
  %.sroa.14.sroa.14.sroa.15 = alloca [120 x i8], align 16 ; 14 uses
  %.sroa.14.sroa.15 = alloca [2552 x i8], align 8 ; 14 uses
  %.sroa.14.sroa.17 = alloca [840 x i8], align 8  ; 14 uses
  %i.au = alloca [3584 x i8], align 16            ; 31 uses
  %.sroa.15.sroa.16.sroa.17 = alloca [120 x i8], align 16 ; 15 uses
  %.sroa.15.sroa.17 = alloca [2552 x i8], align 8 ; 15 uses
  %.sroa.15.sroa.19 = alloca [840 x i8], align 8  ; 15 uses
  %.sroa.26185 = alloca [16 x i8], align 16       ; 5 uses
  %.sroa.11.sroa.12 = alloca [120 x i8], align 16 ; 27 uses
  %.sroa.12.sroa.0 = alloca [2552 x i8], align 8  ; 27 uses
  %.sroa.12.sroa.12 = alloca [840 x i8], align 8  ; 27 uses
  %.sroa.5144.sroa.6.sroa.7 = alloca [120 x i8], align 16 ; 6 uses
  %.sroa.5144.sroa.7 = alloca [2552 x i8], align 8 ; 6 uses
  %.sroa.5144.sroa.9 = alloca [840 x i8], align 8 ; 6 uses
  %i.av = alloca [32 x i8], align 16              ; 24 uses
  %.sroa.20 = alloca [120 x i8], align 16         ; 12 uses
  %.sroa.24 = alloca [2552 x i8], align 8         ; 5 uses
  %.sroa.26 = alloca [328 x i8], align 8          ; 5 uses
  %.sroa.27 = alloca [32 x i8], align 16          ; 5 uses
  %.sroa.28 = alloca [48 x i8], align 16          ; 5 uses
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half:bb.a
  %storemerge.i = phi i64 [ 0, %bb.q ], [ 1, %bb.p ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !2439, !noalias !2441
  br label %bb.u

bb.r:                                             ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread42
  %i.at = phi ptr [ %.pre47, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge ], [ %i.al, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread42 ]
  %i.au = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.at), !noalias !2438 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2431
  call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2443
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !2442
  %i.av = load i64, ptr %i.b, align 8, !range !8, !noalias !2443, !noundef !5
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.42.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.42.0.copyload.i21 = load i64, ptr %.sroa.42.0..sroa_idx.i20, align 8, !noalias !2443
  %.sroa.5.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0.copyload.i23 = load i32, ptr %.sroa.5.0..sroa_idx.i22, align 8, !noalias !2443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2443
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.42.0.copyload.i21, ptr %i.ax, align 8, !alias.scope !2442, !noalias !2444
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0.copyload.i23, ptr %i.ay, align 8, !alias.scope !2442, !noalias !2444
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit24

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2443
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit24

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit24: ; preds = %bb.s, %bb.t
  %storemerge.i19 = phi i64 [ 0, %bb.t ], [ 1, %bb.s ]
  store i64 %storemerge.i19, ptr %0, align 8, !alias.scope !2442, !noalias !2444
  br label %bb.u

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread: ; preds = %bb.k, %bb.m, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %i.az = phi i64 [ %.pr40, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit ], [ 1, %bb.m ], [ 0, %bb.k ]
  %.sroa.4.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load <2 x i64>, ptr %.sroa.4.0..sroa_idx37, align 8, !noalias !2431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2431
  store i64 %i.az, ptr %0, align 8
  store <2 x i64> %i.ba, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.u

bb.u:                                             ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit24, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit30, %bb.y, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit
  ret void

bb.v:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread39
  %i.bb = phi ptr [ %.pre, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge ], [ %i.u, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread39 ]
  %i.bc = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.bb) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !2445)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2446
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !2445
  %i.bd = load i64, ptr %i.a, align 8, !range !8, !noalias !2446, !noundef !5
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.42.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0.copyload.i27 = load i64, ptr %.sroa.42.0..sroa_idx.i26, align 8, !noalias !2446
  %.sroa.5.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0.copyload.i29 = load i32, ptr %.sroa.5.0..sroa_idx.i28, align 8, !noalias !2446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2446
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.42.0.copyload.i27, ptr %i.bf, align 8, !alias.scope !2445, !noalias !2447
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0.copyload.i29, ptr %i.bg, align 8, !alias.scope !2445, !noalias !2447
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit30

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2446
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit30

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit30: ; preds = %bb.w, %bb.x
  %storemerge.i25 = phi i64 [ 0, %bb.x ], [ 1, %bb.w ]
  store i64 %storemerge.i25, ptr %0, align 8, !alias.scope !2445, !noalias !2447
  br label %bb.u

bb.y:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit
  %i.bh = phi i64 [ %.ph, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread ], [ %.pr, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load <2 x i64>, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 %i.bh, ptr %0, align 8
  store <2 x i64> %i.bi, ptr %.sroa.5.0..sroa_idx2, align 8
  br label %bb.u
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12create_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1400 x i8]) align 8 captures(none) dereferenceable(1400) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [704 x i8], align 8               ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [216 x i8], align 8               ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3560
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 312 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  call void @_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB2_8Captures3all(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 -1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3176
  invoke void @_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass12create_cache(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.m)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.g, %bb.e
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.n, %bb.e ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers23BoundedBacktrackerCacheEBH_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #25
          to label %bb.j unwind label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_6Hybrid12create_cache(ptr noalias noundef nonnull sret([704 x i8]) align 8 captures(address) dereferenceable(704) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %1)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12OnePassCacheEBH_(ptr noalias noundef align 8 dereferenceable(32) %i.b) #25
          to label %bb.d unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.q, ptr noundef nonnull align 8 dereferenceable(216) %i.d, i64 216, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(704) %i.a, i64 704, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 2, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.k, %bb.j, %bb.g, %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.j:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11PikeVMCacheEBH_(ptr noalias noundef align 8 dereferenceable(216) %i.d) #25
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures8CapturesEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.e) #25
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12memory_usage(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %i.b = tail call noundef i64 @_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo12memory_usage(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.d = load i8, ptr %i.c, align 8, !range !7, !noundef !5
  %.not = icmp eq i8 %i.d, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  br i1 %.not, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterE6map_orjNCNvXs2_NtNtBP_4meta8strategyNtB1Z_4CoreNtB1Z_8Strategy12memory_usage0EBP_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %.val.i = load ptr, ptr %i.e, align 16, !alias.scope !2453, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %.val5.i = load ptr, ptr %i.f, align 8, !alias.scope !2453, !nonnull !5, !align !24, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !27, !invariant.load !5, !noalias !2453
  %i.i = add nsw i64 %i.h, -1
  %i.j = and i64 %i.i, -16
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.val5.i, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !5, !noalias !2453, !nonnull !5
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l), !noalias !2453, !inline_history !2450
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterE6map_orjNCNvXs2_NtNtBP_4meta8strategyNtB1Z_4CoreNtB1Z_8Strategy12memory_usage0EBP_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterE6map_orjNCNvXs2_NtNtBP_4meta8strategyNtB1Z_4CoreNtB1Z_8Strategy12memory_usage0EBP_.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3560
  %.val = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 336
  %i.r = load i64, ptr %i.q, align 16, !noundef !5 ; 2 uses
  %i.s = icmp ult i64 %i.r, 384307168202282326
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 360
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 2 uses
  %i.v = icmp ult i64 %i.u, 2305843009213693952
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 312
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 192153584101141163
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5 ; 2 uses
  %i.ag = icmp ult i64 %i.af, 384307168202282326
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 304
  %i.ak = load i64, ptr %i.aj, align 16, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3568
  %i.am = load ptr, ptr %i.al, align 16, !noundef !5 ; 5 uses
  %.not2 = icmp eq ptr %i.am, null
  br i1 %.not2, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFAE6map_orjNCNvXs2_NtNtBR_4meta8strategyNtB1X_4CoreNtB1X_8Strategy12memory_usages_0EBR_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterE6map_orjNCNvXs2_NtNtBP_4meta8strategyNtB1Z_4CoreNtB1Z_8Strategy12memory_usage0EBP_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 336
  %i.ao = load i64, ptr %i.an, align 16, !noalias !2454, !noundef !5 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 384307168202282326
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 360
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !2454, !noundef !5 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 2305843009213693952
  tail call void @llvm.assume(i1 %i.as)
  %i.at = shl nuw nsw i64 %i.ar, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 312
  %i.av = load ptr, ptr %i.au, align 8, !noalias !2454, !nonnull !5, !noundef !5 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !2454, !noundef !5 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = shl nuw nsw i64 %i.ax, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !2454, !noundef !5 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 192153584101141163
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = mul nuw nsw i64 %i.bb, 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !noalias !2454, !noundef !5 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 384307168202282326
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !2454, !noundef !5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 304
  %i.bk = load i64, ptr %i.bj, align 16, !noalias !2454, !noundef !5
  %reass.add.i.i.i = add nuw nsw i64 %i.bf, %i.ao
  %reass.mul.i.i.i = mul nuw i64 %reass.add.i.i.i, 24
  %i.bl = add nuw i64 %i.at, 464
  %i.bm = add i64 %i.bl, %i.az
  %i.bn = add i64 %i.bm, %i.bd
  %i.bo = add i64 %i.bn, %i.bi
  %i.bp = add i64 %i.bo, %reass.mul.i.i.i
  %i.bq = add i64 %i.bp, %i.bk
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFAE6map_orjNCNvXs2_NtNtBR_4meta8strategyNtB1X_4CoreNtB1X_8Strategy12memory_usages_0EBR_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFAE6map_orjNCNvXs2_NtNtBR_4meta8strategyNtB1X_4CoreNtB1X_8Strategy12memory_usages_0EBR_.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterE6map_orjNCNvXs2_NtNtBP_4meta8strategyNtB1Z_4CoreNtB1Z_8Strategy12memory_usage0EBP_.exit, %bb.c
  %.sroa.02.0.i4 = phi i64 [ %i.bq, %bb.c ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterE6map_orjNCNvXs2_NtNtBP_4meta8strategyNtB1Z_4CoreNtB1Z_8Strategy12memory_usage0EBP_.exit ]
  %i.br = shl nuw nsw i64 %i.u, 2
  %i.bs = shl nuw nsw i64 %i.z, 3
  %i.bt = mul nuw nsw i64 %i.ac, 48
  %reass.add.i = add nuw nsw i64 %i.af, %i.r
  %reass.mul.i = mul nuw i64 %reass.add.i, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.bv = tail call noundef i64 @_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass12memory_usage(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.bu)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.bx = tail call noundef i64 @_RNvMsa_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_3DFA12memory_usage(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1600) %i.bw)
  %i.by = add i64 %i.b, 464
  %i.bz = add i64 %i.by, %.sroa.02.0.i
  %i.ca = add i64 %i.bz, %i.br
  %i.cb = add i64 %i.ca, %i.bs
  %i.cc = add i64 %i.cb, %i.bt
  %i.cd = add i64 %i.cc, %i.ai
  %i.ce = add i64 %i.cd, %reass.mul.i
  %i.cf = add i64 %i.ce, %i.ak
  %i.cg = add i64 %i.cf, %.sroa.02.0.i4
  %i.ch = add i64 %i.cg, %i.bv
  %i.ci = add i64 %i.ch, %i.bx
  ret i64 %i.ci
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal { i32, i32 } @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef align 8 dereferenceable(1400) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3560
  %.val = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 312
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %i.o = icmp ult i64 %i.n, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = shl nuw nsw i64 %i.n, 1
  %i.q = icmp samesign ugt i64 %4, %i.p
  br i1 %i.q, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.s = load i64, ptr %i.r, align 16, !range !11, !alias.scope !2502, !noalias !2503, !noundef !5
  %.not.i6.i = icmp eq i64 %i.s, 2
  br i1 %.not.i6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2504
  call fastcc void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa5regexNtB5_5Regex10try_searchB9_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1600) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !2505
  %i.u = load i64, ptr %i.d, align 8, !range !11, !noalias !2504, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.x = load i128, ptr %0, align 16, !range !12, !alias.scope !2506, !noalias !2503, !noundef !5
  %.not.i.i = icmp eq i128 %i.x, 2
  br i1 %.not.i.i, label %bb.j, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.w, align 8, !noalias !2504, !nonnull !5, !align !24, !noundef !5
  %i.z = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.y), !noalias !2505 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2504
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.f:                                             ; preds = %bb.c
  %.sroa.476.0.copyload = load i64, ptr %i.w, align 8, !noalias !2504
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.763.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.763.0..sroa_idx64, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.577.0..sroa_idx, i64 16, i1 false), !noalias !2507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2504
  store i64 %i.u, ptr %i.i, align 8, !noalias !2507
  %.sroa.660.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.476.0.copyload, ptr %.sroa.660.0..sroa_idx61, align 8, !noalias !2507
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  %i.aa = load i64, ptr %1, align 8, !range !11, !alias.scope !2509, !noalias !2510, !noundef !5
  %.not.i5.i = icmp eq i64 %i.aa, 2
  br i1 %.not.i5.i, label %bb.i, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2511
  call fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata6hybrid5regexNtB5_5Regex10try_search(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !2512
  %i.ab = load i64, ptr %i.e, align 8, !range !11, !noalias !2511, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.ac, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #23, !noalias !2511
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.k:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !2511, !nonnull !5, !align !24, !noundef !5
  %i.af = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.ae), !noalias !2512 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2511
end_hunk_1
begin_hunk_2_@_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots:bb.a
  br i1 %i.cg, label %bb.aj, label %bb.ak, !prof !19

bb.aj:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input4spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.ak:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input4spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy14is_accelerated(ptr noalias noundef readonly align 16 captures(none) dereferenceable(3584) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterE6map_orbNCNvXs2_NtNtBP_4meta8strategyNtB1Z_4CoreNtB1Z_8Strategy14is_accelerated0EBP_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !5
  %.sroa.02.0.i = trunc i8 %i.b to i1
  ret i1 %.sroa.02.0.i
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy25which_overlapping_matches(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef align 8 dereferenceable(1400) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef align 8 dereferenceable(24) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.b = load i64, ptr %i.a, align 16, !range !11, !noundef !5
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.d = tail call fastcc noundef align 8 ptr @_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton29try_which_overlapping_matchesB9_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef align 8 dereferenceable(24) %3) ; 2 uses
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load i128, ptr %0, align 16, !range !12, !noundef !5
  %.not7 = icmp eq i128 %i.e, 2
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc i64 @_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine29try_which_overlapping_matches(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(1440) %0, ptr noalias noundef align 8 dereferenceable(704) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef align 8 dereferenceable(24) %3)
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 2 uses
  %i.j = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_11PikeVMCache3get(ptr noalias noundef nonnull align 8 dereferenceable(216) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i)
  tail call void @_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM21which_overlapping_imp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(216) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.k = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.d) ; 0 uses
  br label %bb.e

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy4name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias readonly align 16 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @102, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef align 8 dereferenceable(1400) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2704
  %i.d = load i64, ptr %i.c, align 16, !range !11, !alias.scope !2542, !noundef !5
  %.not.i6 = icmp eq i64 %i.d, 2
  br i1 %.not.i6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2543
  call fastcc void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa5regexNtB5_5Regex10try_searchB9_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1600) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !2544
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !2543, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = load i128, ptr %1, align 16, !range !12, !alias.scope !2545, !noundef !5
  %.not.i = icmp eq i128 %i.i, 2
  br i1 %.not.i, label %bb.j, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.h, align 8, !noalias !2543, !nonnull !5, !align !24, !noundef !5
  %i.k = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.j), !noalias !2544 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2543
  tail call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.421.0.copyload = load i64, ptr %i.h, align 8, !noalias !2543
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.522.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2543
  store i64 %i.f, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.421.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %bb.l, %bb.d, %bb.e, %bb.j
  ret void

bb.g:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2546)
  %i.l = load i64, ptr %2, align 8, !range !11, !alias.scope !2546, !noalias !2547, !noundef !5
  %.not.i5 = icmp eq i64 %i.l, 2
  br i1 %.not.i5, label %bb.i, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2548
  call fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata6hybrid5regexNtB5_5Regex10try_search(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %1, ptr noalias noundef nonnull align 8 dereferenceable(704) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !2549
  %i.m = load i64, ptr %i.b, align 8, !range !11, !noalias !2548, !noundef !5 ; 2 uses
  %i.n = icmp eq i64 %i.m, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.n, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #23, !noalias !2548
  unreachable

bb.j:                                             ; preds = %bb.c
  tail call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %bb.f

bb.k:                                             ; preds = %bb.h
  %i.p = load ptr, ptr %i.o, align 8, !noalias !2548, !nonnull !5, !align !24, !noundef !5
  %i.q = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.p), !noalias !2549 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2548
  tail call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %bb.f

bb.l:                                             ; preds = %bb.h
  %.sroa.4.0.copyload = load i64, ptr %i.o, align 8, !noalias !2548
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.717.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2548
  store i64 %i.m, ptr %0, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.614.0..sroa_idx, align 8
  br label %bb.f
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef align 8 dereferenceable(1400) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.g = load i64, ptr %i.f, align 16, !range !11, !noundef !5
  %.not = icmp eq i64 %i.g, 2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %i.c, align 8, !noalias !2567
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %i.j = load i8, ptr %i.i, align 8, !range !21, !alias.scope !2568, !noalias !2569, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2233
  %i.l = load i8, ptr %i.k, align 1, !range !21, !alias.scope !2566, !noalias !2569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2567
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_fwdRINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !2570
  %i.m = load i64, ptr %i.b, align 8, !range !11, !noalias !2567, !noundef !5 ; 3 uses
  %i.n = icmp eq i64 %i.m, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !2567 ; 2 uses
  br i1 %i.n, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread24, label %bb.c

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread24: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.q = trunc nuw i8 %i.j to i1
  %i.r = trunc nuw i8 %i.l to i1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2567
  %i.s = trunc nuw i64 %i.m to i1
  %i.t = and i1 %i.s, %i.q
  %i.u = select i1 %i.t, i1 %i.r, i1 false, !prof !28
  br i1 %i.u, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread, !prof !26

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit: ; preds = %bb.c
  %i.v = ptrtoint ptr %i.p to i64                 ; 2 uses
  %.sroa.69.16.extract.trunc11.i = trunc i64 %.sroa.5.0.copyload.i to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB1A_9automaton9Automaton14try_search_fwd0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef %i.v, i32 noundef %.sroa.69.16.extract.trunc11.i, i64 noundef %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  %.pr = load i64, ptr %i.e, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.w = icmp eq i64 %.pr, 2
  br i1 %i.w, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge, label %bb.o

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.x = load i128, ptr %0, align 16, !range !12, !noundef !5
  %.not16 = icmp eq i128 %i.x, 2
  br i1 %.not16, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2571)
  %i.y = load i64, ptr %1, align 8, !range !11, !alias.scope !2571, !noalias !2572, !noundef !5
  %.not.i = icmp eq i64 %i.y, 2
  br i1 %.not.i, label %bb.j, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2573
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2574)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.aa = load ptr, ptr %i.z, align 16, !alias.scope !2574, !noalias !2575, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 386
  %i.ac = load i8, ptr %i.ab, align 2, !range !21, !noalias !2576, !noundef !5
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 387
  %i.af = load i8, ptr %i.ae, align 1, !range !21, !noalias !2576, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i17.not = phi i1 [ %i.ag, %bb.g ], [ false, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2576
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata6hybrid6search8find_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %0, ptr noalias noundef nonnull align 8 dereferenceable(704) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !2577
  %i.ah = load i64, ptr %i.a, align 8, !range !11, !noalias !2576, !noundef !5 ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !2576 ; 2 uses
  br i1 %i.ai, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread27, label %bb.i

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread27: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2576
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %.sroa.5.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0.copyload.i19 = load i64, ptr %.sroa.5.0..sroa_idx.i18, align 8, !noalias !2576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2576
  %i.al = trunc nuw i64 %i.ah to i1
  %brmerge34.not = select i1 %i.al, i1 %.sroa.0.0.i17.not, i1 false
  br i1 %brmerge34.not, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread, !prof !26

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit: ; preds = %bb.i
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %.sroa.69.16.extract.trunc11.i22 = trunc i64 %.sroa.5.0.copyload.i19 to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvMs_NtNtB6_6hybrid3dfaNtB1x_3DFA14try_search_fwd0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef %i.am, i32 noundef %.sroa.69.16.extract.trunc11.i22, i64 noundef %i.am, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %0, ptr noalias noundef nonnull align 8 dereferenceable(704) %1), !noalias !2578
  %.pr25 = load i64, ptr %i.d, align 8, !noalias !2573 ; 2 uses
  %i.an = icmp eq i64 %.pr25, 2
  br i1 %i.an, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre30 = load ptr, ptr %.phi.trans.insert29, align 8, !noalias !2573
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #23, !noalias !2573
  unreachable

bb.k:                                             ; preds = %bb.d
  %i.ao = tail call noundef zeroext i1 @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core15is_match_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %bb.m

bb.l:                                             ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread27
  %i.ap = phi ptr [ %.pre30, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge ], [ %i.ak, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread27 ]
  %i.aq = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.ap), !noalias !2578 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2573
  %i.ar = call noundef zeroext i1 @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core15is_match_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %bb.m

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread: ; preds = %bb.i, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %i.as = phi i64 [ %.pr25, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit ], [ %i.ah, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2573
  %i.at = icmp eq i64 %i.as, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread, %bb.n, %bb.o, %bb.k
  %.sroa.0.1.in = phi i1 [ %i.ao, %bb.k ], [ %i.ay, %bb.o ], [ %i.aw, %bb.n ], [ %i.ar, %bb.l ], [ %i.at, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread ]
  ret i1 %.sroa.0.1.in

bb.n:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread24
  %i.au = phi ptr [ %.pre, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge ], [ %i.p, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread24 ]
  %i.av = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.au) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aw = call noundef zeroext i1 @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core15is_match_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %bb.m

bb.o:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit
  %i.ax = phi i64 [ %i.m, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread ], [ %.pr, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ay = icmp eq i64 %i.ax, 1
  br label %bb.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 3, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103, ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @104, ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_15ReverseAnchoredNtB5_8Strategy10group_info(ptr noalias noundef readonly align 16 captures(none) dereferenceable(3584) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3560
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  ret ptr %i.c
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_15ReverseAnchoredNtB5_8Strategy11reset_cache(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef align 8 dereferenceable(1400) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3072
  tail call void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_11PikeVMCache5reset(ptr noalias noundef nonnull align 8 dereferenceable(216) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1312
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3120
  tail call void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_23BoundedBacktrackerCache5reset(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1368
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3176
  tail call void @_RNvMs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12OnePassCache5reset(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.f)
  tail call void @_RNvMs9_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_11HybridCache5reset(ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0)
  ret void
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_15ReverseAnchoredNtB5_8Strategy11search_half(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef align 8 dereferenceable(1400) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %.val = load i32, ptr %3, align 8, !range !16, !noundef !5
  %.not = icmp eq i32 %.val, 0
  br i1 %.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2642
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx4.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i, i64 40, i1 false), !noalias !2643
  store i32 1, ptr %i.n, align 8, !noalias !2642
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2704
  %i.p = load i64, ptr %i.o, align 16, !range !11, !alias.scope !2641, !noalias !2644, !noundef !5
  %.not.i = icmp eq i64 %i.p, 2
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2642
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2240 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2646)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 3032
  %i.s = load i8, ptr %i.r, align 8, !range !21, !alias.scope !2647, !noalias !2648, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3033
  %i.v = load i8, ptr %i.u, align 1, !range !21, !alias.scope !2646, !noalias !2648
  %i.w = trunc nuw i8 %i.v to i1
  %.sroa.0.0.i = select i1 %i.t, i1 %i.w, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2649
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_revINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n), !noalias !2650
  %i.x = load i64, ptr %i.i, align 8, !range !11, !noalias !2649, !noundef !5 ; 2 uses
  %i.y = icmp eq i64 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !2649 ; 2 uses
  br i1 %i.y, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread72, label %bb.d

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread72: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2649
  br label %bb.r

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2649 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2649
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = trunc nuw i64 %i.x to i1
  br i1 %i.ac, label %bb.e, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread

bb.e:                                             ; preds = %bb.d
  br i1 %.sroa.0.0.i, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !2645, !noalias !2651
  br label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit: ; preds = %bb.e
  %.sroa.69.16.extract.trunc11.i = trunc i64 %.sroa.5.0.copyload.i to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_revNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB1A_9automaton9Automaton14try_search_rev0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, i64 noundef %i.ab, i32 noundef %.sroa.69.16.extract.trunc11.i, i64 noundef %i.ab, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.q), !noalias !2644
  %.pr = load i64, ptr %i.m, align 8, !noalias !2642 ; 2 uses
  %i.ad = icmp eq i64 %.pr, 2
  br i1 %i.ad, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit._crit_edge, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit._crit_edge: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit
  %.phi.trans.insert87 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre88 = load ptr, ptr %.phi.trans.insert87, align 8, !noalias !2642
  br label %bb.r

bb.g:                                             ; preds = %bb.b
  %i.ae = load i128, ptr %1, align 16, !range !12, !alias.scope !2641, !noalias !2644, !noundef !5
  %.not7.i = icmp eq i128 %i.ae, 2
  br i1 %.not7.i, label %bb.q, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  %i.af = load i64, ptr %2, align 8, !range !11, !alias.scope !2652, !noalias !2653, !noundef !5
  %.not.i1 = icmp eq i64 %i.af, 2
  br i1 %.not.i1, label %bb.o, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2654
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.aj = load ptr, ptr %i.ai, align 16, !alias.scope !2656, !noalias !2657, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 386
  %i.al = load i8, ptr %i.ak, align 2, !range !21, !noalias !2658, !noundef !5
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %bb.k

end_hunk_2
begin_hunk_3_@_RNvXs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_15ReverseAnchoredNtB5_8Strategy6search:bb.a
  unreachable

bb.r:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread56
  %i.at = phi ptr [ %.pre, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit._crit_edge ], [ %i.t, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread56 ]
  %i.au = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.at), !noalias !2906
  br label %bb.s

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread: ; preds = %bb.d, %bb.f, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit
  %i.av = phi i64 [ %.pr, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit ], [ 1, %bb.f ], [ 0, %bb.d ]
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.429.0.copyload = load i64, ptr %.sroa.429.0..sroa_idx, align 8, !noalias !2904
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.530.0.copyload = load i32, ptr %.sroa.530.0..sroa_idx, align 8, !noalias !2904
  br label %bb.s

bb.s:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread, %bb.r
  %.sroa.10.0 = phi i32 [ undef, %bb.r ], [ %.sroa.530.0.copyload, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread ]
  %.sroa.7.0 = phi i64 [ %i.au, %bb.r ], [ %.sroa.429.0.copyload, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread ]
  %.sroa.015.0 = phi i64 [ 2, %bb.r ], [ %i.av, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2904
  br label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_15ReverseAnchored28try_search_half_anchored_rev.exit

_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_15ReverseAnchored28try_search_half_anchored_rev.exit: ; preds = %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit, %bb.s
  %.sroa.10.1 = phi i32 [ %.sroa.10.2, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit ], [ %.sroa.10.0, %bb.s ]
  %.sroa.7.1 = phi i64 [ %.sroa.7.2, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit ], [ %.sroa.7.0, %bb.s ] ; 2 uses
  %.sroa.015.1 = phi i64 [ %.sroa.015.2, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit ], [ %.sroa.015.0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2904
  switch i64 %.sroa.015.1, label %bb.af [
    i64 2, label %bb.ae
    i64 0, label %bb.ah
  ]

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2925)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2704
  %i.ax = load i64, ptr %i.aw, align 16, !range !11, !alias.scope !2926, !noalias !2927, !noundef !5
  %.not.i6.i = icmp eq i64 %i.ax, 2
  br i1 %.not.i6.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2928
  call fastcc void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa5regexNtB5_5Regex10try_searchB9_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1600) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !2929
  %i.az = load i64, ptr %i.c, align 8, !range !11, !noalias !2928, !noundef !5 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.ba, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.bc = load i128, ptr %1, align 16, !range !12, !alias.scope !2930, !noalias !2927, !noundef !5
  %.not.i.i = icmp eq i128 %i.bc, 2
  br i1 %.not.i.i, label %bb.ab, label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.bd = load ptr, ptr %i.bb, align 8, !noalias !2928, !nonnull !5, !align !24, !noundef !5
  %i.be = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.bd), !noalias !2929 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2928
  tail call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.x:                                             ; preds = %bb.u
  %.sroa.454.0.copyload = load i64, ptr %i.bb, align 8, !noalias !2928
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.741.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.741.0..sroa_idx42, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.555.0..sroa_idx, i64 16, i1 false), !noalias !2931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2928
  store i64 %i.az, ptr %0, align 8, !noalias !2931
  %.sroa.638.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.454.0.copyload, ptr %.sroa.638.0..sroa_idx39, align 8, !noalias !2931
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2932)
  %i.bf = load i64, ptr %2, align 8, !range !11, !alias.scope !2933, !noalias !2934, !noundef !5
  %.not.i5.i = icmp eq i64 %i.bf, 2
  br i1 %.not.i5.i, label %bb.aa, label %bb.z, !prof !20

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2935
  call fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata6hybrid5regexNtB5_5Regex10try_search(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !2936
  %i.bg = load i64, ptr %i.d, align 8, !range !11, !noalias !2935, !noundef !5 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.bh, label %bb.ac, label %bb.ad

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #23, !noalias !2935
  unreachable

bb.ab:                                            ; preds = %bb.v
  tail call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.ac:                                            ; preds = %bb.z
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !2935, !nonnull !5, !align !24, !noundef !5
  %i.bk = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.bj), !noalias !2936 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2935
  tail call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.ad:                                            ; preds = %bb.z
  %.sroa.451.0.copyload = load i64, ptr %i.bi, align 8, !noalias !2935
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.748.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.748.0..sroa_idx49, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.552.0..sroa_idx, i64 16, i1 false), !noalias !2931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2935
  store i64 %i.bg, ptr %0, align 8, !noalias !2931
  %.sroa.645.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.451.0.copyload, ptr %.sroa.645.0..sroa_idx46, align 8, !noalias !2931
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.ae:                                            ; preds = %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_15ReverseAnchored28try_search_half_anchored_rev.exit
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.af:                                            ; preds = %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_15ReverseAnchored28try_search_half_anchored_rev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val7 = load i64, ptr %i.bl, align 8, !noundef !5 ; 2 uses
  %.not.i14 = icmp ugt i64 %.sroa.7.1, %.val7
  br i1 %.not.i14, label %bb.ag, label %_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit, !prof !20

bb.ag:                                            ; preds = %bb.af
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !2937
  unreachable

_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit: ; preds = %bb.af
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.1, ptr %i.bm, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val7, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.10.1, ptr %.sroa.526.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.ah:                                            ; preds = %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_15ReverseAnchored28try_search_half_anchored_rev.exit
  store i64 0, ptr %0, align 8
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit: ; preds = %bb.ac, %bb.ad, %bb.w, %bb.x, %bb.ae, %_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit, %bb.ah, %bb.ab
  ret void
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_15ReverseAnchoredNtB5_8Strategy8is_match(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef align 8 dereferenceable(1400) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = load i32, ptr %2, align 8, !range !16, !noundef !5
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.n = load i64, ptr %i.m, align 16, !range !11, !alias.scope !2979, !noalias !2981, !noundef !5
  %.not.i2 = icmp eq i64 %i.n, 2
  br i1 %.not.i2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2982
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2983)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.o, ptr %i.e, align 8, !noalias !2984
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %i.q = load i8, ptr %i.p, align 8, !range !21, !alias.scope !2985, !noalias !2986, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2233
  %i.s = load i8, ptr %i.r, align 1, !range !21, !alias.scope !2983, !noalias !2986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2984
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_fwdRINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !2987
  %i.t = load i64, ptr %i.d, align 8, !range !11, !noalias !2984, !noundef !5 ; 3 uses
  %i.u = icmp eq i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2984 ; 2 uses
  br i1 %i.u, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread35, label %bb.d

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread35: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.x = trunc nuw i8 %i.q to i1
  %i.y = trunc nuw i8 %i.s to i1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2984
  %i.z = trunc nuw i64 %i.t to i1
  %i.aa = and i1 %i.z, %i.x
  %i.ab = select i1 %i.aa, i1 %i.y, i1 false, !prof !28
  br i1 %i.ab, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread, !prof !26

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit: ; preds = %bb.d
  %i.ac = ptrtoint ptr %i.w to i64                ; 2 uses
  %.sroa.69.16.extract.trunc11.i = trunc i64 %.sroa.5.0.copyload.i to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB1A_9automaton9Automaton14try_search_fwd0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef %i.ac, i32 noundef %.sroa.69.16.extract.trunc11.i, i64 noundef %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e), !noalias !2980
  %.pr = load i64, ptr %i.g, align 8, !noalias !2982 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ad = icmp eq i64 %.pr, 2
  br i1 %i.ad, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge, label %bb.o

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !2982
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.ae = load i128, ptr %0, align 16, !range !12, !alias.scope !2979, !noalias !2981, !noundef !5
  %.not16.i = icmp eq i128 %i.ae, 2
  br i1 %.not16.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2988)
  %i.af = load i64, ptr %1, align 8, !range !11, !alias.scope !2989, !noalias !2990, !noundef !5
  %.not.i.i = icmp eq i64 %i.af, 2
  br i1 %.not.i.i, label %bb.k, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2991
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2992)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ah = load ptr, ptr %i.ag, align 16, !alias.scope !2992, !noalias !2993, !nonnull !5, !noundef !5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 386
  %i.aj = load i8, ptr %i.ai, align 2, !range !21, !noalias !2994, !noundef !5
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 387
  %i.am = load i8, ptr %i.al, align 1, !range !21, !noalias !2994, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i3.not = phi i1 [ %i.an, %bb.h ], [ false, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2994
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata6hybrid6search8find_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !2995
  %i.ao = load i64, ptr %i.c, align 8, !range !11, !noalias !2994, !noundef !5 ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !2994 ; 2 uses
  br i1 %i.ap, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread38, label %bb.j

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread38: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2994
  br label %bb.m

bb.j:                                             ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0.copyload.i5 = load i64, ptr %.sroa.5.0..sroa_idx.i4, align 8, !noalias !2994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2994
  %i.as = trunc nuw i64 %i.ao to i1
  %brmerge56.not = select i1 %i.as, i1 %.sroa.0.0.i3.not, i1 false
  br i1 %brmerge56.not, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread, !prof !26

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit: ; preds = %bb.j
  %i.at = ptrtoint ptr %i.ar to i64               ; 2 uses
  %.sroa.69.16.extract.trunc11.i8 = trunc i64 %.sroa.5.0.copyload.i5 to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvMs_NtNtB6_6hybrid3dfaNtB1x_3DFA14try_search_fwd0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef %i.at, i32 noundef %.sroa.69.16.extract.trunc11.i8, i64 noundef %i.at, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1), !noalias !2996
  %.pr36 = load i64, ptr %i.f, align 8, !noalias !2991 ; 2 uses
  %i.au = icmp eq i64 %.pr36, 2
  br i1 %i.au, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre47 = load ptr, ptr %.phi.trans.insert46, align 8, !noalias !2991
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #23, !noalias !2991
  unreachable

bb.l:                                             ; preds = %bb.e
  %i.av = tail call noundef zeroext i1 @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core15is_match_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.m:                                             ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread38
  %i.aw = phi ptr [ %.pre47, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge ], [ %i.ar, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread38 ]
  %i.ax = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.aw), !noalias !2996 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2991
  %i.ay = call noundef zeroext i1 @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core15is_match_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread: ; preds = %bb.j, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %i.az = phi i64 [ %.pr36, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit ], [ %i.ao, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2991
  %i.ba = icmp eq i64 %i.az, 1
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.n:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread35
  %i.bb = phi ptr [ %.pre, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge ], [ %i.w, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread35 ]
  %i.bc = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.bb), !noalias !2980 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2982
  %i.bd = call noundef zeroext i1 @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core15is_match_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.o:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit
  %i.be = phi i64 [ %i.t, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread ], [ %.pr, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2982
  %i.bf = icmp eq i64 %i.be, 1
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2997)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2998
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx4.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i, i64 40, i1 false), !noalias !2999
  store i32 1, ptr %i.j, align 8, !noalias !2998
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.bh = load i64, ptr %i.bg, align 16, !range !11, !alias.scope !2997, !noalias !3000, !noundef !5
  %.not.i = icmp eq i64 %i.bh, 2
  br i1 %.not.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2998
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2240 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3001)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3032
  %i.bk = load i8, ptr %i.bj, align 8, !range !21, !alias.scope !3002, !noalias !3003, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 3033
  %i.bm = load i8, ptr %i.bl, align 1, !range !21, !alias.scope !3001, !noalias !3003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3004
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_revINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j), !noalias !3005
  %i.bn = load i64, ptr %i.b, align 8, !range !11, !noalias !3004, !noundef !5 ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !3004 ; 2 uses
  br i1 %i.bo, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread42, label %bb.r

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread42: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3004
  br label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.br = trunc nuw i8 %i.bk to i1
  %i.bs = trunc nuw i8 %i.bm to i1
  %.sroa.5.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload.i11 = load i64, ptr %.sroa.5.0..sroa_idx.i10, align 8, !noalias !3004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3004
  %i.bt = trunc nuw i64 %i.bn to i1
  %i.bu = and i1 %i.bt, %i.br
  %i.bv = select i1 %i.bu, i1 %i.bs, i1 false, !prof !28
  br i1 %i.bv, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread, !prof !26

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit: ; preds = %bb.r
  %i.bw = ptrtoint ptr %i.bq to i64               ; 2 uses
  %.sroa.69.16.extract.trunc11.i14 = trunc i64 %.sroa.5.0.copyload.i11 to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_revNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB1A_9automaton9Automaton14try_search_rev0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, i64 noundef %i.bw, i32 noundef %.sroa.69.16.extract.trunc11.i14, i64 noundef %i.bw, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.bi), !noalias !3000
  %.pr40 = load i64, ptr %i.i, align 8, !noalias !2998 ; 2 uses
  %i.bx = icmp eq i64 %.pr40, 2
  br i1 %i.bx, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit._crit_edge, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit._crit_edge: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit
  %.phi.trans.insert48 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre49 = load ptr, ptr %.phi.trans.insert48, align 8, !noalias !2998
  br label %bb.ab

bb.s:                                             ; preds = %bb.p
  %i.by = load i128, ptr %0, align 16, !range !12, !alias.scope !2997, !noalias !3000, !noundef !5
  %.not7.i = icmp eq i128 %i.by, 2
  br i1 %.not7.i, label %bb.aa, label %bb.t, !prof !20

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3006)
  %i.bz = load i64, ptr %1, align 8, !range !11, !alias.scope !3006, !noalias !3007, !noundef !5
  %.not.i1 = icmp eq i64 %i.bz, 2
  br i1 %.not.i1, label %bb.y, label %bb.u, !prof !20

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3008
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3009)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.cd = load ptr, ptr %i.cc, align 16, !alias.scope !3009, !noalias !3010, !nonnull !5, !noundef !5 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 386
  %i.cf = load i8, ptr %i.ce, align 2, !range !21, !noalias !3011, !noundef !5
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 387
  %i.ci = load i8, ptr %i.ch, align 1, !range !21, !noalias !3011, !noundef !5
  %i.cj = trunc nuw i8 %i.ci to i1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.0.0.i15.not = phi i1 [ %i.cj, %bb.v ], [ false, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3011
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata6hybrid6search8find_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.ca, ptr noalias noundef nonnull align 8 dereferenceable(352) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j), !noalias !3012
  %i.ck = load i64, ptr %i.a, align 8, !range !11, !noalias !3011, !noundef !5 ; 3 uses
  %i.cl = icmp eq i64 %i.ck, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !3011 ; 2 uses
  br i1 %i.cl, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread45, label %bb.x

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread45: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3011
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %.sroa.5.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0.copyload.i17 = load i64, ptr %.sroa.5.0..sroa_idx.i16, align 8, !noalias !3011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3011
  %i.co = trunc nuw i64 %i.ck to i1
  %brmerge62.not = select i1 %i.co, i1 %.sroa.0.0.i15.not, i1 false
  br i1 %brmerge62.not, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit, label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit, !prof !26

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit: ; preds = %bb.x
  %i.cp = ptrtoint ptr %i.cn to i64               ; 2 uses
  %.sroa.69.16.extract.trunc11.i20 = trunc i64 %.sroa.5.0.copyload.i17 to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_revNtNtB4_6search9HalfMatchNCNvMs_NtNtB6_6hybrid3dfaNtB1x_3DFA14try_search_rev0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, i64 noundef %i.cp, i32 noundef %.sroa.69.16.extract.trunc11.i20, i64 noundef %i.cp, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.ca, ptr noalias noundef nonnull align 8 dereferenceable(352) %i.cb), !noalias !3013
  %.pr43 = load i64, ptr %i.h, align 8, !noalias !3008 ; 2 uses
  %i.cq = icmp eq i64 %.pr43, 2
  br i1 %i.cq, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit._crit_edge, label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit._crit_edge: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit
  %.phi.trans.insert50 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre51 = load ptr, ptr %.phi.trans.insert50, align 8, !noalias !3008
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #23, !noalias !3008
  unreachable

bb.z:                                             ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit._crit_edge, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread45
  %i.cr = phi ptr [ %.pre51, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit._crit_edge ], [ %i.cn, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread45 ]
  %i.cs = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.cr), !noalias !3013 ; 0 uses
  br label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit

_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit: ; preds = %bb.x, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit, %bb.z
  %.sroa.0.2 = phi i64 [ 2, %bb.z ], [ %.pr43, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit ], [ %i.ck, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3008
  br label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_15ReverseAnchored28try_search_half_anchored_rev.exit

bb.aa:                                            ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @50, ptr noundef nonnull inttoptr (i64 149 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #23, !noalias !2998
  unreachable

bb.ab:                                            ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread42
  %i.ct = phi ptr [ %.pre49, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit._crit_edge ], [ %i.bq, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread42 ]
  %i.cu = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.ct), !noalias !3000 ; 0 uses
  br label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread: ; preds = %bb.r, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit, %bb.ab
  %.sroa.0.0 = phi i64 [ 2, %bb.ab ], [ %.pr40, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit ], [ %i.bn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2998
  br label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_15ReverseAnchored28try_search_half_anchored_rev.exit

_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_15ReverseAnchored28try_search_half_anchored_rev.exit: ; preds = %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread
  %.sroa.0.1 = phi i64 [ %.sroa.0.2, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit ], [ %.sroa.0.0, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2998
  %i.cv = icmp eq i64 %.sroa.0.1, 2
  br i1 %i.cv, label %bb.ac, label %bb.ad

_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit: ; preds = %bb.ac, %bb.ad, %bb.o, %bb.n, %bb.l, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread, %bb.m
  %.sroa.0.0.in = phi i1 [ %i.ba, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread ], [ %i.av, %bb.l ], [ %i.bf, %bb.o ], [ %i.bd, %bb.n ], [ %i.ay, %bb.m ], [ %i.cw, %bb.ac ], [ %i.cx, %bb.ad ]
  ret i1 %.sroa.0.0.in

bb.ac:                                            ; preds = %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_15ReverseAnchored28try_search_half_anchored_rev.exit
  %i.cw = call noundef zeroext i1 @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core15is_match_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.ad:                                            ; preds = %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_15ReverseAnchored28try_search_half_anchored_rev.exit
  %i.cx = icmp ne i64 %.sroa.0.1, 0
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter6memchrNtB5_6MemchrNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @111)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy10group_info(ptr noalias noundef readonly align 16 captures(none) dereferenceable(3616) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3560
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  ret ptr %i.c
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy11reset_cache(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3616) %0, ptr noalias noundef align 8 dereferenceable(1400) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3072
  tail call void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_11PikeVMCache5reset(ptr noalias noundef nonnull align 8 dereferenceable(216) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1312
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3120
  tail call void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_23BoundedBacktrackerCache5reset(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1368
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3176
  tail call void @_RNvMs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12OnePassCache5reset(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.f)
  tail call void @_RNvMs9_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_11HybridCache5reset(ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0)
  ret void
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy11search_half(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3616) %1, ptr noalias noundef align 8 dereferenceable(1400) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 3 uses
  %i.p = alloca [16 x i8], align 8                ; 11 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 9 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 12 uses
  %i.ac = alloca [48 x i8], align 8               ; 18 uses
  %i.ad = alloca [24 x i8], align 8               ; 15 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [48 x i8], align 8               ; 13 uses
  %i.ag = load i32, ptr %3, align 8, !range !16, !noundef !5
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3128)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 2704
  %i.aj = load i64, ptr %i.ai, align 16, !range !11, !alias.scope !3127, !noalias !3129, !noundef !5
  %.not.i10 = icmp eq i64 %i.aj, 2
  br i1 %.not.i10, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3130
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3132)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.ak, ptr %i.v, align 8, !noalias !3133
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2232
  %i.am = load i8, ptr %i.al, align 8, !range !21, !alias.scope !3134, !noalias !3135, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2233
  %i.ap = load i8, ptr %i.ao, align 1, !range !21, !alias.scope !3132, !noalias !3135
  %i.aq = trunc nuw i8 %i.ap to i1
  %.sroa.0.0.i21 = select i1 %i.an, i1 %i.aq, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3133
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_fwdRINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !3136
  %i.ar = load i64, ptr %i.u, align 8, !range !11, !noalias !3133, !noundef !5 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !3133 ; 2 uses
  br i1 %i.as, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread154, label %bb.d

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread154: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.v

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3133 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3133
  %i.av = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.aw = trunc nuw i64 %i.ar to i1
  br i1 %i.aw, label %bb.e, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread

bb.e:                                             ; preds = %bb.d
  br i1 %.sroa.0.0.i21, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %.sroa.3.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.av, ptr %.sroa.3.0..sroa_idx.i22, align 8, !alias.scope !3131, !noalias !3137
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !3131, !noalias !3137
  br label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread: ; preds = %bb.d, %bb.f
  %.ph = phi i64 [ 1, %bb.f ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.y

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit: ; preds = %bb.e
  %.sroa.69.16.extract.trunc11.i = trunc i64 %.sroa.5.0.copyload.i to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB1A_9automaton9Automaton14try_search_fwd0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, i64 noundef %i.av, i32 noundef %.sroa.69.16.extract.trunc11.i, i64 noundef %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v), !noalias !3138
  %.pr = load i64, ptr %i.x, align 8, !noalias !3130 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
end_hunk_3
begin_hunk_4_@_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy11search_half:bb.a
bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3139)
  %i.az = load i64, ptr %2, align 8, !range !11, !alias.scope !3140, !noalias !3141, !noundef !5
  %.not.i.i18 = icmp eq i64 %i.az, 2
  br i1 %.not.i.i18, label %bb.o, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3144)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.bb = load ptr, ptr %i.ba, align 16, !alias.scope !3144, !noalias !3145, !nonnull !5, !noundef !5 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 386
  %i.bd = load i8, ptr %i.bc, align 2, !range !21, !noalias !3146, !noundef !5
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 387
  %i.bg = load i8, ptr %i.bf, align 1, !range !21, !noalias !3146, !noundef !5
  %i.bh = trunc nuw i8 %i.bg to i1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i23 = phi i1 [ %i.bh, %bb.j ], [ false, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3146
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata6hybrid6search8find_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !3147
  %i.bi = load i64, ptr %i.t, align 8, !range !11, !noalias !3146, !noundef !5 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !3146 ; 2 uses
  br i1 %i.bj, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread157, label %bb.l

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread157: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3146
  br label %bb.s

bb.l:                                             ; preds = %bb.k
  %.sroa.5.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5.0.copyload.i25 = load i64, ptr %.sroa.5.0..sroa_idx.i24, align 8, !noalias !3146 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3146
  %i.bm = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bn = trunc nuw i64 %i.bi to i1
  br i1 %i.bn, label %bb.m, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %.sroa.0.0.i23, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit, label %bb.n, !prof !20

bb.n:                                             ; preds = %bb.m
  %.sroa.3.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.bm, ptr %.sroa.3.0..sroa_idx.i26, align 8, !alias.scope !3143, !noalias !3148
  %.sroa.69.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.5.0.copyload.i25, ptr %.sroa.69.0..sroa_idx.i27, align 8, !alias.scope !3143, !noalias !3148
  br label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit: ; preds = %bb.m
  %.sroa.69.16.extract.trunc11.i28 = trunc i64 %.sroa.5.0.copyload.i25 to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvMs_NtNtB6_6hybrid3dfaNtB1x_3DFA14try_search_fwd0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, i64 noundef %i.bm, i32 noundef %.sroa.69.16.extract.trunc11.i28, i64 noundef %i.bm, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2), !noalias !3149
  %.pr155 = load i64, ptr %i.w, align 8, !noalias !3142 ; 2 uses
  %i.bo = icmp eq i64 %.pr155, 2
  br i1 %i.bo, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %.phi.trans.insert236 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.pre237 = load ptr, ptr %.phi.trans.insert236, align 8, !noalias !3142
  br label %bb.s

bb.o:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #23, !noalias !3142
  unreachable

bb.p:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3150)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3151
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !3150
  %i.bp = load i64, ptr %i.s, align 8, !range !8, !noalias !3151, !noundef !5
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.42.0.copyload.i = load i64, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3151
  %.sroa.5.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.5.0.copyload.i30 = load i32, ptr %.sroa.5.0..sroa_idx.i29, align 8, !noalias !3151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3151
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.42.0.copyload.i, ptr %i.br, align 8, !alias.scope !3150, !noalias !3152
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0.copyload.i30, ptr %i.bs, align 8, !alias.scope !3150, !noalias !3152
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3151
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit: ; preds = %bb.q, %bb.r
  %storemerge.i = phi i64 [ 0, %bb.r ], [ 1, %bb.q ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !3150, !noalias !3152
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit20

bb.s:                                             ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread157
  %i.bt = phi ptr [ %.pre237, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge ], [ %i.bl, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread157 ]
  %i.bu = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.bt), !noalias !3149 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3142
  call void @llvm.experimental.noalias.scope.decl(metadata !3153)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3154
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !3153
  %i.bv = load i64, ptr %i.r, align 8, !range !8, !noalias !3154, !noundef !5
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.42.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.42.0.copyload.i33 = load i64, ptr %.sroa.42.0..sroa_idx.i32, align 8, !noalias !3154
  %.sroa.5.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.5.0.copyload.i35 = load i32, ptr %.sroa.5.0..sroa_idx.i34, align 8, !noalias !3154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3154
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.42.0.copyload.i33, ptr %i.bx, align 8, !alias.scope !3153, !noalias !3155
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0.copyload.i35, ptr %i.by, align 8, !alias.scope !3153, !noalias !3155
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit36

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3154
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit36

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit36: ; preds = %bb.t, %bb.u
  %storemerge.i31 = phi i64 [ 0, %bb.u ], [ 1, %bb.t ]
  store i64 %storemerge.i31, ptr %0, align 8, !alias.scope !3153, !noalias !3155
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit20

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread: ; preds = %bb.l, %bb.n, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %i.bz = phi i64 [ %.pr155, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit ], [ 1, %bb.n ], [ 0, %bb.l ]
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.6145.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load <2 x i64>, ptr %.sroa.4152.0..sroa_idx, align 8, !noalias !3142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3142
  store i64 %i.bz, ptr %0, align 8, !noalias !3156
  store <2 x i64> %i.ca, ptr %.sroa.6145.0..sroa_idx146, align 8, !noalias !3156
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit20

bb.v:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread154
  %i.cb = phi ptr [ %.pre, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge ], [ %i.au, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread154 ]
  %i.cc = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.cb), !noalias !3138 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3130
  call void @llvm.experimental.noalias.scope.decl(metadata !3157)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3158
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !3157
  %i.cd = load i64, ptr %i.q, align 8, !range !8, !noalias !3158, !noundef !5
  %i.ce = trunc nuw i64 %i.cd to i1
  br i1 %i.ce, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.42.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.42.0.copyload.i39 = load i64, ptr %.sroa.42.0..sroa_idx.i38, align 8, !noalias !3158
  %.sroa.5.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.5.0.copyload.i41 = load i32, ptr %.sroa.5.0..sroa_idx.i40, align 8, !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3158
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.42.0.copyload.i39, ptr %i.cf, align 8, !alias.scope !3157, !noalias !3159
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0.copyload.i41, ptr %i.cg, align 8, !alias.scope !3157, !noalias !3159
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit42

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3158
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit42

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit42: ; preds = %bb.w, %bb.x
  %storemerge.i37 = phi i64 [ 0, %bb.x ], [ 1, %bb.w ]
  store i64 %storemerge.i37, ptr %0, align 8, !alias.scope !3157, !noalias !3159
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit20

bb.y:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit
  %i.ch = phi i64 [ %.ph, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread ], [ %.pr, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit ]
  %.sroa.4.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5.0..sroa_idx2.i15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load <2 x i64>, ptr %.sroa.4.0..sroa_idx.i11, align 8, !noalias !3130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3130
  store i64 %i.ch, ptr %0, align 8, !alias.scope !3126, !noalias !3156
  store <2 x i64> %i.ci, ptr %.sroa.5.0..sroa_idx2.i15, align 8, !alias.scope !3126, !noalias !3156
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit20

bb.z:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3161)
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !3161, !noalias !3162, !noundef !5 ; 12 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !3161, !noalias !3162, !noundef !5 ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !3161, !noalias !3162, !nonnull !5, !noundef !5 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !3161, !noalias !3162, !noundef !5 ; 13 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 3584
  %i.cs = load ptr, ptr %i.cr, align 16, !alias.scope !3160, !noalias !3163, !nonnull !5, !noundef !5
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 3592
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !3160, !noalias !3163, !nonnull !5, !align !24, !noundef !5 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !range !27, !invariant.load !5, !noalias !3164
  %i.cx = add nsw i64 %i.cw, -1
  %i.cy = and i64 %i.cx, -16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !invariant.load !5, !noalias !3164, !nonnull !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3165
  call void %i.dc(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noundef nonnull %i.da, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.cq, i64 noundef %i.ck, i64 noundef %i.cm), !noalias !3164, !inline_history !0
  %i.dd = load i64, ptr %i.ad, align 8, !range !8, !noalias !3165, !noundef !5
  %i.de = trunc nuw i64 %i.dd to i1
  %i.df = ptrtoint ptr %i.co to i64               ; 4 uses
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %.sroa.6.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.6.i.sroa.7.0.copyload = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx, align 8, !noalias !3162 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %.sroa.4123.sroa.3.0..sroa.4123.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 3 uses
  %.sroa.7126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %.sroa.8127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 2704
  %i.dk = load i64, ptr %i.dj, align 16, !range !11
  %.fr = freeze i64 %i.dk                         ; 3 uses
  %.not.i6 = icmp eq i64 %.fr, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 2240
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 352
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  br i1 %.not.i6, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.do = load i128, ptr %1, align 16, !range !12
  %.fr217 = freeze i128 %i.do
  %.not2.i7 = icmp eq i128 %.fr217, 2
  br i1 %.not2.i7, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split, !prof !20

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.dp = load i64, ptr %i.dh, align 8, !noalias !3165, !noundef !5 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3166
  store i64 %i.ck, ptr %i.p, align 8, !noalias !3166
  store i64 %i.dp, ptr %i.di, align 8, !noalias !3166
  %.not.i43.us.us = icmp ugt i64 %i.dp, %i.cq
  %i.dq = add i64 %i.dp, 1
  %.not8.i.us.us = icmp ugt i64 %i.ck, %i.dq
  %or.cond.i.us.us = or i1 %.not8.i.us.us, %.not.i43.us.us
  br i1 %or.cond.i.us.us, label %.split.us, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us.us, !prof !6

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us.us: ; preds = %.lr.ph.split.us.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3166
  store i32 1, ptr %i.ac, align 8, !noalias !3165
  store i64 %i.df, ptr %.sroa.4123.sroa.3.0..sroa.4123.0..sroa_idx.sroa_idx, align 8, !noalias !3165
  store i64 %i.cq, ptr %.sroa.5124.0..sroa_idx, align 8, !noalias !3165
  store i64 %i.ck, ptr %.sroa.6.0..sroa_idx125, align 8, !noalias !3165
  store i64 %i.dp, ptr %.sroa.7126.0..sroa_idx, align 8, !noalias !3165
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.8127.0..sroa_idx, align 8, !noalias !3165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3165
  call void @llvm.experimental.noalias.scope.decl(metadata !3167)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @52, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #23, !noalias !3168
  unreachable

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.ad
  %.sroa.0.0.i200.us = phi i64 [ %i.dz, %bb.ad ], [ %i.ck, %.lr.ph.split.us ]
  %.sroa.03.0.i199.us = phi i64 [ %i.ds, %bb.ad ], [ 0, %.lr.ph.split.us ]
  %i.dr = load i64, ptr %i.dg, align 8, !noalias !3165, !noundef !5 ; 2 uses
  %i.ds = load i64, ptr %i.dh, align 8, !noalias !3165, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3166
  store i64 %i.ck, ptr %i.p, align 8, !noalias !3166
  store i64 %i.ds, ptr %i.di, align 8, !noalias !3166
  %.not.i43.us = icmp ugt i64 %i.ds, %i.cq
  %i.dt = add i64 %i.ds, 1
  %.not8.i.us = icmp ugt i64 %i.ck, %i.dt
  %or.cond.i.us = or i1 %.not8.i.us, %.not.i43.us
  br i1 %or.cond.i.us, label %.split.us, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us, !prof !6

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us: ; preds = %.lr.ph.split.us.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3166
  store i32 1, ptr %i.ac, align 8, !noalias !3165
  store i64 %i.df, ptr %.sroa.4123.sroa.3.0..sroa.4123.0..sroa_idx.sroa_idx, align 8, !noalias !3165
  store i64 %i.cq, ptr %.sroa.5124.0..sroa_idx, align 8, !noalias !3165
  store i64 %i.ck, ptr %.sroa.6.0..sroa_idx125, align 8, !noalias !3165
  store i64 %i.ds, ptr %.sroa.7126.0..sroa_idx, align 8, !noalias !3165
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.8127.0..sroa_idx, align 8, !noalias !3165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3165
  call void @llvm.experimental.noalias.scope.decl(metadata !3167)
  %i.du = load i64, ptr %2, align 8, !range !11, !alias.scope !3167, !noalias !3169, !noundef !5
  %.not3.i.us = icmp eq i64 %i.du, 2
  br i1 %.not3.i.us, label %.split204.us, label %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix27try_search_half_rev_limited.exit.us, !prof !20

_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix27try_search_half_rev_limited.exit.us: ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited26hybrid_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.dm, ptr noalias noundef nonnull align 8 dereferenceable(352) %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, i64 noundef %.sroa.03.0.i199.us), !noalias !3164
  %i.dv = load i64, ptr %i.ab, align 8, !range !11, !noalias !3165, !noundef !5 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 2
  br i1 %i.dw, label %.split206.us, label %bb.aa

bb.aa:                                            ; preds = %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix27try_search_half_rev_limited.exit.us
  %.sroa.422.0.copyload.i.us = load i64, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !3165
  %.sroa.523.0.copyload.i.us = load i64, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !3165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3165
  %i.dx = trunc nuw i64 %i.dv to i1
  br i1 %i.dx, label %.split208.us, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not.i5.us = icmp ult i64 %.sroa.0.0.i200.us, %i.cm
  br i1 %.not.i5.us, label %bb.ac, label %.split213.us

bb.ac:                                            ; preds = %bb.ab
  %i.dy = icmp eq i64 %i.dr, -1
  br i1 %i.dy, label %.split215.us, label %bb.ad, !prof !20

bb.ad:                                            ; preds = %bb.ac
  %i.dz = add nuw i64 %i.dr, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3165
  call void %i.dc(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noundef nonnull %i.da, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.cq, i64 noundef %i.dz, i64 noundef %i.cm), !noalias !3164, !inline_history !0
  %i.ea = load i64, ptr %i.ad, align 8, !range !8, !noalias !3165, !noundef !5
  %i.eb = trunc nuw i64 %i.ea to i1
  br i1 %i.eb, label %.lr.ph.split.us.split, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ah
  %.sroa.0.0.i200 = phi i64 [ %i.ek, %bb.ah ], [ %i.ck, %.lr.ph ]
  %.sroa.03.0.i199 = phi i64 [ %i.ed, %bb.ah ], [ 0, %.lr.ph ]
  %i.ec = load i64, ptr %i.dg, align 8, !noalias !3165, !noundef !5 ; 2 uses
  %i.ed = load i64, ptr %i.dh, align 8, !noalias !3165, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3166
  store i64 %i.ck, ptr %i.p, align 8, !noalias !3166
  store i64 %i.ed, ptr %i.di, align 8, !noalias !3166
  %.not.i43 = icmp ugt i64 %i.ed, %i.cq
  %i.ee = add i64 %i.ed, 1
  %.not8.i = icmp ugt i64 %i.ck, %i.ee
  %or.cond.i = or i1 %.not8.i, %.not.i43
  br i1 %or.cond.i, label %.split.us, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit, !prof !6

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3166
  store i64 %i.cq, ptr %i.o, align 8, !noalias !3166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3166
  store ptr %i.p, ptr %i.n, align 8, !noalias !3166
  %.sroa.42.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i44, align 8, !noalias !3166
  %i.ef = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.ef, align 8, !noalias !3166
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !3166
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !3166
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit: ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3166
  store i32 1, ptr %i.ac, align 8, !noalias !3165
  store i64 %i.df, ptr %.sroa.4123.sroa.3.0..sroa.4123.0..sroa_idx.sroa_idx, align 8, !noalias !3165
  store i64 %i.cq, ptr %.sroa.5124.0..sroa_idx, align 8, !noalias !3165
  store i64 %i.ck, ptr %.sroa.6.0..sroa_idx125, align 8, !noalias !3165
  store i64 %i.ed, ptr %.sroa.7126.0..sroa_idx, align 8, !noalias !3165
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.8127.0..sroa_idx, align 8, !noalias !3165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3165
  call void @llvm.experimental.noalias.scope.decl(metadata !3167)
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited23dfa_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.dl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, i64 noundef %.sroa.03.0.i199), !noalias !3170
  %i.eg = load i64, ptr %i.ab, align 8, !range !11, !noalias !3165, !noundef !5 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 2
  br i1 %i.eh, label %.split206.us, label %bb.ae

.split204.us:                                     ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #23, !noalias !3168
  unreachable

._crit_edge:                                      ; preds = %bb.ah, %bb.ad, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3165
  br label %bb.bb

bb.ae:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  %.sroa.422.0.copyload.i = load i64, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !3165
  %.sroa.523.0.copyload.i = load i64, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !3165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3165
  %i.ei = trunc nuw i64 %i.eg to i1
  br i1 %i.ei, label %.split208.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i5 = icmp ult i64 %.sroa.0.0.i200, %i.cm
  br i1 %.not.i5, label %bb.ag, label %.split213.us

bb.ag:                                            ; preds = %bb.af
  %i.ej = icmp eq i64 %i.ec, -1
  br i1 %i.ej, label %.split215.us, label %bb.ah, !prof !20

.split213.us:                                     ; preds = %bb.af, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3165
  br label %bb.bb

bb.ah:                                            ; preds = %bb.ag
end_hunk_4
begin_hunk_5_@_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy11search_half:bb.a
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.42.0.copyload.i86, ptr %i.hn, align 8, !alias.scope !3217, !noalias !3219
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0.copyload.i88, ptr %i.ho, align 8, !alias.scope !3217, !noalias !3219
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit89

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3218
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit89

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit89: ; preds = %bb.bv, %bb.bw
  %storemerge.i84 = phi i64 [ 0, %bb.bw ], [ 1, %bb.bv ]
  store i64 %storemerge.i84, ptr %0, align 8, !alias.scope !3217, !noalias !3219
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit20

bb.bx:                                            ; preds = %bb.bs
  %i.hp = load ptr, ptr %i.hk, align 8, !noalias !3215, !nonnull !5, !align !24, !noundef !5
  %i.hq = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.hp), !noalias !3216 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3215
  call void @llvm.experimental.noalias.scope.decl(metadata !3220)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3221
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !3220
  %i.hr = load i64, ptr %i.b, align 8, !range !8, !noalias !3221, !noundef !5
  %i.hs = trunc nuw i64 %i.hr to i1
  br i1 %i.hs, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %.sroa.42.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.42.0.copyload.i92 = load i64, ptr %.sroa.42.0..sroa_idx.i91, align 8, !noalias !3221
  %.sroa.5.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0.copyload.i94 = load i32, ptr %.sroa.5.0..sroa_idx.i93, align 8, !noalias !3221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3221
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.42.0.copyload.i92, ptr %i.ht, align 8, !alias.scope !3220, !noalias !3222
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0.copyload.i94, ptr %i.hu, align 8, !alias.scope !3220, !noalias !3222
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit95

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3221
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit95

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit95: ; preds = %bb.by, %bb.bz
  %storemerge.i90 = phi i64 [ 0, %bb.bz ], [ 1, %bb.by ]
  store i64 %storemerge.i90, ptr %0, align 8, !alias.scope !3220, !noalias !3222
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit20

bb.ca:                                            ; preds = %bb.bs
  %.sroa.6134.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hv = load <2 x i64>, ptr %i.hk, align 8, !noalias !3215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3215
  store i64 %i.hi, ptr %0, align 8, !noalias !3223
  store <2 x i64> %i.hv, ptr %.sroa.6134.0..sroa_idx135, align 8, !noalias !3223
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit20

bb.cb:                                            ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit83._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit83.thread178
  %i.hw = phi ptr [ %.pre243, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit83._crit_edge ], [ %i.hc, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit83.thread178 ]
  %i.hx = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.hw), !noalias !3210 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3202
  call void @llvm.experimental.noalias.scope.decl(metadata !3224)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3225
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !3224
  %i.hy = load i64, ptr %i.a, align 8, !range !8, !noalias !3225, !noundef !5
  %i.hz = trunc nuw i64 %i.hy to i1
  br i1 %i.hz, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %.sroa.42.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0.copyload.i98 = load i64, ptr %.sroa.42.0..sroa_idx.i97, align 8, !noalias !3225
  %.sroa.5.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0.copyload.i100 = load i32, ptr %.sroa.5.0..sroa_idx.i99, align 8, !noalias !3225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3225
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.42.0.copyload.i98, ptr %i.ia, align 8, !alias.scope !3224, !noalias !3226
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0.copyload.i100, ptr %i.ib, align 8, !alias.scope !3224, !noalias !3226
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit101

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3225
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit101

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit101: ; preds = %bb.cc, %bb.cd
  %storemerge.i96 = phi i64 [ 0, %bb.cd ], [ 1, %bb.cc ]
  store i64 %storemerge.i96, ptr %0, align 8, !alias.scope !3224, !noalias !3226
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit20

bb.ce:                                            ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit83.thread, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit83
  %i.ic = phi i64 [ %.ph177, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit83.thread ], [ %.pr176, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit83 ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.id = load <2 x i64>, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3202
  store i64 %i.ic, ptr %0, align 8, !alias.scope !3199, !noalias !3223
  store <2 x i64> %i.id, ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !3199, !noalias !3223
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit20
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy12create_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1400 x i8]) align 8 captures(none) dereferenceable(1400) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3616) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [704 x i8], align 8               ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [216 x i8], align 8               ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3232
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3560
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3231, !noalias !3230, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 312 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !3232, !nonnull !5, !noundef !5
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !3232
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !3232, !nonnull !5, !noundef !5
  call void @_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB2_8Captures3all(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noundef nonnull %i.l), !noalias !3232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3232
  store i64 -1, ptr %i.d, align 8, !noalias !3232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3232
  store i64 -1, ptr %i.c, align 8, !noalias !3232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3232
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3176
  invoke void @_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass12create_cache(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.m)
          to label %bb.f unwind label %bb.e, !noalias !3230

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.g, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.n, %bb.e ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers23BoundedBacktrackerCacheEBH_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #25
          to label %bb.i unwind label %bb.h, !noalias !3230

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3232
  invoke void @_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_6Hybrid12create_cache(ptr noalias noundef nonnull sret([704 x i8]) align 8 captures(address) dereferenceable(704) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1)
          to label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12create_cache.exit unwind label %bb.g, !noalias !3230

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12OnePassCacheEBH_(ptr noalias noundef align 8 dereferenceable(32) %i.b) #25
          to label %bb.d unwind label %bb.h, !noalias !3230

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !3230
  unreachable

bb.i:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11PikeVMCacheEBH_(ptr noalias noundef align 8 dereferenceable(216) %i.d) #25
          to label %bb.j unwind label %bb.h, !noalias !3230

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures8CapturesEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.e) #25
          to label %bb.k unwind label %bb.h, !noalias !3230

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %.pn.i

_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12create_cache.exit: ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !3231
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.r, ptr noundef nonnull align 8 dereferenceable(216) %i.d, i64 216, i1 false), !noalias !3231
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !3231
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !3231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %0, ptr noundef nonnull align 8 dereferenceable(704) %i.a, i64 704, i1 false), !noalias !3231
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 2, ptr %i.u, align 8, !alias.scope !3230, !noalias !3231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3232
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy12memory_usage(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3616) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12memory_usage(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.c = load ptr, ptr %i.b, align 16, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !24, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !27, !invariant.load !5
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !5, !nonnull !5
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull %i.k)
  %i.o = add i64 %i.n, %i.a
  ret i64 %i.o
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal { i32, i32 } @_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy12search_slots(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3616) %0, ptr noalias noundef align 8 dereferenceable(1400) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 3 uses
  %i.o = alloca [16 x i8], align 8                ; 11 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 3 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 12 uses
  %i.w = alloca [48 x i8], align 8                ; 18 uses
  %i.x = alloca [24 x i8], align 8                ; 15 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [48 x i8], align 8                ; 13 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [48 x i8], align 8               ; 9 uses
  %i.ah = alloca [32 x i8], align 8               ; 16 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [48 x i8], align 8               ; 4 uses
  %i.al = alloca [48 x i8], align 8               ; 6 uses
  %i.am = alloca [48 x i8], align 8               ; 4 uses
  %i.an = alloca [32 x i8], align 8               ; 16 uses
  %i.ao = alloca [24 x i8], align 8               ; 12 uses
  %i.ap = alloca [48 x i8], align 8               ; 18 uses
  %i.aq = alloca [24 x i8], align 8               ; 15 uses
  %i.ar = alloca [48 x i8], align 8               ; 10 uses
  %i.as = alloca [32 x i8], align 8               ; 23 uses
  %.val65 = load i32, ptr %2, align 8, !range !16, !noundef !5
  %.not = icmp eq i32 %.val65, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3560
  %.val53 = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %.val53, i64 312 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !5 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = shl nuw nsw i64 %i.ax, 1
  %i.ba = icmp samesign ugt i64 %4, %i.az
  br i1 %i.ba, label %bb.ce, label %bb.ak

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3412)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 3560
  %.val = load ptr, ptr %i.bb, align 8, !nonnull !5, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 312
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !noundef !5 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = shl nuw nsw i64 %i.bf, 1
  %i.bi = icmp samesign ugt i64 %4, %i.bh
  br i1 %i.bi, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !3413
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3415)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.bk = load i64, ptr %i.bj, align 16, !range !11, !alias.scope !3416, !noalias !3417, !noundef !5
  %.not.i6.i = icmp eq i64 %i.bk, 2
  br i1 %.not.i6.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3418
  call fastcc void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa5regexNtB5_5Regex10try_searchB9_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.ac, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1600) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !3419
  %i.bm = load i64, ptr %i.ac, align 8, !range !11, !noalias !3418, !noundef !5 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  br i1 %i.bn, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.bp = load i128, ptr %0, align 16, !range !12, !alias.scope !3420, !noalias !3417, !noundef !5
  %.not.i.i37 = icmp eq i128 %i.bp, 2
  br i1 %.not.i.i37, label %bb.l, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %i.bo, align 8, !noalias !3418, !nonnull !5, !align !24, !noundef !5
  %i.br = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.bq), !noalias !3419 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3418
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ah, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !3412
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.h:                                             ; preds = %bb.e
  %.sroa.4247.0.copyload = load i64, ptr %i.bo, align 8, !noalias !3418
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.7234.0..sroa_idx235 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7234.0..sroa_idx235, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5248.0..sroa_idx, i64 16, i1 false), !noalias !3421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3418
  store i64 %i.bm, ptr %i.ah, align 8, !noalias !3421
  %.sroa.6231.0..sroa_idx232 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.4247.0.copyload, ptr %.sroa.6231.0..sroa_idx232, align 8, !noalias !3421
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3422), !noalias !3412
  %i.bs = load i64, ptr %1, align 8, !range !11, !alias.scope !3423, !noalias !3424, !noundef !5
  %.not.i5.i38 = icmp eq i64 %i.bs, 2
  br i1 %.not.i5.i38, label %bb.k, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3425
  call fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata6hybrid5regexNtB5_5Regex10try_search(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.ad, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !3426
  %i.bt = load i64, ptr %i.ad, align 8, !range !11, !noalias !3425, !noundef !5 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.m, label %bb.n

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #23, !noalias !3425
  unreachable

bb.l:                                             ; preds = %bb.f
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ah, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !3412
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.m:                                             ; preds = %bb.j
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !3425, !nonnull !5, !align !24, !noundef !5
  %i.bx = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.bw), !noalias !3426 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3425
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ah, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !3412
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.n:                                             ; preds = %bb.j
  %.sroa.4244.0.copyload = load i64, ptr %i.bv, align 8, !noalias !3425
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.7241.0..sroa_idx242 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7241.0..sroa_idx242, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5245.0..sroa_idx, i64 16, i1 false), !noalias !3421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3425
  store i64 %i.bt, ptr %i.ah, align 8, !noalias !3421
  %.sroa.6238.0..sroa_idx239 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.4244.0.copyload, ptr %.sroa.6238.0..sroa_idx239, align 8, !noalias !3421
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit: ; preds = %bb.m, %bb.n, %bb.g, %bb.h, %bb.l
  %i.by = load i64, ptr %i.ah, align 8, !range !8, !noalias !3413, !noundef !5
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.p, label %bb.t

bb.o:                                             ; preds = %bb.c
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.cb = load i64, ptr %i.ca, align 8, !range !14, !alias.scope !3427, !noalias !3428, !noundef !5
  %.not.i5.i15 = icmp eq i64 %i.cb, -1
  br i1 %.not.i5.i15, label %bb.u, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit.i16

bb.p:                                             ; preds = %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.0215.0.copyload = load i64, ptr %i.cc, align 8, !noalias !3413
  %.sroa.4216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.4216.0.copyload = load i64, ptr %.sroa.4216.0..sroa_idx, align 8, !noalias !3413
  %.sroa.5217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.5217.0.copyload = load i32, ptr %.sroa.5217.0..sroa_idx, align 8, !noalias !3413 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3413
  %i.cd = zext i32 %.sroa.5217.0.copyload to i64
  %i.ce = shl nuw nsw i64 %i.cd, 1                ; 3 uses
  %i.cf = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.cg = icmp samesign ult i64 %i.ce, %4
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ce
end_hunk_5
begin_hunk_6_@_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy12search_slots:bb.a
  %i.cl = add i64 %.sroa.4216.0.copyload, 1
  store i64 %i.cl, ptr %i.ck, align 8, !alias.scope !3429, !noalias !3430
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy19copy_match_to_slots.exit.i12

bb.t:                                             ; preds = %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3413
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy19copy_match_to_slots.exit.i12

_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy19copy_match_to_slots.exit.i12: ; preds = %bb.r, %bb.s, %bb.t
  %.sroa.9.0.i9 = phi i32 [ undef, %bb.t ], [ %.sroa.5217.0.copyload, %bb.s ], [ %.sroa.5217.0.copyload, %bb.r ]
  %.sroa.0.0.i10 = phi i32 [ 0, %bb.t ], [ 1, %bb.s ], [ 1, %bb.r ]
  %i.cm = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i10, 0
  %i.cn = insertvalue { i32, i32 } %i.cm, i32 %.sroa.9.0.i9, 1
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit35

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit.i16: ; preds = %bb.o
  %i.co = tail call { i32, i32 } @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core19search_slots_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit35

bb.u:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3431)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.cq = load i64, ptr %i.cp, align 16, !range !11, !alias.scope !3432, !noalias !3433, !noundef !5
  %.not.i.i19 = icmp eq i64 %i.cq, 2
  br i1 %.not.i.i19, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3434
  call fastcc void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa5regexNtB5_5Regex10try_searchB9_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.af, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(1600) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !3435
  %i.cs = load i64, ptr %i.af, align 8, !range !11, !noalias !3434, !noundef !5 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  br i1 %i.ct, label %bb.ac, label %bb.ad

bb.w:                                             ; preds = %bb.u
  %i.cv = load i128, ptr %0, align 16, !range !12, !alias.scope !3432, !noalias !3433, !noundef !5
  %.not9.i.i31 = icmp eq i128 %i.cv, 2
  br i1 %.not9.i.i31, label %.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3436)
  %i.cw = load i64, ptr %1, align 8, !range !11, !alias.scope !3437, !noalias !3438, !noundef !5
  %.not.i7.i32 = icmp eq i64 %i.cw, 2
  br i1 %.not.i7.i32, label %bb.z, label %bb.y, !prof !20

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3439
  call fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata6hybrid5regexNtB5_5Regex10try_search(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.ae, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !3440
  %i.cx = load i64, ptr %i.ae, align 8, !range !11, !noalias !3439, !noundef !5 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  br i1 %i.cy, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.x
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #23, !noalias !3441
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !3439, !nonnull !5, !align !24, !noundef !5
  %i.db = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.da), !noalias !3440
  br label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i33

bb.ab:                                            ; preds = %bb.y
  %.sroa.4225.0.copyload = load i64, ptr %i.cz, align 8, !noalias !3439
  %.sroa.5226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5226.0.copyload = load i64, ptr %.sroa.5226.0..sroa_idx, align 8, !noalias !3439
  %.sroa.6227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.6227.0.copyload = load i32, ptr %.sroa.6227.0..sroa_idx, align 8, !noalias !3439
  br label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i33

_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i33: ; preds = %bb.ab, %bb.aa
  %.sroa.8222.0 = phi i32 [ undef, %bb.aa ], [ %.sroa.6227.0.copyload, %bb.ab ]
  %.sroa.7221.0 = phi i64 [ undef, %bb.aa ], [ %.sroa.5226.0.copyload, %bb.ab ]
  %.sroa.5220.0 = phi i64 [ %i.db, %bb.aa ], [ %.sroa.4225.0.copyload, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3439
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i28

bb.ac:                                            ; preds = %bb.v
  %i.dc = load ptr, ptr %i.cu, align 8, !noalias !3434, !nonnull !5, !align !24, !noundef !5
  %i.dd = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.dc), !noalias !3435
  br label %bb.ae

bb.ad:                                            ; preds = %bb.v
  %.sroa.4.0.copyload.i.i22 = load i64, ptr %i.cu, align 8, !noalias !3434
  %.sroa.57.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.57.i.i6.sroa.0.0.copyload = load i64, ptr %.sroa.57.0..sroa_idx.i.i23, align 8, !noalias !3434
  %.sroa.57.i.i6.sroa.4.0..sroa.57.0..sroa_idx.i.i23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.57.i.i6.sroa.4.0.copyload = load i32, ptr %.sroa.57.i.i6.sroa.4.0..sroa.57.0..sroa_idx.i.i23.sroa_idx, align 8, !noalias !3434
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.6.i.i7.sroa.4.0 = phi i32 [ undef, %bb.ac ], [ %.sroa.57.i.i6.sroa.4.0.copyload, %bb.ad ]
  %.sroa.6.i.i7.sroa.0.0 = phi i64 [ undef, %bb.ac ], [ %.sroa.57.i.i6.sroa.0.0.copyload, %bb.ad ]
  %.sroa.5.0.i.i24 = phi i64 [ %i.dd, %bb.ac ], [ %.sroa.4.0.copyload.i.i22, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3434
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i28

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i28: ; preds = %bb.ae, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i33
  %.sroa.9193.sroa.6.0 = phi i32 [ %.sroa.6.i.i7.sroa.4.0, %bb.ae ], [ %.sroa.8222.0, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i33 ]
  %.sroa.9193.sroa.0.0 = phi i64 [ %.sroa.6.i.i7.sroa.0.0, %bb.ae ], [ %.sroa.7221.0, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i33 ] ; 4 uses
  %.sroa.7192.0 = phi i64 [ %.sroa.5.0.i.i24, %bb.ae ], [ %.sroa.5220.0, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i33 ] ; 3 uses
  %.sroa.0191.0 = phi i64 [ %i.cs, %bb.ae ], [ %i.cx, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i33 ]
  switch i64 %.sroa.0191.0, label %bb.ag [
    i64 0, label %bb.af
    i64 2, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.w, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i28
  %i.de = tail call { i32, i32 } @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core19search_slots_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4) ; 2 uses
  %i.df = extractvalue { i32, i32 } %i.de, 0
  %i.dg = extractvalue { i32, i32 } %i.de, 1
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i28
  %.sroa.9.2.i29 = phi i32 [ undef, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i28 ], [ %i.dg, %.sink.split ]
  %.sroa.0.2.i30 = phi i32 [ 0, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i28 ], [ %i.df, %.sink.split ]
  %i.dh = insertvalue { i32, i32 } poison, i32 %.sroa.0.2.i30, 0
  %i.di = insertvalue { i32, i32 } %i.dh, i32 %.sroa.9.2.i29, 1
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit35

bb.ag:                                            ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3413
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6211.0.copyload = load i64, ptr %.sroa.6211.0..sroa_idx, align 8, !alias.scope !3442, !noalias !3412 ; 2 uses
  %i.dj = load <2 x i64>, ptr %.sroa.5210.0..sroa_idx, align 8, !alias.scope !3442, !noalias !3412
  %.sroa.9214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.9214.0.copyload = load i64, ptr %.sroa.9214.0..sroa_idx, align 8, !alias.scope !3442, !noalias !3412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3443
  store i64 %.sroa.7192.0, ptr %i.r, align 8, !noalias !3443
  %i.dk = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.9193.sroa.0.0, ptr %i.dk, align 8, !noalias !3443
  %.not.i.i78 = icmp ugt i64 %.sroa.9193.sroa.0.0, %.sroa.6211.0.copyload
  %i.dl = add i64 %.sroa.9193.sroa.0.0, 1
  %.not8.i.i = icmp ugt i64 %.sroa.7192.0, %i.dl
  %or.cond.i.i = or i1 %.not8.i.i, %.not.i.i78
  br i1 %or.cond.i.i, label %bb.ah, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input4spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit, !prof !6

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3443
  store i64 %.sroa.6211.0.copyload, ptr %i.q, align 8, !noalias !3443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3443
  store ptr %i.r, ptr %i.p, align 8, !noalias !3443
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !3443
  %i.dm = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.dm, align 8, !noalias !3443
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !3443
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !3443
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input4spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3443
  store i32 2, ptr %i.ag, align 8, !alias.scope !3444, !noalias !3412
  %.sroa.5203.0..sroa_idx204 = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %.sroa.9193.sroa.6.0, ptr %.sroa.5203.0..sroa_idx204, align 4, !alias.scope !3444, !noalias !3412
  %.sroa.6206.0..sroa_idx207 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store <2 x i64> %i.dj, ptr %.sroa.6206.0..sroa_idx207, align 8, !alias.scope !3444, !noalias !3412
  %.sroa.6206.sroa.5.0..sroa.6206.0..sroa_idx207.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %.sroa.7192.0, ptr %.sroa.6206.sroa.5.0..sroa.6206.0..sroa_idx207.sroa_idx, align 8, !alias.scope !3444, !noalias !3412
  %.sroa.6206.sroa.6.0..sroa.6206.0..sroa_idx207.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 %.sroa.9193.sroa.0.0, ptr %.sroa.6206.sroa.6.0..sroa.6206.0..sroa_idx207.sroa_idx, align 8, !alias.scope !3444, !noalias !3412
  %.sroa.6206.sroa.7.0..sroa.6206.0..sroa_idx207.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 %.sroa.9214.0.copyload, ptr %.sroa.6206.sroa.7.0..sroa.6206.0..sroa_idx207.sroa_idx, align 8, !alias.scope !3444, !noalias !3412
  %i.dn = call { i32, i32 } @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core19search_slots_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4) ; 2 uses
  %i.do = extractvalue { i32, i32 } %i.dn, 0
  %i.dp = trunc i32 %i.do to i1
  br i1 %i.dp, label %bb.ai, label %bb.aj, !prof !19

bb.ai:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input4spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3413
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit35

bb.aj:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input4spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #23
  unreachable

bb.ak:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3450)
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !3451, !noalias !3452, !noundef !5 ; 12 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !3451, !noalias !3452, !noundef !5 ; 9 uses
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !3451, !noalias !3452, !nonnull !5, !noundef !5 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !3451, !noalias !3452, !noundef !5 ; 13 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.dz = load ptr, ptr %i.dy, align 16, !alias.scope !3453, !noalias !3454, !nonnull !5, !noundef !5
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !3453, !noalias !3454, !nonnull !5, !align !24, !noundef !5 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !range !27, !invariant.load !5, !noalias !3455
  %i.ee = add nsw i64 %i.ed, -1
  %i.ef = and i64 %i.ee, -16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !invariant.load !5, !noalias !3455, !nonnull !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3456
  call void %i.ej(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noundef nonnull %i.eh, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dv, i64 noundef %i.dx, i64 noundef %i.dr, i64 noundef %i.dt), !noalias !3455, !inline_history !3457
  %i.ek = load i64, ptr %i.x, align 8, !range !8, !noalias !3456, !noundef !5
  %i.el = trunc nuw i64 %i.ek to i1
  %i.em = ptrtoint ptr %i.dv to i64               ; 4 uses
  br i1 %i.el, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ak
  %i.en = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %.sroa.6.i.i49.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6.i.i49.sroa.7.0.copyload = load i64, ptr %.sroa.6.i.i49.sroa.7.0..sroa_idx, align 8, !noalias !3452 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %.sroa.4325.sroa.3.0..sroa.4325.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %.sroa.5326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %.sroa.6327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  %.sroa.7328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 3 uses
  %.sroa.8329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.er = load i64, ptr %i.eq, align 16, !range !11
  %.fr = freeze i64 %i.er                         ; 3 uses
  %.not.i2.i = icmp eq i64 %.fr, 2
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  br i1 %.not.i2.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ev = load i128, ptr %0, align 16, !range !12
  %.fr515 = freeze i128 %i.ev
  %.not2.i3.i = icmp eq i128 %.fr515, 2
  br i1 %.not2.i3.i, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split, !prof !20

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.ew = load i64, ptr %i.eo, align 8, !noalias !3456, !noundef !5 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3458
  store i64 %i.dr, ptr %i.o, align 8, !noalias !3458
  store i64 %i.ew, ptr %i.ep, align 8, !noalias !3458
  %.not.i79.us.us = icmp ugt i64 %i.ew, %i.dx
  %i.ex = add i64 %i.ew, 1
  %.not8.i.us.us = icmp ugt i64 %i.dr, %i.ex
  %or.cond.i.us.us = or i1 %.not8.i.us.us, %.not.i79.us.us
  br i1 %or.cond.i.us.us, label %.split.us, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us.us, !prof !6

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us.us: ; preds = %.lr.ph.split.us.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3458
  store i32 1, ptr %i.w, align 8, !noalias !3456
  store i64 %i.em, ptr %.sroa.4325.sroa.3.0..sroa.4325.0..sroa_idx.sroa_idx, align 8, !noalias !3456
  store i64 %i.dx, ptr %.sroa.5326.0..sroa_idx, align 8, !noalias !3456
  store i64 %i.dr, ptr %.sroa.6327.0..sroa_idx, align 8, !noalias !3456
  store i64 %i.ew, ptr %.sroa.7328.0..sroa_idx, align 8, !noalias !3456
  store i64 %.sroa.6.i.i49.sroa.7.0.copyload, ptr %.sroa.8329.0..sroa_idx, align 8, !noalias !3456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3456
  call void @llvm.experimental.noalias.scope.decl(metadata !3459)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @52, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #23, !noalias !3460
  unreachable

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.ao
  %.sroa.0.0.i.i50472.us = phi i64 [ %i.fg, %bb.ao ], [ %i.dr, %.lr.ph.split.us ]
  %.sroa.03.0.i.i471.us = phi i64 [ %i.ez, %bb.ao ], [ 0, %.lr.ph.split.us ]
  %i.ey = load i64, ptr %i.en, align 8, !noalias !3456, !noundef !5 ; 2 uses
  %i.ez = load i64, ptr %i.eo, align 8, !noalias !3456, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3458
  store i64 %i.dr, ptr %i.o, align 8, !noalias !3458
  store i64 %i.ez, ptr %i.ep, align 8, !noalias !3458
  %.not.i79.us = icmp ugt i64 %i.ez, %i.dx
  %i.fa = add i64 %i.ez, 1
  %.not8.i.us = icmp ugt i64 %i.dr, %i.fa
  %or.cond.i.us = or i1 %.not8.i.us, %.not.i79.us
  br i1 %or.cond.i.us, label %.split.us, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us, !prof !6

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us: ; preds = %.lr.ph.split.us.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3458
  store i32 1, ptr %i.w, align 8, !noalias !3456
  store i64 %i.em, ptr %.sroa.4325.sroa.3.0..sroa.4325.0..sroa_idx.sroa_idx, align 8, !noalias !3456
  store i64 %i.dx, ptr %.sroa.5326.0..sroa_idx, align 8, !noalias !3456
  store i64 %i.dr, ptr %.sroa.6327.0..sroa_idx, align 8, !noalias !3456
  store i64 %i.ez, ptr %.sroa.7328.0..sroa_idx, align 8, !noalias !3456
  store i64 %.sroa.6.i.i49.sroa.7.0.copyload, ptr %.sroa.8329.0..sroa_idx, align 8, !noalias !3456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3456
  call void @llvm.experimental.noalias.scope.decl(metadata !3459)
  %i.fb = load i64, ptr %1, align 8, !range !11, !alias.scope !3461, !noalias !3462, !noundef !5
  %.not3.i.i.us = icmp eq i64 %i.fb, 2
  br i1 %.not3.i.i.us, label %.split476.us, label %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix27try_search_half_rev_limited.exit.i.us, !prof !20

_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix27try_search_half_rev_limited.exit.i.us: ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited26hybrid_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.et, ptr noalias noundef nonnull align 8 dereferenceable(352) %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, i64 noundef %.sroa.03.0.i.i471.us), !noalias !3455
  %i.fc = load i64, ptr %i.v, align 8, !range !11, !noalias !3456, !noundef !5 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 2
  br i1 %i.fd, label %.split478.us, label %bb.al

bb.al:                                            ; preds = %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix27try_search_half_rev_limited.exit.i.us
  %.sroa.422.0.copyload.i.i.us = load i64, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !3456
  %.sroa.523.0.copyload.i.i.us = load i64, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !3456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3456
  %i.fe = trunc nuw i64 %i.fc to i1
  br i1 %i.fe, label %.split480.us, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not.i1.i.us = icmp ult i64 %.sroa.0.0.i.i50472.us, %i.dt
  br i1 %.not.i1.i.us, label %bb.an, label %.split486.us

bb.an:                                            ; preds = %bb.am
  %i.ff = icmp eq i64 %i.ey, -1
  br i1 %i.ff, label %.split488.us, label %bb.ao, !prof !20

bb.ao:                                            ; preds = %bb.an
  %i.fg = add nuw i64 %i.ey, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3456
  call void %i.ej(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noundef nonnull %i.eh, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dv, i64 noundef %i.dx, i64 noundef %i.fg, i64 noundef %i.dt), !noalias !3455, !inline_history !3457
  %i.fh = load i64, ptr %i.x, align 8, !range !8, !noalias !3456, !noundef !5
  %i.fi = trunc nuw i64 %i.fh to i1
  br i1 %i.fi, label %.lr.ph.split.us.split, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.as
  %.sroa.0.0.i.i50472 = phi i64 [ %i.fr, %bb.as ], [ %i.dr, %.lr.ph ]
  %.sroa.03.0.i.i471 = phi i64 [ %i.fk, %bb.as ], [ 0, %.lr.ph ]
  %i.fj = load i64, ptr %i.en, align 8, !noalias !3456, !noundef !5 ; 2 uses
  %i.fk = load i64, ptr %i.eo, align 8, !noalias !3456, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3458
  store i64 %i.dr, ptr %i.o, align 8, !noalias !3458
  store i64 %i.fk, ptr %i.ep, align 8, !noalias !3458
  %.not.i79 = icmp ugt i64 %i.fk, %i.dx
  %i.fl = add i64 %i.fk, 1
  %.not8.i = icmp ugt i64 %i.dr, %i.fl
  %or.cond.i = or i1 %.not8.i, %.not.i79
  br i1 %or.cond.i, label %.split.us, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit, !prof !6

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3458
  store i64 %i.dx, ptr %i.n, align 8, !noalias !3458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3458
  store ptr %i.o, ptr %i.m, align 8, !noalias !3458
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3458
  %i.fm = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.fm, align 8, !noalias !3458
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !3458
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !3458
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit: ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3458
  store i32 1, ptr %i.w, align 8, !noalias !3456
  store i64 %i.em, ptr %.sroa.4325.sroa.3.0..sroa.4325.0..sroa_idx.sroa_idx, align 8, !noalias !3456
  store i64 %i.dx, ptr %.sroa.5326.0..sroa_idx, align 8, !noalias !3456
  store i64 %i.dr, ptr %.sroa.6327.0..sroa_idx, align 8, !noalias !3456
  store i64 %i.fk, ptr %.sroa.7328.0..sroa_idx, align 8, !noalias !3456
  store i64 %.sroa.6.i.i49.sroa.7.0.copyload, ptr %.sroa.8329.0..sroa_idx, align 8, !noalias !3456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3456
  call void @llvm.experimental.noalias.scope.decl(metadata !3459)
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited23dfa_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.es, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, i64 noundef %.sroa.03.0.i.i471), !noalias !3463
  %i.fn = load i64, ptr %i.v, align 8, !range !11, !noalias !3456, !noundef !5 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 2
  br i1 %i.fo, label %.split478.us, label %bb.ap

.split476.us:                                     ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #23, !noalias !3460
  unreachable

._crit_edge:                                      ; preds = %bb.as, %bb.ao, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3456
  br label %bb.bm

bb.ap:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  %.sroa.422.0.copyload.i.i = load i64, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !3456
  %.sroa.523.0.copyload.i.i = load i64, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !3456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3456
  %i.fp = trunc nuw i64 %i.fn to i1
  br i1 %i.fp, label %.split480.us, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not.i1.i = icmp ult i64 %.sroa.0.0.i.i50472, %i.dt
  br i1 %.not.i1.i, label %bb.ar, label %.split486.us

bb.ar:                                            ; preds = %bb.aq
  %i.fq = icmp eq i64 %i.fj, -1
  br i1 %i.fq, label %.split488.us, label %bb.as, !prof !20

.split486.us:                                     ; preds = %bb.aq, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3456
  br label %bb.bm

bb.as:                                            ; preds = %bb.ar
end_hunk_6
begin_hunk_7_@_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy12search_slots:bb.a

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit: ; preds = %bb.be
  %.sroa.69.16.extract.trunc11.i93 = trunc i64 %.sroa.5.0.copyload.i90 to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvMs_NtNtB6_6hybrid3dfaNtB1x_3DFA14try_search_fwd0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, i64 noundef %i.hb, i32 noundef %.sroa.69.16.extract.trunc11.i93, i64 noundef %i.hb, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3616) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1), !noalias !3491
  %.pr395 = load i64, ptr %i.u, align 8, !noalias !3484 ; 2 uses
  %i.hd = icmp eq i64 %.pr395, 2
  br i1 %i.hd, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %.phi.trans.insert554 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre555 = load ptr, ptr %.phi.trans.insert554, align 8, !noalias !3484
  br label %bb.bh

bb.bg:                                            ; preds = %bb.az
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #23, !noalias !3492
  unreachable

bb.bh:                                            ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread397
  %i.he = phi ptr [ %.pre555, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge ], [ %i.ha, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread397 ]
  %i.hf = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.he), !noalias !3491
  br label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_fwd.exit.i

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread: ; preds = %bb.bd, %bb.bf, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %i.hg = phi i64 [ %.pr395, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit ], [ 1, %bb.bf ], [ 0, %bb.bd ]
  %.sroa.4332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4332.0.copyload = load i64, ptr %.sroa.4332.0..sroa_idx, align 8, !noalias !3484
  br label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_fwd.exit.i

_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_fwd.exit.i: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread, %bb.bh
  %.sroa.0302.2 = phi i64 [ 2, %bb.bh ], [ %i.hg, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread ]
  %.sroa.7304.2 = phi i64 [ %i.hf, %bb.bh ], [ %.sroa.4332.0.copyload, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3484
  br label %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix19try_search_half_fwd.exit.i

bb.bi:                                            ; preds = %bb.ay
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @52, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #23, !noalias !3493
  unreachable

bb.bj:                                            ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread394
  %i.hh = phi ptr [ %.pre, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge ], [ %i.gj, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread394 ]
  %i.hi = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.hh), !noalias !3478
  br label %bb.bl

bb.bk:                                            ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit
  %i.hj = phi i64 [ %.ph, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread ], [ %.pr, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit ]
  %.sroa.4321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.4321.0.copyload = load i64, ptr %.sroa.4321.0..sroa_idx, align 8, !noalias !3470
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.sroa.0302.0 = phi i64 [ 2, %bb.bj ], [ %i.hj, %bb.bk ]
  %.sroa.7304.0 = phi i64 [ %i.hi, %bb.bj ], [ %.sroa.4321.0.copyload, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3470
  br label %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix19try_search_half_fwd.exit.i

_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix19try_search_half_fwd.exit.i: ; preds = %bb.bl, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_fwd.exit.i
  %.sroa.0302.1 = phi i64 [ %.sroa.0302.2, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_fwd.exit.i ], [ %.sroa.0302.0, %bb.bl ]
  %.sroa.7304.1 = phi i64 [ %.sroa.7304.2, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_fwd.exit.i ], [ %.sroa.7304.0, %bb.bl ] ; 2 uses
  switch i64 %.sroa.0302.1, label %bb.bo [
    i64 2, label %bb.bn
    i64 0, label %bb.bq
  ], !prof !29

bb.bm:                                            ; preds = %.split486.us, %._crit_edge
  store i64 0, ptr %i.as, align 8, !alias.scope !3445, !noalias !3494
  br label %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy6search.exit

bb.bn:                                            ; preds = %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix19try_search_half_fwd.exit.i
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.as, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3616) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %bb.br

bb.bo:                                            ; preds = %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix19try_search_half_fwd.exit.i
  %.not.i94 = icmp ugt i64 %.us-phi481, %.sroa.7304.1
  br i1 %.not.i94, label %bb.bp, label %_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit, !prof !20

bb.bp:                                            ; preds = %bb.bo
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !3495
  unreachable

_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit: ; preds = %bb.bo
  %i.hk = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %.us-phi481, ptr %i.hk, align 8, !noalias !3494
  %.sroa.4317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.7304.1, ptr %.sroa.4317.0..sroa_idx, align 8, !noalias !3494
  %.sroa.5318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i32 %.sroa.10.16.extract.trunc, ptr %.sroa.5318.0..sroa_idx, align 8, !noalias !3494
  store i64 1, ptr %i.as, align 8, !alias.scope !3445, !noalias !3494
  br label %bb.br

bb.bq:                                            ; preds = %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix19try_search_half_fwd.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull inttoptr (i64 207 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #23, !noalias !3445
  unreachable

bb.br:                                            ; preds = %_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3464
  br label %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy6search.exit

bb.bs:                                            ; preds = %.split478.us
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.as, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3616) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy6search.exit

bb.bt:                                            ; preds = %.split478.us
  call void @llvm.experimental.noalias.scope.decl(metadata !3496)
  call void @llvm.experimental.noalias.scope.decl(metadata !3497)
  %.not.i6.i.i = icmp eq i64 %.fr, 2
  br i1 %.not.i6.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3498
  call fastcc void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa5regexNtB5_5Regex10try_searchB9_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1600) %i.hl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !3499
  %i.hm = load i64, ptr %i.s, align 8, !range !11, !noalias !3498, !noundef !5 ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 2
  %i.ho = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  br i1 %i.hn, label %bb.bw, label %bb.bx

bb.bv:                                            ; preds = %bb.bt
  %i.hp = load i128, ptr %0, align 16, !range !12, !alias.scope !3500, !noalias !3501, !noundef !5
  %.not.i.i.i = icmp eq i128 %i.hp, 2
  br i1 %.not.i.i.i, label %bb.cb, label %bb.by

bb.bw:                                            ; preds = %bb.bu
  %i.hq = load ptr, ptr %i.ho, align 8, !noalias !3498, !nonnull !5, !align !24, !noundef !5
  %i.hr = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.hq), !noalias !3499 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3498
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.as, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3616) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy6search.exit

bb.bx:                                            ; preds = %bb.bu
  %.sroa.4353.0.copyload = load i64, ptr %i.ho, align 8, !noalias !3498
  %.sroa.5354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.7340.0..sroa_idx341 = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7340.0..sroa_idx341, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5354.0..sroa_idx, i64 16, i1 false), !noalias !3502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3498
  store i64 %i.hm, ptr %i.as, align 8, !noalias !3502
  %.sroa.6337.0..sroa_idx338 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %.sroa.4353.0.copyload, ptr %.sroa.6337.0..sroa_idx338, align 8, !noalias !3502
  br label %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy6search.exit

bb.by:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !3503)
  %i.hs = load i64, ptr %1, align 8, !range !11, !alias.scope !3504, !noalias !3505, !noundef !5
  %.not.i5.i.i = icmp eq i64 %i.hs, 2
  br i1 %.not.i5.i.i, label %bb.ca, label %bb.bz, !prof !20

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3506
  call fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata6hybrid5regexNtB5_5Regex10try_search(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.t, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !3507
  %i.ht = load i64, ptr %i.t, align 8, !range !11, !noalias !3506, !noundef !5 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 2
  %i.hv = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.hu, label %bb.cc, label %bb.cd

bb.ca:                                            ; preds = %bb.by
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #23, !noalias !3508
  unreachable

bb.cb:                                            ; preds = %bb.bv
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.as, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3616) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy6search.exit

bb.cc:                                            ; preds = %bb.bz
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !3506, !nonnull !5, !align !24, !noundef !5
  %i.hx = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.hw), !noalias !3507 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3506
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.as, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3616) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy6search.exit

bb.cd:                                            ; preds = %bb.bz
  %.sroa.4350.0.copyload = load i64, ptr %i.hv, align 8, !noalias !3506
  %.sroa.5351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.7347.0..sroa_idx348 = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7347.0..sroa_idx348, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5351.0..sroa_idx, i64 16, i1 false), !noalias !3502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3506
  store i64 %i.ht, ptr %i.as, align 8, !noalias !3502
  %.sroa.6344.0..sroa_idx345 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %.sroa.4350.0.copyload, ptr %.sroa.6344.0..sroa_idx345, align 8, !noalias !3502
  br label %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy6search.exit

_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy6search.exit: ; preds = %bb.cc, %bb.cd, %bb.bw, %bb.bx, %bb.cb, %bb.bm, %bb.br, %bb.bs
  %i.hy = load i64, ptr %i.as, align 8, !range !8, !noundef !5
  %i.hz = trunc nuw i64 %i.hy to i1
  br i1 %i.hz, label %bb.cn, label %bb.cr

bb.ce:                                            ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3510)
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !3510, !noalias !3511, !noundef !5 ; 12 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.id = load i64, ptr %i.ic, align 8, !alias.scope !3510, !noalias !3511, !noundef !5 ; 9 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !3510, !noalias !3511, !nonnull !5, !noundef !5 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ih = load i64, ptr %i.ig, align 8, !alias.scope !3510, !noalias !3511, !noundef !5 ; 13 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.ij = load ptr, ptr %i.ii, align 16, !alias.scope !3509, !noalias !3512, !nonnull !5, !noundef !5
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !3509, !noalias !3512, !nonnull !5, !align !24, !noundef !5 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load i64, ptr %i.im, align 8, !range !27, !invariant.load !5, !noalias !3513
  %i.io = add nsw i64 %i.in, -1
  %i.ip = and i64 %i.io, -16
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 40
  %i.it = load ptr, ptr %i.is, align 8, !invariant.load !5, !noalias !3513, !nonnull !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3514
  call void %i.it(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noundef nonnull %i.ir, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.if, i64 noundef %i.ih, i64 noundef %i.ib, i64 noundef %i.id), !noalias !3513, !inline_history !0
  %i.iu = load i64, ptr %i.aq, align 8, !range !8, !noalias !3514, !noundef !5
  %i.iv = trunc nuw i64 %i.iu to i1
  %i.iw = ptrtoint ptr %i.if to i64               ; 4 uses
  br i1 %i.iv, label %.lr.ph493, label %._crit_edge494

.lr.ph493:                                        ; preds = %bb.ce
  %i.ix = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  %.sroa.6.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6.i.sroa.7.0.copyload = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx, align 8, !noalias !3511 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.4135.sroa.3.0..sroa.4135.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %.sroa.6137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 3 uses
  %.sroa.7138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 3 uses
  %.sroa.8139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.jb = load i64, ptr %i.ja, align 16, !range !11
  %.fr516 = freeze i64 %i.jb                      ; 3 uses
  %.not.i2 = icmp eq i64 %.fr516, 2
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  br i1 %.not.i2, label %.lr.ph493.split.us, label %.lr.ph493.split

.lr.ph493.split.us:                               ; preds = %.lr.ph493
  %i.jf = load i128, ptr %0, align 16, !range !12
  %.fr517 = freeze i128 %i.jf
  %.not2.i = icmp eq i128 %.fr517, 2
  br i1 %.not2.i, label %.lr.ph493.split.us.split.us, label %.lr.ph493.split.us.split, !prof !20

.lr.ph493.split.us.split.us:                      ; preds = %.lr.ph493.split.us
  %i.jg = load i64, ptr %i.iy, align 8, !noalias !3514, !noundef !5 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3515
  store i64 %i.ib, ptr %i.f, align 8, !noalias !3515
  store i64 %i.jg, ptr %i.iz, align 8, !noalias !3515
  %.not.i95.us.us = icmp ugt i64 %i.jg, %i.ih
  %i.jh = add i64 %i.jg, 1
  %.not8.i96.us.us = icmp ugt i64 %i.ib, %i.jh
  %or.cond.i97.us.us = or i1 %.not8.i96.us.us, %.not.i95.us.us
  br i1 %or.cond.i97.us.us, label %.split496.us, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit100.us.us, !prof !6

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit100.us.us: ; preds = %.lr.ph493.split.us.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3515
  store i32 1, ptr %i.ap, align 8, !noalias !3514
  store i64 %i.iw, ptr %.sroa.4135.sroa.3.0..sroa.4135.0..sroa_idx.sroa_idx, align 8, !noalias !3514
  store i64 %i.ih, ptr %.sroa.5136.0..sroa_idx, align 8, !noalias !3514
  store i64 %i.ib, ptr %.sroa.6137.0..sroa_idx, align 8, !noalias !3514
  store i64 %i.jg, ptr %.sroa.7138.0..sroa_idx, align 8, !noalias !3514
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.8139.0..sroa_idx, align 8, !noalias !3514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3514
  call void @llvm.experimental.noalias.scope.decl(metadata !3516)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @52, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #23, !noalias !3517
  unreachable

.lr.ph493.split.us.split:                         ; preds = %.lr.ph493.split.us, %bb.ci
  %.sroa.0.0.i491.us = phi i64 [ %i.jq, %bb.ci ], [ %i.ib, %.lr.ph493.split.us ]
  %.sroa.03.0.i490.us = phi i64 [ %i.jj, %bb.ci ], [ 0, %.lr.ph493.split.us ]
  %i.ji = load i64, ptr %i.ix, align 8, !noalias !3514, !noundef !5 ; 2 uses
  %i.jj = load i64, ptr %i.iy, align 8, !noalias !3514, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3515
  store i64 %i.ib, ptr %i.f, align 8, !noalias !3515
  store i64 %i.jj, ptr %i.iz, align 8, !noalias !3515
  %.not.i95.us = icmp ugt i64 %i.jj, %i.ih
  %i.jk = add i64 %i.jj, 1
  %.not8.i96.us = icmp ugt i64 %i.ib, %i.jk
  %or.cond.i97.us = or i1 %.not8.i96.us, %.not.i95.us
  br i1 %or.cond.i97.us, label %.split496.us, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit100.us, !prof !6

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit100.us: ; preds = %.lr.ph493.split.us.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3515
  store i32 1, ptr %i.ap, align 8, !noalias !3514
  store i64 %i.iw, ptr %.sroa.4135.sroa.3.0..sroa.4135.0..sroa_idx.sroa_idx, align 8, !noalias !3514
  store i64 %i.ih, ptr %.sroa.5136.0..sroa_idx, align 8, !noalias !3514
  store i64 %i.ib, ptr %.sroa.6137.0..sroa_idx, align 8, !noalias !3514
  store i64 %i.jj, ptr %.sroa.7138.0..sroa_idx, align 8, !noalias !3514
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.8139.0..sroa_idx, align 8, !noalias !3514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3514
  call void @llvm.experimental.noalias.scope.decl(metadata !3516)
  %i.jl = load i64, ptr %1, align 8, !range !11, !alias.scope !3516, !noalias !3518, !noundef !5
  %.not3.i.us = icmp eq i64 %i.jl, 2
  br i1 %.not3.i.us, label %.split501.us, label %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix27try_search_half_rev_limited.exit.us, !prof !20

_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix27try_search_half_rev_limited.exit.us: ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit100.us
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited26hybrid_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.jd, ptr noalias noundef nonnull align 8 dereferenceable(352) %i.je, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap, i64 noundef %.sroa.03.0.i490.us), !noalias !3513
  %i.jm = load i64, ptr %i.ao, align 8, !range !11, !noalias !3514, !noundef !5 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 2
  br i1 %i.jn, label %.split503.us, label %bb.cf

bb.cf:                                            ; preds = %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix27try_search_half_rev_limited.exit.us
  %.sroa.422.0.copyload.i.us = load i64, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !3514
  %.sroa.523.0.copyload.i.us = load i64, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !3514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3514
  %i.jo = trunc nuw i64 %i.jm to i1
  br i1 %i.jo, label %.split505.us, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.not.i.us = icmp ult i64 %.sroa.0.0.i491.us, %i.id
  br i1 %.not.i.us, label %bb.ch, label %.split511.us

bb.ch:                                            ; preds = %bb.cg
  %i.jp = icmp eq i64 %i.ji, -1
  br i1 %i.jp, label %.split513.us, label %bb.ci, !prof !20

bb.ci:                                            ; preds = %bb.ch
  %i.jq = add nuw i64 %i.ji, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3514
  call void %i.it(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noundef nonnull %i.ir, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.if, i64 noundef %i.ih, i64 noundef %i.jq, i64 noundef %i.id), !noalias !3513, !inline_history !0
  %i.jr = load i64, ptr %i.aq, align 8, !range !8, !noalias !3514, !noundef !5
  %i.js = trunc nuw i64 %i.jr to i1
  br i1 %i.js, label %.lr.ph493.split.us.split, label %._crit_edge494

.lr.ph493.split:                                  ; preds = %.lr.ph493, %bb.cm
  %.sroa.0.0.i491 = phi i64 [ %i.kb, %bb.cm ], [ %i.ib, %.lr.ph493 ]
  %.sroa.03.0.i490 = phi i64 [ %i.ju, %bb.cm ], [ 0, %.lr.ph493 ]
  %i.jt = load i64, ptr %i.ix, align 8, !noalias !3514, !noundef !5 ; 2 uses
  %i.ju = load i64, ptr %i.iy, align 8, !noalias !3514, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3515
  store i64 %i.ib, ptr %i.f, align 8, !noalias !3515
  store i64 %i.ju, ptr %i.iz, align 8, !noalias !3515
  %.not.i95 = icmp ugt i64 %i.ju, %i.ih
  %i.jv = add i64 %i.ju, 1
  %.not8.i96 = icmp ugt i64 %i.ib, %i.jv
  %or.cond.i97 = or i1 %.not8.i96, %.not.i95
  br i1 %or.cond.i97, label %.split496.us, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit100, !prof !6

.split496.us:                                     ; preds = %.lr.ph493.split, %.lr.ph493.split.us.split, %.lr.ph493.split.us.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3515
  store i64 %i.ih, ptr %i.e, align 8, !noalias !3515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3515
  store ptr %i.f, ptr %i.d, align 8, !noalias !3515
  %.sroa.42.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i98, align 8, !noalias !3515
  %i.jw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.jw, align 8, !noalias !3515
  %.sroa.46.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i99, align 8, !noalias !3515
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !3515
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit100: ; preds = %.lr.ph493.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3515
  store i32 1, ptr %i.ap, align 8, !noalias !3514
  store i64 %i.iw, ptr %.sroa.4135.sroa.3.0..sroa.4135.0..sroa_idx.sroa_idx, align 8, !noalias !3514
  store i64 %i.ih, ptr %.sroa.5136.0..sroa_idx, align 8, !noalias !3514
  store i64 %i.ib, ptr %.sroa.6137.0..sroa_idx, align 8, !noalias !3514
  store i64 %i.ju, ptr %.sroa.7138.0..sroa_idx, align 8, !noalias !3514
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.8139.0..sroa_idx, align 8, !noalias !3514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3514
  call void @llvm.experimental.noalias.scope.decl(metadata !3516)
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited23dfa_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.jc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap, i64 noundef %.sroa.03.0.i490), !noalias !3519
  %i.jx = load i64, ptr %i.ao, align 8, !range !11, !noalias !3514, !noundef !5 ; 2 uses
  %i.jy = icmp eq i64 %i.jx, 2
  br i1 %i.jy, label %.split503.us, label %bb.cj

.split501.us:                                     ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit100.us
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #23, !noalias !3517
  unreachable

._crit_edge494:                                   ; preds = %bb.cm, %bb.ci, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3514
  br label %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix21try_search_half_start.exit.thread

bb.cj:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit100
  %.sroa.422.0.copyload.i = load i64, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !3514
  %.sroa.523.0.copyload.i = load i64, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !3514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3514
  %i.jz = trunc nuw i64 %i.jx to i1
  br i1 %i.jz, label %.split505.us, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.not.i = icmp ult i64 %.sroa.0.0.i491, %i.id
  br i1 %.not.i, label %bb.cl, label %.split511.us

bb.cl:                                            ; preds = %bb.ck
  %i.ka = icmp eq i64 %i.jt, -1
  br i1 %i.ka, label %.split513.us, label %bb.cm, !prof !20

.split511.us:                                     ; preds = %bb.ck, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3514
  br label %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix21try_search_half_start.exit.thread

bb.cm:                                            ; preds = %bb.cl
end_hunk_7
begin_hunk_8_@_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy12search_slots:bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #23, !noalias !3556
  unreachable

bb.dt:                                            ; preds = %bb.dr
  %i.nb = load ptr, ptr %i.na, align 8, !noalias !3554, !nonnull !5, !align !24, !noundef !5
  %i.nc = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.nb), !noalias !3555
  br label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i

bb.du:                                            ; preds = %bb.dr
  %.sroa.4174.0.copyload = load i64, ptr %i.na, align 8, !noalias !3554
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5175.0.copyload = load i64, ptr %.sroa.5175.0..sroa_idx, align 8, !noalias !3554
  %.sroa.6176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.6176.0.copyload = load i32, ptr %.sroa.6176.0..sroa_idx, align 8, !noalias !3554
  br label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i

_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i: ; preds = %bb.du, %bb.dt
  %.sroa.8171.0 = phi i32 [ undef, %bb.dt ], [ %.sroa.6176.0.copyload, %bb.du ]
  %.sroa.7170.0 = phi i64 [ undef, %bb.dt ], [ %.sroa.5175.0.copyload, %bb.du ]
  %.sroa.5169.0 = phi i64 [ %i.nc, %bb.dt ], [ %.sroa.4174.0.copyload, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3554
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i

bb.dv:                                            ; preds = %bb.do
  %i.nd = load ptr, ptr %i.mv, align 8, !noalias !3547, !nonnull !5, !align !24, !noundef !5
  %i.ne = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.nd), !noalias !3548
  br label %bb.dx

bb.dw:                                            ; preds = %bb.do
  %.sroa.4.0.copyload.i.i = load i64, ptr %i.mv, align 8, !noalias !3547
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.57.i.i.sroa.0.0.copyload = load i64, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !3547
  %.sroa.57.i.i.sroa.4.0..sroa.57.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.57.i.i.sroa.4.0.copyload = load i32, ptr %.sroa.57.i.i.sroa.4.0..sroa.57.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !3547
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.sroa.6.i.i.sroa.4.0 = phi i32 [ undef, %bb.dv ], [ %.sroa.57.i.i.sroa.4.0.copyload, %bb.dw ]
  %.sroa.6.i.i.sroa.0.0 = phi i64 [ undef, %bb.dv ], [ %.sroa.57.i.i.sroa.0.0.copyload, %bb.dw ]
  %.sroa.5.0.i.i = phi i64 [ %i.ne, %bb.dv ], [ %.sroa.4.0.copyload.i.i, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3547
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i: ; preds = %bb.dx, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i
  %.sroa.9156.sroa.6.0 = phi i32 [ %.sroa.6.i.i.sroa.4.0, %bb.dx ], [ %.sroa.8171.0, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i ]
  %.sroa.9156.sroa.0.0 = phi i64 [ %.sroa.6.i.i.sroa.0.0, %bb.dx ], [ %.sroa.7170.0, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i ]
  %.sroa.7155.0 = phi i64 [ %.sroa.5.0.i.i, %bb.dx ], [ %.sroa.5169.0, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i ]
  %.sroa.0154.0 = phi i64 [ %i.mt, %bb.dx ], [ %i.my, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i ]
  switch i64 %.sroa.0154.0, label %bb.dz [
    i64 0, label %bb.dy
    i64 2, label %.sink.split639
  ]

.sink.split639:                                   ; preds = %bb.dp, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i
  %i.nf = call { i32, i32 } @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core19search_slots_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4) ; 2 uses
  %i.ng = extractvalue { i32, i32 } %i.nf, 0
  %i.nh = extractvalue { i32, i32 } %i.nf, 1
  br label %bb.dy

bb.dy:                                            ; preds = %.sink.split639, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i
  %.sroa.9.2.i = phi i32 [ undef, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i ], [ %i.nh, %.sink.split639 ]
  %.sroa.0.2.i = phi i32 [ 0, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i ], [ %i.ng, %.sink.split639 ]
  %i.ni = insertvalue { i32, i32 } poison, i32 %.sroa.0.2.i, 0
  %i.nj = insertvalue { i32, i32 } %i.ni, i32 %.sroa.9.2.i, 1
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit

bb.dz:                                            ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !3527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !3527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false), !alias.scope !3557, !noalias !3526
  call fastcc void @_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input4spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.al, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ak, i64 noundef %.sroa.7155.0, i64 noundef %.sroa.9156.sroa.0.0), !noalias !3526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3527
  call void @llvm.experimental.noalias.scope.decl(metadata !3558)
  store i32 2, ptr %i.al, align 8, !alias.scope !3559, !noalias !3560
  %i.nk = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %.sroa.9156.sroa.6.0, ptr %i.nk, align 4, !alias.scope !3559, !noalias !3560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %i.al, i64 48, i1 false), !alias.scope !3561, !noalias !3526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !3527
  %i.nl = call { i32, i32 } @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core19search_slots_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4) ; 2 uses
  %i.nm = extractvalue { i32, i32 } %i.nl, 0
  %i.nn = trunc i32 %i.nm to i1
  br i1 %i.nn, label %bb.ea, label %bb.eb, !prof !19

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3527
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit

bb.eb:                                            ; preds = %bb.dz
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #23
  unreachable

_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy19copy_match_to_slots.exit.i, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit.i, %bb.dy, %bb.ea
  %.merged.i = phi { i32, i32 } [ %i.mr, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit.i ], [ %i.nj, %bb.dy ], [ %i.nl, %bb.ea ], [ %i.mq, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy19copy_match_to_slots.exit.i ] ; 2 uses
  %i.no = extractvalue { i32, i32 } %.merged.i, 0
  %i.np = extractvalue { i32, i32 } %.merged.i, 1
  br label %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix21try_search_half_start.exit.thread
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy14is_accelerated(ptr noalias noundef readonly align 16 captures(none) dereferenceable(3616) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3608
  %i.b = load i8, ptr %i.a, align 8, !range !21, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy25which_overlapping_matches(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3616) %0, ptr noalias noundef align 8 dereferenceable(1400) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef align 8 dereferenceable(24) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.b = load i64, ptr %i.a, align 16, !range !11, !alias.scope !3567, !noalias !3568, !noundef !5
  %.not.i = icmp eq i64 %i.b, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.d = tail call fastcc noundef align 8 ptr @_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton29try_which_overlapping_matchesB9_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef align 8 dereferenceable(24) %3), !noalias !3569 ; 2 uses
  %.not8.i = icmp eq ptr %i.d, null
  br i1 %.not8.i, label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy25which_overlapping_matches.exit, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load i128, ptr %0, align 16, !range !12, !alias.scope !3567, !noalias !3568, !noundef !5
  %.not7.i = icmp eq i128 %i.e, 2
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc i64 @_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine29try_which_overlapping_matches(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef align 8 dereferenceable(1400) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef align 8 dereferenceable(24) %3)
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.e, label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy25which_overlapping_matches.exit

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 2 uses
  %i.j = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_11PikeVMCache3get(ptr noalias noundef nonnull align 8 dereferenceable(216) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i)
  tail call void @_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM21which_overlapping_imp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(216) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy25which_overlapping_matches.exit

bb.f:                                             ; preds = %bb.b
  %i.k = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.d), !noalias !3569 ; 0 uses
  br label %bb.e

_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy25which_overlapping_matches.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy4name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias readonly align 16 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @115, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 14, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy6search(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3616) %1, ptr noalias noundef align 8 dereferenceable(1400) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 11 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  %i.p = alloca [48 x i8], align 8                ; 18 uses
  %i.q = alloca [24 x i8], align 8                ; 15 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 13 uses
  %.val = load i32, ptr %3, align 8, !range !16, !noundef !5
  %.not = icmp eq i32 %.val, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3645)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3645, !noalias !3646, !noundef !5 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3645, !noalias !3646, !noundef !5 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !3645, !noalias !3646, !nonnull !5, !noundef !5 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !3645, !noalias !3646, !noundef !5 ; 13 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 3584
  %i.ac = load ptr, ptr %i.ab, align 16, !alias.scope !3644, !noalias !3647, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 3592
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !3644, !noalias !3647, !nonnull !5, !align !24, !noundef !5 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !27, !invariant.load !5, !noalias !3648
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = and i64 %i.ah, -16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !5, !noalias !3648, !nonnull !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3649
  call void %i.am(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa, i64 noundef %i.u, i64 noundef %i.w), !noalias !3648, !inline_history !0
  %i.an = load i64, ptr %i.q, align 8, !range !8, !noalias !3649, !noundef !5
  %i.ao = trunc nuw i64 %i.an to i1
  %i.ap = ptrtoint ptr %i.y to i64                ; 4 uses
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %.sroa.6.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.6.i.sroa.7.0.copyload = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx, align 8, !noalias !3646 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.sroa.482.sroa.3.0..sroa.482.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  %.sroa.886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2704
  %i.au = load i64, ptr %i.at, align 16, !range !11
  %.fr = freeze i64 %i.au                         ; 3 uses
  %.not.i2 = icmp eq i64 %.fr, 2
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 2240
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 352
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %.not.i2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ay = load i128, ptr %1, align 16, !range !12
  %.fr197 = freeze i128 %i.ay
  %.not2.i3 = icmp eq i128 %.fr197, 2
  br i1 %.not2.i3, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split, !prof !20

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.az = load i64, ptr %i.ar, align 8, !noalias !3649, !noundef !5 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3650
  store i64 %i.u, ptr %i.i, align 8, !noalias !3650
  store i64 %i.az, ptr %i.as, align 8, !noalias !3650
  %.not.i23.us.us = icmp ugt i64 %i.az, %i.aa
  %i.ba = add i64 %i.az, 1
  %.not8.i.us.us = icmp ugt i64 %i.u, %i.ba
  %or.cond.i.us.us = or i1 %.not8.i.us.us, %.not.i23.us.us
  br i1 %or.cond.i.us.us, label %.split.us, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us.us, !prof !6

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us.us: ; preds = %.lr.ph.split.us.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3650
  store i32 1, ptr %i.p, align 8, !noalias !3649
  store i64 %i.ap, ptr %.sroa.482.sroa.3.0..sroa.482.0..sroa_idx.sroa_idx, align 8, !noalias !3649
  store i64 %i.aa, ptr %.sroa.583.0..sroa_idx, align 8, !noalias !3649
  store i64 %i.u, ptr %.sroa.684.0..sroa_idx, align 8, !noalias !3649
  store i64 %i.az, ptr %.sroa.785.0..sroa_idx, align 8, !noalias !3649
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.886.0..sroa_idx, align 8, !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3649
  call void @llvm.experimental.noalias.scope.decl(metadata !3651)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @52, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #23, !noalias !3652
  unreachable

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.f
  %.sroa.0.0.i179.us = phi i64 [ %i.bj, %bb.f ], [ %i.u, %.lr.ph.split.us ]
  %.sroa.03.0.i178.us = phi i64 [ %i.bc, %bb.f ], [ 0, %.lr.ph.split.us ]
  %i.bb = load i64, ptr %i.aq, align 8, !noalias !3649, !noundef !5 ; 2 uses
  %i.bc = load i64, ptr %i.ar, align 8, !noalias !3649, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3650
  store i64 %i.u, ptr %i.i, align 8, !noalias !3650
  store i64 %i.bc, ptr %i.as, align 8, !noalias !3650
  %.not.i23.us = icmp ugt i64 %i.bc, %i.aa
  %i.bd = add i64 %i.bc, 1
  %.not8.i.us = icmp ugt i64 %i.u, %i.bd
  %or.cond.i.us = or i1 %.not8.i.us, %.not.i23.us
  br i1 %or.cond.i.us, label %.split.us, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us, !prof !6

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us: ; preds = %.lr.ph.split.us.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3650
  store i32 1, ptr %i.p, align 8, !noalias !3649
  store i64 %i.ap, ptr %.sroa.482.sroa.3.0..sroa.482.0..sroa_idx.sroa_idx, align 8, !noalias !3649
  store i64 %i.aa, ptr %.sroa.583.0..sroa_idx, align 8, !noalias !3649
  store i64 %i.u, ptr %.sroa.684.0..sroa_idx, align 8, !noalias !3649
  store i64 %i.bc, ptr %.sroa.785.0..sroa_idx, align 8, !noalias !3649
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.886.0..sroa_idx, align 8, !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3649
  call void @llvm.experimental.noalias.scope.decl(metadata !3651)
  %i.be = load i64, ptr %2, align 8, !range !11, !alias.scope !3651, !noalias !3653, !noundef !5
  %.not3.i.us = icmp eq i64 %i.be, 2
  br i1 %.not3.i.us, label %.split183.us, label %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix27try_search_half_rev_limited.exit.us, !prof !20

_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix27try_search_half_rev_limited.exit.us: ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited26hybrid_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(352) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, i64 noundef %.sroa.03.0.i178.us), !noalias !3648
  %i.bf = load i64, ptr %i.o, align 8, !range !11, !noalias !3649, !noundef !5 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 2
  br i1 %i.bg, label %.split185.us, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix27try_search_half_rev_limited.exit.us
  %.sroa.422.0.copyload.i.us = load i64, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !3649
  %.sroa.523.0.copyload.i.us = load i64, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3649
  %i.bh = trunc nuw i64 %i.bf to i1
  br i1 %i.bh, label %.split187.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i1.us = icmp ult i64 %.sroa.0.0.i179.us, %i.w
  br i1 %.not.i1.us, label %bb.e, label %.split193.us

bb.e:                                             ; preds = %bb.d
  %i.bi = icmp eq i64 %i.bb, -1
  br i1 %i.bi, label %.split195.us, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.bj = add nuw i64 %i.bb, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3649
  call void %i.am(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa, i64 noundef %i.bj, i64 noundef %i.w), !noalias !3648, !inline_history !0
  %i.bk = load i64, ptr %i.q, align 8, !range !8, !noalias !3649, !noundef !5
  %i.bl = trunc nuw i64 %i.bk to i1
  br i1 %i.bl, label %.lr.ph.split.us.split, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.sroa.0.0.i179 = phi i64 [ %i.bu, %bb.j ], [ %i.u, %.lr.ph ]
  %.sroa.03.0.i178 = phi i64 [ %i.bn, %bb.j ], [ 0, %.lr.ph ]
  %i.bm = load i64, ptr %i.aq, align 8, !noalias !3649, !noundef !5 ; 2 uses
  %i.bn = load i64, ptr %i.ar, align 8, !noalias !3649, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3650
  store i64 %i.u, ptr %i.i, align 8, !noalias !3650
  store i64 %i.bn, ptr %i.as, align 8, !noalias !3650
  %.not.i23 = icmp ugt i64 %i.bn, %i.aa
  %i.bo = add i64 %i.bn, 1
  %.not8.i = icmp ugt i64 %i.u, %i.bo
  %or.cond.i = or i1 %.not8.i, %.not.i23
  br i1 %or.cond.i, label %.split.us, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit, !prof !6

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3650
  store i64 %i.aa, ptr %i.h, align 8, !noalias !3650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3650
  store ptr %i.i, ptr %i.g, align 8, !noalias !3650
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3650
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.bp, align 8, !noalias !3650
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !3650
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !3650
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit: ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3650
  store i32 1, ptr %i.p, align 8, !noalias !3649
  store i64 %i.ap, ptr %.sroa.482.sroa.3.0..sroa.482.0..sroa_idx.sroa_idx, align 8, !noalias !3649
  store i64 %i.aa, ptr %.sroa.583.0..sroa_idx, align 8, !noalias !3649
  store i64 %i.u, ptr %.sroa.684.0..sroa_idx, align 8, !noalias !3649
  store i64 %i.bn, ptr %.sroa.785.0..sroa_idx, align 8, !noalias !3649
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.886.0..sroa_idx, align 8, !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3649
  call void @llvm.experimental.noalias.scope.decl(metadata !3651)
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited23dfa_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, i64 noundef %.sroa.03.0.i178), !noalias !3654
  %i.bq = load i64, ptr %i.o, align 8, !range !11, !noalias !3649, !noundef !5 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 2
  br i1 %i.br, label %.split185.us, label %bb.g

.split183.us:                                     ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #23, !noalias !3652
  unreachable

._crit_edge:                                      ; preds = %bb.j, %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3649
  br label %bb.ao

bb.g:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  %.sroa.422.0.copyload.i = load i64, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !3649
  %.sroa.523.0.copyload.i = load i64, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3649
  %i.bs = trunc nuw i64 %i.bq to i1
  br i1 %i.bs, label %.split187.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i1 = icmp ult i64 %.sroa.0.0.i179, %i.w
  br i1 %.not.i1, label %bb.i, label %.split193.us

bb.i:                                             ; preds = %bb.h
  %i.bt = icmp eq i64 %i.bm, -1
  br i1 %i.bt, label %.split195.us, label %bb.j, !prof !20

.split193.us:                                     ; preds = %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3649
  br label %bb.ao

bb.j:                                             ; preds = %bb.i
end_hunk_8
begin_hunk_9_@_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy6search:bb.a
  %i.ea = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.dz), !noalias !3681
  br label %bb.an

bb.am:                                            ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit
  %i.eb = phi i64 [ %.ph, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread ], [ %.pr, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit ]
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.478.0.copyload = load i64, ptr %.sroa.478.0..sroa_idx, align 8, !noalias !3673
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.762.0 = phi i64 [ %i.ea, %bb.al ], [ %.sroa.478.0.copyload, %bb.am ]
  %.sroa.060.0 = phi i64 [ 2, %bb.al ], [ %i.eb, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3673
  br label %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix19try_search_half_fwd.exit

_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix19try_search_half_fwd.exit: ; preds = %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_fwd.exit, %bb.an
  %.sroa.762.1 = phi i64 [ %.sroa.762.2, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_fwd.exit ], [ %.sroa.762.0, %bb.an ] ; 2 uses
  %.sroa.060.1 = phi i64 [ %.sroa.060.2, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_fwd.exit ], [ %.sroa.060.0, %bb.an ]
  switch i64 %.sroa.060.1, label %bb.aq [
    i64 2, label %bb.ap
    i64 0, label %bb.as
  ], !prof !29

bb.ao:                                            ; preds = %.split193.us, %._crit_edge
  store i64 0, ptr %0, align 8
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

bb.ap:                                            ; preds = %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix19try_search_half_fwd.exit
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %bb.at

bb.aq:                                            ; preds = %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix19try_search_half_fwd.exit
  %.not.i33 = icmp ugt i64 %.us-phi188, %.sroa.762.1
  br i1 %.not.i33, label %bb.ar, label %_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit, !prof !20

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !3693
  unreachable

_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit: ; preds = %bb.aq
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi188, ptr %i.ec, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.762.1, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.10.16.extract.trunc, ptr %.sroa.575.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.at

bb.as:                                            ; preds = %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix19try_search_half_fwd.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull inttoptr (i64 207 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #23
  unreachable

bb.at:                                            ; preds = %_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

bb.au:                                            ; preds = %.split185.us
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

bb.av:                                            ; preds = %.split185.us
  call void @llvm.experimental.noalias.scope.decl(metadata !3694)
  call void @llvm.experimental.noalias.scope.decl(metadata !3695)
  %.not.i6.i = icmp eq i64 %.fr, 2
  br i1 %.not.i6.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3696
  call fastcc void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa5regexNtB5_5Regex10try_searchB9_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1600) %i.ed, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !3697
  %i.ee = load i64, ptr %i.l, align 8, !range !11, !noalias !3696, !noundef !5 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 2
  %i.eg = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.ef, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.eh = load i128, ptr %1, align 16, !range !12, !alias.scope !3698, !noalias !3699, !noundef !5
  %.not.i.i = icmp eq i128 %i.eh, 2
  br i1 %.not.i.i, label %bb.bd, label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %i.ei = load ptr, ptr %i.eg, align 8, !noalias !3696, !nonnull !5, !align !24, !noundef !5
  %i.ej = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.ei), !noalias !3697 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3696
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

bb.az:                                            ; preds = %bb.aw
  %.sroa.4110.0.copyload = load i64, ptr %i.eg, align 8, !noalias !3696
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.797.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.797.0..sroa_idx98, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5111.0..sroa_idx, i64 16, i1 false), !noalias !3700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3696
  store i64 %i.ee, ptr %0, align 8, !noalias !3700
  %.sroa.694.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4110.0.copyload, ptr %.sroa.694.0..sroa_idx95, align 8, !noalias !3700
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !3701)
  %i.ek = load i64, ptr %2, align 8, !range !11, !alias.scope !3702, !noalias !3703, !noundef !5
  %.not.i5.i = icmp eq i64 %i.ek, 2
  br i1 %.not.i5.i, label %bb.bc, label %bb.bb, !prof !20

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3704
  call fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata6hybrid5regexNtB5_5Regex10try_search(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !3705
  %i.el = load i64, ptr %i.m, align 8, !range !11, !noalias !3704, !noundef !5 ; 2 uses
  %i.em = icmp eq i64 %i.el, 2
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br i1 %i.em, label %bb.be, label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #23, !noalias !3704
  unreachable

bb.bd:                                            ; preds = %bb.ax
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

bb.be:                                            ; preds = %bb.bb
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !3704, !nonnull !5, !align !24, !noundef !5
  %i.ep = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.eo), !noalias !3705 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3704
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

bb.bf:                                            ; preds = %bb.bb
  %.sroa.4107.0.copyload = load i64, ptr %i.en, align 8, !noalias !3704
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.7104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7104.0..sroa_idx105, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5108.0..sroa_idx, i64 16, i1 false), !noalias !3700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3704
  store i64 %i.el, ptr %0, align 8, !noalias !3700
  %.sroa.6101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4107.0.copyload, ptr %.sroa.6101.0..sroa_idx102, align 8, !noalias !3700
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14: ; preds = %bb.be, %bb.bf, %bb.ay, %bb.az, %bb.t, %bb.u, %bb.n, %bb.o, %bb.bd, %bb.ao, %bb.at, %bb.au, %bb.s
  ret void
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffixNtB5_8Strategy8is_match(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3616) %0, ptr noalias noundef align 8 dereferenceable(1400) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [48 x i8], align 8                ; 18 uses
  %i.k = alloca [24 x i8], align 8                ; 15 uses
  %i.l = load i32, ptr %2, align 8, !range !16, !noundef !5
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3739)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.o = load i64, ptr %i.n, align 16, !range !11, !alias.scope !3738, !noalias !3740, !noundef !5
  %.not.i2 = icmp eq i64 %i.o, 2
  br i1 %.not.i2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3742)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.p, ptr %i.f, align 8, !noalias !3743
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %i.r = load i8, ptr %i.q, align 8, !range !21, !alias.scope !3744, !noalias !3745, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2233
  %i.t = load i8, ptr %i.s, align 1, !range !21, !alias.scope !3742, !noalias !3745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3743
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_fwdRINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !3746
  %i.u = load i64, ptr %i.e, align 8, !range !11, !noalias !3743, !noundef !5 ; 3 uses
  %i.v = icmp eq i64 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !3743 ; 2 uses
  br i1 %i.v, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread22, label %bb.d

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread22: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.y = trunc nuw i8 %i.r to i1
  %i.z = trunc nuw i8 %i.t to i1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3743
  %i.aa = trunc nuw i64 %i.u to i1
  %i.ab = and i1 %i.aa, %i.y
  %i.ac = select i1 %i.ab, i1 %i.z, i1 false, !prof !28
  br i1 %i.ac, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread, !prof !26

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.o

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit: ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.x to i64                ; 2 uses
  %.sroa.69.16.extract.trunc11.i = trunc i64 %.sroa.5.0.copyload.i to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB1A_9automaton9Automaton14try_search_fwd0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef %i.ad, i32 noundef %.sroa.69.16.extract.trunc11.i, i64 noundef %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f), !noalias !3739
  %.pr = load i64, ptr %i.h, align 8, !noalias !3741 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ae = icmp eq i64 %.pr, 2
  br i1 %i.ae, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge, label %bb.o

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !3741
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.af = load i128, ptr %0, align 16, !range !12, !alias.scope !3738, !noalias !3740, !noundef !5
  %.not16.i = icmp eq i128 %i.af, 2
  br i1 %.not16.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3747)
  %i.ag = load i64, ptr %1, align 8, !range !11, !alias.scope !3748, !noalias !3749, !noundef !5
  %.not.i.i = icmp eq i64 %i.ag, 2
  br i1 %.not.i.i, label %bb.k, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3750
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3751)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ai = load ptr, ptr %i.ah, align 16, !alias.scope !3751, !noalias !3752, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 386
  %i.ak = load i8, ptr %i.aj, align 2, !range !21, !noalias !3753, !noundef !5
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 387
  %i.an = load i8, ptr %i.am, align 1, !range !21, !noalias !3753, !noundef !5
  %i.ao = trunc nuw i8 %i.an to i1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i5.not = phi i1 [ %i.ao, %bb.h ], [ false, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3753
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata6hybrid6search8find_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !3754
  %i.ap = load i64, ptr %i.d, align 8, !range !11, !noalias !3753, !noundef !5 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !3753 ; 2 uses
  br i1 %i.aq, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread25, label %bb.j

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread25: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3753
  br label %bb.m

bb.j:                                             ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload.i7 = load i64, ptr %.sroa.5.0..sroa_idx.i6, align 8, !noalias !3753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3753
  %i.at = trunc nuw i64 %i.ap to i1
  %brmerge80.not = select i1 %i.at, i1 %.sroa.0.0.i5.not, i1 false
  br i1 %brmerge80.not, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread, !prof !26

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit: ; preds = %bb.j
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %.sroa.69.16.extract.trunc11.i10 = trunc i64 %.sroa.5.0.copyload.i7 to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvMs_NtNtB6_6hybrid3dfaNtB1x_3DFA14try_search_fwd0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef %i.au, i32 noundef %.sroa.69.16.extract.trunc11.i10, i64 noundef %i.au, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1), !noalias !3755
  %.pr23 = load i64, ptr %i.g, align 8, !noalias !3750 ; 2 uses
  %i.av = icmp eq i64 %.pr23, 2
  br i1 %i.av, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre58 = load ptr, ptr %.phi.trans.insert57, align 8, !noalias !3750
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #23, !noalias !3750
  unreachable

bb.l:                                             ; preds = %bb.e
  %i.aw = tail call noundef zeroext i1 @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core15is_match_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.m:                                             ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread25
  %i.ax = phi ptr [ %.pre58, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge ], [ %i.as, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread25 ]
  %i.ay = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.ax), !noalias !3755 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3750
  %i.az = call noundef zeroext i1 @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core15is_match_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread: ; preds = %bb.j, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %i.ba = phi i64 [ %.pr23, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit ], [ %i.ap, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3750
  %i.bb = icmp eq i64 %i.ba, 1
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.n:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread22
  %i.bc = phi ptr [ %.pre, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge ], [ %i.x, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread22 ]
  %i.bd = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.bc), !noalias !3739 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3741
  %i.be = call noundef zeroext i1 @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core15is_match_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.o:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit
  %i.bf = phi i64 [ %i.u, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread ], [ %.pr, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3741
  %i.bg = icmp eq i64 %i.bf, 1
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3757)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !3757, !noalias !3758, !noundef !5 ; 12 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !3757, !noalias !3758, !noundef !5 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !3757, !noalias !3758, !nonnull !5, !noundef !5 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !3757, !noalias !3758, !noundef !5 ; 10 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.bq = load ptr, ptr %i.bp, align 16, !alias.scope !3756, !noalias !3759, !nonnull !5, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !3756, !noalias !3759, !nonnull !5, !align !24, !noundef !5 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !range !27, !invariant.load !5, !noalias !3760
  %i.bv = add nsw i64 %i.bu, -1
  %i.bw = and i64 %i.bv, -16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !invariant.load !5, !noalias !3760, !nonnull !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3761
  call void %i.ca(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %i.by, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.bo, i64 noundef %i.bi, i64 noundef %i.bk), !noalias !3760, !inline_history !0
  %i.cb = load i64, ptr %i.k, align 8, !range !8, !noalias !3761, !noundef !5
  %i.cc = trunc nuw i64 %i.cb to i1
  %i.cd = ptrtoint ptr %i.bm to i64               ; 3 uses
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %.sroa.6.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6.i.sroa.7.0.copyload = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx, align 8, !noalias !3758 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.ci = load i64, ptr %i.ch, align 16, !range !11
  %.fr = freeze i64 %i.ci
  %.not.i1 = icmp eq i64 %.fr, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 352
  br i1 %.not.i1, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.cm = load i128, ptr %0, align 16, !range !12
  %.fr50 = freeze i128 %i.cm
  %.not2.i = icmp eq i128 %.fr50, 2
  br i1 %.not2.i, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split, !prof !20

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.cn = load i64, ptr %i.cf, align 8, !noalias !3761, !noundef !5 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3762
  store i64 %i.bi, ptr %i.c, align 8, !noalias !3762
  store i64 %i.cn, ptr %i.cg, align 8, !noalias !3762
  %.not.i11.us.us = icmp ugt i64 %i.cn, %i.bo
  %i.co = add i64 %i.cn, 1
  %.not8.i.us.us = icmp ugt i64 %i.bi, %i.co
  %or.cond.i.us.us = or i1 %.not8.i.us.us, %.not.i11.us.us
  br i1 %or.cond.i.us.us, label %.split.us, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us.us, !prof !6

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us.us: ; preds = %.lr.ph.split.us.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3762
  store i32 1, ptr %i.j, align 8, !noalias !3761
  store i64 %i.cd, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !noalias !3761
  store i64 %i.bo, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !3761
  store i64 %i.bi, ptr %.sroa.613.0..sroa_idx, align 8, !noalias !3761
  store i64 %i.cn, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3761
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.814.0..sroa_idx, align 8, !noalias !3761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3761
  call void @llvm.experimental.noalias.scope.decl(metadata !3763)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @52, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #23, !noalias !3764
  unreachable

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.t
  %.sroa.0.0.i38.us = phi i64 [ %i.cx, %bb.t ], [ %i.bi, %.lr.ph.split.us ]
  %.sroa.03.0.i37.us = phi i64 [ %i.cq, %bb.t ], [ 0, %.lr.ph.split.us ]
  %i.cp = load i64, ptr %i.ce, align 8, !noalias !3761, !noundef !5 ; 2 uses
  %i.cq = load i64, ptr %i.cf, align 8, !noalias !3761, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3762
  store i64 %i.bi, ptr %i.c, align 8, !noalias !3762
  store i64 %i.cq, ptr %i.cg, align 8, !noalias !3762
  %.not.i11.us = icmp ugt i64 %i.cq, %i.bo
  %i.cr = add i64 %i.cq, 1
  %.not8.i.us = icmp ugt i64 %i.bi, %i.cr
  %or.cond.i.us = or i1 %.not8.i.us, %.not.i11.us
  br i1 %or.cond.i.us, label %.split.us, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us, !prof !6

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us: ; preds = %.lr.ph.split.us.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3762
  store i32 1, ptr %i.j, align 8, !noalias !3761
  store i64 %i.cd, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !noalias !3761
  store i64 %i.bo, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !3761
  store i64 %i.bi, ptr %.sroa.613.0..sroa_idx, align 8, !noalias !3761
  store i64 %i.cq, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3761
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.814.0..sroa_idx, align 8, !noalias !3761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3761
  call void @llvm.experimental.noalias.scope.decl(metadata !3763)
  %i.cs = load i64, ptr %1, align 8, !range !11, !alias.scope !3763, !noalias !3765, !noundef !5
  %.not3.i.us = icmp eq i64 %i.cs, 2
  br i1 %.not3.i.us, label %.split42.us, label %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix27try_search_half_rev_limited.exit.us, !prof !20

_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix27try_search_half_rev_limited.exit.us: ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited26hybrid_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.ck, ptr noalias noundef nonnull align 8 dereferenceable(352) %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, i64 noundef %.sroa.03.0.i37.us), !noalias !3760
  %i.ct = load i64, ptr %i.i, align 8, !range !11, !noalias !3761, !noundef !5 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 2
  br i1 %i.cu, label %.split44.us, label %bb.q

bb.q:                                             ; preds = %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix27try_search_half_rev_limited.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3761
  %i.cv = trunc nuw i64 %i.ct to i1
  br i1 %i.cv, label %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix21try_search_half_start.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i.us = icmp ult i64 %.sroa.0.0.i38.us, %i.bk
  br i1 %.not.i.us, label %bb.s, label %.split46.us

bb.s:                                             ; preds = %bb.r
  %i.cw = icmp eq i64 %i.cp, -1
  br i1 %i.cw, label %.split48.us, label %bb.t, !prof !20

bb.t:                                             ; preds = %bb.s
  %i.cx = add nuw i64 %i.cp, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3761
  call void %i.ca(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %i.by, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.bo, i64 noundef %i.cx, i64 noundef %i.bk), !noalias !3760, !inline_history !0
  %i.cy = load i64, ptr %i.k, align 8, !range !8, !noalias !3761, !noundef !5
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.split.us.split, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.x
  %.sroa.0.0.i38 = phi i64 [ %i.di, %bb.x ], [ %i.bi, %.lr.ph ]
  %.sroa.03.0.i37 = phi i64 [ %i.db, %bb.x ], [ 0, %.lr.ph ]
  %i.da = load i64, ptr %i.ce, align 8, !noalias !3761, !noundef !5 ; 2 uses
  %i.db = load i64, ptr %i.cf, align 8, !noalias !3761, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3762
  store i64 %i.bi, ptr %i.c, align 8, !noalias !3762
  store i64 %i.db, ptr %i.cg, align 8, !noalias !3762
  %.not.i11 = icmp ugt i64 %i.db, %i.bo
  %i.dc = add i64 %i.db, 1
  %.not8.i = icmp ugt i64 %i.bi, %i.dc
  %or.cond.i = or i1 %.not8.i, %.not.i11
  br i1 %or.cond.i, label %.split.us, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit, !prof !6

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3762
  store i64 %i.bo, ptr %i.b, align 8, !noalias !3762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3762
  store ptr %i.c, ptr %i.a, align 8, !noalias !3762
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3762
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dd, align 8, !noalias !3762
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !3762
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !3762
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit: ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3762
  store i32 1, ptr %i.j, align 8, !noalias !3761
  store i64 %i.cd, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !noalias !3761
  store i64 %i.bo, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !3761
  store i64 %i.bi, ptr %.sroa.613.0..sroa_idx, align 8, !noalias !3761
  store i64 %i.db, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3761
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.814.0..sroa_idx, align 8, !noalias !3761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3761
  call void @llvm.experimental.noalias.scope.decl(metadata !3763)
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited23dfa_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, i64 noundef %.sroa.03.0.i37), !noalias !3766
  %i.de = load i64, ptr %i.i, align 8, !range !11, !noalias !3761, !noundef !5 ; 2 uses
  %i.df = icmp eq i64 %i.de, 2
  br i1 %i.df, label %.split44.us, label %bb.u

.split42.us:                                      ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit.us
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #23, !noalias !3764
  unreachable

._crit_edge:                                      ; preds = %bb.x, %bb.t, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3761
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.u:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3761
  %i.dg = trunc nuw i64 %i.de to i1
  br i1 %i.dg, label %_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_13ReverseSuffix21try_search_half_start.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i = icmp ult i64 %.sroa.0.0.i38, %i.bk
  br i1 %.not.i, label %bb.w, label %.split46.us

bb.w:                                             ; preds = %bb.v
  %i.dh = icmp eq i64 %i.da, -1
  br i1 %i.dh, label %.split48.us, label %bb.x, !prof !20

.split46.us:                                      ; preds = %bb.v, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3761
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.x:                                             ; preds = %bb.w
  %i.di = add nuw i64 %i.da, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3761
  call void %i.ca(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %i.by, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.bo, i64 noundef %i.di, i64 noundef %i.bk), !noalias !3760, !inline_history !0
  %i.dj = load i64, ptr %i.k, align 8, !range !8, !noalias !3761, !noundef !5
  %i.dk = trunc nuw i64 %i.dj to i1
end_hunk_9
begin_hunk_10_@_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy11search_half:bb.a
bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3873)
  %i.au = load i64, ptr %2, align 8, !range !11, !alias.scope !3874, !noalias !3875, !noundef !5
  %.not.i.i14 = icmp eq i64 %i.au, 2
  br i1 %.not.i.i14, label %bb.o, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3876
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3878)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.aw = load ptr, ptr %i.av, align 16, !alias.scope !3878, !noalias !3879, !nonnull !5, !noundef !5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 386
  %i.ay = load i8, ptr %i.ax, align 2, !range !21, !noalias !3880, !noundef !5
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 387
  %i.bb = load i8, ptr %i.ba, align 1, !range !21, !noalias !3880, !noundef !5
  %i.bc = trunc nuw i8 %i.bb to i1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i18 = phi i1 [ %i.bc, %bb.j ], [ false, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3880
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata6hybrid6search8find_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !3881
  %i.bd = load i64, ptr %i.p, align 8, !range !11, !noalias !3880, !noundef !5 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !3880 ; 2 uses
  br i1 %i.be, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread116, label %bb.l

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread116: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3880
  br label %bb.s

bb.l:                                             ; preds = %bb.k
  %.sroa.5.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5.0.copyload.i20 = load i64, ptr %.sroa.5.0..sroa_idx.i19, align 8, !noalias !3880 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3880
  %i.bh = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bi = trunc nuw i64 %i.bd to i1
  br i1 %i.bi, label %bb.m, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %.sroa.0.0.i18, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit, label %bb.n, !prof !20

bb.n:                                             ; preds = %bb.m
  %.sroa.3.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.bh, ptr %.sroa.3.0..sroa_idx.i21, align 8, !alias.scope !3877, !noalias !3882
  %.sroa.69.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.5.0.copyload.i20, ptr %.sroa.69.0..sroa_idx.i22, align 8, !alias.scope !3877, !noalias !3882
  br label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit: ; preds = %bb.m
  %.sroa.69.16.extract.trunc11.i23 = trunc i64 %.sroa.5.0.copyload.i20 to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvMs_NtNtB6_6hybrid3dfaNtB1x_3DFA14try_search_fwd0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, i64 noundef %i.bh, i32 noundef %.sroa.69.16.extract.trunc11.i23, i64 noundef %i.bh, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2), !noalias !3883
  %.pr114 = load i64, ptr %i.s, align 8, !noalias !3876 ; 2 uses
  %i.bj = icmp eq i64 %.pr114, 2
  br i1 %i.bj, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %.phi.trans.insert197 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.pre198 = load ptr, ptr %.phi.trans.insert197, align 8, !noalias !3876
  br label %bb.s

bb.o:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #23, !noalias !3876
  unreachable

bb.p:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3884)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3885
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !3884
  %i.bk = load i64, ptr %i.o, align 8, !range !8, !noalias !3885, !noundef !5
  %i.bl = trunc nuw i64 %i.bk to i1
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.42.0.copyload.i = load i64, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3885
  %.sroa.5.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.5.0.copyload.i25 = load i32, ptr %.sroa.5.0..sroa_idx.i24, align 8, !noalias !3885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3885
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.42.0.copyload.i, ptr %i.bm, align 8, !alias.scope !3884, !noalias !3886
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0.copyload.i25, ptr %i.bn, align 8, !alias.scope !3884, !noalias !3886
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3885
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit: ; preds = %bb.q, %bb.r
  %storemerge.i = phi i64 [ 0, %bb.r ], [ 1, %bb.q ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !3884, !noalias !3886
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit16

bb.s:                                             ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread116
  %i.bo = phi ptr [ %.pre198, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge ], [ %i.bg, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread116 ]
  %i.bp = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.bo), !noalias !3883 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3876
  call void @llvm.experimental.noalias.scope.decl(metadata !3887)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3888
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !3887
  %i.bq = load i64, ptr %i.n, align 8, !range !8, !noalias !3888, !noundef !5
  %i.br = trunc nuw i64 %i.bq to i1
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.42.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.42.0.copyload.i28 = load i64, ptr %.sroa.42.0..sroa_idx.i27, align 8, !noalias !3888
  %.sroa.5.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.5.0.copyload.i30 = load i32, ptr %.sroa.5.0..sroa_idx.i29, align 8, !noalias !3888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3888
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.42.0.copyload.i28, ptr %i.bs, align 8, !alias.scope !3887, !noalias !3889
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0.copyload.i30, ptr %i.bt, align 8, !alias.scope !3887, !noalias !3889
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit31

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3888
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit31

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit31: ; preds = %bb.t, %bb.u
  %storemerge.i26 = phi i64 [ 0, %bb.u ], [ 1, %bb.t ]
  store i64 %storemerge.i26, ptr %0, align 8, !alias.scope !3887, !noalias !3889
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit16

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread: ; preds = %bb.l, %bb.n, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %i.bu = phi i64 [ %.pr114, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit ], [ 1, %bb.n ], [ 0, %bb.l ]
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.6104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load <2 x i64>, ptr %.sroa.4111.0..sroa_idx, align 8, !noalias !3876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3876
  store i64 %i.bu, ptr %0, align 8, !noalias !3890
  store <2 x i64> %i.bv, ptr %.sroa.6104.0..sroa_idx105, align 8, !noalias !3890
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit16

bb.v:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread113
  %i.bw = phi ptr [ %.pre, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge ], [ %i.ap, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread113 ]
  %i.bx = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.bw), !noalias !3872 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3864
  call void @llvm.experimental.noalias.scope.decl(metadata !3891)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3892
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !3891
  %i.by = load i64, ptr %i.m, align 8, !range !8, !noalias !3892, !noundef !5
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.42.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.42.0.copyload.i34 = load i64, ptr %.sroa.42.0..sroa_idx.i33, align 8, !noalias !3892
  %.sroa.5.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.5.0.copyload.i36 = load i32, ptr %.sroa.5.0..sroa_idx.i35, align 8, !noalias !3892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3892
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.42.0.copyload.i34, ptr %i.ca, align 8, !alias.scope !3891, !noalias !3893
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0.copyload.i36, ptr %i.cb, align 8, !alias.scope !3891, !noalias !3893
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit37

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3892
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit37

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit37: ; preds = %bb.w, %bb.x
  %storemerge.i32 = phi i64 [ 0, %bb.x ], [ 1, %bb.w ]
  store i64 %storemerge.i32, ptr %0, align 8, !alias.scope !3891, !noalias !3893
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit16

bb.y:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit
  %i.cc = phi i64 [ %.ph, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread ], [ %.pr, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit ]
  %.sroa.4.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.0..sroa_idx2.i11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load <2 x i64>, ptr %.sroa.4.0..sroa_idx.i7, align 8, !noalias !3864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3864
  store i64 %i.cc, ptr %0, align 8, !alias.scope !3860, !noalias !3890
  store <2 x i64> %i.cd, ptr %.sroa.5.0..sroa_idx2.i11, align 8, !alias.scope !3860, !noalias !3890
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit16

bb.z:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3895)
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !3895, !noalias !3896, !noundef !5 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !3895, !noalias !3896, !noundef !5 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !3895, !noalias !3896, !nonnull !5, !noundef !5 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !3895, !noalias !3896, !noundef !5 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 5104
  %i.cn = load ptr, ptr %i.cm, align 16, !alias.scope !3894, !noalias !3897, !nonnull !5, !noundef !5
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 5112
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !3894, !noalias !3897, !nonnull !5, !align !24, !noundef !5 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !range !27, !invariant.load !5, !noalias !3898
  %i.cs = add nsw i64 %i.cr, -1
  %i.ct = and i64 %i.cs, -16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !invariant.load !5, !noalias !3898, !nonnull !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3899
  call void %i.cx(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noundef nonnull %i.cv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cj, i64 noundef %i.cl, i64 noundef %i.cf, i64 noundef %i.ch), !noalias !3898, !inline_history !1
  %i.cy = load i64, ptr %i.aa, align 8, !range !8, !noalias !3899, !noundef !5
  %i.cz = trunc nuw i64 %i.cy to i1
  %i.da = ptrtoint ptr %i.cj to i64               ; 2 uses
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.6.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.6.i.sroa.7.0.copyload = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx, align 8, !noalias !3896 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 4768
  %i.df = load i64, ptr %i.de, align 16, !range !11
  %.not.i2 = icmp eq i64 %i.df, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4304
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 3584 ; 2 uses
  %i.di = load i128, ptr %i.dh, align 16, !range !12
  %.not2.i3 = icmp eq i128 %i.di, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 2 uses
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.not.i40 = icmp ugt i64 %i.ch, %i.cl
  %i.dl = add i64 %i.ch, 1
  %.sroa.4.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 2704
  %i.dn = load i64, ptr %i.dm, align 16, !range !11
  %.not.i1 = icmp eq i64 %i.dn, 2                 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 1440 ; 2 uses
  %i.dp = load i128, ptr %1, align 16, !range !12
  %.not2.i = icmp eq i128 %i.dp, 2                ; 2 uses
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.bb
  %.sroa.0.0.i179 = phi i64 [ %i.cf, %.lr.ph ], [ %i.dt, %bb.bb ]
  %.sroa.03.0.i178 = phi i64 [ 0, %.lr.ph ], [ %i.dr, %bb.bb ] ; 2 uses
  %.sroa.038.0.i177 = phi i64 [ 0, %.lr.ph ], [ %.sroa.038.1.i, %bb.bb ] ; 2 uses
  %i.dq = load i64, ptr %i.db, align 8, !noalias !3899, !noundef !5 ; 7 uses
  %i.dr = load i64, ptr %i.dc, align 8, !noalias !3899, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3899
  %i.ds = icmp ult i64 %i.dq, %.sroa.038.0.i177
  br i1 %i.ds, label %.thread143, label %bb.ab

._crit_edge:                                      ; preds = %bb.bb, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3899
  br label %bb.bf

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3900
  store i64 %i.cf, ptr %i.l, align 8, !noalias !3900
  store i64 %i.dq, ptr %i.dd, align 8, !noalias !3900
  %.not.i38 = icmp ugt i64 %i.dq, %i.cl
  %i.dt = add i64 %i.dq, 1                        ; 4 uses
  %.not8.i = icmp ugt i64 %i.cf, %i.dt
  %or.cond.i = or i1 %.not8.i, %.not.i38
  br i1 %or.cond.i, label %bb.ac, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit, !prof !6

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3900
  store i64 %i.cl, ptr %i.k, align 8, !noalias !3900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3900
  store ptr %i.l, ptr %i.j, align 8, !noalias !3900
  %.sroa.42.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i39, align 8, !noalias !3900
  %i.du = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.du, align 8, !noalias !3900
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !3900
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !3900
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3900
  store i32 1, ptr %i.z, align 8, !noalias !3899
  store i64 %i.da, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !noalias !3899
  store i64 %i.cl, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !3899
  store i64 %i.cf, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !3899
  store i64 %i.dq, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3899
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.879.0..sroa_idx, align 8, !noalias !3899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3899
  call void @llvm.experimental.noalias.scope.decl(metadata !3901)
  br i1 %.not.i2, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited23dfa_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, i64 noundef %.sroa.03.0.i178), !noalias !3902
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit

bb.ae:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  br i1 %.not2.i3, label %bb.ag, label %bb.af, !prof !20

bb.af:                                            ; preds = %bb.ae
  %i.dv = load i64, ptr %i.dj, align 8, !range !11, !alias.scope !3901, !noalias !3903, !noundef !5
  %.not3.i4 = icmp eq i64 %i.dv, 2
  br i1 %.not3.i4, label %bb.ai, label %bb.ah, !prof !20

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 143 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #23, !noalias !3904
  unreachable

bb.ah:                                            ; preds = %bb.af
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited26hybrid_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.dh, ptr noalias noundef nonnull align 8 dereferenceable(352) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, i64 noundef %.sroa.03.0.i178), !noalias !3898
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit

bb.ai:                                            ; preds = %bb.af
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #23, !noalias !3904
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit: ; preds = %bb.ad, %bb.ah
  %i.dw = load i64, ptr %i.y, align 8, !range !11, !noalias !3899, !noundef !5 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 2
  %i.dy = load i64, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !3899 ; 5 uses
  br i1 %i.dx, label %bb.bd, label %bb.aj

bb.aj:                                            ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit
  %.sroa.548.0.copyload.i = load i64, ptr %.sroa.548.0..sroa_idx.i, align 8, !noalias !3899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3899
  %.sroa.4.16.extract.trunc.i = trunc i64 %.sroa.548.0.copyload.i to i32 ; 2 uses
  %i.dz = trunc nuw i64 %i.dw to i1
  br i1 %i.dz, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3905
  store i64 %i.dy, ptr %i.i, align 8, !noalias !3905
  store i64 %i.ch, ptr %i.dk, align 8, !noalias !3905
  %.not8.i41 = icmp ugt i64 %i.dy, %i.dl
  %or.cond.i42 = or i1 %.not.i40, %.not8.i41
  br i1 %or.cond.i42, label %bb.al, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit45, !prof !6

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3905
  store i64 %i.cl, ptr %i.h, align 8, !noalias !3905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3905
  store ptr %i.i, ptr %i.g, align 8, !noalias !3905
  %.sroa.42.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i43, align 8, !noalias !3905
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.ea, align 8, !noalias !3905
  %.sroa.46.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i44, align 8, !noalias !3905
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !3905
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit45: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3905
  store i32 2, ptr %i.x, align 8, !noalias !3899
  store i32 %.sroa.4.16.extract.trunc.i, ptr %.sroa.4.0..sroa_idx82, align 4, !noalias !3899
  store i64 %i.da, ptr %.sroa.583.0..sroa_idx, align 8, !noalias !3899
  store i64 %i.cl, ptr %.sroa.684.0..sroa_idx, align 8, !noalias !3899
  store i64 %i.dy, ptr %.sroa.785.0..sroa_idx, align 8, !noalias !3899
  store i64 %i.ch, ptr %.sroa.886.0..sroa_idx, align 8, !noalias !3899
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !3899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3899
  call void @llvm.experimental.noalias.scope.decl(metadata !3906)
  br i1 %.not.i1, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit45
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6stopat23dfa_try_search_half_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x), !noalias !3907
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner26try_search_half_fwd_stopat.exit

bb.an:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit45
  br i1 %.not2.i, label %bb.ap, label %bb.ao, !prof !20

bb.ao:                                            ; preds = %bb.an
  %i.eb = load i64, ptr %2, align 8, !range !11, !alias.scope !3906, !noalias !3908, !noundef !5
  %.not3.i = icmp eq i64 %i.eb, 2
  br i1 %.not3.i, label %bb.ar, label %bb.aq, !prof !20

bb.ap:                                            ; preds = %bb.an
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 143 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #23, !noalias !3909
  unreachable

bb.aq:                                            ; preds = %bb.ao
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6stopat26hybrid_try_search_half_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(5152) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x), !noalias !3898
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner26try_search_half_fwd_stopat.exit

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #23, !noalias !3909
  unreachable

end_hunk_10
begin_hunk_11_@_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy11search_half:bb.a
bb.bv:                                            ; preds = %bb.bu
  %.sroa.42.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.42.0.copyload.i68 = load i64, ptr %.sroa.42.0..sroa_idx.i67, align 8, !noalias !3934
  %.sroa.5.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0.copyload.i70 = load i32, ptr %.sroa.5.0..sroa_idx.i69, align 8, !noalias !3934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3934
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.42.0.copyload.i68, ptr %i.fp, align 8, !alias.scope !3933, !noalias !3935
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0.copyload.i70, ptr %i.fq, align 8, !alias.scope !3933, !noalias !3935
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit71

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3934
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit71

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit71: ; preds = %bb.bv, %bb.bw
  %storemerge.i66 = phi i64 [ 0, %bb.bw ], [ 1, %bb.bv ]
  store i64 %storemerge.i66, ptr %0, align 8, !alias.scope !3933, !noalias !3935
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit16

bb.bx:                                            ; preds = %bb.bp
  %.sroa.693.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fr = load <2 x i64>, ptr %i.fg, align 8, !noalias !3928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3928
  store i64 %i.fe, ptr %0, align 8, !noalias !3936
  store <2 x i64> %i.fr, ptr %.sroa.693.0..sroa_idx94, align 8, !noalias !3936
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit16

bb.by:                                            ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit59._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit59.thread147
  %i.fs = phi ptr [ %.pre200, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit59._crit_edge ], [ %i.ez, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit59.thread147 ]
  %i.ft = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.fs), !noalias !3924 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3916
  call void @llvm.experimental.noalias.scope.decl(metadata !3937)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3938
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !3937
  %i.fu = load i64, ptr %i.a, align 8, !range !8, !noalias !3938, !noundef !5
  %i.fv = trunc nuw i64 %i.fu to i1
  br i1 %i.fv, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %.sroa.42.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0.copyload.i74 = load i64, ptr %.sroa.42.0..sroa_idx.i73, align 8, !noalias !3938
  %.sroa.5.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0.copyload.i76 = load i32, ptr %.sroa.5.0..sroa_idx.i75, align 8, !noalias !3938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3938
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.42.0.copyload.i74, ptr %i.fw, align 8, !alias.scope !3937, !noalias !3939
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0.copyload.i76, ptr %i.fx, align 8, !alias.scope !3937, !noalias !3939
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit77

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3938
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit77

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail.exit77: ; preds = %bb.bz, %bb.ca
  %storemerge.i72 = phi i64 [ 0, %bb.ca ], [ 1, %bb.bz ]
  store i64 %storemerge.i72, ptr %0, align 8, !alias.scope !3937, !noalias !3939
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit16

bb.cb:                                            ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit59.thread, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit59
  %i.fy = phi i64 [ %.ph146, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit59.thread ], [ %.pr145, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit59 ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fz = load <2 x i64>, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3916
  store i64 %i.fy, ptr %0, align 8, !alias.scope !3914, !noalias !3936
  store <2 x i64> %i.fz, ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !3914, !noalias !3936
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy11search_half.exit16
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy12create_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1400 x i8]) align 8 captures(none) dereferenceable(1400) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(5152) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [704 x i8], align 8               ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [216 x i8], align 8               ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [352 x i8], align 8               ; 4 uses
  %i.g = alloca [1400 x i8], align 8              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3944)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3945
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3560
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !3944, !noalias !3943, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 312 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !3945, !nonnull !5, !noundef !5
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !noalias !3945
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.j, align 8, !noalias !3945, !nonnull !5, !noundef !5
  call void @_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB2_8Captures3all(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noundef nonnull %i.n), !noalias !3945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3945
  store i64 -1, ptr %i.d, align 8, !noalias !3945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3945
  store i64 -1, ptr %i.c, align 8, !noalias !3945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3945
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3176
  invoke void @_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass12create_cache(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.o)
          to label %bb.f unwind label %bb.e, !noalias !3943

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.g, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.p, %bb.e ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers23BoundedBacktrackerCacheEBH_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #25
          to label %bb.i unwind label %bb.h, !noalias !3943

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3945
  invoke void @_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_6Hybrid12create_cache(ptr noalias noundef nonnull sret([704 x i8]) align 8 captures(address) dereferenceable(704) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1)
          to label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12create_cache.exit unwind label %bb.g, !noalias !3943

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12OnePassCacheEBH_(ptr noalias noundef align 8 dereferenceable(32) %i.b) #25
          to label %bb.d unwind label %bb.h, !noalias !3943

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !3943
  unreachable

bb.i:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11PikeVMCacheEBH_(ptr noalias noundef align 8 dereferenceable(216) %i.d) #25
          to label %bb.j unwind label %bb.h, !noalias !3943

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures8CapturesEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.e) #25
          to label %common.resume unwind label %bb.h, !noalias !3943

common.resume:                                    ; preds = %bb.k, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.j ], [ %i.y, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12create_cache.exit: ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !3944
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 1096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.t, ptr noundef nonnull align 8 dereferenceable(216) %i.d, i64 216, i1 false), !noalias !3944
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !3944
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 1368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !3944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.g, ptr noundef nonnull align 8 dereferenceable(704) %i.a, i64 704, i1 false), !noalias !3944
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 704 ; 2 uses
  store i64 2, ptr %i.w, align 8, !alias.scope !3943, !noalias !3944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3584
  invoke void @_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_13ReverseHybrid12create_cache(ptr noalias noundef nonnull sret([352 x i8]) align 8 captures(address) dereferenceable(352) %i.f, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers18ReverseHybridCacheEBH_.exit unwind label %bb.k

bb.k:                                             ; preds = %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12create_cache.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEBH_(ptr noalias noundef align 8 dereferenceable(1400) %i.g) #25
          to label %common.resume unwind label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers18ReverseHybridCacheEBH_.exit: ; preds = %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12create_cache.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.w, ptr noundef nonnull align 8 dereferenceable(352) %i.f, i64 352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %0, ptr noundef nonnull align 8 dereferenceable(1400) %i.g, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy12memory_usage(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(5152) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12memory_usage(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5104
  %i.c = load ptr, ptr %i.b, align 16, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5112
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !24, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !27, !invariant.load !5
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !5, !nonnull !5
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5136
  %.val = load ptr, ptr %i.o, align 16, !nonnull !5, !noundef !5 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 336
  %i.q = load i64, ptr %i.p, align 16, !noundef !5 ; 2 uses
  %i.r = icmp ult i64 %i.q, 384307168202282326
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 360
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 2 uses
  %i.u = icmp ult i64 %i.t, 2305843009213693952
  tail call void @llvm.assume(i1 %i.u)
  %i.v = shl nuw nsw i64 %i.t, 2
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 312
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = shl nuw nsw i64 %i.z, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 192153584101141163
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = mul nuw nsw i64 %i.ad, 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 384307168202282326
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 304
  %i.am = load i64, ptr %i.al, align 16, !noundef !5
  %reass.add.i = add nuw nsw i64 %i.ah, %i.q
  %reass.mul.i = mul nuw i64 %reass.add.i, 24
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4304
  %i.ao = tail call noundef i64 @_RNvMsf_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_10ReverseDFA12memory_usage(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.an)
  %i.ap = add i64 %i.a, 464
  %i.aq = add i64 %i.ap, %i.n
  %i.ar = add i64 %i.aq, %i.v
  %i.as = add i64 %i.ar, %i.ab
  %i.at = add i64 %i.as, %i.af
  %i.au = add i64 %i.at, %i.ak
  %i.av = add i64 %i.au, %reass.mul.i
  %i.aw = add i64 %i.av, %i.am
  %i.ax = add i64 %i.aw, %i.ao
  ret i64 %i.ax
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal { i32, i32 } @_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy12search_slots(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(5152) %0, ptr noalias noundef align 8 dereferenceable(1400) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 3 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 3 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 8                ; 13 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [48 x i8], align 8                ; 14 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [48 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 16 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [48 x i8], align 8               ; 4 uses
  %i.ak = alloca [48 x i8], align 8               ; 6 uses
  %i.al = alloca [48 x i8], align 8               ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 16 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %i.ao = alloca [48 x i8], align 8               ; 13 uses
  %i.ap = alloca [24 x i8], align 8               ; 8 uses
  %i.aq = alloca [48 x i8], align 8               ; 14 uses
  %i.ar = alloca [24 x i8], align 8               ; 10 uses
  %i.as = alloca [48 x i8], align 8               ; 10 uses
  %i.at = alloca [32 x i8], align 8               ; 21 uses
  %.val71 = load i32, ptr %2, align 8, !range !16, !noundef !5
  %.not = icmp eq i32 %.val71, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3560
  %.val56 = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %.val56, i64 312 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !5 ; 2 uses
  %i.az = icmp ult i64 %i.ay, 1152921504606846976
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = shl nuw nsw i64 %i.ay, 1
  %i.bb = icmp samesign ugt i64 %4, %i.ba
  br i1 %i.bb, label %bb.ca, label %bb.ak

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4111)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3560
  %.val = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 312
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !5, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.bg, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = shl nuw nsw i64 %i.bg, 1
  %i.bj = icmp samesign ugt i64 %4, %i.bi
  br i1 %i.bj, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4114)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.bl = load i64, ptr %i.bk, align 16, !range !11, !alias.scope !4115, !noalias !4116, !noundef !5
  %.not.i6.i = icmp eq i64 %i.bl, 2
  br i1 %.not.i6.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4117
  call fastcc void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa5regexNtB5_5Regex10try_searchB9_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1600) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !4118
  %i.bn = load i64, ptr %i.ab, align 8, !range !11, !noalias !4117, !noundef !5 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  br i1 %i.bo, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.bq = load i128, ptr %0, align 16, !range !12, !alias.scope !4119, !noalias !4116, !noundef !5
  %.not.i.i40 = icmp eq i128 %i.bq, 2
  br i1 %.not.i.i40, label %bb.l, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.br = load ptr, ptr %i.bp, align 8, !noalias !4117, !nonnull !5, !align !24, !noundef !5
  %i.bs = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.br), !noalias !4118 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4117
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ag, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !4111
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.h:                                             ; preds = %bb.e
  %.sroa.4260.0.copyload = load i64, ptr %i.bp, align 8, !noalias !4117
  %.sroa.5261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.7247.0..sroa_idx248 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7247.0..sroa_idx248, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5261.0..sroa_idx, i64 16, i1 false), !noalias !4120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4117
  store i64 %i.bn, ptr %i.ag, align 8, !noalias !4120
  %.sroa.6244.0..sroa_idx245 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.sroa.4260.0.copyload, ptr %.sroa.6244.0..sroa_idx245, align 8, !noalias !4120
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4121), !noalias !4111
  %i.bt = load i64, ptr %1, align 8, !range !11, !alias.scope !4122, !noalias !4123, !noundef !5
  %.not.i5.i41 = icmp eq i64 %i.bt, 2
  br i1 %.not.i5.i41, label %bb.k, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !4124
  call fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata6hybrid5regexNtB5_5Regex10try_search(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.ac, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !4125
  %i.bu = load i64, ptr %i.ac, align 8, !range !11, !noalias !4124, !noundef !5 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  br i1 %i.bv, label %bb.m, label %bb.n

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #23, !noalias !4124
  unreachable

bb.l:                                             ; preds = %bb.f
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ag, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !4111
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit

bb.m:                                             ; preds = %bb.j
end_hunk_11
begin_hunk_12_@_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy12search_slots:bb.a
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cg
  %i.cm = add i64 %.sroa.4229.0.copyload, 1
  store i64 %i.cm, ptr %i.cl, align 8, !alias.scope !4128, !noalias !4129
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy19copy_match_to_slots.exit.i15

bb.t:                                             ; preds = %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4112
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy19copy_match_to_slots.exit.i15

_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy19copy_match_to_slots.exit.i15: ; preds = %bb.r, %bb.s, %bb.t
  %.sroa.9.0.i12 = phi i32 [ undef, %bb.t ], [ %.sroa.5230.0.copyload, %bb.s ], [ %.sroa.5230.0.copyload, %bb.r ]
  %.sroa.0.0.i13 = phi i32 [ 0, %bb.t ], [ 1, %bb.s ], [ 1, %bb.r ]
  %i.cn = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i13, 0
  %i.co = insertvalue { i32, i32 } %i.cn, i32 %.sroa.9.0.i12, 1
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit38

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit.i19: ; preds = %bb.o
  %i.cp = tail call { i32, i32 } @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core19search_slots_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit38

bb.u:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4130)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.cr = load i64, ptr %i.cq, align 16, !range !11, !alias.scope !4131, !noalias !4132, !noundef !5
  %.not.i.i22 = icmp eq i64 %i.cr, 2
  br i1 %.not.i.i22, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !4133
  call fastcc void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa5regexNtB5_5Regex10try_searchB9_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.ae, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(1600) %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !4134
  %i.ct = load i64, ptr %i.ae, align 8, !range !11, !noalias !4133, !noundef !5 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  br i1 %i.cu, label %bb.ac, label %bb.ad

bb.w:                                             ; preds = %bb.u
  %i.cw = load i128, ptr %0, align 16, !range !12, !alias.scope !4131, !noalias !4132, !noundef !5
  %.not9.i.i34 = icmp eq i128 %i.cw, 2
  br i1 %.not9.i.i34, label %.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4135)
  %i.cx = load i64, ptr %1, align 8, !range !11, !alias.scope !4136, !noalias !4137, !noundef !5
  %.not.i7.i35 = icmp eq i64 %i.cx, 2
  br i1 %.not.i7.i35, label %bb.z, label %bb.y, !prof !20

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4138
  call fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata6hybrid5regexNtB5_5Regex10try_search(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.ad, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !4139
  %i.cy = load i64, ptr %i.ad, align 8, !range !11, !noalias !4138, !noundef !5 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  br i1 %i.cz, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.x
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #23, !noalias !4140
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.db = load ptr, ptr %i.da, align 8, !noalias !4138, !nonnull !5, !align !24, !noundef !5
  %i.dc = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.db), !noalias !4139
  br label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i36

bb.ab:                                            ; preds = %bb.y
  %.sroa.4238.0.copyload = load i64, ptr %i.da, align 8, !noalias !4138
  %.sroa.5239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.5239.0.copyload = load i64, ptr %.sroa.5239.0..sroa_idx, align 8, !noalias !4138
  %.sroa.6240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.6240.0.copyload = load i32, ptr %.sroa.6240.0..sroa_idx, align 8, !noalias !4138
  br label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i36

_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i36: ; preds = %bb.ab, %bb.aa
  %.sroa.5233.0 = phi i64 [ %i.dc, %bb.aa ], [ %.sroa.4238.0.copyload, %bb.ab ]
  %.sroa.7234.0 = phi i64 [ undef, %bb.aa ], [ %.sroa.5239.0.copyload, %bb.ab ]
  %.sroa.8235.0 = phi i32 [ undef, %bb.aa ], [ %.sroa.6240.0.copyload, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4138
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i31

bb.ac:                                            ; preds = %bb.v
  %i.dd = load ptr, ptr %i.cv, align 8, !noalias !4133, !nonnull !5, !align !24, !noundef !5
  %i.de = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.dd), !noalias !4134
  br label %bb.ae

bb.ad:                                            ; preds = %bb.v
  %.sroa.4.0.copyload.i.i25 = load i64, ptr %i.cv, align 8, !noalias !4133
  %.sroa.57.0..sroa_idx.i.i26 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.57.i.i9.sroa.0.0.copyload = load i64, ptr %.sroa.57.0..sroa_idx.i.i26, align 8, !noalias !4133
  %.sroa.57.i.i9.sroa.4.0..sroa.57.0..sroa_idx.i.i26.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.57.i.i9.sroa.4.0.copyload = load i32, ptr %.sroa.57.i.i9.sroa.4.0..sroa.57.0..sroa_idx.i.i26.sroa_idx, align 8, !noalias !4133
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.6.i.i10.sroa.4.0 = phi i32 [ undef, %bb.ac ], [ %.sroa.57.i.i9.sroa.4.0.copyload, %bb.ad ]
  %.sroa.6.i.i10.sroa.0.0 = phi i64 [ undef, %bb.ac ], [ %.sroa.57.i.i9.sroa.0.0.copyload, %bb.ad ]
  %.sroa.5.0.i.i27 = phi i64 [ %i.de, %bb.ac ], [ %.sroa.4.0.copyload.i.i25, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4133
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i31

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i31: ; preds = %bb.ae, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i36
  %.sroa.9206.sroa.6.0 = phi i32 [ %.sroa.6.i.i10.sroa.4.0, %bb.ae ], [ %.sroa.8235.0, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i36 ]
  %.sroa.9206.sroa.0.0 = phi i64 [ %.sroa.6.i.i10.sroa.0.0, %bb.ae ], [ %.sroa.7234.0, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i36 ] ; 4 uses
  %.sroa.7205.0 = phi i64 [ %.sroa.5.0.i.i27, %bb.ae ], [ %.sroa.5233.0, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i36 ] ; 3 uses
  %.sroa.0204.0 = phi i64 [ %i.ct, %bb.ae ], [ %i.cy, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i36 ]
  switch i64 %.sroa.0204.0, label %bb.ag [
    i64 0, label %bb.af
    i64 2, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.w, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i31
  %i.df = tail call { i32, i32 } @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core19search_slots_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4) ; 2 uses
  %i.dg = extractvalue { i32, i32 } %i.df, 0
  %i.dh = extractvalue { i32, i32 } %i.df, 1
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i31
  %.sroa.9.2.i32 = phi i32 [ undef, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i31 ], [ %i.dh, %.sink.split ]
  %.sroa.0.2.i33 = phi i32 [ 0, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i31 ], [ %i.dg, %.sink.split ]
  %i.di = insertvalue { i32, i32 } poison, i32 %.sroa.0.2.i33, 0
  %i.dj = insertvalue { i32, i32 } %i.di, i32 %.sroa.9.2.i32, 1
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit38

bb.ag:                                            ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4112
  %.sroa.5223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6224.0.copyload = load i64, ptr %.sroa.6224.0..sroa_idx, align 8, !alias.scope !4141, !noalias !4111 ; 2 uses
  %i.dk = load <2 x i64>, ptr %.sroa.5223.0..sroa_idx, align 8, !alias.scope !4141, !noalias !4111
  %.sroa.9227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.9227.0.copyload = load i64, ptr %.sroa.9227.0..sroa_idx, align 8, !alias.scope !4141, !noalias !4111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4142
  store i64 %.sroa.7205.0, ptr %i.r, align 8, !noalias !4142
  %i.dl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.9206.sroa.0.0, ptr %i.dl, align 8, !noalias !4142
  %.not.i.i75 = icmp ugt i64 %.sroa.9206.sroa.0.0, %.sroa.6224.0.copyload
  %i.dm = add i64 %.sroa.9206.sroa.0.0, 1
  %.not8.i.i = icmp ugt i64 %.sroa.7205.0, %i.dm
  %or.cond.i.i = or i1 %.not8.i.i, %.not.i.i75
  br i1 %or.cond.i.i, label %bb.ah, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input4spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit, !prof !6

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4142
  store i64 %.sroa.6224.0.copyload, ptr %i.q, align 8, !noalias !4142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4142
  store ptr %i.r, ptr %i.p, align 8, !noalias !4142
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !4142
  %i.dn = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.dn, align 8, !noalias !4142
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !4142
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !4142
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input4spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4142
  store i32 2, ptr %i.af, align 8, !alias.scope !4143, !noalias !4111
  %.sroa.5216.0..sroa_idx217 = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %.sroa.9206.sroa.6.0, ptr %.sroa.5216.0..sroa_idx217, align 4, !alias.scope !4143, !noalias !4111
  %.sroa.6219.0..sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store <2 x i64> %i.dk, ptr %.sroa.6219.0..sroa_idx220, align 8, !alias.scope !4143, !noalias !4111
  %.sroa.6219.sroa.5.0..sroa.6219.0..sroa_idx220.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %.sroa.7205.0, ptr %.sroa.6219.sroa.5.0..sroa.6219.0..sroa_idx220.sroa_idx, align 8, !alias.scope !4143, !noalias !4111
  %.sroa.6219.sroa.6.0..sroa.6219.0..sroa_idx220.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i64 %.sroa.9206.sroa.0.0, ptr %.sroa.6219.sroa.6.0..sroa.6219.0..sroa_idx220.sroa_idx, align 8, !alias.scope !4143, !noalias !4111
  %.sroa.6219.sroa.7.0..sroa.6219.0..sroa_idx220.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i64 %.sroa.9227.0.copyload, ptr %.sroa.6219.sroa.7.0..sroa.6219.0..sroa_idx220.sroa_idx, align 8, !alias.scope !4143, !noalias !4111
  %i.do = call { i32, i32 } @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core19search_slots_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.af, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4) ; 2 uses
  %i.dp = extractvalue { i32, i32 } %i.do, 0
  %i.dq = trunc i32 %i.dp to i1
  br i1 %i.dq, label %bb.ai, label %bb.aj, !prof !19

bb.ai:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input4spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4112
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit38

bb.aj:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input4spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #23
  unreachable

bb.ak:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4148)
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !4149, !noalias !4150, !noundef !5 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !4149, !noalias !4150, !noundef !5 ; 7 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !4149, !noalias !4150, !nonnull !5, !noundef !5 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !4149, !noalias !4150, !noundef !5 ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 5104
  %i.ea = load ptr, ptr %i.dz, align 16, !alias.scope !4151, !noalias !4152, !nonnull !5, !noundef !5
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 5112
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !4151, !noalias !4152, !nonnull !5, !align !24, !noundef !5 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !range !27, !invariant.load !5, !noalias !4153
  %i.ef = add nsw i64 %i.ee, -1
  %i.eg = and i64 %i.ef, -16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8, !invariant.load !5, !noalias !4153, !nonnull !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4154
  call void %i.ek(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noundef nonnull %i.ei, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef %i.dy, i64 noundef %i.ds, i64 noundef %i.du), !noalias !4153, !inline_history !4155
  %i.el = load i64, ptr %i.y, align 8, !range !8, !noalias !4154, !noundef !5
  %i.em = trunc nuw i64 %i.el to i1
  %i.en = ptrtoint ptr %i.dw to i64               ; 2 uses
  br i1 %i.em, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ak
  %i.eo = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.6.i.i52.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6.i.i52.sroa.7.0.copyload = load i64, ptr %.sroa.6.i.i52.sroa.7.0..sroa_idx, align 8, !noalias !4150 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4287.sroa.3.0..sroa.4287.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.6289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.7290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.8291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 4768
  %i.es = load i64, ptr %i.er, align 16, !range !11
  %.not.i2.i = icmp eq i64 %i.es, 2
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 4304
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 3584 ; 2 uses
  %i.ev = load i128, ptr %i.eu, align 16, !range !12
  %.not2.i3.i = icmp eq i128 %i.ev, 2
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %.sroa.447.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.548.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.not.i77 = icmp ugt i64 %i.du, %i.dy
  %i.ey = add i64 %i.du, 1
  %.sroa.4294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.sroa.5295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.7297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.8298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.9299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.fa = load i64, ptr %i.ez, align 16, !range !11
  %.not.i1.i = icmp eq i64 %i.fa, 2               ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 2 uses
  %i.fc = load i128, ptr %0, align 16, !range !12
  %.not2.i.i = icmp eq i128 %i.fc, 2              ; 2 uses
  %.sroa.450.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph, %bb.bm
  %.sroa.0.0.i.i53502 = phi i64 [ %i.ds, %.lr.ph ], [ %i.fg, %bb.bm ]
  %.sroa.03.0.i.i501 = phi i64 [ 0, %.lr.ph ], [ %i.fe, %bb.bm ] ; 2 uses
  %.sroa.038.0.i.i500 = phi i64 [ 0, %.lr.ph ], [ %.sroa.038.1.i.i, %bb.bm ] ; 2 uses
  %i.fd = load i64, ptr %i.eo, align 8, !noalias !4154, !noundef !5 ; 7 uses
  %i.fe = load i64, ptr %i.ep, align 8, !noalias !4154, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4154
  %i.ff = icmp ult i64 %i.fd, %.sroa.038.0.i.i500
  br i1 %i.ff, label %.thread378, label %bb.am

._crit_edge:                                      ; preds = %bb.bm, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4154
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.i.thread

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4156
  store i64 %i.ds, ptr %i.o, align 8, !noalias !4156
  store i64 %i.fd, ptr %i.eq, align 8, !noalias !4156
  %.not.i76 = icmp ugt i64 %i.fd, %i.dy
  %i.fg = add i64 %i.fd, 1                        ; 4 uses
  %.not8.i = icmp ugt i64 %i.ds, %i.fg
  %or.cond.i = or i1 %.not8.i, %.not.i76
  br i1 %or.cond.i, label %bb.an, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit, !prof !6

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4156
  store i64 %i.dy, ptr %i.n, align 8, !noalias !4156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4156
  store ptr %i.o, ptr %i.m, align 8, !noalias !4156
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4156
  %i.fh = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.fh, align 8, !noalias !4156
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !4156
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !4156
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4156
  store i32 1, ptr %i.x, align 8, !noalias !4154
  store i64 %i.en, ptr %.sroa.4287.sroa.3.0..sroa.4287.0..sroa_idx.sroa_idx, align 8, !noalias !4154
  store i64 %i.dy, ptr %.sroa.5288.0..sroa_idx, align 8, !noalias !4154
  store i64 %i.ds, ptr %.sroa.6289.0..sroa_idx, align 8, !noalias !4154
  store i64 %i.fd, ptr %.sroa.7290.0..sroa_idx, align 8, !noalias !4154
  store i64 %.sroa.6.i.i52.sroa.7.0.copyload, ptr %.sroa.8291.0..sroa_idx, align 8, !noalias !4154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4154
  call void @llvm.experimental.noalias.scope.decl(metadata !4157)
  br i1 %.not.i2.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited23dfa_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.et, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, i64 noundef %.sroa.03.0.i.i501), !noalias !4158
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit.i

bb.ap:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  br i1 %.not2.i3.i, label %bb.ar, label %bb.aq, !prof !20

bb.aq:                                            ; preds = %bb.ap
  %i.fi = load i64, ptr %i.ew, align 8, !range !11, !alias.scope !4159, !noalias !4160, !noundef !5
  %.not3.i4.i = icmp eq i64 %i.fi, 2
  br i1 %.not3.i4.i, label %bb.at, label %bb.as, !prof !20

bb.ar:                                            ; preds = %bb.ap
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 143 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #23, !noalias !4161
  unreachable

bb.as:                                            ; preds = %bb.aq
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited26hybrid_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.eu, ptr noalias noundef nonnull align 8 dereferenceable(352) %i.ew, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, i64 noundef %.sroa.03.0.i.i501), !noalias !4153
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit.i

bb.at:                                            ; preds = %bb.aq
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #23, !noalias !4161
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit.i: ; preds = %bb.as, %bb.ao
  %i.fj = load i64, ptr %i.w, align 8, !range !11, !noalias !4154, !noundef !5 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 2
  %i.fl = load i64, ptr %.sroa.447.0..sroa_idx.i.i, align 8, !noalias !4154 ; 6 uses
  br i1 %i.fk, label %bb.bo, label %bb.au

bb.au:                                            ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit.i
  %.sroa.548.0.copyload.i.i = load i64, ptr %.sroa.548.0..sroa_idx.i.i, align 8, !noalias !4154 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4154
  %.sroa.4.16.extract.trunc.i.i = trunc i64 %.sroa.548.0.copyload.i.i to i32
  %i.fm = trunc nuw i64 %i.fj to i1
  br i1 %i.fm, label %bb.av, label %bb.bd

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4162
  store i64 %i.fl, ptr %i.l, align 8, !noalias !4162
  store i64 %i.du, ptr %i.ex, align 8, !noalias !4162
  %.not8.i78 = icmp ugt i64 %i.fl, %i.ey
  %or.cond.i79 = or i1 %.not.i77, %.not8.i78
  br i1 %or.cond.i79, label %bb.aw, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit82, !prof !6

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4162
  store i64 %i.dy, ptr %i.k, align 8, !noalias !4162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4162
  store ptr %i.l, ptr %i.j, align 8, !noalias !4162
  %.sroa.42.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i80, align 8, !noalias !4162
  %i.fn = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.fn, align 8, !noalias !4162
  %.sroa.46.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i81, align 8, !noalias !4162
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !4162
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit82: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4162
  store i32 2, ptr %i.v, align 8, !noalias !4154
  store i32 %.sroa.4.16.extract.trunc.i.i, ptr %.sroa.4294.0..sroa_idx, align 4, !noalias !4154
  store i64 %i.en, ptr %.sroa.5295.0..sroa_idx, align 8, !noalias !4154
  store i64 %i.dy, ptr %.sroa.6296.0..sroa_idx, align 8, !noalias !4154
  store i64 %i.fl, ptr %.sroa.7297.0..sroa_idx, align 8, !noalias !4154
  store i64 %i.du, ptr %.sroa.8298.0..sroa_idx, align 8, !noalias !4154
  store i64 %.sroa.6.i.i52.sroa.7.0.copyload, ptr %.sroa.9299.0..sroa_idx, align 8, !noalias !4154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4154
  call void @llvm.experimental.noalias.scope.decl(metadata !4163)
  br i1 %.not.i1.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit82
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6stopat23dfa_try_search_half_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.fb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v), !noalias !4164
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner26try_search_half_fwd_stopat.exit.i

bb.ay:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit82
  br i1 %.not2.i.i, label %bb.ba, label %bb.az, !prof !20

bb.az:                                            ; preds = %bb.ay
  %i.fo = load i64, ptr %1, align 8, !range !11, !alias.scope !4165, !noalias !4166, !noundef !5
  %.not3.i.i = icmp eq i64 %i.fo, 2
  br i1 %.not3.i.i, label %bb.bc, label %bb.bb, !prof !20

bb.ba:                                            ; preds = %bb.ay
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 143 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #23, !noalias !4167
  unreachable

bb.bb:                                            ; preds = %bb.az
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6stopat26hybrid_try_search_half_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(5152) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v), !noalias !4153
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner26try_search_half_fwd_stopat.exit.i

bb.bc:                                            ; preds = %bb.az
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #23, !noalias !4167
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner26try_search_half_fwd_stopat.exit.i: ; preds = %bb.bb, %bb.ax
  %i.fp = load i64, ptr %i.u, align 8, !range !11, !noalias !4154, !noundef !5 ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 2
  br i1 %i.fq, label %.thread, label %bb.be

bb.bd:                                            ; preds = %bb.bi, %bb.au
  %.sroa.038.1.i.i = phi i64 [ %.sroa.450.0.copyload.i.i, %bb.bi ], [ %.sroa.038.0.i.i500, %bb.au ]
  %.sroa.0.1.i.i = phi i64 [ %i.fg, %bb.bi ], [ %.sroa.0.0.i.i53502, %bb.au ]
  %.not.i.i54 = icmp ult i64 %.sroa.0.1.i.i, %i.du
  br i1 %.not.i.i54, label %bb.bk, label %bb.bl

.thread:                                          ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner26try_search_half_fwd_stopat.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4154
  br label %bb.bp

bb.be:                                            ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner26try_search_half_fwd_stopat.exit.i
  %.sroa.450.0.copyload.i.i = load i64, ptr %.sroa.450.0..sroa_idx.i.i, align 8, !noalias !4154 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4154
  %i.fr = trunc nuw i64 %i.fp to i1
  br i1 %i.fr, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fs = icmp eq i64 %i.fd, -1
  br i1 %i.fs, label %bb.bj, label %bb.bi, !prof !20

bb.bg:                                            ; preds = %bb.be
  %.not.i83 = icmp ugt i64 %i.fl, %.sroa.450.0.copyload.i.i
  br i1 %.not.i83, label %bb.bh, label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.i, !prof !20

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !4168
  unreachable

bb.bi:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4154
  br label %bb.bd

bb.bj:                                            ; preds = %bb.bf
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #23, !noalias !4153
  unreachable

bb.bk:                                            ; preds = %bb.bd
  %i.ft = icmp eq i64 %i.fd, -1
  br i1 %i.ft, label %bb.bn, label %bb.bm, !prof !20

bb.bl:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4154
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.i.thread

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4154
  call void %i.ek(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noundef nonnull %i.ei, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef %i.dy, i64 noundef %i.fg, i64 noundef %i.du), !noalias !4153, !inline_history !4155
  %i.fu = load i64, ptr %i.y, align 8, !range !8, !noalias !4154, !noundef !5
  %i.fv = trunc nuw i64 %i.fu to i1
  br i1 %i.fv, label %bb.al, label %._crit_edge

bb.bn:                                            ; preds = %bb.bk
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #23, !noalias !4153
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.i: ; preds = %bb.bg
  %.sroa.6302.16.insert.ext = and i64 %.sroa.548.0.copyload.i.i, 4294967295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4154
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.i.thread

bb.bo:                                            ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4154
  %i.fw = trunc nuw i64 %i.fl to i1
  br i1 %i.fw, label %bb.bp, label %.thread378

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.i.thread: ; preds = %bb.bl, %._crit_edge, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.i
  %.sroa.16.0360 = phi i64 [ %.sroa.6302.16.insert.ext, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.i ], [ undef, %._crit_edge ], [ undef, %bb.bl ]
  %.sroa.14.0359 = phi i64 [ %.sroa.450.0.copyload.i.i, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.i ], [ undef, %._crit_edge ], [ undef, %bb.bl ]
  %.sroa.9285.0358 = phi i64 [ %i.fl, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.i ], [ undef, %._crit_edge ], [ undef, %bb.bl ]
  %.sroa.0284.0357 = phi i64 [ 1, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.i ], [ 0, %._crit_edge ], [ 0, %bb.bl ]
  store i64 %.sroa.0284.0357, ptr %i.at, align 8, !noalias !4169
  %.sroa.9285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %.sroa.9285.0358, ptr %.sroa.9285.0..sroa_idx, align 8, !noalias !4169
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %.sroa.14.0359, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !4169
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %.sroa.16.0360, ptr %.sroa.16.0..sroa_idx, align 8, !noalias !4169
  br label %_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy6search.exit

bb.bp:                                            ; preds = %.thread, %bb.bo
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.at, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(5152) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy6search.exit

.thread378:                                       ; preds = %bb.al, %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !4170)
  br i1 %.not.i1.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.thread378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4171
  call fastcc void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa5regexNtB5_5Regex10try_searchB9_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1600) %i.fb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !4172
  %i.fx = load i64, ptr %i.s, align 8, !range !11, !noalias !4171, !noundef !5 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 2
  %i.fz = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  br i1 %i.fy, label %bb.bs, label %bb.bt

bb.br:                                            ; preds = %.thread378
  br i1 %.not2.i.i, label %bb.bx, label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !4171, !nonnull !5, !align !24, !noundef !5
  %i.gb = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.ga), !noalias !4172 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4171
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.at, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(5152) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy6search.exit

bb.bt:                                            ; preds = %bb.bq
  %.sroa.4321.0.copyload = load i64, ptr %i.fz, align 8, !noalias !4171
  %.sroa.5322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.7308.0..sroa_idx309 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7308.0..sroa_idx309, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5322.0..sroa_idx, i64 16, i1 false), !noalias !4173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4171
  store i64 %i.fx, ptr %i.at, align 8, !noalias !4173
  %.sroa.6305.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %.sroa.4321.0.copyload, ptr %.sroa.6305.0..sroa_idx306, align 8, !noalias !4173
  br label %_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy6search.exit

bb.bu:                                            ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !4174)
  %i.gc = load i64, ptr %1, align 8, !range !11, !alias.scope !4175, !noalias !4176, !noundef !5
  %.not.i5.i.i = icmp eq i64 %i.gc, 2
  br i1 %.not.i5.i.i, label %bb.bw, label %bb.bv, !prof !20

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4177
  call fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata6hybrid5regexNtB5_5Regex10try_search(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.t, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !4178
  %i.gd = load i64, ptr %i.t, align 8, !range !11, !noalias !4177, !noundef !5 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 2
  %i.gf = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.ge, label %bb.by, label %bb.bz

bb.bw:                                            ; preds = %bb.bu
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #23, !noalias !4179
  unreachable

bb.bx:                                            ; preds = %bb.br
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.at, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(5152) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy6search.exit

bb.by:                                            ; preds = %bb.bv
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !4177, !nonnull !5, !align !24, !noundef !5
  %i.gh = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.gg), !noalias !4178 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4177
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.at, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(5152) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy6search.exit

bb.bz:                                            ; preds = %bb.bv
  %.sroa.4318.0.copyload = load i64, ptr %i.gf, align 8, !noalias !4177
  %.sroa.5319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.7315.0..sroa_idx316 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7315.0..sroa_idx316, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5319.0..sroa_idx, i64 16, i1 false), !noalias !4173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4177
  store i64 %i.gd, ptr %i.at, align 8, !noalias !4173
  %.sroa.6312.0..sroa_idx313 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %.sroa.4318.0.copyload, ptr %.sroa.6312.0..sroa_idx313, align 8, !noalias !4173
  br label %_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy6search.exit

_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy6search.exit: ; preds = %bb.by, %bb.bz, %bb.bs, %bb.bt, %bb.bx, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.i.thread, %bb.bp
  %i.gi = load i64, ptr %i.at, align 8, !range !8, !noundef !5
  %i.gj = trunc nuw i64 %i.gi to i1
  br i1 %i.gj, label %bb.de, label %bb.di

bb.ca:                                            ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4181)
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !4181, !noalias !4182, !noundef !5 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !4181, !noalias !4182, !noundef !5 ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !alias.scope !4181, !noalias !4182, !nonnull !5, !noundef !5 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !4181, !noalias !4182, !noundef !5 ; 11 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 5104
  %i.gt = load ptr, ptr %i.gs, align 16, !alias.scope !4180, !noalias !4183, !nonnull !5, !noundef !5
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 5112
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !4180, !noalias !4183, !nonnull !5, !align !24, !noundef !5 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load i64, ptr %i.gw, align 8, !range !27, !invariant.load !5, !noalias !4184
  %i.gy = add nsw i64 %i.gx, -1
  %i.gz = and i64 %i.gy, -16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.hd = load ptr, ptr %i.hc, align 8, !invariant.load !5, !noalias !4184, !nonnull !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !4185
  call void %i.hd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noundef nonnull %i.hb, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gp, i64 noundef %i.gr, i64 noundef %i.gl, i64 noundef %i.gn), !noalias !4184, !inline_history !1
  %i.he = load i64, ptr %i.ar, align 8, !range !8, !noalias !4185, !noundef !5
  %i.hf = trunc nuw i64 %i.he to i1
  %i.hg = ptrtoint ptr %i.gp to i64               ; 3 uses
  br i1 %i.hf, label %.lr.ph507, label %._crit_edge508

.lr.ph507:                                        ; preds = %bb.ca
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.6.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6.i.sroa.7.0.copyload = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx, align 8, !noalias !4182 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4138.sroa.3.0..sroa.4138.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.6140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.7141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %.sroa.8142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 4768
  %i.hl = load i64, ptr %i.hk, align 16, !range !11
  %.not.i3 = icmp eq i64 %i.hl, 2
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 4304
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 3584 ; 2 uses
  %i.ho = load i128, ptr %i.hn, align 16, !range !12
  %.not2.i4 = icmp eq i128 %i.ho, 2
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.not.i90 = icmp ugt i64 %i.gn, %i.gr
  %i.hr = add i64 %i.gn, 1
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.6147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.7148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.8149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.9150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.ht = load i64, ptr %i.hs, align 16, !range !11
  %.not.i2 = icmp eq i64 %i.ht, 2                 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 3 uses
  %i.hv = load i128, ptr %0, align 16, !range !12
  %.not2.i = icmp eq i128 %i.hv, 2                ; 3 uses
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph507, %bb.dc
  %.sroa.0.0.i505 = phi i64 [ %i.gl, %.lr.ph507 ], [ %i.hz, %bb.dc ]
  %.sroa.03.0.i504 = phi i64 [ 0, %.lr.ph507 ], [ %i.hx, %bb.dc ] ; 2 uses
  %.sroa.038.0.i503 = phi i64 [ 0, %.lr.ph507 ], [ %.sroa.038.1.i, %bb.dc ] ; 2 uses
  %i.hw = load i64, ptr %i.hh, align 8, !noalias !4185, !noundef !5 ; 7 uses
  %i.hx = load i64, ptr %i.hi, align 8, !noalias !4185, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !4185
  %i.hy = icmp ult i64 %i.hw, %.sroa.038.0.i503
  br i1 %i.hy, label %.thread409, label %bb.cc

._crit_edge508:                                   ; preds = %bb.dc, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !4185
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.thread

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !4185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4186
  store i64 %i.gl, ptr %i.i, align 8, !noalias !4186
  store i64 %i.hw, ptr %i.hj, align 8, !noalias !4186
  %.not.i84 = icmp ugt i64 %i.hw, %i.gr
  %i.hz = add i64 %i.hw, 1                        ; 4 uses
  %.not8.i85 = icmp ugt i64 %i.gl, %i.hz
  %or.cond.i86 = or i1 %.not8.i85, %.not.i84
  br i1 %or.cond.i86, label %bb.cd, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit89, !prof !6

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4186
  store i64 %i.gr, ptr %i.h, align 8, !noalias !4186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4186
  store ptr %i.i, ptr %i.g, align 8, !noalias !4186
  %.sroa.42.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i87, align 8, !noalias !4186
  %i.ia = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.ia, align 8, !noalias !4186
  %.sroa.46.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i88, align 8, !noalias !4186
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !4186
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit89: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4186
  store i32 1, ptr %i.aq, align 8, !noalias !4185
  store i64 %i.hg, ptr %.sroa.4138.sroa.3.0..sroa.4138.0..sroa_idx.sroa_idx, align 8, !noalias !4185
  store i64 %i.gr, ptr %.sroa.5139.0..sroa_idx, align 8, !noalias !4185
  store i64 %i.gl, ptr %.sroa.6140.0..sroa_idx, align 8, !noalias !4185
  store i64 %i.hw, ptr %.sroa.7141.0..sroa_idx, align 8, !noalias !4185
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.8142.0..sroa_idx, align 8, !noalias !4185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !4185
  call void @llvm.experimental.noalias.scope.decl(metadata !4187)
  br i1 %.not.i3, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit89
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited23dfa_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.hm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, i64 noundef %.sroa.03.0.i504), !noalias !4188
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit

bb.cf:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit89
  br i1 %.not2.i4, label %bb.ch, label %bb.cg, !prof !20

bb.cg:                                            ; preds = %bb.cf
  %i.ib = load i64, ptr %i.hp, align 8, !range !11, !alias.scope !4187, !noalias !4189, !noundef !5
  %.not3.i5 = icmp eq i64 %i.ib, 2
  br i1 %.not3.i5, label %bb.cj, label %bb.ci, !prof !20

bb.ch:                                            ; preds = %bb.cf
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 143 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #23, !noalias !4190
  unreachable

bb.ci:                                            ; preds = %bb.cg
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited26hybrid_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.hn, ptr noalias noundef nonnull align 8 dereferenceable(352) %i.hp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, i64 noundef %.sroa.03.0.i504), !noalias !4184
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit

bb.cj:                                            ; preds = %bb.cg
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #23, !noalias !4190
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit: ; preds = %bb.ce, %bb.ci
  %i.ic = load i64, ptr %i.ap, align 8, !range !11, !noalias !4185, !noundef !5 ; 2 uses
  %i.id = icmp eq i64 %i.ic, 2
  %i.ie = load i64, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !4185 ; 8 uses
  br i1 %i.id, label %bb.dj, label %bb.ck

bb.ck:                                            ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit
  %.sroa.548.0.copyload.i = load i64, ptr %.sroa.548.0..sroa_idx.i, align 8, !noalias !4185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !4185
  %.sroa.4.16.extract.trunc.i = trunc i64 %.sroa.548.0.copyload.i to i32 ; 2 uses
  %i.if = trunc nuw i64 %i.ic to i1
  br i1 %i.if, label %bb.cl, label %bb.ct

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !4185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4191
  store i64 %i.ie, ptr %i.f, align 8, !noalias !4191
  store i64 %i.gn, ptr %i.hq, align 8, !noalias !4191
  %.not8.i91 = icmp ugt i64 %i.ie, %i.hr
  %or.cond.i92 = or i1 %.not.i90, %.not8.i91
  br i1 %or.cond.i92, label %bb.cm, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit95, !prof !6

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4191
  store i64 %i.gr, ptr %i.e, align 8, !noalias !4191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4191
  store ptr %i.f, ptr %i.d, align 8, !noalias !4191
  %.sroa.42.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i93, align 8, !noalias !4191
  %i.ig = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.ig, align 8, !noalias !4191
  %.sroa.46.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i94, align 8, !noalias !4191
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !4191
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit95: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4191
  store i32 2, ptr %i.ao, align 8, !noalias !4185
  store i32 %.sroa.4.16.extract.trunc.i, ptr %.sroa.4145.0..sroa_idx, align 4, !noalias !4185
  store i64 %i.hg, ptr %.sroa.5146.0..sroa_idx, align 8, !noalias !4185
  store i64 %i.gr, ptr %.sroa.6147.0..sroa_idx, align 8, !noalias !4185
  store i64 %i.ie, ptr %.sroa.7148.0..sroa_idx, align 8, !noalias !4185
  store i64 %i.gn, ptr %.sroa.8149.0..sroa_idx, align 8, !noalias !4185
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.9150.0..sroa_idx, align 8, !noalias !4185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !4185
  call void @llvm.experimental.noalias.scope.decl(metadata !4192)
  br i1 %.not.i2, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit95
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6stopat23dfa_try_search_half_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.hu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ao), !noalias !4193
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner26try_search_half_fwd_stopat.exit

bb.co:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit95
  br i1 %.not2.i, label %bb.cq, label %bb.cp, !prof !20

bb.cp:                                            ; preds = %bb.co
  %i.ih = load i64, ptr %1, align 8, !range !11, !alias.scope !4192, !noalias !4194, !noundef !5
  %.not3.i = icmp eq i64 %i.ih, 2
  br i1 %.not3.i, label %bb.cs, label %bb.cr, !prof !20

bb.cq:                                            ; preds = %bb.co
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 143 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #23, !noalias !4195
  unreachable

bb.cr:                                            ; preds = %bb.cp
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6stopat26hybrid_try_search_half_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(5152) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ao), !noalias !4184
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner26try_search_half_fwd_stopat.exit

bb.cs:                                            ; preds = %bb.cp
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #23, !noalias !4195
  unreachable

end_hunk_12
begin_hunk_13_@_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy12search_slots:bb.a
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  br i1 %i.lf, label %bb.el, label %bb.em

bb.ek:                                            ; preds = %bb.ei
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #23, !noalias !4227
  unreachable

bb.el:                                            ; preds = %bb.ej
  %i.lh = load ptr, ptr %i.lg, align 8, !noalias !4225, !nonnull !5, !align !24, !noundef !5
  %i.li = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.lh), !noalias !4226
  br label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i

bb.em:                                            ; preds = %bb.ej
  %.sroa.4187.0.copyload = load i64, ptr %i.lg, align 8, !noalias !4225
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.5188.0.copyload = load i64, ptr %.sroa.5188.0..sroa_idx, align 8, !noalias !4225
  %.sroa.6189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.6189.0.copyload = load i32, ptr %.sroa.6189.0..sroa_idx, align 8, !noalias !4225
  br label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i

_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i: ; preds = %bb.em, %bb.el
  %.sroa.8184.0 = phi i32 [ undef, %bb.el ], [ %.sroa.6189.0.copyload, %bb.em ]
  %.sroa.7183.0 = phi i64 [ undef, %bb.el ], [ %.sroa.5188.0.copyload, %bb.em ]
  %.sroa.5182.0 = phi i64 [ %i.li, %bb.el ], [ %.sroa.4187.0.copyload, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4225
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i

bb.en:                                            ; preds = %bb.eg
  %i.lj = load ptr, ptr %i.lc, align 8, !noalias !4220, !nonnull !5, !align !24, !noundef !5
  %i.lk = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.lj), !noalias !4221
  br label %bb.ep

bb.eo:                                            ; preds = %bb.eg
  %.sroa.4.0.copyload.i.i = load i64, ptr %i.lc, align 8, !noalias !4220
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.57.i.i.sroa.0.0.copyload = load i64, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !4220
  %.sroa.57.i.i.sroa.4.0..sroa.57.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.57.i.i.sroa.4.0.copyload = load i32, ptr %.sroa.57.i.i.sroa.4.0..sroa.57.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !4220
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.sroa.6.i.i.sroa.4.0 = phi i32 [ undef, %bb.en ], [ %.sroa.57.i.i.sroa.4.0.copyload, %bb.eo ]
  %.sroa.6.i.i.sroa.0.0 = phi i64 [ undef, %bb.en ], [ %.sroa.57.i.i.sroa.0.0.copyload, %bb.eo ]
  %.sroa.5.0.i.i = phi i64 [ %i.lk, %bb.en ], [ %.sroa.4.0.copyload.i.i, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4220
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i: ; preds = %bb.ep, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i
  %.sroa.9169.sroa.6.0 = phi i32 [ %.sroa.6.i.i.sroa.4.0, %bb.ep ], [ %.sroa.8184.0, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i ]
  %.sroa.9169.sroa.0.0 = phi i64 [ %.sroa.6.i.i.sroa.0.0, %bb.ep ], [ %.sroa.7183.0, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i ]
  %.sroa.7168.0 = phi i64 [ %.sroa.5.0.i.i, %bb.ep ], [ %.sroa.5182.0, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i ]
  %.sroa.0167.0 = phi i64 [ %i.la, %bb.ep ], [ %i.le, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine10try_search.exit.i ]
  switch i64 %.sroa.0167.0, label %bb.er [
    i64 0, label %bb.eq
    i64 2, label %.sink.split605
  ]

.sink.split605:                                   ; preds = %bb.eh, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i
  %i.ll = call { i32, i32 } @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core19search_slots_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4) ; 2 uses
  %i.lm = extractvalue { i32, i32 } %i.ll, 0
  %i.ln = extractvalue { i32, i32 } %i.ll, 1
  br label %bb.eq

bb.eq:                                            ; preds = %.sink.split605, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i
  %.sroa.9.2.i = phi i32 [ undef, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i ], [ %i.ln, %.sink.split605 ]
  %.sroa.0.2.i = phi i32 [ 0, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i ], [ %i.lm, %.sink.split605 ]
  %i.lo = insertvalue { i32, i32 } poison, i32 %.sroa.0.2.i, 0
  %i.lp = insertvalue { i32, i32 } %i.lo, i32 %.sroa.9.2.i, 1
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit

bb.er:                                            ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core18try_search_mayfail.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !4204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !4204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false), !alias.scope !4228, !noalias !4203
  call fastcc void @_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input4spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.ak, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.aj, i64 noundef %.sroa.7168.0, i64 noundef %.sroa.9169.sroa.0.0), !noalias !4203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4204
  call void @llvm.experimental.noalias.scope.decl(metadata !4229)
  store i32 2, ptr %i.ak, align 8, !alias.scope !4230, !noalias !4231
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %.sroa.9169.sroa.6.0, ptr %i.lq, align 4, !alias.scope !4230, !noalias !4231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false), !alias.scope !4232, !noalias !4203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !4204
  %i.lr = call { i32, i32 } @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core19search_slots_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4) ; 2 uses
  %i.ls = extractvalue { i32, i32 } %i.lr, 0
  %i.lt = trunc i32 %i.ls to i1
  br i1 %i.lt, label %bb.es, label %bb.et, !prof !19

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !4204
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit

bb.et:                                            ; preds = %bb.er
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #23
  unreachable

_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy19copy_match_to_slots.exit.i, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit.i, %bb.eq, %bb.es
  %.merged.i = phi { i32, i32 } [ %i.kz, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit.i ], [ %i.lp, %bb.eq ], [ %i.lr, %bb.es ], [ %i.ky, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy19copy_match_to_slots.exit.i ] ; 2 uses
  %i.lu = extractvalue { i32, i32 } %.merged.i, 0
  %i.lv = extractvalue { i32, i32 } %.merged.i, 1
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.thread
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy14is_accelerated(ptr noalias noundef readonly align 16 captures(none) dereferenceable(5152) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5128
  %i.b = load i8, ptr %i.a, align 8, !range !21, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy25which_overlapping_matches(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(5152) %0, ptr noalias noundef align 8 dereferenceable(1400) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef align 8 dereferenceable(24) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.b = load i64, ptr %i.a, align 16, !range !11, !alias.scope !4238, !noalias !4239, !noundef !5
  %.not.i = icmp eq i64 %i.b, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.d = tail call fastcc noundef align 8 ptr @_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton29try_which_overlapping_matchesB9_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef align 8 dereferenceable(24) %3), !noalias !4240 ; 2 uses
  %.not8.i = icmp eq ptr %i.d, null
  br i1 %.not8.i, label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy25which_overlapping_matches.exit, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load i128, ptr %0, align 16, !range !12, !alias.scope !4238, !noalias !4239, !noundef !5
  %.not7.i = icmp eq i128 %i.e, 2
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc i64 @_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_12HybridEngine29try_which_overlapping_matches(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef align 8 dereferenceable(1400) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef align 8 dereferenceable(24) %3)
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.e, label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy25which_overlapping_matches.exit

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 2 uses
  %i.j = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_11PikeVMCache3get(ptr noalias noundef nonnull align 8 dereferenceable(216) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i)
  tail call void @_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM21which_overlapping_imp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(216) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy25which_overlapping_matches.exit

bb.f:                                             ; preds = %bb.b
  %i.k = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.d), !noalias !4240 ; 0 uses
  br label %bb.e

_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy25which_overlapping_matches.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy4name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias readonly align 16 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @119, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 13, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy6search(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(5152) %1, ptr noalias noundef align 8 dereferenceable(1400) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 13 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 14 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %.val = load i32, ptr %3, align 8, !range !16, !noundef !5
  %.not = icmp eq i32 %.val, 0
  br i1 %.not, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4295)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !4295, !noalias !4296, !noundef !5 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !4295, !noalias !4296, !noundef !5 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !4295, !noalias !4296, !nonnull !5, !noundef !5 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !4295, !noalias !4296, !noundef !5 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 5104
  %i.y = load ptr, ptr %i.x, align 16, !alias.scope !4294, !noalias !4297, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 5112
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !4294, !noalias !4297, !nonnull !5, !align !24, !noundef !5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !27, !invariant.load !5, !noalias !4298
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !5, !noalias !4298, !nonnull !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4299
  call void %i.ai(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w, i64 noundef %i.q, i64 noundef %i.s), !noalias !4298, !inline_history !1
  %i.aj = load i64, ptr %i.o, align 8, !range !8, !noalias !4299, !noundef !5
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = ptrtoint ptr %i.u to i64                ; 2 uses
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.6.i.sroa.7.0.copyload = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx, align 8, !noalias !4296 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4768
  %i.aq = load i64, ptr %i.ap, align 16, !range !11
  %.not.i2 = icmp eq i64 %i.aq, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4304
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 3584 ; 2 uses
  %i.at = load i128, ptr %i.as, align 16, !range !12
  %.not2.i3 = icmp eq i128 %i.at, 2
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 2 uses
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.not.i18 = icmp ugt i64 %i.s, %i.w
  %i.aw = add i64 %i.s, 1
  %.sroa.4.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 2704
  %i.ay = load i64, ptr %i.ax, align 16, !range !11
  %.not.i1 = icmp eq i64 %i.ay, 2                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 1440 ; 2 uses
  %i.ba = load i128, ptr %1, align 16, !range !12
  %.not2.i = icmp eq i128 %i.ba, 2                ; 2 uses
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ad
  %.sroa.0.0.i142 = phi i64 [ %i.q, %.lr.ph ], [ %i.be, %bb.ad ]
  %.sroa.03.0.i141 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %bb.ad ] ; 2 uses
  %.sroa.038.0.i140 = phi i64 [ 0, %.lr.ph ], [ %.sroa.038.1.i, %bb.ad ] ; 2 uses
  %i.bb = load i64, ptr %i.am, align 8, !noalias !4299, !noundef !5 ; 7 uses
  %i.bc = load i64, ptr %i.an, align 8, !noalias !4299, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4299
  %i.bd = icmp ult i64 %i.bb, %.sroa.038.0.i140
  br i1 %i.bd, label %.thread108, label %bb.d

._crit_edge:                                      ; preds = %bb.ad, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4299
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4300
  store i64 %i.q, ptr %i.f, align 8, !noalias !4300
  store i64 %i.bb, ptr %i.ao, align 8, !noalias !4300
  %.not.i17 = icmp ugt i64 %i.bb, %i.w
  %i.be = add i64 %i.bb, 1                        ; 4 uses
  %.not8.i = icmp ugt i64 %i.q, %i.be
  %or.cond.i = or i1 %.not8.i, %.not.i17
  br i1 %or.cond.i, label %bb.e, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit, !prof !6

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4300
  store i64 %i.w, ptr %i.e, align 8, !noalias !4300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4300
  store ptr %i.f, ptr %i.d, align 8, !noalias !4300
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4300
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.bf, align 8, !noalias !4300
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !4300
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !4300
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4300
  store i32 1, ptr %i.n, align 8, !noalias !4299
  store i64 %i.al, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !noalias !4299
  store i64 %i.w, ptr %.sroa.527.0..sroa_idx, align 8, !noalias !4299
  store i64 %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !4299
  store i64 %i.bb, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !4299
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !4299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4299
  call void @llvm.experimental.noalias.scope.decl(metadata !4301)
  br i1 %.not.i2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited23dfa_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, i64 noundef %.sroa.03.0.i141), !noalias !4302
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit

bb.g:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  br i1 %.not2.i3, label %bb.i, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  %i.bg = load i64, ptr %i.au, align 8, !range !11, !alias.scope !4301, !noalias !4303, !noundef !5
  %.not3.i4 = icmp eq i64 %i.bg, 2
  br i1 %.not3.i4, label %bb.k, label %bb.j, !prof !20

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 143 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #23, !noalias !4304
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited26hybrid_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(352) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, i64 noundef %.sroa.03.0.i141), !noalias !4298
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit

bb.k:                                             ; preds = %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #23, !noalias !4304
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit: ; preds = %bb.f, %bb.j
  %i.bh = load i64, ptr %i.m, align 8, !range !11, !noalias !4299, !noundef !5 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 2
  %i.bj = load i64, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !4299 ; 6 uses
  br i1 %i.bi, label %bb.aq, label %bb.l

bb.l:                                             ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit
  %.sroa.548.0.copyload.i = load i64, ptr %.sroa.548.0..sroa_idx.i, align 8, !noalias !4299 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4299
  %.sroa.4.16.extract.trunc.i = trunc i64 %.sroa.548.0.copyload.i to i32
  %i.bk = trunc nuw i64 %i.bh to i1
  br i1 %i.bk, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4305
  store i64 %i.bj, ptr %i.c, align 8, !noalias !4305
  store i64 %i.s, ptr %i.av, align 8, !noalias !4305
  %.not8.i19 = icmp ugt i64 %i.bj, %i.aw
  %or.cond.i20 = or i1 %.not.i18, %.not8.i19
  br i1 %or.cond.i20, label %bb.n, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit23, !prof !6

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4305
  store i64 %i.w, ptr %i.b, align 8, !noalias !4305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4305
  store ptr %i.c, ptr %i.a, align 8, !noalias !4305
  %.sroa.42.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i21, align 8, !noalias !4305
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.bl, align 8, !noalias !4305
  %.sroa.46.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i22, align 8, !noalias !4305
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !4305
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit23: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4305
  store i32 2, ptr %i.l, align 8, !noalias !4299
  store i32 %.sroa.4.16.extract.trunc.i, ptr %.sroa.4.0..sroa_idx30, align 4, !noalias !4299
  store i64 %i.al, ptr %.sroa.531.0..sroa_idx, align 8, !noalias !4299
  store i64 %i.w, ptr %.sroa.632.0..sroa_idx, align 8, !noalias !4299
  store i64 %i.bj, ptr %.sroa.733.0..sroa_idx, align 8, !noalias !4299
  store i64 %i.s, ptr %.sroa.834.0..sroa_idx, align 8, !noalias !4299
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.935.0..sroa_idx, align 8, !noalias !4299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4299
  call void @llvm.experimental.noalias.scope.decl(metadata !4306)
  br i1 %.not.i1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit23
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6stopat23dfa_try_search_half_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l), !noalias !4307
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner26try_search_half_fwd_stopat.exit

bb.p:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit23
  br i1 %.not2.i, label %bb.r, label %bb.q, !prof !20

bb.q:                                             ; preds = %bb.p
  %i.bm = load i64, ptr %2, align 8, !range !11, !alias.scope !4306, !noalias !4308, !noundef !5
  %.not3.i = icmp eq i64 %i.bm, 2
  br i1 %.not3.i, label %bb.t, label %bb.s, !prof !20

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 143 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #23, !noalias !4309
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6stopat26hybrid_try_search_half_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(5152) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l), !noalias !4298
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner26try_search_half_fwd_stopat.exit

bb.t:                                             ; preds = %bb.q
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #23, !noalias !4309
  unreachable

end_hunk_13
begin_hunk_14_@_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy6search:bb.a
  %.not.i5.i12 = icmp eq i64 %i.cd, 2
  br i1 %.not.i5.i12, label %bb.am, label %bb.al, !prof !20

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4322
  call fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata6hybrid5regexNtB5_5Regex10try_search(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !4323
  %i.ce = load i64, ptr %i.h, align 8, !range !11, !noalias !4322, !noundef !5 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.cf, label %bb.ao, label %bb.ap

bb.am:                                            ; preds = %bb.ak
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #23, !noalias !4322
  unreachable

bb.an:                                            ; preds = %bb.ah
  tail call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

bb.ao:                                            ; preds = %bb.al
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !4322, !nonnull !5, !align !24, !noundef !5
  %i.ci = tail call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.ch), !noalias !4323 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4322
  tail call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

bb.ap:                                            ; preds = %bb.al
  %.sroa.474.0.copyload = load i64, ptr %i.cg, align 8, !noalias !4322
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.771.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.771.0..sroa_idx72, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.575.0..sroa_idx, i64 16, i1 false), !noalias !4318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4322
  store i64 %i.ce, ptr %0, align 8, !noalias !4318
  %.sroa.668.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.474.0.copyload, ptr %.sroa.668.0..sroa_idx69, align 8, !noalias !4318
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

bb.aq:                                            ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4299
  %i.cj = trunc nuw i64 %i.bj to i1
  br i1 %i.cj, label %bb.ar, label %.thread108

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.thread: ; preds = %bb.ac, %._crit_edge, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit
  %.sroa.025.286 = phi i64 [ 1, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit ], [ 0, %._crit_edge ], [ 0, %bb.ac ]
  %.sroa.9.285 = phi i64 [ %i.bj, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit ], [ undef, %._crit_edge ], [ undef, %bb.ac ]
  %.sroa.14.284 = phi i64 [ %.sroa.450.0.copyload.i, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit ], [ undef, %._crit_edge ], [ undef, %bb.ac ]
  %.sroa.16.283 = phi i64 [ %.sroa.638.16.insert.ext, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit ], [ undef, %._crit_edge ], [ undef, %bb.ac ]
  store i64 %.sroa.025.286, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.285, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14.284, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.283, ptr %.sroa.16.0..sroa_idx, align 8
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

bb.ar:                                            ; preds = %.thread, %bb.aq
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

.thread108:                                       ; preds = %bb.c, %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !4324)
  br i1 %.not.i1, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.thread108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4325
  call fastcc void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa5regexNtB5_5Regex10try_searchB9_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1600) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !4326
  %i.ck = load i64, ptr %i.i, align 8, !range !11, !noalias !4325, !noundef !5 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.cl, label %bb.au, label %bb.av

bb.at:                                            ; preds = %.thread108
  br i1 %.not2.i, label %bb.az, label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !4325, !nonnull !5, !align !24, !noundef !5
  %i.co = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.cn), !noalias !4326 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4325
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

bb.av:                                            ; preds = %bb.as
  %.sroa.457.0.copyload = load i64, ptr %i.cm, align 8, !noalias !4325
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.744.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.744.0..sroa_idx45, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.558.0..sroa_idx, i64 16, i1 false), !noalias !4327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4325
  store i64 %i.ck, ptr %0, align 8, !noalias !4327
  %.sroa.641.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.457.0.copyload, ptr %.sroa.641.0..sroa_idx42, align 8, !noalias !4327
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

bb.aw:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !4328)
  %i.cp = load i64, ptr %2, align 8, !range !11, !alias.scope !4329, !noalias !4330, !noundef !5
  %.not.i5.i = icmp eq i64 %i.cp, 2
  br i1 %.not.i5.i, label %bb.ay, label %bb.ax, !prof !20

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4331
  call fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata6hybrid5regexNtB5_5Regex10try_search(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !4332
  %i.cq = load i64, ptr %i.j, align 8, !range !11, !noalias !4331, !noundef !5 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %i.cr, label %bb.ba, label %bb.bb

bb.ay:                                            ; preds = %bb.aw
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #23, !noalias !4331
  unreachable

bb.az:                                            ; preds = %bb.at
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

bb.ba:                                            ; preds = %bb.ax
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !4331, !nonnull !5, !align !24, !noundef !5
  %i.cu = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.ct), !noalias !4332 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4331
  call void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

bb.bb:                                            ; preds = %bb.ax
  %.sroa.454.0.copyload = load i64, ptr %i.cs, align 8, !noalias !4331
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.751.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.751.0..sroa_idx52, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.555.0..sroa_idx, i64 16, i1 false), !noalias !4327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4331
  store i64 %i.cq, ptr %0, align 8, !noalias !4327
  %.sroa.648.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.454.0.copyload, ptr %.sroa.648.0..sroa_idx49, align 8, !noalias !4327
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14

_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy6search.exit14: ; preds = %bb.ba, %bb.bb, %bb.au, %bb.av, %bb.ao, %bb.ap, %bb.ai, %bb.aj, %bb.az, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.thread, %bb.ar, %bb.an
  ret void
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInnerNtB5_8Strategy8is_match(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(5152) %0, ptr noalias noundef align 8 dereferenceable(1400) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [48 x i8], align 8                ; 13 uses
  %i.p = alloca [24 x i8], align 8                ; 10 uses
  %i.q = load i32, ptr %2, align 8, !range !16, !noundef !5
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4375)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.t = load i64, ptr %i.s, align 16, !range !11, !alias.scope !4374, !noalias !4376, !noundef !5
  %.not.i5 = icmp eq i64 %i.t, 2
  br i1 %.not.i5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.u, ptr %i.i, align 8, !noalias !4379
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %i.w = load i8, ptr %i.v, align 8, !range !21, !alias.scope !4380, !noalias !4381, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2233
  %i.y = load i8, ptr %i.x, align 1, !range !21, !alias.scope !4378, !noalias !4381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4379
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_fwdRINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !4382
  %i.z = load i64, ptr %i.h, align 8, !range !11, !noalias !4379, !noundef !5 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !4379 ; 2 uses
  br i1 %i.aa, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread39, label %bb.d

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread39: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.ad = trunc nuw i8 %i.w to i1
  %i.ae = trunc nuw i8 %i.y to i1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4379
  %i.af = trunc nuw i64 %i.z to i1
  %i.ag = and i1 %i.af, %i.ad
  %i.ah = select i1 %i.ag, i1 %i.ae, i1 false, !prof !28
  br i1 %i.ah, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread, !prof !26

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.o

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit: ; preds = %bb.d
  %i.ai = ptrtoint ptr %i.ac to i64               ; 2 uses
  %.sroa.69.16.extract.trunc11.i = trunc i64 %.sroa.5.0.copyload.i to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB1A_9automaton9Automaton14try_search_fwd0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef %i.ai, i32 noundef %.sroa.69.16.extract.trunc11.i, i64 noundef %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i), !noalias !4375
  %.pr = load i64, ptr %i.k, align 8, !noalias !4377 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.aj = icmp eq i64 %.pr, 2
  br i1 %i.aj, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge, label %bb.o

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !4377
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.ak = load i128, ptr %0, align 16, !range !12, !alias.scope !4374, !noalias !4376, !noundef !5
  %.not16.i = icmp eq i128 %i.ak, 2
  br i1 %.not16.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4383)
  %i.al = load i64, ptr %1, align 8, !range !11, !alias.scope !4384, !noalias !4385, !noundef !5
  %.not.i.i = icmp eq i64 %i.al, 2
  br i1 %.not.i.i, label %bb.k, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4386
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4387)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.an = load ptr, ptr %i.am, align 16, !alias.scope !4387, !noalias !4388, !nonnull !5, !noundef !5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 386
  %i.ap = load i8, ptr %i.ao, align 2, !range !21, !noalias !4389, !noundef !5
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 387
  %i.as = load i8, ptr %i.ar, align 1, !range !21, !noalias !4389, !noundef !5
  %i.at = trunc nuw i8 %i.as to i1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i7.not = phi i1 [ %i.at, %bb.h ], [ false, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4389
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata6hybrid6search8find_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !4390
  %i.au = load i64, ptr %i.g, align 8, !range !11, !noalias !4389, !noundef !5 ; 3 uses
  %i.av = icmp eq i64 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !4389 ; 2 uses
  br i1 %i.av, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread42, label %bb.j

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread42: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4389
  br label %bb.m

bb.j:                                             ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.0.copyload.i9 = load i64, ptr %.sroa.5.0..sroa_idx.i8, align 8, !noalias !4389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4389
  %i.ay = trunc nuw i64 %i.au to i1
  %brmerge103.not = select i1 %i.ay, i1 %.sroa.0.0.i7.not, i1 false
  br i1 %brmerge103.not, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread, !prof !26

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit: ; preds = %bb.j
  %i.az = ptrtoint ptr %i.ax to i64               ; 2 uses
  %.sroa.69.16.extract.trunc11.i12 = trunc i64 %.sroa.5.0.copyload.i9 to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvMs_NtNtB6_6hybrid3dfaNtB1x_3DFA14try_search_fwd0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef %i.az, i32 noundef %.sroa.69.16.extract.trunc11.i12, i64 noundef %i.az, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1), !noalias !4391
  %.pr40 = load i64, ptr %i.j, align 8, !noalias !4386 ; 2 uses
  %i.ba = icmp eq i64 %.pr40, 2
  br i1 %i.ba, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre84 = load ptr, ptr %.phi.trans.insert83, align 8, !noalias !4386
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #23, !noalias !4386
  unreachable

bb.l:                                             ; preds = %bb.e
  %i.bb = tail call noundef zeroext i1 @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core15is_match_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.m:                                             ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread42
  %i.bc = phi ptr [ %.pre84, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge ], [ %i.ax, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread42 ]
  %i.bd = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.bc), !noalias !4391 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4386
  %i.be = call noundef zeroext i1 @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core15is_match_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread: ; preds = %bb.j, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %i.bf = phi i64 [ %.pr40, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit ], [ %i.au, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4386
  %i.bg = icmp eq i64 %i.bf, 1
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.n:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread39
  %i.bh = phi ptr [ %.pre, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge ], [ %i.ac, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread39 ]
  %i.bi = call noundef i64 @_RNvXsc_NtNtCs98D8VPWzHuM_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.bh), !noalias !4375 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4377
  %i.bj = call noundef zeroext i1 @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core15is_match_nofail(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(3584) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.o:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit
  %i.bk = phi i64 [ %i.z, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread ], [ %.pr, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4377
  %i.bl = icmp eq i64 %i.bk, 1
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4393)
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !4393, !noalias !4394, !noundef !5 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !4393, !noalias !4394, !noundef !5 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !4393, !noalias !4394, !nonnull !5, !noundef !5 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !4393, !noalias !4394, !noundef !5 ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5104
  %i.bv = load ptr, ptr %i.bu, align 16, !alias.scope !4392, !noalias !4395, !nonnull !5, !noundef !5
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 5112
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !4392, !noalias !4395, !nonnull !5, !align !24, !noundef !5 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !27, !invariant.load !5, !noalias !4396
  %i.ca = add nsw i64 %i.bz, -1
  %i.cb = and i64 %i.ca, -16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !invariant.load !5, !noalias !4396, !nonnull !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4397
  call void %i.cf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull %i.cd, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %i.bt, i64 noundef %i.bn, i64 noundef %i.bp), !noalias !4396, !inline_history !1
  %i.cg = load i64, ptr %i.p, align 8, !range !8, !noalias !4397, !noundef !5
  %i.ch = trunc nuw i64 %i.cg to i1
  %i.ci = ptrtoint ptr %i.br to i64               ; 2 uses
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6.i.sroa.7.0.copyload = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx, align 8, !noalias !4394 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4768
  %i.cn = load i64, ptr %i.cm, align 16, !range !11
  %.not.i2 = icmp eq i64 %i.cn, 2
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4304
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 3584 ; 2 uses
  %i.cq = load i128, ptr %i.cp, align 16, !range !12
  %.not2.i3 = icmp eq i128 %i.cq, 2
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.not.i14 = icmp ugt i64 %i.bp, %i.bt
  %i.ct = add i64 %i.bp, 1
  %.sroa.4.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.cv = load i64, ptr %i.cu, align 16, !range !11
  %.not.i1 = icmp eq i64 %i.cv, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.cx = load i128, ptr %0, align 16, !range !12
  %.not2.i = icmp eq i128 %i.cx, 2
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.ar
  %.sroa.0.0.i73 = phi i64 [ %i.bn, %.lr.ph ], [ %i.db, %bb.ar ]
  %.sroa.03.0.i72 = phi i64 [ 0, %.lr.ph ], [ %i.cz, %bb.ar ] ; 2 uses
  %.sroa.038.0.i71 = phi i64 [ 0, %.lr.ph ], [ %.sroa.038.1.i, %bb.ar ] ; 2 uses
  %i.cy = load i64, ptr %i.cj, align 8, !noalias !4397, !noundef !5 ; 7 uses
  %i.cz = load i64, ptr %i.ck, align 8, !noalias !4397, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4397
  %i.da = icmp ult i64 %i.cy, %.sroa.038.0.i71
  br i1 %i.da, label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.thread46, label %bb.r

._crit_edge:                                      ; preds = %bb.ar, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4397
  br label %_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy8is_match.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4398
  store i64 %i.bn, ptr %i.f, align 8, !noalias !4398
  store i64 %i.cy, ptr %i.cl, align 8, !noalias !4398
  %.not.i13 = icmp ugt i64 %i.cy, %i.bt
  %i.db = add i64 %i.cy, 1                        ; 4 uses
  %.not8.i = icmp ugt i64 %i.bn, %i.db
  %or.cond.i = or i1 %.not8.i, %.not.i13
  br i1 %or.cond.i, label %bb.s, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit, !prof !6

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4398
  store i64 %i.bt, ptr %i.e, align 8, !noalias !4398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4398
  store ptr %i.f, ptr %i.d, align 8, !noalias !4398
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4398
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.dc, align 8, !noalias !4398
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !4398
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !4398
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4398
  store i32 1, ptr %i.o, align 8, !noalias !4397
  store i64 %i.ci, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !noalias !4397
  store i64 %i.bt, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !4397
  store i64 %i.bn, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !4397
  store i64 %i.cy, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !4397
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.822.0..sroa_idx, align 8, !noalias !4397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4397
  call void @llvm.experimental.noalias.scope.decl(metadata !4399)
  br i1 %.not.i2, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited23dfa_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.co, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, i64 noundef %.sroa.03.0.i72), !noalias !4400
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit

bb.u:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  br i1 %.not2.i3, label %bb.w, label %bb.v, !prof !20

bb.v:                                             ; preds = %bb.u
  %i.dd = load i64, ptr %i.cr, align 8, !range !11, !alias.scope !4399, !noalias !4401, !noundef !5
  %.not3.i4 = icmp eq i64 %i.dd, 2
  br i1 %.not3.i4, label %bb.y, label %bb.x, !prof !20

bb.w:                                             ; preds = %bb.u
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 143 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #23, !noalias !4402
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta7limited26hybrid_try_search_half_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.cp, ptr noalias noundef nonnull align 8 dereferenceable(352) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, i64 noundef %.sroa.03.0.i72), !noalias !4396
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit

bb.y:                                             ; preds = %bb.v
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #23, !noalias !4402
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit: ; preds = %bb.t, %bb.x
  %i.de = load i64, ptr %i.n, align 8, !range !11, !noalias !4397, !noundef !5 ; 2 uses
  %i.df = icmp eq i64 %i.de, 2
  br i1 %i.df, label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.thread48, label %bb.z

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.thread48: ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4397
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner15try_search_full.exit.thread46.sink.split

bb.z:                                             ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner27try_search_half_rev_limited.exit
  %.sroa.447.0.copyload.i = load i64, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !4397 ; 4 uses
  %.sroa.548.0.copyload.i = load i64, ptr %.sroa.548.0..sroa_idx.i, align 8, !noalias !4397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4397
  %.sroa.4.16.extract.trunc.i = trunc i64 %.sroa.548.0.copyload.i to i32
  %i.dg = trunc nuw i64 %i.de to i1
  br i1 %i.dg, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4403
  store i64 %.sroa.447.0.copyload.i, ptr %i.c, align 8, !noalias !4403
  store i64 %i.bp, ptr %i.cs, align 8, !noalias !4403
  %.not8.i15 = icmp ugt i64 %.sroa.447.0.copyload.i, %i.ct
  %or.cond.i16 = or i1 %.not.i14, %.not8.i15
  br i1 %or.cond.i16, label %bb.ab, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit19, !prof !6

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4403
  store i64 %i.bt, ptr %i.b, align 8, !noalias !4403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4403
  store ptr %i.c, ptr %i.a, align 8, !noalias !4403
  %.sroa.42.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i17, align 8, !noalias !4403
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dh, align 8, !noalias !4403
  %.sroa.46.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i18, align 8, !noalias !4403
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !4403
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit19: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4403
  store i32 2, ptr %i.m, align 8, !noalias !4397
  store i32 %.sroa.4.16.extract.trunc.i, ptr %.sroa.4.0..sroa_idx25, align 4, !noalias !4397
  store i64 %i.ci, ptr %.sroa.526.0..sroa_idx, align 8, !noalias !4397
  store i64 %i.bt, ptr %.sroa.627.0..sroa_idx, align 8, !noalias !4397
  store i64 %.sroa.447.0.copyload.i, ptr %.sroa.728.0..sroa_idx, align 8, !noalias !4397
  store i64 %i.bp, ptr %.sroa.829.0..sroa_idx, align 8, !noalias !4397
  store i64 %.sroa.6.i.sroa.7.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !4397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4397
  call void @llvm.experimental.noalias.scope.decl(metadata !4404)
  br i1 %.not.i1, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit19
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6stopat23dfa_try_search_half_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m), !noalias !4405
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner26try_search_half_fwd_stopat.exit

bb.ad:                                            ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit19
  br i1 %.not2.i, label %bb.af, label %bb.ae, !prof !20

bb.ae:                                            ; preds = %bb.ad
  %i.di = load i64, ptr %1, align 8, !range !11, !alias.scope !4404, !noalias !4406, !noundef !5
  %.not3.i = icmp eq i64 %i.di, 2
  br i1 %.not3.i, label %bb.ah, label %bb.ag, !prof !20

bb.af:                                            ; preds = %bb.ad
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 143 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #23, !noalias !4407
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6stopat26hybrid_try_search_half_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(5152) %0, ptr noalias noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m), !noalias !4396
  br label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_12ReverseInner26try_search_half_fwd_stopat.exit

end_hunk_14
begin_hunk_15_@_RNvXsf_NtCs4NRVxsYgnAr_4core3fmtbNtB5_5Debug3fmt
define internal noundef zeroext i1 @_RNvXsf_NtCs4NRVxsYgnAr_4core3fmtbNtB5_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCs4NRVxsYgnAr_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsh_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_6PikeVMNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtNtCs9OSMwK5JXHk_12aho_corasick6packed3apiNtB5_8SearcherNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 9, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @170, ptr noalias noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 11, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @171, ptr noalias noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsl_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_18BoundedBacktrackerNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @175)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtNtCs9OSMwK5JXHk_12aho_corasick6packed3apiNtB5_10SearchKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !5
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 9)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @177)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfoNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @178)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXso_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB5_14GroupInfoErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @180)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsp_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePassNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(376) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @183)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_6HybridNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(1440) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @185)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsz_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_13ReverseHybridNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @187)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton29try_which_overlapping_matchesB9_(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.g = load i8, ptr %i.f, align 8, !range !21, !alias.scope !4415, !noalias !4416, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 793
  %i.i = load i8, ptr %i.h, align 1, !range !21, !alias.scope !4417, !noalias !4416
  %i.j = trunc nuw i8 %i.g to i1
  %i.k = trunc nuw i8 %i.i to i1
  %.sroa.01.0.not.i = select i1 %i.j, i1 %i.k, i1 false
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i8, ptr %i.n, align 8, !range !21
  %.fr25 = freeze i8 %i.o
  %i.p = trunc i8 %.fr25 to i1                    ; 2 uses
  %.sroa.01.0.not.i.fr = freeze i1 %.sroa.01.0.not.i
  br i1 %.sroa.01.0.not.i.fr, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.a
  br i1 %i.p, label %.split.us.split.us, label %.split.us.split

.split.us.split.us:                               ; preds = %.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4418)
  %i.q = call noundef align 8 ptr @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search20find_overlapping_fwdINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) ; 2 uses
  %.not.i.us.us = icmp eq ptr %i.q, null
  br i1 %.not.i.us.us, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread.us.us, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread.us.us: ; preds = %.split.us.split.us
  %.sroa.03.0.copyload.us.us = load i64, ptr %i.a, align 8
  %i.r = trunc nuw i64 %.sroa.03.0.copyload.us.us to i1
  br i1 %i.r, label %.split15.us.sink.split, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10

.split.us.split:                                  ; preds = %.split.us, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !4417)
  call void @llvm.experimental.noalias.scope.decl(metadata !4418)
  %i.s = call noundef align 8 ptr @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search20find_overlapping_fwdINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) ; 2 uses
  %.not.i.us = icmp eq ptr %i.s, null
  br i1 %.not.i.us, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread.us, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread.us: ; preds = %.split.us.split
  %.sroa.03.0.copyload.us = load i64, ptr %i.a, align 8
  %i.t = trunc nuw i64 %.sroa.03.0.copyload.us to i1
  br i1 %i.t, label %bb.b, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10

bb.b:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread.us
  %.sroa.7.0.copyload.us = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet6insert(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %.sroa.7.0.copyload.us) ; 0 uses
  %i.v = load i64, ptr %i.l, align 8, !noundef !5
  %i.w = load i64, ptr %i.m, align 8, !noundef !5
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10, label %.split.us.split

.split:                                           ; preds = %bb.a
  br i1 %i.p, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4418)
  %i.y = call noundef align 8 ptr @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search20find_overlapping_fwdINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) ; 2 uses
  %.not.i.us16 = icmp eq ptr %i.y, null
  br i1 %.not.i.us16, label %bb.c, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10

bb.c:                                             ; preds = %.split.split.us
  %.sroa.05.0.copyload.i.us = load i64, ptr %i.a, align 8, !alias.scope !4418, !noalias !4419
  %i.z = trunc nuw i64 %.sroa.05.0.copyload.i.us to i1
  br i1 %i.z, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.us, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10, !prof !26

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.us: ; preds = %bb.c
  %i.aa = call noundef align 8 ptr @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa9automaton34skip_empty_utf8_splits_overlappingNCNvYINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtB2_9Automaton26try_search_overlapping_fwd0EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %0) ; 2 uses
  %.not.us = icmp eq ptr %i.aa, null
  br i1 %.not.us, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread.us17, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread.us17: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.us
  %.sroa.03.0.copyload.us18.pre = load i64, ptr %i.a, align 8
  %i.ab = trunc nuw i64 %.sroa.03.0.copyload.us18.pre to i1
  br i1 %i.ab, label %.split15.us.sink.split, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10

.split.split:                                     ; preds = %.split, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !4417)
  call void @llvm.experimental.noalias.scope.decl(metadata !4418)
  %i.ac = call noundef align 8 ptr @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search20find_overlapping_fwdINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.d, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10

bb.d:                                             ; preds = %.split.split
  %.sroa.05.0.copyload.i = load i64, ptr %i.a, align 8, !alias.scope !4418, !noalias !4419
  %i.ad = trunc nuw i64 %.sroa.05.0.copyload.i to i1
  br i1 %i.ad, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10, !prof !26

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit: ; preds = %bb.d
  %i.ae = call noundef align 8 ptr @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa9automaton34skip_empty_utf8_splits_overlappingNCNvYINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtB2_9Automaton26try_search_overlapping_fwd0EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %0) ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit
  %.sroa.03.0.copyload.pre = load i64, ptr %i.a, align 8
  %i.af = trunc nuw i64 %.sroa.03.0.copyload.pre to i1
  br i1 %i.af, label %bb.e, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10

bb.e:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ag = call noundef zeroext i1 @_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet6insert(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %.sroa.7.0.copyload) ; 0 uses
  %i.ah = load i64, ptr %i.l, align 8, !noundef !5
  %i.ai = load i64, ptr %i.m, align 8, !noundef !5
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10, label %.split.split

.split15.us.sink.split:                           ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread.us17, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread.us.us
  %.sroa.7.0.copyload.us19 = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet6insert(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %.sroa.7.0.copyload.us19) ; 0 uses
  br label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread10: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread.us, %bb.b, %.split.us.split, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread, %bb.e, %bb.d, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit, %.split.split, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread.us.us, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread.us17, %bb.c, %.split15.us.sink.split, %.split.us.split.us, %.split.split.us, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.us
  %.sroa.0.0 = phi ptr [ %i.ae, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit ], [ null, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread.us17 ], [ %i.q, %.split.us.split.us ], [ %i.y, %.split.split.us ], [ %i.aa, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.us ], [ null, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread.us.us ], [ null, %.split15.us.sink.split ], [ null, %bb.c ], [ %i.ac, %.split.split ], [ null, %bb.d ], [ null, %bb.e ], [ null, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread ], [ null, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton26try_search_overlapping_fwdB9_.exit.thread.us ], [ %i.s, %.split.us.split ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_INtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEEENtNtNtBN_3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_TjNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_hEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropB1m_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir15ClassBytesRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata3dfa7onepass10TransitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives7StateIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextDupeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3map15Utf8SuffixEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3map16Utf8BoundedEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler8Utf8NodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrack5FrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropB1t_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEEENtNtNtB16_3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecTjNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs79ICTHwG85D_12regex_syntax3hir15ClassBytesRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs79ICTHwG85D_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs98D8VPWzHuM_14regex_automata3dfa7onepass10TransitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives7StateIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextDupeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1
end_hunk_15
begin_hunk_16_@_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_18ReverseHybridCache5reset(ptr noalias noundef align 8 dereferenceable(352), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_13ReverseHybrid12create_cache(ptr dead_on_unwind noalias noundef writable sret([352 x i8]) align 8 captures(address) dereferenceable(352), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMsf_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_10ReverseDFA12memory_usage(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field3_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs9OSMwK5JXHk_12aho_corasick11ahocorasick11AcAutomatonEL_E9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_E9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtNtCs9OSMwK5JXHk_12aho_corasick6packed5teddy7builder9SearcherTEL_E9drop_slowBO_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex10RegexInfoIE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs9OSMwK5JXHk_12aho_corasick6packed7pattern8PatternsE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBN_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFANtB6_5Debug3fmtBE_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB4_3NFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers3DFANtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers10ReverseDFANtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCs4NRVxsYgnAr_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12PikeVMEngineNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers24BoundedBacktrackerEngineENtB6_5Debug3fmtBY_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs9OSMwK5JXHk_12aho_corasick6packed5teddy7builder8SearcherNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex10RegexInfoIENtB6_5Debug3fmtB19_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures18GroupInfoErrorKindNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers13OnePassEngineENtB6_5Debug3fmtBY_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12HybridEngineENtB6_5Debug3fmtBY_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers19ReverseHybridEngineENtB6_5Debug3fmtBY_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_fwdRINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #16

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB1A_9automaton9Automaton14try_search_fwd0EB6_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, i32 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_revINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #16

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_revNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB1A_9automaton9Automaton14try_search_rev0EB6_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, i32 noundef, i64 noundef, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare noundef align 8 ptr @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search20find_overlapping_fwdINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #16

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef align 8 ptr @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa9automaton34skip_empty_utf8_splits_overlappingNCNvYINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtB2_9Automaton26try_search_overlapping_fwd0EB6_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800)) unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { alwaysinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { noreturn }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { cold }
attributes #26 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!5 = !{}
!6 = !{!"branch_weights", i32 4001, i32 4000000}
!7 = !{i8 0, i8 3}
!8 = !{i64 0, i64 2}
!9 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir3HirECs98D8VPWzHuM_14regex_automata}
!10 = !{i64 -1, i64 -9223372036854775808}
!11 = !{i64 0, i64 3}
!12 = !{i128 0, i128 3}
!13 = !{i8 -1, i8 3}
!14 = !{i64 -1, i64 3}
!15 = !{i64 0, i64 -9223372036854775804}
!16 = !{i32 0, i32 3}
!17 = !{i64 -1, i64 -9223372036854775801}
!18 = !{i64 -1, i64 -9223372036854775804}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{i8 0, i8 2}
!22 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!23 = !{i32 0, i32 2}
!24 = !{i64 8}
!25 = !{!"branch_weights", i32 4000000, i32 4001}
!26 = !{!"branch_weights", i32 1, i32 4001}
!27 = !{i64 1, i64 536870913}
!28 = !{!"branch_weights", i32 1, i32 1}
!29 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!30 = distinct !{!30, i1 false, !"_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_"}
!31 = distinct !{!31, !30, !"_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_: argument 0"}
!32 = !{!31}
!33 = distinct !{!33, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_"}
!34 = distinct !{!34, !33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_: argument 0"}
!35 = distinct !{!35, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_"}
!36 = distinct !{!36, !35, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_: argument 0"}
!37 = distinct !{!37, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_"}
!38 = distinct !{!38, !37, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_: argument 0"}
!39 = !{!34}
!40 = !{!36}
!41 = !{!38}
!42 = !{!38, !36, !34}
!43 = distinct !{!43, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFAEBJ_"}
!44 = distinct !{!44, !43, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFAEBJ_: argument 0"}
!45 = distinct !{!45, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa5InnerEEB1g_"}
!46 = distinct !{!46, !45, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa5InnerEEB1g_: argument 0"}
!47 = distinct !{!47, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa5InnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_"}
!48 = distinct !{!48, !47, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa5InnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_: argument 0"}
!49 = !{!48, !46, !44}
!50 = distinct !{!50, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_"}
!51 = distinct !{!51, !50, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_: argument 0"}
!52 = !{!51}
!53 = distinct !{!53, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs9OSMwK5JXHk_12aho_corasick6packed7pattern8PatternsENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata"}
!54 = distinct !{!54, !53, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs9OSMwK5JXHk_12aho_corasick6packed7pattern8PatternsENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata: argument 0"}
!55 = !{!54}
!56 = distinct !{!56, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy3PreNtNtNtNtBI_4util9prefilter12aho_corasick11AhoCorasickEEBI_"}
!57 = distinct !{!57, !56, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy3PreNtNtNtNtBI_4util9prefilter12aho_corasick11AhoCorasickEEBI_: argument 0"}
!58 = distinct !{!58, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter12aho_corasick11AhoCorasickEBJ_"}
!59 = distinct !{!59, !58, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter12aho_corasick11AhoCorasickEBJ_: argument 0"}
!60 = distinct !{!60, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9OSMwK5JXHk_12aho_corasick11ahocorasick11AhoCorasickECs98D8VPWzHuM_14regex_automata"}
!61 = distinct !{!61, !60, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9OSMwK5JXHk_12aho_corasick11ahocorasick11AhoCorasickECs98D8VPWzHuM_14regex_automata: argument 0"}
!62 = distinct !{!62, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs9OSMwK5JXHk_12aho_corasick11ahocorasick11AcAutomatonEL_EECs98D8VPWzHuM_14regex_automata"}
!63 = distinct !{!63, !62, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs9OSMwK5JXHk_12aho_corasick11ahocorasick11AcAutomatonEL_EECs98D8VPWzHuM_14regex_automata: argument 0"}
!64 = distinct !{!64, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs9OSMwK5JXHk_12aho_corasick11ahocorasick11AcAutomatonEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata"}
!65 = distinct !{!65, !64, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs9OSMwK5JXHk_12aho_corasick11ahocorasick11AcAutomatonEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata: argument 0"}
!66 = distinct !{!66, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_"}
!67 = distinct !{!67, !66, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_: argument 0"}
!68 = distinct !{!68, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_"}
!69 = distinct !{!69, !68, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_: argument 0"}
!70 = distinct !{!70, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_"}
!71 = distinct !{!71, !70, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_: argument 0"}
!72 = distinct !{!72, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_"}
!73 = distinct !{!73, !72, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_: argument 0"}
!74 = distinct !{!74, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_"}
!75 = distinct !{!75, !74, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_: argument 0"}
!76 = distinct !{!76, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_"}
!77 = distinct !{!77, !76, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_: argument 0"}
!78 = !{!57}
!79 = !{!59}
!80 = !{!61}
!81 = !{!63}
!82 = !{!65}
!83 = !{!65, !63, !61, !59, !57}
!84 = !{!67}
!85 = !{!69}
!86 = !{!71}
!87 = !{!71, !69, !67, !57}
!88 = !{!71, !69, !67}
!89 = !{!73}
!90 = !{!75}
!91 = !{!77}
!92 = !{!77, !75, !73, !57}
!93 = !{!77, !75, !73}
!94 = distinct !{!94, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy3PreNtNtNtNtBI_4util9prefilter6memmem6MemmemEEBI_"}
!95 = distinct !{!95, !94, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy3PreNtNtNtNtBI_4util9prefilter6memmem6MemmemEEBI_: argument 0"}
!96 = distinct !{!96, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter6memmem6MemmemEBJ_"}
!97 = distinct !{!97, !96, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter6memmem6MemmemEBJ_: argument 0"}
!98 = distinct !{!98, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECs98D8VPWzHuM_14regex_automata"}
!99 = distinct !{!99, !98, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECs98D8VPWzHuM_14regex_automata: argument 0"}
!100 = distinct !{!100, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr3cow8CowBytesECs98D8VPWzHuM_14regex_automata"}
!101 = distinct !{!101, !100, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr3cow8CowBytesECs98D8VPWzHuM_14regex_automata: argument 0"}
!102 = distinct !{!102, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr3cow3ImpECs98D8VPWzHuM_14regex_automata"}
!103 = distinct !{!103, !102, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr3cow3ImpECs98D8VPWzHuM_14regex_automata: argument 0"}
!104 = distinct !{!104, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_"}
!105 = distinct !{!105, !104, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_: argument 0"}
!106 = distinct !{!106, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_"}
!107 = distinct !{!107, !106, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_: argument 0"}
!108 = distinct !{!108, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_"}
!109 = distinct !{!109, !108, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_: argument 0"}
!110 = !{!95}
!111 = !{!97}
!112 = !{!99}
!113 = !{!101}
!114 = !{!103}
!115 = !{!103, !101, !99, !97, !95}
!116 = !{!105}
!117 = !{!107}
!118 = !{!109}
!119 = !{!109, !107, !105, !95}
!120 = distinct !{!120, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_"}
!121 = distinct !{!121, !120, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_: argument 0"}
!122 = distinct !{!122, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_"}
!123 = distinct !{!123, !122, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_: argument 0"}
!124 = distinct !{!124, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_"}
!125 = distinct !{!125, !124, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_: argument 0"}
!126 = distinct !{!126, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy13ReverseSuffixEBH_"}
!127 = distinct !{!127, !126, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy13ReverseSuffixEBH_: argument 0"}
!128 = distinct !{!128, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_"}
!129 = distinct !{!129, !128, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_: argument 0"}
!130 = distinct !{!130, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_"}
!131 = distinct !{!131, !130, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_: argument 0"}
!132 = distinct !{!132, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_"}
!133 = distinct !{!133, !132, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_: argument 0"}
!134 = !{!121}
!135 = !{!123}
!136 = !{!125}
!137 = !{!125, !123, !121, !127}
!138 = !{!125, !123, !121}
!139 = !{!129}
!140 = !{!131}
!141 = !{!133}
!142 = !{!133, !131, !129, !127}
!143 = !{!133, !131, !129}
!144 = distinct !{!144, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir3HirECs98D8VPWzHuM_14regex_automata"}
!145 = distinct !{!145, !144, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir3HirECs98D8VPWzHuM_14regex_automata: argument 0"}
!146 = !{!145}
!147 = distinct !{!147, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEEB13_"}
!148 = distinct !{!148, !147, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEEB13_: argument 0"}
!149 = distinct !{!149, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_"}
!150 = distinct !{!150, !149, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_: argument 0"}
!151 = distinct !{!151, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_"}
!152 = distinct !{!152, !151, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_: argument 0"}
!153 = distinct !{!153, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_"}
!154 = distinct !{!154, !153, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_: argument 0"}
!155 = distinct !{!155, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEEB13_"}
!156 = distinct !{!156, !155, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEEB13_: argument 0"}
!157 = distinct !{!157, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_"}
!158 = distinct !{!158, !157, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_: argument 0"}
!159 = distinct !{!159, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_"}
!160 = distinct !{!160, !159, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_: argument 0"}
!161 = distinct !{!161, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_"}
!162 = distinct !{!162, !161, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_: argument 0"}
!163 = !{!148}
!164 = !{!150}
!165 = !{!152}
!166 = !{!154}
!167 = !{!154, !152, !150, !148}
!168 = !{!156}
!169 = !{!158}
!170 = !{!160}
!171 = !{!162}
!172 = !{!162, !160, !158, !156}
!173 = distinct !{!173, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter12aho_corasick11AhoCorasickEBJ_"}
!174 = distinct !{!174, !173, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter12aho_corasick11AhoCorasickEBJ_: argument 0"}
!175 = distinct !{!175, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9OSMwK5JXHk_12aho_corasick11ahocorasick11AhoCorasickECs98D8VPWzHuM_14regex_automata"}
!176 = distinct !{!176, !175, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9OSMwK5JXHk_12aho_corasick11ahocorasick11AhoCorasickECs98D8VPWzHuM_14regex_automata: argument 0"}
!177 = distinct !{!177, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs9OSMwK5JXHk_12aho_corasick11ahocorasick11AcAutomatonEL_EECs98D8VPWzHuM_14regex_automata"}
!178 = distinct !{!178, !177, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs9OSMwK5JXHk_12aho_corasick11ahocorasick11AcAutomatonEL_EECs98D8VPWzHuM_14regex_automata: argument 0"}
!179 = distinct !{!179, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs9OSMwK5JXHk_12aho_corasick11ahocorasick11AcAutomatonEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata"}
!180 = distinct !{!180, !179, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs9OSMwK5JXHk_12aho_corasick11ahocorasick11AcAutomatonEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata: argument 0"}
!181 = distinct !{!181, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_"}
!182 = distinct !{!182, !181, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_: argument 0"}
!183 = distinct !{!183, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_"}
!184 = distinct !{!184, !183, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_: argument 0"}
!185 = distinct !{!185, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_"}
!186 = distinct !{!186, !185, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_: argument 0"}
!187 = distinct !{!187, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_"}
!188 = distinct !{!188, !187, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_: argument 0"}
!189 = distinct !{!189, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_"}
!190 = distinct !{!190, !189, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_: argument 0"}
!191 = distinct !{!191, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_"}
!192 = distinct !{!192, !191, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_: argument 0"}
!193 = !{!174}
!194 = !{!176}
!195 = !{!178}
!196 = !{!180}
!197 = !{!180, !178, !176, !174}
!198 = !{!182}
!199 = !{!184}
!200 = !{!186}
!201 = !{!186, !184, !182}
!202 = !{!188}
!203 = !{!190}
!204 = !{!192}
!205 = !{!192, !190, !188}
!206 = distinct !{!206, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_"}
!207 = distinct !{!207, !206, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_: argument 0"}
!208 = distinct !{!208, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_"}
!209 = distinct !{!209, !208, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_: argument 0"}
!210 = distinct !{!210, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_"}
!211 = distinct !{!211, !210, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_: argument 0"}
!212 = distinct !{!212, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_"}
!213 = distinct !{!213, !212, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_: argument 0"}
!214 = distinct !{!214, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_"}
!215 = distinct !{!215, !214, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_: argument 0"}
!216 = distinct !{!216, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_"}
!217 = distinct !{!217, !216, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_: argument 0"}
!218 = !{!207}
!219 = !{!209}
!220 = !{!211}
!221 = !{!211, !209, !207}
!222 = !{!213}
!223 = !{!215}
!224 = !{!217}
!225 = !{!217, !215, !213}
!226 = distinct !{!226, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_"}
!227 = distinct !{!227, !226, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_: argument 0"}
!228 = distinct !{!228, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_"}
end_hunk_16
