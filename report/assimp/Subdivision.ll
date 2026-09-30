Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Subdivision?download=true
inline.NumInlined: 871
inline.NumDeleted: 477
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.Assimp::Vertex" = type { %class.aiVector3t, %class.aiVector3t, %class.aiVector3t, %class.aiVector3t, [8 x %class.aiVector3t], [8 x %class.aiColor4t] }
%class.aiVector3t = type { float, float, float }
%class.aiColor4t = type { float, float, float, float }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.Assimp::SpatialSort" = type <{ %class.aiVector3t, %class.aiVector3t, %"class.std::vector.5", i8, [7 x i8] }>
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<Assimp::SpatialSort::Entry, std::allocator<Assimp::SpatialSort::Entry>>::_Vector_impl" }
%"struct.std::_Vector_base<Assimp::SpatialSort::Entry, std::allocator<Assimp::SpatialSort::Entry>>::_Vector_impl" = type { %"struct.std::_Vector_base<Assimp::SpatialSort::Entry, std::allocator<Assimp::SpatialSort::Entry>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Assimp::SpatialSort::Entry, std::allocator<Assimp::SpatialSort::Entry>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"struct.std::__detail::_AllocNode" = type { ptr }
%"class.std::unordered_set" = type { %"class.std::_Hashtable.34" }
%"class.std::_Hashtable.34" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZN6aiMeshD2Ev = comdat any

$_ZN6Assimp6VertexC2EPK6aiMeshj = comdat any

$_ZN6Assimp6Logger12verboseDebugIJRA31_KcRjRA44_S2_jRA10_S2_EEEvDpOT_ = comdat any

$_ZNK6Assimp6Vertex8SortBackEP6aiMeshj = comdat any

$_ZN6Assimp10SubdividerD2Ev = comdat any

$_ZN22CatmullClarkSubdividerD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN10aiAnimMeshD2Ev = comdat any

$_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_ = comdat any

$_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm = comdat any

$_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZN6Assimp6Vertex8BinaryOpINS_6Intern10multipliesEEES0_RKS0_f = comdat any

$_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm = comdat any

$_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZN6Assimp6Logger13formatMessageIJRA44_KcjRA10_S2_ERjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSB_SC_EEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN6Assimp6Logger13formatMessageIJjRA10_KcERA44_S2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJRA10_KcEjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA10_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZTIN6Assimp10SubdividerE = comdat any

$_ZTSN6Assimp10SubdividerE = comdat any

@.str = private unnamed_addr constant [56 x i8] c"Catmull-Clark Subdivider: Skipping pure line/point mesh\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Catmull-Clark Subdivider: Pure point/line scene, I can't do anything\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Catmull-Clark Subdivider: got \00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c" bad edges touching only one face (totally \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" edges). \00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"OBJ: no name for material library specified.\00", align 1
@_ZTIN6Assimp10SubdividerE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6Assimp10SubdividerE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp10SubdividerE = linkonce_odr constant [22 x i8] c"N6Assimp10SubdividerE\00", comdat, align 1
@_ZTV22CatmullClarkSubdivider = hidden unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI22CatmullClarkSubdivider, ptr @_ZN6Assimp10SubdividerD2Ev, ptr @_ZN22CatmullClarkSubdividerD0Ev, ptr @_ZN22CatmullClarkSubdivider9SubdivideEP6aiMeshRS1_jb, ptr @_ZN22CatmullClarkSubdivider9SubdivideEPP6aiMeshmS2_jb] }, align 8
@_ZTI22CatmullClarkSubdivider = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22CatmullClarkSubdivider, ptr @_ZTIN6Assimp10SubdividerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS22CatmullClarkSubdivider = hidden constant [25 x i8] c"22CatmullClarkSubdivider\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_Z7mydummyv() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @_ZN6Assimp10Subdivider6CreateENS0_9AlgorithmE(i32 noundef %0) local_unnamed_addr #1 align 2 {
bb.a:
  %cond = icmp eq i32 %0, 1
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV22CatmullClarkSubdivider, i64 16), ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN22CatmullClarkSubdivider9SubdivideEP6aiMeshRS1_jb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull %2, i32 noundef %3, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN22CatmullClarkSubdivider9SubdivideEPP6aiMeshmS2_jb(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not293 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %5, label %.preheader, label %.preheader178

.preheader178:                                    ; preds = %bb.b
  br i1 %.not293, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit87, label %.lr.ph286

.preheader:                                       ; preds = %bb.b
  br i1 %.not293, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit87, label %.lr.ph288.preheader

.lr.ph288.preheader:                              ; preds = %.preheader
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph288.preheader468, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph288.preheader
  %i.a = shl i64 %2, 3                            ; 2 uses
  %i.b = getelementptr i8, ptr %3, i64 %i.a
  %i.c = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %3, %i.c
  %bound1 = icmp ult ptr %1, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph288.preheader468, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.d, align 8, !alias.scope !16
  %wide.load467 = load <2 x ptr>, ptr %i.e, align 8, !alias.scope !16
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x ptr> %wide.load, ptr %i.f, align 8, !alias.scope !17, !noalias !16
  store <2 x ptr> %wide.load467, ptr %i.g, align 8, !alias.scope !17, !noalias !16
  store <2 x ptr> splat (ptr null), ptr %i.d, align 8, !alias.scope !16
  store <2 x ptr> splat (ptr null), ptr %i.e, align 8, !alias.scope !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit87, label %.lr.ph288.preheader468

.lr.ph288.preheader468:                           ; preds = %vector.memcheck, %.lr.ph288.preheader, %middle.block
  %.054287.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph288.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph288.prol.loopexit, label %.lr.ph288.prol

.lr.ph288.prol:                                   ; preds = %.lr.ph288.preheader468, %.lr.ph288.prol
  %.054287.prol = phi i64 [ %i.l, %.lr.ph288.prol ], [ %.054287.ph, %.lr.ph288.preheader468 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph288.prol ], [ 0, %.lr.ph288.preheader468 ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.054287.prol ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.054287.prol
  store ptr %i.j, ptr %i.k, align 8
  store ptr null, ptr %i.i, align 8
  %i.l = add nuw i64 %.054287.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph288.prol.loopexit, label %.lr.ph288.prol, !llvm.loop !10

.lr.ph288.prol.loopexit:                          ; preds = %.lr.ph288.prol, %.lr.ph288.preheader468
  %.054287.unr = phi i64 [ %.054287.ph, %.lr.ph288.preheader468 ], [ %i.l, %.lr.ph288.prol ]
  %i.m = sub i64 %.054287.ph, %2
  %i.n = icmp ugt i64 %i.m, -4
  br i1 %i.n, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit87, label %.lr.ph288

.lr.ph288:                                        ; preds = %.lr.ph288.prol.loopexit, %.lr.ph288
  %.054287 = phi i64 [ %i.ad, %.lr.ph288 ], [ %.054287.unr, %.lr.ph288.prol.loopexit ] ; 6 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.054287 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.054287
  store ptr %i.p, ptr %i.q, align 8
  store ptr null, ptr %i.o, align 8
  %i.r = add nuw i64 %.054287, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.r
  store ptr %i.t, ptr %i.u, align 8
  store ptr null, ptr %i.s, align 8
  %i.v = add nuw i64 %.054287, 2                  ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.v
  store ptr %i.x, ptr %i.y, align 8
  store ptr null, ptr %i.w, align 8
  %i.z = add nuw i64 %.054287, 3                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.z
  store ptr %i.ab, ptr %i.ac, align 8
  store ptr null, ptr %i.aa, align 8
  %i.ad = add nuw i64 %.054287, 4                 ; 2 uses
  %exitcond340.not.3 = icmp eq i64 %i.ad, %2
  br i1 %exitcond340.not.3, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit87, label %.lr.ph288, !llvm.loop !11

.lr.ph286:                                        ; preds = %.preheader178, %.lr.ph286
  %.053285 = phi i64 [ %i.ah, %.lr.ph286 ], [ 0, %.preheader178 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.053285
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.053285
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void @_ZN6Assimp13SceneCombiner4CopyEPP6aiMeshPKS1_(ptr noundef %i.ae, ptr noundef %i.ag)
  %i.ah = add nuw i64 %.053285, 1                 ; 2 uses
  %exitcond339.not = icmp eq i64 %i.ah, %2
  br i1 %exitcond339.not, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit87, label %.lr.ph286, !llvm.loop !12

bb.c:                                             ; preds = %bb.a
  %i.ai = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #19
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not176.not = icmp eq i64 %2, 0
  br i1 %.not176.not, label %._crit_edge.thread, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.aj = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #18
          to label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i64 unwind label %bb.f ; 5 uses

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i64: ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %2 ; 3 uses
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #18
          to label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i unwind label %bb.f ; 4 uses

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %2 ; 2 uses
  %i.ao = shl nuw nsw i64 %2, 2
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #18
          to label %.lr.ph.preheader unwind label %bb.f ; 3 uses

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ar = icmp eq ptr %.sroa.0131.2, %.sroa.14.1
  br i1 %i.ar, label %._crit_edge.thread, label %bb.ac

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i64, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i, %bb.d, %bb.ac, %bb.ab, %._crit_edge.thread
  %.sroa.0131.1 = phi ptr [ null, %bb.d ], [ null, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i ], [ %i.ak, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i64 ], [ %.sroa.0131.0.lcssa369, %bb.ab ], [ %.sroa.0131.0.lcssa369, %._crit_edge.thread ], [ %.sroa.0131.2, %bb.ac ], [ %i.ak, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %.sroa.23.1 = phi ptr [ null, %bb.d ], [ null, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i ], [ %i.al, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i64 ], [ %.sroa.23.0.lcssa370, %bb.ab ], [ %.sroa.23.0.lcssa370, %._crit_edge.thread ], [ %.sroa.23.2, %bb.ac ], [ %i.al, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %.sroa.0115.1 = phi ptr [ null, %bb.d ], [ null, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i64 ], [ %.sroa.0115.0.lcssa372, %bb.ab ], [ %.sroa.0115.0.lcssa372, %._crit_edge.thread ], [ %.sroa.0115.3, %bb.ac ], [ %i.am, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %.sroa.20.1 = phi ptr [ null, %bb.d ], [ null, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i64 ], [ %.sroa.20.0.lcssa374, %bb.ab ], [ %.sroa.20.0.lcssa374, %._crit_edge.thread ], [ %.sroa.20.3, %bb.ac ], [ %i.an, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %.sroa.0.1 = phi ptr [ null, %bb.d ], [ null, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i64 ], [ %.sroa.0.0.lcssa376, %bb.ab ], [ %.sroa.0.0.lcssa376, %._crit_edge.thread ], [ %.sroa.0.2, %bb.ac ], [ null, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %.sroa.21.1 = phi ptr [ null, %bb.d ], [ null, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i64 ], [ %.sroa.21.0.lcssa378, %bb.ab ], [ %.sroa.21.0.lcssa378, %._crit_edge.thread ], [ %.sroa.21.2, %bb.ac ], [ null, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %.049272 = phi i64 [ %i.cs, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.21.0271 = phi ptr [ %.sroa.21.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %i.aq, %.lr.ph.preheader ] ; 11 uses
  %.sroa.13.0270 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %i.ap, %.lr.ph.preheader ] ; 5 uses
  %.sroa.0.0269 = phi ptr [ %.sroa.0.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %i.ap, %.lr.ph.preheader ] ; 13 uses
  %.sroa.20.0268 = phi ptr [ %.sroa.20.3, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %i.an, %.lr.ph.preheader ] ; 10 uses
  %.sroa.13122.0267 = phi ptr [ %.sroa.13122.1, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %i.am, %.lr.ph.preheader ] ; 5 uses
  %.sroa.0115.0266 = phi ptr [ %.sroa.0115.3, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %i.am, %.lr.ph.preheader ] ; 12 uses
  %.sroa.23.0265 = phi ptr [ %.sroa.23.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %i.al, %.lr.ph.preheader ] ; 9 uses
  %.sroa.14.0264 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %i.ak, %.lr.ph.preheader ] ; 5 uses
  %.sroa.0131.0263 = phi ptr [ %.sroa.0131.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %i.ak, %.lr.ph.preheader ] ; 11 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.049272 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 5 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = add i32 %i.av, -1
  %or.cond = icmp ult i32 %i.aw, 3
  br i1 %or.cond, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.ax = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.h unwind label %.loopexit183

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ax, ptr noundef nonnull @.str)
          to label %bb.i unwind label %.loopexit183

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.049272 ; 2 uses
  br i1 %5, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.au, ptr %i.ay, align 8
  store ptr null, ptr %i.at, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

.loopexit183:                                     ; preds = %bb.g, %bb.h, %bb.k, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.0115.2.ph = phi ptr [ %.sroa.0115.7, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0115.0266, %bb.g ], [ %.sroa.0115.0266, %bb.h ], [ %.sroa.0115.0266, %bb.k ]
  %.sroa.20.2.ph = phi ptr [ %.sroa.20.7, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.20.0268, %bb.g ], [ %.sroa.20.0268, %bb.h ], [ %.sroa.20.0268, %bb.k ]
  %lpad.loopexit185 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp184:                            ; preds = %bb.t
  %lpad.loopexit.split-lp186 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.k:                                             ; preds = %bb.i
  invoke void @_ZN6Assimp13SceneCombiner4CopyEPP6aiMeshPKS1_(ptr noundef %i.ay, ptr noundef nonnull %i.au)
          to label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit unwind label %.loopexit183

bb.l:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq ptr %.sroa.13122.0267, %.sroa.20.0268
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %.sroa.13122.0267, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit

bb.n:                                             ; preds = %bb.l
  %i.az = ptrtoint ptr %.sroa.20.0268 to i64
  %i.ba = ptrtoint ptr %.sroa.0115.0266 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.o, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc74 unwind label %.loopexit.split-lp

.noexc74:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bd = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #18
          to label %.noexc75 unwind label %.loopexit182 ; 4 uses

.noexc75:                                         ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bb ; 2 uses
  store ptr null, ptr %i.bk, align 8
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %bb.p, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.p:                                             ; preds = %.noexc75
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr align 8 %.sroa.0115.0266, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.p, %.noexc75
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0115.0266, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0115.0266, i64 noundef %i.bb) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.m
  %.sroa.0115.7 = phi ptr [ %i.bj, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0115.0266, %bb.m ] ; 6 uses
  %.pn = phi ptr [ %i.bk, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.13122.0267, %bb.m ]
  %.sroa.20.7 = phi ptr [ %i.bm, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.20.0268, %bb.m ] ; 6 uses
  %.sroa.13122.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.14.0264, %.sroa.23.0265
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit
  store ptr %i.au, ptr %.sroa.14.0264, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.s:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit
  %i.bn = ptrtoint ptr %.sroa.23.0265 to i64
  %i.bo = ptrtoint ptr %.sroa.0131.0263 to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 6 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.t, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc76 unwind label %.loopexit.split-lp184

.noexc76:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bv, 0
end_hunk_0
begin_hunk_1_@_ZN22CatmullClarkSubdivider9SubdivideEPP6aiMeshmS2_jb:bb.a
  %.sroa.0131.6 = phi ptr [ %i.bx, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0131.0263, %bb.r ] ; 4 uses
  %.pn177 = phi ptr [ %i.by, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.14.0264, %bb.r ]
  %.sroa.23.6 = phi ptr [ %i.ca, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.23.0265, %bb.r ] ; 4 uses
  %.sroa.14.3 = getelementptr inbounds nuw i8, ptr %.pn177, i64 8 ; 2 uses
  %i.cb = trunc i64 %.049272 to i32               ; 2 uses
  %.not.i.i78 = icmp eq ptr %.sroa.13.0270, %.sroa.21.0271
  br i1 %.not.i.i78, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  store i32 %i.cb, ptr %.sroa.13.0270, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.13.0270, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.x:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  %i.cd = ptrtoint ptr %.sroa.21.0271 to i64
  %i.ce = ptrtoint ptr %.sroa.0.0269 to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 6 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775804
  br i1 %i.cg, label %bb.y, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc82 unwind label %.loopexit.split-lp189

.noexc82:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.x
  %i.ch = ashr exact i64 %i.cf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i79 = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i.i79, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 2305843009213693951)
  %i.cl = select i1 %i.cj, i64 2305843009213693951, i64 %i.ck ; 3 uses
  %.not.i.i.i.i80 = icmp ne i64 %i.cl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i80)
  %i.cm = shl nuw nsw i64 %i.cl, 2
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #18
          to label %.noexc83 unwind label %.loopexit188 ; 4 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.cf ; 2 uses
  store i32 %i.cb, ptr %i.co, align 4
  %i.cp = icmp sgt i64 %i.cf, 0
  br i1 %i.cp, label %bb.z, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.z:                                             ; preds = %.noexc83
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr align 4 %.sroa.0.0269, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.z, %.noexc83
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %.not.i17.i.i.i81 = icmp eq ptr %.sroa.0.0269, null
  br i1 %.not.i17.i.i.i81, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0269, i64 noundef %i.cf) #20
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.aa, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cl
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.w, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.j, %bb.k
  %.sroa.0131.2 = phi ptr [ %.sroa.0131.0263, %bb.j ], [ %.sroa.0131.0263, %bb.k ], [ %.sroa.0131.6, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.0131.6, %bb.w ] ; 8 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.0264, %bb.j ], [ %.sroa.14.0264, %bb.k ], [ %.sroa.14.3, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.14.3, %bb.w ] ; 3 uses
  %.sroa.23.2 = phi ptr [ %.sroa.23.0265, %bb.j ], [ %.sroa.23.0265, %bb.k ], [ %.sroa.23.6, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.23.6, %bb.w ] ; 5 uses
  %.sroa.0115.3 = phi ptr [ %.sroa.0115.0266, %bb.j ], [ %.sroa.0115.0266, %bb.k ], [ %.sroa.0115.7, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.0115.7, %bb.w ] ; 7 uses
  %.sroa.13122.1 = phi ptr [ %.sroa.13122.0267, %bb.j ], [ %.sroa.13122.0267, %bb.k ], [ %.sroa.13122.3, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.13122.3, %bb.w ]
  %.sroa.20.3 = phi ptr [ %.sroa.20.0268, %bb.j ], [ %.sroa.20.0268, %bb.k ], [ %.sroa.20.7, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.20.7, %bb.w ] ; 5 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0269, %bb.j ], [ %.sroa.0.0269, %bb.k ], [ %i.cn, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.0.0269, %bb.w ] ; 8 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0270, %bb.j ], [ %.sroa.13.0270, %bb.k ], [ %i.cq, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.cc, %bb.w ] ; 3 uses
  %.sroa.21.2 = phi ptr [ %.sroa.21.0271, %bb.j ], [ %.sroa.21.0271, %bb.k ], [ %i.cr, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.21.0271, %bb.w ] ; 5 uses
  %i.cs = add nuw i64 %.049272, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

