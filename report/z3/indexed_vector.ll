Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/indexed_vector?download=true
inline.NumInlined: 664
inline.NumDeleted: 308
begin_hunk_0

$_ZN2lp14indexed_vectorI8rationalE5eraseEj = comdat any

$_ZN2lp14indexed_vectorINS_12numeric_pairI8rationalEEE16erase_from_indexEj = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorI8rational13std_allocatorIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S3_EEmRKS0_ = comdat any

$_ZSt24__uninitialized_fill_n_aIP8rationalmS0_13std_allocatorIS0_EET_S4_T0_RKT1_RT2_ = comdat any

$_ZNSt6vectorI8rational13std_allocatorIS0_EE16_Temporary_valueD2Ev = comdat any

$_ZSt8_DestroyIP8rational13std_allocatorIS0_EEvT_S4_RT0_ = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIP8rationalES2_13std_allocatorIS1_EET0_T_S7_S6_RT1_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP8rationalS4_EET0_T_S6_S5_ = comdat any

$_ZNSt6vectorIj13std_allocatorIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS2_EEmRKj = comdat any

$_ZNK2lp12numeric_pairI8rationalE9to_stringB5cxx11Ev = comdat any

$_ZN2lp11T_to_stringI8rationalEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"m_index \00", align 1
@_ZN8rational13g_mpq_managerE = external local_unnamed_addr global ptr, align 8
@_ZN8rational6m_zeroE = external global %class.rational, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2lp23print_vector_as_doublesERK6vectorI8rationalLb1EjERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.critedge, label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit

_ZNK6vectorI8rationalLb1EjE4sizeEv.exit:          ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.a ] ; 3 uses
  %i.c = phi ptr [ %i.ah, %bb.e ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = zext i32 %i.e to i64
  %i.g = icmp samesign ult i64 %indvars.iv, %i.f
  br i1 %i.g, label %bb.e, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit, %bb.e, %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !15
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %1, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %.critedge
  tail call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !38
  %.not.i1.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 67
  %i.q = load i8, ptr %i.p, align 1, !tbaa !39
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.m)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef signext i8 %i.t(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.q, %bb.c ], [ %i.u, %bb.d ]
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 0 uses
  ret void

bb.e:                                             ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv
  %i.y = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !41
  %i.z = tail call noundef double @_ZNK11mpq_managerILb1EE10get_doubleERK3mpq(ptr noundef nonnull align 8 dereferenceable(728) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.z) ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 3, ptr %i.af, align 8, !tbaa !70
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ah = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.critedge, label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit, !llvm.loop !67
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp14indexed_vectorI8rationalE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN8rationalaSERKS_.exit, %bb.a
  tail call void @_ZNSt6vectorIj13std_allocatorIjEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN8rationalaSERKS_.exit
  %.sroa.03.06 = phi ptr [ %i.z, %_ZN8rationalaSERKS_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load i32, ptr %.sroa.03.06, align 4, !tbaa !13
  %i.g = zext i32 %i.f to i64
  %i.h = load ptr, ptr %0, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.g ; 5 uses
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !41 ; 2 uses
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 4), align 4
  %i.l = and i8 %i.k, 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.n = load i32, ptr @_ZN8rational6m_zeroE, align 8, !tbaa !48
  store i32 %i.n, ptr %i.i, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, -2
  store i8 %i.q, ptr %i.o, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational6m_zeroE)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 20), align 4
  %i.t = and i8 %i.s, 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 16), align 8, !tbaa !48
  store i32 %i.v, ptr %i.r, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4
  %i.y = and i8 %i.x, -2
  store i8 %i.y, ptr %i.w, align 4
  br label %_ZN8rationalaSERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 16))
  br label %_ZN8rationalaSERKS_.exit

_ZN8rationalaSERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.06, i64 4 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.d
  br i1 %i.aa, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIj13std_allocatorIjEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !51     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not23.i = icmp ult i64 %i.n, %i.i
  br i1 %.not23.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPjm13std_allocatorIjEET_S3_T0_RT1_.exit.i

_ZSt27__uninitialized_default_n_aIPjm13std_allocatorIjEET_S3_T0_RT1_.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !13
  %scevgep.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i, ptr %i.a, align 8, !tbaa !50
  br label %_ZNSt6vectorIj13std_allocatorIjEE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #16
  unreachable

_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.v) ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !13
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i
  %2 = ptrtoaddr ptr %i.w to i64
  %i.z = add i64 %i.d, -4
  %i.aa = sub i64 %i.z, %i.e                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 44
  %3 = sub i64 %i.e, %2
  %diff.check = icmp ugt i64 %3, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 9223372036854775800     ; 3 uses
  %i.ad = shl i64 %n.vec, 2                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.ah = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !13, !alias.scope !77, !noalias !76
  %wide.load13 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !13, !alias.scope !77, !noalias !76
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !13, !alias.scope !76, !noalias !77
  store <4 x i32> %wide.load13, ptr %i.ai, align 4, !tbaa !13, !alias.scope !76, !noalias !77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.ak = load i32, ptr %.0911.i.i.i.i, align 4, !tbaa !13, !alias.scope !77, !noalias !76
  store i32 %i.ak, ptr %.012.i.i.i.i, align 4, !tbaa !13, !alias.scope !76, !noalias !77
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !75

_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i
  %.not.i29.i = icmp eq ptr %i.c, null
  br i1 %.not.i29.i, label %_ZNSt12_Vector_baseIj13std_allocatorIjEE13_M_deallocateEPjm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit.i
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
  br label %_ZNSt12_Vector_baseIj13std_allocatorIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIj13std_allocatorIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.e, %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.i
  store ptr %i.an, ptr %i.a, align 8, !tbaa !50
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ao, ptr %i.j, align 8, !tbaa !52
  br label %_ZNSt6vectorIj13std_allocatorIjEE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.ap = icmp ult i64 %1, %i.g
  br i1 %i.ap, label %bb.g, label %_ZNSt6vectorIj13std_allocatorIjEE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.aq
  br i1 %.not.i4, label %_ZNSt6vectorIj13std_allocatorIjEE17_M_default_appendEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !50
  br label %_ZNSt6vectorIj13std_allocatorIjEE17_M_default_appendEm.exit

