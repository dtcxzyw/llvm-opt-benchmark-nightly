inline.NumInlined: 1851
inline.NumDeleted: 929
begin_hunk_0
%"class.std::tuple.167" = type { %"struct.std::_Tuple_impl.168" }
%"struct.std::_Tuple_impl.168" = type { %"struct.std::_Head_base.169" }
%"struct.std::_Head_base.169" = type { ptr }
%"class.std::vector.69" = type { %"struct.std::_Vector_base.70" }
%"struct.std::_Vector_base.70" = type { %"struct.std::_Vector_base<Assimp::Ogre::Bone *, std::allocator<Assimp::Ogre::Bone *>>::_Vector_impl" }
%"struct.std::_Vector_base<Assimp::Ogre::Bone *, std::allocator<Assimp::Ogre::Bone *>>::_Vector_impl" = type { %"struct.std::_Vector_base<Assimp::Ogre::Bone *, std::allocator<Assimp::Ogre::Bone *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Assimp::Ogre::Bone *, std::allocator<Assimp::Ogre::Bone *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.aiVector3t = type { float, float, float }
%class.aiQuaterniont = type { float, float, float, float }
%class.aiMatrix4x4t = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, std::vector<Assimp::Ogre::VertexBoneAssignment>>, std::_Select1st<std::pair<const unsigned int, std::vector<Assimp::Ogre::VertexBoneAssignment>>>, std::less<unsigned int>>::_Auto_node" = type { ptr, ptr }
%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, std::vector<unsigned int>>, std::_Select1st<std::pair<const unsigned int, std::vector<unsigned int>>>, std::less<unsigned int>>::_Auto_node" = type { ptr, ptr }
%"struct.std::_Rb_tree<unsigned short, std::pair<const unsigned short, std::shared_ptr<Assimp::MemoryIOStream>>, std::_Select1st<std::pair<const unsigned short, std::shared_ptr<Assimp::MemoryIOStream>>>, std::less<unsigned short>>::_Auto_node" = type { ptr, ptr }

$_ZNSt3mapItSt6vectorI14aiVertexWeightSaIS1_EESt4lessItESaISt4pairIKtS3_EEED2Ev = comdat any

$_ZNSt3setItSt4lessItESaItEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6Assimp4Ogre8ISubMeshD2Ev = comdat any

$_ZN17DeadlyImportErrorC2IJRA63_KcRN6Assimp4Ogre8ISubMesh13OperationTypeEEEEDpOT_ = comdat any

$_ZN17DeadlyImportErrorC2EPKc = comdat any

$_ZN6Assimp6Logger4warnIJRA24_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA45_S2_EEEvDpOT_ = comdat any

$_ZN6Assimp4Ogre13VertexDataXmlD2Ev = comdat any

$_ZN17DeadlyImportErrorC2IJRA48_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_ = comdat any

$_ZN12aiMatrix4x4tIfE7InverseEv = comdat any

$_ZN17DeadlyImportErrorC2IJRA63_KcRtRA13_S1_S4_RA2_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_ = comdat any

$_ZN17DeadlyImportErrorC2IJRA48_KcRtRA13_S1_S4_RA2_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_ = comdat any

$_ZN17DeadlyImportErrorC2IJRA73_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA22_S1_EEEDpOT_ = comdat any

$_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_ = comdat any

$_ZNSt8_Rb_treeItSt4pairIKtSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessItESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZNSt8_Rb_treeIttSt9_IdentityItESt4lessItESaItEE8_M_eraseEPSt13_Rb_tree_nodeItE = comdat any

$_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp4Ogre4Pose6VertexEESt10_Select1stIS6_ESt4lessIjESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN17DeadlyImportErrorD0Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOjEESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeItSt4pairIKtSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessItESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_ = comdat any

$_ZNSt8_Rb_treeItSt4pairIKtSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessItESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_ = comdat any

$_ZNSt8_Rb_treeItSt4pairIKtSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessItESaIS6_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_ = comdat any

$_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_ = comdat any

$_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE10_Auto_nodeD2Ev = comdat any

$_ZN15DeadlyErrorBaseC2IJRN6Assimp4Ogre8ISubMesh13OperationTypeEERA63_KcEENS1_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJERN6Assimp4Ogre8ISubMesh13OperationTypeEEENS1_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJRA45_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA45_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA48_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRtRA13_KcS1_RA2_S2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA63_S2_EEN6Assimp9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRA13_KcRtRA2_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES4_EEN6Assimp9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRtRA2_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA13_S2_EEN6Assimp9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRA2_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERtEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA2_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRtRA13_KcS1_RA2_S2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA48_S2_EEN6Assimp9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA22_KcERA73_S8_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRA22_KcERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJERA22_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZTI17DeadlyImportError = comdat any

$_ZTS17DeadlyImportError = comdat any

$_ZTI15DeadlyErrorBase = comdat any

$_ZTS15DeadlyErrorBase = comdat any

$_ZTV17DeadlyImportError = comdat any

$_ZSt19piecewise_construct = comdat any

@.str = private unnamed_addr constant [7 x i8] c"COLOUR\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"COLOUR_ABGR\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"COLOUR_ARGB\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"FLOAT1\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FLOAT2\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"FLOAT3\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"FLOAT4\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"DOUBLE1\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"DOUBLE2\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"DOUBLE3\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"DOUBLE4\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SHORT1\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"SHORT2\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"SHORT3\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"SHORT4\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"USHORT1\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"USHORT2\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"USHORT3\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"USHORT4\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"UINT1\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"UINT2\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"UINT3\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"UINT4\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"UBYTE4\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Uknown_VertexElement::Type\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"BLEND_WEIGHTS\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"BLEND_INDICES\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"DIFFUSE\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"TEXTURE_COORDINATES\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"TANGENT\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"Uknown_VertexElement::Semantic\00", align 1
@.str.39 = private unnamed_addr constant [63 x i8] c"Only mesh operation type OT_TRIANGLE_LIST is supported. Found \00", align 1
@_ZTI17DeadlyImportError = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DeadlyImportError, ptr @_ZTI15DeadlyErrorBase }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17DeadlyImportError = linkonce_odr constant [20 x i8] c"17DeadlyImportError\00", comdat, align 1
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.40 = private unnamed_addr constant [88 x i8] c"Failed to import Ogre VertexElement::VES_POSITION. Mesh does not have vertex positions!\00", align 1
@.str.41 = private unnamed_addr constant [92 x i8] c"Ogre Mesh position vertex element type != VertexElement::VET_FLOAT3. This is not supported.\00", align 1
@.str.42 = private unnamed_addr constant [90 x i8] c"Ogre Mesh normal vertex element type != VertexElement::VET_FLOAT3. This is not supported.\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"Ogre imported UV0 type \00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c" is not compatible with Assimp. Ignoring UV.\00", align 1
@.str.45 = private unnamed_addr constant [48 x i8] c"Attaching child Bone that is already parented: \00", align 1
@.str.46 = private unnamed_addr constant [63 x i8] c"CalculateWorldMatrixAndDefaultPose: Failed to find child bone \00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c" for parent \00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.49 = private unnamed_addr constant [48 x i8] c"ConvertToAssimpNode: Failed to find child bone \00", align 1
@.str.50 = private unnamed_addr constant [134 x i8] c"VertexAnimationTrack::ConvertToAssimpAnimationNode: Cannot convert track that has no target bone name or is not type of VAT_TRANSFORM\00", align 1
@.str.51 = private unnamed_addr constant [73 x i8] c"VertexAnimationTrack::ConvertToAssimpAnimationNode: Failed to find bone \00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c" from parent Skeleton\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTV17DeadlyImportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyImportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyImportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@switch.table._ZN6Assimp4Ogre13VertexElement14ComponentCountENS1_4TypeE = private unnamed_addr constant [28 x i8] c"\01\02\03\04\01\01\02\03\04\04\01\01\01\02\03\04\01\02\03\04\01\02\03\04\01\02\03\04", align 8
@switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7 = private unnamed_addr constant [28 x i8] c"\04\08\0C\10\04\02\04\06\08\04\04\04\08\10\18 \02\04\06\08\04\08\0C\10\04\08\0C\10", align 8

