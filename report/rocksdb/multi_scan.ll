Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/multi_scan?download=true
inline.NumInlined: 563
inline.NumDeleted: 300
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.rocksdb::Slice" = type { ptr, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.29 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.29 = type { i64, [8 x i8] }
%"class.rocksdb::Status" = type { i8, i8, i8, i8, i8, i8, %"class.std::unique_ptr.2" }
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"struct.std::__detail::_AllocNode" = type { ptr }
%"struct.std::__detail::_ReuseOrAllocNode" = type { ptr, ptr }

$_ZN7rocksdb13MultiScanArgsD2Ev = comdat any

$_ZN7rocksdb18MultiScanExceptionC2ERNS_6StatusE = comdat any

$_ZN7rocksdb18MultiScanExceptionD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN7rocksdb13MultiScanArgsC2ERKS0_ = comdat any

$_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EEaSERKS3_ = comdat any

$_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev = comdat any

$_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb11ScanOptionsESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSL_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSL_EEvOT_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSL_NSA_17_ReuseOrAllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_ = comdat any

$_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEED2Ev = comdat any

$_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_ = comdat any

$_ZSt16__do_uninit_copyIPN7rocksdb11ScanOptionsES2_ET0_T_S4_S3_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN7rocksdb18MultiScanExceptionD0Ev = comdat any

$_ZTIN7rocksdb18MultiScanExceptionE = comdat any

$_ZTSN7rocksdb18MultiScanExceptionE = comdat any

$_ZTISt13runtime_error = comdat any

$_ZTSSt13runtime_error = comdat any

$_ZTISt9exception = comdat any

$_ZTSSt9exception = comdat any

$_ZTISt11logic_error = comdat any

$_ZTSSt11logic_error = comdat any

$_ZTVN7rocksdb18MultiScanExceptionE = comdat any

@_ZTIN7rocksdb18MultiScanExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7rocksdb18MultiScanExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN7rocksdb18MultiScanExceptionE = linkonce_odr constant [31 x i8] c"N7rocksdb18MultiScanExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt13runtime_error, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt13runtime_error = linkonce_odr constant [18 x i8] c"St13runtime_error\00", comdat, align 1
@_ZTISt9exception = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt9exception }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt9exception = linkonce_odr constant [13 x i8] c"St9exception\00", comdat, align 1
@.str = private unnamed_addr constant [42 x i8] c"Incrementing exhausted MultiScan iterator\00", align 1
@_ZTISt11logic_error = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt11logic_error, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt11logic_error = linkonce_odr constant [16 x i8] c"St11logic_error\00", comdat, align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Empty MultiScanArgs\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"MultiScanArgs requires comparator\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Scan has no start key at index \00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Reverse MultiScan requires limit at index \00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Scan start key is large or equal than limit at index \00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@_ZTVN7rocksdb18MultiScanExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb18MultiScanExceptionD2Ev, ptr @_ZN7rocksdb18MultiScanExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8

@_ZN7rocksdb9MultiScanC1ERKNS_11ReadOptionsERKNS_13MultiScanArgsEPNS_2DBEPNS_18ColumnFamilyHandleE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN7rocksdb9MultiScanC2ERKNS_11ReadOptionsERKNS_13MultiScanArgsEPNS_2DBEPNS_18ColumnFamilyHandleE

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb9MultiScanC2ERKNS_11ReadOptionsERKNS_13MultiScanArgsEPNS_2DBEPNS_18ColumnFamilyHandleE(ptr noundef nonnull align 8 dereferenceable(320) initializes((0, 119), (120, 152)) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %21 = alloca %"class.rocksdb::Status", align 8  ; 14 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 119, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !156  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZN7rocksdb11ReadOptionsC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.g = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = load <2 x ptr>, ptr %i.d, align 8, !tbaa !157
  store <2 x ptr> %i.h, ptr %i.c, align 8, !tbaa !157
  br label %_ZN7rocksdb11ReadOptionsC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !156  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #18
  unreachable

common.resume:                                    ; preds = %bb.du, %.body, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %.pn.pn.pn, %.body ], [ %.pn.pn.pn, %bb.du ]
  resume { ptr, i32 } %common.resume.op

