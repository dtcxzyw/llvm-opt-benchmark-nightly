Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp?download=true
inline.NumInlined: 1563
inline.NumDeleted: 578
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6colvar3cvc14get_atom_listsEv:bb.a
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.h, %bb.g, %bb.f
  %i.ag = getelementptr inbounds i8, ptr %i.u, i64 %i.ac
  store ptr %i.ag, ptr %i.v, align 8, !tbaa !201
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !199
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ai, ptr %i.e, align 8, !tbaa !199
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit unwind label %.loopexit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i, %bb.i
  %i.aj = load ptr, ptr %.sroa.018.031, align 8, !tbaa !197 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 368
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !94 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 129
  %i.an = load i8, ptr %i.am, align 1, !tbaa !95, !range !97, !noundef !98
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.j, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit17

bb.j:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 193
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !95, !range !97, !noundef !98
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.k, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit17

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 512
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !204 ; 3 uses
  %i.au = invoke noundef i32 @_ZN12colvarmodule10atom_group17create_sorted_idsEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.at)
          to label %bb.l unwind label %.loopexit25 ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1368 ; 3 uses
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !199 ; 6 uses
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !200
  %.not.i9 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i9, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 1376 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !201 ; 2 uses
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !192 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i10 = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i.i.i.i.i10, label %.noexc15, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = icmp ugt i64 %i.bd, 9223372036854775804
  br i1 %i.be, label %.noexc.i.i.i13, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i11, !prof !202

.noexc.i.i.i13:                                   ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc14 unwind label %.loopexit.split-lp26

.noexc14:                                         ; preds = %.noexc.i.i.i13
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i11: ; preds = %bb.n
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #32
          to label %.noexc15 unwind label %.loopexit25

.noexc15:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i11, %bb.m
  %i.bg = phi ptr [ null, %bb.m ], [ %i.bf, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i11 ] ; 6 uses
  store ptr %i.bg, ptr %i.aw, align 8, !tbaa !192
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !201
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !189
  %i.bk = load ptr, ptr %i.av, align 8, !tbaa !188 ; 3 uses
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !188
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 4 uses
  %i.bp = icmp sgt i64 %i.bo, 4
  br i1 %i.bp, label %bb.o, label %bb.p, !prof !203

bb.o:                                             ; preds = %.noexc15
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bg, ptr align 4 %i.bk, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i12

bb.p:                                             ; preds = %.noexc15
  %i.bq = icmp eq i64 %i.bo, 4
  br i1 %i.bq, label %bb.q, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i12

bb.q:                                             ; preds = %bb.p
  %i.br = load i32, ptr %i.bk, align 4, !tbaa !92
  store i32 %i.br, ptr %i.bg, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i12

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i12:            ; preds = %bb.q, %bb.p, %bb.o
  %i.bs = getelementptr inbounds i8, ptr %i.bg, i64 %i.bo
  store ptr %i.bs, ptr %i.bh, align 8, !tbaa !201
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !199
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.bu, ptr %i.e, align 8, !tbaa !199
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit17

bb.r:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit17 unwind label %.loopexit25

.loopexit:                                        ; preds = %bb.b, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit25:                                      ; preds = %bb.k, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i11, %bb.r
  %lpad.loopexit27 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp26:                             ; preds = %.noexc.i.i.i13
  %lpad.loopexit.split-lp28 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit17: ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i12, %bb.r, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit, %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.018.031, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !196
  %.not = icmp eq ptr %i.bv, %i.bw
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !211

._crit_edge:                                      ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit17, %bb.a
  ret void

