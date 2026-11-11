Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/StatementGoto?download=true
inline.NumInlined: 1386
inline.NumDeleted: 675
begin_hunk_0

$_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_6EffectESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_ = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZN13StatementGoto10stm_labelsB5cxx11E = dso_local global %"class.std::map" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN10Bookkeeper17backward_jump_cntE = external local_unnamed_addr global i32, align 4
@_ZN10Bookkeeper16forward_jump_cntE = external local_unnamed_addr global i32, align 4
@_ZTV13StatementGoto = dso_local constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTI13StatementGoto, ptr @_ZN13StatementGotoD2Ev, ptr @_ZN13StatementGotoD0Ev, ptr @_ZNK13StatementGoto11visit_factsERSt6vectorIPK4FactSaIS3_EER9CGContext, ptr @_ZNK13StatementGoto10get_blocksERSt6vectorIPK5BlockSaIS3_EE, ptr @_ZNK13StatementGoto9get_exprsERSt6vectorIPK10ExpressionSaIS3_EE, ptr @_ZNK9Statement28has_uncertain_call_recursiveEv, ptr @_ZNK9Statement11must_returnEv, ptr @_ZNK13StatementGoto9must_jumpEv, ptr @_ZNK9Statement21get_dereferenced_ptrsEv, ptr @_ZNK13StatementGoto6OutputERSoP7FactMgri] }, align 8
@.str = private unnamed_addr constant [5 x i8] c"lbl_\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"if (\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"goto \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"StatementGoto condition\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"StatementGoto skipped vars\00", align 1
@_ZTI13StatementGoto = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13StatementGoto, ptr @_ZTI9Statement }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13StatementGoto = dso_local constant [16 x i8] c"13StatementGoto\00", align 1
@_ZTI9Statement = external constant ptr
@_ZN5Error8r_error_E = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_StatementGoto.cpp, ptr null }]

@_ZN13StatementGotoC1EP5BlockRK10ExpressionPK9StatementRKSt6vectorIPK8VariableSaISB_EE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN13StatementGotoC2EP5BlockRK10ExpressionPK9StatementRKSt6vectorIPK8VariableSaISB_EE
@_ZN13StatementGotoC1ERKS_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN13StatementGotoC2ERKS_
@_ZN13StatementGotoD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13StatementGotoD2Ev

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapIPK9StatementNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS2_ESaISt4pairIKS2_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  invoke void @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISB_ESt4lessIS2_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISB_ESt4lessIS2_ESaISB_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #16
  unreachable

_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISB_ESt4lessIS2_ESaISB_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN13StatementGoto11make_randomER9CGContext(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::tuple", align 8        ; 4 uses
  %2 = alloca %"class.std::tuple.100", align 1    ; 3 uses
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.100", align 1    ; 3 uses
  %5 = alloca %"class.std::vector.14", align 8    ; 15 uses
  %i.a = alloca ptr, align 8                      ; 19 uses
  %i.b = alloca ptr, align 8                      ; 18 uses
  %6 = alloca %"class.std::vector.9", align 8     ; 6 uses
  %7 = alloca %"class.std::vector.68", align 8    ; 12 uses
  %8 = alloca %"class.std::vector.68", align 8    ; 12 uses
  %9 = alloca %"class.std::vector.68", align 8    ; 11 uses
  %10 = alloca %class.Effect, align 8             ; 7 uses
  %11 = alloca %"class.std::map.43", align 8      ; 12 uses
  %12 = alloca %"class.std::map.43", align 8      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = tail call noundef ptr @_ZNK9CGContext17get_current_blockEv(ptr noundef nonnull align 8 dereferenceable(216) %0) ; 7 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !147    ; 2 uses
  %i.h = tail call noundef ptr @_Z12get_fact_mgrPK9CGContext(ptr noundef nonnull %0) ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 168 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44   ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !45   ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %.thread187, label %bb.b

.thread187:                                       ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds i8, ptr null, i64 %i.o ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !46
  br label %_ZNSt6vectorIP5BlockSaIS1_EEC2ERKS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.s = icmp ugt i64 %i.o, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i, label %bb.c, !prof !47

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 5 uses
  store ptr %i.t, ptr %5, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !46
  %i.x = icmp samesign ugt i64 %i.o, 8
  br i1 %i.x, label %bb.d, label %bb.e, !prof !148

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIP5BlockSaIS1_EEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %i.o, 8
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIP5BlockSaIS1_EEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !48
  store ptr %i.z, ptr %i.t, align 8, !tbaa !48
  br label %_ZNSt6vectorIP5BlockSaIS1_EEC2ERKS3_.exit

_ZNSt6vectorIP5BlockSaIS1_EEC2ERKS3_.exit:        ; preds = %.thread187, %bb.d, %bb.e, %bb.f
  %i.aa = phi ptr [ %i.w, %bb.d ], [ %i.w, %bb.e ], [ %i.w, %bb.f ], [ %i.r, %.thread187 ] ; 2 uses
  %i.ab = phi ptr [ %i.v, %bb.d ], [ %i.v, %bb.e ], [ %i.v, %bb.f ], [ %i.q, %.thread187 ]
  %i.ac = phi ptr [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ %i.u, %bb.f ], [ %i.p, %.thread187 ]
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !44
  %i.ad = invoke noundef zeroext i1 @_Z12rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 40, ptr noundef null, ptr noundef null)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIP5BlockSaIS1_EEC2ERKS3_.exit
  %i.ae = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !49
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.i, label %bb.da