.loopexit182:                                     ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit188:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit190 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp189:                            ; preds = %bb.y
  %lpad.loopexit.split-lp191 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %.sroa.21.0.lcssa378 = phi ptr [ %.sroa.21.2, %._crit_edge ], [ null, %bb.e ] ; 3 uses
  %.sroa.0.0.lcssa376 = phi ptr [ %.sroa.0.2, %._crit_edge ], [ null, %bb.e ] ; 3 uses
  %.sroa.20.0.lcssa374 = phi ptr [ %.sroa.20.3, %._crit_edge ], [ null, %bb.e ] ; 3 uses
  %.sroa.0115.0.lcssa372 = phi ptr [ %.sroa.0115.3, %._crit_edge ], [ null, %bb.e ] ; 3 uses
  %.sroa.23.0.lcssa370 = phi ptr [ %.sroa.23.2, %._crit_edge ], [ null, %bb.e ] ; 3 uses
  %.sroa.0131.0.lcssa369 = phi ptr [ %.sroa.0131.2, %._crit_edge ], [ null, %bb.e ] ; 3 uses
  %i.ct = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ab unwind label %bb.f

bb.ab:                                            ; preds = %._crit_edge.thread
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ct, ptr noundef nonnull @.str.1)
          to label %.loopexit unwind label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.cu = ptrtoint ptr %.sroa.14.1 to i64
  %i.cv = ptrtoint ptr %.sroa.0131.2 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 3
  invoke void @_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.sroa.0131.2, i64 noundef %i.cx, ptr noundef nonnull %.sroa.0115.3, i32 noundef %4)
          to label %.preheader181 unwind label %bb.f