_ZNSt6vectorIj13std_allocatorIjEE17_M_default_appendEm.exit: ; preds = %bb.h, %bb.g, %_ZNSt12_Vector_baseIj13std_allocatorIjEE13_M_deallocateEPjm.exit.i, %_ZSt27__uninitialized_default_n_aIPjm13std_allocatorIjEET_S3_T0_RT1_.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp14indexed_vectorIjE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !51
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void @_ZNSt6vectorIj13std_allocatorIjEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.03.06 = phi ptr [ %i.b, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.g = load i32, ptr %.sroa.03.06, align 4, !tbaa !13
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 0, ptr %i.i, align 4, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.03.06, i64 4 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp14indexed_vectorI8rationalE9clear_allEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = load ptr, ptr %0, align 8, !tbaa !45
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = and i64 %i.f, 137438953440
  %.not2 = icmp eq i64 %i.g, 0
  br i1 %.not2, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = lshr exact i64 %i.f, 5
  %i.i = and i64 %i.h, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN8rationalaSERKS_.exit
  %indvars.iv = phi i64 [ %i.i, %.lr.ph.preheader ], [ %i.j, %_ZN8rationalaSERKS_.exit ]
  %i.j = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.j ; 5 uses
  %i.m = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !41 ; 2 uses
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 4), align 4
  %i.o = and i8 %i.n, 1
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.q = load i32, ptr @_ZN8rational6m_zeroE, align 8, !tbaa !48
  store i32 %i.q, ptr %i.l, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, -2
  store i8 %i.t, ptr %i.r, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational6m_zeroE)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 20), align 4
  %i.w = and i8 %i.v, 1
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 16), align 8, !tbaa !48
  store i32 %i.y, ptr %i.u, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = and i8 %i.aa, -2
  store i8 %i.ab, ptr %i.z, align 4
  br label %_ZN8rationalaSERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 16))
  br label %_ZN8rationalaSERKS_.exit

_ZN8rationalaSERKS_.exit:                         ; preds = %bb.d, %bb.e
  %.not.wide = icmp eq i64 %i.j, 0
  br i1 %.not.wide, label %._crit_edge, label %.lr.ph, !llvm.loop !78

._crit_edge:                                      ; preds = %_ZN8rationalaSERKS_.exit, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt6vectorIj13std_allocatorIjEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp14indexed_vectorI8rationalE16erase_from_indexEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 7 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr i64 %i.g, 4                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.j = and i64 %i.g, -16
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.j ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
end_hunk_0
begin_hunk_1_@_ZN2lp14indexed_vectorI8rationalE16erase_from_indexEj:bb.a
  %i.an = getelementptr inbounds i8, ptr %i.b, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, %i.d
  br i1 %i.ap, label %_ZNSt6vectorIj13std_allocatorIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS2_EE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.e, %i.aq                     ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 4
  br i1 %i.as, label %bb.l, label %bb.m, !prof !56

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.an, ptr nonnull align 4 %i.ao, i64 %i.ar, i1 false)
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !50
  br label %_ZNSt6vectorIj13std_allocatorIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS2_EE.exit

bb.m:                                             ; preds = %bb.k
  %i.at = icmp eq i64 %i.ar, 4
  br i1 %i.at, label %bb.n, label %_ZNSt6vectorIj13std_allocatorIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS2_EE.exit

bb.n:                                             ; preds = %bb.m
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !13
  store i32 %i.au, ptr %i.an, align 4, !tbaa !13
  br label %_ZNSt6vectorIj13std_allocatorIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS2_EE.exit

_ZNSt6vectorIj13std_allocatorIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS2_EE.exit: ; preds = %bb.j, %bb.l, %bb.m, %bb.n
  %i.av = phi ptr [ %i.d, %bb.n ], [ %i.d, %bb.m ], [ %.pre.i.i, %bb.l ], [ %i.d, %bb.j ]
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -4
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !50
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.thread

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZNSt6vectorIj13std_allocatorIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS2_EE.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp14indexed_vectorI8rationalE6resizeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5                   ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.a
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = sub nuw nsw i64 %i.a, %i.h
  tail call void @_ZNSt6vectorI8rational13std_allocatorIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S3_EEmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational6m_zeroE)
  br label %_ZNSt6vectorI8rational13std_allocatorIS0_EE6resizeEmRKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.h, %i.a
  br i1 %i.k, label %bb.d, label %_ZNSt6vectorI8rational13std_allocatorIS0_EE6resizeEmRKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.a ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorI8rational13std_allocatorIS0_EE6resizeEmRKS0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZNSt16allocator_traitsI13std_allocatorI8rationalEE7destroyIS1_EEvRS2_PT_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.q, %_ZNSt16allocator_traitsI13std_allocatorI8rationalEE7destroyIS1_EEvRS2_PT_.exit.i.i.i ], [ %i.l, %bb.d ] ; 3 uses
  %i.m = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !41 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(32) %.06.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.e

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_ZNSt16allocator_traitsI13std_allocatorI8rationalEE7destroyIS1_EEvRS2_PT_.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #17
  unreachable

_ZNSt16allocator_traitsI13std_allocatorI8rationalEE7destroyIS1_EEvRS2_PT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP8rational13std_allocatorIS0_EEvT_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIP8rational13std_allocatorIS0_EEvT_S4_RT0_.exit.i.i: ; preds = %_ZNSt16allocator_traitsI13std_allocatorI8rationalEE7destroyIS1_EEvRS2_PT_.exit.i.i.i
  store ptr %i.l, ptr %i.b, align 8, !tbaa !55
  br label %_ZNSt6vectorI8rational13std_allocatorIS0_EE6resizeEmRKS0_.exit

_ZNSt6vectorI8rational13std_allocatorIS0_EE6resizeEmRKS0_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIP8rational13std_allocatorIS0_EEvT_S4_RT0_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp14indexed_vectorIjE6resizeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2                   ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.b
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw nsw i64 %i.b, %i.i
  call void @_ZNSt6vectorIj13std_allocatorIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS2_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.d, i64 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIj13std_allocatorIjEE6resizeEmRKj.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.i, %i.b
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorIj13std_allocatorIjEE6resizeEmRKj.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE6resizeEmRKj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.m, ptr %i.c, align 8, !tbaa !50
  br label %_ZNSt6vectorIj13std_allocatorIjEE6resizeEmRKj.exit