@_ZN6Assimp4Ogre13VertexElementC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre13VertexElementC2Ev
@_ZN6Assimp4Ogre11IVertexDataC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre11IVertexDataC2Ev
@_ZN6Assimp4Ogre10VertexDataC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre10VertexDataC2Ev
@_ZN6Assimp4Ogre10VertexDataD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre10VertexDataD2Ev
@_ZN6Assimp4Ogre13VertexDataXmlC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre13VertexDataXmlC2Ev
@_ZN6Assimp4Ogre9IndexDataC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre9IndexDataC2Ev
@_ZN6Assimp4Ogre9IndexDataD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre9IndexDataD2Ev
@_ZN6Assimp4Ogre4MeshC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre4MeshC2Ev
@_ZN6Assimp4Ogre4MeshD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre4MeshD2Ev
@_ZN6Assimp4Ogre8ISubMeshC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre8ISubMeshC2Ev
@_ZN6Assimp4Ogre7SubMeshC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre7SubMeshC2Ev
@_ZN6Assimp4Ogre7SubMeshD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre7SubMeshD2Ev
@_ZN6Assimp4Ogre7MeshXmlC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre7MeshXmlC2Ev
@_ZN6Assimp4Ogre7MeshXmlD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre7MeshXmlD2Ev
@_ZN6Assimp4Ogre10SubMeshXmlC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre10SubMeshXmlC2Ev
@_ZN6Assimp4Ogre10SubMeshXmlD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre10SubMeshXmlD2Ev
@_ZN6Assimp4Ogre9AnimationC1EPNS0_8SkeletonE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6Assimp4Ogre9AnimationC2EPNS0_8SkeletonE
@_ZN6Assimp4Ogre9AnimationC1EPNS0_4MeshE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6Assimp4Ogre9AnimationC2EPNS0_4MeshE
@_ZN6Assimp4Ogre8SkeletonC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre8SkeletonC2Ev
@_ZN6Assimp4Ogre8SkeletonD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre8SkeletonD2Ev
@_ZN6Assimp4Ogre4BoneC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre4BoneC2Ev
@_ZN6Assimp4Ogre20VertexAnimationTrackC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre20VertexAnimationTrackC2Ev
@_ZN6Assimp4Ogre17TransformKeyFrameC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4Ogre17TransformKeyFrameC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp4Ogre13VertexElementC2Ev(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 6), (8, 16)) %0) unnamed_addr #0 align 2 {
bb.a:
  store i16 0, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.a, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.d, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 33) i64 @_ZNK6Assimp4Ogre13VertexElement4SizeEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp ult i32 %i.b, 28
  br i1 %i.c, label %switch.lookup, label %_ZN6Assimp4Ogre13VertexElement8TypeSizeENS1_4TypeE.exit

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZN6Assimp4Ogre13VertexElement8TypeSizeENS1_4TypeE.exit

_ZN6Assimp4Ogre13VertexElement8TypeSizeENS1_4TypeE.exit: ; preds = %bb.a, %switch.lookup
  %.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i64 0, 33) i64 @_ZN6Assimp4Ogre13VertexElement8TypeSizeENS1_4TypeE(i32 noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 28
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 5) i64 @_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp ult i32 %i.b, 28
  br i1 %i.c, label %switch.lookup, label %_ZN6Assimp4Ogre13VertexElement14ComponentCountENS1_4TypeE.exit

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre13VertexElement14ComponentCountENS1_4TypeE, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZN6Assimp4Ogre13VertexElement14ComponentCountENS1_4TypeE.exit