bb.h:                                             ; preds = %bb.l, %.thread188, %bb.j, %_ZNSt6vectorIP5BlockSaIS1_EEC2ERKS3_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.i:                                             ; preds = %bb.g
  br i1 %i.ad, label %bb.j, label %.thread188

bb.j:                                             ; preds = %bb.i
  %i.ag = invoke noundef ptr @_ZN13StatementGoto20find_good_jump_blockERSt6vectorIP5BlockSaIS2_EEPKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %i.f, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.h       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.thread188, label %.thread190

.thread188:                                       ; preds = %bb.i, %bb.k
  %i.ai = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP5BlockSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.l unwind label %bb.h       ; 0 uses

bb.l:                                             ; preds = %.thread188
  %i.aj = invoke noundef ptr @_ZN13StatementGoto20find_good_jump_blockERSt6vectorIP5BlockSaIS2_EEPKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %i.f, i1 noundef zeroext false)
          to label %bb.m unwind label %bb.h       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.da, label %.thread190

.thread190:                                       ; preds = %bb.k, %bb.m
  %.1114194 = phi ptr [ %i.aj, %bb.m ], [ %i.ag, %bb.k ] ; 3 uses
  %.1116193 = phi i1 [ false, %bb.m ], [ true, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store ptr null, ptr %i.b, align 8, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53 ; 2 uses
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread190
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !51
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !51
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread190
  %i.as = getelementptr inbounds nuw i8, ptr %.1114194, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1114194, i64 40 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !56 ; 2 uses
  %.not251 = icmp eq ptr %i.au, %i.av
  br i1 %.not251, label %_ZNSt6vectorIPK9StatementSaIS2_EED2Ev.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPK9StatementSaIS2_EE9push_backERKS2_.exit
  %i.aw = ptrtoint ptr %.sroa.0177.1 to i64       ; 3 uses
  %.not117 = icmp eq ptr %.sroa.11.1, %.sroa.0177.1
  br i1 %.not117, label %.thread195, label %bb.x

.lr.ph:                                           ; preds = %bb.o, %_ZNSt6vectorIPK9StatementSaIS2_EE9push_backERKS2_.exit
  %i.ax = phi ptr [ %i.bx, %_ZNSt6vectorIPK9StatementSaIS2_EE9push_backERKS2_.exit ], [ %i.av, %bb.o ]
  %.089246 = phi i64 [ %i.bv, %_ZNSt6vectorIPK9StatementSaIS2_EE9push_backERKS2_.exit ], [ 0, %bb.o ] ; 2 uses
  %.sroa.0177.0245 = phi ptr [ %.sroa.0177.1, %_ZNSt6vectorIPK9StatementSaIS2_EE9push_backERKS2_.exit ], [ null, %bb.o ] ; 9 uses
  %.sroa.16.0244 = phi ptr [ %.sroa.16.1, %_ZNSt6vectorIPK9StatementSaIS2_EE9push_backERKS2_.exit ], [ null, %bb.o ] ; 7 uses
  %.sroa.11.0243 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIPK9StatementSaIS2_EE9push_backERKS2_.exit ], [ null, %bb.o ] ; 5 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.089246
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !51 ; 5 uses
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !51
  %.not128 = icmp eq ptr %i.az, %i.ba
  br i1 %.not128, label %_ZNSt6vectorIPK9StatementSaIS2_EE9push_backERKS2_.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %bb.q unwind label %.loopexit209