_ZNSt6vectorIj13std_allocatorIjEE6resizeEmRKj.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp14indexed_vectorI8rationalE9set_valueERKS1_j(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = load ptr, ptr %0, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.a ; 5 uses
  %i.d = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !41 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %1, align 8, !tbaa !48
  store i32 %i.i, ptr %i.c, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -2
  store i8 %i.l, ptr %i.j, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.s = load i32, ptr %i.n, align 8, !tbaa !48
  store i32 %i.s, ptr %i.m, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4
  %i.v = and i8 %i.u, -2
  store i8 %i.v, ptr %i.t, align 4
  br label %_ZN8rationalaSERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  br label %_ZN8rationalaSERKS_.exit

_ZN8rationalaSERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8rationalaSERKS_.exit
  store i32 %2, ptr %i.y, align 4, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !50
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit

bb.g:                                             ; preds = %_ZN8rationalaSERKS_.exit
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !51  ; 7 uses
  %i.ad = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775804
  br i1 %i.ag, label %bb.h, label %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #16
  unreachable

_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ah = ashr exact i64 %i.af, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 2305843009213693951)
  %i.al = select i1 %i.aj, i64 2305843009213693951, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 2
  %i.an = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.am) ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i32 %2, ptr %i.ao, align 4, !tbaa !13
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i
  %3 = ptrtoaddr ptr %i.an to i64
  %i.ap = add i64 %i.ad, -4
  %i.aq = sub i64 %i.ap, %i.ae                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 44
  %4 = sub i64 %i.ae, %3
  %diff.check = icmp ugt i64 %4, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.an, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.ac, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.ac, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.ax = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep5, align 4, !tbaa !13, !alias.scope !85, !noalias !84
  %wide.load6 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !13, !alias.scope !85, !noalias !84
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !13, !alias.scope !84, !noalias !85
  store <4 x i32> %wide.load6, ptr %i.ay, align 4, !tbaa !13, !alias.scope !84, !noalias !85
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.preheader8:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.ba = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !13, !alias.scope !85, !noalias !84
  store i32 %i.ba, ptr %.012.i.i.i.i.i, align 4, !tbaa !13, !alias.scope !84, !noalias !85
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !83

_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i ], [ %i.au, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ac)
  br label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i

_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i
  store ptr %i.an, ptr %i.w, align 8, !tbaa !51
  store ptr %i.bd, ptr %i.x, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.al
  store ptr %i.be, ptr %i.z, align 8, !tbaa !52
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit

_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit: ; preds = %bb.f, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp14indexed_vectorIjE9set_valueERKjj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !13
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %0, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  store i32 %i.a, ptr %i.d, align 4, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %2, ptr %i.g, align 4, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.j, ptr %i.f, align 8, !tbaa !50
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !51   ; 7 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775804
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #16
  unreachable

_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 2305843009213693951)
  %i.t = select i1 %i.r, i64 2305843009213693951, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.u) ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store i32 %2, ptr %i.w, align 4, !tbaa !13
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i
  %3 = ptrtoaddr ptr %i.v to i64
  %i.x = add i64 %i.l, -4
  %i.y = sub i64 %i.x, %i.m                       ; 2 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 44
  %4 = sub i64 %i.m, %3
  %diff.check = icmp ugt i64 %4, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.v, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.k, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ae ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.k, i64 %i.ae ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.af = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep5, align 4, !tbaa !13, !alias.scope !92, !noalias !91
  %wide.load6 = load <4 x i32>, ptr %i.af, align 4, !tbaa !13, !alias.scope !92, !noalias !91
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !13, !alias.scope !91, !noalias !92
  store <4 x i32> %wide.load6, ptr %i.ag, align 4, !tbaa !13, !alias.scope !91, !noalias !92
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.preheader8:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.ai = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !13, !alias.scope !92, !noalias !91
  store i32 %i.ai, ptr %.012.i.i.i.i.i, align 4, !tbaa !13, !alias.scope !91, !noalias !92
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !90

_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i ], [ %i.ac, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.k)
  br label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i

_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !51
  store ptr %i.al, ptr %i.f, align 8, !tbaa !50
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t
  store ptr %i.am, ptr %i.h, align 8, !tbaa !52
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit

_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit: ; preds = %bb.b, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp14indexed_vectorI8rationalE5printERSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 8) ; 0 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !38
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !39
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.t, %i.u
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.v = load ptr, ptr %1, align 8, !tbaa !15
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32  ; 6 uses
  %.not.i.i.i8 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i8, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i9