_ZN6Assimp4Ogre13VertexElement14ComponentCountENS1_4TypeE.exit: ; preds = %bb.a, %switch.lookup
  %.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i64 0, 5) i64 @_ZN6Assimp4Ogre13VertexElement14ComponentCountENS1_4TypeE(i32 noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 28
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre13VertexElement14ComponentCountENS1_4TypeE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre13VertexElement12TypeToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4
  tail call void @_ZN6Assimp4Ogre13VertexElement12TypeToStringB5cxx11ENS1_4TypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre13VertexElement12TypeToStringB5cxx11ENS1_4TypeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 30 uses
  store ptr %i.b, ptr %0, align 8
  switch i32 %1, label %.noexc.i113 [
    i32 4, label %._crit_edge.i.i
    i32 11, label %._crit_edge.i.i4
    i32 10, label %._crit_edge.i.i8
    i32 0, label %._crit_edge.i.i12
    i32 1, label %._crit_edge.i.i16
    i32 2, label %._crit_edge.i.i20
    i32 3, label %._crit_edge.i.i24
    i32 12, label %._crit_edge.i.i28
    i32 13, label %._crit_edge.i.i32
    i32 14, label %._crit_edge.i.i36
    i32 15, label %._crit_edge.i.i40
    i32 5, label %._crit_edge.i.i44
    i32 6, label %._crit_edge.i.i48
    i32 7, label %._crit_edge.i.i52
    i32 8, label %._crit_edge.i.i56
    i32 16, label %._crit_edge.i.i60
    i32 17, label %._crit_edge.i.i64
    i32 18, label %._crit_edge.i.i68
    i32 19, label %._crit_edge.i.i72
    i32 20, label %._crit_edge.i.i76
    i32 21, label %._crit_edge.i.i80
    i32 22, label %._crit_edge.i.i84
    i32 23, label %._crit_edge.i.i88
    i32 24, label %._crit_edge.i.i92
    i32 25, label %._crit_edge.i.i96
    i32 26, label %._crit_edge.i.i100
    i32 27, label %._crit_edge.i.i104
    i32 9, label %._crit_edge.i.i108
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.d, align 2
  br label %bb.b

._crit_edge.i.i4:                                 ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 11, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %i.f, align 1
  br label %bb.b

._crit_edge.i.i8:                                 ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.2, i64 11, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 11, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %i.h, align 1
  br label %bb.b

._crit_edge.i.i12:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.j, align 2
  br label %bb.b

._crit_edge.i.i16:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.l, align 2
  br label %bb.b

._crit_edge.i.i20:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.5, i64 6, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.n, align 2
  br label %bb.b

._crit_edge.i.i24:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.6, i64 6, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.p, align 2
  br label %bb.b

._crit_edge.i.i28:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.7, i64 7, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.r, align 1
  br label %bb.b

._crit_edge.i.i32:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.8, i64 7, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.t, align 1
  br label %bb.b

._crit_edge.i.i36:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.9, i64 7, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.v, align 1
  br label %bb.b

._crit_edge.i.i40:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.10, i64 7, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.x, align 1
  br label %bb.b

._crit_edge.i.i44:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.11, i64 6, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.z, align 2
  br label %bb.b

._crit_edge.i.i48:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.12, i64 6, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.ab, align 2
  br label %bb.b

._crit_edge.i.i52:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.13, i64 6, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.ad, align 2
  br label %bb.b

._crit_edge.i.i56:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.14, i64 6, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.af, align 2
  br label %bb.b

._crit_edge.i.i60:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.15, i64 7, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.ah, align 1
  br label %bb.b

._crit_edge.i.i64:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.16, i64 7, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.aj, align 1
  br label %bb.b

._crit_edge.i.i68:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.17, i64 7, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.al, align 1
  br label %bb.b

._crit_edge.i.i72:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.18, i64 7, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.an, align 1
  br label %bb.b
end_hunk_0
begin_hunk_1_@_ZN6Assimp4Ogre10VertexDataC2Ev:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.p, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp4Ogre10VertexDataD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE5clearEv.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #32
  unreachable

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE5clearEv.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i.i.i = icmp eq ptr %i.m, %i.k
  br i1 %.not.i.i.i, label %_ZN6Assimp4Ogre10VertexData5ResetEv.exit, label %_ZSt8_DestroyIPN6Assimp4Ogre13VertexElementES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6Assimp4Ogre13VertexElementES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE5clearEv.exit.i
  store ptr %i.k, ptr %i.l, align 8
  br label %_ZN6Assimp4Ogre10VertexData5ResetEv.exit

_ZN6Assimp4Ogre10VertexData5ResetEv.exit:         ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE5clearEv.exit.i, %_ZSt8_DestroyIPN6Assimp4Ogre13VertexElementES2_EvT_S4_RSaIT0_E.exit.i.i.i
  invoke void @_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef null)
          to label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp4Ogre10VertexData5ResetEv.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #32
  unreachable

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEED2Ev.exit: ; preds = %_ZN6Assimp4Ogre10VertexData5ResetEv.exit
  %i.p = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN6Assimp4Ogre13VertexElementESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #31
  br label %_ZNSt6vectorIN6Assimp4Ogre13VertexElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp4Ogre13VertexElementESaIS2_EED2Ev.exit: ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef %i.x)
          to label %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp4Ogre13VertexElementESaIS2_EED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #32
  unreachable

_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN6Assimp4Ogre13VertexElementESaIS2_EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef %i.ac)
          to label %_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEED2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #32
  unreachable

_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEED2Ev.exit.i: ; preds = %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZN6Assimp4Ogre11IVertexDataD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEED2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #31
  br label %_ZN6Assimp4Ogre11IVertexDataD2Ev.exit

_ZN6Assimp4Ogre11IVertexDataD2Ev.exit:            ; preds = %_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEED2Ev.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp4Ogre10VertexData5ResetEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE5clearEv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #32
  unreachable

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE5clearEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.m, %i.k
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp4Ogre13VertexElementESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN6Assimp4Ogre13VertexElementES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp4Ogre13VertexElementES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE5clearEv.exit
  store ptr %i.k, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4Ogre13VertexElementESaIS2_EE5clearEv.exit

