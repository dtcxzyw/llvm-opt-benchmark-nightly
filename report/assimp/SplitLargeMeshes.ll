inline.NumInlined: 641
inline.NumDeleted: 336
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<aiMesh *, unsigned int>, std::allocator<std::pair<aiMesh *, unsigned int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<aiMesh *, unsigned int>, std::allocator<std::pair<aiMesh *, unsigned int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<aiMesh *, unsigned int>, std::allocator<std::pair<aiMesh *, unsigned int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<aiMesh *, unsigned int>, std::allocator<std::pair<aiMesh *, unsigned int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::__detail::_AllocNode" = type { ptr }
%"class.std::unordered_set" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<aiFace, std::allocator<aiFace>>::_Vector_impl" }
%"struct.std::_Vector_base<aiFace, std::allocator<aiFace>>::_Vector_impl" = type { %"struct.std::_Vector_base<aiFace, std::allocator<aiFace>>::_Vector_impl_data" }
%"struct.std::_Vector_base<aiFace, std::allocator<aiFace>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.aiString = type { i32, [1024 x i8] }

$_ZN6aiMeshD2Ev = comdat any

$_ZNSt6vectorI6aiFaceSaIS0_EE7reserveEm = comdat any

$_ZNSt6vectorI6aiFaceSaIS0_EED2Ev = comdat any

$_ZN6Assimp32SplitLargeMeshesProcess_TriangleD0Ev = comdat any

$_ZN6Assimp11BaseProcessD2Ev = comdat any

$_ZN6Assimp30SplitLargeMeshesProcess_VertexD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN10aiAnimMeshD2Ev = comdat any

$_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_ = comdat any

$_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm = comdat any

$_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj = comdat any

$_ZNSt6vectorI6aiFaceSaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_ = comdat any

$_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_ = comdat any

$_ZNSt6vectorI6aiFaceSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

@_ZTVN6Assimp32SplitLargeMeshesProcess_TriangleE = unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6Assimp32SplitLargeMeshesProcess_TriangleE, ptr @_ZN6Assimp11BaseProcessD2Ev, ptr @_ZN6Assimp32SplitLargeMeshesProcess_TriangleD0Ev, ptr @_ZNK6Assimp32SplitLargeMeshesProcess_Triangle8IsActiveEj, ptr @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv, ptr @_ZN6Assimp32SplitLargeMeshesProcess_Triangle15SetupPropertiesEPKNS_8ImporterE, ptr @_ZN6Assimp32SplitLargeMeshesProcess_Triangle7ExecuteEP7aiScene] }, align 8
@.str = private unnamed_addr constant [39 x i8] c"SplitLargeMeshesProcess_Triangle begin\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"SplitLargeMeshesProcess_Triangle finished. There was nothing to do\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"SplitLargeMeshesProcess_Triangle finished. Meshes have been split\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"PP_SLM_TRIANGLE_LIMIT\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"UpdateNode skipped, nullptr detected.\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Mesh exceeds the triangle limit. It will be split ...\00", align 1
@_ZTVN6Assimp30SplitLargeMeshesProcess_VertexE = unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6Assimp30SplitLargeMeshesProcess_VertexE, ptr @_ZN6Assimp11BaseProcessD2Ev, ptr @_ZN6Assimp30SplitLargeMeshesProcess_VertexD0Ev, ptr @_ZNK6Assimp30SplitLargeMeshesProcess_Vertex8IsActiveEj, ptr @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv, ptr @_ZN6Assimp30SplitLargeMeshesProcess_Vertex15SetupPropertiesEPKNS_8ImporterE, ptr @_ZN6Assimp30SplitLargeMeshesProcess_Vertex7ExecuteEP7aiScene] }, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"SplitLargeMeshesProcess_Vertex begin\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"SplitLargeMeshesProcess_Vertex finished. Meshes have been split\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"SplitLargeMeshesProcess_Vertex finished. There was nothing to do\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"PP_SLM_VERTEX_LIMIT\00", align 1
@_ZTIN6Assimp32SplitLargeMeshesProcess_TriangleE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp32SplitLargeMeshesProcess_TriangleE, ptr @_ZTIN6Assimp11BaseProcessE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp32SplitLargeMeshesProcess_TriangleE = constant [44 x i8] c"N6Assimp32SplitLargeMeshesProcess_TriangleE\00", align 1
@_ZTIN6Assimp11BaseProcessE = external constant ptr
@_ZTIN6Assimp30SplitLargeMeshesProcess_VertexE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp30SplitLargeMeshesProcess_VertexE, ptr @_ZTIN6Assimp11BaseProcessE }, align 8
@_ZTSN6Assimp30SplitLargeMeshesProcess_VertexE = constant [42 x i8] c"N6Assimp30SplitLargeMeshesProcess_VertexE\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@switch.table._ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 4], align 4

@_ZN6Assimp32SplitLargeMeshesProcess_TriangleC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6Assimp32SplitLargeMeshesProcess_TriangleC2Ev
@_ZN6Assimp30SplitLargeMeshesProcess_VertexC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6Assimp30SplitLargeMeshesProcess_VertexC2Ev

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6Assimp32SplitLargeMeshesProcess_TriangleC2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp32SplitLargeMeshesProcess_TriangleE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1000000, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK6Assimp32SplitLargeMeshesProcess_Triangle8IsActiveEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = and i32 %1, 128
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle7ExecuteEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, -1
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull @.str)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.pre40 = load ptr, ptr %2, align 8
  %i.i = zext i32 %i.u to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit
  %i.j = phi ptr [ %.pre40, %._crit_edge.loopexit ], [ null, %bb.b ] ; 6 uses
  %i.k = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.b ] ; 2 uses
  %.lcssa = phi i64 [ %i.i, %._crit_edge.loopexit ], [ 0, %bb.b ]
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = ashr exact i64 %i.n, 4                   ; 4 uses
  %i.p = icmp eq i64 %i.o, %.lcssa
  br i1 %i.p, label %bb.f, label %bb.i

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = trunc nuw i64 %indvars.iv to i32
  invoke void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %i.t, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %i.f, align 8              ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !3