bb.e:                                             ; preds = %._crit_edge
  tail call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i9: ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !38
  %.not.i1.i.i10 = icmp eq i8 %i.ac, 0
  br i1 %.not.i1.i.i10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 67
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !39
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit12

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i9
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aa)
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(570) %i.aa, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit12

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit12: ; preds = %bb.f, %bb.g
  %.0.i.i.i11 = phi i8 [ %i.ae, %bb.f ], [ %i.ai, %bb.g ]
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i11)
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) ; 0 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z12print_vectorISt6vectorI8rational13std_allocatorIS1_EEERSoRKT_S5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %.lr.ph
  %i.am = phi ptr [ %i.aw, %.lr.ph ], [ %i.u, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.an = phi i64 [ %i.au, %.lr.ph ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %.013 = phi i32 [ %i.at, %.lr.ph ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !13
  %i.aq = zext i32 %i.ap to i64
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.aq)
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.at = add i32 %.013, 1                        ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !51  ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 2
  %i.bb = icmp ugt i64 %i.ba, %i.au
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !93
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_Z12print_vectorISt6vectorI8rational13std_allocatorIS1_EEERSoRKT_S5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZlsRSoRK8rational.exit, %bb.a
  ret ptr %1

bb.b:                                             ; preds = %.lr.ph, %_ZlsRSoRK8rational.exit
  %.sroa.06.09 = phi ptr [ %i.a, %.lr.ph ], [ %i.u, %_ZlsRSoRK8rational.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.g = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !41
  call void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(728) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.09)
  %i.h = load ptr, ptr %2, align 8, !tbaa !61
  %i.i = load i64, ptr %i.e, align 8, !tbaa !62
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIj13std_allocatorIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS2_EEmRKj:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ao = add nsw i64 %.idx, -4                   ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check176 = icmp ult i64 %i.ao, 28
  br i1 %min.iters.check176, label %.lr.ph.i.i.i.preheader, label %vector.ph177

vector.ph177:                                     ; preds = %bb.h
  %n.vec178 = and i64 %i.aq, 9223372036854775800  ; 3 uses
  %i.ar = shl i64 %n.vec178, 2
  %i.as = getelementptr i8, ptr %1, i64 %i.ar
  %broadcast.splatinsert179 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat180 = shufflevector <4 x i32> %broadcast.splatinsert179, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph177
  %index182 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body181 ] ; 2 uses
  %i.at = shl i64 %index182, 2
  %next.gep183 = getelementptr i8, ptr %1, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep183, i64 16
  store <4 x i32> %broadcast.splat180, ptr %next.gep183, align 4, !tbaa !13
  store <4 x i32> %broadcast.splat180, ptr %i.au, align 4, !tbaa !13
  %index.next184 = add nuw i64 %index182, 8       ; 2 uses
  %i.av = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.av, label %middle.block185, label %vector.body181, !llvm.loop !107

middle.block185:                                  ; preds = %vector.body181
  %cmp.n186 = icmp eq i64 %i.aq, %n.vec178
  br i1 %cmp.n186, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h, %middle.block185
  %.06.i.i.i.ph = phi ptr [ %1, %bb.h ], [ %i.as, %middle.block185 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %i.an
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !108

bb.i:                                             ; preds = %bb.c
  %i.ax = sub nuw i64 %2, %i.l                    ; 6 uses
  %.not8.i = icmp eq i64 %i.ax, 0
  br i1 %.not8.i, label %_ZSt24__uninitialized_fill_n_aIPjmj13std_allocatorIjEET_S3_T0_RKT1_RT2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader244, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ax, -8                      ; 3 uses
  %i.ay = shl i64 %n.vec, 2
  %i.az = getelementptr i8, ptr %i.d, i64 %i.ay   ; 2 uses
  %i.ba = and i64 %i.ax, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !13
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmj13std_allocatorIjEET_S3_T0_RKT1_RT2_.exit, label %.lr.ph.i.preheader244

.lr.ph.i.preheader244:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %i.az, %middle.block ]
  %.079.i.ph = phi i64 [ %i.ax, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader244, %.lr.ph.i
  %.010.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader244 ] ; 2 uses
  %.079.i = phi i64 [ %i.be, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader244 ]
  store i32 %i.i, ptr %.010.i, align 4, !tbaa !13
  %i.be = add i64 %.079.i, -1                     ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %_ZSt24__uninitialized_fill_n_aIPjmj13std_allocatorIjEET_S3_T0_RKT1_RT2_.exit, label %.lr.ph.i, !llvm.loop !110

_ZSt24__uninitialized_fill_n_aIPjmj13std_allocatorIjEET_S3_T0_RKT1_RT2_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.i
  %.0.lcssa.i = phi ptr [ %i.d, %bb.i ], [ %i.az, %middle.block ], [ %i.bf, %.lr.ph.i ] ; 6 uses
  %i.bg = icmp eq ptr %1, %i.d
  br i1 %i.bg, label %_ZSt22__uninitialized_move_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit72.thread, label %.lr.ph.i.i68.preheader

.lr.ph.i.i68.preheader:                           ; preds = %_ZSt24__uninitialized_fill_n_aIPjmj13std_allocatorIjEET_S3_T0_RKT1_RT2_.exit
  %.0.lcssa.i132 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.bh = add i64 %i.f, -4
  %i.bi = sub i64 %i.bh, %i.j                     ; 2 uses
  %i.bj = lshr i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.bi, 44
  %i.bl = sub i64 %i.j, %.0.lcssa.i132
  %diff.check = icmp ugt i64 %i.bl, -32
  %or.cond = select i1 %min.iters.check134, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i68.preheader243, label %vector.ph135

vector.ph135:                                     ; preds = %.lr.ph.i.i68.preheader
  %n.vec136 = and i64 %i.bk, 9223372036854775800  ; 3 uses
  %i.bm = shl i64 %n.vec136, 2                    ; 2 uses
  %i.bn = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bm
  %i.bo = getelementptr i8, ptr %1, i64 %i.bm
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next142, %vector.body137 ] ; 2 uses
  %i.bp = shl i64 %index138, 2                    ; 2 uses
  %next.gep139 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bp ; 2 uses
  %next.gep140 = getelementptr i8, ptr %1, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep140, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep140, align 4, !tbaa !13
  %wide.load141 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !13
  %i.br = getelementptr i8, ptr %next.gep139, i64 16
  store <4 x i32> %wide.load, ptr %next.gep139, align 4, !tbaa !13
  store <4 x i32> %wide.load141, ptr %i.br, align 4, !tbaa !13
  %index.next142 = add nuw i64 %index138, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next142, %n.vec136
  br i1 %i.bs, label %middle.block143, label %vector.body137, !llvm.loop !111

middle.block143:                                  ; preds = %vector.body137
  %cmp.n144 = icmp eq i64 %i.bk, %n.vec136
  br i1 %cmp.n144, label %_ZSt22__uninitialized_move_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit72, label %.lr.ph.i.i68.preheader243

.lr.ph.i.i68.preheader243:                        ; preds = %.lr.ph.i.i68.preheader, %middle.block143
  %.09.i.i69.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i68.preheader ], [ %i.bn, %middle.block143 ]
  %.sroa.05.08.i.i70.ph = phi ptr [ %1, %.lr.ph.i.i68.preheader ], [ %i.bo, %middle.block143 ]
  br label %.lr.ph.i.i68

_ZSt22__uninitialized_move_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit72.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPjmj13std_allocatorIjEET_S3_T0_RKT1_RT2_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.k
  store ptr %i.bt, ptr %i.c, align 8, !tbaa !50
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