bb.s:                                             ; preds = %.loopexit25, %.loopexit.split-lp26, %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit27, %.loopexit25 ], [ %lpad.loopexit.split-lp28, %.loopexit.split-lp26 ]
  tail call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar3cvc9read_dataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1608) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 193
  %i.d = load i8, ptr %i.c, align 1, !tbaa !95, !range !97, !noundef !98
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !196  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !196
  %.not7 = icmp eq ptr %i.g, %i.i
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.04.08 = phi ptr [ %i.l, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.04.08, align 8, !tbaa !197 ; 3 uses
  tail call void @_ZN12colvarmodule10atom_group16reset_atoms_dataEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.j)
  tail call void @_ZN12colvarmodule10atom_group14read_positionsEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.j)
  %i.k = tail call noundef i32 @_ZN12colvarmodule10atom_group24calc_required_propertiesEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.j) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !196
  %.not = icmp eq ptr %i.l, %i.m
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !212

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar3cvc14calc_gradientsEv(ptr noundef nonnull align 8 dereferenceable(1608) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar3cvc15debug_gradientsEv(ptr noundef nonnull align 8 dereferenceable(1608) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"struct.std::_Hashtable<colvarmodule::atom_group *, std::pair<colvarmodule::atom_group *const, std::array<std::vector<colvarmodule::rvector>, 2>>, std::allocator<std::pair<colvarmodule::atom_group *const, std::array<std::vector<colvarmodule::rvector>, 2>>>, std::__detail::_Select1st, std::equal_to<colvarmodule::atom_group *>, std::hash<colvarmodule::atom_group *>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %2 = alloca %"class.colvarmodule::quaternion", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::unordered_map", align 8 ; 19 uses
  %5 = alloca %"class.colvarmodule::rotation", align 8 ; 7 uses
  %6 = alloca %"struct.std::array", align 8       ; 13 uses
  %7 = alloca %"class.colvarmodule::rvector", align 16 ; 9 uses
  %8 = alloca %"class.colvarmodule::rvector", align 16 ; 9 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.colvarmodule::rvector", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = alloca i64, align 8                      ; 14 uses
  %22 = alloca %"struct.colvarmodule::atom_group::simple_atom", align 8 ; 19 uses
  %i.d = alloca i64, align 8                      ; 10 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca double, align 8                   ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.h = alloca i64, align 8                      ; 13 uses
  %42 = alloca %"struct.colvarmodule::atom_group::simple_atom", align 8 ; 19 uses
  %i.i = alloca i64, align 8                      ; 10 uses
  %i.j = alloca double, align 8                   ; 5 uses
  %i.k = alloca double, align 8                   ; 5 uses
  %i.l = alloca double, align 8                   ; 6 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %70 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20, !noalias !213
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !213 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !101, !alias.scope !216
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.r, align 8, !tbaa !16, !alias.scope !216
  store i8 0, ptr %i.q, align 8, !tbaa !103, !alias.scope !216
  %i.s = add i64 %i.p, 24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.s)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.r, align 8, !tbaa !16, !alias.scope !216
  %i.u = add i64 %i.t, -4611686018427387880
  %i.v = icmp ult i64 %i.u, 24
  br i1 %i.v, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.72, i64 noundef 24)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.x = load i64, ptr %i.r, align 8, !tbaa !16, !alias.scope !216
  %i.y = sub i64 4611686018427387903, %i.x
  %i.z = icmp ult i64 %i.y, %i.p
  br i1 %i.z, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.n, i64 noundef %i.p)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !20, !alias.scope !216 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.q
  br i1 %i.ad, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !103, !alias.scope !216
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, %_ZNSt10_HashtableIPN12colvarmodule10atom_groupESt4pairIKS2_St5arrayISt6vectorINS0_7rvectorESaIS7_EELm2EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit1157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn257.pn.pn.pn, %_ZNSt10_HashtableIPN12colvarmodule10atom_groupESt4pairIKS2_St5arrayISt6vectorINS0_7rvectorESaIS7_EELm2EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit1157 ], [ %i.ab, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 10)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ag = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.q
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !103
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store ptr %i.ak, ptr %4, align 8, !tbaa !219
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i64 1, ptr %i.al, align 8, !tbaa !226
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.an, align 8, !tbaa !227
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !228 ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !229 ; 2 uses
  %.not3171 = icmp eq ptr %i.ar, %i.as
  br i1 %.not3171, label %._crit_edge3170, label %.lr.ph3153

.lr.ph3153:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 496
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.f

.preheader1398:                                   ; preds = %bb.ae
  %i.bd = icmp eq ptr %i.pv, %i.pu
  br i1 %i.bd, label %._crit_edge3170, label %.lr.ph3164