.preheader181:                                    ; preds = %bb.ac
  %i.cy = ptrtoint ptr %.sroa.13.1 to i64
  %i.cz = ptrtoint ptr %.sroa.0.2 to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 2
  %.not291 = icmp eq ptr %.sroa.13.1, %.sroa.0.2
  br i1 %.not291, label %._crit_edge282, label %.lr.ph281

._crit_edge282:                                   ; preds = %.lr.ph281, %.preheader181
  br i1 %5, label %.lr.ph284, label %.loopexit

.lr.ph281:                                        ; preds = %.preheader181, %.lr.ph281
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph281 ], [ 0, %.preheader181 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0115.3, i64 %indvars.iv
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.2, i64 %indvars.iv
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dg
  store ptr %i.dd, ptr %i.dh, align 8
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.di = and i64 %indvars.iv.next, 4294967295
  %i.dj = icmp ugt i64 %i.db, %i.di
  br i1 %i.dj, label %.lr.ph281, label %._crit_edge282, !llvm.loop !14

.lr.ph284:                                        ; preds = %._crit_edge282, %bb.ae
  %.0283 = phi i64 [ %i.dn, %bb.ae ], [ 0, %._crit_edge282 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0283
  %i.dl = load ptr, ptr %i.dk, align 8            ; 3 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph284
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.dl) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef 1320) #20
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph284, %bb.ad
  %i.dn = add nuw i64 %.0283, 1                   ; 2 uses
  %exitcond338.not = icmp eq i64 %i.dn, %2
  br i1 %exitcond338.not, label %.loopexit, label %.lr.ph284, !llvm.loop !15

