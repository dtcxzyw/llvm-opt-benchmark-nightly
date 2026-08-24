Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/object_registry?download=true
inline.NumInlined: 1241
inline.NumDeleted: 637
begin_hunk_0

$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJRKS7_EEEPS8_DpOT_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZSt10_ConstructIN7rocksdb13ObjectLibraryEJRA8_KcEEvPT_DpOT0_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb14ObjectRegistryESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb14ObjectRegistryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb14ObjectRegistryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb14ObjectRegistryESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN7rocksdb14ObjectRegistryD2Ev = comdat any

$_ZNSt12__shared_ptrIN7rocksdb12CustomizableELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8weak_ptrIN7rocksdb12CustomizableEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8weak_ptrIN7rocksdb12CustomizableEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8weak_ptrIN7rocksdb12CustomizableEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8weak_ptrIN7rocksdb12CustomizableEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEEvPSt13_Rb_tree_nodeISC_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8weak_ptrIN7rocksdb12CustomizableEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb13ObjectLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb14ObjectRegistryESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZSt19piecewise_construct = comdat any

@.str = private unnamed_addr constant [28 x i8] c"    Registered Library: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"    Registered factories for type[%s] \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%c %s\00", align 1
@_ZZN7rocksdb13ObjectLibrary7DefaultEvE8instance = internal unnamed_addr global ptr null, align 8
@_ZGVZN7rocksdb13ObjectLibrary7DefaultEvE8instance = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@_ZN7rocksdb14ObjectRegistry9builtins_B5cxx11E = external local_unnamed_addr global %"class.std::unordered_map.51", align 8
@_ZZN7rocksdb14ObjectRegistry7DefaultEvE8instance = internal unnamed_addr global ptr null, align 8
@_ZGVZN7rocksdb14ObjectRegistry7DefaultEvE8instance = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"Object already exists: \00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"    Registered Plugins:\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTVN7rocksdb13ObjectLibrary12PatternEntryE = unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb13ObjectLibrary12PatternEntryD2Ev, ptr @_ZN7rocksdb13ObjectLibrary12PatternEntryD0Ev, ptr @_ZNK7rocksdb13ObjectLibrary12PatternEntry7MatchesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb13ObjectLibrary12PatternEntry4NameEv] }, align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"basic_string::compare\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb13ObjectLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb13ObjectLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb13ObjectLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb13ObjectLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb13ObjectLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb14ObjectRegistryESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb14ObjectRegistryESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb14ObjectRegistryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb14ObjectRegistryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb14ObjectRegistryESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1