bb.q:                                             ; preds = %bb.p
  br i1 %i.be, label %_ZNSt6vectorIPK9StatementSaIS2_EE9push_backERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i = icmp eq ptr %.sroa.11.0243, %.sroa.16.0244
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.az, ptr %.sroa.11.0243, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.11.0243, i64 8
  br label %_ZNSt6vectorIPK9StatementSaIS2_EE9push_backERKS2_.exit

bb.t:                                             ; preds = %bb.r
  %i.bg = ptrtoint ptr %.sroa.16.0244 to i64
  %i.bh = ptrtoint ptr %.sroa.0177.0245 to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 6 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775800
  br i1 %i.bj, label %bb.u, label %_ZNKSt6vectorIPK9StatementSaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
          to label %.noexc unwind label %.loopexit.split-lp210

.noexc:                                           ; preds = %bb.u
  unreachable

_ZNKSt6vectorIPK9StatementSaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.bk = ashr exact i64 %i.bi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bl, i64 1152921504606846975)
  %i.bo = select i1 %i.bm, i64 1152921504606846975, i64 %i.bn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #19
          to label %.noexc132 unwind label %.loopexit209 ; 4 uses

.noexc132:                                        ; preds = %_ZNKSt6vectorIPK9StatementSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.bi ; 2 uses
  store ptr %i.az, ptr %i.br, align 8, !tbaa !51
  %i.bs = icmp sgt i64 %i.bi, 0
  br i1 %i.bs, label %bb.v, label %_ZNSt6vectorIPK9StatementSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.v:                                             ; preds = %.noexc132
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr align 8 %.sroa.0177.0245, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIPK9StatementSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPK9StatementSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.v, %.noexc132
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0177.0245, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPK9StatementSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIPK9StatementSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0177.0245, i64 noundef %i.bi) #20
  br label %_ZNSt6vectorIPK9StatementSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPK9StatementSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIPK9StatementSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  br label %_ZNSt6vectorIPK9StatementSaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPK9StatementSaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPK9StatementSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.s, %bb.q, %.lr.ph
  %.sroa.11.1 = phi ptr [ %.sroa.11.0243, %.lr.ph ], [ %.sroa.11.0243, %bb.q ], [ %i.bt, %_ZNSt6vectorIPK9StatementSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.bf, %bb.s ] ; 3 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.0244, %.lr.ph ], [ %.sroa.16.0244, %bb.q ], [ %i.bu, %_ZNSt6vectorIPK9StatementSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.16.0244, %bb.s ] ; 12 uses
  %.sroa.0177.1 = phi ptr [ %.sroa.0177.0245, %.lr.ph ], [ %.sroa.0177.0245, %bb.q ], [ %i.bq, %_ZNSt6vectorIPK9StatementSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0177.0245, %bb.s ] ; 16 uses
  %i.bv = add nuw i64 %.089246, 1                 ; 2 uses
  %i.bw = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !56 ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 3
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %.lr.ph, label %._crit_edge, !llvm.loop !144

bb.x:                                             ; preds = %._crit_edge
  %i.cd = ptrtoint ptr %.sroa.11.1 to i64
  %i.ce = sub i64 %i.cd, %i.aw
  %i.cf = lshr exact i64 %i.ce, 3
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = invoke noundef i32 @_Z8rnd_uptojPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.cg, ptr noundef null, ptr noundef null)
          to label %bb.y unwind label %.loopexit.split-lp210

bb.y:                                             ; preds = %bb.x
  %i.ci = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !49
  %.not118 = icmp eq i32 %i.ci, 0
  br i1 %.not118, label %bb.z, label %.thread195

bb.z:                                             ; preds = %bb.y
  %i.cj = zext i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0177.1, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !51
  store ptr %i.cl, ptr %i.b, align 8, !tbaa !51
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_ZN6Effect5clearEv(ptr noundef nonnull align 8 dereferenceable(74) %i.cm)
          to label %bb.aa unwind label %.loopexit.split-lp210

