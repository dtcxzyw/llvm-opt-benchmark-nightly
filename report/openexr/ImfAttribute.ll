Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfAttribute?download=true
inline.NumInlined: 205
inline.NumDeleted: 112
begin_hunk_0
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::mutex" = type { %"class.std::__mutex_base" }
%"class.std::__mutex_base" = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

@_ZTVN7Imf_3_49AttributeE = constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN7Imf_3_49AttributeE, ptr @_ZN7Imf_3_49AttributeD1Ev, ptr @_ZN7Imf_3_49AttributeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@.str = private unnamed_addr constant [44 x i8] c"Cannot register image file attribute type \22\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\22. The type has already been registered.\00", align 1
@_ZTIN7Iex_3_46ArgExcE = external constant ptr
@.str.2 = private unnamed_addr constant [53 x i8] c"Cannot create image file attribute of unknown type \22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\22.\00", align 1
@_ZTIN7Imf_3_49AttributeE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7Imf_3_49AttributeE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7Imf_3_49AttributeE = constant [21 x i8] c"N7Imf_3_49AttributeE\00", align 1
@_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap = internal global %"class.Imf_3_4::(anonymous namespace)::LockedTypeMap" zeroinitializer, align 8
@_ZGVZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap = internal global i64 0, align 8
@__dso_handle = external hidden global i8

@_ZN7Imf_3_49AttributeD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_49AttributeD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7Imf_3_49AttributeC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7Imf_3_49AttributeE, i64 16), ptr %0, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7Imf_3_49AttributeD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN7Imf_3_49AttributeD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7Imf_3_49Attribute9knownTypeEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap) #19
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), align 8, !tbaa !16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 16), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 24), align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 32), align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 40), i8 0, i64 48, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEED2Ev, ptr nonnull @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap) #19
  br label %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit

_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit:         ; preds = %bb.a, %bb.b, %bb.c
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 48)) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #20
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit
  %_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 16), align 8, !tbaa !17 ; 2 uses
  %.not2.i.i.i = icmp eq ptr %_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap.val.i.i, null
  br i1 %.not2.i.i.i, label %_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEE4findERSA_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.lr.ph.i.i.i
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap.val.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  %.083.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.f = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %0) #21
  %i.i = icmp slt i32 %i.h, 0                     ; 2 uses
  %.19.i.i.i = select i1 %i.i, ptr %.083.i.i.i, ptr %.04.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8)
  br i1 %i.j, label %_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEE4findERSA_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %i.l) #21
  %i.n = icmp sgt i32 %i.m, -1
  br label %_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEE4findERSA_.exit

_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEE4findERSA_.exit: ; preds = %bb.e, %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.sroa.0.0.i.i = phi i1 [ false, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ false, %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i ], [ %i.n, %bb.e ]
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 48)) #19 ; 0 uses
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_49Attribute21registerAttributeTypeEPKcPFPS0_vE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap) #19
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), align 8, !tbaa !16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 16), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 24), align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 32), align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 40), i8 0, i64 48, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEED2Ev, ptr nonnull @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap) #19
  br label %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit

_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit:         ; preds = %bb.a, %bb.b, %bb.c
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 48)) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #20
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit
  %_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 16), align 8, !tbaa !17 ; 3 uses
  %.not2.i.i.i = icmp eq ptr %_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap.val.i.i, null
  br i1 %.not2.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.lr.ph.i.i.i
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap.val.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  %.083.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.f = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %0) #21
  %i.i = icmp slt i32 %i.h, 0                     ; 2 uses
  %.19.i.i.i = select i1 %i.i, ptr %.083.i.i.i, ptr %.04.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8)
  br i1 %i.j, label %.lr.ph.i.i.i12.preheader, label %bb.e

.lr.ph.i.i.i12.preheader:                         ; preds = %bb.e, %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  br label %.lr.ph.i.i.i12

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %i.l) #21
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i12.preheader, label %_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEE4findERSA_.exit

_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEE4findERSA_.exit: ; preds = %bb.e
  invoke void @_Z13iex_debugTrapv()
          to label %bb.f unwind label %3

bb.f:                                             ; preds = %_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEE4findERSA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %0)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.1, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.h
  %i.s = call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
          to label %bb.u unwind label %bb.k

3:                                                ; preds = %_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEE4findERSA_.exit
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.j:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.s) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.v, %bb.l ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.t, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.t

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph.i.i.i12.preheader, %.lr.ph.i.i.i12
  %.01620.i.i.i = phi ptr [ %.016.i.i.i, %.lr.ph.i.i.i12 ], [ %_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap.val.i.i, %.lr.ph.i.i.i12.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01620.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21   ; 2 uses
  %i.y = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %i.x) #21
  %i.z = icmp slt i32 %i.y, 0                     ; 2 uses
  %.in.v.i.i.i = select i1 %i.z, i64 16, i64 24
  %.in.i.i.i = getelementptr i8, ptr %.01620.i.i.i, i64 %.in.v.i.i.i
  %.016.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i13, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i12, !llvm.loop !29

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i12
  br i1 %i.z, label %._crit_edge.thread.i.i.i, label %bb.p