.lr.ph3164:                                       ; preds = %.preheader1398
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 10 uses
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 10 uses
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %22, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %22, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.cn = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %22, i64 72
  %i.cp = getelementptr inbounds nuw i8, ptr %22, i64 80
  %i.cq = getelementptr inbounds nuw i8, ptr %22, i64 88
  %i.cr = getelementptr inbounds nuw i8, ptr %22, i64 96
  %i.cs = getelementptr inbounds nuw i8, ptr %22, i64 104
  %i.ct = getelementptr inbounds nuw i8, ptr %22, i64 112
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 9 uses
  %i.db = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 10 uses
  %i.df = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 9 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 10 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 9 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 10 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 9 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 10 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 9 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 10 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %42, i64 4 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %42, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %42, i64 56
  %i.er = getelementptr inbounds nuw i8, ptr %42, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %42, i64 72
  %i.et = getelementptr inbounds nuw i8, ptr %42, i64 80
  %i.eu = getelementptr inbounds nuw i8, ptr %42, i64 88
  %i.ev = getelementptr inbounds nuw i8, ptr %42, i64 96
  %i.ew = getelementptr inbounds nuw i8, ptr %42, i64 104
  %i.ex = getelementptr inbounds nuw i8, ptr %42, i64 112
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 9 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 10 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 9 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 10 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 7 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 9 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 10 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 9 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 10 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 9 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 10 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 7 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 7 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 9 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 10 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 9 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 10 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %16, i64 28
  br label %bb.ag

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.hb = landingpad { ptr, i32 }
          cleanup
  %i.hc = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.q
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %bb.e
  %i.he = load i64, ptr %i.q, align 8, !tbaa !103
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