bb.aa:                                            ; preds = %bb.z
  br i1 %.1116193, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !60
  %i.cp = invoke noundef ptr @_Z12get_int_typev()
          to label %bb.ac unwind label %.loopexit.split-lp210

bb.ac:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 360
  br label %.invoke

bb.ad:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !18 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 248 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.ae ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.ae ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !51
  %i.cy = icmp ult ptr %i.cx, %i.cv               ; 2 uses
  %.19.i.i.i.i = select i1 %i.cy, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.cy, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i.i133 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i133, label %_ZNSt3mapIPK9Statement6EffectSt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %bb.ae, !llvm.loop !0

_ZNSt3mapIPK9Statement6EffectSt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.ae
  %i.cz = icmp eq ptr %.19.i.i.i.i, %i.cu
  br i1 %i.cz, label %.critedge.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt3mapIPK9Statement6EffectSt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !63
  %i.dc = icmp ult ptr %i.cv, %i.db
  br i1 %i.dc, label %.critedge.i, label %bb.ag

.critedge.i:                                      ; preds = %bb.af, %_ZNSt3mapIPK9Statement6EffectSt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, %bb.ad
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.af ], [ %.19.i.i.i.i, %_ZNSt3mapIPK9Statement6EffectSt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i ], [ %i.cu, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %i.b, ptr %3, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.dd = invoke ptr @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_6EffectESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cr, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc134 unwind label %.loopexit.split-lp210

.noexc134:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc134, %bb.af
  %.sroa.06.0.i = phi ptr [ %i.dd, %.noexc134 ], [ %.19.i.i.i.i, %bb.af ]
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.df = invoke noundef ptr @_Z12get_int_typev()
          to label %bb.ah unwind label %.loopexit.split-lp210

bb.ah:                                            ; preds = %bb.ag
  %i.dg = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !18 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  %.not10.i.i.i.i135 = icmp eq ptr %i.di, null
  br i1 %.not10.i.i.i.i135, label %.critedge.i145, label %.lr.ph.i.i.i.i136

.lr.ph.i.i.i.i136:                                ; preds = %bb.ah
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i.i.i.i136
end_hunk_0
begin_hunk_1_@_ZN13StatementGoto11make_randomER9CGContext:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br i1 %i.ex, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %i.gz = load ptr, ptr %i.a, align 8, !tbaa !51
  invoke void @_ZN7FactMgr11set_fact_inEPK9StatementRKSt6vectorIPK4FactSaIS6_EE(ptr noundef nonnull align 8 dereferenceable(392) %i.h, ptr noundef %i.gz, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.cd unwind label %bb.bs

bb.cd:                                            ; preds = %bb.cc
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !51
  invoke void @_ZN7FactMgr12set_fact_outEPK9StatementRKSt6vectorIPK4FactSaIS6_EE(ptr noundef nonnull align 8 dereferenceable(392) %i.h, ptr noundef %i.ha, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.cg unwind label %bb.bs

bb.ce:                                            ; preds = %bb.bz, %bb.by
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.cr

bb.cf:                                            ; preds = %bb.ca
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.cr

bb.cg:                                            ; preds = %bb.cd, %bb.cb
  %i.hd = load ptr, ptr %i.a, align 8, !tbaa !51
  invoke void @_ZN7FactMgr15create_cfg_edgeEPK9StatementS2_bb(ptr noundef nonnull align 8 dereferenceable(392) %i.h, ptr noundef nonnull %i.fz, ptr noundef %i.hd, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.ch unwind label %bb.bs

bb.ch:                                            ; preds = %bb.cg
  %i.he = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.gu, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ci unwind label %bb.bs

bb.ci:                                            ; preds = %bb.ch
  %i.hf = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 2 uses
  %i.hg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPK4FactSaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.hf, ptr noundef nonnull align 8 dereferenceable(24) %i.he)
          to label %bb.cj unwind label %bb.bs     ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  %i.hh = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !91
  %i.hk = add i32 %i.hj, -5
  %i.hl = icmp ult i32 %i.hk, 4
  br i1 %i.hl, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.hm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cl unwind label %bb.bs

bb.cl:                                            ; preds = %bb.ck
  %i.hn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPK4FactSaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.hf, ptr noundef nonnull align 8 dereferenceable(24) %i.hm)
          to label %bb.cm unwind label %bb.bs     ; 0 uses

bb.cm:                                            ; preds = %bb.cj, %bb.cl
  %i.ho = load i32, ptr @_ZN10Bookkeeper16forward_jump_cntE, align 4, !tbaa !49
  %i.hp = add nsw i32 %i.ho, 1
  store i32 %i.hp, ptr @_ZN10Bookkeeper16forward_jump_cntE, align 4, !tbaa !49
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN9CGContext18reset_effect_accumERK6Effect.exit, %bb.cm
  call void @_ZN6EffectD1Ev(ptr noundef nonnull align 8 dead_on_return(74) dereferenceable(74) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.hq = load ptr, ptr %9, align 8, !tbaa !97    ; 3 uses
  %.not.i.i.i153 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i153, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !98
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = ptrtoint ptr %i.hq to i64
  %i.hv = sub i64 %i.ht, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.hv) #20
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit:            ; preds = %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.hw = load ptr, ptr %8, align 8, !tbaa !97    ; 3 uses
  %.not.i.i.i154 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i154, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit155, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !98
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hw to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.ib) #20
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit155

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit155:         ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.ic = load ptr, ptr %7, align 8, !tbaa !97    ; 3 uses
  %.not.i.i.i156 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i156, label %bb.cx, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit155
  %i.id = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !98
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = ptrtoint ptr %i.ic to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef %i.ih) #20
  br label %bb.cx