_ZN7rocksdb11ReadOptionsC2ERKS0_.exit:            ; preds = %bb.a, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  invoke void @_ZN7rocksdb13MultiScanArgsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc unwind label %bb.dl

.noexc:                                           ; preds = %_ZN7rocksdb11ReadOptionsC2ERKS0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !28, !range !29, !alias.scope !158, !noundef !30
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %"_ZZN7rocksdb9MultiScanC1ERKNS_11ReadOptionsERKNS_13MultiScanArgsEPNS_2DBEPNS_18ColumnFamilyHandleEENK3$_0clEv.exit"

bb.g:                                             ; preds = %.noexc
  %i.t = load ptr, ptr %3, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 896
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !158
  store i64 0, ptr %i.a, align 8, !tbaa !33, !noalias !158
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 512
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.k, !inline_history !134

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !158
  %i.ab = and i64 %i.aa, 1
  %.not.i.not.i = icmp eq i64 %i.ab, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !158
  br i1 %.not.i.not.i, label %bb.j, label %"_ZZN7rocksdb9MultiScanC1ERKNS_11ReadOptionsERKNS_13MultiScanArgsEPNS_2DBEPNS_18ColumnFamilyHandleEENK3$_0clEv.exit"

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.q, align 8, !tbaa !28, !alias.scope !158
  br label %"_ZZN7rocksdb9MultiScanC1ERKNS_11ReadOptionsERKNS_13MultiScanArgsEPNS_2DBEPNS_18ColumnFamilyHandleEENK3$_0clEv.exit"

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EED2Ev.exit

"_ZZN7rocksdb9MultiScanC1ERKNS_11ReadOptionsERKNS_13MultiScanArgsEPNS_2DBEPNS_18ColumnFamilyHandleEENK3$_0clEv.exit": ; preds = %bb.j, %bb.i, %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %3, ptr %i.ad, align 8, !tbaa !166
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %4, ptr %i.ae, align 8, !tbaa !167
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  store ptr @.str.2, ptr %i.af, align 8, !tbaa !168
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 0, ptr %i.ag, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr @.str.2, ptr %i.ah, align 8, !tbaa !168
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !55, !noalias !169 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !55, !noalias !169 ; 2 uses
  %i.ao = icmp eq ptr %i.al, %i.an
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %"_ZZN7rocksdb9MultiScanC1ERKNS_11ReadOptionsERKNS_13MultiScanArgsEPNS_2DBEPNS_18ColumnFamilyHandleEENK3$_0clEv.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !169
  store ptr @.str.3, ptr %5, align 8, !tbaa !168, !noalias !169
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 19, ptr %i.ap, align 8, !tbaa !54, !noalias !169
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !169
  store ptr @.str.2, ptr %6, align 8, !tbaa !168, !noalias !169
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !54, !noalias !169
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !169
  br label %bb.di

bb.m:                                             ; preds = %"_ZZN7rocksdb9MultiScanC1ERKNS_11ReadOptionsERKNS_13MultiScanArgsEPNS_2DBEPNS_18ColumnFamilyHandleEENK3$_0clEv.exit"
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !56, !noalias !169 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.n, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 209
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !169
  store ptr @.str.4, ptr %7, align 8, !tbaa !168, !noalias !169
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 33, ptr %i.av, align 8, !tbaa !54, !noalias !169
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !169
  store ptr @.str.2, ptr %8, align 8, !tbaa !168, !noalias !169
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !54, !noalias !169
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i8 noundef zeroext 0)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27:                                         ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !169
  br label %bb.di

bb.o:                                             ; preds = %bb.dh, %.lr.ph.i
  %i.ax = phi ptr [ %i.al, %.lr.ph.i ], [ %i.oh, %bb.dh ] ; 2 uses
  %i.ay = phi ptr [ %i.an, %.lr.ph.i ], [ %i.oi, %bb.dh ]
  %.027141.i = phi i64 [ 0, %.lr.ph.i ], [ %i.oj, %bb.dh ] ; 17 uses
  %i.az = getelementptr inbounds nuw [96 x i8], ptr %i.ax, i64 %.027141.i ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !54, !noalias !169
  %.not117.i = icmp eq i64 %i.bb, -1
  br i1 %.not117.i, label %bb.p, label %bb.au

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19, !noalias !169
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19, !noalias !169
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19, !noalias !169
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.bc = icmp ult i64 %.027141.i, 10
  br i1 %i.bc, label %.thread.i.i, label %.lr.ph.i.i.i