bb.e:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.pre41 = load ptr, ptr %2, align 8
  br label %bb.r

bb.f:                                             ; preds = %._crit_edge
  %i.y = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull @.str.1)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.m, %._crit_edge36, %bb.k, %bb.g, %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %bb.g, %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = trunc i64 %i.o to i32
  store i32 %i.ad, ptr %i.f, align 8
  %i.ae = icmp ugt i64 %i.o, 2305843009213693951
  %i.af = ashr exact i64 %i.n, 1
  %i.ag = select i1 %i.ae, i64 -1, i64 %i.af
  %i.ah = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #17
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  store ptr %i.ah, ptr %i.aa, align 8
  %.not37 = icmp eq ptr %i.k, %i.j
  br i1 %.not37, label %._crit_edge36, label %.lr.ph35

._crit_edge36:                                    ; preds = %.lr.ph35, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle10UpdateNodeEP6aiNodeRKSt6vectorISt4pairIP6aiMeshjESaIS7_EE(ptr noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.m unwind label %bb.h

.lr.ph35:                                         ; preds = %bb.l, %.lr.ph35
  %i.ak = phi i64 [ %i.aq, %.lr.ph35 ], [ 0, %bb.l ] ; 2 uses
  %.033 = phi i32 [ %i.ap, %.lr.ph35 ], [ 0, %bb.l ]
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.aa, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ak
  store ptr %i.am, ptr %i.ao, align 8
  %i.ap = add i32 %.033, 1                        ; 2 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = icmp ugt i64 %i.o, %i.aq
  br i1 %i.ar, label %.lr.ph35, label %._crit_edge36, !llvm.loop !5

bb.m:                                             ; preds = %._crit_edge36
  %i.as = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.as, ptr noundef nonnull @.str.2)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.aw) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.h, %bb.e
  %i.ax = phi ptr [ %.pre41, %bb.e ], [ %i.j, %bb.h ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.z, %bb.h ]
  %.not.i.i.i27 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit28, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit28

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit28: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

end_hunk_0
begin_hunk_1_@_ZN6Assimp32SplitLargeMeshesProcess_Triangle9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE:bb.a
.loopexit272.5:                                   ; preds = %.loopexit272.loopexit.5, %bb.y
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store ptr %i.jg, ptr %i.jh, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.6:            ; preds = %.loopexit272.5, %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.ji = load ptr, ptr %i.av, align 8
  %.not.i149.6 = icmp ne ptr %i.ji, null
  %i.jj = select i1 %.not.i149.6, i1 %i.fh, i1 false
  br i1 %i.jj, label %bb.z, label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

bb.z:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.jk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.6, label %.loopexit272.loopexit.6

.loopexit272.loopexit.6:                          ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jk, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.6

.loopexit272.6:                                   ; preds = %.loopexit272.loopexit.6, %bb.z
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store ptr %i.jk, ptr %i.jl, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.7:            ; preds = %.loopexit272.6, %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.jm = load ptr, ptr %i.aw, align 8
  %.not.i149.7 = icmp ne ptr %i.jm, null
  %i.jn = select i1 %.not.i149.7, i1 %i.fh, i1 false
  br i1 %i.jn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.7
  %i.jo = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.7, label %.loopexit272.loopexit.7

.loopexit272.loopexit.7:                          ; preds = %bb.aa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jo, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.7

.loopexit272.7:                                   ; preds = %.loopexit272.loopexit.7, %bb.aa
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store ptr %i.jo, ptr %i.jp, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit272.7, %_ZNK6aiMesh15HasVertexColorsEj.exit.7
  %i.jq = load ptr, ptr %i.y, align 8
  %.not.i148 = icmp ne ptr %i.jq, null
  %i.jr = load i32, ptr %i.z, align 8             ; 2 uses
  %i.js = icmp ne i32 %i.jr, 0
  %i.jt = select i1 %.not.i148, i1 %i.js, i1 false
  br i1 %i.jt, label %._crit_edge315, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit

._crit_edge315:                                   ; preds = %bb.ab
  %i.ju = zext i32 %i.jr to i64
  %i.jv = shl nuw nsw i64 %i.ju, 3
  %i.jw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.jv) #17
  store ptr %i.jw, ptr %i.bb, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit:   ; preds = %._crit_edge315, %bb.ab
  br i1 %i.bu, label %._crit_edge329, label %.lr.ph328

.lr.ph328:                                        ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ax, i64 152
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ax, i64 168
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.km = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  br label %bb.ag

._crit_edge329:                                   ; preds = %._crit_edge324, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit
  %i.ko = load ptr, ptr %i.aa, align 8            ; 6 uses
  %i.kp = load ptr, ptr %i.ab, align 8
  %.not.i159 = icmp eq ptr %i.ko, %i.kp
  br i1 %.not.i159, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge329
  store ptr %i.ax, ptr %i.ko, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i32 %1, ptr %i.kq, align 8
  %i.kr = load ptr, ptr %i.aa, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store ptr %i.ks, ptr %i.aa, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