bb.cr:                                            ; preds = %bb.bs, %bb.bt, %bb.bw, %bb.ce, %bb.cf, %bb.bm
  %.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.bt ], [ %i.fs, %bb.bm ], [ %i.gk, %bb.bs ], [ %i.hc, %bb.cf ], [ %i.hb, %bb.ce ], [ %i.gs, %bb.bw ]
  call void @_ZN6EffectD1Ev(ptr noundef nonnull align 8 dead_on_return(74) dereferenceable(74) %10) #17
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.bl
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.cr ], [ %i.fr, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.bk
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.cs ], [ %i.fq, %bb.bk ]
  %i.ii = load ptr, ptr %9, align 8, !tbaa !97    ; 3 uses
  %.not.i.i.i158 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit159, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ij = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !98
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = sub i64 %i.il, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.in) #20
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit159

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit159:         ; preds = %bb.ct, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.io = load ptr, ptr %8, align 8, !tbaa !97    ; 3 uses
  %.not.i.i.i160 = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i160, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit161, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit159
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !98
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.io to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.it) #20
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit161

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit161:         ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit159, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.iu = load ptr, ptr %7, align 8, !tbaa !97    ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit163, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit161
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !98
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iu to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.iz) #20
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit163

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit163:         ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit161, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit166

bb.cx:                                            ; preds = %bb.cq, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit155
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.thread195.sink.split

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit166:     ; preds = %bb.au, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn123 = phi { ptr, i32 } [ %i.ej, %bb.au ], [ %.pn.pn.pn.pn, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit163 ], [ %lpad.loopexit.split-lp322, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.cy

.thread195.sink.split:                            ; preds = %.thread, %bb.cx
  %.6.ph = phi ptr [ null, %bb.cx ], [ %i.eb, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.thread195

.thread195:                                       ; preds = %.thread195.sink.split, %._crit_edge, %bb.y
  %.6 = phi ptr [ null, %bb.y ], [ null, %._crit_edge ], [ %.6.ph, %.thread195.sink.split ] ; 2 uses
  %.not.i.i.i167 = icmp eq ptr %.sroa.0177.1, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorIPK9StatementSaIS2_EED2Ev.exit, label %.thread195.thread

.thread195.thread:                                ; preds = %bb.al, %.thread195
  %.6205 = phi ptr [ %.6, %.thread195 ], [ null, %bb.al ]
  %i.ja = ptrtoint ptr %.sroa.16.1 to i64
  %i.jb = sub i64 %i.ja, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0177.1, i64 noundef %i.jb) #20
  br label %_ZNSt6vectorIPK9StatementSaIS2_EED2Ev.exit

_ZNSt6vectorIPK9StatementSaIS2_EED2Ev.exit:       ; preds = %bb.o, %.thread195, %.thread195.thread
  %.6206 = phi ptr [ %.6, %.thread195 ], [ %.6205, %.thread195.thread ], [ null, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.da

bb.cy:                                            ; preds = %.loopexit209, %.loopexit.split-lp210, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit166
  %.sroa.16.0233 = phi ptr [ %.sroa.16.1, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit166 ], [ %.sroa.16.0244, %.loopexit209 ], [ %.sroa.16.0235, %.loopexit.split-lp210 ]
  %.sroa.0177.0221 = phi ptr [ %.sroa.0177.1, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit166 ], [ %.sroa.0177.0245, %.loopexit209 ], [ %.sroa.0177.0223, %.loopexit.split-lp210 ] ; 3 uses
  %.pn129 = phi { ptr, i32 } [ %.pn123, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit166 ], [ %lpad.loopexit211, %.loopexit209 ], [ %lpad.loopexit.split-lp212, %.loopexit.split-lp210 ] ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %.sroa.0177.0221, null
  br i1 %.not.i.i.i168, label %_ZNSt6vectorIPK9StatementSaIS2_EED2Ev.exit169, label %._crit_edge260

._crit_edge260:                                   ; preds = %bb.cy
  %.pre = ptrtoint ptr %.sroa.0177.0221 to i64
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge260, %.thread198
  %.pre-phi = phi i64 [ %.pre, %._crit_edge260 ], [ %i.aw, %.thread198 ]
  %.sroa.16.0232.a = phi ptr [ %.sroa.16.0233, %._crit_edge260 ], [ %.sroa.16.1, %.thread198 ]
  %.sroa.0177.0229 = phi ptr [ %.sroa.0177.0221, %._crit_edge260 ], [ %.sroa.0177.1, %.thread198 ]
  %.pn129201 = phi { ptr, i32 } [ %.pn129, %._crit_edge260 ], [ %i.ei, %.thread198 ]
  %i.jc = ptrtoint ptr %.sroa.16.0232.a to i64
  %i.jd = sub i64 %i.jc, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0177.0229, i64 noundef %i.jd) #20
  br label %_ZNSt6vectorIPK9StatementSaIS2_EED2Ev.exit169

_ZNSt6vectorIPK9StatementSaIS2_EED2Ev.exit169:    ; preds = %bb.cy, %bb.cz
  %.pn129202 = phi { ptr, i32 } [ %.pn129, %bb.cy ], [ %.pn129201, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.dc

bb.da:                                            ; preds = %bb.m, %bb.g, %_ZNSt6vectorIPK9StatementSaIS2_EED2Ev.exit
  %.7 = phi ptr [ %.6206, %_ZNSt6vectorIPK9StatementSaIS2_EED2Ev.exit ], [ null, %bb.g ], [ null, %bb.m ]
  %i.je = load ptr, ptr %5, align 8, !tbaa !45    ; 3 uses
  %.not.i.i.i170 = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i170, label %_ZNSt6vectorIP5BlockSaIS1_EED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jf = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = ptrtoint ptr %i.je to i64
  %i.ji = sub i64 %i.jg, %i.jh
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.ji) #20
  br label %_ZNSt6vectorIP5BlockSaIS1_EED2Ev.exit

_ZNSt6vectorIP5BlockSaIS1_EED2Ev.exit:            ; preds = %bb.da, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret ptr %.7

bb.dc:                                            ; preds = %_ZNSt6vectorIPK9StatementSaIS2_EED2Ev.exit169, %bb.h
  %.pn129.pn = phi { ptr, i32 } [ %.pn129202, %_ZNSt6vectorIPK9StatementSaIS2_EED2Ev.exit169 ], [ %i.af, %bb.h ]
  %i.jj = load ptr, ptr %5, align 8, !tbaa !45    ; 3 uses
  %.not.i.i.i171 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i171, label %_ZNSt6vectorIP5BlockSaIS1_EED2Ev.exit172, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.jk = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = ptrtoint ptr %i.jj to i64
  %i.jn = sub i64 %i.jl, %i.jm
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jn) #20
  br label %_ZNSt6vectorIP5BlockSaIS1_EED2Ev.exit172