.lr.ph.i.i68:                                     ; preds = %.lr.ph.i.i68.preheader243, %.lr.ph.i.i68
  %.09.i.i69 = phi ptr [ %i.bw, %.lr.ph.i.i68 ], [ %.09.i.i69.ph, %.lr.ph.i.i68.preheader243 ] ; 2 uses
  %.sroa.05.08.i.i70 = phi ptr [ %i.bv, %.lr.ph.i.i68 ], [ %.sroa.05.08.i.i70.ph, %.lr.ph.i.i68.preheader243 ] ; 2 uses
  %i.bu = load i32, ptr %.sroa.05.08.i.i70, align 4, !tbaa !13
  store i32 %i.bu, ptr %.09.i.i69, align 4, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i70, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.09.i.i69, i64 4
  %i.bx = icmp eq ptr %i.bv, %i.d
  br i1 %i.bx, label %_ZSt22__uninitialized_move_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit72, label %.lr.ph.i.i68, !llvm.loop !112

_ZSt22__uninitialized_move_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit72: ; preds = %.lr.ph.i.i68, %middle.block143
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.k
  store ptr %i.by, ptr %i.c, align 8, !tbaa !50
  %i.bz = add i64 %i.f, -4
  %i.ca = sub i64 %i.bz, %i.j                     ; 2 uses
  %i.cb = lshr i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check148 = icmp ult i64 %i.ca, 28
  br i1 %min.iters.check148, label %.lr.ph.i.i.i74.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %_ZSt22__uninitialized_move_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit72
  %n.vec150 = and i64 %i.cc, 9223372036854775800  ; 3 uses
  %i.cd = shl i64 %n.vec150, 2
  %i.ce = getelementptr i8, ptr %1, i64 %i.cd
  %broadcast.splatinsert151 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat152 = shufflevector <4 x i32> %broadcast.splatinsert151, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph149
  %index154 = phi i64 [ 0, %vector.ph149 ], [ %index.next156, %vector.body153 ] ; 2 uses
  %i.cf = shl i64 %index154, 2
  %next.gep155 = getelementptr i8, ptr %1, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep155, i64 16
  store <4 x i32> %broadcast.splat152, ptr %next.gep155, align 4, !tbaa !13
  store <4 x i32> %broadcast.splat152, ptr %i.cg, align 4, !tbaa !13
  %index.next156 = add nuw i64 %index154, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next156, %n.vec150
  br i1 %i.ch, label %middle.block157, label %vector.body153, !llvm.loop !113

middle.block157:                                  ; preds = %vector.body153
  %cmp.n158 = icmp eq i64 %i.cc, %n.vec150
  br i1 %cmp.n158, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i74.preheader

.lr.ph.i.i.i74.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit72, %middle.block157
  %.06.i.i.i75.ph = phi ptr [ %1, %_ZSt22__uninitialized_move_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit72 ], [ %i.ce, %middle.block157 ]
  br label %.lr.ph.i.i.i74

.lr.ph.i.i.i74:                                   ; preds = %.lr.ph.i.i.i74.preheader, %.lr.ph.i.i.i74
  %.06.i.i.i75 = phi ptr [ %i.ci, %.lr.ph.i.i.i74 ], [ %.06.i.i.i75.ph, %.lr.ph.i.i.i74.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i75, align 4, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %.06.i.i.i75, i64 4 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.ci, %i.d
  br i1 %.not.i.i.i76, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i74, !llvm.loop !114

bb.j:                                             ; preds = %bb.b
  %i.cj = load ptr, ptr %0, align 8, !tbaa !51    ; 7 uses
  %i.ck = ptrtoint ptr %i.cj to i64               ; 4 uses
  %i.cl = sub i64 %i.f, %i.ck
  %i.cm = ashr exact i64 %i.cl, 2                 ; 4 uses
  %i.cn = sub nsw i64 2305843009213693951, %i.cm
  %i.co = icmp ult i64 %i.cn, %2
  br i1 %i.co, label %bb.k, label %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #16
  unreachable

_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 %2)
  %i.cp = add nsw i64 %.sroa.speculated.i, %i.cm  ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.cm
  %i.cr = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 2305843009213693951)
  %i.cs = select i1 %i.cq, i64 2305843009213693951, i64 %i.cr ; 3 uses
  %i.ct = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.cu = sub i64 %i.ct, %i.ck
  %.not.i78 = icmp eq i64 %i.cs, 0
  br i1 %.not.i78, label %.lr.ph.preheader.i80, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit
  %i.cv = shl nuw nsw i64 %i.cs, 2
  %i.cw = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.cv)
  br label %.lr.ph.preheader.i80

.lr.ph.preheader.i80:                             ; preds = %bb.l, %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit
  %i.cx = phi ptr [ %i.cw, %bb.l ], [ null, %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit ] ; 8 uses
  %4 = ptrtoaddr ptr %i.cx to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu ; 3 uses
  %.pre.i81 = load i32, ptr %3, align 4, !tbaa !13 ; 2 uses
  %min.iters.check189 = icmp ult i64 %2, 8
  br i1 %min.iters.check189, label %.lr.ph.i82.preheader, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph.preheader.i80
  %n.vec191 = and i64 %2, -8                      ; 3 uses
  %i.cz = shl i64 %n.vec191, 2
  %i.da = getelementptr i8, ptr %i.cy, i64 %i.cz
  %i.db = and i64 %2, 7
  %broadcast.splatinsert192 = insertelement <4 x i32> poison, i32 %.pre.i81, i64 0
  %broadcast.splat193 = shufflevector <4 x i32> %broadcast.splatinsert192, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph190
  %index195 = phi i64 [ 0, %vector.ph190 ], [ %index.next197, %vector.body194 ] ; 2 uses
  %i.dc = shl i64 %index195, 2
  %next.gep196 = getelementptr i8, ptr %i.cy, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep196, i64 16
  store <4 x i32> %broadcast.splat193, ptr %next.gep196, align 4, !tbaa !13
  store <4 x i32> %broadcast.splat193, ptr %i.dd, align 4, !tbaa !13
  %index.next197 = add nuw i64 %index195, 8       ; 2 uses
  %i.de = icmp eq i64 %index.next197, %n.vec191
  br i1 %i.de, label %middle.block198, label %vector.body194, !llvm.loop !115

middle.block198:                                  ; preds = %vector.body194
  %cmp.n199 = icmp eq i64 %2, %n.vec191
  br i1 %cmp.n199, label %_ZSt24__uninitialized_fill_n_aIPjmj13std_allocatorIjEET_S3_T0_RKT1_RT2_.exit87, label %.lr.ph.i82.preheader