bb.f:                                             ; preds = %.lr.ph3153, %bb.ae
  %i.hg = phi ptr [ %i.as, %.lr.ph3153 ], [ %i.pu, %bb.ae ] ; 2 uses
  %i.hh = phi ptr [ %i.ar, %.lr.ph3153 ], [ %i.pv, %bb.ae ]
  %.0773152 = phi i64 [ 0, %.lr.ph3153 ], [ %i.pw, %bb.ae ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %.0773152
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !197 ; 14 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 472
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !230, !range !97, !noundef !98
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.ae, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !231
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 1016
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !237, !noalias !238
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 1024
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 1040
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !239, !noalias !238
  %i.hs = fneg double %i.hr
  store double %i.ho, ptr %2, align 8, !tbaa !237, !alias.scope !234, !noalias !231
  %i.ht = load <2 x double>, ptr %i.hp, align 8, !tbaa !24, !noalias !238
  %i.hu = fneg <2 x double> %i.ht
  store <2 x double> %i.hu, ptr %i.at, align 8, !tbaa !24, !alias.scope !234, !noalias !231
  store double %i.hs, ptr %i.au, align 8, !tbaa !239, !alias.scope !234, !noalias !231
  invoke void @_ZN12colvarmodule8rotationC1ERKNS_10quaternionE(ptr noundef nonnull align 8 dereferenceable(568) %5, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !231
  %i.hv = load <2 x double>, ptr %i.av, align 8, !tbaa !24, !noalias !240 ; 9 uses
  %i.hw = extractelement <2 x double> %i.hv, i64 1 ; 4 uses
  %i.hx = extractelement <2 x double> %i.hv, i64 0 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6colvar3cvc15debug_gradientsEv:bb.a
  store i64 %i.vg, ptr %i.bm, align 8, !tbaa !103, !alias.scope !293
  %.phi.trans.insert.i336 = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %.pre.i337 = load i64, ptr %.phi.trans.insert.i336, align 8, !tbaa !16
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, %bb.ax
  %i.vh = phi i64 [ %i.vd, %bb.ax ], [ %.pre.i337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335 ]
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  store i64 %i.vh, ptr %i.bn, align 8, !tbaa !16, !alias.scope !293
  store ptr %i.va, ptr %i.uy, align 8, !tbaa !20
  store i64 0, ptr %i.vi, align 8, !tbaa !16
  store i8 0, ptr %i.va, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  invoke void @_ZN12colvarmodule6to_strB5cxx11ERKmmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0, i64 noundef 0)
          to label %bb.az unwind label %bb.bs

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.vj = load i64, ptr %i.bn, align 8, !tbaa !16, !noalias !296 ; 4 uses
  %i.vk = load i64, ptr %i.bo, align 8, !tbaa !16, !noalias !296 ; 4 uses
  %i.vl = add i64 %i.vk, %i.vj                    ; 2 uses
  %i.vm = load ptr, ptr %15, align 8, !tbaa !20, !noalias !296 ; 2 uses
  %i.vn = icmp eq ptr %i.vm, %i.bm
  br i1 %i.vn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i343: ; preds = %bb.az
  %i.vo = icmp ult i64 %i.vj, 16
  call void @llvm.assume(i1 %i.vo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %bb.az
  %i.vp = load i64, ptr %i.bm, align 8, !tbaa !103, !noalias !296
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i343
  %i.vq = phi i64 [ %i.vp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i343 ]
  %i.vr = icmp ugt i64 %i.vl, %i.vq
  br i1 %i.vr, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.vs = load ptr, ptr %17, align 8, !tbaa !20, !noalias !296
  %i.vt = icmp eq ptr %i.vs, %i.bp
  br i1 %i.vt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.ba
  %i.vu = icmp ult i64 %i.vk, 16
  call void @llvm.assume(i1 %i.vu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.ba
  %i.vv = load i64, ptr %i.bp, align 8, !tbaa !103, !noalias !296
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.vw = phi i64 [ %i.vv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i342 = icmp ugt i64 %i.vl, %i.vw
  br i1 %.not.i342, label %bb.bc, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.vx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef %i.vm, i64 noundef %i.vj)
          to label %.noexc344 unwind label %.loopexit1383 ; 5 uses

.noexc344:                                        ; preds = %.critedge.i
  store ptr %i.bq, ptr %14, align 8, !tbaa !101, !alias.scope !296
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !20 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 16 ; 5 uses
  %i.wa = icmp eq ptr %i.vy, %i.vz
  br i1 %i.wa, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.bb:                                            ; preds = %.noexc344
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !16 ; 2 uses
  %i.wd = icmp ult i64 %i.wc, 16
  call void @llvm.assume(i1 %i.wd)
  %i.we = add nuw nsw i64 %i.wc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.vz, i64 %i.we, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc344
  store ptr %i.vy, ptr %14, align 8, !tbaa !20, !alias.scope !296
  %i.wf = load i64, ptr %i.vz, align 8, !tbaa !103
  store i64 %i.wf, ptr %i.bq, align 8, !tbaa !103, !alias.scope !296
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.bb
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vx, i64 8 ; 2 uses
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !16
  store i64 %i.wh, ptr %i.br, align 8, !tbaa !16, !alias.scope !296
  store ptr %i.vz, ptr %i.vx, align 8, !tbaa !20
  store i64 0, ptr %i.wg, align 8, !tbaa !16
  store i8 0, ptr %i.vz, align 8, !tbaa !103
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.wi = sub i64 4611686018427387903, %i.vj
  %i.wj = icmp ult i64 %i.wi, %i.vk
  br i1 %i.wj, label %bb.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.noexc345 unwind label %.loopexit.split-lp1384

.noexc345:                                        ; preds = %bb.bd
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.bc
  %i.wk = load ptr, ptr %17, align 8, !tbaa !20, !noalias !296
  %i.wl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %i.wk, i64 noundef %i.vk)
          to label %.noexc346 unwind label %.loopexit1383 ; 5 uses

.noexc346:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.bq, ptr %14, align 8, !tbaa !101, !alias.scope !296
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !20 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wl, i64 16 ; 5 uses
  %i.wo = icmp eq ptr %i.wm, %i.wn
  br i1 %i.wo, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.be:                                            ; preds = %.noexc346
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %i.wq = load i64, ptr %i.wp, align 8, !tbaa !16 ; 2 uses
  %i.wr = icmp ult i64 %i.wq, 16
  call void @llvm.assume(i1 %i.wr)
  %i.ws = add nuw nsw i64 %i.wq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.wn, i64 %i.ws, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc346
  store ptr %i.wm, ptr %14, align 8, !tbaa !20, !alias.scope !296
  %i.wt = load i64, ptr %i.wn, align 8, !tbaa !103
  store i64 %i.wt, ptr %i.bq, align 8, !tbaa !103, !alias.scope !296
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.be
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wl, i64 8 ; 2 uses
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !16
  store i64 %i.wv, ptr %i.br, align 8, !tbaa !16, !alias.scope !296
  store ptr %i.wn, ptr %i.wl, align 8, !tbaa !20
  store i64 0, ptr %i.wu, align 8, !tbaa !16
  store i8 0, ptr %i.wn, align 8, !tbaa !103
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.ww = load i64, ptr %i.br, align 8, !tbaa !16, !noalias !299
  %i.wx = and i64 %i.ww, -4
  %i.wy = icmp eq i64 %i.wx, 4611686018427387900
  br i1 %i.wy, label %bb.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i347

bb.bf:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.noexc352 unwind label %.loopexit.split-lp1389

.noexc352:                                        ; preds = %bb.bf
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i347: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.wz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.77, i64 noundef 4)
          to label %.noexc353 unwind label %.loopexit1388 ; 6 uses

.noexc353:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i347
  store ptr %i.bs, ptr %13, align 8, !tbaa !101, !alias.scope !299
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !20 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 16 ; 5 uses
  %i.xc = icmp eq ptr %i.xa, %i.xb
  br i1 %i.xc, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348

bb.bg:                                            ; preds = %.noexc353
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !16 ; 3 uses
  %i.xf = icmp ult i64 %i.xe, 16
  call void @llvm.assume(i1 %i.xf)
  %i.xg = add nuw nsw i64 %i.xe, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.xb, i64 %i.xg, i1 false)
  br label %bb.bh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348: ; preds = %.noexc353
  store ptr %i.xa, ptr %13, align 8, !tbaa !20, !alias.scope !299
  %i.xh = load i64, ptr %i.xb, align 8, !tbaa !103
  store i64 %i.xh, ptr %i.bs, align 8, !tbaa !103, !alias.scope !299
  %.phi.trans.insert.i349 = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  %.pre.i350 = load i64, ptr %.phi.trans.insert.i349, align 8, !tbaa !16
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348, %bb.bg
  %i.xi = phi i64 [ %i.xe, %bb.bg ], [ %.pre.i350, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348 ]
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  store i64 %i.xi, ptr %i.bt, align 8, !tbaa !16, !alias.scope !299
  store ptr %i.xb, ptr %i.wz, align 8, !tbaa !20
  store i64 0, ptr %i.xj, align 8, !tbaa !16
  store i8 0, ptr %i.xb, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.xk = load ptr, ptr %i.ry, align 8, !tbaa !94
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 97
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !95, !range !97, !noundef !98
  %i.xn = trunc nuw i8 %i.xm to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  br i1 %i.xn, label %bb.bi, label %.invoke

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %71 = load double, ptr %11, align 8, !tbaa !290, !noalias !302 ; 2 uses
  %72 = load double, ptr %i.bi, align 8, !tbaa !291, !noalias !302 ; 2 uses
  %i.xo = load double, ptr %i.bj, align 8, !tbaa !292, !noalias !302 ; 2 uses
  %73 = fmul double %i.tz, %72
  %74 = call double @llvm.fmuladd.f64(double %i.ua, double %71, double %73)
  %75 = call double @llvm.fmuladd.f64(double %i.re, double %i.xo, double %74)
  %76 = insertelement <2 x double> poison, double %72, i64 0
  %77 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> zeroinitializer
  %78 = fmul <2 x double> %i.tx, %77
  %79 = insertelement <2 x double> poison, double %71, i64 0
  %80 = shufflevector <2 x double> %79, <2 x double> poison, <2 x i32> zeroinitializer
  %81 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ty, <2 x double> %80, <2 x double> %78)
  %82 = insertelement <2 x double> poison, double %i.xo, i64 0
  %83 = shufflevector <2 x double> %82, <2 x double> poison, <2 x i32> zeroinitializer
  %84 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rp, <2 x double> %83, <2 x double> %81)
  store <2 x double> %84, ptr %19, align 16, !tbaa !24, !alias.scope !302
  store double %75, ptr %i.bu, align 16, !tbaa !292, !alias.scope !302
  br label %.invoke