_ZNSt6vectorIP5BlockSaIS1_EED2Ev.exit172:         ; preds = %bb.dc, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn129.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noundef ptr @_ZNK9CGContext17get_current_blockEv(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #4

declare noundef ptr @_Z12get_fact_mgrPK9CGContext(ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_Z12rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN13StatementGoto20find_good_jump_blockERSt6vectorIP5BlockSaIS2_EEPKS1_b(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !150
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %tailrecurse.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 153
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %tailrecurse.outer.backedge
  %.tr95.ph113 = phi i1 [ %2, %.lr.ph.lr.ph ], [ %or.cond8, %tailrecurse.outer.backedge ] ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse.backedge
  %i.h = load i8, ptr %i.e, align 1, !tbaa !151, !range !99, !noundef !100
  %i.i = trunc nuw i8 %i.h to i1
  %.not = xor i1 %i.i, true
  %or.cond = or i1 %.tr95.ph113, %.not
  br i1 %or.cond, label %bb.c, label %tailrecurse.outer._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.l = icmp ne ptr %i.j, %i.k
  %or.cond4 = or i1 %.tr95.ph113, %i.l
  br i1 %or.cond4, label %bb.d, label %tailrecurse.outer._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef ptr @_ZNK5Block12get_last_stmEv(ptr noundef nonnull align 8 dereferenceable(192) %1) ; 3 uses
  %.not75 = icmp eq ptr %i.m, null
  br i1 %.not75, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.m)
  %or.cond6 = and i1 %.tr95.ph113, %i.q
  br i1 %or.cond6, label %tailrecurse.outer._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.s = load ptr, ptr %0, align 8, !tbaa !45
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 3
  %i.x = trunc i64 %i.w to i32
  %i.y = tail call noundef i32 @_Z8rnd_uptojPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.x, ptr noundef null, ptr noundef null)
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !49
  %.not76 = icmp eq i32 %i.aa, 0
  br i1 %.not76, label %bb.g, label %tailrecurse.outer._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %0, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z ; 10 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 153
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !151, !range !99, !noundef !100
  %i.ag = trunc nuw i8 %i.af to i1
  %or.cond8 = and i1 %.tr95.ph113, %i.ag          ; 2 uses
  br i1 %or.cond8, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !150 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %tailrecurse.outer.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.j, label %bb.k, !prof !101

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.ah, i64 %i.am, i1 false)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !44
  br label %tailrecurse.outer.backedge