.thread.i.i:                                      ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.bd, ptr %11, align 8, !tbaa !58, !alias.scope !170, !noalias !169
  br label %bb.x

.lr.ph.i.i.i:                                     ; preds = %bb.p, %bb.v
  %.029.i.i.i = phi i32 [ %i.bl, %bb.v ], [ 1, %bb.p ] ; 4 uses
  %.02328.i.i.i = phi i64 [ %i.bk, %bb.v ], [ %.027141.i, %bb.p ] ; 5 uses
  %i.be = icmp ult i64 %.02328.i.i.i, 100
  br i1 %i.be, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = icmp ult i64 %.02328.i.i.i, 1000
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bh = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.bi = icmp ult i64 %.02328.i.i.i, 10000
  br i1 %i.bi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bj = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.bk = udiv i64 %.02328.i.i.i, 10000
  %i.bl = add i32 %.029.i.i.i, 4                  ; 2 uses
  %i.bm = icmp ult i64 %.02328.i.i.i, 100000
  br i1 %i.bm, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !139

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i:  ; preds = %bb.v, %bb.u, %bb.s, %bb.q
  %.022.i.i.i = phi i32 [ %i.bj, %bb.u ], [ %i.bf, %bb.q ], [ %i.bh, %bb.s ], [ %i.bl, %bb.v ] ; 3 uses
  %i.bn = zext i32 %.022.i.i.i to i64             ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.bo, ptr %11, align 8, !tbaa !58, !alias.scope !170, !noalias !169
  %i.bp = icmp ugt i32 %.022.i.i.i, 15
  br i1 %i.bp, label %.noexc.i.i, label %bb.w

.noexc.i.i:                                       ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  %i.bq = add nuw nsw i64 %i.bn, 1
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #20
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !169 ; 2 uses

.noexc28:                                         ; preds = %.noexc.i.i
  store ptr %i.br, ptr %11, align 8, !tbaa !61, !alias.scope !170, !noalias !169
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !62, !alias.scope !170, !noalias !169
  br label %bb.y