.invoke:                                          ; preds = %bb.bh, %bb.bi
  %i.xp = phi ptr [ %19, %bb.bi ], [ %11, %bb.bh ]
  invoke void @_ZN12colvarmodule6to_strB5cxx11ERKNS_7rvectorEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %i.xp, i64 noundef 0, i64 noundef 0)
          to label %bb.bj unwind label %bb.bt

bb.bj:                                            ; preds = %.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.xq = load i64, ptr %i.bt, align 8, !tbaa !16, !noalias !305 ; 4 uses
  %i.xr = load i64, ptr %i.bv, align 8, !tbaa !16, !noalias !305 ; 4 uses
  %i.xs = add i64 %i.xr, %i.xq                    ; 2 uses
  %i.xt = load ptr, ptr %13, align 8, !tbaa !20, !noalias !305 ; 2 uses
  %i.xu = icmp eq ptr %i.xt, %i.bs
  br i1 %i.xu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i367: ; preds = %bb.bj
  %i.xv = icmp ult i64 %i.xq, 16
  call void @llvm.assume(i1 %i.xv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355: ; preds = %bb.bj
  %i.xw = load i64, ptr %i.bs, align 8, !tbaa !103, !noalias !305
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i356: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i367
  %i.xx = phi i64 [ %i.xw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i367 ]
  %i.xy = icmp ugt i64 %i.xs, %i.xx
  br i1 %i.xy, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i356
  %i.xz = load ptr, ptr %18, align 8, !tbaa !20, !noalias !305
  %i.ya = icmp eq ptr %i.xz, %i.bw
  br i1 %i.ya, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i366: ; preds = %bb.bk
  %i.yb = icmp ult i64 %i.xr, 16
  call void @llvm.assume(i1 %i.yb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i360: ; preds = %bb.bk
  %i.yc = load i64, ptr %i.bw, align 8, !tbaa !103, !noalias !305
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i361: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i360, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i366
  %i.yd = phi i64 [ %i.yc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i360 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i366 ]
  %.not.i362 = icmp ugt i64 %i.xs, %i.yd
  br i1 %.not.i362, label %bb.bm, label %.critedge.i363

.critedge.i363:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i361
  %i.ye = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %i.xt, i64 noundef %i.xq)
          to label %.noexc368 unwind label %.loopexit1393 ; 5 uses

.noexc368:                                        ; preds = %.critedge.i363
  store ptr %i.bx, ptr %12, align 8, !tbaa !101, !alias.scope !305
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !20 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 16 ; 5 uses
  %i.yh = icmp eq ptr %i.yf, %i.yg
  br i1 %i.yh, label %bb.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i364

bb.bl:                                            ; preds = %.noexc368
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !16 ; 2 uses
  %i.yk = icmp ult i64 %i.yj, 16
  call void @llvm.assume(i1 %i.yk)
  %i.yl = add nuw nsw i64 %i.yj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(1) %i.yg, i64 %i.yl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i365

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i364: ; preds = %.noexc368
  store ptr %i.yf, ptr %12, align 8, !tbaa !20, !alias.scope !305
  %i.ym = load i64, ptr %i.yg, align 8, !tbaa !103
  store i64 %i.ym, ptr %i.bx, align 8, !tbaa !103, !alias.scope !305
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i365

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i365: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i364, %bb.bl
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ye, i64 8 ; 2 uses
  %i.yo = load i64, ptr %i.yn, align 8, !tbaa !16
  store i64 %i.yo, ptr %i.by, align 8, !tbaa !16, !alias.scope !305
  store ptr %i.yg, ptr %i.ye, align 8, !tbaa !20
  store i64 0, ptr %i.yn, align 8, !tbaa !16
  store i8 0, ptr %i.yg, align 8, !tbaa !103
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit371

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i356
  %i.yp = sub i64 4611686018427387903, %i.xq
  %i.yq = icmp ult i64 %i.yp, %i.xr
  br i1 %i.yq, label %bb.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.noexc369 unwind label %.loopexit.split-lp1394

.noexc369:                                        ; preds = %bb.bn
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357: ; preds = %bb.bm
  %i.yr = load ptr, ptr %18, align 8, !tbaa !20, !noalias !305
  %i.ys = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.yr, i64 noundef %i.xr)
          to label %.noexc370 unwind label %.loopexit1393 ; 5 uses