.loopexit:                                        ; preds = %bb.ae, %._crit_edge282, %bb.ab
  %.sroa.21.0.lcssa379 = phi ptr [ %.sroa.21.0.lcssa378, %bb.ab ], [ %.sroa.21.2, %._crit_edge282 ], [ %.sroa.21.2, %bb.ae ]
  %.sroa.0.0.lcssa377 = phi ptr [ %.sroa.0.0.lcssa376, %bb.ab ], [ %.sroa.0.2, %._crit_edge282 ], [ %.sroa.0.2, %bb.ae ] ; 3 uses
  %.sroa.20.0.lcssa375 = phi ptr [ %.sroa.20.0.lcssa374, %bb.ab ], [ %.sroa.20.3, %._crit_edge282 ], [ %.sroa.20.3, %bb.ae ]
  %.sroa.0115.0.lcssa373 = phi ptr [ %.sroa.0115.0.lcssa372, %bb.ab ], [ %.sroa.0115.3, %._crit_edge282 ], [ %.sroa.0115.3, %bb.ae ] ; 3 uses
  %.sroa.23.0.lcssa371 = phi ptr [ %.sroa.23.0.lcssa370, %bb.ab ], [ %.sroa.23.2, %._crit_edge282 ], [ %.sroa.23.2, %bb.ae ]
  %.sroa.0131.0.lcssa368 = phi ptr [ %.sroa.0131.0.lcssa369, %bb.ab ], [ %.sroa.0131.2, %._crit_edge282 ], [ %.sroa.0131.2, %bb.ae ] ; 3 uses
  %.not.i.i.i84 = icmp eq ptr %.sroa.0.0.lcssa377, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %.loopexit
  %i.do = ptrtoint ptr %.sroa.21.0.lcssa379 to i64
  %i.dp = ptrtoint ptr %.sroa.0.0.lcssa377 to i64
  %i.dq = sub i64 %i.do, %i.dp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa377, i64 noundef %i.dq) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.loopexit, %bb.af
  %.not.i.i.i85 = icmp eq ptr %.sroa.0115.0.lcssa373, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.dr = ptrtoint ptr %.sroa.20.0.lcssa375 to i64
  %i.ds = ptrtoint ptr %.sroa.0115.0.lcssa373 to i64
  %i.dt = sub i64 %i.dr, %i.ds
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0115.0.lcssa373, i64 noundef %i.dt) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ag
  %.not.i.i.i86 = icmp eq ptr %.sroa.0131.0.lcssa368, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit87, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit
  %i.du = ptrtoint ptr %.sroa.23.0.lcssa371 to i64
  %i.dv = ptrtoint ptr %.sroa.0131.0.lcssa368 to i64
  %i.dw = sub i64 %i.du, %i.dv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0131.0.lcssa368, i64 noundef %i.dw) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit87

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit87:         ; preds = %.lr.ph286, %.lr.ph288.prol.loopexit, %.lr.ph288, %middle.block, %.preheader178, %.preheader, %bb.ah, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit
  ret void