bb.ad:                                            ; preds = %._crit_edge329
  %i.kt = load ptr, ptr %3, align 8               ; 5 uses
  %i.ku = ptrtoint ptr %i.ko to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv                    ; 4 uses
  %i.kx = icmp eq i64 %i.kw, 9223372036854775792
  br i1 %i.kx, label %bb.ae, label %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.ky = ashr exact i64 %i.kw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i160 = tail call i64 @llvm.umax.i64(i64 %i.ky, i64 1)
  %i.kz = add nsw i64 %.sroa.speculated.i.i.i160, %i.ky ; 2 uses
  %i.la = icmp ult i64 %i.kz, %i.ky
  %i.lb = tail call i64 @llvm.umin.i64(i64 %i.kz, i64 576460752303423487)
  %i.lc = select i1 %i.la, i64 576460752303423487, i64 %i.lb ; 3 uses
  %.not.i.i.i161 = icmp ne i64 %i.lc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i161)
  %i.ld = shl nuw nsw i64 %i.lc, 4
  %i.le = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ld) #17 ; 5 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.kw ; 2 uses
  store ptr %i.ax, ptr %i.lf, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store i32 %1, ptr %i.lg, align 8
  %.not10.i.i.i.i.i162 = icmp eq ptr %i.kt, %i.ko
  br i1 %.not10.i.i.i.i.i162, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i163

.lr.ph.i.i.i.i.i163:                              ; preds = %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i163
  %.012.i.i.i.i.i164 = phi ptr [ %i.li, %.lr.ph.i.i.i.i.i163 ], [ %i.le, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i165 = phi ptr [ %i.lh, %.lr.ph.i.i.i.i.i163 ], [ %i.kt, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i164, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i165, i64 16, i1 false), !alias.scope !12
  %i.lh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i165, i64 16 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i164, i64 16 ; 2 uses
  %.not.i.i.i.i.i166 = icmp eq ptr %i.lh, %i.ko
  br i1 %.not.i.i.i.i.i166, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i163, !llvm.loop !16

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i163, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i167 = phi ptr [ %i.le, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.li, %.lr.ph.i.i.i.i.i163 ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i167, i64 16
  %.not.i34.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.kw) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.le, ptr %3, align 8
  store ptr %i.lj, ptr %i.aa, align 8
  %i.lk = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %i.lc
  store ptr %i.lk, ptr %i.ab, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit: ; preds = %bb.ac, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.ll = add nuw i32 %.0118330, 1                ; 2 uses
  %i.lm = icmp ult i32 %i.ll, %i.j
  %indvars.iv.next = add i32 %indvars.iv, %i.k
  br i1 %i.lm, label %bb.c, label %bb.bd, !llvm.loop !17

bb.ag:                                            ; preds = %.lr.ph328, %._crit_edge324
  %indvars.iv383 = phi i64 [ 0, %.lr.ph328 ], [ %indvars.iv.next384, %._crit_edge324 ] ; 5 uses
  %.0125326 = phi i32 [ 0, %.lr.ph328 ], [ %.1.lcssa, %._crit_edge324 ] ; 2 uses
  %i.ln = load ptr, ptr %i.cu, align 8
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %indvars.iv383
  store i32 3, ptr %i.lo, align 8
  %i.lp = trunc nuw i64 %indvars.iv383 to i32
  %i.lq = add i32 %i.cv, %i.lp
  %i.lr = load ptr, ptr %i.p, align 8
  %i.ls = zext i32 %i.lq to i64                   ; 2 uses
  %i.lt = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 8            ; 4 uses
  %i.lv = load ptr, ptr %i.cu, align 8
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %indvars.iv383
  store i32 %i.lu, ptr %i.lw, align 8
  %i.lx = load ptr, ptr %i.p, align 8
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.lx, i64 %i.ls
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = zext i32 %i.lu to i64                   ; 2 uses
  %i.mc = shl nuw nsw i64 %i.mb, 2
  %i.md = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.mc) #17 ; 2 uses
  %i.me = load ptr, ptr %i.cu, align 8
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %indvars.iv383
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store ptr %i.md, ptr %i.mg, align 8
  %i.mh = load i32, ptr %i.ax, align 8            ; 2 uses
  %switch.tableidx = add i32 %i.lu, -1            ; 2 uses
  %i.mi = icmp ult i32 %switch.tableidx, 3
  br i1 %i.mi, label %switch.lookup, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mj = or i32 %i.mh, 8
  store i32 %i.mj, ptr %i.ax, align 8
  %.not335 = icmp eq i32 %i.lu, 0
  br i1 %.not335, label %._crit_edge324, label %.lr.ph323.preheader

.lr.ph323.preheader:                              ; preds = %switch.lookup, %bb.ah
  br label %.lr.ph323

switch.lookup:                                    ; preds = %bb.ag
  %i.mk = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE, i64 %i.mk
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.ml = or i32 %i.mh, %switch.load
  store i32 %i.ml, ptr %i.ax, align 8
  br label %.lr.ph323.preheader

._crit_edge324:                                   ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread, %bb.ah
  %.1.lcssa = phi i32 [ %.0125326, %bb.ah ], [ %i.mr, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread ]
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1 ; 2 uses
  %i.mm = load i32, ptr %i.az, align 8
  %i.mn = zext i32 %i.mm to i64
  %i.mo = icmp samesign ult i64 %indvars.iv.next384, %i.mn
  br i1 %i.mo, label %bb.ag, label %._crit_edge329, !llvm.loop !18