bb.k:                                             ; preds = %bb.i
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.l, label %tailrecurse.outer.backedge

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !48
  store ptr %i.ap, ptr %i.ac, align 8, !tbaa !48
  br label %tailrecurse.outer.backedge

tailrecurse.outer.backedge:                       ; preds = %bb.y, %bb.x, %bb.w, %bb.u, %bb.l, %bb.k, %bb.j, %bb.h
  %.pn = phi ptr [ %i.ai, %bb.h ], [ %i.ai, %bb.l ], [ %i.ai, %bb.k ], [ %.pre.i.i, %bb.j ], [ %i.br, %bb.y ], [ %i.br, %bb.x ], [ %.pre.i.i79, %bb.w ], [ %i.br, %bb.u ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8 ; 2 uses
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !44
  %i.aq = load ptr, ptr %0, align 8, !tbaa !150
  %i.ar = icmp eq ptr %i.aq, %storemerge
  br i1 %i.ar, label %tailrecurse.outer._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !53 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !53 ; 2 uses
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !150 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %tailrecurse.backedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = icmp sgt i64 %i.bc, 8
  br i1 %i.bd, label %bb.p, label %bb.q, !prof !101

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.ax, i64 %i.bc, i1 false)
  %.pre.i.i77 = load ptr, ptr %i.a, align 8, !tbaa !44
  br label %tailrecurse.backedge

bb.q:                                             ; preds = %bb.o
  %i.be = icmp eq i64 %i.bc, 8
  br i1 %i.be, label %bb.r, label %tailrecurse.backedge

bb.r:                                             ; preds = %bb.q
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !48
  store ptr %i.bf, ptr %i.ac, align 8, !tbaa !48
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.r, %bb.q, %bb.p, %bb.n
  %.pn116 = phi ptr [ %i.ay, %bb.n ], [ %i.ay, %bb.r ], [ %i.ay, %bb.q ], [ %.pre.i.i77, %bb.p ], [ %i.ci, %bb.ag ], [ %i.ci, %bb.af ], [ %.pre.i.i81, %bb.ae ], [ %i.ci, %bb.ac ]
  %storemerge115 = getelementptr inbounds i8, ptr %.pn116, i64 -8 ; 2 uses
  store ptr %storemerge115, ptr %i.a, align 8, !tbaa !44
end_hunk_1
