Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js2c?download=true
inline.NumInlined: 1866
inline.NumDeleted: 631
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@uv_fs_scandir
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 288230376151711743
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.p, ptr %.012.i.i.i, align 8, !alias.scope !16, !noalias !19
  %i.q = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !19, !noalias !16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !19, !noalias !16 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false), !alias.scope !21
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %.012.i.i.i, align 8, !alias.scope !16, !noalias !19
  %i.x = load i64, ptr %i.r, align 8, !alias.scope !19, !noalias !16
  store i64 %i.x, ptr %i.p, align 8, !alias.scope !16, !noalias !19
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !19, !noalias !16
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.y = phi i64 [ %i.u, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !alias.scope !16, !noalias !19
  store ptr %i.r, ptr %.0911.i.i.i, align 8, !alias.scope !19, !noalias !16
  store i64 0, ptr %i.z, align 8, !alias.scope !19, !noalias !16
  store i8 0, ptr %i.r, align 8, !alias.scope !19, !noalias !16
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.not.i.i.i = icmp eq ptr %i.ab, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !22

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.ad = phi ptr [ %.pre, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.ad, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ae = load ptr, ptr %i.b, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ai, ptr %i.j, align 8
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %1
  store ptr %i.aj, ptr %i.b, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.c
  ret void
}

declare i32 @uv_fs_scandir_next(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 8 uses
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i64 %i.h, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #28 ; 2 uses
  store ptr %i.m, ptr %i.b, align 8
  store i64 %i.h, ptr %i.e, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.b
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  switch i64 %i.h, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %i.f, align 1
  store i8 %i.o, ptr %i.n, align 1
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit: ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store i8 0, ptr %i.q, align 1
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  store ptr %i.s, ptr %i.a, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit
  %i.t = phi ptr [ %.pre, %bb.i ], [ %i.s, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32
  ret ptr %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node4js2c4JoinERKSt6vectorIS1_IcSaIcEESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %1, align 8                ; 10 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv i64 %i.h, 24                        ; 4 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = mul i64 %i.j, %i.b                       ; 3 uses
  %.not37 = icmp eq ptr %i.d, %i.e                ; 2 uses
  br i1 %.not37, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %umax = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 5
  br i1 %min.iters.check, label %.lr.ph.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.l = and i64 %umax, 3                         ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 4, i64 %i.l
  %n.vec = sub i64 %umax, %i.n                    ; 2 uses
  %i.o = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.k, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ %i.o, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi49 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.aa = load ptr, ptr %i.w, align 8
  %i.ab = load ptr, ptr %i.x, align 8
  %i.ac = insertelement <2 x ptr> poison, ptr %i.aa, i64 0
  %i.ad = insertelement <2 x ptr> %i.ac, ptr %i.ab, i64 1
  %i.ae = load ptr, ptr %i.y, align 8
  %i.af = load ptr, ptr %i.z, align 8
  %i.ag = insertelement <2 x ptr> poison, ptr %i.ae, i64 0
  %i.ah = insertelement <2 x ptr> %i.ag, ptr %i.af, i64 1
  %i.ai = load ptr, ptr %i.p, align 8
  %i.aj = load ptr, ptr %i.r, align 8
  %i.ak = insertelement <2 x ptr> poison, ptr %i.ai, i64 0
  %i.al = insertelement <2 x ptr> %i.ak, ptr %i.aj, i64 1
  %i.am = load ptr, ptr %i.t, align 8
  %i.an = load ptr, ptr %i.v, align 8
  %i.ao = insertelement <2 x ptr> poison, ptr %i.am, i64 0
  %i.ap = insertelement <2 x ptr> %i.ao, ptr %i.an, i64 1
  %i.aq = ptrtoint <2 x ptr> %i.ad to <2 x i64>
  %i.ar = ptrtoint <2 x ptr> %i.ah to <2 x i64>
  %i.as = ptrtoint <2 x ptr> %i.al to <2 x i64>
  %i.at = ptrtoint <2 x ptr> %i.ap to <2 x i64>
  %i.au = add <2 x i64> %vec.phi, %i.aq
  %i.av = add <2 x i64> %vec.phi49, %i.ar
  %i.aw = sub <2 x i64> %i.au, %i.as              ; 2 uses
  %i.ax = sub <2 x i64> %i.av, %i.at              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ax, %i.aw
  %i.az = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.preheader50

.lr.ph.preheader50:                               ; preds = %.lr.ph.preheader, %middle.block
  %.02731.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.02830.ph = phi i64 [ %i.k, %.lr.ph.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.028.lcssa = phi i64 [ %i.k, %bb.a ], [ %i.br, %.lr.ph ] ; 5 uses
  %i.ba = icmp slt i64 %.028.lcssa, 0
  br i1 %i.ba, label %bb.b, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #29
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge
  %.not.i.i.i.i = icmp eq i64 %.028.lcssa, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i, label %bb.c

_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.028.lcssa) #28 ; 4 uses
  store ptr %i.bb, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.028.lcssa ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bc, ptr %i.bd, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bb, i8 0, i64 %.028.lcssa, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit:            ; preds = %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i, %bb.c
  %i.be = phi ptr [ null, %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i ], [ %i.bb, %bb.c ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i ], [ %i.bc, %bb.c ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.bf, align 8
  br i1 %.not37, label %._crit_edge35, label %.lr.ph34.preheader._crit_edge

.lr.ph34.preheader._crit_edge:                    ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre41 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bg = ptrtoint ptr %.pre41 to i64
  %i.bh = ptrtoint ptr %.pre to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %.pre, i64 %i.bi, i1 false)
  %i.bj = icmp ugt i64 %i.i, 1
  br i1 %i.bj, label %.lr.ph34.peel.next, label %._crit_edge35

.lr.ph:                                           ; preds = %.lr.ph.preheader50, %.lr.ph
  %.02731 = phi i64 [ %i.bs, %.lr.ph ], [ %.02731.ph, %.lr.ph.preheader50 ] ; 2 uses
  %.02830 = phi i64 [ %i.br, %.lr.ph ], [ %.02830.ph, %.lr.ph.preheader50 ]
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.02731 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %i.bk, align 8
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = add i64 %.02830, %i.bo
  %i.br = sub i64 %i.bq, %i.bp                    ; 2 uses
  %i.bs = add nuw i64 %.02731, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge35:                                    ; preds = %.lr.ph34.peel.next, %.lr.ph34.preheader._crit_edge, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit
  %.026.lcssa = phi i64 [ 0, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit ], [ %i.bi, %.lr.ph34.preheader._crit_edge ], [ %i.cn, %.lr.ph34.peel.next ]
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.026.lcssa)
  ret void

.lr.ph34.peel.next:                               ; preds = %.lr.ph34.preheader._crit_edge, %.lr.ph34.peel.next
  %i.bt = phi ptr [ %.pre44, %.lr.ph34.peel.next ], [ %i.be, %.lr.ph34.preheader._crit_edge ]
  %i.bu = phi ptr [ %i.cq, %.lr.ph34.peel.next ], [ %i.e, %.lr.ph34.preheader._crit_edge ]
  %.033 = phi i64 [ %i.co, %.lr.ph34.peel.next ], [ 1, %.lr.ph34.preheader._crit_edge ] ; 2 uses
  %.02632 = phi i64 [ %i.cn, %.lr.ph34.peel.next ], [ %i.bi, %.lr.ph34.preheader._crit_edge ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.033 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.02632
  %i.bx = load ptr, ptr %2, align 8
  %i.by = load i64, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bx, i64 %i.by, i1 false)
  %.pre44 = load ptr, ptr %0, align 8             ; 2 uses
  %i.bz = load i64, ptr %i.a, align 8
  %i.ca = add i64 %i.bz, %.02632                  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre44, i64 %i.ca
  %i.cc = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr align 1 %i.cc, i64 %i.ch, i1 false)
  %i.ci = load ptr, ptr %i.cd, align 8
  %i.cj = load ptr, ptr %i.bv, align 8
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = add i64 %i.ca, %i.ck
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  %i.co = add nuw i64 %.033, 1                    ; 2 uses
  %i.cp = load ptr, ptr %i.c, align 8
  %i.cq = load ptr, ptr %1, align 8               ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = sdiv exact i64 %i.ct, 24
  %i.cv = icmp ult i64 %i.co, %i.cu
  br i1 %i.cv, label %.lr.ph34.peel.next, label %._crit_edge35, !llvm.loop !27
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23.i = icmp ult i64 %i.l, %i.h
  br i1 %.not23.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #29
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit26.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit26.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit26.i: ; preds = %bb.g, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %.not28.i = icmp eq ptr %i.b, %i.c
  br i1 %.not28.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit26.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit26.i
  %.not.i27.i = icmp eq ptr %i.c, null
  br i1 %.not.i27.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #30
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.i, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit:   ; preds = %bb.l, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node4js2c6FormatERKSt6vectorIS1_IcSaIcEESaIS3_EES7_S7_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #4 {
._crit_edge.i.i:
  %4 = alloca %"class.std::vector.20", align 8    ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::vector.20", align 8    ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::vector.20", align 8    ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.a, ptr %5, align 8
  store i8 10, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.c, align 1
  call void @_ZN4node4js2c4JoinERKSt6vectorIS1_IcSaIcEESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.20") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.d = load ptr, ptr %5, align 8                ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.f = load i64, ptr %i.a, align 8
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %4, align 8
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.m, ptr %7, align 8
  store i8 10, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 0, ptr %i.o, align 1
  call void @_ZN4node4js2c4JoinERKSt6vectorIS1_IcSaIcEESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.20") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %7)
end_hunk_0