.lr.ph323:                                        ; preds = %.lr.ph323.preheader, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread
  %indvars.iv379 = phi i64 [ %indvars.iv.next380, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread ], [ 0, %.lr.ph323.preheader ] ; 3 uses
  %.1320 = phi i32 [ %i.mr, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread ], [ %.0125326, %.lr.ph323.preheader ] ; 6 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv379
  %i.mq = load i32, ptr %i.mp, align 4            ; 4 uses
  %i.mr = add i32 %.1320, 1                       ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv379
  store i32 %.1320, ptr %i.ms, align 4
  %i.mt = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not143 = icmp eq ptr %i.mt, null
  br i1 %.not143, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph323
  %i.mu = zext i32 %i.mq to i64
  %i.mv = getelementptr inbounds nuw [12 x i8], ptr %i.mt, i64 %i.mu
  %i.mw = load ptr, ptr %i.ba, align 8
  %i.mx = zext i32 %.1320 to i64
  %i.my = getelementptr inbounds nuw [12 x i8], ptr %i.mw, i64 %i.mx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.my, ptr noundef nonnull align 4 dereferenceable(12) %i.mv, i64 12, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph323
  %i.mz = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not.i168 = icmp ne ptr %i.mz, null
  %i.na = load i32, ptr %i.s, align 4             ; 2 uses
  %i.nb = icmp ne i32 %i.na, 0
  %i.nc = select i1 %.not.i168, i1 %i.nb, i1 false
  br i1 %i.nc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.nd = zext i32 %i.mq to i64
  %i.ne = getelementptr inbounds nuw [12 x i8], ptr %i.mz, i64 %i.nd
  %i.nf = load ptr, ptr %i.jx, align 8
  %i.ng = zext i32 %.1320 to i64
  %i.nh = getelementptr inbounds nuw [12 x i8], ptr %i.nf, i64 %i.ng
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nh, ptr noundef nonnull align 4 dereferenceable(12) %i.ne, i64 12, i1 false)
  %.pre386.pre = load i32, ptr %i.s, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre386 = phi i32 [ %.pre386.pre, %bb.ak ], [ %i.na, %bb.aj ] ; 2 uses
  %i.ni = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not.i169 = icmp eq ptr %i.ni, null
  %i.nj = load ptr, ptr %i.u, align 8
  %.not1.i170 = icmp eq ptr %i.nj, null
  %or.cond.i171 = select i1 %.not.i169, i1 true, i1 %.not1.i170
  br i1 %or.cond.i171, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172:  ; preds = %bb.al
  %.not270 = icmp eq i32 %.pre386, 0
  br i1 %.not270, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread, label %bb.am

bb.am:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172
  %i.nk = zext i32 %i.mq to i64                   ; 2 uses
  %i.nl = getelementptr inbounds nuw [12 x i8], ptr %i.ni, i64 %i.nk
  %i.nm = load ptr, ptr %i.jy, align 8
  %i.nn = zext i32 %.1320 to i64                  ; 2 uses
  %i.no = getelementptr inbounds nuw [12 x i8], ptr %i.nm, i64 %i.nn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.no, ptr noundef nonnull align 4 dereferenceable(12) %i.nl, i64 12, i1 false)
  %i.np = load ptr, ptr %i.u, align 8
  %i.nq = getelementptr inbounds nuw [12 x i8], ptr %i.np, i64 %i.nk
  %i.nr = load ptr, ptr %i.jz, align 8
  %i.ns = getelementptr inbounds nuw [12 x i8], ptr %i.nr, i64 %i.nn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ns, ptr noundef nonnull align 4 dereferenceable(12) %i.nq, i64 12, i1 false)
  %.pre = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread: ; preds = %bb.al, %bb.am
  %i.nt = phi i32 [ %.pre386, %bb.al ], [ %.pre, %bb.am ] ; 2 uses
  %i.nu = zext i32 %i.mq to i64                   ; 16 uses
  %i.nv = zext i32 %.1320 to i64                  ; 16 uses
  %i.nw = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not.i173 = icmp ne ptr %i.nw, null
  %i.nx = icmp ne i32 %i.nt, 0
  %i.ny = select i1 %.not.i173, i1 %i.nx, i1 false
  br i1 %i.ny, label %bb.an, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1

bb.an:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread
  %i.nz = getelementptr inbounds nuw [12 x i8], ptr %i.nw, i64 %i.nu
  %i.oa = load ptr, ptr %i.gk, align 8
  %i.ob = getelementptr inbounds nuw [12 x i8], ptr %i.oa, i64 %i.nv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ob, ptr noundef nonnull align 4 dereferenceable(12) %i.nz, i64 12, i1 false)
  %.pre387 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1

_ZNK6aiMesh16HasTextureCoordsEj.exit175.1:        ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread, %bb.an
  %i.oc = phi i32 [ %i.nt, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread ], [ %.pre387, %bb.an ] ; 2 uses
  %i.od = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i173.1 = icmp ne ptr %i.od, null
  %i.oe = icmp ne i32 %i.oc, 0
  %i.of = select i1 %.not.i173.1, i1 %i.oe, i1 false
  br i1 %i.of, label %bb.ao, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2

bb.ao:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1
  %i.og = getelementptr inbounds nuw [12 x i8], ptr %i.od, i64 %i.nu
  %i.oh = load ptr, ptr %i.ka, align 8
  %i.oi = getelementptr inbounds nuw [12 x i8], ptr %i.oh, i64 %i.nv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.oi, ptr noundef nonnull align 4 dereferenceable(12) %i.og, i64 12, i1 false)
  %.pre388 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2