bb.ai:                                            ; preds = %.loopexit188, %.loopexit.split-lp189, %.loopexit182, %.loopexit.split-lp, %.loopexit183, %.loopexit.split-lp184, %bb.f
  %.sroa.0131.4 = phi ptr [ %.sroa.0131.1, %bb.f ], [ %.sroa.0131.0263, %.loopexit.split-lp ], [ %.sroa.0131.0263, %.loopexit.split-lp184 ], [ %.sroa.0131.0263, %.loopexit183 ], [ %.sroa.0131.0263, %.loopexit182 ], [ %.sroa.0131.6, %.loopexit188 ], [ %.sroa.0131.6, %.loopexit.split-lp189 ] ; 3 uses
  %.sroa.23.4 = phi ptr [ %.sroa.23.1, %bb.f ], [ %.sroa.23.0265, %.loopexit.split-lp ], [ %.sroa.23.0265, %.loopexit.split-lp184 ], [ %.sroa.23.0265, %.loopexit183 ], [ %.sroa.23.0265, %.loopexit182 ], [ %.sroa.23.6, %.loopexit188 ], [ %.sroa.23.6, %.loopexit.split-lp189 ]
  %.sroa.0115.5 = phi ptr [ %.sroa.0115.1, %bb.f ], [ %.sroa.0115.0266, %.loopexit.split-lp ], [ %.sroa.0115.7, %.loopexit.split-lp184 ], [ %.sroa.0115.2.ph, %.loopexit183 ], [ %.sroa.0115.0266, %.loopexit182 ], [ %.sroa.0115.7, %.loopexit188 ], [ %.sroa.0115.7, %.loopexit.split-lp189 ] ; 3 uses
  %.sroa.20.5 = phi ptr [ %.sroa.20.1, %bb.f ], [ %.sroa.20.0268, %.loopexit.split-lp ], [ %.sroa.20.7, %.loopexit.split-lp184 ], [ %.sroa.20.2.ph, %.loopexit183 ], [ %.sroa.20.0268, %.loopexit182 ], [ %.sroa.20.7, %.loopexit188 ], [ %.sroa.20.7, %.loopexit.split-lp189 ]
  %.sroa.0.3 = phi ptr [ %.sroa.0.1, %bb.f ], [ %.sroa.0.0269, %.loopexit.split-lp ], [ %.sroa.0.0269, %.loopexit.split-lp184 ], [ %.sroa.0.0269, %.loopexit183 ], [ %.sroa.0.0269, %.loopexit182 ], [ %.sroa.0.0269, %.loopexit188 ], [ %.sroa.0.0269, %.loopexit.split-lp189 ] ; 3 uses
  %.sroa.21.3 = phi ptr [ %.sroa.21.1, %bb.f ], [ %.sroa.21.0271, %.loopexit.split-lp ], [ %.sroa.21.0271, %.loopexit.split-lp184 ], [ %.sroa.21.0271, %.loopexit183 ], [ %.sroa.21.0271, %.loopexit182 ], [ %.sroa.21.0271, %.loopexit188 ], [ %.sroa.21.0271, %.loopexit.split-lp189 ]
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.f ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp186, %.loopexit.split-lp184 ], [ %lpad.loopexit185, %.loopexit183 ], [ %lpad.loopexit, %.loopexit182 ], [ %lpad.loopexit190, %.loopexit188 ], [ %lpad.loopexit.split-lp191, %.loopexit.split-lp189 ]
  %.not.i.i.i88 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIjSaIjEED2Ev.exit89, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dx = ptrtoint ptr %.sroa.21.3 to i64
  %i.dy = ptrtoint ptr %.sroa.0.3 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.dz) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit89