.noexc370:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357
  store ptr %i.bx, ptr %12, align 8, !tbaa !101, !alias.scope !305
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !20 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 16 ; 5 uses
  %i.yv = icmp eq ptr %i.yt, %i.yu
  br i1 %i.yv, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i358

bb.bo:                                            ; preds = %.noexc370
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yx = load i64, ptr %i.yw, align 8, !tbaa !16 ; 2 uses
  %i.yy = icmp ult i64 %i.yx, 16
  call void @llvm.assume(i1 %i.yy)
  %i.yz = add nuw nsw i64 %i.yx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(1) %i.yu, i64 %i.yz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i358: ; preds = %.noexc370
  store ptr %i.yt, ptr %12, align 8, !tbaa !20, !alias.scope !305
  %i.za = load i64, ptr %i.yu, align 8, !tbaa !103
  store i64 %i.za, ptr %i.bx, align 8, !tbaa !103, !alias.scope !305
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i359: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i358, %bb.bo
  %i.zb = getelementptr inbounds nuw i8, ptr %i.ys, i64 8 ; 2 uses
  %i.zc = load i64, ptr %i.zb, align 8, !tbaa !16
  store i64 %i.zc, ptr %i.by, align 8, !tbaa !16, !alias.scope !305
  store ptr %i.yu, ptr %i.ys, align 8, !tbaa !20
  store i64 0, ptr %i.zb, align 8, !tbaa !16
  store i8 0, ptr %i.yu, align 8, !tbaa !103
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit371

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit371: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i359, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i365
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 10)
          to label %bb.bp unwind label %bb.bu