@_ZN7rocksdb14ObjectRegistryC1ERKSt10shared_ptrINS_13ObjectLibraryEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN7rocksdb14ObjectRegistryC2ERKSt10shared_ptrINS_13ObjectLibraryEE

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK7rocksdb13ObjectLibrary12PatternEntry16MatchSeparatorAtEmNS1_10QuantifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSA_(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 9 uses
  %i.c = add i64 %i.b, %1                         ; 2 uses
  %i.d = icmp ult i64 %4, %i.c
  br i1 %i.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i64 noundef %1, i64 noundef %i.g) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %bb.c
  %i.i = sub nuw i64 %i.g, %1                     ; 2 uses
  %spec.select.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.i) ; 2 uses
  %i.j = icmp eq i64 %spec.select.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.k = load ptr, ptr %5, align 8, !tbaa !15
  %i.l = load ptr, ptr %3, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %1
  %bcmp = tail call i32 @bcmp(ptr %i.m, ptr %i.k, i64 %spec.select.i.i)
  %.not.i = icmp eq i32 %bcmp, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %.not = icmp ugt i64 %i.b, %i.i
  %i.n = select i1 %.not, i64 -1, i64 %i.c
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.o = add i64 %1, 1                            ; 4 uses
  %i.p = icmp eq i64 %i.b, 0
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9    ; 3 uses
  %.not.i.i = icmp ult i64 %i.o, %i.s
  br i1 %.not.i.i, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %3, align 8, !tbaa !15     ; 3 uses
  %i.u = sub nuw i64 %i.s, %i.o                   ; 2 uses
  %.not3339.i.i = icmp ult i64 %i.u, %i.b
  br i1 %.not3339.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  %i.x = load i8, ptr %i.q, align 1, !tbaa !16
  %i.y = sext i8 %i.x to i32
  %i.z = ptrtoint ptr %i.v to i64
  %invariant.op = sub i64 1, %i.b
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.ai, %bb.j ]
  %.02740.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.ag, %bb.j ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.041.i.i, %invariant.op ; 2 uses
  %i.aa = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.h
  %i.ab = tail call ptr @memchr(ptr noundef %.02740.i.i, i32 noundef %i.y, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #23 ; 4 uses
  %.not34.i.i = icmp eq ptr %i.ab, null
  br i1 %.not34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ab, ptr nonnull %i.q, i64 %i.b)
  %i.ac = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.t to i64
  %i.af = sub i64 %i.ad, %i.ae
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.z, %i.ah                     ; 2 uses
  %.not33.i.i = icmp ult i64 %i.ai, %i.b
  br i1 %.not33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread, label %bb.h, !llvm.loop !17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit: ; preds = %bb.i, %bb.e
  %.0 = phi i64 [ %i.o, %bb.e ], [ %i.af, %bb.i ] ; 6 uses
  %i.aj = icmp eq i64 %.0, -1
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit
  switch i32 %2, label %_ZN7rocksdb12_GLOBAL__N_114MatchesIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit [
    i32 3, label %bb.l
    i32 4, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %.val = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = icmp eq i8 %i.al, 45
  %i.an = zext i1 %i.am to i64
  %spec.select.i = add i64 %1, %i.an              ; 2 uses
  %i.ao = icmp ult i64 %spec.select.i, %.0
  br i1 %i.ao, label %.lr.ph.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread

.lr.ph.i:                                         ; preds = %bb.l, %bb.m
  %.12.i = phi i64 [ %i.as, %bb.m ], [ %spec.select.i, %bb.l ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 %.12.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = sext i8 %i.aq to i32
  %isdigittmp.i = add nsw i32 %i.ar, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread

bb.m:                                             ; preds = %.lr.ph.i
  %i.as = add nuw i64 %.12.i, 1                   ; 2 uses
  %6 = icmp ult i64 %i.as, %.0
  br i1 %6, label %.lr.ph.i, label %_ZN7rocksdb12_GLOBAL__N_114MatchesIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit, !llvm.loop !19

bb.n:                                             ; preds = %bb.k
  %.val31 = load ptr, ptr %3, align 8, !tbaa !15  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val31, i64 %1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = icmp eq i8 %i.au, 45
  %i.aw = zext i1 %i.av to i64
  %spec.select.i32 = add i64 %1, %i.aw            ; 2 uses
  %.not1.not.i = icmp ult i64 %spec.select.i32, %.0
  br i1 %.not1.not.i, label %.lr.ph.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread

.lr.ph.i33:                                       ; preds = %bb.n, %bb.r
  %.0144.i = phi i1 [ %.1.i, %bb.r ], [ false, %bb.n ] ; 2 uses
  %.0153.i = phi i32 [ %.116.i, %bb.r ], [ 0, %bb.n ] ; 2 uses
  %.1202.i = phi i64 [ %i.bc, %bb.r ], [ %spec.select.i32, %bb.n ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val31, i64 %.1202.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16  ; 2 uses
  %i.az = icmp eq i8 %i.ay, 46
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i33
  br i1 %.0144.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread, label %bb.r

bb.p:                                             ; preds = %.lr.ph.i33
  %i.ba = sext i8 %i.ay to i32
  %isdigittmp.i34 = add nsw i32 %i.ba, -48
  %isdigit.i35 = icmp ult i32 %isdigittmp.i34, 10
  br i1 %isdigit.i35, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bb = add nsw i32 %.0153.i, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.116.i = phi i32 [ %i.bb, %bb.q ], [ %.0153.i, %bb.o ] ; 2 uses
  %.1.i = phi i1 [ %.0144.i, %bb.q ], [ true, %bb.o ]
  %i.bc = add nuw i64 %.1202.i, 1                 ; 2 uses
  %.not.not.i = icmp ult i64 %i.bc, %.0
  br i1 %.not.not.i, label %.lr.ph.i33, label %_ZN7rocksdb12_GLOBAL__N_114MatchesDecimalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit, !llvm.loop !20

_ZN7rocksdb12_GLOBAL__N_114MatchesDecimalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit: ; preds = %bb.r
  %i.bd = icmp sgt i32 %.116.i, 0
  br i1 %i.bd, label %_ZN7rocksdb12_GLOBAL__N_114MatchesIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread

_ZN7rocksdb12_GLOBAL__N_114MatchesIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit: ; preds = %bb.m, %bb.k, %_ZN7rocksdb12_GLOBAL__N_114MatchesDecimalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit
  %i.be = add i64 %.0, %i.b
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.j, %bb.h, %bb.p, %bb.o, %.lr.ph.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.n, %bb.l, %bb.g, %bb.f, %_ZN7rocksdb12_GLOBAL__N_114MatchesIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit, %_ZN7rocksdb12_GLOBAL__N_114MatchesDecimalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit, %bb.a
  %.1 = phi i64 [ -1, %bb.a ], [ -1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ -1, %bb.l ], [ %i.be, %_ZN7rocksdb12_GLOBAL__N_114MatchesIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit ], [ -1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit ], [ -1, %_ZN7rocksdb12_GLOBAL__N_114MatchesDecimalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit ], [ -1, %bb.n ], [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i ], [ -1, %bb.p ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %.lr.ph.i ], [ -1, %bb.o ], [ -1, %bb.h ], [ -1, %bb.j ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN7rocksdb12_GLOBAL__N_114MatchesDecimalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr nofree readonly captures(none) %.0.val, i64 noundef %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %0
  %i.b = load i8, ptr %i.a, align 1, !tbaa !16
  %i.c = icmp eq i8 %i.b, 45
  %i.d = zext i1 %i.c to i64
  %spec.select = add i64 %0, %i.d                 ; 2 uses
  %.not1.not = icmp ult i64 %spec.select, %1
  br i1 %.not1.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.0144 = phi i1 [ %.1, %bb.e ], [ false, %bb.a ] ; 2 uses
  %.0153 = phi i32 [ %.116, %bb.e ], [ 0, %bb.a ] ; 4 uses
  %.1202 = phi i64 [ %i.j, %bb.e ], [ %spec.select, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.1202
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16    ; 2 uses
  %i.g = icmp eq i8 %i.f, 46
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  br i1 %.0144, label %._crit_edge.loopexit, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.h = sext i8 %i.f to i32
  %isdigittmp = add nsw i32 %i.h, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.d, label %._crit_edge.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %.0153, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.116 = phi i32 [ %i.i, %bb.d ], [ %.0153, %bb.b ] ; 2 uses
  %.1 = phi i1 [ %.0144, %bb.d ], [ true, %bb.b ]
  %i.j = add nuw i64 %.1202, 1                    ; 2 uses
  %.not.not = icmp ult i64 %i.j, %1
  br i1 %.not.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %bb.c, %bb.b, %bb.e
  %.015.lcssa.ph = phi i32 [ %.116, %bb.e ], [ %.0153, %bb.b ], [ %.0153, %bb.c ]
  %.not.lcssa.ph = phi i1 [ true, %bb.e ], [ false, %bb.b ], [ false, %bb.c ]
  %i.k = icmp sgt i32 %.015.lcssa.ph, 0
  %i.l = select i1 %.not.lcssa.ph, i1 %i.k, i1 false
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %i.l, %._crit_edge.loopexit ]
  ret i1 %.not.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7rocksdb13ObjectLibrary12PatternEntry13MatchesTargetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS9_m(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = icmp eq ptr %i.b, %i.d
  %i.f = icmp eq i64 %2, %4                       ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %3, align 8, !tbaa !15
  %i.n = load ptr, ptr %1, align 8, !tbaa !15
  %bcmp.i = tail call i32 @bcmp(ptr %i.n, ptr %i.m, i64 %i.h)
  %i.o = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.f:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i8, ptr %i.p, align 8, !tbaa !23, !range !36, !noundef !37
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !9
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.i:                                             ; preds = %bb.h
  %i.x = icmp eq i64 %i.t, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %3, align 8, !tbaa !15
  %i.z = load ptr, ptr %1, align 8, !tbaa !15
  %bcmp.i60 = tail call i32 @bcmp(ptr %i.z, ptr %i.y, i64 %i.t)
  %i.aa = icmp eq i32 %bcmp.i60, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !38
  %i.ad = add i64 %i.ac, %2
  %i.ae = icmp ult i64 %4, %i.ad
  br i1 %i.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !9
  %spec.select.i.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.ag) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !9  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %spec.select.i.i) ; 2 uses
  %i.aj = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.l
  %i.ak = load ptr, ptr %1, align 8, !tbaa !15
  %i.al = load ptr, ptr %3, align 8, !tbaa !15
  %bcmp = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %.sroa.speculated.i)
  %.not.i = icmp eq i32 %bcmp, 0
  %.not = icmp eq i64 %spec.select.i.i, %i.ai
  %or.cond67 = and i1 %.not, %.not.i
  br i1 %or.cond67, label %.lr.ph.preheader, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit: ; preds = %bb.l
  %.not.old = icmp eq i64 %spec.select.i.i, %i.ai
  br i1 %.not.old, label %.lr.ph.preheader, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

.lr.ph.preheader:                                 ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %i.am = phi ptr [ %i.at, %bb.m ], [ %i.b, %.lr.ph.preheader ]
  %.04674 = phi i64 [ %i.ar, %bb.m ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.04773 = phi i32 [ %i.aq, %bb.m ], [ 2, %.lr.ph.preheader ]
  %.05072 = phi i64 [ %i.ao, %bb.m ], [ %2, %.lr.ph.preheader ]
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %.04674 ; 2 uses
  %i.ao = tail call noundef i64 @_ZNK7rocksdb13ObjectLibrary12PatternEntry16MatchSeparatorAtEmNS1_10QuantifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSA_(ptr nonnull align 8 poison, i64 noundef %.05072, i32 noundef %.04773, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %i.an) ; 8 uses
  %.not57 = icmp eq i64 %i.ao, -1
  br i1 %.not57, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !39 ; 4 uses
  %i.ar = add nuw i64 %.04674, 1                  ; 2 uses
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 40
  %.not58 = icmp ult i64 %i.ar, %i.ax
  br i1 %.not58, label %.lr.ph, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.m
  %i.ay = icmp eq i32 %i.aq, 2
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.az = icmp eq i64 %i.ao, %4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.o:                                             ; preds = %._crit_edge
  %i.ba = icmp ugt i64 %i.ao, %4
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = icmp eq i64 %i.ao, %4
  %i.bc = icmp ne i32 %i.aq, 0
  %or.cond = and i1 %i.bb, %i.bc
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i32 %i.aq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit [
    i32 3, label %bb.r
    i32 4, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %.val = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ao
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.bf = icmp eq i8 %i.be, 45
  %i.bg = zext i1 %i.bf to i64
  %spec.select.i = add nuw i64 %i.ao, %i.bg       ; 2 uses
  %i.bh = icmp ult i64 %spec.select.i, %4
  br i1 %i.bh, label %.lr.ph.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.i
  %.12.i = phi i64 [ %i.bl, %.lr.ph.i ], [ %spec.select.i, %bb.r ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 %.12.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !16
  %i.bk = sext i8 %i.bj to i32
  %isdigittmp.i = add nsw i32 %i.bk, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10     ; 2 uses
  %i.bl = add nuw i64 %.12.i, 1                   ; 2 uses
  %5 = icmp ult i64 %i.bl, %4
  %or.cond93 = select i1 %isdigit.i, i1 %5, i1 false
  br i1 %or.cond93, label %.lr.ph.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, !llvm.loop !19

bb.s:                                             ; preds = %bb.q
  %.val59 = load ptr, ptr %3, align 8, !tbaa !15
  %i.bm = tail call fastcc noundef zeroext i1 @_ZN7rocksdb12_GLOBAL__N_114MatchesDecimalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr %.val59, i64 noundef %i.ao, i64 noundef %4)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %.lr.ph, %.lr.ph.i, %bb.n, %bb.s, %bb.p, %bb.o, %bb.q, %bb.r, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.j, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit, %bb.k, %bb.g, %bb.b
  %.4 = phi i1 [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ false, %bb.g ], [ true, %bb.d ], [ false, %bb.k ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit ], [ false, %bb.b ], [ false, %bb.c ], [ %i.o, %bb.e ], [ false, %bb.h ], [ %i.aa, %bb.j ], [ true, %bb.i ], [ %i.az, %bb.n ], [ %isdigit.i, %.lr.ph.i ], [ true, %bb.q ], [ %i.bm, %bb.s ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.r ], [ false, %.lr.ph ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7rocksdb13ObjectLibrary12PatternEntry7MatchesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  %i.f = tail call noundef zeroext i1 @_ZNK7rocksdb13ObjectLibrary12PatternEntry13MatchesTargetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS9_m(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b)
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader
  %.sroa.015.018 = phi ptr [ %i.o, %.preheader ], [ %i.h, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.015.018, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !9
  %i.n = tail call noundef zeroext i1 @_ZNK7rocksdb13ObjectLibrary12PatternEntry13MatchesTargetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS9_m(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.015.018, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.015.018, i64 32 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.j
  %or.cond = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond, label %.critedge, label %.preheader

.critedge:                                        ; preds = %.preheader, %bb.b, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.n, %.preheader ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK7rocksdb13ObjectLibrary15GetFactoryCountEPm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #22
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !47
  store i64 %i.c, ptr %1, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.06.010 = load ptr, ptr %i.d, align 8, !tbaa !56 ; 2 uses
  %i.e = icmp eq ptr %.sroa.06.010, null
  br i1 %i.e, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.lr.ph, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %.0.lcssa = phi i64 [ 0, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ %i.o, %.lr.ph ]
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 0 uses
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.lr.ph
  %.sroa.06.012 = phi ptr [ %.sroa.06.0, %.lr.ph ], [ %.sroa.06.010, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ] ; 3 uses
  %.011 = phi i64 [ %i.o, %.lr.ph ], [ 0, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = add i64 %i.n, %.011                      ; 2 uses
  %.sroa.06.0 = load ptr, ptr %.sroa.06.012, align 8, !tbaa !56 ; 2 uses
  %i.p = icmp eq ptr %.sroa.06.0, null
  br i1 %i.p, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -1152921504606846976, 1152921504606846976) i64 @_ZNK7rocksdb13ObjectLibrary15GetFactoryCountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #22
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISA_EESaISD_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEE4findERSL_.exit unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit ; 3 uses

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISA_EESaISD_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEE4findERSL_.exit: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNSt11unique_lockISt5mutexED2Ev.exit5, label %bb.c

bb.c:                                             ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISA_EESaISD_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEE4findERSL_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit5

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 0 uses
  resume { ptr, i32 } %i.m

_ZNSt11unique_lockISt5mutexED2Ev.exit5:           ; preds = %bb.c, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISA_EESaISD_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEE4findERSL_.exit
  %.0 = phi i64 [ %i.l, %bb.c ], [ 0, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISA_EESaISD_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEE4findERSL_.exit ]
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 0 uses
  ret i64 %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb13ObjectLibrary15GetFactoryNamesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #22
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISA_EESaISD_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEE4findERSL_.exit unwind label %bb.d ; 3 uses

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISA_EESaISD_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEE4findERSL_.exit: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISA_EESaISD_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEE4findERSL_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit22

bb.e:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.024.038 = phi ptr [ %i.f, %.lr.ph ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.o = load ptr, ptr %.sroa.024.038, align 8, !tbaa !62 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.f unwind label %bb.q       ; 4 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.j, ptr %3, align 8, !tbaa !66
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #23 ; 8 uses
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %bb.i, label %._crit_edge.i.i

end_hunk_0