_ZNSt6vectorIjSaIjEED2Ev.exit89:                  ; preds = %bb.ai, %bb.aj
  %.not.i.i.i90 = icmp eq ptr %.sroa.0115.5, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit91, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit89
  %i.ea = ptrtoint ptr %.sroa.20.5 to i64
  %i.eb = ptrtoint ptr %.sroa.0115.5 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0115.5, i64 noundef %i.ec) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit91

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit91:         ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit89, %bb.ak
  %.not.i.i.i92 = icmp eq ptr %.sroa.0131.4, null
  br i1 %.not.i.i.i92, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit93, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit91
  %i.ed = ptrtoint ptr %.sroa.23.4 to i64
  %i.ee = ptrtoint ptr %.sroa.0131.4 to i64
  %i.ef = sub i64 %i.ed, %i.ee
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0131.4, i64 noundef %i.ef) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit93

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit93:         ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit91, %bb.al
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN6Assimp13SceneCombiner4CopyEPP6aiMeshPKS1_(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #5

declare void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #5

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Assimp::Vertex", align 4   ; 4 uses
  %6 = alloca %"class.std::vector.0", align 8     ; 20 uses
  %7 = alloca %"class.Assimp::SpatialSort", align 8 ; 11 uses
  %8 = alloca %"struct.Assimp::Vertex", align 8   ; 29 uses
  %9 = alloca %"class.std::unordered_map", align 8 ; 24 uses
  %10 = alloca %"struct.Assimp::Vertex", align 8  ; 35 uses
  %11 = alloca %"struct.Assimp::Vertex", align 8  ; 35 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"struct.Assimp::Vertex", align 4  ; 5 uses
  %13 = alloca %"struct.Assimp::Vertex", align 8  ; 37 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.fc, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN6Assimp11SpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(49) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp ne i64 %2, 0               ; 7 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.d = shl nuw nsw i64 %2, 3                    ; 2 uses
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18
          to label %.lr.ph.preheader unwind label %bb.f ; 5 uses

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.d, i1 false)
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.h = extractelement <2 x i32> %i.u, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sink.i3987 = phi i64 [ 0, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.g, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.01962.03985 = phi ptr [ null, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.e, %._crit_edge.loopexit ] ; 12 uses
  %.02242.lcssa = phi i32 [ 0, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.h, %._crit_edge.loopexit ] ; 2 uses
  invoke void @_ZN6Assimp11SpatialSort8FinalizeEv(ptr noundef nonnull align 8 dereferenceable(49) %7)
          to label %bb.h unwind label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6Assimp11SpatialSortD2Ev.exit563

bb.f:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit561

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.03243025 = phi i64 [ %i.v, %bb.g ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.k = phi <2 x i32> [ %i.u, %bb.g ], [ zeroinitializer, %.lr.ph.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03243025
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  invoke void @_ZN6Assimp11SpatialSort6AppendEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 dereferenceable(49) %7, ptr noundef %i.o, i32 noundef %i.q, i32 noundef 12, i1 noundef zeroext false)
          to label %bb.g unwind label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559.thread

bb.g:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.03243025
  store <2 x i32> %i.k, ptr %i.r, align 4
  %i.s = load <2 x i32>, ptr %i.p, align 4
  %i.t = shufflevector <2 x i32> %i.s, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.u = add <2 x i32> %i.t, %i.k                 ; 2 uses
  %i.v = add nuw i64 %.03243025, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !20

_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559.thread: ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.h:                                             ; preds = %._crit_edge
  %i.x = invoke noundef float @_ZN6Assimp22ComputePositionEpsilonEPKPK6aiMeshm(ptr noundef %1, i64 noundef %2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = invoke noundef i32 @_ZNK6Assimp11SpatialSort20GenerateMappingTableERSt6vectorIjSaIjEEf(ptr noundef nonnull align 8 dereferenceable(49) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, float noundef %i.x)
          to label %bb.j unwind label %bb.l       ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.z = zext i32 %.02242.lcssa to i64            ; 2 uses
  %.not.i.i.i.i415 = icmp eq i32 %.02242.lcssa, 0
  br i1 %.not.i.i.i.i415, label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i416

.lr.ph.preheader.i.i.i.i.i416:                    ; preds = %bb.j
  %i.aa = mul nuw nsw i64 %i.z, 272               ; 2 uses
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #18
          to label %.noexc420 unwind label %bb.m  ; 3 uses

.noexc420:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i416
  %i.ac = getelementptr inbounds nuw [272 x i8], ptr %i.ab, i64 %i.z
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 0, i64 %i.aa, i1 false)
  %i.ad = ptrtoint ptr %i.ac to i64
  br label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EEC2EmRKS2_.exit

_ZNSt6vectorIN6Assimp6VertexESaIS1_EEC2EmRKS2_.exit: ; preds = %.noexc420, %bb.j
  %.sroa.01946.0 = phi ptr [ %i.ab, %.noexc420 ], [ null, %bb.j ] ; 10 uses
  %.sink.i418 = phi i64 [ %i.ad, %.noexc420 ], [ 0, %bb.j ] ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph3042, label %._crit_edge3043

.lr.ph3042:                                       ; preds = %_ZNSt6vectorIN6Assimp6VertexESaIS1_EEC2EmRKS2_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 108
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 116
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 132
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 140
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 152
end_hunk_1