._crit_edge.thread.i.i.i:                         ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %._crit_edge.i.i.i
  %.015.lcssa25.i.i.i = phi ptr [ %.01620.i.i.i, %._crit_edge.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 4 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 24), align 8, !tbaa !18
  %i.ab = icmp eq ptr %.015.lcssa25.i.i.i, %i.aa
  br i1 %i.ab, label %select.unfold.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.015.lcssa25.i.i.i) #21
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i
  %i.ad = phi ptr [ %.pre.i.i, %bb.o ], [ %i.x, %._crit_edge.i.i.i ]
  %.015.lcssa24.i.i.i = phi ptr [ %.015.lcssa25.i.i.i, %bb.o ], [ %.01620.i.i.i, %._crit_edge.i.i.i ]
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ad, ptr noundef nonnull readonly dereferenceable(1) %0) #21
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %select.unfold.i.i, label %bb.r

select.unfold.i.i:                                ; preds = %bb.p, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.015.lcssa25.i.i.i, %._crit_edge.thread.i.i.i ], [ %.015.lcssa24.i.i.i, %bb.p ] ; 3 uses
  %i.ag = icmp eq ptr %.sroa.4.0.i.ph.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8)
  br i1 %i.ag, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE10_M_insert_IS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSL_OT_RT0_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %select.unfold.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %i.ai) #21
  %i.ak = icmp slt i32 %i.aj, 0
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE10_M_insert_IS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSL_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE10_M_insert_IS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSL_OT_RT0_.exit.i.i: ; preds = %bb.q, %select.unfold.i.i
  %i.al = phi i1 [ %i.ak, %bb.q ], [ true, %select.unfold.i.i ]
  %i.am = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
          to label %.noexc unwind label %bb.s     ; 3 uses

.noexc:                                           ; preds = %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE10_M_insert_IS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSL_OT_RT0_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %0, ptr %i.an, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8)) #19
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 40), align 8, !tbaa !24
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 40), align 8, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %.noexc, %bb.p
  %i.aq = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 48)) #19 ; 0 uses
  ret void

bb.s:                                             ; preds = %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE10_M_insert_IS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSL_OT_RT0_.exit.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n, %3
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %4, %3 ], [ %i.ar, %bb.s ]
  %i.as = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 48)) #19 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn

bb.u:                                             ; preds = %bb.i
  unreachable
}

declare void @_Z13iex_debugTrapv() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN7Iex_3_46ArgExcD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #10 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_49Attribute23unRegisterAttributeTypeEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap) #19
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), align 8, !tbaa !16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 16), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 24), align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 32), align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 40), i8 0, i64 48, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEED2Ev, ptr nonnull @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap) #19
  br label %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit

_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit:         ; preds = %bb.a, %bb.b, %bb.c
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 48)) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #20
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit
  %.09.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 16), align 8, !tbaa !22 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %.09.i.i.i, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE11equal_rangeERS3_.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.g
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %bb.g ], [ %.09.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 7 uses
  %.02211.i.i.i = phi ptr [ %.123.i.i.i, %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %0) #21
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.j = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %i.g) #21
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.012.i.i.i, i64 16
  %.0.val25.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !25 ; 2 uses
  %i.m = getelementptr i8, ptr %.012.i.i.i, i64 24
  %.0.val.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !26 ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %.0.val25.i.i.i, null
  br i1 %.not2.i.i.i.i, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.val25.i.i.i, %bb.f ] ; 3 uses
  %.083.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.012.i.i.i, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.o, ptr noundef nonnull readonly dereferenceable(1) %0) #21
  %i.q = icmp slt i32 %i.p, 0                     ; 2 uses
  %.19.i.i.i.i = select i1 %i.q, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.f
  %.08.lcssa.i.i.i.i = phi ptr [ %.012.i.i.i, %bb.f ], [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not2.i28.i.i.i = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not2.i28.i.i.i, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE11equal_rangeERS3_.exit.i.i, label %.lr.ph.i29.i.i.i

.lr.ph.i29.i.i.i:                                 ; preds = %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %.lr.ph.i29.i.i.i
  %.04.i30.i.i.i = phi ptr [ %.1.i35.i.i.i, %.lr.ph.i29.i.i.i ], [ %.0.val.i.i.i, %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i ] ; 3 uses
  %.083.i31.i.i.i = phi ptr [ %.19.i32.i.i.i, %.lr.ph.i29.i.i.i ], [ %.02211.i.i.i, %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.04.i30.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %i.s) #21
  %i.u = icmp slt i32 %i.t, 0                     ; 2 uses
  %.19.i32.i.i.i = select i1 %i.u, ptr %.04.i30.i.i.i, ptr %.083.i31.i.i.i ; 2 uses
  %.1.in.v.i33.i.i.i = select i1 %i.u, i64 16, i64 24
  %.1.in.i34.i.i.i = getelementptr i8, ptr %.04.i30.i.i.i, i64 %.1.in.v.i33.i.i.i
  %.1.i35.i.i.i = load ptr, ptr %.1.in.i34.i.i.i, align 8, !tbaa !22 ; 2 uses
  %.not.i36.i.i.i = icmp eq ptr %.1.i35.i.i.i, null
  br i1 %.not.i36.i.i.i, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE11equal_rangeERS3_.exit.i.i, label %.lr.ph.i29.i.i.i, !llvm.loop !30

bb.g:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.sink.i.i.i = phi i64 [ 24, %.lr.ph.i.i.i ], [ 16, %bb.e ]
  %.123.i.i.i = phi ptr [ %.02211.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i.i, %bb.e ] ; 3 uses
  %i.v = getelementptr i8, ptr %.012.i.i.i, i64 %.sink.i.i.i
  %.0.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE11equal_rangeERS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !31

_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE11equal_rangeERS3_.exit.i.i: ; preds = %bb.g, %.lr.ph.i29.i.i.i, %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %.sroa.05.0.i.i.i = phi ptr [ %.08.lcssa.i.i.i.i, %.lr.ph.i29.i.i.i ], [ %.08.lcssa.i.i.i.i, %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i ], [ %.123.i.i.i, %bb.g ] ; 3 uses
  %.sroa.3.0.i.i.i = phi ptr [ %.19.i32.i.i.i, %.lr.ph.i29.i.i.i ], [ %.02211.i.i.i, %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i ], [ %.123.i.i.i, %bb.g ] ; 3 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 24), align 8, !tbaa !18
  %i.x = icmp eq ptr %.sroa.05.0.i.i.i, %i.w
  %i.y = icmp eq ptr %.sroa.3.0.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8)
  %or.cond.i.i.i = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond.i.i.i, label %bb.h, label %.critedge.preheader.i.i.i

_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE11equal_rangeERS3_.exit.thread.i.i: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 24), align 8, !tbaa !18
  %i.aa = icmp eq ptr %i.z, getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8)
  br i1 %i.aa, label %bb.h, label %_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEE5eraseERSA_.exit

.critedge.preheader.i.i.i:                        ; preds = %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE11equal_rangeERS3_.exit.i.i
  %.not8.i.i.i = icmp eq ptr %.sroa.05.0.i.i.i, %.sroa.3.0.i.i.i
  br i1 %.not8.i.i.i, label %_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEE5eraseERSA_.exit, label %.critedge.i.i.i

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE11equal_rangeERS3_.exit.thread.i.i, %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE11equal_rangeERS3_.exit.i.i
  tail call fastcc void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef %.09.i.i.i)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 16), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 24), align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 32), align 8, !tbaa !19
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 40), align 8, !tbaa !24
  br label %_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEE5eraseERSA_.exit

.critedge.i.i.i:                                  ; preds = %.critedge.preheader.i.i.i, %.critedge.i.i.i
  %.sroa.06.09.i.i.i = phi ptr [ %i.ab, %.critedge.i.i.i ], [ %.sroa.05.0.i.i.i, %.critedge.preheader.i.i.i ] ; 2 uses
  %i.ab = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i.i) #21 ; 2 uses
  %i.ac = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8)) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 48) #23
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 40), align 8, !tbaa !24
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 40), align 8, !tbaa !24
  %.not.i2.i.i = icmp eq ptr %i.ab, %.sroa.3.0.i.i.i
  br i1 %.not.i2.i.i, label %_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEE5eraseERSA_.exit, label %.critedge.i.i.i, !llvm.loop !32

_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEE5eraseERSA_.exit: ; preds = %.critedge.i.i.i, %bb.h, %.critedge.preheader.i.i.i, %_ZNSt8_Rb_treeIPKcSt4pairIKS1_PFPN7Imf_3_49AttributeEvEESt10_Select1stIS9_ENS4_12_GLOBAL__N_111NameCompareESaIS9_EE11equal_rangeERS3_.exit.thread.i.i
  %i.af = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 48)) #19 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7Imf_3_49Attribute12newAttributeEPKc(ptr noundef %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap) #19
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), align 8, !tbaa !16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 16), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 24), align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 32), align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 40), i8 0, i64 48, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapIPKcPFPN7Imf_3_49AttributeEvENS2_12_GLOBAL__N_111NameCompareESaISt4pairIKS1_S6_EEED2Ev, ptr nonnull @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap) #19
  br label %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit

_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit:         ; preds = %bb.a, %bb.b, %bb.c
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_412_GLOBAL__N_17typeMapEvE4tMap, i64 48)) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7Imf_3_412_GLOBAL__N_17typeMapEv.exit
end_hunk_0