bb.w:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  switch i32 %.022.i.i.i, label %bb.y [
    i32 0, label %bb.z
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %.thread.i.i
  %i.bs = phi ptr [ %i.bd, %.thread.i.i ], [ %i.bo, %bb.w ] ; 2 uses
  store i8 0, ptr %i.bs, align 1, !tbaa !62, !alias.scope !170, !noalias !169
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %.noexc28
  %i.bt = phi ptr [ %i.br, %.noexc28 ], [ %i.bo, %bb.w ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bt, i8 0, i64 %i.bn, i1 false), !noalias !169
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.bu = phi i64 [ 0, %bb.w ], [ %i.bn, %bb.y ], [ 1, %bb.x ] ; 2 uses
  %i.bv = phi ptr [ %i.bo, %bb.w ], [ %i.bt, %bb.y ], [ %i.bs, %bb.x ]
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  store i64 %i.bu, ptr %i.bw, align 8, !tbaa !63, !alias.scope !170, !noalias !169
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store i8 0, ptr %i.bx, align 1, !tbaa !62, !noalias !169
  %i.by = load ptr, ptr %11, align 8, !tbaa !61, !alias.scope !170, !noalias !169 ; 4 uses
  %i.bz = icmp ugt i64 %.027141.i, 99
  br i1 %i.bz, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.z
  %i.ca = load i64, ptr %i.bw, align 8, !tbaa !63, !alias.scope !170, !noalias !169
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = add i32 %i.cb, -1
  br label %.lr.ph.i4.i.i

.lr.ph.i4.i.i:                                    ; preds = %.lr.ph.i4.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i64 [ %i.cf, %.lr.ph.i4.i.i ], [ %.027141.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.cp, %.lr.ph.i4.i.i ], [ %i.cc, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.cd = urem i64 %.020.i.i.i, 100
  %i.ce = shl nuw nsw i64 %i.cd, 1
  %i.cf = udiv i64 %.020.i.i.i, 100               ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ce ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !62, !noalias !171
  %i.cj = zext i32 %.01819.i.i.i to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cj
  store i8 %i.ci, ptr %i.ck, align 1, !tbaa !62, !noalias !169
  %i.cl = load i8, ptr %i.cg, align 2, !tbaa !62, !noalias !171
  %i.cm = add i32 %.01819.i.i.i, -1
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cn
  store i8 %i.cl, ptr %i.co, align 1, !tbaa !62, !noalias !169
  %i.cp = add i32 %.01819.i.i.i, -2
  %i.cq = icmp ugt i64 %.020.i.i.i, 9999
  br i1 %i.cq, label %.lr.ph.i4.i.i, label %._crit_edge.i.i.i, !llvm.loop !140

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i4.i.i, %bb.z
  %.0.lcssa.i.i.i = phi i64 [ %.027141.i, %bb.z ], [ %i.cf, %.lr.ph.i4.i.i ] ; 3 uses
  %i.cr = icmp samesign ugt i64 %.0.lcssa.i.i.i, 9
  br i1 %i.cr, label %bb.aa, label %bb.ab

end_hunk_0
begin_hunk_1_@_ZN7rocksdb9MultiScanC2ERKNS_11ReadOptionsERKNS_13MultiScanArgsEPNS_2DBEPNS_18ColumnFamilyHandleE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i

bb.dg:                                            ; preds = %bb.de
  %i.nx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19, !noalias !169
  %i.ny = load ptr, ptr %18, align 8, !tbaa !61, !noalias !169 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.nc
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i: ; preds = %bb.dg
  %i.oa = load i64, ptr %i.nc, align 8, !tbaa !62, !noalias !169
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.ob) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i, %bb.df
  %.pn34.i = phi { ptr, i32 } [ %i.nw, %bb.df ], [ %i.nx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i ], [ %i.nx, %bb.dg ]
  %i.oc = load ptr, ptr %19, align 8, !tbaa !61, !noalias !169 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.oe = icmp eq ptr %i.oc, %i.od
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i
  %i.of = load i64, ptr %i.od, align 8, !tbaa !62, !noalias !169
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.og) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19, !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19, !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !169
  br label %.body32

bb.dh:                                            ; preds = %._crit_edge162.i, %bb.cb
  %i.oh = phi ptr [ %.pre164.i, %._crit_edge162.i ], [ %i.ax, %bb.cb ] ; 3 uses
  %i.oi = phi ptr [ %.pre163.i, %._crit_edge162.i ], [ %i.ay, %bb.cb ] ; 2 uses
  %i.oj = add nuw i64 %.027141.i, 1               ; 2 uses
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = ptrtoint ptr %i.oh to i64
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = sdiv exact i64 %i.om, 96
  %.not.i = icmp ult i64 %i.oj, %i.on
  br i1 %.not.i, label %bb.o, label %.thread120, !llvm.loop !152

.thread120:                                       ; preds = %bb.dh
  %i.oo = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr null, ptr %i.oo, align 8, !tbaa !69, !alias.scope !183
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 6, i1 false), !alias.scope !183
  br label %bb.dm

bb.di:                                            ; preds = %.noexc26, %.noexc27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i
  %.pr = load i8, ptr %21, align 8, !tbaa !79
  %i.op = icmp eq i8 %.pr, 0
  br i1 %i.op, label %._crit_edge171, label %bb.dj

._crit_edge171:                                   ; preds = %bb.di
  %.pre172 = load ptr, ptr %i.ak, align 8, !tbaa !67
  br label %bb.dm

bb.dj:                                            ; preds = %bb.di
  %i.oq = invoke noundef ptr @_ZN7rocksdb16NewErrorIteratorERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %bb.dk unwind label %bb.dt

bb.dk:                                            ; preds = %bb.dj
  %i.or = load ptr, ptr %i.aj, align 8, !tbaa !80 ; 3 uses
  store ptr %i.oq, ptr %i.aj, align 8, !tbaa !80
  %.not.i.i = icmp eq ptr %i.or, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN7rocksdb8IteratorEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb8IteratorEEclEPS1_.exit.i.i: ; preds = %bb.dk
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !32
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8
  call void %i.ou(ptr noundef nonnull align 8 dereferenceable(40) %i.or) #19, !inline_history !0
  br label %_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EE5resetEPS1_.exit