_ZNK6aiMesh16HasTextureCoordsEj.exit175.2:        ; preds = %bb.ao, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1
  %i.oj = phi i32 [ %.pre388, %bb.ao ], [ %i.oc, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1 ] ; 2 uses
  %i.ok = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i173.2 = icmp ne ptr %i.ok, null
  %i.ol = icmp ne i32 %i.oj, 0
  %i.om = select i1 %.not.i173.2, i1 %i.ol, i1 false
  br i1 %i.om, label %bb.ap, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3

bb.ap:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2
  %i.on = getelementptr inbounds nuw [12 x i8], ptr %i.ok, i64 %i.nu
  %i.oo = load ptr, ptr %i.kb, align 8
  %i.op = getelementptr inbounds nuw [12 x i8], ptr %i.oo, i64 %i.nv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.op, ptr noundef nonnull align 4 dereferenceable(12) %i.on, i64 12, i1 false)
  %.pre389 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3

_ZNK6aiMesh16HasTextureCoordsEj.exit175.3:        ; preds = %bb.ap, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2
  %i.oq = phi i32 [ %.pre389, %bb.ap ], [ %i.oj, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2 ] ; 2 uses
  %i.or = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i173.3 = icmp ne ptr %i.or, null
  %i.os = icmp ne i32 %i.oq, 0
  %i.ot = select i1 %.not.i173.3, i1 %i.os, i1 false
  br i1 %i.ot, label %bb.aq, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4

bb.aq:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3
  %i.ou = getelementptr inbounds nuw [12 x i8], ptr %i.or, i64 %i.nu
  %i.ov = load ptr, ptr %i.kc, align 8
  %i.ow = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %i.nv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ow, ptr noundef nonnull align 4 dereferenceable(12) %i.ou, i64 12, i1 false)
  %.pre390 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4

_ZNK6aiMesh16HasTextureCoordsEj.exit175.4:        ; preds = %bb.aq, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3
  %i.ox = phi i32 [ %.pre390, %bb.aq ], [ %i.oq, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3 ] ; 2 uses
  %i.oy = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i173.4 = icmp ne ptr %i.oy, null
  %i.oz = icmp ne i32 %i.ox, 0
  %i.pa = select i1 %.not.i173.4, i1 %i.oz, i1 false
  br i1 %i.pa, label %bb.ar, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5

bb.ar:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4
  %i.pb = getelementptr inbounds nuw [12 x i8], ptr %i.oy, i64 %i.nu
  %i.pc = load ptr, ptr %i.kd, align 8
  %i.pd = getelementptr inbounds nuw [12 x i8], ptr %i.pc, i64 %i.nv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pd, ptr noundef nonnull align 4 dereferenceable(12) %i.pb, i64 12, i1 false)
  %.pre391 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5

_ZNK6aiMesh16HasTextureCoordsEj.exit175.5:        ; preds = %bb.ar, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4
  %i.pe = phi i32 [ %.pre391, %bb.ar ], [ %i.ox, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4 ] ; 2 uses
  %i.pf = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i173.5 = icmp ne ptr %i.pf, null
  %i.pg = icmp ne i32 %i.pe, 0
  %i.ph = select i1 %.not.i173.5, i1 %i.pg, i1 false
  br i1 %i.ph, label %bb.as, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6

bb.as:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5
  %i.pi = getelementptr inbounds nuw [12 x i8], ptr %i.pf, i64 %i.nu
  %i.pj = load ptr, ptr %i.ke, align 8
  %i.pk = getelementptr inbounds nuw [12 x i8], ptr %i.pj, i64 %i.nv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pk, ptr noundef nonnull align 4 dereferenceable(12) %i.pi, i64 12, i1 false)
  %.pre392 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6

_ZNK6aiMesh16HasTextureCoordsEj.exit175.6:        ; preds = %bb.as, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5
  %i.pl = phi i32 [ %.pre392, %bb.as ], [ %i.pe, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5 ] ; 2 uses
  %i.pm = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not.i173.6 = icmp ne ptr %i.pm, null
  %i.pn = icmp ne i32 %i.pl, 0
  %i.po = select i1 %.not.i173.6, i1 %i.pn, i1 false
  br i1 %i.po, label %bb.at, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.7

bb.at:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6
  %i.pp = getelementptr inbounds nuw [12 x i8], ptr %i.pm, i64 %i.nu
  %i.pq = load ptr, ptr %i.kf, align 8
  %i.pr = getelementptr inbounds nuw [12 x i8], ptr %i.pq, i64 %i.nv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pr, ptr noundef nonnull align 4 dereferenceable(12) %i.pp, i64 12, i1 false)
  %.pre393 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.7

_ZNK6aiMesh16HasTextureCoordsEj.exit175.7:        ; preds = %bb.at, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6
  %i.ps = phi i32 [ %.pre393, %bb.at ], [ %i.pl, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6 ] ; 2 uses
  %i.pt = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i173.7 = icmp ne ptr %i.pt, null
  %i.pu = icmp ne i32 %i.ps, 0
  %i.pv = select i1 %.not.i173.7, i1 %i.pu, i1 false
  br i1 %i.pv, label %bb.au, label %.preheader

end_hunk_1
begin_hunk_2_@_ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE:bb.a