bb.bp:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit371
  %i.zd = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.ze = icmp eq ptr %i.zd, %i.bx
  br i1 %i.ze, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372: ; preds = %bb.bp
  %i.zf = load i64, ptr %i.bx, align 8, !tbaa !103
  %i.zg = add i64 %i.zf, 1
  call void @_ZdlPvm(ptr noundef %i.zd, i64 noundef %i.zg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372
  %i.zh = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.zi = icmp eq ptr %i.zh, %i.bw
  br i1 %i.zi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374
  %i.zj = load i64, ptr %i.bw, align 8, !tbaa !103
  %i.zk = add i64 %i.zj, 1
  call void @_ZdlPvm(ptr noundef %i.zh, i64 noundef %i.zk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %i.zl = load ptr, ptr %13, align 8, !tbaa !20   ; 2 uses
  %i.zm = icmp eq ptr %i.zl, %i.bs
  br i1 %i.zm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377
  %i.zn = load i64, ptr %i.bs, align 8, !tbaa !103
  %i.zo = add i64 %i.zn, 1
  call void @_ZdlPvm(ptr noundef %i.zl, i64 noundef %i.zo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378
  %i.zp = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.zq = icmp eq ptr %i.zp, %i.bq
  br i1 %i.zq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380
  %i.zr = load i64, ptr %i.bq, align 8, !tbaa !103
  %i.zs = add i64 %i.zr, 1
  call void @_ZdlPvm(ptr noundef %i.zp, i64 noundef %i.zs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381
  %i.zt = load ptr, ptr %17, align 8, !tbaa !20   ; 2 uses
  %i.zu = icmp eq ptr %i.zt, %i.bp
  br i1 %i.zu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383
  %i.zv = load i64, ptr %i.bp, align 8, !tbaa !103
  %i.zw = add i64 %i.zv, 1
  call void @_ZdlPvm(ptr noundef %i.zt, i64 noundef %i.zw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.zx = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.zy = icmp eq ptr %i.zx, %i.bm
  br i1 %i.zy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386
end_hunk_1