bb.dl:                                            ; preds = %_ZN7rocksdb11ReadOptionsC2ERKS0_.exit
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread.i, %.noexc.i95.i, %.noexc.i61.i, %.noexc.i.i, %bb.n, %bb.l
  %lpad.loopexit.split-lp310 = landingpad { ptr, i32 }
          cleanup
  br label %.body32

bb.dm:                                            ; preds = %._crit_edge171, %.thread120
  %i.ow = phi ptr [ %.pre172, %._crit_edge171 ], [ %i.oh, %.thread120 ] ; 6 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !184, !range !29, !noundef !30
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ow, i64 16, i1 false), !tbaa.struct !82
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.af, ptr %i.pa, align 8, !tbaa !185
  br label %.sink.split

bb.do:                                            ; preds = %bb.dm
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !54
  %.not = icmp eq i64 %i.pc, -1
  br i1 %.not, label %bb.dp, label %.sink.split

.sink.split:                                      ; preds = %bb.do, %bb.dn
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.pd, i64 16, i1 false)
  br label %bb.dp

bb.dp:                                            ; preds = %.sink.split, %bb.do
  %.sink = phi ptr [ null, %bb.do ], [ %i.ah, %.sink.split ]
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sink, ptr %i.pe, align 8, !tbaa !186
  %i.pf = load ptr, ptr %i.am, align 8, !tbaa !55 ; 2 uses
  %.not121143 = icmp eq ptr %i.ow, %i.pf
  br i1 %.not121143, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dp
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !54
  %i.pi = icmp ne i64 %i.ph, -1
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dq, %.lr.ph
  %.sroa.0109.0144 = phi ptr [ %i.ow, %.lr.ph ], [ %i.pn, %bb.dq ] ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.0109.0144, i64 24
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !54
  %i.pl = icmp ne i64 %i.pk, -1
  %i.pm = xor i1 %i.pl, %i.pi                     ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0109.0144, i64 96 ; 2 uses
  %.not121 = icmp eq ptr %i.pn, %i.pf
  %or.cond = select i1 %i.pm, i1 true, i1 %.not121
  br i1 %or.cond, label %._crit_edge.loopexit, label %bb.dq

._crit_edge.loopexit:                             ; preds = %bb.dq
  %.not121.lcssa.ph = xor i1 %i.pm, true
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.dp
  %.not121.lcssa = phi i1 [ true, %bb.dp ], [ %.not121.lcssa.ph, %._crit_edge.loopexit ]
  %i.po = load ptr, ptr %3, align 8, !tbaa !32
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 464
  %i.pq = load ptr, ptr %i.pp, align 8
  %i.pr = invoke noundef ptr %i.pq(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %4)
          to label %bb.dr unwind label %bb.dt

bb.dr:                                            ; preds = %._crit_edge
  %i.ps = load ptr, ptr %i.aj, align 8, !tbaa !80 ; 3 uses
  store ptr %i.pr, ptr %i.aj, align 8, !tbaa !80
  %.not.i.i34 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i34, label %_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EE5resetEPS1_.exit36, label %_ZNKSt14default_deleteIN7rocksdb8IteratorEEclEPS1_.exit.i.i35

_ZNKSt14default_deleteIN7rocksdb8IteratorEEclEPS1_.exit.i.i35: ; preds = %bb.dr
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !32
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8
  call void %i.pv(ptr noundef nonnull align 8 dereferenceable(40) %i.ps) #19, !inline_history !0
  br label %_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EE5resetEPS1_.exit36

_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EE5resetEPS1_.exit36: ; preds = %bb.dr, %_ZNKSt14default_deleteIN7rocksdb8IteratorEEclEPS1_.exit.i.i35
  br i1 %.not121.lcssa, label %bb.ds, label %_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EE5resetEPS1_.exit