_ZNSt6vectorIN6Assimp4Ogre13VertexElementESaIS2_EE5clearEv.exit: ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE5clearEv.exit, %_ZSt8_DestroyIPN6Assimp4Ogre13VertexElementES2_EvT_S4_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #32
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK6Assimp4Ogre10VertexData10VertexSizeEt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i16 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.b, %i.d
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  ret i32 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.012 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %.sroa.07.011 = phi ptr [ %i.m, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %i.g = icmp eq i16 %i.f, %1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp ult i32 %i.i, 28
  br i1 %i.j, label %switch.lookup, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit

switch.lookup:                                    ; preds = %bb.b
  %i.k = zext nneg i32 %i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit:      ; preds = %bb.b, %switch.lookup
  %.0.i.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.b ]
  %i.l = add i32 %.0.i.i, %.012
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit, %.lr.ph
  %.1 = phi i32 [ %i.l, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit ], [ %.012, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6Assimp4Ogre10VertexData12VertexBufferEt(ptr noundef nonnull align 8 dereferenceable(200) %0, i16 noundef zeroext %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.167", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.153", align 1    ; 3 uses
  %i.a = alloca i16, align 2                      ; 2 uses
  store i16 %1, ptr %i.a, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = load i16, ptr %i.f, align 2
  %i.h = icmp ult i16 %i.g, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.h, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !22

_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.i, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.k = load i16, ptr %i.j, align 2
  %i.l = icmp ult i16 %1, %i.k
  br i1 %i.l, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp ult i16 %i.n, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.o, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i.i, %i.e
  br i1 %i.p, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.r = load i16, ptr %i.q, align 2
  %i.s = icmp ult i16 %1, %i.r
  br i1 %i.s, label %.critedge.i, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit

.critedge.i:                                      ; preds = %bb.b, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %i.a, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.t = call ptr @_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr %.19.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit: ; preds = %bb.b, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.t, %.critedge.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  br label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.thread

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.a, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit
  %.0 = phi ptr [ %i.v, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit ], [ null, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit ], [ null, %bb.a ], [ null, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.b, %i.d
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.012.022 = phi ptr [ %i.j, %bb.c ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.012.022, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, %1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = load i16, ptr %.sroa.012.022, align 4
  %i.i = icmp eq i16 %i.h, %2
  br i1 %i.i, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.012.022, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %.sroa.012.022, %bb.b ]
  ret ptr %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp4Ogre13VertexDataXmlC2Ev(ptr noundef nonnull align 8 dereferenceable(224) initializes((0, 4), (8, 32), (40, 44), (48, 56)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.k, i8 0, i64 104, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp4Ogre13VertexDataXml12HasPositionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp4Ogre13VertexDataXml10HasNormalsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp4Ogre13VertexDataXml11HasTangentsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp4Ogre13VertexDataXml6HasUvsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 -384307168202282325, 384307168202282326) i64 @_ZNK6Assimp4Ogre13VertexDataXml6NumUvsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
end_hunk_1
begin_hunk_2_@_ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE:bb.a
  br i1 %.not.i.i.i.i.i266, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i267, label %.lr.ph.i.i.i.i.i259, !llvm.loop !22

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i267: ; preds = %.lr.ph.i.i.i.i.i259
  %i.fa = icmp eq ptr %.19.i.i.i.i.i262, %i.dv
  br i1 %i.fa, label %.critedge.i.i271, label %bb.af

bb.af:                                            ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i267
  %i.fb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i262, i64 32
  %i.fc = load i16, ptr %i.fb, align 2
  %i.fd = icmp ult i16 %i.eo, %i.fc
  br i1 %i.fd, label %.critedge.i.i271, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i268

.critedge.i.i271:                                 ; preds = %bb.af, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i267
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.c, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.fe = call ptr @_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ds, ptr %.19.i.i.i.i.i262, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i268

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i268: ; preds = %.critedge.i.i271, %bb.af
  %.sroa.06.0.i.i269 = phi ptr [ %i.fe, %.critedge.i.i271 ], [ %.19.i.i.i.i.i262, %bb.af ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i269, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8
  br label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit272

_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit272: ; preds = %bb.ae, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i257, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i258, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i268
  %.0.i270 = phi ptr [ %i.fg, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i268 ], [ null, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i258 ], [ null, %bb.ae ], [ null, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i257 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit, %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit272
  %i.fh = phi ptr [ %.0.i270, %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit272 ], [ null, %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit ] ; 13 uses
  %.not215 = icmp ne ptr %i.bg, null              ; 4 uses
  br i1 %.not215, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.fj = load i16, ptr %i.fi, align 2            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.fj, ptr %i.b, align 2
  %i.fk = load ptr, ptr %i.dt, align 8            ; 3 uses
  %.not10.i.i.i.i273 = icmp eq ptr %i.fk, null
  br i1 %.not10.i.i.i.i273, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit297, label %.lr.ph.i.i.i.i274

.lr.ph.i.i.i.i274:                                ; preds = %bb.ah, %.lr.ph.i.i.i.i274
  %.012.i.i.i.i275 = phi ptr [ %.1.i.i.i.i280, %.lr.ph.i.i.i.i274 ], [ %i.fk, %bb.ah ] ; 3 uses
  %.0811.i.i.i.i276 = phi ptr [ %.19.i.i.i.i277, %.lr.ph.i.i.i.i274 ], [ %i.dv, %bb.ah ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i275, i64 32
  %i.fm = load i16, ptr %i.fl, align 2
  %i.fn = icmp ult i16 %i.fm, %i.fj               ; 2 uses
  %.19.i.i.i.i277 = select i1 %i.fn, ptr %.0811.i.i.i.i276, ptr %.012.i.i.i.i275 ; 3 uses
  %.1.in.v.i.i.i.i278 = select i1 %i.fn, i64 24, i64 16
  %.1.in.i.i.i.i279 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i275, i64 %.1.in.v.i.i.i.i278
  %.1.i.i.i.i280 = load ptr, ptr %.1.in.i.i.i.i279, align 8 ; 2 uses
  %.not.i.i.i.i281 = icmp eq ptr %.1.i.i.i.i280, null
  br i1 %.not.i.i.i.i281, label %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i282, label %.lr.ph.i.i.i.i274, !llvm.loop !22

_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i282: ; preds = %.lr.ph.i.i.i.i274
  %i.fo = icmp eq ptr %.19.i.i.i.i277, %i.dv
  br i1 %i.fo, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit297, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i283

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i283: ; preds = %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i282
  %i.fp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i277, i64 32
  %i.fq = load i16, ptr %i.fp, align 2
  %i.fr = icmp ult i16 %i.fj, %i.fq
  br i1 %i.fr, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit297, label %.lr.ph.i.i.i.i.i284

.lr.ph.i.i.i.i.i284:                              ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i283, %.lr.ph.i.i.i.i.i284
  %.012.i.i.i.i.i285 = phi ptr [ %.1.i.i.i.i.i290, %.lr.ph.i.i.i.i.i284 ], [ %i.fk, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i283 ] ; 3 uses
  %.0811.i.i.i.i.i286 = phi ptr [ %.19.i.i.i.i.i287, %.lr.ph.i.i.i.i.i284 ], [ %i.dv, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i283 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i285, i64 32
  %i.ft = load i16, ptr %i.fs, align 2
  %i.fu = icmp ult i16 %i.ft, %i.fj               ; 2 uses
  %.19.i.i.i.i.i287 = select i1 %i.fu, ptr %.0811.i.i.i.i.i286, ptr %.012.i.i.i.i.i285 ; 5 uses
  %.1.in.v.i.i.i.i.i288 = select i1 %i.fu, i64 24, i64 16
  %.1.in.i.i.i.i.i289 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i285, i64 %.1.in.v.i.i.i.i.i288
  %.1.i.i.i.i.i290 = load ptr, ptr %.1.in.i.i.i.i.i289, align 8 ; 2 uses
  %.not.i.i.i.i.i291 = icmp eq ptr %.1.i.i.i.i.i290, null
  br i1 %.not.i.i.i.i.i291, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i292, label %.lr.ph.i.i.i.i.i284, !llvm.loop !22

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i292: ; preds = %.lr.ph.i.i.i.i.i284
  %i.fv = icmp eq ptr %.19.i.i.i.i.i287, %i.dv
  br i1 %i.fv, label %.critedge.i.i296, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i292
  %i.fw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i287, i64 32
  %i.fx = load i16, ptr %i.fw, align 2
  %i.fy = icmp ult i16 %i.fj, %i.fx
  br i1 %i.fy, label %.critedge.i.i296, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i293

.critedge.i.i296:                                 ; preds = %bb.ai, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i292
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.b, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.fz = call ptr @_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ds, ptr %.19.i.i.i.i.i287, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i293

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i293: ; preds = %.critedge.i.i296, %bb.ai
  %.sroa.06.0.i.i294 = phi ptr [ %i.fz, %.critedge.i.i296 ], [ %.19.i.i.i.i.i287, %bb.ai ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i294, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8
  br label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit297

_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit297: ; preds = %bb.ah, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i282, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i283, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i293
  %.0.i295 = phi ptr [ %i.gb, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i293 ], [ null, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i283 ], [ null, %bb.ah ], [ null, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i282 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit297
  %i.gc = phi ptr [ %.0.i295, %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit297 ], [ null, %bb.ag ] ; 2 uses
  %.not216 = icmp eq ptr %i.bn, null              ; 3 uses
  br i1 %.not216, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.ge = load i16, ptr %i.gd, align 2            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.ge, ptr %i.a, align 2
  %i.gf = load ptr, ptr %i.dt, align 8            ; 3 uses
  %.not10.i.i.i.i298 = icmp eq ptr %i.gf, null
  br i1 %.not10.i.i.i.i298, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit322, label %.lr.ph.i.i.i.i299

.lr.ph.i.i.i.i299:                                ; preds = %bb.ak, %.lr.ph.i.i.i.i299
  %.012.i.i.i.i300 = phi ptr [ %.1.i.i.i.i305, %.lr.ph.i.i.i.i299 ], [ %i.gf, %bb.ak ] ; 3 uses
  %.0811.i.i.i.i301 = phi ptr [ %.19.i.i.i.i302, %.lr.ph.i.i.i.i299 ], [ %i.dv, %bb.ak ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i300, i64 32
  %i.gh = load i16, ptr %i.gg, align 2
  %i.gi = icmp ult i16 %i.gh, %i.ge               ; 2 uses
  %.19.i.i.i.i302 = select i1 %i.gi, ptr %.0811.i.i.i.i301, ptr %.012.i.i.i.i300 ; 3 uses
  %.1.in.v.i.i.i.i303 = select i1 %i.gi, i64 24, i64 16
  %.1.in.i.i.i.i304 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i300, i64 %.1.in.v.i.i.i.i303
  %.1.i.i.i.i305 = load ptr, ptr %.1.in.i.i.i.i304, align 8 ; 2 uses
  %.not.i.i.i.i306 = icmp eq ptr %.1.i.i.i.i305, null
  br i1 %.not.i.i.i.i306, label %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i307, label %.lr.ph.i.i.i.i299, !llvm.loop !22

_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i307: ; preds = %.lr.ph.i.i.i.i299
  %i.gj = icmp eq ptr %.19.i.i.i.i302, %i.dv
  br i1 %i.gj, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit322, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i308

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i308: ; preds = %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i307
  %i.gk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i302, i64 32
  %i.gl = load i16, ptr %i.gk, align 2
  %i.gm = icmp ult i16 %i.ge, %i.gl
  br i1 %i.gm, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit322, label %.lr.ph.i.i.i.i.i309

.lr.ph.i.i.i.i.i309:                              ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i308, %.lr.ph.i.i.i.i.i309
  %.012.i.i.i.i.i310 = phi ptr [ %.1.i.i.i.i.i315, %.lr.ph.i.i.i.i.i309 ], [ %i.gf, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i308 ] ; 3 uses
  %.0811.i.i.i.i.i311 = phi ptr [ %.19.i.i.i.i.i312, %.lr.ph.i.i.i.i.i309 ], [ %i.dv, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i308 ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i310, i64 32
  %i.go = load i16, ptr %i.gn, align 2
  %i.gp = icmp ult i16 %i.go, %i.ge               ; 2 uses
  %.19.i.i.i.i.i312 = select i1 %i.gp, ptr %.0811.i.i.i.i.i311, ptr %.012.i.i.i.i.i310 ; 5 uses
  %.1.in.v.i.i.i.i.i313 = select i1 %i.gp, i64 24, i64 16
  %.1.in.i.i.i.i.i314 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i310, i64 %.1.in.v.i.i.i.i.i313
  %.1.i.i.i.i.i315 = load ptr, ptr %.1.in.i.i.i.i.i314, align 8 ; 2 uses
  %.not.i.i.i.i.i316 = icmp eq ptr %.1.i.i.i.i.i315, null
  br i1 %.not.i.i.i.i.i316, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i317, label %.lr.ph.i.i.i.i.i309, !llvm.loop !22

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i317: ; preds = %.lr.ph.i.i.i.i.i309
  %i.gq = icmp eq ptr %.19.i.i.i.i.i312, %i.dv
  br i1 %i.gq, label %.critedge.i.i321, label %bb.al

bb.al:                                            ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i317
  %i.gr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i312, i64 32
  %i.gs = load i16, ptr %i.gr, align 2
  %i.gt = icmp ult i16 %i.ge, %i.gs
  br i1 %i.gt, label %.critedge.i.i321, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i318

.critedge.i.i321:                                 ; preds = %bb.al, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i317
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.a, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.gu = call ptr @_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ds, ptr %.19.i.i.i.i.i312, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i318

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i318: ; preds = %.critedge.i.i321, %bb.al
  %.sroa.06.0.i.i319 = phi ptr [ %i.gu, %.critedge.i.i321 ], [ %.19.i.i.i.i.i312, %bb.al ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i319, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8
  br label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit322

_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit322: ; preds = %bb.ak, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i307, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i308, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i318
  %.0.i320 = phi ptr [ %i.gw, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i318 ], [ null, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i308 ], [ null, %bb.ak ], [ null, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i307 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit322
  %i.gx = phi ptr [ %.0.i320, %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit322 ], [ null, %bb.aj ] ; 2 uses
  %i.gy = load i32, ptr %i.bq, align 4            ; 2 uses
  %i.gz = icmp ult i32 %i.gy, 28
  br i1 %i.gz, label %switch.lookup, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit

switch.lookup:                                    ; preds = %bb.am
  %i.ha = zext nneg i32 %i.gy to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.ha
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit:      ; preds = %bb.am, %switch.lookup
  %.0.i.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.am ] ; 3 uses
  br i1 %.not213, label %bb.an, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit324

bb.an:                                            ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.hc = load i32, ptr %i.hb, align 4            ; 2 uses
  %i.hd = icmp ult i32 %i.hc, 28
  br i1 %i.hd, label %switch.lookup521, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit324

switch.lookup521:                                 ; preds = %bb.an
  %i.he = zext nneg i32 %i.hc to i64
  %switch.gep522 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.he
  %switch.load523 = load i8, ptr %switch.gep522, align 1
  %switch.ext524 = zext i8 %switch.load523 to i64
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit324

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit324:   ; preds = %bb.an, %switch.lookup521, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit
  %i.hf = phi i64 [ 0, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit ], [ %switch.ext524, %switch.lookup521 ], [ 0, %bb.an ] ; 3 uses
  br i1 %.not215, label %bb.ao, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit326

bb.ao:                                            ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit324
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.hh = load i32, ptr %i.hg, align 4            ; 2 uses
  %i.hi = icmp ult i32 %i.hh, 28
  br i1 %i.hi, label %switch.lookup524, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit326

switch.lookup524:                                 ; preds = %bb.ao
  %i.hj = zext nneg i32 %i.hh to i64
  %switch.gep526 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.hj
  %switch.load527 = load i8, ptr %switch.gep526, align 1
  %switch.ext528 = zext i8 %switch.load527 to i64
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit326

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit326:   ; preds = %bb.ao, %switch.lookup524, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit324
  %i.hk = phi i64 [ 0, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit324 ], [ %switch.ext528, %switch.lookup524 ], [ 0, %bb.ao ] ; 3 uses
  br i1 %.not216, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328, label %bb.ap

bb.ap:                                            ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit326
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.hm = load i32, ptr %i.hl, align 4            ; 2 uses
  %i.hn = icmp ult i32 %i.hm, 28
  br i1 %i.hn, label %switch.lookup527, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328

switch.lookup527:                                 ; preds = %bb.ap
  %i.ho = zext nneg i32 %i.hm to i64
  %switch.gep530 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.ho
  %switch.load531 = load i8, ptr %switch.gep530, align 1
  %switch.ext532 = zext i8 %switch.load531 to i64
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328:   ; preds = %bb.ap, %switch.lookup527, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit326
  %i.hp = phi i64 [ 0, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit326 ], [ %switch.ext532, %switch.lookup527 ], [ 0, %bb.ap ] ; 3 uses
  %i.hq = load i16, ptr %i.dq, align 2
  %i.hr = load ptr, ptr %i.ai, align 8            ; 5 uses
  %i.hs = load ptr, ptr %i.ak, align 8            ; 5 uses
  %.not10.i = icmp eq ptr %i.hr, %i.hs            ; 2 uses
  br i1 %.not10.i, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread, label %.lr.ph.i329

.lr.ph.i329:                                      ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328, %bb.ar
  %.012.i = phi i32 [ %.1.i, %bb.ar ], [ 0, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328 ] ; 2 uses
  %.sroa.07.011.i = phi ptr [ %i.ib, %bb.ar ], [ %i.hr, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328 ] ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 2
  %i.hu = load i16, ptr %i.ht, align 2
  %i.hv = icmp eq i16 %i.hu, %i.hq
  br i1 %i.hv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i329
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 8
  %i.hx = load i32, ptr %i.hw, align 4            ; 2 uses
  %i.hy = icmp ult i32 %i.hx, 28
  br i1 %i.hy, label %switch.lookup530, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i

switch.lookup530:                                 ; preds = %bb.aq
  %i.hz = zext nneg i32 %i.hx to i64
  %switch.gep534 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.hz
  %switch.load535 = load i8, ptr %switch.gep534, align 1
  %switch.ext536 = zext i8 %switch.load535 to i32
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i:    ; preds = %bb.aq, %switch.lookup530
  %.0.i.i.i = phi i32 [ %switch.ext536, %switch.lookup530 ], [ 0, %bb.aq ]
  %i.ia = add i32 %.0.i.i.i, %.012.i
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i, %.lr.ph.i329
  %.1.i = phi i32 [ %i.ia, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i ], [ %.012.i, %.lr.ph.i329 ] ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 16 ; 2 uses
  %.not.i330 = icmp eq ptr %i.ib, %i.hs
  br i1 %.not.i330, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit, label %.lr.ph.i329

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit:  ; preds = %bb.ar
  br i1 %.not213, label %bb.as, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread: ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328
  %brmerge = or i1 %.not213, %.not215
  br i1 %brmerge, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360

bb.as:                                            ; preds = %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.id = load i16, ptr %i.ic, align 2
  br label %.lr.ph.i332

.lr.ph.i332:                                      ; preds = %bb.as, %bb.au
  %.012.i333 = phi i32 [ %.1.i335, %bb.au ], [ 0, %bb.as ] ; 2 uses
  %.sroa.07.011.i334 = phi ptr [ %i.im, %bb.au ], [ %i.hr, %bb.as ] ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i334, i64 2
  %i.if = load i16, ptr %i.ie, align 2
  %i.ig = icmp eq i16 %i.if, %i.id
  br i1 %i.ig, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i332
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i334, i64 8
  %i.ii = load i32, ptr %i.ih, align 4            ; 2 uses
  %i.ij = icmp ult i32 %i.ii, 28
  br i1 %i.ij, label %switch.lookup533, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i338

switch.lookup533:                                 ; preds = %bb.at
  %i.ik = zext nneg i32 %i.ii to i64
  %switch.gep538 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.ik
  %switch.load539 = load i8, ptr %switch.gep538, align 1
  %switch.ext540 = zext i8 %switch.load539 to i32
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i338

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i338: ; preds = %bb.at, %switch.lookup533
  %.0.i.i.i339 = phi i32 [ %switch.ext540, %switch.lookup533 ], [ 0, %bb.at ]
  %i.il = add i32 %.0.i.i.i339, %.012.i333
  br label %bb.au

bb.au:                                            ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i338, %.lr.ph.i332
  %.1.i335 = phi i32 [ %i.il, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i338 ], [ %.012.i333, %.lr.ph.i332 ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i334, i64 16 ; 2 uses
  %.not.i336 = icmp eq ptr %i.im, %i.hs
  br i1 %.not.i336, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340.loopexit, label %.lr.ph.i332

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340.loopexit: ; preds = %bb.au
  %i.in = zext i32 %.1.i335 to i64
  br label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340: ; preds = %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340.loopexit, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit
  %i.io = phi i64 [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit ], [ %i.in, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340.loopexit ] ; 2 uses
  br i1 %.not215, label %bb.av, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350

bb.av:                                            ; preds = %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340
  %i.ip = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.iq = load i16, ptr %i.ip, align 2
  br label %.lr.ph.i342

.lr.ph.i342:                                      ; preds = %bb.av, %bb.ax
  %.012.i343 = phi i32 [ %.1.i345, %bb.ax ], [ 0, %bb.av ] ; 2 uses
  %.sroa.07.011.i344 = phi ptr [ %i.iz, %bb.ax ], [ %i.hr, %bb.av ] ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i344, i64 2
  %i.is = load i16, ptr %i.ir, align 2
  %i.it = icmp eq i16 %i.is, %i.iq
  br i1 %i.it, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph.i342
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i344, i64 8
  %i.iv = load i32, ptr %i.iu, align 4            ; 2 uses
  %i.iw = icmp ult i32 %i.iv, 28
  br i1 %i.iw, label %switch.lookup536, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i348

switch.lookup536:                                 ; preds = %bb.aw
  %i.ix = zext nneg i32 %i.iv to i64
  %switch.gep542 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.ix
  %switch.load543 = load i8, ptr %switch.gep542, align 1
  %switch.ext544 = zext i8 %switch.load543 to i32
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i348

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i348: ; preds = %bb.aw, %switch.lookup536
  %.0.i.i.i349 = phi i32 [ %switch.ext544, %switch.lookup536 ], [ 0, %bb.aw ]
  %i.iy = add i32 %.0.i.i.i349, %.012.i343
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i348, %.lr.ph.i342
  %.1.i345 = phi i32 [ %i.iy, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i348 ], [ %.012.i343, %.lr.ph.i342 ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i344, i64 16 ; 2 uses
  %.not.i346 = icmp eq ptr %i.iz, %i.hs
  br i1 %.not.i346, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350.loopexit, label %.lr.ph.i342

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350.loopexit: ; preds = %bb.ax
  %i.ja = zext i32 %.1.i345 to i64
  br label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350: ; preds = %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350.loopexit, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340
  %i.jb = phi i64 [ %i.io, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350.loopexit ], [ %i.io, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340 ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread ] ; 3 uses
  %.shrunk = phi i32 [ %.1.i, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350.loopexit ], [ %.1.i, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340 ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread ] ; 3 uses
  %i.jc = phi i64 [ %i.ja, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350.loopexit ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340 ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread ] ; 3 uses
  br i1 %.not216, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360, label %bb.ay

bb.ay:                                            ; preds = %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.je = load i16, ptr %i.jd, align 2
  br i1 %.not10.i, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360, label %.lr.ph.i352

.lr.ph.i352:                                      ; preds = %bb.ay, %bb.ba
  %.012.i353 = phi i32 [ %.1.i355, %bb.ba ], [ 0, %bb.ay ] ; 2 uses
  %.sroa.07.011.i354 = phi ptr [ %i.jn, %bb.ba ], [ %i.hr, %bb.ay ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i354, i64 2
  %i.jg = load i16, ptr %i.jf, align 2
  %i.jh = icmp eq i16 %i.jg, %i.je
  br i1 %i.jh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i352
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i354, i64 8
  %i.jj = load i32, ptr %i.ji, align 4            ; 2 uses
  %i.jk = icmp ult i32 %i.jj, 28
  br i1 %i.jk, label %switch.lookup539, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i358

switch.lookup539:                                 ; preds = %bb.az
  %i.jl = zext nneg i32 %i.jj to i64
  %switch.gep546 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.jl
  %switch.load547 = load i8, ptr %switch.gep546, align 1
  %switch.ext548 = zext i8 %switch.load547 to i32
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i358

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i358: ; preds = %bb.az, %switch.lookup539
  %.0.i.i.i359 = phi i32 [ %switch.ext548, %switch.lookup539 ], [ 0, %bb.az ]
  %i.jm = add i32 %.0.i.i.i359, %.012.i353
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i358, %.lr.ph.i352
  %.1.i355 = phi i32 [ %i.jm, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i358 ], [ %.012.i353, %.lr.ph.i352 ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i354, i64 16 ; 2 uses
  %.not.i356 = icmp eq ptr %i.jn, %i.hs
  br i1 %.not.i356, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360.loopexit, label %.lr.ph.i352

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360.loopexit: ; preds = %bb.ba
  %i.jo = zext i32 %.1.i355 to i64
  br label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360: ; preds = %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread, %bb.ay, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360.loopexit, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350
  %i.jp = phi i64 [ %i.jc, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360.loopexit ], [ %i.jc, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350 ], [ %i.jc, %bb.ay ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread ] ; 3 uses
  %.shrunk515 = phi i32 [ %.shrunk, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360.loopexit ], [ %.shrunk, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350 ], [ %.shrunk, %bb.ay ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread ]
  %i.jq = phi i64 [ %i.jb, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360.loopexit ], [ %i.jb, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350 ], [ %i.jb, %bb.ay ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread ] ; 3 uses
  %i.jr = phi i64 [ %i.jo, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360.loopexit ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350 ], [ 0, %bb.ay ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread ] ; 3 uses
  %i.js = zext i32 %.shrunk515 to i64             ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = icmp ne ptr %i.ju, %i.jw
  %.not217 = icmp eq ptr %i.fh, null              ; 4 uses
  br i1 %.not217, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360
  %i.jy = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dk) #30 ; 2 uses
  %i.jz = icmp eq i32 %i.cb, 0
  br i1 %i.jz, label %.loopexit420, label %.loopexit420.loopexit

.loopexit420.loopexit:                            ; preds = %bb.bb
  %i.ka = add nsw i64 %i.dk, -12                  ; 2 uses
  %i.kb = urem i64 %i.ka, 12
  %i.kc = sub nuw nsw i64 %i.ka, %i.kb
  %i.kd = add nsw i64 %i.kc, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jy, i8 0, i64 %i.kd, i1 false)
  br label %.loopexit420

.loopexit420:                                     ; preds = %.loopexit420.loopexit, %bb.bb
  %i.ke = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.jy, ptr %i.ke, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit420, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360
  %.not218 = icmp eq ptr %i.gc, null
  br i1 %.not218, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kf = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4            ; 2 uses
  %.off = add i32 %i.kg, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit, label %bb.be

_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit: ; preds = %bb.bd
  %i.kh = icmp eq i32 %i.kg, 2
  %i.ki = select i1 %i.kh, i32 3, i32 2
  %i.kj = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  store i32 %i.ki, ptr %i.kj, align 8
  %i.kk = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dk) #30 ; 2 uses
  %i.kl = icmp eq i32 %i.cb, 0
  br i1 %i.kl, label %.loopexit419, label %.loopexit419.loopexit

.loopexit419.loopexit:                            ; preds = %_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit
  %i.km = add nsw i64 %i.dk, -12                  ; 2 uses
  %i.kn = urem i64 %i.km, 12
  %i.ko = sub nuw nsw i64 %i.km, %i.kn
  %i.kp = add nsw i64 %i.ko, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kk, i8 0, i64 %i.kp, i1 false)
  br label %.loopexit419

.loopexit419:                                     ; preds = %.loopexit419.loopexit, %_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit
  %i.kq = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store ptr %i.kk, ptr %i.kq, align 8
  br label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.kr = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ks = load i32, ptr %i.kf, align 4, !noalias !39
  call void @_ZN6Assimp4Ogre13VertexElement12TypeToStringB5cxx11ENS1_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i32 noundef %i.ks)
  invoke void @_ZN6Assimp6Logger4warnIJRA24_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA45_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.kr, ptr noundef nonnull align 1 dereferenceable(24) @.str.43, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 1 dereferenceable(45) @.str.44)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.kt = load ptr, ptr %12, align 8              ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bf
  %i.kw = load i64, ptr %i.ku, align 8
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.ky = landingpad { ptr, i32 }
          cleanup
  %i.kz = load ptr, ptr %12, align 8              ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362: ; preds = %bb.bg
  %i.lc = load i64, ptr %i.la, align 8
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %_ZN6aiFaceD2Ev.exit373

bb.bh:                                            ; preds = %.loopexit419, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bc
  %.0179 = phi ptr [ %i.gc, %.loopexit419 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %bb.bc ] ; 13 uses
  %.not219 = icmp eq ptr %i.gx, null
  br i1 %.not219, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.le = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4            ; 2 uses
  %.off231 = add i32 %i.lf, -1
  %switch232 = icmp ult i32 %.off231, 2
  br i1 %switch232, label %_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit366, label %bb.bj

_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit366: ; preds = %bb.bi
  %i.lg = icmp eq i32 %i.lf, 2
  %i.lh = select i1 %i.lg, i32 3, i32 2
  %i.li = getelementptr inbounds nuw i8, ptr %i.j, i64 180
  store i32 %i.lh, ptr %i.li, align 4
  %i.lj = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dk) #30 ; 2 uses
  %i.lk = icmp eq i32 %i.cb, 0
  br i1 %i.lk, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit366
  %i.ll = add nsw i64 %i.dk, -12                  ; 2 uses
  %i.lm = urem i64 %i.ll, 12
  %i.ln = sub nuw nsw i64 %i.ll, %i.lm
  %i.lo = add nsw i64 %i.ln, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lj, i8 0, i64 %i.lo, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit366
  %i.lp = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store ptr %i.lj, ptr %i.lp, align 8
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.lq = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.lr = load i32, ptr %i.le, align 4, !noalias !42
  call void @_ZN6Assimp4Ogre13VertexElement12TypeToStringB5cxx11ENS1_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i32 noundef %i.lr)
  invoke void @_ZN6Assimp6Logger4warnIJRA24_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA45_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.lq, ptr noundef nonnull align 1 dereferenceable(24) @.str.43, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 1 dereferenceable(45) @.str.44)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ls = load ptr, ptr %13, align 8              ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367: ; preds = %bb.bk
  %i.lv = load i64, ptr %i.lt, align 8
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.lx = landingpad { ptr, i32 }
          cleanup
  %i.ly = load ptr, ptr %13, align 8              ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ma = icmp eq ptr %i.ly, %i.lz
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370: ; preds = %bb.bl
  %i.mb = load i64, ptr %i.lz, align 8
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZN6aiFaceD2Ev.exit373

bb.bm:                                            ; preds = %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, %bb.bh
  %.0181 = phi ptr [ %i.gx, %.loopexit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369 ], [ null, %bb.bh ] ; 13 uses
  %i.md = icmp ne ptr %.0179, null                ; 2 uses
  br i1 %i.md, label %bb.bn, label %bb.bo
end_hunk_2