.lr.ph.i82.preheader:                             ; preds = %.lr.ph.preheader.i80, %middle.block198
  %.010.i83.ph = phi ptr [ %i.cy, %.lr.ph.preheader.i80 ], [ %i.da, %middle.block198 ]
  %.079.i84.ph = phi i64 [ %2, %.lr.ph.preheader.i80 ], [ %i.db, %middle.block198 ]
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.preheader, %.lr.ph.i82
  %.010.i83 = phi ptr [ %i.dg, %.lr.ph.i82 ], [ %.010.i83.ph, %.lr.ph.i82.preheader ] ; 2 uses
  %.079.i84 = phi i64 [ %i.df, %.lr.ph.i82 ], [ %.079.i84.ph, %.lr.ph.i82.preheader ]
  store i32 %.pre.i81, ptr %.010.i83, align 4, !tbaa !13
  %i.df = add i64 %.079.i84, -1                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.010.i83, i64 4
  %.not.i85 = icmp eq i64 %i.df, 0
  br i1 %.not.i85, label %_ZSt24__uninitialized_fill_n_aIPjmj13std_allocatorIjEET_S3_T0_RKT1_RT2_.exit87, label %.lr.ph.i82, !llvm.loop !116

_ZSt24__uninitialized_fill_n_aIPjmj13std_allocatorIjEET_S3_T0_RKT1_RT2_.exit87: ; preds = %.lr.ph.i82, %middle.block198
  %i.dh = icmp eq ptr %i.cj, %1
  br i1 %i.dh, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i88.preheader

.lr.ph.i.i88.preheader:                           ; preds = %_ZSt24__uninitialized_fill_n_aIPjmj13std_allocatorIjEET_S3_T0_RKT1_RT2_.exit87
  %i.di = add i64 %i.ct, -4
  %i.dj = sub i64 %i.di, %i.ck                    ; 2 uses
  %i.dk = lshr i64 %i.dj, 2
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.dj, 44
  %5 = sub i64 %i.ck, %4
  %diff.check203 = icmp ugt i64 %5, -32
  %or.cond237 = or i1 %min.iters.check205, %diff.check203
  br i1 %or.cond237, label %.lr.ph.i.i88.preheader239, label %vector.ph206

vector.ph206:                                     ; preds = %.lr.ph.i.i88.preheader
  %n.vec207 = and i64 %i.dl, 9223372036854775800  ; 3 uses
  %i.dm = shl i64 %n.vec207, 2                    ; 2 uses
  %i.dn = getelementptr i8, ptr %i.cx, i64 %i.dm  ; 2 uses
  %i.do = getelementptr i8, ptr %i.cj, i64 %i.dm
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph206
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next214, %vector.body208 ] ; 2 uses
  %i.dp = shl i64 %index209, 2                    ; 2 uses
  %next.gep210 = getelementptr i8, ptr %i.cx, i64 %i.dp ; 2 uses
  %next.gep211 = getelementptr i8, ptr %i.cj, i64 %i.dp ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep211, i64 16
  %wide.load212 = load <4 x i32>, ptr %next.gep211, align 4, !tbaa !13
  %wide.load213 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !13
  %i.dr = getelementptr i8, ptr %next.gep210, i64 16
  store <4 x i32> %wide.load212, ptr %next.gep210, align 4, !tbaa !13
  store <4 x i32> %wide.load213, ptr %i.dr, align 4, !tbaa !13
  %index.next214 = add nuw i64 %index209, 8       ; 2 uses
  %i.ds = icmp eq i64 %index.next214, %n.vec207
  br i1 %i.ds, label %middle.block215, label %vector.body208, !llvm.loop !117

middle.block215:                                  ; preds = %vector.body208
  %cmp.n216 = icmp eq i64 %i.dl, %n.vec207
  br i1 %cmp.n216, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i88.preheader239

.lr.ph.i.i88.preheader239:                        ; preds = %.lr.ph.i.i88.preheader, %middle.block215
  %.09.i.i89.ph = phi ptr [ %i.cx, %.lr.ph.i.i88.preheader ], [ %i.dn, %middle.block215 ]
  %.sroa.05.08.i.i90.ph = phi ptr [ %i.cj, %.lr.ph.i.i88.preheader ], [ %i.do, %middle.block215 ]
  br label %.lr.ph.i.i88

.lr.ph.i.i88:                                     ; preds = %.lr.ph.i.i88.preheader239, %.lr.ph.i.i88
  %.09.i.i89 = phi ptr [ %i.dv, %.lr.ph.i.i88 ], [ %.09.i.i89.ph, %.lr.ph.i.i88.preheader239 ] ; 2 uses
  %.sroa.05.08.i.i90 = phi ptr [ %i.du, %.lr.ph.i.i88 ], [ %.sroa.05.08.i.i90.ph, %.lr.ph.i.i88.preheader239 ] ; 2 uses
  %i.dt = load i32, ptr %.sroa.05.08.i.i90, align 4, !tbaa !13
  store i32 %i.dt, ptr %.09.i.i89, align 4, !tbaa !13
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i90, i64 4 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.09.i.i89, i64 4 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %1
  br i1 %i.dw, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i88, !llvm.loop !118

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit: ; preds = %.lr.ph.i.i88, %middle.block215, %_ZSt24__uninitialized_fill_n_aIPjmj13std_allocatorIjEET_S3_T0_RKT1_RT2_.exit87
  %.0.lcssa.i.i91 = phi ptr [ %i.cx, %_ZSt24__uninitialized_fill_n_aIPjmj13std_allocatorIjEET_S3_T0_RKT1_RT2_.exit87 ], [ %i.dn, %middle.block215 ], [ %i.dv, %.lr.ph.i.i88 ] ; 2 uses
  %.0.lcssa.i.i91220 = ptrtoaddr ptr %.0.lcssa.i.i91 to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.0.lcssa.i.i91, i64 %2 ; 5 uses
  %i.dy = icmp eq ptr %1, %i.d
  br i1 %i.dy, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit96, label %.lr.ph.i.i92.preheader

.lr.ph.i.i92.preheader:                           ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit
  %i.dz = add i64 %i.f, -4
  %i.ea = sub i64 %i.dz, %i.ct                    ; 2 uses
  %i.eb = lshr i64 %i.ea, 2
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %min.iters.check223 = icmp ult i64 %i.ea, 76
  br i1 %min.iters.check223, label %.lr.ph.i.i92.preheader238, label %vector.memcheck219