bb.az:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.hy = load i32, ptr %i.bd, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bv, i64 200
  store i32 %i.hy, ptr %i.hz, align 8
  %i.ia = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.ba unwind label %bb.am     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.6, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.6:   ; preds = %bb.ba
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ia, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.6:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.6, %bb.ba
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bv, i64 160
  store ptr %i.ia, ptr %i.ib, align 8
  %i.ic = load ptr, ptr %i.be, align 8
  %.not.i162.not.7 = icmp eq ptr %i.ic, null
  br i1 %.not.i162.not.7, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.bb

bb.bb:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.id = load i32, ptr %i.bf, align 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bv, i64 204
  store i32 %i.id, ptr %i.ie, align 4
  %i.if = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.bc unwind label %bb.am     ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.7, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.7:   ; preds = %bb.bc
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.if, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.7:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.7, %bb.bc
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bv, i64 168
  store ptr %i.if, ptr %i.ig, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split

bb.bd:                                            ; preds = %.preheader313, %._crit_edge342
  %indvars.iv374 = phi i64 [ %i.gf, %.preheader313 ], [ %indvars.iv.next375, %._crit_edge342 ] ; 6 uses
  %i.ih = load i32, ptr %i.n, align 8
  %i.ii = zext i32 %i.ih to i64
  %i.ij = icmp samesign ult i64 %indvars.iv374, %i.ii
  br i1 %i.ij, label %bb.be, label %.thread

bb.be:                                            ; preds = %bb.bd
  %i.ik = load ptr, ptr %i.af, align 8
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ik, i64 %indvars.iv374 ; 2 uses
  %i.im = load i32, ptr %i.il, align 8            ; 5 uses
  %.not352 = icmp eq i32 %i.im, 0                 ; 2 uses
  br i1 %.not352, label %._crit_edge, label %.lr.ph333

.lr.ph333:                                        ; preds = %bb.be
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.io = load ptr, ptr %i.in, align 8            ; 5 uses
  %i.ip = load ptr, ptr %4, align 8               ; 5 uses
  %wide.trip.count = zext i32 %i.im to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.iq = icmp ult i32 %i.im, 4
  br i1 %i.iq, label %.epil.preheader, label %.lr.ph333.new

.lr.ph333.new:                                    ; preds = %.lr.ph333
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.bg

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.bg
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph333
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph333 ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0129331.epil.init = phi i32 [ 0, %.lr.ph333 ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod501 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod501)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.bf ] ; 2 uses
  %.0129331.epil = phi i32 [ %.0129331.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.bf ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bf ]
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv.epil
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4
  %i.iw = icmp eq i32 %i.iv, -1
  %i.ix = zext i1 %i.iw to i32
  %spec.select.epil = add i32 %.0129331.epil, %i.ix ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.bf, !llvm.loop !34

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.bf, %bb.be
  %.0129.lcssa = phi i32 [ 0, %bb.be ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.bf ]
  %i.iy = load i32, ptr %i.bw, align 4
  %i.iz = add i32 %i.iy, %.0129.lcssa
  %i.ja = icmp ugt i32 %i.iz, %.fr
  br i1 %i.ja, label %.thread, label %bb.bh

bb.bg:                                            ; preds = %bb.bg, %.lr.ph333.new
  %indvars.iv = phi i64 [ 0, %.lr.ph333.new ], [ %indvars.iv.next.3, %bb.bg ] ; 5 uses
  %.0129331 = phi i32 [ 0, %.lr.ph333.new ], [ %spec.select.3, %bb.bg ]
  %niter = phi i64 [ 0, %.lr.ph333.new ], [ %niter.next.3, %bb.bg ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4
  %i.jg = icmp eq i32 %i.jf, -1
  %i.jh = zext i1 %i.jg to i32
  %spec.select = add i32 %.0129331, %i.jh
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4
  %i.jo = icmp eq i32 %i.jn, -1
  %i.jp = zext i1 %i.jo to i32
  %spec.select.1 = add i32 %spec.select, %i.jp
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = icmp eq i32 %i.jv, -1
  %i.jx = zext i1 %i.jw to i32
  %spec.select.2 = add i32 %spec.select.1, %i.jx
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  %i.ka = load i32, ptr %i.jz, align 4
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4
  %i.ke = icmp eq i32 %i.kd, -1
  %i.kf = zext i1 %i.ke to i32
  %spec.select.3 = add i32 %spec.select.2, %i.kf  ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.bg, !llvm.loop !35

bb.bh:                                            ; preds = %._crit_edge
  %i.kg = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.kh = load ptr, ptr %i.ah, align 8
  %.not.i164 = icmp eq ptr %i.kg, %i.kh
  br i1 %.not.i164, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.kg, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store ptr null, ptr %i.ki, align 8
  %i.kj = load ptr, ptr %i.ag, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 2 uses
  store ptr %i.kk, ptr %i.ag, align 8
  br label %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

bb.bj:                                            ; preds = %bb.bh
  invoke void @_ZNSt6vectorI6aiFaceSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.kg)
          to label %._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge unwind label %bb.bl

._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge: ; preds = %bb.bj
  %.pre = load ptr, ptr %i.ag, align 8
  br label %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit: ; preds = %._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge, %bb.bi
  %i.kl = phi ptr [ %.pre, %._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge ], [ %i.kk, %bb.bi ] ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 -16 ; 2 uses
  store i32 %i.im, ptr %i.km, align 8
  %i.kn = zext i32 %i.im to i64                   ; 2 uses
  %i.ko = shl nuw nsw i64 %i.kn, 2
  %i.kp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ko) #17
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %i.kq = getelementptr inbounds i8, ptr %i.kl, i64 -8 ; 3 uses
  store ptr %i.kp, ptr %i.kq, align 8
  %i.kr = load i32, ptr %i.km, align 8
  %i.ks = load i32, ptr %i.bv, align 8
  %switch.tableidx = add i32 %i.kr, -1            ; 2 uses
  %i.kt = icmp ult i32 %switch.tableidx, 3
  br i1 %i.kt, label %switch.lookup, label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.bm:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