bb.ds:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EE5resetEPS1_.exit36
  %i.pw = load ptr, ptr %i.aj, align 8, !tbaa !80 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !32
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 144
  %i.pz = load ptr, ptr %i.py, align 8
  invoke void %i.pz(ptr noundef nonnull align 8 dereferenceable(40) %i.pw, ptr noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EE5resetEPS1_.exit unwind label %bb.dt

bb.dt:                                            ; preds = %bb.dj, %bb.ds, %._crit_edge
  %i.qa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !81 ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.qc, null
  br i1 %.not.i.i37, label %.body32, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.dt
  call void @_ZdaPv(ptr noundef nonnull %i.qc) #23
  br label %.body32

_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNKSt14default_deleteIN7rocksdb8IteratorEEclEPS1_.exit.i.i, %bb.dk, %_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EE5resetEPS1_.exit36, %bb.ds
  %i.qd = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !81 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.qe, null
  br i1 %.not.i.i38, label %_ZN7rocksdb6StatusD2Ev.exit40, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i39

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i39: ; preds = %_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EE5resetEPS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.qe) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit40

_ZN7rocksdb6StatusD2Ev.exit40:                    ; preds = %_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  ret void

.body32:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %bb.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i
  %.pn.pn = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i ], [ %i.qa, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ], [ %.pn34.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i ], [ %.pn32.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i ], [ %i.qa, %bb.dt ], [ %lpad.loopexit.split-lp310, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.qf = load ptr, ptr %i.aj, align 8, !tbaa !80 ; 3 uses
  %.not.i41 = icmp eq ptr %i.qf, null
  br i1 %.not.i41, label %_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb8IteratorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb8IteratorEEclEPS1_.exit.i: ; preds = %.body32
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !32
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dereferenceable(40) %i.qf) #19, !inline_history !155
  br label %_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN7rocksdb8IteratorEEclEPS1_.exit.i, %.body32, %bb.k
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn.pn, %.body32 ], [ %.pn.pn, %_ZNKSt14default_deleteIN7rocksdb8IteratorEEclEPS1_.exit.i ]
  call void @_ZN7rocksdb13MultiScanArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.p) #19
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EED2Ev.exit, %bb.dl
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ov, %bb.dl ], [ %.pn.pn.pn.ph, %_ZNSt10unique_ptrIN7rocksdb8IteratorESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.qj = load ptr, ptr %i.c, align 8, !tbaa !156 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i42, label %common.resume, label %bb.du

bb.du:                                            ; preds = %.body
  %i.qk = invoke noundef zeroext i1 %i.qj(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %common.resume unwind label %bb.dv ; 0 uses

bb.dv:                                            ; preds = %bb.du
  %i.ql = landingpad { ptr, i32 }
          catch ptr null
  %i.qm = extractvalue { ptr, i32 } %i.ql, 0
  call void @__clang_call_terminate(ptr %i.qm) #18
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_ZN7rocksdb16NewErrorIteratorERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb13MultiScanArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !84, !range !29, !noundef !30
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  store i8 0, ptr %i.e, align 8, !tbaa !84
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.h) #19
  br label %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #23
  br label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !86   ; 8 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.r, align 8, !tbaa !88
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !89
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #19, !inline_history !187
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #19, !inline_history !187
  br label %_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i1 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !90
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !64

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #19
  br label %_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb9MultiScan17MultiScanIterator16SeekCurrentRangeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !30, !align !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !98
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !82
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100, !nonnull !30, !align !97
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  store ptr %.sink, ptr %i.n, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !102, !range !29, !noundef !30
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !103
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !82
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !103
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !100, !nonnull !30, !align !97
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store ptr %i.t, ptr %i.w, align 8, !tbaa !104
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink14 = phi i64 [ 48, %bb.d ], [ 40, %bb.c ]
  %.sink10 = phi ptr [ %i.f, %bb.d ], [ %i.e, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !105, !nonnull !30, !align !97
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sink14
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %.sink10)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(104) ptr @_ZN7rocksdb9MultiScan17MultiScanIteratorppEv(ptr noundef nonnull returned align 8 dereferenceable(104) initializes((72, 78)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %2 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !nonnull !30, !align !97
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %1, ptr noundef nonnull align 8 dereferenceable(40) %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.h = load <4 x i8>, ptr %1, align 8, !tbaa !62
end_hunk_1