vector.memcheck219:                               ; preds = %.lr.ph.i.i92.preheader
  %i.ed = shl i64 %2, 2
  %i.ee = add i64 %i.ed, %.0.lcssa.i.i91220
  %i.ef = sub i64 %i.ct, %i.ee
  %diff.check221 = icmp ugt i64 %i.ef, -32
  br i1 %diff.check221, label %.lr.ph.i.i92.preheader238, label %vector.ph224

vector.ph224:                                     ; preds = %vector.memcheck219
  %n.vec225 = and i64 %i.ec, 9223372036854775800  ; 3 uses
  %i.eg = shl i64 %n.vec225, 2                    ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dx, i64 %i.eg  ; 2 uses
  %i.ei = getelementptr i8, ptr %1, i64 %i.eg
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next232, %vector.body226 ] ; 2 uses
  %i.ej = shl i64 %index227, 2                    ; 2 uses
  %next.gep228 = getelementptr i8, ptr %i.dx, i64 %i.ej ; 2 uses
  %next.gep229 = getelementptr i8, ptr %1, i64 %i.ej ; 2 uses
  %i.ek = getelementptr i8, ptr %next.gep229, i64 16
  %wide.load230 = load <4 x i32>, ptr %next.gep229, align 4, !tbaa !13
  %wide.load231 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !13
  %i.el = getelementptr i8, ptr %next.gep228, i64 16
  store <4 x i32> %wide.load230, ptr %next.gep228, align 4, !tbaa !13
  store <4 x i32> %wide.load231, ptr %i.el, align 4, !tbaa !13
  %index.next232 = add nuw i64 %index227, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next232, %n.vec225
  br i1 %i.em, label %middle.block233, label %vector.body226, !llvm.loop !119

middle.block233:                                  ; preds = %vector.body226
  %cmp.n234 = icmp eq i64 %i.ec, %n.vec225
  br i1 %cmp.n234, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit96, label %.lr.ph.i.i92.preheader238

.lr.ph.i.i92.preheader238:                        ; preds = %vector.memcheck219, %.lr.ph.i.i92.preheader, %middle.block233
  %.09.i.i93.ph = phi ptr [ %i.dx, %vector.memcheck219 ], [ %i.dx, %.lr.ph.i.i92.preheader ], [ %i.eh, %middle.block233 ]
  %.sroa.05.08.i.i94.ph = phi ptr [ %1, %vector.memcheck219 ], [ %1, %.lr.ph.i.i92.preheader ], [ %i.ei, %middle.block233 ]
  br label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %.lr.ph.i.i92.preheader238, %.lr.ph.i.i92
  %.09.i.i93 = phi ptr [ %i.ep, %.lr.ph.i.i92 ], [ %.09.i.i93.ph, %.lr.ph.i.i92.preheader238 ] ; 2 uses
  %.sroa.05.08.i.i94 = phi ptr [ %i.eo, %.lr.ph.i.i92 ], [ %.sroa.05.08.i.i94.ph, %.lr.ph.i.i92.preheader238 ] ; 2 uses
  %i.en = load i32, ptr %.sroa.05.08.i.i94, align 4, !tbaa !13
  store i32 %i.en, ptr %.09.i.i93, align 4, !tbaa !13
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i94, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.09.i.i93, i64 4 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.d
  br i1 %i.eq, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit96, label %.lr.ph.i.i92, !llvm.loop !120

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit96: ; preds = %.lr.ph.i.i92, %middle.block233, %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit
  %.0.lcssa.i.i95 = phi ptr [ %i.dx, %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit ], [ %i.eh, %middle.block233 ], [ %i.ep, %.lr.ph.i.i92 ]
  %.not.i97 = icmp eq ptr %i.cj, null
  br i1 %.not.i97, label %_ZNSt12_Vector_baseIj13std_allocatorIjEE13_M_deallocateEPjm.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit96
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cj)
  br label %_ZNSt12_Vector_baseIj13std_allocatorIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIj13std_allocatorIjEE13_M_deallocateEPjm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit96, %bb.m
  store ptr %i.cx, ptr %0, align 8, !tbaa !51
  store ptr %.0.lcssa.i.i95, ptr %i.c, align 8, !tbaa !50
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs
  store ptr %i.er, ptr %i.a, align 8, !tbaa !52
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i74, %.lr.ph.i.i.i, %middle.block157, %middle.block185, %_ZSt22__uninitialized_move_aIPjS0_13std_allocatorIjEET0_T_S4_S3_RT1_.exit72.thread, %_ZNSt12_Vector_baseIj13std_allocatorIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2lp12numeric_pairI8rationalE9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2lp11T_to_stringI8rationalEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.v

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !65
  store i8 40, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZN2lp11T_to_stringI8rationalEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !62, !noalias !125 ; 5 uses
  %i.i = and i64 %i.h, -2
  %i.j = icmp eq i64 %i.i, 9223372036854775806
  br i1 %i.j, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
          to label %.noexc16 unwind label %bb.r

.noexc16:                                         ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.k = add nsw i64 %i.h, 2                      ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !66

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #21 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.q = load i64, ptr %i.d, align 8, !tbaa !39
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #19
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8, !tbaa !61
  store i64 %.0, ptr %i.d, align 8, !tbaa !39
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !62
  store i8 0, ptr %i.c, align 1, !tbaa !39
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.t = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !61     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.v = load i8, ptr %i.u, align 1, !tbaa !39
  store i8 %i.v, ptr %i.t, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.w, align 8, !tbaa !62
  %i.x = load ptr, ptr %0, align 8, !tbaa !61
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.b
  store i8 0, ptr %i.y, align 1, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { cold }