switch.lookup:                                    ; preds = %bb.bk
  %i.kw = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE, i64 %i.kw
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %switch.lookup
  %.sink491 = phi i32 [ %switch.load, %switch.lookup ], [ 8, %bb.bk ]
  %i.kx = or i32 %i.ks, %.sink491
  store i32 %i.kx, ptr %i.bv, align 8
  br i1 %.not352, label %._crit_edge342, label %.lr.ph341

._crit_edge342:                                   ; preds = %bb.cs, %bb.bn
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 2 uses
  %i.ky = load i32, ptr %i.bw, align 4
  %i.kz = icmp eq i32 %i.ky, %.fr
  br i1 %i.kz, label %.thread, label %bb.bd

.lr.ph341:                                        ; preds = %bb.bn, %bb.cs
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %bb.cs ], [ 0, %bb.bn ] ; 4 uses
  %i.la = load ptr, ptr %i.af, align 8
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.la, i64 %indvars.iv374
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv369
  %i.lf = load i32, ptr %i.le, align 4
  %i.lg = zext i32 %i.lf to i64                   ; 22 uses
  %i.lh = load ptr, ptr %4, align 8
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.lg
  %i.lj = load i32, ptr %i.li, align 4            ; 2 uses
  %.not147 = icmp eq i32 %i.lj, -1
  br i1 %.not147, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph341
  %i.lk = load ptr, ptr %i.kq, align 8
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv369
  store i32 %i.lj, ptr %i.ll, align 4
  br label %bb.cs

bb.bp:                                            ; preds = %.lr.ph341
  %i.lm = load ptr, ptr %i.x, align 8
  %i.ln = getelementptr inbounds nuw [12 x i8], ptr %i.lm, i64 %i.lg
  %i.lo = load ptr, ptr %i.by, align 8
  %i.lp = load i32, ptr %i.bw, align 4
  %i.lq = zext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [12 x i8], ptr %i.lo, i64 %i.lq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lr, ptr noundef nonnull align 4 dereferenceable(12) %i.ln, i64 12, i1 false)
  %i.ls = load ptr, ptr %i.y, align 8             ; 2 uses
  %.not.i166 = icmp ne ptr %i.ls, null
  %i.lt = load i32, ptr %i.b, align 4             ; 2 uses
  %i.lu = icmp ne i32 %i.lt, 0
  %i.lv = select i1 %.not.i166, i1 %i.lu, i1 false
  br i1 %i.lv, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.lw = getelementptr inbounds nuw [12 x i8], ptr %i.ls, i64 %i.lg
  %i.lx = load ptr, ptr %i.gc, align 8
  %i.ly = load i32, ptr %i.bw, align 4
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [12 x i8], ptr %i.lx, i64 %i.lz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ma, ptr noundef nonnull align 4 dereferenceable(12) %i.lw, i64 12, i1 false)
  %.pre386.pre = load i32, ptr %i.b, align 4
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pre386 = phi i32 [ %.pre386.pre, %bb.bq ], [ %i.lt, %bb.bp ] ; 2 uses
  %i.mb = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i167 = icmp eq ptr %i.mb, null
  %i.mc = load ptr, ptr %i.aa, align 8
  %.not1.i168 = icmp eq ptr %i.mc, null
  %or.cond.i169 = select i1 %.not.i167, i1 true, i1 %.not1.i168
  br i1 %or.cond.i169, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170:  ; preds = %bb.br
  %.not302 = icmp eq i32 %.pre386, 0
  br i1 %.not302, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread, label %bb.bs

bb.bs:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170
  %i.md = getelementptr inbounds nuw [12 x i8], ptr %i.mb, i64 %i.lg
  %i.me = load ptr, ptr %i.gd, align 8
  %i.mf = load i32, ptr %i.bw, align 4
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %i.mg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mh, ptr noundef nonnull align 4 dereferenceable(12) %i.md, i64 12, i1 false)
  %i.mi = load ptr, ptr %i.aa, align 8
  %i.mj = getelementptr inbounds nuw [12 x i8], ptr %i.mi, i64 %i.lg
  %i.mk = load ptr, ptr %i.ge, align 8
  %i.ml = load i32, ptr %i.bw, align 4
  %i.mm = zext i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [12 x i8], ptr %i.mk, i64 %i.mm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mn, ptr noundef nonnull align 4 dereferenceable(12) %i.mj, i64 12, i1 false)
  %.pre385 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread: ; preds = %bb.br, %bb.bs
  %i.mo = phi i32 [ %.pre386, %bb.br ], [ %.pre385, %bb.bs ] ; 2 uses
  %i.mp = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i171 = icmp ne ptr %i.mp, null
  %i.mq = icmp ne i32 %i.mo, 0
  %i.mr = select i1 %.not.i171, i1 %i.mq, i1 false
  br i1 %i.mr, label %bb.bt, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.1

bb.bt:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread
  %i.ms = getelementptr inbounds nuw [12 x i8], ptr %i.mp, i64 %i.lg
  %i.mt = load ptr, ptr %i.ga, align 8
  %i.mu = load i32, ptr %i.bw, align 4
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [12 x i8], ptr %i.mt, i64 %i.mv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mw, ptr noundef nonnull align 4 dereferenceable(12) %i.ms, i64 12, i1 false)
  %.pre387 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.1

_ZNK6aiMesh16HasTextureCoordsEj.exit173.1:        ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread, %bb.bt
  %i.mx = phi i32 [ %i.mo, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread ], [ %.pre387, %bb.bt ] ; 2 uses
  %i.my = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not.i171.1 = icmp ne ptr %i.my, null
  %i.mz = icmp ne i32 %i.mx, 0
  %i.na = select i1 %.not.i171.1, i1 %i.mz, i1 false
  br i1 %i.na, label %bb.bu, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.2

bb.bu:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit173.1
  %i.nb = getelementptr inbounds nuw [12 x i8], ptr %i.my, i64 %i.lg
  %i.nc = load ptr, ptr %i.gg, align 8
  %i.nd = load i32, ptr %i.bw, align 4
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [12 x i8], ptr %i.nc, i64 %i.ne
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nf, ptr noundef nonnull align 4 dereferenceable(12) %i.nb, i64 12, i1 false)
  %.pre388 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.2

_ZNK6aiMesh16HasTextureCoordsEj.exit173.2:        ; preds = %bb.bu, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.1
  %i.ng = phi i32 [ %.pre388, %bb.bu ], [ %i.mx, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.1 ] ; 2 uses
  %i.nh = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not.i171.2 = icmp ne ptr %i.nh, null
  %i.ni = icmp ne i32 %i.ng, 0
  %i.nj = select i1 %.not.i171.2, i1 %i.ni, i1 false
  br i1 %i.nj, label %bb.bv, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.3

bb.bv:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit173.2
  %i.nk = getelementptr inbounds nuw [12 x i8], ptr %i.nh, i64 %i.lg
  %i.nl = load ptr, ptr %i.gh, align 8
  %i.nm = load i32, ptr %i.bw, align 4
  %i.nn = zext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [12 x i8], ptr %i.nl, i64 %i.nn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.no, ptr noundef nonnull align 4 dereferenceable(12) %i.nk, i64 12, i1 false)
  %.pre389 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.3

_ZNK6aiMesh16HasTextureCoordsEj.exit173.3:        ; preds = %bb.bv, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.2
  %i.np = phi i32 [ %.pre389, %bb.bv ], [ %i.ng, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.2 ] ; 2 uses
  %i.nq = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not.i171.3 = icmp ne ptr %i.nq, null
  %i.nr = icmp ne i32 %i.np, 0
  %i.ns = select i1 %.not.i171.3, i1 %i.nr, i1 false
  br i1 %i.ns, label %bb.bw, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.4

bb.bw:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit173.3
  %i.nt = getelementptr inbounds nuw [12 x i8], ptr %i.nq, i64 %i.lg
  %i.nu = load ptr, ptr %i.gi, align 8
  %i.nv = load i32, ptr %i.bw, align 4
  %i.nw = zext i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [12 x i8], ptr %i.nu, i64 %i.nw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nx, ptr noundef nonnull align 4 dereferenceable(12) %i.nt, i64 12, i1 false)
  %.pre390 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.4

_ZNK6aiMesh16HasTextureCoordsEj.exit173.4:        ; preds = %bb.bw, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.3
  %i.ny = phi i32 [ %.pre390, %bb.bw ], [ %i.np, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.3 ] ; 2 uses
  %i.nz = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not.i171.4 = icmp ne ptr %i.nz, null
  %i.oa = icmp ne i32 %i.ny, 0
  %i.ob = select i1 %.not.i171.4, i1 %i.oa, i1 false
  br i1 %i.ob, label %bb.bx, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.5

bb.bx:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit173.4
  %i.oc = getelementptr inbounds nuw [12 x i8], ptr %i.nz, i64 %i.lg
  %i.od = load ptr, ptr %i.gj, align 8
  %i.oe = load i32, ptr %i.bw, align 4
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [12 x i8], ptr %i.od, i64 %i.of
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.og, ptr noundef nonnull align 4 dereferenceable(12) %i.oc, i64 12, i1 false)
  %.pre391 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.5

_ZNK6aiMesh16HasTextureCoordsEj.exit173.5:        ; preds = %bb.bx, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.4
  %i.oh = phi i32 [ %.pre391, %bb.bx ], [ %i.ny, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.4 ] ; 2 uses
  %i.oi = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not.i171.5 = icmp ne ptr %i.oi, null
  %i.oj = icmp ne i32 %i.oh, 0
  %i.ok = select i1 %.not.i171.5, i1 %i.oj, i1 false
  br i1 %i.ok, label %bb.by, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.6

bb.by:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit173.5
  %i.ol = getelementptr inbounds nuw [12 x i8], ptr %i.oi, i64 %i.lg
  %i.om = load ptr, ptr %i.gk, align 8
  %i.on = load i32, ptr %i.bw, align 4
  %i.oo = zext i32 %i.on to i64
  %i.op = getelementptr inbounds nuw [12 x i8], ptr %i.om, i64 %i.oo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.op, ptr noundef nonnull align 4 dereferenceable(12) %i.ol, i64 12, i1 false)
  %.pre392 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.6

_ZNK6aiMesh16HasTextureCoordsEj.exit173.6:        ; preds = %bb.by, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.5
  %i.oq = phi i32 [ %.pre392, %bb.by ], [ %i.oh, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.5 ] ; 2 uses
  %i.or = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i171.6 = icmp ne ptr %i.or, null
  %i.os = icmp ne i32 %i.oq, 0
  %i.ot = select i1 %.not.i171.6, i1 %i.os, i1 false
end_hunk_2