attributes #21 = { builtin allocsize(0) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null, null, null, null}
!1 = distinct !{!1, !42}
!2 = distinct !{!2, !42}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS8rational", !11, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!"vtable pointer", !6, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!18 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!20 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !16, i64 8}
!21 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!22 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!23 = !{!"_ZTSSt6locale", !22, i64 0}
!24 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !17, i64 24, !18, i64 28, !18, i64 32, !19, i64 40, !20, i64 48, !7, i64 64, !8, i64 192, !21, i64 200, !23, i64 208}
!25 = !{!"p1 _ZTSSo", !11, i64 0}
!26 = !{!"bool", !7, i64 0}
!27 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!28 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!29 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!30 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!31 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !24, i64 0, !25, i64 216, !7, i64 224, !26, i64 225, !27, i64 232, !28, i64 240, !29, i64 248, !30, i64 256}
!32 = !{!31, !28, i64 240}
!33 = !{!"_ZTSNSt6locale5facetE", !8, i64 8}
!34 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!35 = !{!"p1 int", !11, i64 0}
!36 = !{!"p1 short", !11, i64 0}
!37 = !{!"_ZTSSt5ctypeIcE", !33, i64 0, !34, i64 16, !26, i64 24, !35, i64 32, !35, i64 40, !36, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!38 = !{!37, !7, i64 56}
!39 = !{!7, !7, i64 0}
!40 = !{!"p1 _ZTS11mpq_managerILb1EE", !11, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!35, !35, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseI8rational13std_allocatorIS0_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!45 = !{!44, !12, i64 0}
!46 = !{!"p1 _ZTS8mpz_cell", !11, i64 0}
!47 = !{!"_ZTS3mpz", !8, i64 0, !8, i64 4, !8, i64 4, !46, i64 8}
!48 = !{!47, !8, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIj13std_allocatorIjEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!50 = !{!49, !35, i64 8}
!51 = !{!49, !35, i64 0}
!52 = !{!49, !35, i64 16}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!44, !12, i64 8}
!56 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!57 = !{!12, !12, i64 0}
!58 = !{!"p1 omnipotent char", !11, i64 0}
!59 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !58, i64 0}
!60 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !59, i64 0, !16, i64 8, !7, i64 16}
!61 = !{!60, !58, i64 0}
!62 = !{!60, !16, i64 8}
!63 = !{!47, !46, i64 8}
!64 = !{!46, !46, i64 0}
!65 = !{!59, !58, i64 0}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = distinct !{!67, !42}
!68 = !{!"_ZTS6vectorI8rationalLb1EjE", !12, i64 0}
!69 = !{!68, !12, i64 0}
!70 = !{!24, !16, i64 8}
!71 = distinct !{!71, i1 false, !"_ZSt19__relocate_object_aIjj13std_allocatorIjEEvPT_PT0_RT1_"}
!72 = distinct !{!72, !71, !"_ZSt19__relocate_object_aIjj13std_allocatorIjEEvPT_PT0_RT1_: argument 0"}
!73 = distinct !{!73, !71, !"_ZSt19__relocate_object_aIjj13std_allocatorIjEEvPT_PT0_RT1_: argument 1"}
!74 = distinct !{!74, !42, !53, !54}
!75 = distinct !{!75, !42, !53}
!76 = !{!72}
!77 = !{!73}
!78 = distinct !{!78, !42}
!79 = distinct !{!79, i1 false, !"_ZSt19__relocate_object_aIjj13std_allocatorIjEEvPT_PT0_RT1_"}
!80 = distinct !{!80, !79, !"_ZSt19__relocate_object_aIjj13std_allocatorIjEEvPT_PT0_RT1_: argument 0"}
!81 = distinct !{!81, !79, !"_ZSt19__relocate_object_aIjj13std_allocatorIjEEvPT_PT0_RT1_: argument 1"}
!82 = distinct !{!82, !42, !53, !54}
!83 = distinct !{!83, !42, !53}
!84 = !{!80}
!85 = !{!81}
!86 = distinct !{!86, i1 false, !"_ZSt19__relocate_object_aIjj13std_allocatorIjEEvPT_PT0_RT1_"}
!87 = distinct !{!87, !86, !"_ZSt19__relocate_object_aIjj13std_allocatorIjEEvPT_PT0_RT1_: argument 0"}
!88 = distinct !{!88, !86, !"_ZSt19__relocate_object_aIjj13std_allocatorIjEEvPT_PT0_RT1_: argument 1"}
!89 = distinct !{!89, !42, !53, !54}
!90 = distinct !{!90, !42, !53}
!91 = !{!87}
!92 = !{!88}
!93 = distinct !{!93, !42}
!94 = distinct !{!94, !42}
!95 = !{!"p1 _ZTSN2lp12numeric_pairI8rationalEE", !11, i64 0}
!96 = !{!95, !95, i64 0}
!97 = distinct !{!97, !42}
!98 = !{!44, !12, i64 16}
!99 = !{!"p1 _ZTSSt6vectorI8rational13std_allocatorIS0_EE", !11, i64 0}
!100 = !{!"_ZTSNSt6vectorI8rational13std_allocatorIS0_EE16_Temporary_valueE", !99, i64 0, !7, i64 8}
!101 = !{!100, !99, i64 0}
!102 = distinct !{!102, !42}
!103 = distinct !{!103, !42}
!104 = distinct !{!104, !42}
!105 = distinct !{!105, !42, !53, !54}
!106 = distinct !{!106, !42, !54, !53}
!107 = distinct !{!107, !42, !53, !54}
!108 = distinct !{!108, !42, !54, !53}
!109 = distinct !{!109, !42, !53, !54}
!110 = distinct !{!110, !42, !54, !53}
!111 = distinct !{!111, !42, !53, !54}
!112 = distinct !{!112, !42, !53}
!113 = distinct !{!113, !42, !53, !54}
!114 = distinct !{!114, !42, !54, !53}
!115 = distinct !{!115, !42, !53, !54}
!116 = distinct !{!116, !42, !54, !53}
!117 = distinct !{!117, !42, !53, !54}
!118 = distinct !{!118, !42, !53}
!119 = distinct !{!119, !42, !53, !54}
!120 = distinct !{!120, !42, !53}
!121 = distinct !{!121, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!122 = distinct !{!122, !121, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!123 = distinct !{!123, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!124 = distinct !{!124, !123, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!125 = !{!122}
!126 = !{!124}
!127 = distinct !{!127, i1 false, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!128 = distinct !{!128, !127, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!129 = distinct !{!129, i1 false, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!130 = distinct !{!130, !129, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!131 = !{!128}
!132 = !{!130}
!133 = !{!130, !128}
!134 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !23, i64 56}
!135 = !{!134, !58, i64 40}
!136 = !{!134, !58, i64 32}
end_hunk_3
