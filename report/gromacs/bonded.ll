Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/bonded?download=true
inline.NumInlined: 1758
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumUnrolled: 100
begin_hunk_0
%union.anon = type { i64, [8 x i8] }
%"struct.gmx::EnumerationArray.42" = type { [4 x %"struct.gmx::EnumerationArray.43"] }
%"struct.gmx::EnumerationArray.43" = type { [95 x %"struct.(anonymous namespace)::BondedInteractions"] }
%"struct.(anonymous namespace)::BondedInteractions" = type { ptr, i32 }
%"class.gmx::ArrayRef" = type { %"struct.gmx::ArrayRefIter", %"struct.gmx::ArrayRefIter" }
%"struct.gmx::ArrayRefIter" = type { ptr }
%"class.gmx::BasicVector" = type { [3 x float] }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.45" }
%"struct.std::_Head_base.45" = type { ptr }

$_ZN3gmx16EnumerationArrayI18BondedKernelFlavorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_4EED2Ev = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_Z10do_dih_fupIL18BondedKernelFlavor0EEviiiifPfS1_S1_S1_S1_PA4_fPA3_fPK5t_pbcPA3_Kfiii = comdat any

$_Z10do_dih_fupIL18BondedKernelFlavor1EEviiiifPfS1_S1_S1_S1_PA4_fPA3_fPK5t_pbcPA3_Kfiii = comdat any

$_Z10do_dih_fupIL18BondedKernelFlavor2EEviiiifPfS1_S1_S1_S1_PA4_fPA3_fPK5t_pbcPA3_Kfiii = comdat any

$_Z10do_dih_fupIL18BondedKernelFlavor3EEviiiifPfS1_S1_S1_S1_PA4_fPA3_fPK5t_pbcPA3_Kfiii = comdat any

@_Z27c_bondedKernelFlavorStringsB5cxx11 = global %"struct.gmx::EnumerationArray" zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"forces, using SIMD when available\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"forces, not using SIMD\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"forces, virial, and energy (ie. not using SIMD)\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"forces and energy (ie. not using SIMD)\00", align 1
@__dso_handle = external hidden global i8
@_ZN12_GLOBAL__N_137c_bondedInteractionFunctionsPerFlavorE = internal unnamed_addr constant %"struct.gmx::EnumerationArray.42" { [4 x %"struct.gmx::EnumerationArray.43"] [%"struct.gmx::EnumerationArray.43" { [95 x %"struct.(anonymous namespace)::BondedInteractions"] [%"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15bondsIL18BondedKernelFlavor0EEENSt9enable_ifIXeqT_LS1_0EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 60 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_18g96bondsIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 60 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_111morse_bondsIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 82 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_111cubic_bondsIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 83 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15bondsIL18BondedKernelFlavor0EEENSt9enable_ifIXeqT_LS1_0EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 60 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_110FENE_bondsIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 62 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19tab_bondsIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 63 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19tab_bondsIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 63 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_115restraint_bondsIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 64 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16anglesIL18BondedKernelFlavor0EEENSt9enable_ifIXeqT_LS1_0EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19g96anglesIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_111restranglesIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113linear_anglesIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_115cross_bond_bondIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 114 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_116cross_bond_angleIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 115 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_112urey_bradleyIL18BondedKernelFlavor0EEENSt9enable_ifIXeqT_LS1_0EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 113 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_114quartic_anglesIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 68 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_110tab_anglesIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 69 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15pdihsIL18BondedKernelFlavor0EEENSt9enable_ifIXeqT_LS1_0EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 70 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16rbdihsIL18BondedKernelFlavor0EEENSt9enable_ifIXeqT_LS1_0EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 72 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19restrdihsIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 70 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_17cbtdihsIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 72 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16rbdihsIL18BondedKernelFlavor0EEENSt9enable_ifIXeqT_LS1_0EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 73 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15idihsIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 71 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15pdihsIL18BondedKernelFlavor0EEENSt9enable_ifIXeqT_LS1_0EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 71 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_18tab_dihsIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 74 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 112 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 46 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 46 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 46 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_18polarizeIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 85 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19water_polIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 87 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19thole_polIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 88 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_115anharm_polarizeIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 86 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_Z9ta_disresiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS4_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 75 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_Z6oriresiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS4_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 76 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16angresIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 80 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_17angreszIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 81 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16dihresIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 77 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }] }, %"struct.gmx::EnumerationArray.43" { [95 x %"struct.(anonymous namespace)::BondedInteractions"] [%"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15bondsIL18BondedKernelFlavor1EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 60 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_18g96bondsIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 60 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_111morse_bondsIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 82 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_111cubic_bondsIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 83 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15bondsIL18BondedKernelFlavor1EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 60 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_110FENE_bondsIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 62 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19tab_bondsIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 63 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19tab_bondsIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 63 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_115restraint_bondsIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 64 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16anglesIL18BondedKernelFlavor1EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19g96anglesIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_111restranglesIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113linear_anglesIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_115cross_bond_bondIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 114 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_116cross_bond_angleIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 115 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_112urey_bradleyIL18BondedKernelFlavor1EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 113 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_114quartic_anglesIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 68 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_110tab_anglesIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 69 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15pdihsIL18BondedKernelFlavor1EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 70 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16rbdihsIL18BondedKernelFlavor1EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 72 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19restrdihsIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 70 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_17cbtdihsIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 72 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16rbdihsIL18BondedKernelFlavor1EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 73 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15idihsIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 71 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15pdihsIL18BondedKernelFlavor1EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 71 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_18tab_dihsIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 74 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 112 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 46 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 46 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 46 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_18polarizeIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 85 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19water_polIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 87 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19thole_polIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 88 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_115anharm_polarizeIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 86 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_Z9ta_disresiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS4_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 75 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_Z6oriresiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS4_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 76 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16angresIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 80 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_17angreszIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 81 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16dihresIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 77 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }] }, %"struct.gmx::EnumerationArray.43" { [95 x %"struct.(anonymous namespace)::BondedInteractions"] [%"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15bondsIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 60 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_18g96bondsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 60 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_111morse_bondsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 82 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_111cubic_bondsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 83 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15bondsIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 60 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_110FENE_bondsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 62 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19tab_bondsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 63 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19tab_bondsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 63 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_115restraint_bondsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 64 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16anglesIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19g96anglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_111restranglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113linear_anglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_115cross_bond_bondIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 114 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_116cross_bond_angleIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 115 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_112urey_bradleyIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 113 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_114quartic_anglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 68 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_110tab_anglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 69 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15pdihsIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 70 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16rbdihsIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 72 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19restrdihsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 70 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_17cbtdihsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 72 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16rbdihsIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 73 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15idihsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 71 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15pdihsIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 71 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_18tab_dihsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 74 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 112 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 46 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 46 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 46 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_18polarizeIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 85 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19water_polIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 87 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19thole_polIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 88 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_115anharm_polarizeIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 86 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_Z9ta_disresiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS4_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 75 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_Z6oriresiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS4_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 76 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16angresIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 80 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_17angreszIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 81 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16dihresIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 77 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }] }, %"struct.gmx::EnumerationArray.43" { [95 x %"struct.(anonymous namespace)::BondedInteractions"] [%"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15bondsIL18BondedKernelFlavor3EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 60 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_18g96bondsIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 60 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_111morse_bondsIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 82 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_111cubic_bondsIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 83 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15bondsIL18BondedKernelFlavor3EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 60 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_110FENE_bondsIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 62 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19tab_bondsIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 63 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19tab_bondsIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 63 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_115restraint_bondsIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 64 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16anglesIL18BondedKernelFlavor3EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19g96anglesIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_111restranglesIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113linear_anglesIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_115cross_bond_bondIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 114 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_116cross_bond_angleIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 115 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_112urey_bradleyIL18BondedKernelFlavor3EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 113 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_114quartic_anglesIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 68 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_110tab_anglesIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 69 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15pdihsIL18BondedKernelFlavor3EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 70 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16rbdihsIL18BondedKernelFlavor3EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 72 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19restrdihsIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 70 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_17cbtdihsIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 72 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16rbdihsIL18BondedKernelFlavor3EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 73 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15idihsIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 71 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15pdihsIL18BondedKernelFlavor3EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 71 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_18tab_dihsIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 74 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 112 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 46 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 46 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 46 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_18polarizeIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 85 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19water_polIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 87 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19thole_polIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 88 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_115anharm_polarizeIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 86 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_Z9ta_disresiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS4_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 75 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_Z6oriresiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS4_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 76 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16angresIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 80 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_17angreszIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 81 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16dihresIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 77 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }] }] }, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"impl\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"*** you are using a not implemented function\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/listed_forces/bonded.cpp\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"r^2 (%f) >= bm^2 (%f) in FENE bond between atoms %d and %d\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"bond\00", align 1
@.str.10 = private unnamed_addr constant [125 x i8] c"A tabulated %s interaction table number %d is out of the table range: r %f, between table indices %d and %d, table length %d\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"dihedral\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"Sorry, type = %d, type0 = %d, file = %s, line = %d\00", align 1
@_ZN12_GLOBAL__N_128c_bondedInteractionFunctionsIL18BondedKernelFlavor2EEE = internal unnamed_addr constant %"struct.gmx::EnumerationArray.43" { [95 x %"struct.(anonymous namespace)::BondedInteractions"] [%"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15bondsIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 60 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_18g96bondsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 60 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_111morse_bondsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 82 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_111cubic_bondsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 83 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15bondsIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 60 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_110FENE_bondsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 62 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19tab_bondsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 63 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19tab_bondsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 63 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_115restraint_bondsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 64 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16anglesIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19g96anglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_111restranglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113linear_anglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 66 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_115cross_bond_bondIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 114 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_116cross_bond_angleIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 115 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_112urey_bradleyIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 113 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_114quartic_anglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 68 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_110tab_anglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 69 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15pdihsIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 70 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16rbdihsIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 72 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19restrdihsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 70 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_17cbtdihsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 72 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16rbdihsIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 73 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15idihsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 71 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_15pdihsIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 71 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_18tab_dihsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 74 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 112 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 46 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 46 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 46 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_18polarizeIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 85 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19water_polIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 87 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_19thole_polIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 88 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_115anharm_polarizeIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 86 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_Z9ta_disresiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS4_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 75 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_Z6oriresiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS4_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 76 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16angresIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 80 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_17angreszIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 81 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_16dihresIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 77 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }, %"struct.(anonymous namespace)::BondedInteractions" { ptr @_ZN12_GLOBAL__N_113unimplementedEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS5_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi, i32 -1 }] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_bonded.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16EnumerationArrayI18BondedKernelFlavorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_4EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !15
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !15
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.q = load i64, ptr %i.o, align 8, !tbaa !15
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  %i.s = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.v = load i64, ptr %i.t, align 8, !tbaa !15
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %8) local_unnamed_addr #6 {
bb.a:
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, ptr noundef %4)
  store i32 %i.a, ptr %7, align 4, !tbaa !16
  %i.b = tail call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %3, ptr noundef %2, ptr noundef %1, ptr noundef %5)
  %i.c = load <2 x float>, ptr %5, align 4, !tbaa !18
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre21 = load float, ptr %.phi.trans.insert20, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit17

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !18
  %i.h = fsub float %i.e, %i.g
  %i.i = load <2 x float>, ptr %0, align 4, !tbaa !18
  %i.j = load <2 x float>, ptr %1, align 4, !tbaa !18
  %i.k = fsub <2 x float> %i.i, %i.j
  store <2 x float> %i.k, ptr %4, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.h, ptr %i.l, align 4, !tbaa !18
  store i32 22, ptr %7, align 4, !tbaa !16
  %i.m = load <2 x float>, ptr %2, align 4, !tbaa !18
  %i.n = load <2 x float>, ptr %1, align 4, !tbaa !18
  %i.o = fsub <2 x float> %i.m, %i.n              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !18
  %i.r = load float, ptr %i.f, align 4, !tbaa !18
  %i.s = fsub float %i.q, %i.r                    ; 2 uses
  store <2 x float> %i.o, ptr %5, align 4, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.s, ptr %i.t, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit17

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit17: ; preds = %bb.b, %bb.c
  %i.u = phi float [ %.pre21, %bb.b ], [ %i.s, %bb.c ]
  %.0.i16 = phi i32 [ %i.b, %bb.b ], [ 22, %bb.c ]
  %i.v = phi <2 x float> [ %i.c, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  store i32 %.0.i16, ptr %8, align 4, !tbaa !16
  %i.w = load float, ptr %4, align 4, !tbaa !18
  %i.x = fpext float %i.w to double               ; 3 uses
  %i.y = extractelement <2 x float> %i.v, i64 0
  %i.z = fpext float %i.y to double               ; 3 uses
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double 0.000000e+00)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.z, double %i.z, double 0.000000e+00)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !18
  %i.ae = fpext float %i.ad to double             ; 3 uses
  %i.af = extractelement <2 x float> %i.v, i64 1
  %i.ag = fpext float %i.af to double             ; 3 uses
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %i.aa)
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.ab)
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !18
  %i.al = fpext float %i.ak to double             ; 3 uses
  %i.am = fpext float %i.u to double              ; 3 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.al, double %i.al, double %i.ah)
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.ai)
  %i.ap = fmul double %i.an, %i.ao                ; 2 uses
  %i.aq = fcmp ogt double %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.d, label %_ZL9cos_anglePKfS0_.exit

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit17
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.x, double %i.z, double 0.000000e+00)
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ag, double %i.ar)
  %i.at = tail call double @llvm.fmuladd.f64(double %i.al, double %i.am, double %i.as)
  %i.au = tail call nnan double @llvm.sqrt.f64(double %i.ap)
  %i.av = fdiv nnan double 1.000000e+00, %i.au
  %i.aw = fmul double %i.at, %i.av
  %i.ax = fptrunc double %i.aw to float
  br label %_ZL9cos_anglePKfS0_.exit

_ZL9cos_anglePKfS0_.exit:                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit17, %bb.d
  %.026.i = phi float [ %i.ax, %bb.d ], [ 1.000000e+00, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit17 ] ; 3 uses
  %i.ay = fcmp ogt float %.026.i, 1.000000e+00
  %i.az = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.az, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.ay, float 1.000000e+00, float %..026.i ; 2 uses
  store float %.027.i, ptr %6, align 4, !tbaa !18
  %i.ba = tail call noundef float @acosf(float noundef %.027.i) #23
  ret float %i.ba
}

declare noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef float @_Z9dih_anglePKfS0_S0_S0_PK5t_pbcPfS4_S4_S4_S4_PiS5_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef captures(none) initializes((0, 12)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %9, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %10, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %11, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %12) local_unnamed_addr #6 {
bb.a:
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, ptr noundef %5)
  store i32 %i.a, ptr %10, align 4, !tbaa !16
  %i.b = tail call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %1, ptr noundef %6)
  store i32 %i.b, ptr %11, align 4, !tbaa !16
  %i.c = tail call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef %7)
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit34

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !18
  %i.h = fsub float %i.e, %i.g
  %i.i = load <2 x float>, ptr %0, align 4, !tbaa !18
  %i.j = load <2 x float>, ptr %1, align 4, !tbaa !18
  %i.k = fsub <2 x float> %i.i, %i.j
  store <2 x float> %i.k, ptr %5, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.h, ptr %i.l, align 4, !tbaa !18
  store i32 22, ptr %10, align 4, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !18
  %i.o = load float, ptr %i.f, align 4, !tbaa !18
  %i.p = fsub float %i.n, %i.o
  %i.q = load <2 x float>, ptr %2, align 4, !tbaa !18
  %i.r = load <2 x float>, ptr %1, align 4, !tbaa !18
  %i.s = fsub <2 x float> %i.q, %i.r
  store <2 x float> %i.s, ptr %6, align 4, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.p, ptr %i.t, align 4, !tbaa !18
  store i32 22, ptr %11, align 4, !tbaa !16
  %i.u = load float, ptr %i.m, align 4, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !18
  %i.x = fsub float %i.u, %i.w
  %i.y = load <2 x float>, ptr %2, align 4, !tbaa !18
  %i.z = load <2 x float>, ptr %3, align 4, !tbaa !18
  %i.aa = fsub <2 x float> %i.y, %i.z
  store <2 x float> %i.aa, ptr %7, align 4, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.x, ptr %i.ab, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit34

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit34: ; preds = %bb.b, %bb.c
  %.0.i33 = phi i32 [ %i.c, %bb.b ], [ 22, %bb.c ]
  store i32 %.0.i33, ptr %12, align 4, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !18
  %i.ak = fneg float %i.aj
  %i.al = fmul float %i.ah, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.af, float %i.al)
  store float %i.am, ptr %8, align 4, !tbaa !18
  %i.an = load float, ptr %i.ag, align 4, !tbaa !18
  %i.ao = load float, ptr %6, align 4, !tbaa !18
  %i.ap = load float, ptr %5, align 4, !tbaa !18
  %i.aq = load float, ptr %i.ae, align 4, !tbaa !18
  %i.ar = fneg float %i.aq
  %i.as = fmul float %i.ap, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ao, float %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  store float %i.at, ptr %i.au, align 4, !tbaa !18
  %i.av = load float, ptr %5, align 4, !tbaa !18
  %i.aw = load float, ptr %i.ai, align 4, !tbaa !18
  %i.ax = load float, ptr %i.ac, align 4, !tbaa !18
  %i.ay = load float, ptr %6, align 4, !tbaa !18
  %i.az = fneg float %i.ay
  %i.ba = fmul float %i.ax, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.av, float %i.aw, float %i.ba)
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store float %i.bb, ptr %i.bc, align 4, !tbaa !18
  %i.bd = load float, ptr %i.ai, align 4, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !18
  %i.bg = load float, ptr %i.ae, align 4, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !18
  %i.bj = fneg float %i.bi
  %i.bk = fmul float %i.bg, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bf, float %i.bk) ; 5 uses
  store float %i.bl, ptr %9, align 4, !tbaa !18
  %i.bm = load float, ptr %i.ae, align 4, !tbaa !18
  %i.bn = load float, ptr %7, align 4, !tbaa !18
  %i.bo = load float, ptr %6, align 4, !tbaa !18
  %i.bp = load float, ptr %i.be, align 4, !tbaa !18
  %i.bq = fneg float %i.bp
  %i.br = fmul float %i.bo, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bn, float %i.br) ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.bs, ptr %i.bt, align 4, !tbaa !18
  %i.bu = load float, ptr %6, align 4, !tbaa !18
  %i.bv = load float, ptr %i.bh, align 4, !tbaa !18
  %i.bw = load float, ptr %i.ai, align 4, !tbaa !18
  %i.bx = load float, ptr %7, align 4, !tbaa !18
  %i.by = fneg float %i.bx
  %i.bz = fmul float %i.bw, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bv, float %i.bz) ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.ca, ptr %i.cb, align 4, !tbaa !18
  %i.cc = load float, ptr %i.au, align 4, !tbaa !18 ; 3 uses
  %i.cd = load float, ptr %i.bc, align 4, !tbaa !18 ; 3 uses
  %i.ce = fneg float %i.bs
  %i.cf = fmul float %i.cd, %i.ce
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.ca, float %i.cf) ; 2 uses
  %i.ch = load float, ptr %8, align 4, !tbaa !18  ; 3 uses
  %i.ci = fneg float %i.ca
  %i.cj = fmul float %i.ch, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.bl, float %i.cj) ; 2 uses
  %i.cl = fneg float %i.bl
  %i.cm = fmul float %i.cc, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.bs, float %i.cm) ; 2 uses
  %i.co = fmul float %i.ck, %i.ck
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.co)
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.cp)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cq)
  %i.cr = fmul float %i.bs, %i.cc
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.bl, float %i.cr)
  %i.ct = tail call noundef float @llvm.fmuladd.f32(float %i.cd, float %i.ca, float %i.cs)
  %i.cu = tail call noundef float @atan2f(float noundef %sqrt.i.i, float noundef %i.ct) #23 ; 2 uses
  %i.cv = load float, ptr %5, align 4, !tbaa !18
  %i.cw = load float, ptr %i.ac, align 4, !tbaa !18
  %i.cx = fmul float %i.bs, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.bl, float %i.cx)
  %i.cz = load float, ptr %i.ag, align 4, !tbaa !18
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.cz, float %i.ca, float %i.cy)
  %i.db = fcmp olt float %i.da, 0.000000e+00
  %i.dc = fneg float %i.cu
  %i.dd = select i1 %i.db, float %i.dc, float %i.cu
  ret float %i.dd
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef float @_Z9cmap_dihsiPKiPK9t_iparamsPK10gmx_cmap_tPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(address_is_null) %6, ptr noundef %7, float noundef %8, ptr nofree noundef readnone captures(none) %9, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %10, ptr nofree noundef readnone captures(none) %11, ptr nofree noundef readnone captures(none) %12, ptr nofree noundef readnone captures(none) %13, ptr nofree noundef readnone captures(none) %14) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca [3 x float], align 8              ; 7 uses
  %i.h = alloca [3 x float], align 8              ; 8 uses
  %i.i = alloca [3 x float], align 8              ; 7 uses
  %i.j = alloca [3 x float], align 4              ; 3 uses
  %i.k = alloca [3 x float], align 4              ; 3 uses
  %i.l = alloca [3 x float], align 8              ; 7 uses
  %i.m = alloca [3 x float], align 8              ; 8 uses
  %i.n = alloca [3 x float], align 8              ; 7 uses
  %i.o = alloca [3 x float], align 4              ; 3 uses
  %i.p = alloca [3 x float], align 4              ; 3 uses
  %15 = alloca %"class.gmx::BasicVector", align 8 ; 7 uses
  %16 = alloca %"class.gmx::BasicVector", align 8 ; 7 uses
  %.sroa.0 = alloca [16 x float], align 4         ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  %i.q = icmp sgt i32 %0, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_112urey_bradleyIL18BondedKernelFlavor0EEENSt9enable_ifIXeqT_LS1_0EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.su = sext i32 %i.st to i64
  %i.sv = getelementptr inbounds [4 x i8], ptr %4, i64 %i.su ; 2 uses
  %i.sw = load <4 x float>, ptr %i.sv, align 16, !tbaa !15
  %i.sx = fadd <4 x float> %i.si, %i.sw
  store <4 x float> %i.sx, ptr %i.sv, align 16, !tbaa !15
  %i.sy = extractelement <16 x i32> %i.qc, i64 10
  %i.sz = sext i32 %i.sy to i64
  %i.ta = getelementptr inbounds [4 x i8], ptr %4, i64 %i.sz ; 2 uses
  %i.tb = load <4 x float>, ptr %i.ta, align 16, !tbaa !15
  %i.tc = fadd <4 x float> %i.sj, %i.tb
  store <4 x float> %i.tc, ptr %i.ta, align 16, !tbaa !15
  %i.td = extractelement <16 x i32> %i.qc, i64 14
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds [4 x i8], ptr %4, i64 %i.te ; 2 uses
  %i.tg = load <4 x float>, ptr %i.tf, align 16, !tbaa !15
  %i.th = fadd <4 x float> %i.sk, %i.tg
  store <4 x float> %i.th, ptr %i.tf, align 16, !tbaa !15
  %i.ti = extractelement <16 x i32> %i.qc, i64 3
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [4 x i8], ptr %4, i64 %i.tj ; 2 uses
  %i.tl = load <4 x float>, ptr %i.tk, align 16, !tbaa !15
  %i.tm = fadd <4 x float> %i.sl, %i.tl
  store <4 x float> %i.tm, ptr %i.tk, align 16, !tbaa !15
  %i.tn = extractelement <16 x i32> %i.qc, i64 7
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr inbounds [4 x i8], ptr %4, i64 %i.to ; 2 uses
  %i.tq = load <4 x float>, ptr %i.tp, align 16, !tbaa !15
  %i.tr = fadd <4 x float> %i.sm, %i.tq
  store <4 x float> %i.tr, ptr %i.tp, align 16, !tbaa !15
  %i.ts = extractelement <16 x i32> %i.qc, i64 11
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [4 x i8], ptr %4, i64 %i.tt ; 2 uses
  %i.tv = load <4 x float>, ptr %i.tu, align 16, !tbaa !15
  %i.tw = fadd <4 x float> %i.sn, %i.tv
  store <4 x float> %i.tw, ptr %i.tu, align 16, !tbaa !15
  %i.tx = extractelement <16 x i32> %i.qc, i64 15
  %i.ty = sext i32 %i.tx to i64
  %i.tz = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ty ; 2 uses
  %i.ua = load <4 x float>, ptr %i.tz, align 16, !tbaa !15
  %i.ub = shufflevector <16 x float> %i.qk, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.uc = fadd <4 x float> %i.ub, %i.ua
  store <4 x float> %i.uc, ptr %i.tz, align 16, !tbaa !15
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 64 ; 2 uses
  %i.ud = icmp samesign ult i64 %indvars.iv.next409, %i.t
  br i1 %i.ud, label %.preheader, label %._crit_edge, !llvm.loop !61

bb.c:                                             ; preds = %.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.f ] ; 7 uses
  %.0248405 = phi i32 [ %i.u, %.preheader ], [ %.1, %bb.f ] ; 4 uses
  %i.ue = sext i32 %.0248405 to i64
  %i.uf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ue ; 4 uses
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !16
  %i.uh = getelementptr i8, ptr %i.uf, i64 4
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !16
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.ui, ptr %i.uj, align 4, !tbaa !16
  %i.uk = getelementptr i8, ptr %i.uf, i64 8
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !16
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.ul, ptr %i.um, align 4, !tbaa !16
  %i.un = getelementptr i8, ptr %i.uf, i64 12
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !16
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.uo, ptr %i.up, align 4, !tbaa !16
  %i.uq = shl nuw nsw i64 %indvars.iv, 2
  %i.ur = add nuw nsw i64 %i.uq, %indvars.iv408
  %i.us = icmp samesign ult i64 %i.ur, %i.t
  br i1 %i.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ut = sext i32 %i.ug to i64
  %i.uu = getelementptr inbounds [48 x i8], ptr %2, i64 %i.ut ; 4 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 4
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !15
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 4 uses
  store float %i.uw, ptr %i.ux, align 4, !tbaa !18
  %i.uy = load float, ptr %i.uu, align 4, !tbaa !15
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 64
  store float %i.uy, ptr %i.uz, align 4, !tbaa !18
  %i.va = getelementptr inbounds nuw i8, ptr %i.uu, i64 12
  %i.vb = load float, ptr %i.va, align 4, !tbaa !15
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ux, i64 128
  store float %i.vb, ptr %i.vc, align 4, !tbaa !18
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !15
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ux, i64 192
  store float %i.ve, ptr %i.vf, align 4, !tbaa !18
  %i.vg = add nsw i32 %.0248405, 4                ; 2 uses
  %i.vh = icmp slt i32 %i.vg, %0
  %spec.select = select i1 %i.vh, i32 %i.vg, i32 %.0248405
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 4 uses
  store float 0.000000e+00, ptr %i.vi, align 4, !tbaa !18
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 64
  store float 0.000000e+00, ptr %i.vj, align 4, !tbaa !18
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 128
  store float 0.000000e+00, ptr %i.vk, align 4, !tbaa !18
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 192
  store float 0.000000e+00, ptr %i.vl, align 4, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1 = phi i32 [ %.0248405, %bb.e ], [ %spec.select, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !62
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_114quartic_anglesIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.07689 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.aw, %.loopexit ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = getelementptr i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16
  %i.q = sext i32 %i.l to i64                     ; 2 uses
  %i.r = getelementptr inbounds [12 x i8], ptr %3, i64 %i.q
  %i.s = sext i32 %i.n to i64                     ; 2 uses
  %i.t = getelementptr inbounds [12 x i8], ptr %3, i64 %i.s
  %i.u = sext i32 %i.p to i64                     ; 2 uses
  %i.v = getelementptr inbounds [12 x i8], ptr %3, i64 %i.u
  %i.w = call noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef %i.r, ptr noundef %i.t, ptr noundef %i.v, ptr noundef %6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.x = fpext float %i.w to double
  %i.y = sext i32 %i.j to i64
  %i.z = getelementptr inbounds [48 x i8], ptr %2, i64 %i.y ; 6 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !15
  %i.ab = fpext float %i.aa to double
  %i.ac = fneg double %i.ab
  %i.ad = call double @llvm.fmuladd.f64(double %i.ac, double f0x3F91DF46A2529D39, double %i.x)
  %i.ae = fptrunc double %i.ad to float           ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !15 ; 2 uses
  %i.aj = call float @llvm.fmuladd.f32(float %i.ai, float %i.ae, float %i.ag)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.al = load float, ptr %i.ak, align 4, !tbaa !15 ; 2 uses
  %i.am = fmul float %i.ae, %i.ae                 ; 3 uses
  %i.an = call float @llvm.fmuladd.f32(float %i.al, float %i.am, float %i.aj)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !15 ; 2 uses
  %i.aq = fmul float %i.am, %i.ae                 ; 3 uses
  %i.ar = call float @llvm.fmuladd.f32(float %i.ap, float %i.aq, float %i.an)
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.at = load float, ptr %i.as, align 4, !tbaa !15 ; 2 uses
  %i.au = fmul float %i.aq, %i.ae
  %i.av = call float @llvm.fmuladd.f32(float %i.at, float %i.au, float %i.ar)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.aw = fadd float %.07689, %i.av               ; 2 uses
  %i.ax = load float, ptr %i.e, align 4, !tbaa !18 ; 3 uses
  %i.ay = fmul float %i.ax, %i.ax                 ; 2 uses
  %i.az = fcmp olt float %i.ay, 1.000000e+00
  br i1 %i.az, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %i.ba = fmul float %i.at, -4.000000e+00
  %i.bb = fmul float %i.ap, -3.000000e+00
  %i.bc = fmul float %i.al, -2.000000e+00
  %i.bd = fsub float 0.000000e+00, %i.ai
  %i.be = call float @llvm.fmuladd.f32(float %i.bc, float %i.ae, float %i.bd)
  %i.bf = call float @llvm.fmuladd.f32(float %i.bb, float %i.am, float %i.be)
  %i.bg = call float @llvm.fmuladd.f32(float %i.ba, float %i.aq, float %i.bf)
  %i.bh = fsub float 1.000000e+00, %i.ay
  %i.bi = call noundef float @sqrtf(float noundef %i.bh) #23
  %i.bj = load float, ptr %i.g, align 8, !tbaa !18 ; 2 uses
  %i.bk = load float, ptr %i.h, align 8, !tbaa !18 ; 2 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.q ; 3 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %4, i64 %i.s ; 3 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %4, i64 %i.u ; 3 uses
  %i.bo = load <2 x float>, ptr %i.d, align 8, !tbaa !18 ; 4 uses
  %i.bp = load <2 x float>, ptr %i.c, align 8, !tbaa !18 ; 4 uses
  %i.bq = fneg <2 x float> %i.bp
  %i.br = fneg <2 x float> %i.bo
  %14 = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.bs = shufflevector <2 x float> %i.bp, <2 x float> %i.bo, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bs
  %i.bu = shufflevector <2 x float> %i.bp, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bu, <2 x float> %i.bt)
  %i.bw = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bj, i64 1 ; 3 uses
  %i.by = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bx, <2 x float> %i.bv) ; 3 uses
  %shift = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.by
  %i.bz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ca = call float @llvm.sqrt.f32(float %i.bz)
  %i.cb = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %i.ca, i64 1
  %i.cd = fdiv <2 x float> splat (float 1.000000e+00), %i.cc ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0
  %i.cf = fmul float %i.bg, %i.ce                 ; 2 uses
  %i.cg = fmul float %i.ax, %i.cf
  %i.ch = extractelement <2 x float> %i.cd, i64 1
  %i.ci = fmul float %i.cf, %i.ch                 ; 3 uses
  %i.cj = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fdiv <2 x float> %i.ck, %i.by           ; 3 uses
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x float> %i.cm, %i.bq
  %i.co = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.bo, <2 x float> %i.cn) ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cs = fmul <2 x float> %i.cr, %i.br
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.bp, <2 x float> %i.cs) ; 2 uses
  %i.cu = fadd <2 x float> %i.ct, %i.cq
  %i.cv = fsub <2 x float> %14, %i.cq
  store <2 x float> %i.cv, ptr %i.bl, align 4, !tbaa !18
  %i.cw = load <2 x float>, ptr %i.bm, align 4, !tbaa !18
  %i.cx = fadd <2 x float> %i.cw, %i.cu
  store <2 x float> %i.cx, ptr %i.bm, align 4, !tbaa !18
  %i.cy = load <2 x float>, ptr %i.bn, align 4, !tbaa !18
  %i.cz = fsub <2 x float> %i.cy, %i.ct
  store <2 x float> %i.cz, ptr %i.bn, align 4, !tbaa !18
  %i.da = fneg <2 x float> %i.bx
  %i.db = fmul <2 x float> %i.cl, %i.da           ; 2 uses
  %i.dc = extractelement <2 x float> %i.db, i64 0
  %i.dd = call float @llvm.fmuladd.f32(float %i.ci, float %i.bj, float %i.dc) ; 2 uses
  %i.de = extractelement <2 x float> %i.db, i64 1
  %i.df = call float @llvm.fmuladd.f32(float %i.ci, float %i.bk, float %i.de) ; 2 uses
  %i.dg = fadd float %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !18
  %i.dj = fsub float %i.di, %i.dd
  store float %i.dj, ptr %i.dh, align 4, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !18
  %i.dm = fadd float %i.dl, %i.dg
  store float %i.dm, ptr %i.dk, align 4, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !18
  %i.dp = fsub float %i.do, %i.df
  store float %i.dp, ptr %i.dn, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.dq = trunc nuw i64 %indvars.iv.next to i32
  %i.dr = icmp sgt i32 %0, %i.dq
  br i1 %i.dr, label %bb.b, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.076.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.aw, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.076.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_110tab_anglesIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.h = icmp sgt i32 %0, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.06772 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ao, %.loopexit ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = sext i32 %i.o to i64                     ; 2 uses
  %i.u = getelementptr inbounds [12 x i8], ptr %3, i64 %i.t
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %3, i64 %i.v
  %i.x = sext i32 %i.s to i64                     ; 2 uses
  %i.y = getelementptr inbounds [12 x i8], ptr %3, i64 %i.x
  %i.z = call noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.y, ptr noundef %6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.aa = sext i32 %i.m to i64
  %i.ab = getelementptr inbounds [48 x i8], ptr %2, i64 %i.aa ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !15 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !15
  %i.ak = call fastcc noundef float @_ZN12_GLOBAL__N_110bonded_tabEPKciPK13bondedtable_tffffPfS5_(ptr noundef nonnull @.str.11, i32 noundef %i.ac, ptr noundef %i.af, float noundef %i.ah, float noundef %i.aj, float noundef %i.z, float noundef %7, ptr noundef %i.g, ptr noundef %i.f)
  %i.al = load float, ptr %8, align 4, !tbaa !18
  %i.am = fadd float %i.ak, %i.al
  store float %i.am, ptr %8, align 4, !tbaa !18
  %i.an = load float, ptr %i.g, align 4, !tbaa !18
  %i.ao = fadd float %.06772, %i.an               ; 2 uses
  %i.ap = load float, ptr %i.e, align 4, !tbaa !18 ; 3 uses
  %i.aq = fmul float %i.ap, %i.ap                 ; 2 uses
  %i.ar = fcmp olt float %i.aq, 1.000000e+00
  br i1 %i.ar, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %i.as = load float, ptr %i.f, align 4, !tbaa !18
  %i.at = fsub float 1.000000e+00, %i.aq
  %i.au = call noundef float @sqrtf(float noundef %i.at) #23
  %i.av = load float, ptr %i.j, align 8, !tbaa !18 ; 2 uses
  %i.aw = load float, ptr %i.k, align 8, !tbaa !18 ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %4, i64 %i.t ; 3 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 3 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %4, i64 %i.x ; 3 uses
  %i.ba = load <2 x float>, ptr %i.d, align 8, !tbaa !18 ; 4 uses
  %i.bb = load <2 x float>, ptr %i.c, align 8, !tbaa !18 ; 4 uses
  %i.bc = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bd = fneg <2 x float> %i.bb
  %i.be = fneg <2 x float> %i.ba
  %14 = load <2 x float>, ptr %i.ax, align 4, !tbaa !18
  %i.bf = shufflevector <2 x float> %i.bb, <2 x float> %i.ba, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bg = fmul <2 x float> %i.bf, %i.bf
  %i.bh = shufflevector <2 x float> %i.bb, <2 x float> %i.ba, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bh, <2 x float> %i.bg)
  %i.bj = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.av, i64 1 ; 3 uses
  %i.bl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bk, <2 x float> %i.bi) ; 3 uses
  %shift = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.bl
  %i.bm = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bn = call float @llvm.sqrt.f32(float %i.bm)
  %i.bo = insertelement <2 x float> %i.bc, float %i.bn, i64 1
  %i.bp = fdiv <2 x float> splat (float 1.000000e+00), %i.bo ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  %i.br = fmul float %i.as, %i.bq                 ; 2 uses
  %i.bs = fmul float %i.ap, %i.br
  %i.bt = extractelement <2 x float> %i.bp, i64 1
  %i.bu = fmul float %i.br, %i.bt                 ; 3 uses
  %i.bv = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fdiv <2 x float> %i.bw, %i.bl           ; 3 uses
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.by, %i.bd
  %i.ca = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.ba, <2 x float> %i.bz) ; 2 uses
  %i.cd = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = fmul <2 x float> %i.cd, %i.be
  %i.cf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.bb, <2 x float> %i.ce) ; 2 uses
  %i.cg = fadd <2 x float> %i.cf, %i.cc
  %i.ch = fsub <2 x float> %14, %i.cc
  store <2 x float> %i.ch, ptr %i.ax, align 4, !tbaa !18
  %i.ci = load <2 x float>, ptr %i.ay, align 4, !tbaa !18
  %i.cj = fadd <2 x float> %i.ci, %i.cg
  store <2 x float> %i.cj, ptr %i.ay, align 4, !tbaa !18
  %i.ck = load <2 x float>, ptr %i.az, align 4, !tbaa !18
  %i.cl = fsub <2 x float> %i.ck, %i.cf
  store <2 x float> %i.cl, ptr %i.az, align 4, !tbaa !18
  %i.cm = fneg <2 x float> %i.bk
  %i.cn = fmul <2 x float> %i.bx, %i.cm           ; 2 uses
  %i.co = extractelement <2 x float> %i.cn, i64 0
  %i.cp = call float @llvm.fmuladd.f32(float %i.bu, float %i.av, float %i.co) ; 2 uses
  %i.cq = extractelement <2 x float> %i.cn, i64 1
  %i.cr = call float @llvm.fmuladd.f32(float %i.bu, float %i.aw, float %i.cq) ; 2 uses
  %i.cs = fadd float %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !18
  %i.cv = fsub float %i.cu, %i.cp
  store float %i.cv, ptr %i.ct, align 4, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !18
  %i.cy = fadd float %i.cx, %i.cs
  store float %i.cy, ptr %i.cw, align 4, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !18
  %i.db = fsub float %i.da, %i.cr
  store float %i.db, ptr %i.cz, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.dc = trunc nuw i64 %indvars.iv.next to i32
  %i.dd = icmp sgt i32 %0, %i.dc
  br i1 %i.dd, label %bb.b, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.067.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ao, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.067.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_15pdihsIL18BondedKernelFlavor0EEENSt9enable_ifIXeqT_LS1_0EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #11 {
bb.a:
  %i.a = alloca [16 x i32], align 64              ; 4 uses
  %i.b = alloca [16 x i32], align 64              ; 4 uses
  %i.c = alloca [16 x i32], align 64              ; 4 uses
  %i.d = alloca [16 x i32], align 64              ; 4 uses
  %i.e = alloca [48 x float], align 64            ; 6 uses
  %i.f = alloca [144 x float], align 64           ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  call void @_Z12set_pbc_simdPK5t_pbcPf(ptr noundef %6, ptr noundef nonnull %i.f)
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.val72.i.i = load <16 x float>, ptr %i.f, align 64, !tbaa !15 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.val71.i.i = load <16 x float>, ptr %i.l, align 64, !tbaa !15 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %.val70.i.i = load <16 x float>, ptr %i.m, align 64, !tbaa !15 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %.val69.i.i = load <16 x float>, ptr %i.n, align 64, !tbaa !15 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %.val68.i.i = load <16 x float>, ptr %i.o, align 64, !tbaa !15 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %.val67.i.i = load <16 x float>, ptr %i.p, align 64, !tbaa !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 384
  %.val66.i.i = load <16 x float>, ptr %i.q, align 64, !tbaa !15 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %.val65.i.i = load <16 x float>, ptr %i.r, align 64, !tbaa !15 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 512
  %.val.i.i = load <16 x float>, ptr %i.s, align 64, !tbaa !15 ; 3 uses
  %i.t = zext nneg i32 %0 to i64                  ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.e
  %indvars.iv155 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next156, %bb.e ] ; 3 uses
  %i.u = trunc nuw nsw i64 %indvars.iv155 to i32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 9 uses
  %.095152 = phi i32 [ %i.u, %.preheader ], [ %.1, %bb.d ] ; 4 uses
  %i.v = sext i32 %.095152 to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %1, i64 %i.v ; 5 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !16
  %i.y = getelementptr i8, ptr %i.w, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !16
  %i.ab = getelementptr i8, ptr %i.w, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !16
  %i.ae = getelementptr i8, ptr %i.w, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !16
  %i.ah = getelementptr i8, ptr %i.w, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !16
  %i.ak = mul nuw nsw i64 %indvars.iv, 5
  %i.al = add nuw nsw i64 %i.ak, %indvars.iv155
  %i.am = icmp samesign ult i64 %i.al, %i.t
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.an = sext i32 %i.x to i64
  %i.ao = getelementptr inbounds [48 x i8], ptr %2, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !15
  %i.ar = load float, ptr %i.ao, align 4, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !15
  %i.au = sitofp i32 %i.at to float
  %i.av = add nsw i32 %.095152, 5                 ; 2 uses
  %i.aw = icmp slt i32 %i.av, %0
  %spec.select = select i1 %i.aw, i32 %i.av, i32 %.095152
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink159 = phi float [ %i.aq, %bb.c ], [ 0.000000e+00, %bb.b ]
  %.sink158 = phi float [ %i.ar, %bb.c ], [ 0.000000e+00, %bb.b ]
  %.sink = phi float [ %i.au, %bb.c ], [ 0.000000e+00, %bb.b ]
  %.1 = phi i32 [ %spec.select, %bb.c ], [ %.095152, %bb.b ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %.sink159, ptr %i.ax, align 4, !tbaa !18
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store float %.sink158, ptr %i.ay, align 4, !tbaa !18
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store float %.sink, ptr %i.az, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !65

bb.e:                                             ; preds = %bb.d
  %.val101 = load <8 x i64>, ptr %i.a, align 64, !tbaa !15 ; 2 uses
  %.val102 = load <8 x i64>, ptr %i.b, align 64, !tbaa !15 ; 2 uses
  %.val103 = load <8 x i64>, ptr %i.c, align 64, !tbaa !15 ; 2 uses
  %.val104 = load <8 x i64>, ptr %i.d, align 64, !tbaa !15 ; 2 uses
  %i.ba = bitcast <8 x i64> %.val101 to <16 x i32>
  %i.bb = mul <16 x i32> %i.ba, splat (i32 3)     ; 3 uses
  %i.bc = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %3, <16 x i32> %i.bb, <16 x i1> splat (i1 true), i32 4)
  %i.bd = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.j, <16 x i32> %i.bb, <16 x i1> splat (i1 true), i32 4)
  %i.be = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.k, <16 x i32> %i.bb, <16 x i1> splat (i1 true), i32 4)
  %i.bf = bitcast <8 x i64> %.val102 to <16 x i32>
  %i.bg = mul <16 x i32> %i.bf, splat (i32 3)     ; 3 uses
  %i.bh = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %3, <16 x i32> %i.bg, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bi = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.j, <16 x i32> %i.bg, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bj = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.k, <16 x i32> %i.bg, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bk = bitcast <8 x i64> %.val103 to <16 x i32>
  %i.bl = mul <16 x i32> %i.bk, splat (i32 3)     ; 3 uses
  %i.bm = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %3, <16 x i32> %i.bl, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bn = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.j, <16 x i32> %i.bl, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bo = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.k, <16 x i32> %i.bl, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bp = bitcast <8 x i64> %.val104 to <16 x i32>
  %i.bq = mul <16 x i32> %i.bp, splat (i32 3)     ; 3 uses
  %i.br = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %3, <16 x i32> %i.bq, <16 x i1> splat (i1 true), i32 4)
  %i.bs = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.j, <16 x i32> %i.bq, <16 x i1> splat (i1 true), i32 4)
  %i.bt = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.k, <16 x i32> %i.bq, <16 x i1> splat (i1 true), i32 4)
  %i.bu = fsub <16 x float> %i.bc, %i.bh
  %i.bv = fsub <16 x float> %i.bd, %i.bi
  %i.bw = fsub <16 x float> %i.be, %i.bj          ; 2 uses
  %i.bx = fsub <16 x float> %i.bm, %i.bh
  %i.by = fsub <16 x float> %i.bn, %i.bi
  %i.bz = fsub <16 x float> %i.bo, %i.bj          ; 2 uses
  %i.ca = fsub <16 x float> %i.bm, %i.br
  %i.cb = fsub <16 x float> %i.bn, %i.bs
  %i.cc = fsub <16 x float> %i.bo, %i.bt          ; 2 uses
  %i.cd = fmul <16 x float> %i.bw, %.val72.i.i
  %i.ce = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.cd, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.cf = fmul <16 x float> %i.ce, %.val71.i.i
  %i.cg = fsub <16 x float> %i.bu, %i.cf
  %i.ch = fmul <16 x float> %i.ce, %.val70.i.i
  %i.ci = fsub <16 x float> %i.bv, %i.ch          ; 2 uses
  %i.cj = fmul <16 x float> %i.ce, %.val69.i.i
  %i.ck = fsub <16 x float> %i.bw, %i.cj          ; 4 uses
  %i.cl = fmul <16 x float> %i.ci, %.val68.i.i
  %i.cm = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.cl, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.cn = fmul <16 x float> %i.cm, %.val67.i.i
  %i.co = fsub <16 x float> %i.cg, %i.cn          ; 2 uses
  %i.cp = fmul <16 x float> %i.cm, %.val66.i.i
  %i.cq = fsub <16 x float> %i.ci, %i.cp          ; 4 uses
  %i.cr = fmul <16 x float> %i.co, %.val65.i.i
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_116cross_bond_angleIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.db = fmul float %i.co, %i.bg
  %i.dc = call float @llvm.fmuladd.f32(float %i.cj, float %i.bi, float %i.db) ; 2 uses
  %i.dd = fmul float %i.co, %i.cb
  %i.de = call float @llvm.fmuladd.f32(float %i.cm, float %i.bh, float %i.dd) ; 2 uses
  %i.df = fneg float %i.dc
  %i.dg = fsub float %i.df, %i.de
  %i.dh = load <2 x float>, ptr %i.cc, align 4, !tbaa !18
  %i.di = fadd <2 x float> %i.cy, %i.dh
  store <2 x float> %i.di, ptr %i.cc, align 4, !tbaa !18
  %i.dj = load <2 x float>, ptr %i.cd, align 4, !tbaa !18
  %i.dk = fadd <2 x float> %i.da, %i.dj
  store <2 x float> %i.dk, ptr %i.cd, align 4, !tbaa !18
  %i.dl = load <2 x float>, ptr %i.ce, align 4, !tbaa !18
  %i.dm = fadd <2 x float> %i.cu, %i.dl
  store <2 x float> %i.dm, ptr %i.ce, align 4, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !18
  %i.dp = fadd float %i.dc, %i.do
  store float %i.dp, ptr %i.dn, align 4, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !18
  %i.ds = fadd float %i.dg, %i.dr
  store float %i.ds, ptr %i.dq, align 4, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !18
  %i.dv = fadd float %i.de, %i.du
  store float %i.dv, ptr %i.dt, align 4, !tbaa !18
  %i.dw = fmul float %i.v, %i.cf
  %i.dx = fmul float %i.cg, %i.dw
  %i.dy = fadd float %.097, %i.dx                 ; 2 uses
  %i.dz = trunc nuw i64 %indvars.iv.next to i32
  %i.ea = icmp sgt i32 %0, %i.dz
  br i1 %i.ea, label %bb.b, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit91, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dy, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_112urey_bradleyIL18BondedKernelFlavor1EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %i.e = alloca [3 x float], align 8              ; 6 uses
  %i.f = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.g = icmp sgt i32 %0, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = fsub float 1.000000e+00, %7              ; 4 uses
  %.not.i = icmp eq ptr %6, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.backedge ] ; 2 uses
  %.0118 = phi float [ 0.000000e+00, %.lr.ph ], [ %.0.be, %.backedge ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.r = getelementptr i8, ptr %i.l, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = sext i32 %i.m to i64
  %i.u = getelementptr inbounds [48 x i8], ptr %2, i64 %i.t ; 8 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !15
  %i.w = fpext float %i.v to double
  %i.x = fmul double %i.w, f0x3F91DF46A2529D39
  %i.y = fptrunc double %i.x to float             ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !15 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !15 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !15 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ag = load float, ptr %i.af, align 4, !tbaa !15
  %i.ah = fpext float %i.ag to double
  %i.ai = fmul double %i.ah, f0x3F91DF46A2529D39
  %i.aj = fptrunc double %i.ai to float           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.al = load float, ptr %i.ak, align 4, !tbaa !15 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.an = load float, ptr %i.am, align 4, !tbaa !15 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !15 ; 2 uses
  %i.aq = sext i32 %i.o to i64                    ; 3 uses
  %i.ar = getelementptr inbounds [12 x i8], ptr %3, i64 %i.aq ; 4 uses
  %i.as = sext i32 %i.q to i64                    ; 2 uses
  %i.at = getelementptr inbounds [12 x i8], ptr %3, i64 %i.as
  %i.au = sext i32 %i.s to i64                    ; 3 uses
  %i.av = getelementptr inbounds [12 x i8], ptr %3, i64 %i.au ; 4 uses
  %i.aw = call noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %i.av, ptr noundef %6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.ax = fmul float %7, %i.al
  %i.ay = call float @llvm.fmuladd.f32(float %i.h, float %i.aa, float %i.ax) ; 3 uses
  %i.az = fmul float %7, %i.aj
  %i.ba = call float @llvm.fmuladd.f32(float %i.h, float %i.y, float %i.az)
  %i.bb = fsub float %i.aw, %i.ba                 ; 4 uses
  %i.bc = fmul float %i.bb, %i.bb                 ; 2 uses
  %i.bd = fneg float %i.ay
  %i.be = fmul float %i.bb, %i.bd
  %i.bf = fmul float %i.ay, 5.000000e-01
  %i.bg = fmul float %i.bf, %i.bc
  %i.bh = fsub float %i.al, %i.aa
  %i.bi = fmul float %i.bh, 5.000000e-01
  %i.bj = fsub float %i.y, %i.aj
  %i.bk = fmul float %i.ay, %i.bj
  %i.bl = fmul float %i.bk, %i.bb
  %i.bm = call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bc, float %i.bl)
  %i.bn = load float, ptr %8, align 4, !tbaa !18
  %i.bo = fadd float %i.bn, %i.bm                 ; 2 uses
  store float %i.bo, ptr %8, align 4, !tbaa !18
  %i.bp = fadd float %.0118, %i.bg                ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bq = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ar, ptr noundef %i.av, ptr noundef nonnull %i.e) ; 0 uses
  %i.br = load <2 x float>, ptr %i.e, align 8, !tbaa !18
  %.pre123 = load float, ptr %i.i, align 8, !tbaa !18
  %.pre124 = load float, ptr %8, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit

bb.d:                                             ; preds = %bb.b
  %i.bs = load <2 x float>, ptr %i.ar, align 4, !tbaa !18
  %i.bt = load <2 x float>, ptr %i.av, align 4, !tbaa !18
  %i.bu = fsub <2 x float> %i.bs, %i.bt           ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !18
  %i.bz = fsub float %i.bw, %i.by                 ; 2 uses
  store <2 x float> %i.bu, ptr %i.e, align 8, !tbaa !18
  store float %i.bz, ptr %i.i, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit: ; preds = %bb.c, %bb.d
  %i.ca = phi float [ %.pre124, %bb.c ], [ %i.bo, %bb.d ]
  %i.cb = phi float [ %.pre123, %bb.c ], [ %i.bz, %bb.d ] ; 3 uses
  %i.cc = phi <2 x float> [ %i.br, %bb.c ], [ %i.bu, %bb.d ] ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.cc, %i.cc
  %i.cd = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ce = extractelement <2 x float> %i.cc, i64 0 ; 2 uses
  %i.cf = call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.cd)
  %i.cg = call noundef float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %i.cf) ; 3 uses
  %sqrt = call float @llvm.sqrt.f32(float %i.cg)
  %i.ch = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.ci = fmul float %i.cg, %i.ch
  %i.cj = fmul float %7, %i.ap
  %i.ck = call float @llvm.fmuladd.f32(float %i.h, float %i.ae, float %i.cj) ; 3 uses
  %i.cl = fmul float %7, %i.an
  %i.cm = call float @llvm.fmuladd.f32(float %i.h, float %i.ac, float %i.cl)
  %i.cn = fsub float %i.ci, %i.cm                 ; 4 uses
  %i.co = fmul float %i.cn, %i.cn                 ; 2 uses
  %i.cp = fneg float %i.ck
  %i.cq = fmul float %i.cn, %i.cp
  %i.cr = fmul float %i.ck, 5.000000e-01
  %i.cs = fmul float %i.cr, %i.co
  %i.ct = fsub float %i.ap, %i.ae
  %i.cu = fmul float %i.ct, 5.000000e-01
  %i.cv = fsub float %i.ac, %i.an
  %i.cw = fmul float %i.cv, %i.ck
  %i.cx = fmul float %i.cw, %i.cn
  %i.cy = call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.co, float %i.cx)
  %i.cz = fadd float %i.ca, %i.cy
  store float %i.cz, ptr %8, align 4, !tbaa !18
  %i.da = load float, ptr %i.f, align 4, !tbaa !18 ; 3 uses
  %i.db = fmul float %i.da, %i.da                 ; 2 uses
  %i.dc = fcmp olt float %i.db, 1.000000e+00
  br i1 %i.dc, label %.loopexit114.loopexit, label %.loopexit114

.loopexit114.loopexit:                            ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.dd = fsub float 1.000000e+00, %i.db
  %i.de = call noundef float @sqrtf(float noundef %i.dd) #23
  %i.df = load float, ptr %i.j, align 8, !tbaa !18 ; 2 uses
  %i.dg = load float, ptr %i.k, align 8, !tbaa !18 ; 2 uses
  %i.dh = getelementptr inbounds [16 x i8], ptr %4, i64 %i.aq ; 3 uses
  %i.di = getelementptr inbounds [16 x i8], ptr %4, i64 %i.as ; 3 uses
  %i.dj = getelementptr inbounds [16 x i8], ptr %4, i64 %i.au ; 3 uses
  %i.dk = load <2 x float>, ptr %i.d, align 8, !tbaa !18 ; 4 uses
  %i.dl = load <2 x float>, ptr %i.c, align 8, !tbaa !18 ; 4 uses
  %i.dm = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dn = fneg <2 x float> %i.dl
  %i.do = fneg <2 x float> %i.dk
  %14 = load <2 x float>, ptr %i.dh, align 4, !tbaa !18
  %i.dp = shufflevector <2 x float> %i.dl, <2 x float> %i.dk, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dq = fmul <2 x float> %i.dp, %i.dp
  %i.dr = shufflevector <2 x float> %i.dl, <2 x float> %i.dk, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ds = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.dr, <2 x float> %i.dq)
  %i.dt = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.df, i64 1 ; 3 uses
  %i.dv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.du, <2 x float> %i.ds) ; 3 uses
  %shift = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop128 = fmul <2 x float> %shift, %i.dv
  %i.dw = extractelement <2 x float> %foldExtExtBinop128, i64 0
  %i.dx = call float @llvm.sqrt.f32(float %i.dw)
  %i.dy = insertelement <2 x float> %i.dm, float %i.dx, i64 1
  %i.dz = fdiv <2 x float> splat (float 1.000000e+00), %i.dy ; 2 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  %i.eb = fmul float %i.be, %i.ea                 ; 2 uses
  %i.ec = fmul float %i.da, %i.eb
  %i.ed = extractelement <2 x float> %i.dz, i64 1
  %i.ee = fmul float %i.eb, %i.ed                 ; 3 uses
  %i.ef = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fdiv <2 x float> %i.eg, %i.dv           ; 3 uses
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x float> %i.ei, %i.dn
  %i.ek = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.em = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.dk, <2 x float> %i.ej) ; 2 uses
  %i.en = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = fmul <2 x float> %i.en, %i.do
  %i.ep = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.dl, <2 x float> %i.eo) ; 2 uses
  %i.eq = fadd <2 x float> %i.ep, %i.em
  %i.er = fsub <2 x float> %14, %i.em
  store <2 x float> %i.er, ptr %i.dh, align 4, !tbaa !18
  %i.es = load <2 x float>, ptr %i.di, align 4, !tbaa !18
  %i.et = fadd <2 x float> %i.es, %i.eq
  store <2 x float> %i.et, ptr %i.di, align 4, !tbaa !18
  %i.eu = load <2 x float>, ptr %i.dj, align 4, !tbaa !18
  %i.ev = fsub <2 x float> %i.eu, %i.ep
  store <2 x float> %i.ev, ptr %i.dj, align 4, !tbaa !18
  %i.ew = fneg <2 x float> %i.du
  %i.ex = fmul <2 x float> %i.eh, %i.ew           ; 2 uses
  %i.ey = extractelement <2 x float> %i.ex, i64 0
  %i.ez = call float @llvm.fmuladd.f32(float %i.ee, float %i.df, float %i.ey) ; 2 uses
  %i.fa = extractelement <2 x float> %i.ex, i64 1
  %i.fb = call float @llvm.fmuladd.f32(float %i.ee, float %i.dg, float %i.fa) ; 2 uses
  %i.fc = fadd float %i.fb, %i.ez
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !18
  %i.ff = fsub float %i.fe, %i.ez
  store float %i.ff, ptr %i.fd, align 4, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !18
  %i.fi = fadd float %i.fh, %i.fc
  store float %i.fi, ptr %i.fg, align 4, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !18
  %i.fl = fsub float %i.fk, %i.fb
  store float %i.fl, ptr %i.fj, align 4, !tbaa !18
  br label %.loopexit114

.loopexit114:                                     ; preds = %.loopexit114.loopexit, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.fm = fcmp oeq float %i.cg, 0.000000e+00
  br i1 %i.fm, label %.backedge, label %.backedge.loopexit

.backedge:                                        ; preds = %.backedge.loopexit, %.loopexit114
  %.0.be = phi float [ %i.bp, %.loopexit114 ], [ %i.gg, %.backedge.loopexit ] ; 2 uses
  %i.fn = trunc nuw i64 %indvars.iv.next to i32
  %i.fo = icmp sgt i32 %0, %i.fn
  br i1 %i.fo, label %bb.b, label %._crit_edge, !llvm.loop !91

.backedge.loopexit:                               ; preds = %.loopexit114
  %i.fp = fmul float %i.ch, %i.cq                 ; 2 uses
  %i.fq = getelementptr inbounds [16 x i8], ptr %4, i64 %i.aq ; 3 uses
  %i.fr = getelementptr inbounds [16 x i8], ptr %4, i64 %i.au ; 3 uses
  %i.fs = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = fmul <2 x float> %i.ft, %i.cc           ; 2 uses
  %i.fv = load <2 x float>, ptr %i.fq, align 4, !tbaa !18
  %i.fw = fadd <2 x float> %i.fv, %i.fu
  store <2 x float> %i.fw, ptr %i.fq, align 4, !tbaa !18
  %i.fx = load <2 x float>, ptr %i.fr, align 4, !tbaa !18
  %i.fy = fsub <2 x float> %i.fx, %i.fu
  store <2 x float> %i.fy, ptr %i.fr, align 4, !tbaa !18
  %i.fz = fmul float %i.fp, %i.cb                 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !18
  %i.gc = fadd float %i.gb, %i.fz
  store float %i.gc, ptr %i.ga, align 4, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !18
  %i.gf = fsub float %i.ge, %i.fz
  store float %i.gf, ptr %i.gd, align 4, !tbaa !18
  %i.gg = fadd float %i.bp, %i.cs
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.0.be, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_114quartic_anglesIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.07689 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.aw, %.loopexit ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = getelementptr i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16
  %i.q = sext i32 %i.l to i64                     ; 2 uses
  %i.r = getelementptr inbounds [12 x i8], ptr %3, i64 %i.q
  %i.s = sext i32 %i.n to i64                     ; 2 uses
  %i.t = getelementptr inbounds [12 x i8], ptr %3, i64 %i.s
  %i.u = sext i32 %i.p to i64                     ; 2 uses
  %i.v = getelementptr inbounds [12 x i8], ptr %3, i64 %i.u
  %i.w = call noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef %i.r, ptr noundef %i.t, ptr noundef %i.v, ptr noundef %6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.x = fpext float %i.w to double
  %i.y = sext i32 %i.j to i64
  %i.z = getelementptr inbounds [48 x i8], ptr %2, i64 %i.y ; 6 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !15
  %i.ab = fpext float %i.aa to double
  %i.ac = fneg double %i.ab
  %i.ad = call double @llvm.fmuladd.f64(double %i.ac, double f0x3F91DF46A2529D39, double %i.x)
  %i.ae = fptrunc double %i.ad to float           ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !15 ; 2 uses
  %i.aj = call float @llvm.fmuladd.f32(float %i.ai, float %i.ae, float %i.ag)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.al = load float, ptr %i.ak, align 4, !tbaa !15 ; 2 uses
  %i.am = fmul float %i.ae, %i.ae                 ; 3 uses
  %i.an = call float @llvm.fmuladd.f32(float %i.al, float %i.am, float %i.aj)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !15 ; 2 uses
  %i.aq = fmul float %i.am, %i.ae                 ; 3 uses
  %i.ar = call float @llvm.fmuladd.f32(float %i.ap, float %i.aq, float %i.an)
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.at = load float, ptr %i.as, align 4, !tbaa !15 ; 2 uses
  %i.au = fmul float %i.aq, %i.ae
  %i.av = call float @llvm.fmuladd.f32(float %i.at, float %i.au, float %i.ar)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.aw = fadd float %.07689, %i.av               ; 2 uses
  %i.ax = load float, ptr %i.e, align 4, !tbaa !18 ; 3 uses
  %i.ay = fmul float %i.ax, %i.ax                 ; 2 uses
  %i.az = fcmp olt float %i.ay, 1.000000e+00
  br i1 %i.az, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %i.ba = fmul float %i.at, -4.000000e+00
  %i.bb = fmul float %i.ap, -3.000000e+00
  %i.bc = fmul float %i.al, -2.000000e+00
  %i.bd = fsub float 0.000000e+00, %i.ai
  %i.be = call float @llvm.fmuladd.f32(float %i.bc, float %i.ae, float %i.bd)
  %i.bf = call float @llvm.fmuladd.f32(float %i.bb, float %i.am, float %i.be)
  %i.bg = call float @llvm.fmuladd.f32(float %i.ba, float %i.aq, float %i.bf)
  %i.bh = fsub float 1.000000e+00, %i.ay
  %i.bi = call noundef float @sqrtf(float noundef %i.bh) #23
  %i.bj = load float, ptr %i.g, align 8, !tbaa !18 ; 2 uses
  %i.bk = load float, ptr %i.h, align 8, !tbaa !18 ; 2 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.q ; 3 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %4, i64 %i.s ; 3 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %4, i64 %i.u ; 3 uses
  %i.bo = load <2 x float>, ptr %i.d, align 8, !tbaa !18 ; 4 uses
  %i.bp = load <2 x float>, ptr %i.c, align 8, !tbaa !18 ; 4 uses
  %i.bq = fneg <2 x float> %i.bp
  %i.br = fneg <2 x float> %i.bo
  %14 = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.bs = shufflevector <2 x float> %i.bp, <2 x float> %i.bo, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bs
  %i.bu = shufflevector <2 x float> %i.bp, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bu, <2 x float> %i.bt)
  %i.bw = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bj, i64 1 ; 3 uses
  %i.by = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bx, <2 x float> %i.bv) ; 3 uses
  %shift = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.by
  %i.bz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ca = call float @llvm.sqrt.f32(float %i.bz)
  %i.cb = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %i.ca, i64 1
  %i.cd = fdiv <2 x float> splat (float 1.000000e+00), %i.cc ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0
  %i.cf = fmul float %i.bg, %i.ce                 ; 2 uses
  %i.cg = fmul float %i.ax, %i.cf
  %i.ch = extractelement <2 x float> %i.cd, i64 1
  %i.ci = fmul float %i.cf, %i.ch                 ; 3 uses
  %i.cj = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fdiv <2 x float> %i.ck, %i.by           ; 3 uses
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x float> %i.cm, %i.bq
  %i.co = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.bo, <2 x float> %i.cn) ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cs = fmul <2 x float> %i.cr, %i.br
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.bp, <2 x float> %i.cs) ; 2 uses
  %i.cu = fadd <2 x float> %i.ct, %i.cq
  %i.cv = fsub <2 x float> %14, %i.cq
  store <2 x float> %i.cv, ptr %i.bl, align 4, !tbaa !18
  %i.cw = load <2 x float>, ptr %i.bm, align 4, !tbaa !18
  %i.cx = fadd <2 x float> %i.cw, %i.cu
  store <2 x float> %i.cx, ptr %i.bm, align 4, !tbaa !18
  %i.cy = load <2 x float>, ptr %i.bn, align 4, !tbaa !18
  %i.cz = fsub <2 x float> %i.cy, %i.ct
  store <2 x float> %i.cz, ptr %i.bn, align 4, !tbaa !18
  %i.da = fneg <2 x float> %i.bx
  %i.db = fmul <2 x float> %i.cl, %i.da           ; 2 uses
  %i.dc = extractelement <2 x float> %i.db, i64 0
  %i.dd = call float @llvm.fmuladd.f32(float %i.ci, float %i.bj, float %i.dc) ; 2 uses
  %i.de = extractelement <2 x float> %i.db, i64 1
  %i.df = call float @llvm.fmuladd.f32(float %i.ci, float %i.bk, float %i.de) ; 2 uses
  %i.dg = fadd float %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !18
  %i.dj = fsub float %i.di, %i.dd
  store float %i.dj, ptr %i.dh, align 4, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !18
  %i.dm = fadd float %i.dl, %i.dg
  store float %i.dm, ptr %i.dk, align 4, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !18
  %i.dp = fsub float %i.do, %i.df
  store float %i.dp, ptr %i.dn, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.dq = trunc nuw i64 %indvars.iv.next to i32
  %i.dr = icmp sgt i32 %0, %i.dq
  br i1 %i.dr, label %bb.b, label %._crit_edge, !llvm.loop !92

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.076.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.aw, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.076.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_110tab_anglesIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.h = icmp sgt i32 %0, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.06772 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ao, %.loopexit ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = sext i32 %i.o to i64                     ; 2 uses
  %i.u = getelementptr inbounds [12 x i8], ptr %3, i64 %i.t
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %3, i64 %i.v
  %i.x = sext i32 %i.s to i64                     ; 2 uses
  %i.y = getelementptr inbounds [12 x i8], ptr %3, i64 %i.x
  %i.z = call noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.y, ptr noundef %6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.aa = sext i32 %i.m to i64
  %i.ab = getelementptr inbounds [48 x i8], ptr %2, i64 %i.aa ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !15 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !15
  %i.ak = call fastcc noundef float @_ZN12_GLOBAL__N_110bonded_tabEPKciPK13bondedtable_tffffPfS5_(ptr noundef nonnull @.str.11, i32 noundef %i.ac, ptr noundef %i.af, float noundef %i.ah, float noundef %i.aj, float noundef %i.z, float noundef %7, ptr noundef %i.g, ptr noundef %i.f)
  %i.al = load float, ptr %8, align 4, !tbaa !18
  %i.am = fadd float %i.ak, %i.al
  store float %i.am, ptr %8, align 4, !tbaa !18
  %i.an = load float, ptr %i.g, align 4, !tbaa !18
  %i.ao = fadd float %.06772, %i.an               ; 2 uses
  %i.ap = load float, ptr %i.e, align 4, !tbaa !18 ; 3 uses
  %i.aq = fmul float %i.ap, %i.ap                 ; 2 uses
  %i.ar = fcmp olt float %i.aq, 1.000000e+00
  br i1 %i.ar, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %i.as = load float, ptr %i.f, align 4, !tbaa !18
  %i.at = fsub float 1.000000e+00, %i.aq
  %i.au = call noundef float @sqrtf(float noundef %i.at) #23
  %i.av = load float, ptr %i.j, align 8, !tbaa !18 ; 2 uses
  %i.aw = load float, ptr %i.k, align 8, !tbaa !18 ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %4, i64 %i.t ; 3 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 3 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %4, i64 %i.x ; 3 uses
  %i.ba = load <2 x float>, ptr %i.d, align 8, !tbaa !18 ; 4 uses
  %i.bb = load <2 x float>, ptr %i.c, align 8, !tbaa !18 ; 4 uses
  %i.bc = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bd = fneg <2 x float> %i.bb
  %i.be = fneg <2 x float> %i.ba
  %14 = load <2 x float>, ptr %i.ax, align 4, !tbaa !18
  %i.bf = shufflevector <2 x float> %i.bb, <2 x float> %i.ba, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bg = fmul <2 x float> %i.bf, %i.bf
  %i.bh = shufflevector <2 x float> %i.bb, <2 x float> %i.ba, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bh, <2 x float> %i.bg)
  %i.bj = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.av, i64 1 ; 3 uses
  %i.bl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bk, <2 x float> %i.bi) ; 3 uses
  %shift = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.bl
  %i.bm = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bn = call float @llvm.sqrt.f32(float %i.bm)
  %i.bo = insertelement <2 x float> %i.bc, float %i.bn, i64 1
  %i.bp = fdiv <2 x float> splat (float 1.000000e+00), %i.bo ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  %i.br = fmul float %i.as, %i.bq                 ; 2 uses
  %i.bs = fmul float %i.ap, %i.br
  %i.bt = extractelement <2 x float> %i.bp, i64 1
  %i.bu = fmul float %i.br, %i.bt                 ; 3 uses
  %i.bv = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fdiv <2 x float> %i.bw, %i.bl           ; 3 uses
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.by, %i.bd
  %i.ca = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.ba, <2 x float> %i.bz) ; 2 uses
  %i.cd = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = fmul <2 x float> %i.cd, %i.be
  %i.cf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.bb, <2 x float> %i.ce) ; 2 uses
  %i.cg = fadd <2 x float> %i.cf, %i.cc
  %i.ch = fsub <2 x float> %14, %i.cc
  store <2 x float> %i.ch, ptr %i.ax, align 4, !tbaa !18
  %i.ci = load <2 x float>, ptr %i.ay, align 4, !tbaa !18
  %i.cj = fadd <2 x float> %i.ci, %i.cg
  store <2 x float> %i.cj, ptr %i.ay, align 4, !tbaa !18
  %i.ck = load <2 x float>, ptr %i.az, align 4, !tbaa !18
  %i.cl = fsub <2 x float> %i.ck, %i.cf
  store <2 x float> %i.cl, ptr %i.az, align 4, !tbaa !18
  %i.cm = fneg <2 x float> %i.bk
  %i.cn = fmul <2 x float> %i.bx, %i.cm           ; 2 uses
  %i.co = extractelement <2 x float> %i.cn, i64 0
  %i.cp = call float @llvm.fmuladd.f32(float %i.bu, float %i.av, float %i.co) ; 2 uses
  %i.cq = extractelement <2 x float> %i.cn, i64 1
  %i.cr = call float @llvm.fmuladd.f32(float %i.bu, float %i.aw, float %i.cq) ; 2 uses
  %i.cs = fadd float %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !18
  %i.cv = fsub float %i.cu, %i.cp
  store float %i.cv, ptr %i.ct, align 4, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !18
  %i.cy = fadd float %i.cx, %i.cs
  store float %i.cy, ptr %i.cw, align 4, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !18
  %i.db = fsub float %i.da, %i.cr
  store float %i.db, ptr %i.cz, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.dc = trunc nuw i64 %indvars.iv.next to i32
  %i.dd = icmp sgt i32 %0, %i.dc
  br i1 %i.dd, label %bb.b, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.067.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ao, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.067.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_15pdihsIL18BondedKernelFlavor1EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, float noundef %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [3 x float], align 4              ; 4 uses
  %i.e = alloca [3 x float], align 4              ; 4 uses
  %i.f = alloca [3 x float], align 4              ; 4 uses
  %i.g = alloca [3 x float], align 4              ; 4 uses
  %i.h = alloca [3 x float], align 4              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = fsub float 1.000000e+00, %7              ; 2 uses
  %i.k = zext nneg i32 %0 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float 0.000000e+00

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.062 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %1, i64 %.062 ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16   ; 3 uses
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 3 uses
  %i.q = getelementptr i8, ptr %i.l, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16   ; 3 uses
  %i.s = getelementptr i8, ptr %i.l, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16   ; 3 uses
  %i.u = sext i32 %i.n to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %3, i64 %i.u
  %i.w = sext i32 %i.p to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %3, i64 %i.w
  %i.y = sext i32 %i.r to i64
  %i.z = getelementptr inbounds [12 x i8], ptr %3, i64 %i.y
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds [12 x i8], ptr %3, i64 %i.aa
  %i.ac = call noundef float @_Z9dih_anglePKfS0_S0_S0_PK5t_pbcPfS4_S4_S4_S4_PiS5_S5_(ptr noundef %i.v, ptr noundef %i.x, ptr noundef %i.z, ptr noundef %i.ab, ptr noundef %6, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ %.062, %bb.b ] ; 2 uses
  %.058 = phi float [ %i.be, %bb.g ], [ 0.000000e+00, %bb.b ]
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [48 x i8], ptr %2, i64 %i.af ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !15
  %i.al = load float, ptr %i.ag, align 4, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.an = load float, ptr %i.am, align 4, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !15
  %i.aq = fmul float %7, %i.an
  %i.ar = call float @llvm.fmuladd.f32(float %i.j, float %i.al, float %i.aq)
  %i.as = fpext float %i.ar to double
  %i.at = fmul double %i.as, f0x3F91DF46A2529D39
  %i.au = fptrunc double %i.at to float
  %i.av = fmul float %7, %i.ak
  %i.aw = call float @llvm.fmuladd.f32(float %i.j, float %i.ai, float %i.av)
  %i.ax = sitofp i32 %i.ap to float               ; 2 uses
  %i.ay = fneg float %i.au
  %i.az = call float @llvm.fmuladd.f32(float %i.ax, float %i.ac, float %i.ay)
  %i.ba = call noundef float @sinf(float noundef %i.az) #23
  %i.bb = fneg float %i.aw
  %i.bc = fmul float %i.bb, %i.ax
  %i.bd = fmul float %i.ba, %i.bc
  %i.be = fadd float %.058, %i.bd                 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 5   ; 4 uses
  %i.bf = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.bf, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.bg = getelementptr i8, ptr %i.ad, i64 24
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !16
  %i.bi = icmp eq i32 %i.bh, %i.n
  br i1 %i.bi, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr i8, ptr %i.ad, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !16
  %i.bl = icmp eq i32 %i.bk, %i.p
  br i1 %i.bl, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.bm = getelementptr i8, ptr %i.ad, i64 32
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !16
  %i.bo = icmp eq i32 %i.bn, %i.r
  br i1 %i.bo, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr i8, ptr %i.ad, i64 36
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !16
  %i.br = icmp eq i32 %i.bq, %i.t
  br i1 %i.br, label %bb.c, label %.critedge, !llvm.loop !94

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.g
  %i.bs = trunc nsw i64 %indvars.iv.next to i32
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !16
  %i.bu = load i32, ptr %i.b, align 4, !tbaa !16
  %i.bv = load i32, ptr %i.c, align 4, !tbaa !16
  call void @_Z10do_dih_fupIL18BondedKernelFlavor1EEviiiifPfS1_S1_S1_S1_PA4_fPA3_fPK5t_pbcPA3_Kfiii(i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.t, float noundef %i.be, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %3, i32 noundef %i.bt, i32 noundef %i.bu, i32 noundef %i.bv)
  %i.bw = icmp sgt i32 %0, %i.bs
  br i1 %i.bw, label %bb.b, label %._crit_edge, !llvm.loop !95
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_16rbdihsIL18BondedKernelFlavor1EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [3 x float], align 4              ; 4 uses
  %i.e = alloca [3 x float], align 4              ; 4 uses
  %i.f = alloca [3 x float], align 4              ; 4 uses
  %i.g = alloca [3 x float], align 4              ; 4 uses
  %i.h = alloca [3 x float], align 4              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  %i.i = fsub float 1.000000e+00, %7              ; 6 uses
  %i.j = icmp sgt i32 %0, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_116cross_bond_angleIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.ec = fadd float %.0111, %i.eb                ; 2 uses
  %i.ed = getelementptr inbounds [12 x i8], ptr %5, i64 %.0.i100104 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !18
  %i.eg = fadd float %i.ef, %i.dg
  %i.eh = load <2 x float>, ptr %i.ed, align 4, !tbaa !18
  %i.ei = fadd <2 x float> %i.eh, %i.dc
  store <2 x float> %i.ei, ptr %i.ed, align 4, !tbaa !18
  store float %i.eg, ptr %i.ee, align 4, !tbaa !18
  %i.ej = load float, ptr %i.i, align 4, !tbaa !18
  %i.ek = fadd float %i.ej, %i.dk
  %i.el = load <2 x float>, ptr %i.h, align 4, !tbaa !18
  %i.em = fadd <2 x float> %i.el, %i.de
  store <2 x float> %i.em, ptr %i.h, align 4, !tbaa !18
  store float %i.ek, ptr %i.i, align 4, !tbaa !18
  %i.en = getelementptr inbounds [12 x i8], ptr %5, i64 %.0.i92106 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !18
  %i.eq = fadd float %i.ep, %i.di
  %i.er = load <2 x float>, ptr %i.en, align 4, !tbaa !18
  %i.es = fadd <2 x float> %i.er, %i.cy
  store <2 x float> %i.es, ptr %i.en, align 4, !tbaa !18
  store float %i.eq, ptr %i.eo, align 4, !tbaa !18
  %i.et = trunc nuw i64 %indvars.iv.next to i32
  %i.eu = icmp sgt i32 %0, %i.et
  br i1 %i.eu, label %bb.b, label %._crit_edge, !llvm.loop !118

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit96, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ec, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_112urey_bradleyIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %i.e = alloca [3 x float], align 8              ; 8 uses
  %i.f = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.g = icmp sgt i32 %0, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = fsub float 1.000000e+00, %7              ; 4 uses
  %.not.i = icmp eq ptr %6, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 268 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.backedge ] ; 2 uses
  %.0127 = phi float [ 0.000000e+00, %.lr.ph ], [ %.0.be, %.backedge ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = getelementptr i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16
  %i.u = getelementptr i8, ptr %i.q, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.w = getelementptr i8, ptr %i.q, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !16
  %i.y = sext i32 %i.r to i64
  %i.z = getelementptr inbounds [48 x i8], ptr %2, i64 %i.y ; 8 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !15
  %i.ab = fpext float %i.aa to double
  %i.ac = fmul double %i.ab, f0x3F91DF46A2529D39
  %i.ad = fptrunc double %i.ac to float           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !15 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !15 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !15 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !15
  %i.am = fpext float %i.al to double
  %i.an = fmul double %i.am, f0x3F91DF46A2529D39
  %i.ao = fptrunc double %i.an to float           ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !15 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.as = load float, ptr %i.ar, align 4, !tbaa !15 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.au = load float, ptr %i.at, align 4, !tbaa !15 ; 2 uses
  %i.av = sext i32 %i.t to i64                    ; 3 uses
  %i.aw = getelementptr inbounds [12 x i8], ptr %3, i64 %i.av ; 4 uses
  %i.ax = sext i32 %i.v to i64                    ; 2 uses
  %i.ay = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ax
  %i.az = sext i32 %i.x to i64                    ; 3 uses
  %i.ba = getelementptr inbounds [12 x i8], ptr %3, i64 %i.az ; 4 uses
  %i.bb = call noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ba, ptr noundef %6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.bc = fmul float %7, %i.aq
  %i.bd = call float @llvm.fmuladd.f32(float %i.h, float %i.af, float %i.bc) ; 3 uses
  %i.be = fmul float %7, %i.ao
  %i.bf = call float @llvm.fmuladd.f32(float %i.h, float %i.ad, float %i.be)
  %i.bg = fsub float %i.bb, %i.bf                 ; 4 uses
  %i.bh = fmul float %i.bg, %i.bg                 ; 2 uses
  %i.bi = fneg float %i.bd
  %i.bj = fmul float %i.bg, %i.bi
  %i.bk = fmul float %i.bd, 5.000000e-01
  %i.bl = fmul float %i.bk, %i.bh
  %i.bm = fsub float %i.aq, %i.af
  %i.bn = fmul float %i.bm, 5.000000e-01
  %i.bo = fsub float %i.ad, %i.ao
  %i.bp = fmul float %i.bd, %i.bo
  %i.bq = fmul float %i.bp, %i.bg
  %i.br = call noundef float @llvm.fmuladd.f32(float %i.bn, float %i.bh, float %i.bq)
  %i.bs = load float, ptr %8, align 4, !tbaa !18
  %i.bt = fadd float %i.bs, %i.br                 ; 2 uses
  store float %i.bt, ptr %8, align 4, !tbaa !18
  %i.bu = fadd float %.0127, %i.bl                ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bv = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.aw, ptr noundef %i.ba, ptr noundef nonnull %i.e)
  %i.bw = sext i32 %i.bv to i64
  %i.bx = load <2 x float>, ptr %i.e, align 8, !tbaa !18
  %.pre138 = load float, ptr %i.j, align 8, !tbaa !18
  %.pre139 = load float, ptr %8, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit

bb.d:                                             ; preds = %bb.b
  %i.by = load <2 x float>, ptr %i.aw, align 4, !tbaa !18
  %i.bz = load <2 x float>, ptr %i.ba, align 4, !tbaa !18
  %i.ca = fsub <2 x float> %i.by, %i.bz           ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !18
  %i.cf = fsub float %i.cc, %i.ce                 ; 2 uses
  store <2 x float> %i.ca, ptr %i.e, align 8, !tbaa !18
  store float %i.cf, ptr %i.j, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit: ; preds = %bb.c, %bb.d
  %i.cg = phi float [ %.pre139, %bb.c ], [ %i.bt, %bb.d ]
  %i.ch = phi float [ %.pre138, %bb.c ], [ %i.cf, %bb.d ] ; 2 uses
  %.0.i = phi i64 [ %i.bw, %bb.c ], [ 22, %bb.d ]
  %i.ci = phi <2 x float> [ %i.bx, %bb.c ], [ %i.ca, %bb.d ] ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ci, %i.ci
  %i.cj = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ck = extractelement <2 x float> %i.ci, i64 0 ; 2 uses
  %i.cl = call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cj)
  %i.cm = call noundef float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.cl) ; 3 uses
  %sqrt = call float @llvm.sqrt.f32(float %i.cm)
  %i.cn = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.co = fmul float %i.cm, %i.cn
  %i.cp = fmul float %7, %i.au
  %i.cq = call float @llvm.fmuladd.f32(float %i.h, float %i.aj, float %i.cp) ; 3 uses
  %i.cr = fmul float %7, %i.as
  %i.cs = call float @llvm.fmuladd.f32(float %i.h, float %i.ah, float %i.cr)
  %i.ct = fsub float %i.co, %i.cs                 ; 4 uses
  %i.cu = fmul float %i.ct, %i.ct                 ; 2 uses
  %i.cv = fneg float %i.cq
  %i.cw = fmul float %i.ct, %i.cv
  %i.cx = fmul float %i.cq, 5.000000e-01
  %i.cy = fmul float %i.cx, %i.cu
  %i.cz = fsub float %i.au, %i.aj
  %i.da = fmul float %i.cz, 5.000000e-01
  %i.db = fsub float %i.ah, %i.as
  %i.dc = fmul float %i.db, %i.cq
  %i.dd = fmul float %i.dc, %i.ct
  %i.de = call noundef float @llvm.fmuladd.f32(float %i.da, float %i.cu, float %i.dd)
  %i.df = fadd float %i.cg, %i.de
  store float %i.df, ptr %8, align 4, !tbaa !18
  %i.dg = load float, ptr %i.f, align 4, !tbaa !18 ; 3 uses
  %i.dh = fmul float %i.dg, %i.dg                 ; 2 uses
  %i.di = fcmp olt float %i.dh, 1.000000e+00
  br i1 %i.di, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.dj = fsub float 1.000000e+00, %i.dh
  %i.dk = call noundef float @sqrtf(float noundef %i.dj) #23
  %i.dl = load float, ptr %i.k, align 8, !tbaa !18 ; 2 uses
  %i.dm = load float, ptr %i.l, align 8, !tbaa !18 ; 2 uses
  %i.dn = getelementptr inbounds [16 x i8], ptr %4, i64 %i.av ; 3 uses
  %i.do = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ax ; 3 uses
  %i.dp = getelementptr inbounds [16 x i8], ptr %4, i64 %i.az ; 3 uses
  %i.dq = load <2 x float>, ptr %i.d, align 8, !tbaa !18 ; 4 uses
  %i.dr = load <2 x float>, ptr %i.c, align 8, !tbaa !18 ; 4 uses
  %i.ds = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dt = fneg <2 x float> %i.dr
  %i.du = fneg <2 x float> %i.dq
  %14 = load <2 x float>, ptr %i.dn, align 4, !tbaa !18
  %i.dv = shufflevector <2 x float> %i.dr, <2 x float> %i.dq, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dw = fmul <2 x float> %i.dv, %i.dv
  %i.dx = shufflevector <2 x float> %i.dr, <2 x float> %i.dq, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.dx, <2 x float> %i.dw)
  %i.dz = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.dl, i64 1 ; 3 uses
  %i.eb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.ea, <2 x float> %i.dy) ; 3 uses
  %shift = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop143 = fmul <2 x float> %shift, %i.eb
  %i.ec = extractelement <2 x float> %foldExtExtBinop143, i64 0
  %i.ed = call float @llvm.sqrt.f32(float %i.ec)
  %i.ee = insertelement <2 x float> %i.ds, float %i.ed, i64 1
  %i.ef = fdiv <2 x float> splat (float 1.000000e+00), %i.ee ; 2 uses
  %i.eg = extractelement <2 x float> %i.ef, i64 0
  %i.eh = fmul float %i.bj, %i.eg                 ; 2 uses
  %i.ei = fmul float %i.dg, %i.eh
  %i.ej = extractelement <2 x float> %i.ef, i64 1
  %i.ek = fmul float %i.eh, %i.ej                 ; 3 uses
  %i.el = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fdiv <2 x float> %i.em, %i.eb           ; 3 uses
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x float> %i.eo, %i.dt
  %i.eq = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.dq, <2 x float> %i.ep) ; 3 uses
  %i.et = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eu = fmul <2 x float> %i.et, %i.du
  %i.ev = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.dr, <2 x float> %i.eu) ; 3 uses
  %i.ew = fadd <2 x float> %i.ev, %i.es           ; 2 uses
  %i.ex = fsub <2 x float> %14, %i.es
  store <2 x float> %i.ex, ptr %i.dn, align 4, !tbaa !18
  %i.ey = load <2 x float>, ptr %i.do, align 4, !tbaa !18
  %i.ez = fadd <2 x float> %i.ew, %i.ey
  store <2 x float> %i.ez, ptr %i.do, align 4, !tbaa !18
  %i.fa = load <2 x float>, ptr %i.dp, align 4, !tbaa !18
  %i.fb = fsub <2 x float> %i.fa, %i.ev
  store <2 x float> %i.fb, ptr %i.dp, align 4, !tbaa !18
  %i.fc = fneg <2 x float> %i.ea
  %i.fd = fmul <2 x float> %i.en, %i.fc           ; 2 uses
  %i.fe = extractelement <2 x float> %i.fd, i64 0
  %i.ff = call float @llvm.fmuladd.f32(float %i.ek, float %i.dl, float %i.fe) ; 3 uses
  %i.fg = extractelement <2 x float> %i.fd, i64 1
  %i.fh = call float @llvm.fmuladd.f32(float %i.ek, float %i.dm, float %i.fg) ; 3 uses
  %i.fi = fadd float %i.fh, %i.ff                 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !18
  %i.fl = fsub float %i.fk, %i.ff
  store float %i.fl, ptr %i.fj, align 4, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !18
  %i.fo = fadd float %i.fi, %i.fn
  store float %i.fo, ptr %i.fm, align 4, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !18
  %i.fr = fsub float %i.fq, %i.fh
  store float %i.fr, ptr %i.fp, align 4, !tbaa !18
  %i.fs = load i32, ptr %i.a, align 4, !tbaa !16
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [12 x i8], ptr %5, i64 %i.ft ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !18
  %i.fx = fsub float %i.fw, %i.ff
  %i.fy = load <2 x float>, ptr %i.fu, align 4, !tbaa !18
  %i.fz = fsub <2 x float> %i.fy, %i.es
  store <2 x float> %i.fz, ptr %i.fu, align 4, !tbaa !18
  store float %i.fx, ptr %i.fv, align 4, !tbaa !18
  %i.ga = load float, ptr %i.n, align 4, !tbaa !18
  %i.gb = fadd float %i.ga, %i.fi
  %i.gc = load <2 x float>, ptr %i.m, align 4, !tbaa !18
  %i.gd = fadd <2 x float> %i.gc, %i.ew
  store <2 x float> %i.gd, ptr %i.m, align 4, !tbaa !18
  store float %i.gb, ptr %i.n, align 4, !tbaa !18
  %i.ge = load i32, ptr %i.b, align 4, !tbaa !16
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [12 x i8], ptr %5, i64 %i.gf ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !18
  %i.gj = fsub float %i.gi, %i.fh
  %i.gk = load <2 x float>, ptr %i.gg, align 4, !tbaa !18
  %i.gl = fsub <2 x float> %i.gk, %i.ev
  store <2 x float> %i.gl, ptr %i.gg, align 4, !tbaa !18
  store float %i.gj, ptr %i.gh, align 4, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.gm = fcmp oeq float %i.cm, 0.000000e+00
  br i1 %i.gm, label %.backedge, label %.backedge.loopexit

.backedge:                                        ; preds = %.backedge.loopexit, %bb.f
  %.0.be = phi float [ %i.bu, %bb.f ], [ %i.id, %.backedge.loopexit ] ; 2 uses
  %i.gn = trunc nuw i64 %indvars.iv.next to i32
  %i.go = icmp sgt i32 %0, %i.gn
  br i1 %i.go, label %bb.b, label %._crit_edge, !llvm.loop !119

.backedge.loopexit:                               ; preds = %bb.f
  %i.gp = fmul float %i.cn, %i.cw                 ; 3 uses
  %i.gq = getelementptr inbounds [16 x i8], ptr %4, i64 %i.av ; 4 uses
  %i.gr = getelementptr inbounds [16 x i8], ptr %4, i64 %i.az ; 4 uses
  %i.gs = getelementptr inbounds [12 x i8], ptr %5, i64 %.0.i ; 4 uses
  %i.gt = load float, ptr %i.e, align 8, !tbaa !18
  %i.gu = fmul float %i.gp, %i.gt                 ; 4 uses
  %i.gv = load float, ptr %i.gq, align 4, !tbaa !18
  %i.gw = fadd float %i.gv, %i.gu
  store float %i.gw, ptr %i.gq, align 4, !tbaa !18
  %i.gx = load float, ptr %i.gr, align 4, !tbaa !18
  %i.gy = fsub float %i.gx, %i.gu
  store float %i.gy, ptr %i.gr, align 4, !tbaa !18
  %i.gz = load float, ptr %i.gs, align 4, !tbaa !18
  %i.ha = fadd float %i.gu, %i.gz
  store float %i.ha, ptr %i.gs, align 4, !tbaa !18
  %i.hb = load float, ptr %i.m, align 4, !tbaa !18
  %i.hc = fsub float %i.hb, %i.gu
  store float %i.hc, ptr %i.m, align 4, !tbaa !18
  %i.hd = load float, ptr %i.i, align 4, !tbaa !18
  %i.he = fmul float %i.gp, %i.hd                 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !18
  %i.hh = fadd float %i.hg, %i.he
  store float %i.hh, ptr %i.hf, align 4, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gr, i64 4 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !18
  %i.hk = fsub float %i.hj, %i.he
  store float %i.hk, ptr %i.hi, align 4, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gs, i64 4 ; 2 uses
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !18
  %i.hn = fadd float %i.he, %i.hm
  store float %i.hn, ptr %i.hl, align 4, !tbaa !18
  %i.ho = load float, ptr %i.o, align 4, !tbaa !18
  %i.hp = fsub float %i.ho, %i.he
  store float %i.hp, ptr %i.o, align 4, !tbaa !18
  %i.hq = load float, ptr %i.j, align 8, !tbaa !18
  %i.hr = fmul float %i.gp, %i.hq                 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !18
  %i.hu = fadd float %i.ht, %i.hr
  store float %i.hu, ptr %i.hs, align 4, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !18
  %i.hx = fsub float %i.hw, %i.hr
  store float %i.hx, ptr %i.hv, align 4, !tbaa !18
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !18
  %i.ia = fadd float %i.hr, %i.hz
  store float %i.ia, ptr %i.hy, align 4, !tbaa !18
  %i.ib = load float, ptr %i.p, align 4, !tbaa !18
  %i.ic = fsub float %i.ib, %i.hr
  store float %i.ic, ptr %i.p, align 4, !tbaa !18
  %i.id = fadd float %i.bu, %i.cy
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.0.be, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_114quartic_anglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.07992 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ay, %bb.d ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %i.m = getelementptr i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = sext i32 %i.n to i64                     ; 2 uses
  %i.t = getelementptr inbounds [12 x i8], ptr %3, i64 %i.s
  %i.u = sext i32 %i.p to i64                     ; 2 uses
  %i.v = getelementptr inbounds [12 x i8], ptr %3, i64 %i.u
  %i.w = sext i32 %i.r to i64                     ; 2 uses
  %i.x = getelementptr inbounds [12 x i8], ptr %3, i64 %i.w
  %i.y = call noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef %i.t, ptr noundef %i.v, ptr noundef %i.x, ptr noundef %6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.z = fpext float %i.y to double
  %i.aa = sext i32 %i.l to i64
  %i.ab = getelementptr inbounds [48 x i8], ptr %2, i64 %i.aa ; 6 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !15
  %i.ad = fpext float %i.ac to double
  %i.ae = fneg double %i.ad
  %i.af = call double @llvm.fmuladd.f64(double %i.ae, double f0x3F91DF46A2529D39, double %i.z)
  %i.ag = fptrunc double %i.af to float           ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !15 ; 2 uses
  %i.al = call float @llvm.fmuladd.f32(float %i.ak, float %i.ag, float %i.ai)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.an = load float, ptr %i.am, align 4, !tbaa !15 ; 2 uses
  %i.ao = fmul float %i.ag, %i.ag                 ; 3 uses
  %i.ap = call float @llvm.fmuladd.f32(float %i.an, float %i.ao, float %i.al)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !15 ; 2 uses
  %i.as = fmul float %i.ao, %i.ag                 ; 3 uses
  %i.at = call float @llvm.fmuladd.f32(float %i.ar, float %i.as, float %i.ap)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.av = load float, ptr %i.au, align 4, !tbaa !15 ; 2 uses
  %i.aw = fmul float %i.as, %i.ag
  %i.ax = call float @llvm.fmuladd.f32(float %i.av, float %i.aw, float %i.at)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ay = fadd float %.07992, %i.ax               ; 2 uses
  %i.az = load float, ptr %i.e, align 4, !tbaa !18 ; 3 uses
  %i.ba = fmul float %i.az, %i.az                 ; 2 uses
  %i.bb = fcmp olt float %i.ba, 1.000000e+00
  br i1 %i.bb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bc = fmul float %i.av, -4.000000e+00
  %i.bd = fmul float %i.ar, -3.000000e+00
  %i.be = fmul float %i.an, -2.000000e+00
  %i.bf = fsub float 0.000000e+00, %i.ak
  %i.bg = call float @llvm.fmuladd.f32(float %i.be, float %i.ag, float %i.bf)
  %i.bh = call float @llvm.fmuladd.f32(float %i.bd, float %i.ao, float %i.bg)
  %i.bi = call float @llvm.fmuladd.f32(float %i.bc, float %i.as, float %i.bh)
  %i.bj = fsub float 1.000000e+00, %i.ba
  %i.bk = call noundef float @sqrtf(float noundef %i.bj) #23
  %i.bl = load float, ptr %i.g, align 8, !tbaa !18 ; 2 uses
  %i.bm = load float, ptr %i.h, align 8, !tbaa !18 ; 2 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %4, i64 %i.s ; 3 uses
  %i.bo = getelementptr inbounds [16 x i8], ptr %4, i64 %i.u ; 3 uses
  %i.bp = getelementptr inbounds [16 x i8], ptr %4, i64 %i.w ; 3 uses
  %i.bq = load <2 x float>, ptr %i.d, align 8, !tbaa !18 ; 4 uses
  %i.br = load <2 x float>, ptr %i.c, align 8, !tbaa !18 ; 4 uses
  %i.bs = fneg <2 x float> %i.br
  %i.bt = fneg <2 x float> %i.bq
  %14 = load <2 x float>, ptr %i.bn, align 4, !tbaa !18
  %i.bu = shufflevector <2 x float> %i.br, <2 x float> %i.bq, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bv = fmul <2 x float> %i.bu, %i.bu
  %i.bw = shufflevector <2 x float> %i.br, <2 x float> %i.bq, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.bw, <2 x float> %i.bv)
  %i.by = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bl, i64 1 ; 3 uses
  %i.ca = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.bz, <2 x float> %i.bx) ; 3 uses
  %shift = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.ca
  %i.cb = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cc = call float @llvm.sqrt.f32(float %i.cb)
  %i.cd = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.cc, i64 1
  %i.cf = fdiv <2 x float> splat (float 1.000000e+00), %i.ce ; 2 uses
  %i.cg = extractelement <2 x float> %i.cf, i64 0
  %i.ch = fmul float %i.bi, %i.cg                 ; 2 uses
  %i.ci = fmul float %i.az, %i.ch
  %i.cj = extractelement <2 x float> %i.cf, i64 1
  %i.ck = fmul float %i.ch, %i.cj                 ; 3 uses
  %i.cl = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fdiv <2 x float> %i.cm, %i.ca           ; 3 uses
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.co, %i.bs
  %i.cq = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.bq, <2 x float> %i.cp) ; 3 uses
  %i.ct = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cu = fmul <2 x float> %i.ct, %i.bt
  %i.cv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.br, <2 x float> %i.cu) ; 3 uses
  %i.cw = fadd <2 x float> %i.cv, %i.cs           ; 2 uses
  %i.cx = fsub <2 x float> %14, %i.cs
  store <2 x float> %i.cx, ptr %i.bn, align 4, !tbaa !18
  %i.cy = load <2 x float>, ptr %i.bo, align 4, !tbaa !18
  %i.cz = fadd <2 x float> %i.cw, %i.cy
  store <2 x float> %i.cz, ptr %i.bo, align 4, !tbaa !18
  %i.da = load <2 x float>, ptr %i.bp, align 4, !tbaa !18
  %i.db = fsub <2 x float> %i.da, %i.cv
  store <2 x float> %i.db, ptr %i.bp, align 4, !tbaa !18
  %i.dc = fneg <2 x float> %i.bz
  %i.dd = fmul <2 x float> %i.cn, %i.dc           ; 2 uses
  %i.de = extractelement <2 x float> %i.dd, i64 0
  %i.df = call float @llvm.fmuladd.f32(float %i.ck, float %i.bl, float %i.de) ; 3 uses
  %i.dg = extractelement <2 x float> %i.dd, i64 1
  %i.dh = call float @llvm.fmuladd.f32(float %i.ck, float %i.bm, float %i.dg) ; 3 uses
  %i.di = fadd float %i.dh, %i.df                 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !18
  %i.dl = fsub float %i.dk, %i.df
  store float %i.dl, ptr %i.dj, align 4, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !18
  %i.do = fadd float %i.di, %i.dn
  store float %i.do, ptr %i.dm, align 4, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !18
  %i.dr = fsub float %i.dq, %i.dh
  store float %i.dr, ptr %i.dp, align 4, !tbaa !18
  %i.ds = load i32, ptr %i.a, align 4, !tbaa !16
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [12 x i8], ptr %5, i64 %i.dt ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !18
  %i.dx = fsub float %i.dw, %i.df
  %i.dy = load <2 x float>, ptr %i.du, align 4, !tbaa !18
  %i.dz = fsub <2 x float> %i.dy, %i.cs
  store <2 x float> %i.dz, ptr %i.du, align 4, !tbaa !18
  store float %i.dx, ptr %i.dv, align 4, !tbaa !18
  %i.ea = load float, ptr %i.j, align 4, !tbaa !18
  %i.eb = fadd float %i.ea, %i.di
  %i.ec = load <2 x float>, ptr %i.i, align 4, !tbaa !18
  %i.ed = fadd <2 x float> %i.ec, %i.cw
  store <2 x float> %i.ed, ptr %i.i, align 4, !tbaa !18
  store float %i.eb, ptr %i.j, align 4, !tbaa !18
  %i.ee = load i32, ptr %i.b, align 4, !tbaa !16
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [12 x i8], ptr %5, i64 %i.ef ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !18
  %i.ej = fsub float %i.ei, %i.dh
  %i.ek = load <2 x float>, ptr %i.eg, align 4, !tbaa !18
  %i.el = fsub <2 x float> %i.ek, %i.cv
  store <2 x float> %i.el, ptr %i.eg, align 4, !tbaa !18
  store float %i.ej, ptr %i.eh, align 4, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.em = trunc nuw i64 %indvars.iv.next to i32
  %i.en = icmp sgt i32 %0, %i.em
  br i1 %i.en, label %bb.b, label %._crit_edge, !llvm.loop !120

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.079.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ay, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.079.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_110tab_anglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.h = icmp sgt i32 %0, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.07075 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.aq, %bb.d ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = getelementptr i8, ptr %i.n, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %3, i64 %i.v
  %i.x = sext i32 %i.s to i64                     ; 2 uses
  %i.y = getelementptr inbounds [12 x i8], ptr %3, i64 %i.x
  %i.z = sext i32 %i.u to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [12 x i8], ptr %3, i64 %i.z
  %i.ab = call noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef %i.w, ptr noundef %i.y, ptr noundef %i.aa, ptr noundef %6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.ac = sext i32 %i.o to i64
  %i.ad = getelementptr inbounds [48 x i8], ptr %2, i64 %i.ac ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !15 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !15
  %i.am = call fastcc noundef float @_ZN12_GLOBAL__N_110bonded_tabEPKciPK13bondedtable_tffffPfS5_(ptr noundef nonnull @.str.11, i32 noundef %i.ae, ptr noundef %i.ah, float noundef %i.aj, float noundef %i.al, float noundef %i.ab, float noundef %7, ptr noundef %i.g, ptr noundef %i.f)
  %i.an = load float, ptr %8, align 4, !tbaa !18
  %i.ao = fadd float %i.am, %i.an
  store float %i.ao, ptr %8, align 4, !tbaa !18
  %i.ap = load float, ptr %i.g, align 4, !tbaa !18
  %i.aq = fadd float %.07075, %i.ap               ; 2 uses
  %i.ar = load float, ptr %i.e, align 4, !tbaa !18 ; 3 uses
  %i.as = fmul float %i.ar, %i.ar                 ; 2 uses
  %i.at = fcmp olt float %i.as, 1.000000e+00
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.au = load float, ptr %i.f, align 4, !tbaa !18
  %i.av = fsub float 1.000000e+00, %i.as
  %i.aw = call noundef float @sqrtf(float noundef %i.av) #23
  %i.ax = load float, ptr %i.j, align 8, !tbaa !18 ; 2 uses
  %i.ay = load float, ptr %i.k, align 8, !tbaa !18 ; 2 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 3 uses
  %i.ba = getelementptr inbounds [16 x i8], ptr %4, i64 %i.x ; 3 uses
  %i.bb = getelementptr inbounds [16 x i8], ptr %4, i64 %i.z ; 3 uses
  %i.bc = load <2 x float>, ptr %i.d, align 8, !tbaa !18 ; 4 uses
  %i.bd = load <2 x float>, ptr %i.c, align 8, !tbaa !18 ; 4 uses
  %i.be = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bf = fneg <2 x float> %i.bd
  %i.bg = fneg <2 x float> %i.bc
  %14 = load <2 x float>, ptr %i.az, align 4, !tbaa !18
  %i.bh = shufflevector <2 x float> %i.bd, <2 x float> %i.bc, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bi = fmul <2 x float> %i.bh, %i.bh
  %i.bj = shufflevector <2 x float> %i.bd, <2 x float> %i.bc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bj, <2 x float> %i.bi)
  %i.bl = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.ax, i64 1 ; 3 uses
  %i.bn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bm, <2 x float> %i.bk) ; 3 uses
  %shift = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.bn
  %i.bo = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bp = call float @llvm.sqrt.f32(float %i.bo)
  %i.bq = insertelement <2 x float> %i.be, float %i.bp, i64 1
  %i.br = fdiv <2 x float> splat (float 1.000000e+00), %i.bq ; 2 uses
  %i.bs = extractelement <2 x float> %i.br, i64 0
  %i.bt = fmul float %i.au, %i.bs                 ; 2 uses
  %i.bu = fmul float %i.ar, %i.bt
  %i.bv = extractelement <2 x float> %i.br, i64 1
  %i.bw = fmul float %i.bt, %i.bv                 ; 3 uses
  %i.bx = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fdiv <2 x float> %i.by, %i.bn           ; 3 uses
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.ca, %i.bf
  %i.cc = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ce = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.bc, <2 x float> %i.cb) ; 3 uses
  %i.cf = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = fmul <2 x float> %i.cf, %i.bg
  %i.ch = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.bd, <2 x float> %i.cg) ; 3 uses
  %i.ci = fadd <2 x float> %i.ch, %i.ce           ; 2 uses
  %i.cj = fsub <2 x float> %14, %i.ce
  store <2 x float> %i.cj, ptr %i.az, align 4, !tbaa !18
  %i.ck = load <2 x float>, ptr %i.ba, align 4, !tbaa !18
  %i.cl = fadd <2 x float> %i.ci, %i.ck
  store <2 x float> %i.cl, ptr %i.ba, align 4, !tbaa !18
  %i.cm = load <2 x float>, ptr %i.bb, align 4, !tbaa !18
  %i.cn = fsub <2 x float> %i.cm, %i.ch
  store <2 x float> %i.cn, ptr %i.bb, align 4, !tbaa !18
  %i.co = fneg <2 x float> %i.bm
  %i.cp = fmul <2 x float> %i.bz, %i.co           ; 2 uses
  %i.cq = extractelement <2 x float> %i.cp, i64 0
  %i.cr = call float @llvm.fmuladd.f32(float %i.bw, float %i.ax, float %i.cq) ; 3 uses
  %i.cs = extractelement <2 x float> %i.cp, i64 1
  %i.ct = call float @llvm.fmuladd.f32(float %i.bw, float %i.ay, float %i.cs) ; 3 uses
  %i.cu = fadd float %i.ct, %i.cr                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !18
  %i.cx = fsub float %i.cw, %i.cr
  store float %i.cx, ptr %i.cv, align 4, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !18
  %i.da = fadd float %i.cu, %i.cz
  store float %i.da, ptr %i.cy, align 4, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !18
  %i.dd = fsub float %i.dc, %i.ct
  store float %i.dd, ptr %i.db, align 4, !tbaa !18
  %i.de = load i32, ptr %i.a, align 4, !tbaa !16
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [12 x i8], ptr %5, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !18
  %i.dj = fsub float %i.di, %i.cr
  %i.dk = load <2 x float>, ptr %i.dg, align 4, !tbaa !18
  %i.dl = fsub <2 x float> %i.dk, %i.ce
  store <2 x float> %i.dl, ptr %i.dg, align 4, !tbaa !18
  store float %i.dj, ptr %i.dh, align 4, !tbaa !18
  %i.dm = load float, ptr %i.m, align 4, !tbaa !18
  %i.dn = fadd float %i.dm, %i.cu
  %i.do = load <2 x float>, ptr %i.l, align 4, !tbaa !18
  %i.dp = fadd <2 x float> %i.do, %i.ci
  store <2 x float> %i.dp, ptr %i.l, align 4, !tbaa !18
  store float %i.dn, ptr %i.m, align 4, !tbaa !18
  %i.dq = load i32, ptr %i.b, align 4, !tbaa !16
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [12 x i8], ptr %5, i64 %i.dr ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !18
  %i.dv = fsub float %i.du, %i.ct
  %i.dw = load <2 x float>, ptr %i.ds, align 4, !tbaa !18
  %i.dx = fsub <2 x float> %i.dw, %i.ch
  store <2 x float> %i.dx, ptr %i.ds, align 4, !tbaa !18
  store float %i.dv, ptr %i.dt, align 4, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.dy = trunc nuw i64 %indvars.iv.next to i32
  %i.dz = icmp sgt i32 %0, %i.dy
  br i1 %i.dz, label %bb.b, label %._crit_edge, !llvm.loop !121

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.070.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.aq, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.070.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_15pdihsIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [3 x float], align 4              ; 4 uses
  %i.e = alloca [3 x float], align 4              ; 4 uses
  %i.f = alloca [3 x float], align 4              ; 4 uses
  %i.g = alloca [3 x float], align 4              ; 4 uses
  %i.h = alloca [3 x float], align 4              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = fsub float 1.000000e+00, %7              ; 2 uses
  %i.k = zext nneg i32 %0 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.062.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bl, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.062.lcssa

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.067 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.06266 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bl, %.critedge ]
  %i.l = getelementptr [4 x i8], ptr %1, i64 %.067 ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16   ; 3 uses
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 3 uses
  %i.q = getelementptr i8, ptr %i.l, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16   ; 3 uses
  %i.s = getelementptr i8, ptr %i.l, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16   ; 3 uses
  %i.u = sext i32 %i.n to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %3, i64 %i.u
  %i.w = sext i32 %i.p to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %3, i64 %i.w
  %i.y = sext i32 %i.r to i64
  %i.z = getelementptr inbounds [12 x i8], ptr %3, i64 %i.y
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds [12 x i8], ptr %3, i64 %i.aa
  %i.ac = call noundef float @_Z9dih_anglePKfS0_S0_S0_PK5t_pbcPfS4_S4_S4_S4_PiS5_S5_(ptr noundef %i.v, ptr noundef %i.x, ptr noundef %i.z, ptr noundef %i.ab, ptr noundef %6, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.promoted = load float, ptr %8, align 4, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ %.067, %bb.b ] ; 2 uses
  %i.ad = phi float [ %i.br, %bb.g ], [ %.promoted, %bb.b ]
  %.163 = phi float [ %i.bl, %bb.g ], [ %.06266, %bb.b ]
  %.058 = phi float [ %i.bs, %bb.g ], [ 0.000000e+00, %bb.b ]
  %i.ae = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [48 x i8], ptr %2, i64 %i.ag ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !15 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !15 ; 2 uses
  %i.am = load float, ptr %i.ah, align 4, !tbaa !15 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.ao = load float, ptr %i.an, align 4, !tbaa !15 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !15
  %i.ar = fmul float %7, %i.ao
  %i.as = call float @llvm.fmuladd.f32(float %i.j, float %i.am, float %i.ar)
  %i.at = fsub float %i.ao, %i.am
  %i.au = insertelement <2 x float> poison, float %i.as, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.at, i64 1
  %i.aw = fpext <2 x float> %i.av to <2 x double>
  %i.ax = fmul <2 x double> %i.aw, splat (double f0x3F91DF46A2529D39)
  %i.ay = fptrunc <2 x double> %i.ax to <2 x float> ; 2 uses
  %i.az = fmul float %7, %i.al
  %i.ba = call float @llvm.fmuladd.f32(float %i.j, float %i.aj, float %i.az) ; 3 uses
  %i.bb = sitofp i32 %i.aq to float               ; 2 uses
  %i.bc = extractelement <2 x float> %i.ay, i64 0
  %i.bd = fneg float %i.bc
  %i.be = call float @llvm.fmuladd.f32(float %i.bb, float %i.ac, float %i.bd) ; 2 uses
  %i.bf = call noundef float @sinf(float noundef %i.be) #23 ; 2 uses
  %i.bg = fneg float %i.ba
  %i.bh = fmul float %i.bg, %i.bb
  %i.bi = fmul float %i.bf, %i.bh
  %i.bj = call noundef float @cosf(float noundef %i.be) #23
  %i.bk = fadd float %i.bj, 1.000000e+00          ; 2 uses
  %i.bl = call float @llvm.fmuladd.f32(float %i.ba, float %i.bk, float %.163) ; 3 uses
  %i.bm = fsub float %i.al, %i.aj
  %i.bn = extractelement <2 x float> %i.ay, i64 1
  %i.bo = fmul float %i.ba, %i.bn
  %i.bp = fmul float %i.bf, %i.bo
  %i.bq = call float @llvm.fmuladd.f32(float %i.bm, float %i.bk, float %i.bp)
  %i.br = fadd float %i.ad, %i.bq                 ; 2 uses
  store float %i.br, ptr %8, align 4, !tbaa !18
  %i.bs = fadd float %.058, %i.bi                 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 5   ; 4 uses
  %i.bt = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.bt, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.bu = getelementptr i8, ptr %i.ae, i64 24
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !16
  %i.bw = icmp eq i32 %i.bv, %i.n
  br i1 %i.bw, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.bx = getelementptr i8, ptr %i.ae, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !16
  %i.bz = icmp eq i32 %i.by, %i.p
  br i1 %i.bz, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr i8, ptr %i.ae, i64 32
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_116cross_bond_angleIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.db = fmul float %i.co, %i.bg
  %i.dc = call float @llvm.fmuladd.f32(float %i.cj, float %i.bi, float %i.db) ; 2 uses
  %i.dd = fmul float %i.co, %i.cb
  %i.de = call float @llvm.fmuladd.f32(float %i.cm, float %i.bh, float %i.dd) ; 2 uses
  %i.df = fneg float %i.dc
  %i.dg = fsub float %i.df, %i.de
  %i.dh = load <2 x float>, ptr %i.cc, align 4, !tbaa !18
  %i.di = fadd <2 x float> %i.cy, %i.dh
  store <2 x float> %i.di, ptr %i.cc, align 4, !tbaa !18
  %i.dj = load <2 x float>, ptr %i.cd, align 4, !tbaa !18
  %i.dk = fadd <2 x float> %i.da, %i.dj
  store <2 x float> %i.dk, ptr %i.cd, align 4, !tbaa !18
  %i.dl = load <2 x float>, ptr %i.ce, align 4, !tbaa !18
  %i.dm = fadd <2 x float> %i.cu, %i.dl
  store <2 x float> %i.dm, ptr %i.ce, align 4, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !18
  %i.dp = fadd float %i.dc, %i.do
  store float %i.dp, ptr %i.dn, align 4, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !18
  %i.ds = fadd float %i.dg, %i.dr
  store float %i.ds, ptr %i.dq, align 4, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !18
  %i.dv = fadd float %i.de, %i.du
  store float %i.dv, ptr %i.dt, align 4, !tbaa !18
  %i.dw = fmul float %i.v, %i.cf
  %i.dx = fmul float %i.cg, %i.dw
  %i.dy = fadd float %.097, %i.dx                 ; 2 uses
  %i.dz = trunc nuw i64 %indvars.iv.next to i32
  %i.ea = icmp sgt i32 %0, %i.dz
  br i1 %i.ea, label %bb.b, label %._crit_edge, !llvm.loop !146

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit91, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dy, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_112urey_bradleyIL18BondedKernelFlavor3EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %i.e = alloca [3 x float], align 8              ; 6 uses
  %i.f = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.g = icmp sgt i32 %0, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = fsub float 1.000000e+00, %7              ; 4 uses
  %.not.i = icmp eq ptr %6, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.backedge ] ; 2 uses
  %.0118 = phi float [ 0.000000e+00, %.lr.ph ], [ %.0.be, %.backedge ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.r = getelementptr i8, ptr %i.l, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = sext i32 %i.m to i64
  %i.u = getelementptr inbounds [48 x i8], ptr %2, i64 %i.t ; 8 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !15
  %i.w = fpext float %i.v to double
  %i.x = fmul double %i.w, f0x3F91DF46A2529D39
  %i.y = fptrunc double %i.x to float             ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !15 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !15 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !15 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ag = load float, ptr %i.af, align 4, !tbaa !15
  %i.ah = fpext float %i.ag to double
  %i.ai = fmul double %i.ah, f0x3F91DF46A2529D39
  %i.aj = fptrunc double %i.ai to float           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.al = load float, ptr %i.ak, align 4, !tbaa !15 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.an = load float, ptr %i.am, align 4, !tbaa !15 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !15 ; 2 uses
  %i.aq = sext i32 %i.o to i64                    ; 3 uses
  %i.ar = getelementptr inbounds [12 x i8], ptr %3, i64 %i.aq ; 4 uses
  %i.as = sext i32 %i.q to i64                    ; 2 uses
  %i.at = getelementptr inbounds [12 x i8], ptr %3, i64 %i.as
  %i.au = sext i32 %i.s to i64                    ; 3 uses
  %i.av = getelementptr inbounds [12 x i8], ptr %3, i64 %i.au ; 4 uses
  %i.aw = call noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %i.av, ptr noundef %6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.ax = fmul float %7, %i.al
  %i.ay = call float @llvm.fmuladd.f32(float %i.h, float %i.aa, float %i.ax) ; 3 uses
  %i.az = fmul float %7, %i.aj
  %i.ba = call float @llvm.fmuladd.f32(float %i.h, float %i.y, float %i.az)
  %i.bb = fsub float %i.aw, %i.ba                 ; 4 uses
  %i.bc = fmul float %i.bb, %i.bb                 ; 2 uses
  %i.bd = fneg float %i.ay
  %i.be = fmul float %i.bb, %i.bd
  %i.bf = fmul float %i.ay, 5.000000e-01
  %i.bg = fmul float %i.bf, %i.bc
  %i.bh = fsub float %i.al, %i.aa
  %i.bi = fmul float %i.bh, 5.000000e-01
  %i.bj = fsub float %i.y, %i.aj
  %i.bk = fmul float %i.ay, %i.bj
  %i.bl = fmul float %i.bk, %i.bb
  %i.bm = call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bc, float %i.bl)
  %i.bn = load float, ptr %8, align 4, !tbaa !18
  %i.bo = fadd float %i.bn, %i.bm                 ; 2 uses
  store float %i.bo, ptr %8, align 4, !tbaa !18
  %i.bp = fadd float %.0118, %i.bg                ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bq = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ar, ptr noundef %i.av, ptr noundef nonnull %i.e) ; 0 uses
  %i.br = load <2 x float>, ptr %i.e, align 8, !tbaa !18
  %.pre123 = load float, ptr %i.i, align 8, !tbaa !18
  %.pre124 = load float, ptr %8, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit

bb.d:                                             ; preds = %bb.b
  %i.bs = load <2 x float>, ptr %i.ar, align 4, !tbaa !18
  %i.bt = load <2 x float>, ptr %i.av, align 4, !tbaa !18
  %i.bu = fsub <2 x float> %i.bs, %i.bt           ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !18
  %i.bz = fsub float %i.bw, %i.by                 ; 2 uses
  store <2 x float> %i.bu, ptr %i.e, align 8, !tbaa !18
  store float %i.bz, ptr %i.i, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit: ; preds = %bb.c, %bb.d
  %i.ca = phi float [ %.pre124, %bb.c ], [ %i.bo, %bb.d ]
  %i.cb = phi float [ %.pre123, %bb.c ], [ %i.bz, %bb.d ] ; 3 uses
  %i.cc = phi <2 x float> [ %i.br, %bb.c ], [ %i.bu, %bb.d ] ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.cc, %i.cc
  %i.cd = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ce = extractelement <2 x float> %i.cc, i64 0 ; 2 uses
  %i.cf = call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.cd)
  %i.cg = call noundef float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %i.cf) ; 3 uses
  %sqrt = call float @llvm.sqrt.f32(float %i.cg)
  %i.ch = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.ci = fmul float %i.cg, %i.ch
  %i.cj = fmul float %7, %i.ap
  %i.ck = call float @llvm.fmuladd.f32(float %i.h, float %i.ae, float %i.cj) ; 3 uses
  %i.cl = fmul float %7, %i.an
  %i.cm = call float @llvm.fmuladd.f32(float %i.h, float %i.ac, float %i.cl)
  %i.cn = fsub float %i.ci, %i.cm                 ; 4 uses
  %i.co = fmul float %i.cn, %i.cn                 ; 2 uses
  %i.cp = fneg float %i.ck
  %i.cq = fmul float %i.cn, %i.cp
  %i.cr = fmul float %i.ck, 5.000000e-01
  %i.cs = fmul float %i.cr, %i.co
  %i.ct = fsub float %i.ap, %i.ae
  %i.cu = fmul float %i.ct, 5.000000e-01
  %i.cv = fsub float %i.ac, %i.an
  %i.cw = fmul float %i.cv, %i.ck
  %i.cx = fmul float %i.cw, %i.cn
  %i.cy = call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.co, float %i.cx)
  %i.cz = fadd float %i.ca, %i.cy
  store float %i.cz, ptr %8, align 4, !tbaa !18
  %i.da = load float, ptr %i.f, align 4, !tbaa !18 ; 3 uses
  %i.db = fmul float %i.da, %i.da                 ; 2 uses
  %i.dc = fcmp olt float %i.db, 1.000000e+00
  br i1 %i.dc, label %.loopexit114.loopexit, label %.loopexit114

.loopexit114.loopexit:                            ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.dd = fsub float 1.000000e+00, %i.db
  %i.de = call noundef float @sqrtf(float noundef %i.dd) #23
  %i.df = load float, ptr %i.j, align 8, !tbaa !18 ; 2 uses
  %i.dg = load float, ptr %i.k, align 8, !tbaa !18 ; 2 uses
  %i.dh = getelementptr inbounds [16 x i8], ptr %4, i64 %i.aq ; 3 uses
  %i.di = getelementptr inbounds [16 x i8], ptr %4, i64 %i.as ; 3 uses
  %i.dj = getelementptr inbounds [16 x i8], ptr %4, i64 %i.au ; 3 uses
  %i.dk = load <2 x float>, ptr %i.d, align 8, !tbaa !18 ; 4 uses
  %i.dl = load <2 x float>, ptr %i.c, align 8, !tbaa !18 ; 4 uses
  %i.dm = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dn = fneg <2 x float> %i.dl
  %i.do = fneg <2 x float> %i.dk
  %14 = load <2 x float>, ptr %i.dh, align 4, !tbaa !18
  %i.dp = shufflevector <2 x float> %i.dl, <2 x float> %i.dk, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dq = fmul <2 x float> %i.dp, %i.dp
  %i.dr = shufflevector <2 x float> %i.dl, <2 x float> %i.dk, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ds = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.dr, <2 x float> %i.dq)
  %i.dt = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.df, i64 1 ; 3 uses
  %i.dv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.du, <2 x float> %i.ds) ; 3 uses
  %shift = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop128 = fmul <2 x float> %shift, %i.dv
  %i.dw = extractelement <2 x float> %foldExtExtBinop128, i64 0
  %i.dx = call float @llvm.sqrt.f32(float %i.dw)
  %i.dy = insertelement <2 x float> %i.dm, float %i.dx, i64 1
  %i.dz = fdiv <2 x float> splat (float 1.000000e+00), %i.dy ; 2 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  %i.eb = fmul float %i.be, %i.ea                 ; 2 uses
  %i.ec = fmul float %i.da, %i.eb
  %i.ed = extractelement <2 x float> %i.dz, i64 1
  %i.ee = fmul float %i.eb, %i.ed                 ; 3 uses
  %i.ef = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fdiv <2 x float> %i.eg, %i.dv           ; 3 uses
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x float> %i.ei, %i.dn
  %i.ek = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.em = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.dk, <2 x float> %i.ej) ; 2 uses
  %i.en = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = fmul <2 x float> %i.en, %i.do
  %i.ep = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.dl, <2 x float> %i.eo) ; 2 uses
  %i.eq = fadd <2 x float> %i.ep, %i.em
  %i.er = fsub <2 x float> %14, %i.em
  store <2 x float> %i.er, ptr %i.dh, align 4, !tbaa !18
  %i.es = load <2 x float>, ptr %i.di, align 4, !tbaa !18
  %i.et = fadd <2 x float> %i.es, %i.eq
  store <2 x float> %i.et, ptr %i.di, align 4, !tbaa !18
  %i.eu = load <2 x float>, ptr %i.dj, align 4, !tbaa !18
  %i.ev = fsub <2 x float> %i.eu, %i.ep
  store <2 x float> %i.ev, ptr %i.dj, align 4, !tbaa !18
  %i.ew = fneg <2 x float> %i.du
  %i.ex = fmul <2 x float> %i.eh, %i.ew           ; 2 uses
  %i.ey = extractelement <2 x float> %i.ex, i64 0
  %i.ez = call float @llvm.fmuladd.f32(float %i.ee, float %i.df, float %i.ey) ; 2 uses
  %i.fa = extractelement <2 x float> %i.ex, i64 1
  %i.fb = call float @llvm.fmuladd.f32(float %i.ee, float %i.dg, float %i.fa) ; 2 uses
  %i.fc = fadd float %i.fb, %i.ez
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !18
  %i.ff = fsub float %i.fe, %i.ez
  store float %i.ff, ptr %i.fd, align 4, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !18
  %i.fi = fadd float %i.fh, %i.fc
  store float %i.fi, ptr %i.fg, align 4, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !18
  %i.fl = fsub float %i.fk, %i.fb
  store float %i.fl, ptr %i.fj, align 4, !tbaa !18
  br label %.loopexit114

.loopexit114:                                     ; preds = %.loopexit114.loopexit, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.fm = fcmp oeq float %i.cg, 0.000000e+00
  br i1 %i.fm, label %.backedge, label %.backedge.loopexit

.backedge:                                        ; preds = %.backedge.loopexit, %.loopexit114
  %.0.be = phi float [ %i.bp, %.loopexit114 ], [ %i.gg, %.backedge.loopexit ] ; 2 uses
  %i.fn = trunc nuw i64 %indvars.iv.next to i32
  %i.fo = icmp sgt i32 %0, %i.fn
  br i1 %i.fo, label %bb.b, label %._crit_edge, !llvm.loop !147

.backedge.loopexit:                               ; preds = %.loopexit114
  %i.fp = fmul float %i.ch, %i.cq                 ; 2 uses
  %i.fq = getelementptr inbounds [16 x i8], ptr %4, i64 %i.aq ; 3 uses
  %i.fr = getelementptr inbounds [16 x i8], ptr %4, i64 %i.au ; 3 uses
  %i.fs = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = fmul <2 x float> %i.ft, %i.cc           ; 2 uses
  %i.fv = load <2 x float>, ptr %i.fq, align 4, !tbaa !18
  %i.fw = fadd <2 x float> %i.fv, %i.fu
  store <2 x float> %i.fw, ptr %i.fq, align 4, !tbaa !18
  %i.fx = load <2 x float>, ptr %i.fr, align 4, !tbaa !18
  %i.fy = fsub <2 x float> %i.fx, %i.fu
  store <2 x float> %i.fy, ptr %i.fr, align 4, !tbaa !18
  %i.fz = fmul float %i.fp, %i.cb                 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !18
  %i.gc = fadd float %i.gb, %i.fz
  store float %i.gc, ptr %i.ga, align 4, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !18
  %i.gf = fsub float %i.ge, %i.fz
  store float %i.gf, ptr %i.gd, align 4, !tbaa !18
  %i.gg = fadd float %i.bp, %i.cs
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.0.be, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_114quartic_anglesIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.07689 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.aw, %.loopexit ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = getelementptr i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16
  %i.q = sext i32 %i.l to i64                     ; 2 uses
  %i.r = getelementptr inbounds [12 x i8], ptr %3, i64 %i.q
  %i.s = sext i32 %i.n to i64                     ; 2 uses
  %i.t = getelementptr inbounds [12 x i8], ptr %3, i64 %i.s
  %i.u = sext i32 %i.p to i64                     ; 2 uses
  %i.v = getelementptr inbounds [12 x i8], ptr %3, i64 %i.u
  %i.w = call noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef %i.r, ptr noundef %i.t, ptr noundef %i.v, ptr noundef %6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.x = fpext float %i.w to double
  %i.y = sext i32 %i.j to i64
  %i.z = getelementptr inbounds [48 x i8], ptr %2, i64 %i.y ; 6 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !15
  %i.ab = fpext float %i.aa to double
  %i.ac = fneg double %i.ab
  %i.ad = call double @llvm.fmuladd.f64(double %i.ac, double f0x3F91DF46A2529D39, double %i.x)
  %i.ae = fptrunc double %i.ad to float           ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !15 ; 2 uses
  %i.aj = call float @llvm.fmuladd.f32(float %i.ai, float %i.ae, float %i.ag)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.al = load float, ptr %i.ak, align 4, !tbaa !15 ; 2 uses
  %i.am = fmul float %i.ae, %i.ae                 ; 3 uses
  %i.an = call float @llvm.fmuladd.f32(float %i.al, float %i.am, float %i.aj)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !15 ; 2 uses
  %i.aq = fmul float %i.am, %i.ae                 ; 3 uses
  %i.ar = call float @llvm.fmuladd.f32(float %i.ap, float %i.aq, float %i.an)
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.at = load float, ptr %i.as, align 4, !tbaa !15 ; 2 uses
  %i.au = fmul float %i.aq, %i.ae
  %i.av = call float @llvm.fmuladd.f32(float %i.at, float %i.au, float %i.ar)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.aw = fadd float %.07689, %i.av               ; 2 uses
  %i.ax = load float, ptr %i.e, align 4, !tbaa !18 ; 3 uses
  %i.ay = fmul float %i.ax, %i.ax                 ; 2 uses
  %i.az = fcmp olt float %i.ay, 1.000000e+00
  br i1 %i.az, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %i.ba = fmul float %i.at, -4.000000e+00
  %i.bb = fmul float %i.ap, -3.000000e+00
  %i.bc = fmul float %i.al, -2.000000e+00
  %i.bd = fsub float 0.000000e+00, %i.ai
  %i.be = call float @llvm.fmuladd.f32(float %i.bc, float %i.ae, float %i.bd)
  %i.bf = call float @llvm.fmuladd.f32(float %i.bb, float %i.am, float %i.be)
  %i.bg = call float @llvm.fmuladd.f32(float %i.ba, float %i.aq, float %i.bf)
  %i.bh = fsub float 1.000000e+00, %i.ay
  %i.bi = call noundef float @sqrtf(float noundef %i.bh) #23
  %i.bj = load float, ptr %i.g, align 8, !tbaa !18 ; 2 uses
  %i.bk = load float, ptr %i.h, align 8, !tbaa !18 ; 2 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.q ; 3 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %4, i64 %i.s ; 3 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %4, i64 %i.u ; 3 uses
  %i.bo = load <2 x float>, ptr %i.d, align 8, !tbaa !18 ; 4 uses
  %i.bp = load <2 x float>, ptr %i.c, align 8, !tbaa !18 ; 4 uses
  %i.bq = fneg <2 x float> %i.bp
  %i.br = fneg <2 x float> %i.bo
  %14 = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.bs = shufflevector <2 x float> %i.bp, <2 x float> %i.bo, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bs
  %i.bu = shufflevector <2 x float> %i.bp, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bu, <2 x float> %i.bt)
  %i.bw = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bj, i64 1 ; 3 uses
  %i.by = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bx, <2 x float> %i.bv) ; 3 uses
  %shift = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.by
  %i.bz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ca = call float @llvm.sqrt.f32(float %i.bz)
  %i.cb = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %i.ca, i64 1
  %i.cd = fdiv <2 x float> splat (float 1.000000e+00), %i.cc ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0
  %i.cf = fmul float %i.bg, %i.ce                 ; 2 uses
  %i.cg = fmul float %i.ax, %i.cf
  %i.ch = extractelement <2 x float> %i.cd, i64 1
  %i.ci = fmul float %i.cf, %i.ch                 ; 3 uses
  %i.cj = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fdiv <2 x float> %i.ck, %i.by           ; 3 uses
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x float> %i.cm, %i.bq
  %i.co = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.bo, <2 x float> %i.cn) ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cs = fmul <2 x float> %i.cr, %i.br
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.bp, <2 x float> %i.cs) ; 2 uses
  %i.cu = fadd <2 x float> %i.ct, %i.cq
  %i.cv = fsub <2 x float> %14, %i.cq
  store <2 x float> %i.cv, ptr %i.bl, align 4, !tbaa !18
  %i.cw = load <2 x float>, ptr %i.bm, align 4, !tbaa !18
  %i.cx = fadd <2 x float> %i.cw, %i.cu
  store <2 x float> %i.cx, ptr %i.bm, align 4, !tbaa !18
  %i.cy = load <2 x float>, ptr %i.bn, align 4, !tbaa !18
  %i.cz = fsub <2 x float> %i.cy, %i.ct
  store <2 x float> %i.cz, ptr %i.bn, align 4, !tbaa !18
  %i.da = fneg <2 x float> %i.bx
  %i.db = fmul <2 x float> %i.cl, %i.da           ; 2 uses
  %i.dc = extractelement <2 x float> %i.db, i64 0
  %i.dd = call float @llvm.fmuladd.f32(float %i.ci, float %i.bj, float %i.dc) ; 2 uses
  %i.de = extractelement <2 x float> %i.db, i64 1
  %i.df = call float @llvm.fmuladd.f32(float %i.ci, float %i.bk, float %i.de) ; 2 uses
  %i.dg = fadd float %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !18
  %i.dj = fsub float %i.di, %i.dd
  store float %i.dj, ptr %i.dh, align 4, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !18
  %i.dm = fadd float %i.dl, %i.dg
  store float %i.dm, ptr %i.dk, align 4, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !18
  %i.dp = fsub float %i.do, %i.df
  store float %i.dp, ptr %i.dn, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.dq = trunc nuw i64 %indvars.iv.next to i32
  %i.dr = icmp sgt i32 %0, %i.dq
  br i1 %i.dr, label %bb.b, label %._crit_edge, !llvm.loop !148

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.076.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.aw, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.076.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_110tab_anglesIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.h = icmp sgt i32 %0, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.06772 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ao, %.loopexit ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = sext i32 %i.o to i64                     ; 2 uses
  %i.u = getelementptr inbounds [12 x i8], ptr %3, i64 %i.t
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %3, i64 %i.v
  %i.x = sext i32 %i.s to i64                     ; 2 uses
  %i.y = getelementptr inbounds [12 x i8], ptr %3, i64 %i.x
  %i.z = call noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.y, ptr noundef %6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.aa = sext i32 %i.m to i64
  %i.ab = getelementptr inbounds [48 x i8], ptr %2, i64 %i.aa ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !15 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !15
  %i.ak = call fastcc noundef float @_ZN12_GLOBAL__N_110bonded_tabEPKciPK13bondedtable_tffffPfS5_(ptr noundef nonnull @.str.11, i32 noundef %i.ac, ptr noundef %i.af, float noundef %i.ah, float noundef %i.aj, float noundef %i.z, float noundef %7, ptr noundef %i.g, ptr noundef %i.f)
  %i.al = load float, ptr %8, align 4, !tbaa !18
  %i.am = fadd float %i.ak, %i.al
  store float %i.am, ptr %8, align 4, !tbaa !18
  %i.an = load float, ptr %i.g, align 4, !tbaa !18
  %i.ao = fadd float %.06772, %i.an               ; 2 uses
  %i.ap = load float, ptr %i.e, align 4, !tbaa !18 ; 3 uses
  %i.aq = fmul float %i.ap, %i.ap                 ; 2 uses
  %i.ar = fcmp olt float %i.aq, 1.000000e+00
  br i1 %i.ar, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %i.as = load float, ptr %i.f, align 4, !tbaa !18
  %i.at = fsub float 1.000000e+00, %i.aq
  %i.au = call noundef float @sqrtf(float noundef %i.at) #23
  %i.av = load float, ptr %i.j, align 8, !tbaa !18 ; 2 uses
  %i.aw = load float, ptr %i.k, align 8, !tbaa !18 ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %4, i64 %i.t ; 3 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 3 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %4, i64 %i.x ; 3 uses
  %i.ba = load <2 x float>, ptr %i.d, align 8, !tbaa !18 ; 4 uses
  %i.bb = load <2 x float>, ptr %i.c, align 8, !tbaa !18 ; 4 uses
  %i.bc = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bd = fneg <2 x float> %i.bb
  %i.be = fneg <2 x float> %i.ba
  %14 = load <2 x float>, ptr %i.ax, align 4, !tbaa !18
  %i.bf = shufflevector <2 x float> %i.bb, <2 x float> %i.ba, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bg = fmul <2 x float> %i.bf, %i.bf
  %i.bh = shufflevector <2 x float> %i.bb, <2 x float> %i.ba, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bh, <2 x float> %i.bg)
  %i.bj = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.av, i64 1 ; 3 uses
  %i.bl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bk, <2 x float> %i.bi) ; 3 uses
  %shift = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.bl
  %i.bm = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bn = call float @llvm.sqrt.f32(float %i.bm)
  %i.bo = insertelement <2 x float> %i.bc, float %i.bn, i64 1
  %i.bp = fdiv <2 x float> splat (float 1.000000e+00), %i.bo ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  %i.br = fmul float %i.as, %i.bq                 ; 2 uses
  %i.bs = fmul float %i.ap, %i.br
  %i.bt = extractelement <2 x float> %i.bp, i64 1
  %i.bu = fmul float %i.br, %i.bt                 ; 3 uses
  %i.bv = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fdiv <2 x float> %i.bw, %i.bl           ; 3 uses
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.by, %i.bd
  %i.ca = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.ba, <2 x float> %i.bz) ; 2 uses
  %i.cd = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = fmul <2 x float> %i.cd, %i.be
  %i.cf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.bb, <2 x float> %i.ce) ; 2 uses
  %i.cg = fadd <2 x float> %i.cf, %i.cc
  %i.ch = fsub <2 x float> %14, %i.cc
  store <2 x float> %i.ch, ptr %i.ax, align 4, !tbaa !18
  %i.ci = load <2 x float>, ptr %i.ay, align 4, !tbaa !18
  %i.cj = fadd <2 x float> %i.ci, %i.cg
  store <2 x float> %i.cj, ptr %i.ay, align 4, !tbaa !18
  %i.ck = load <2 x float>, ptr %i.az, align 4, !tbaa !18
  %i.cl = fsub <2 x float> %i.ck, %i.cf
  store <2 x float> %i.cl, ptr %i.az, align 4, !tbaa !18
  %i.cm = fneg <2 x float> %i.bk
  %i.cn = fmul <2 x float> %i.bx, %i.cm           ; 2 uses
  %i.co = extractelement <2 x float> %i.cn, i64 0
  %i.cp = call float @llvm.fmuladd.f32(float %i.bu, float %i.av, float %i.co) ; 2 uses
  %i.cq = extractelement <2 x float> %i.cn, i64 1
  %i.cr = call float @llvm.fmuladd.f32(float %i.bu, float %i.aw, float %i.cq) ; 2 uses
  %i.cs = fadd float %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !18
  %i.cv = fsub float %i.cu, %i.cp
  store float %i.cv, ptr %i.ct, align 4, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !18
  %i.cy = fadd float %i.cx, %i.cs
  store float %i.cy, ptr %i.cw, align 4, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !18
  %i.db = fsub float %i.da, %i.cr
  store float %i.db, ptr %i.cz, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.dc = trunc nuw i64 %indvars.iv.next to i32
  %i.dd = icmp sgt i32 %0, %i.dc
  br i1 %i.dd, label %bb.b, label %._crit_edge, !llvm.loop !149

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.067.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ao, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.067.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_15pdihsIL18BondedKernelFlavor3EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [3 x float], align 4              ; 4 uses
  %i.e = alloca [3 x float], align 4              ; 4 uses
  %i.f = alloca [3 x float], align 4              ; 4 uses
  %i.g = alloca [3 x float], align 4              ; 4 uses
  %i.h = alloca [3 x float], align 4              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = fsub float 1.000000e+00, %7              ; 2 uses
  %i.k = zext nneg i32 %0 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.062.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bl, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.062.lcssa

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.067 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.06266 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bl, %.critedge ]
  %i.l = getelementptr [4 x i8], ptr %1, i64 %.067 ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16   ; 3 uses
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 3 uses
  %i.q = getelementptr i8, ptr %i.l, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16   ; 3 uses
  %i.s = getelementptr i8, ptr %i.l, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16   ; 3 uses
  %i.u = sext i32 %i.n to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %3, i64 %i.u
  %i.w = sext i32 %i.p to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %3, i64 %i.w
  %i.y = sext i32 %i.r to i64
  %i.z = getelementptr inbounds [12 x i8], ptr %3, i64 %i.y
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds [12 x i8], ptr %3, i64 %i.aa
  %i.ac = call noundef float @_Z9dih_anglePKfS0_S0_S0_PK5t_pbcPfS4_S4_S4_S4_PiS5_S5_(ptr noundef %i.v, ptr noundef %i.x, ptr noundef %i.z, ptr noundef %i.ab, ptr noundef %6, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.promoted = load float, ptr %8, align 4, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ %.067, %bb.b ] ; 2 uses
  %i.ad = phi float [ %i.br, %bb.g ], [ %.promoted, %bb.b ]
  %.163 = phi float [ %i.bl, %bb.g ], [ %.06266, %bb.b ]
  %.058 = phi float [ %i.bs, %bb.g ], [ 0.000000e+00, %bb.b ]
  %i.ae = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [48 x i8], ptr %2, i64 %i.ag ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !15 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !15 ; 2 uses
  %i.am = load float, ptr %i.ah, align 4, !tbaa !15 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.ao = load float, ptr %i.an, align 4, !tbaa !15 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !15
  %i.ar = fmul float %7, %i.ao
  %i.as = call float @llvm.fmuladd.f32(float %i.j, float %i.am, float %i.ar)
  %i.at = fsub float %i.ao, %i.am
  %i.au = insertelement <2 x float> poison, float %i.as, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.at, i64 1
  %i.aw = fpext <2 x float> %i.av to <2 x double>
  %i.ax = fmul <2 x double> %i.aw, splat (double f0x3F91DF46A2529D39)
  %i.ay = fptrunc <2 x double> %i.ax to <2 x float> ; 2 uses
  %i.az = fmul float %7, %i.al
  %i.ba = call float @llvm.fmuladd.f32(float %i.j, float %i.aj, float %i.az) ; 3 uses
  %i.bb = sitofp i32 %i.aq to float               ; 2 uses
  %i.bc = extractelement <2 x float> %i.ay, i64 0
  %i.bd = fneg float %i.bc
  %i.be = call float @llvm.fmuladd.f32(float %i.bb, float %i.ac, float %i.bd) ; 2 uses
  %i.bf = call noundef float @sinf(float noundef %i.be) #23 ; 2 uses
  %i.bg = fneg float %i.ba
  %i.bh = fmul float %i.bg, %i.bb
  %i.bi = fmul float %i.bf, %i.bh
  %i.bj = call noundef float @cosf(float noundef %i.be) #23
  %i.bk = fadd float %i.bj, 1.000000e+00          ; 2 uses
  %i.bl = call float @llvm.fmuladd.f32(float %i.ba, float %i.bk, float %.163) ; 3 uses
  %i.bm = fsub float %i.al, %i.aj
  %i.bn = extractelement <2 x float> %i.ay, i64 1
  %i.bo = fmul float %i.ba, %i.bn
  %i.bp = fmul float %i.bf, %i.bo
  %i.bq = call float @llvm.fmuladd.f32(float %i.bm, float %i.bk, float %i.bp)
  %i.br = fadd float %i.ad, %i.bq                 ; 2 uses
  store float %i.br, ptr %8, align 4, !tbaa !18
  %i.bs = fadd float %.058, %i.bi                 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 5   ; 4 uses
  %i.bt = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.bt, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.bu = getelementptr i8, ptr %i.ae, i64 24
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !16
  %i.bw = icmp eq i32 %i.bv, %i.n
  br i1 %i.bw, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.bx = getelementptr i8, ptr %i.ae, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !16
  %i.bz = icmp eq i32 %i.by, %i.p
  br i1 %i.bz, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr i8, ptr %i.ae, i64 32
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !16
  %i.cc = icmp eq i32 %i.cb, %i.r
  br i1 %i.cc, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr i8, ptr %i.ae, i64 36
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !16
  %i.cf = icmp eq i32 %i.ce, %i.t
  br i1 %i.cf, label %bb.c, label %.critedge, !llvm.loop !150

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.g
  %i.cg = trunc nsw i64 %indvars.iv.next to i32
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !16
  %i.ci = load i32, ptr %i.b, align 4, !tbaa !16
  %i.cj = load i32, ptr %i.c, align 4, !tbaa !16
  call void @_Z10do_dih_fupIL18BondedKernelFlavor3EEviiiifPfS1_S1_S1_S1_PA4_fPA3_fPK5t_pbcPA3_Kfiii(i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.t, float noundef %i.bs, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %3, i32 noundef %i.ch, i32 noundef %i.ci, i32 noundef %i.cj)
  %i.ck = icmp sgt i32 %0, %i.cg
  br i1 %i.ck, label %bb.b, label %._crit_edge, !llvm.loop !151
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_16rbdihsIL18BondedKernelFlavor3EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
end_hunk_4
begin_hunk_5_@_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !15
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #15

declare noundef i32 @_Z6glatnrPKii(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZN12_GLOBAL__N_110bonded_tabEPKciPK13bondedtable_tffffPfS5_(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree noundef nonnull writeonly captures(none) %7, ptr nofree noundef nonnull writeonly captures(none) %8) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !166 ; 2 uses
  %i.c = fmul float %5, %i.b                      ; 2 uses
  %i.d = fptosi float %i.c to i32                 ; 5 uses
  %i.e = load i32, ptr %2, align 8, !tbaa !167
  %.not = icmp sgt i32 %i.e, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(69) @.str.7, i8 noundef zeroext 2)
  %i.f = fpext float %5 to double
  %i.g = add nsw i32 %i.d, 1
  %i.h = load i32, ptr %2, align 8, !tbaa !167
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 3759, ptr noundef nonnull @.str.10, ptr noundef %0, i32 noundef %1, double noundef %i.f, i32 noundef %i.d, i32 noundef %i.g, i32 noundef %i.h) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = fpext float %6 to double
  %i.m = fsub double 1.000000e+00, %i.l
  %i.n = fpext float %3 to double
  %i.o = fmul float %4, %6
  %i.p = fpext float %i.o to double
  %i.q = tail call double @llvm.fmuladd.f64(double %i.m, double %i.n, double %i.p)
  %i.r = fptrunc double %i.q to float             ; 2 uses
  %i.s = sitofp i32 %i.d to float
  %i.t = fsub float %i.c, %i.s                    ; 4 uses
  %i.u = fmul float %i.t, %i.t
  %i.v = shl nsw i32 %i.d, 2
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.w ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !18
  %i.z = getelementptr i8, ptr %i.x, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !18
  %i.ab = getelementptr i8, ptr %i.x, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !18
  %i.ad = fmul float %i.t, %i.ac                  ; 2 uses
  %i.ae = getelementptr i8, ptr %i.x, i64 12
  %i.af = load float, ptr %i.ae, align 4, !tbaa !18
  %i.ag = fmul float %i.u, %i.af                  ; 2 uses
  %i.ah = fadd float %i.aa, %i.ad
  %i.ai = fadd float %i.ah, %i.ag                 ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.t, float %i.y) ; 2 uses
  %i.ak = fadd float %i.ad, %i.ai
  %i.al = fpext float %i.ak to double
  %i.am = fpext float %i.ag to double
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double 2.000000e+00, double %i.al)
  %i.ao = fptrunc double %i.an to float
  %i.ap = fneg float %i.r
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = fmul float %i.b, %i.aq
  store float %i.ar, ptr %8, align 4, !tbaa !18
  %i.as = fmul float %i.aj, %i.r
  store float %i.as, ptr %7, align 4, !tbaa !18
  %i.at = fsub float %4, %3
  %i.au = fmul float %i.at, %i.aj
  ret float %i.au
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float>, <16 x float>, i16) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i32 immarg) #14

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZN12_GLOBAL__N_113g96bond_angleEPKfS1_S1_PK5t_pbcPfS5_PiS6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %6, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %7) unnamed_addr #6 {
bb.a:
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  store i32 %i.a, ptr %6, align 4, !tbaa !16
  %i.b = tail call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %3, ptr noundef %2, ptr noundef %1, ptr noundef nonnull %5)
  %i.c = load <2 x float>, ptr %5, align 4, !tbaa !18
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre19 = load float, ptr %.phi.trans.insert18, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit15

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !18
  %i.h = fsub float %i.e, %i.g
  %i.i = load <2 x float>, ptr %0, align 4, !tbaa !18
  %i.j = load <2 x float>, ptr %1, align 4, !tbaa !18
  %i.k = fsub <2 x float> %i.i, %i.j
  store <2 x float> %i.k, ptr %4, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.h, ptr %i.l, align 4, !tbaa !18
  store i32 22, ptr %6, align 4, !tbaa !16
  %i.m = load <2 x float>, ptr %2, align 4, !tbaa !18
  %i.n = load <2 x float>, ptr %1, align 4, !tbaa !18
  %i.o = fsub <2 x float> %i.m, %i.n              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !18
  %i.r = load float, ptr %i.f, align 4, !tbaa !18
  %i.s = fsub float %i.q, %i.r                    ; 2 uses
  store <2 x float> %i.o, ptr %5, align 4, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.s, ptr %i.t, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit15

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit15: ; preds = %bb.b, %bb.c
  %i.u = phi float [ %.pre19, %bb.b ], [ %i.s, %bb.c ]
  %.0.i14 = phi i32 [ %i.b, %bb.b ], [ 22, %bb.c ]
  %i.v = phi <2 x float> [ %i.c, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  store i32 %.0.i14, ptr %7, align 4, !tbaa !16
  %i.w = load float, ptr %4, align 4, !tbaa !18
  %i.x = fpext float %i.w to double               ; 3 uses
  %i.y = extractelement <2 x float> %i.v, i64 0
  %i.z = fpext float %i.y to double               ; 3 uses
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double 0.000000e+00)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.z, double %i.z, double 0.000000e+00)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !18
  %i.ae = fpext float %i.ad to double             ; 3 uses
  %i.af = extractelement <2 x float> %i.v, i64 1
  %i.ag = fpext float %i.af to double             ; 3 uses
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %i.aa)
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.ab)
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !18
  %i.al = fpext float %i.ak to double             ; 3 uses
  %i.am = fpext float %i.u to double              ; 3 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.al, double %i.al, double %i.ah)
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.ai)
  %i.ap = fmul double %i.an, %i.ao                ; 2 uses
  %i.aq = fcmp ogt double %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.d, label %_ZL9cos_anglePKfS0_.exit

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit15
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.x, double %i.z, double 0.000000e+00)
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ag, double %i.ar)
  %i.at = tail call double @llvm.fmuladd.f64(double %i.al, double %i.am, double %i.as)
  %i.au = tail call nnan double @llvm.sqrt.f64(double %i.ap)
  %i.av = fdiv nnan double 1.000000e+00, %i.au
  %i.aw = fmul double %i.at, %i.av
  %i.ax = fptrunc double %i.aw to float
  br label %_ZL9cos_anglePKfS0_.exit

_ZL9cos_anglePKfS0_.exit:                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit15, %bb.d
  %.026.i = phi float [ %i.ax, %bb.d ], [ 1.000000e+00, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit15 ] ; 3 uses
  %i.ay = fcmp ogt float %.026.i, 1.000000e+00
  %i.az = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.az, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.ay, float 1.000000e+00, float %..026.i
  ret float %.027.i
}

declare void @_Z26compute_factors_restanglesiPK9t_iparamsPfS2_PdS3_S3_S2_(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal x86_vectorcallcc void @_ZN12_GLOBAL__N_124do_dih_fup_noshiftf_simdEPKiS1_S1_S1_N3gmx9SimdFloatES3_S3_S3_S3_S3_S3_S3_PA4_f(<8 x i64> %.0.val, <8 x i64> %.0.val1, <8 x i64> %.0.val3, <8 x i64> %.0.val5, <16 x float> %0, <16 x float> %1, <16 x float> %2, <16 x float> %3, <16 x float> %4, <16 x float> %5, <16 x float> %6, <16 x float> %7, ptr nofree noundef %8) unnamed_addr #18 {
bb.a:
  %i.a = fmul <16 x float> %0, %2
  %i.b = fmul <16 x float> %1, %5
  %i.c = fadd <16 x float> %i.a, %i.b             ; 2 uses
  %i.d = fmul <16 x float> %0, %3
  %i.e = fmul <16 x float> %1, %6
  %i.f = fadd <16 x float> %i.d, %i.e             ; 2 uses
  %i.g = fmul <16 x float> %0, %4
  %i.h = fmul <16 x float> %1, %7
  %i.i = fadd <16 x float> %i.g, %i.h             ; 2 uses
  %i.j = fsub <16 x float> %2, %i.c               ; 2 uses
  %i.k = fsub <16 x float> %3, %i.f               ; 2 uses
  %i.l = fsub <16 x float> %4, %i.i               ; 2 uses
  %i.m = fsub <16 x float> %5, %i.c               ; 2 uses
  %i.n = fsub <16 x float> %6, %i.f               ; 2 uses
  %i.o = fsub <16 x float> %7, %i.i               ; 2 uses
  %i.p = bitcast <8 x i64> %.0.val to <16 x i32>
  %i.q = shl <16 x i32> %i.p, splat (i32 2)       ; 16 uses
  %i.r = shufflevector <16 x float> %2, <16 x float> %4, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.s = shufflevector <16 x float> %2, <16 x float> %4, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.t = shufflevector <16 x float> %3, <16 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.u = shufflevector <16 x float> %3, <16 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.v = shufflevector <16 x float> %i.r, <16 x float> %i.t, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 4 uses
  %i.w = shufflevector <16 x float> %i.r, <16 x float> %i.t, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 4 uses
  %i.x = shufflevector <16 x float> %i.s, <16 x float> %i.u, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 4 uses
  %i.y = shufflevector <16 x float> %i.s, <16 x float> %i.u, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 4 uses
  %i.z = shufflevector <16 x float> %i.v, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aa = shufflevector <16 x float> %i.v, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ab = shufflevector <16 x float> %i.v, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.ac = shufflevector <16 x float> %i.v, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.ad = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ae = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.af = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.ag = extractelement <16 x i32> %i.q, i64 0
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %8, i64 %i.ah ; 2 uses
  %i.aj = load <4 x float>, ptr %i.ai, align 16, !tbaa !15
  %i.ak = fadd <4 x float> %i.z, %i.aj
  store <4 x float> %i.ak, ptr %i.ai, align 16, !tbaa !15
  %i.al = extractelement <16 x i32> %i.q, i64 4
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %8, i64 %i.am ; 2 uses
  %i.ao = load <4 x float>, ptr %i.an, align 16, !tbaa !15
  %i.ap = fadd <4 x float> %i.aa, %i.ao
  store <4 x float> %i.ap, ptr %i.an, align 16, !tbaa !15
  %i.aq = extractelement <16 x i32> %i.q, i64 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %8, i64 %i.ar ; 2 uses
  %i.at = load <4 x float>, ptr %i.as, align 16, !tbaa !15
  %i.au = fadd <4 x float> %i.ab, %i.at
  store <4 x float> %i.au, ptr %i.as, align 16, !tbaa !15
  %i.av = extractelement <16 x i32> %i.q, i64 12
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %8, i64 %i.aw ; 2 uses
  %i.ay = load <4 x float>, ptr %i.ax, align 16, !tbaa !15
  %i.az = fadd <4 x float> %i.ac, %i.ay
  store <4 x float> %i.az, ptr %i.ax, align 16, !tbaa !15
  %i.ba = extractelement <16 x i32> %i.q, i64 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bb ; 2 uses
  %i.bd = load <4 x float>, ptr %i.bc, align 16, !tbaa !15
  %i.be = fadd <4 x float> %i.ad, %i.bd
  store <4 x float> %i.be, ptr %i.bc, align 16, !tbaa !15
  %i.bf = extractelement <16 x i32> %i.q, i64 5
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bg ; 2 uses
  %i.bi = load <4 x float>, ptr %i.bh, align 16, !tbaa !15
  %i.bj = fadd <4 x float> %i.ae, %i.bi
  store <4 x float> %i.bj, ptr %i.bh, align 16, !tbaa !15
  %i.bk = extractelement <16 x i32> %i.q, i64 9
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bl ; 2 uses
  %i.bn = load <4 x float>, ptr %i.bm, align 16, !tbaa !15
  %i.bo = fadd <4 x float> %i.af, %i.bn
  store <4 x float> %i.bo, ptr %i.bm, align 16, !tbaa !15
  %i.bp = extractelement <16 x i32> %i.q, i64 13
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bq ; 2 uses
  %i.bs = load <4 x float>, ptr %i.br, align 16, !tbaa !15
  %i.bt = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bu = fadd <4 x float> %i.bt, %i.bs
  store <4 x float> %i.bu, ptr %i.br, align 16, !tbaa !15
  %i.bv = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bw = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bx = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.by = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bz = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ca = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cb = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.cc = extractelement <16 x i32> %i.q, i64 2
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %8, i64 %i.cd ; 2 uses
  %i.cf = load <4 x float>, ptr %i.ce, align 16, !tbaa !15
  %i.cg = fadd <4 x float> %i.bv, %i.cf
  store <4 x float> %i.cg, ptr %i.ce, align 16, !tbaa !15
  %i.ch = extractelement <16 x i32> %i.q, i64 6
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %8, i64 %i.ci ; 2 uses
  %i.ck = load <4 x float>, ptr %i.cj, align 16, !tbaa !15
  %i.cl = fadd <4 x float> %i.bw, %i.ck
  store <4 x float> %i.cl, ptr %i.cj, align 16, !tbaa !15
  %i.cm = extractelement <16 x i32> %i.q, i64 10
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %8, i64 %i.cn ; 2 uses
  %i.cp = load <4 x float>, ptr %i.co, align 16, !tbaa !15
  %i.cq = fadd <4 x float> %i.bx, %i.cp
  store <4 x float> %i.cq, ptr %i.co, align 16, !tbaa !15
  %i.cr = extractelement <16 x i32> %i.q, i64 14
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %8, i64 %i.cs ; 2 uses
  %i.cu = load <4 x float>, ptr %i.ct, align 16, !tbaa !15
  %i.cv = fadd <4 x float> %i.by, %i.cu
  store <4 x float> %i.cv, ptr %i.ct, align 16, !tbaa !15
  %i.cw = extractelement <16 x i32> %i.q, i64 3
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %8, i64 %i.cx ; 2 uses
  %i.cz = load <4 x float>, ptr %i.cy, align 16, !tbaa !15
  %i.da = fadd <4 x float> %i.bz, %i.cz
  store <4 x float> %i.da, ptr %i.cy, align 16, !tbaa !15
  %i.db = extractelement <16 x i32> %i.q, i64 7
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %8, i64 %i.dc ; 2 uses
  %i.de = load <4 x float>, ptr %i.dd, align 16, !tbaa !15
  %i.df = fadd <4 x float> %i.ca, %i.de
  store <4 x float> %i.df, ptr %i.dd, align 16, !tbaa !15
  %i.dg = extractelement <16 x i32> %i.q, i64 11
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %8, i64 %i.dh ; 2 uses
  %i.dj = load <4 x float>, ptr %i.di, align 16, !tbaa !15
  %i.dk = fadd <4 x float> %i.cb, %i.dj
  store <4 x float> %i.dk, ptr %i.di, align 16, !tbaa !15
  %i.dl = extractelement <16 x i32> %i.q, i64 15
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %8, i64 %i.dm ; 2 uses
  %i.do = load <4 x float>, ptr %i.dn, align 16, !tbaa !15
  %i.dp = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.dq = fadd <4 x float> %i.dp, %i.do
  store <4 x float> %i.dq, ptr %i.dn, align 16, !tbaa !15
  %i.dr = bitcast <8 x i64> %.0.val1 to <16 x i32>
  %i.ds = shl <16 x i32> %i.dr, splat (i32 2)     ; 16 uses
  %i.dt = shufflevector <16 x float> %i.j, <16 x float> %i.l, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.du = shufflevector <16 x float> %i.j, <16 x float> %i.l, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dv = shufflevector <16 x float> %i.k, <16 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.dw = shufflevector <16 x float> %i.k, <16 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dx = shufflevector <16 x float> %i.dt, <16 x float> %i.dv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 4 uses
  %i.dy = shufflevector <16 x float> %i.dt, <16 x float> %i.dv, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 4 uses
  %i.dz = shufflevector <16 x float> %i.du, <16 x float> %i.dw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 4 uses
  %i.ea = shufflevector <16 x float> %i.du, <16 x float> %i.dw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 4 uses
  %i.eb = shufflevector <16 x float> %i.dx, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ec = shufflevector <16 x float> %i.dx, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ed = shufflevector <16 x float> %i.dx, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.ee = shufflevector <16 x float> %i.dx, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.ef = shufflevector <16 x float> %i.dy, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eg = shufflevector <16 x float> %i.dy, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eh = shufflevector <16 x float> %i.dy, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.ei = extractelement <16 x i32> %i.ds, i64 0
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %8, i64 %i.ej ; 2 uses
  %i.el = load <4 x float>, ptr %i.ek, align 16, !tbaa !15
  %i.em = fsub <4 x float> %i.el, %i.eb
  store <4 x float> %i.em, ptr %i.ek, align 16, !tbaa !15
  %i.en = extractelement <16 x i32> %i.ds, i64 4
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %8, i64 %i.eo ; 2 uses
  %i.eq = load <4 x float>, ptr %i.ep, align 16, !tbaa !15
  %i.er = fsub <4 x float> %i.eq, %i.ec
  store <4 x float> %i.er, ptr %i.ep, align 16, !tbaa !15
  %i.es = extractelement <16 x i32> %i.ds, i64 8
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %8, i64 %i.et ; 2 uses
  %i.ev = load <4 x float>, ptr %i.eu, align 16, !tbaa !15
  %i.ew = fsub <4 x float> %i.ev, %i.ed
  store <4 x float> %i.ew, ptr %i.eu, align 16, !tbaa !15
  %i.ex = extractelement <16 x i32> %i.ds, i64 12
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %8, i64 %i.ey ; 2 uses
  %i.fa = load <4 x float>, ptr %i.ez, align 16, !tbaa !15
  %i.fb = fsub <4 x float> %i.fa, %i.ee
  store <4 x float> %i.fb, ptr %i.ez, align 16, !tbaa !15
  %i.fc = extractelement <16 x i32> %i.ds, i64 1
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %8, i64 %i.fd ; 2 uses
  %i.ff = load <4 x float>, ptr %i.fe, align 16, !tbaa !15
end_hunk_5
begin_hunk_6_@_Z10do_dih_fupIL18BondedKernelFlavor0EEviiiifPfS1_S1_S1_S1_PA4_fPA3_fPK5t_pbcPA3_Kfiii:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor0EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef %4, float noundef %5, float noundef %6) unnamed_addr #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) ; 0 uses
  %i.c = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %.phi.trans.insert4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre5 = load float, ptr %.phi.trans.insert4, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load <2 x float>, ptr %0, align 4, !tbaa !18
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !18
  %i.f = fsub <2 x float> %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !18
  %i.k = fsub float %i.h, %i.j
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit: ; preds = %bb.b, %bb.c
  %i.l = phi float [ %.pre5, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  %i.m = phi <2 x float> [ %i.c, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 1   ; 3 uses
  %i.o = fmul float %i.n, %i.n
  %i.p = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  %i.q = call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.o)
  %i.r = call noundef float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.q)
  %sqrt = call float @llvm.sqrt.f32(float %i.r)
  %i.s = fdiv float 1.000000e+00, %sqrt           ; 3 uses
  %i.t = fdiv float %6, %i.s                      ; 3 uses
  %i.u = fpext float %5 to double
  %i.v = fmul double %i.u, f0x40615DEF44DEAD3D
  %i.w = fpext float %i.s to double               ; 2 uses
  %i.x = fmul double %i.v, %i.w
  %i.y = fptrunc double %i.x to float             ; 3 uses
  %i.z = fneg float %i.t
  %i.aa = call noundef float @expf(float noundef %i.z) #23
  %i.ab = fpext float %i.t to double
  %i.ac = call double @llvm.fmuladd.f64(double %i.ab, double 5.000000e-01, double 1.000000e+00)
  %i.ad = fpext float %i.aa to double             ; 2 uses
  %i.ae = fneg double %i.ac
  %i.af = call double @llvm.fmuladd.f64(double %i.ae, double %i.ad, double 1.000000e+00)
  %i.ag = fptrunc double %i.af to float           ; 2 uses
  %i.ah = fmul float %i.s, %i.y
  %i.ai = fmul float %i.ah, %i.ag
  %i.aj = fpext float %i.ai to double
  %i.ak = fpext float %i.y to double
  %i.al = fmul double %i.ak, 5.000000e-01
  %i.am = fpext float %6 to double
  %i.an = fmul double %i.al, %i.am
  %i.ao = fadd float %i.t, 1.000000e+00
  %i.ap = fpext float %i.ao to double
  %i.aq = fneg double %i.ad
  %i.ar = fmul double %i.an, %i.aq
  %i.as = call double @llvm.fmuladd.f64(double %i.ar, double %i.ap, double %i.aj)
  %i.at = fmul double %i.as, %i.w
  %i.au = fptrunc double %i.at to float           ; 3 uses
  %i.av = fmul float %i.p, %i.au                  ; 2 uses
  %i.aw = load float, ptr %2, align 4, !tbaa !18
  %i.ax = fadd float %i.aw, %i.av
  store float %i.ax, ptr %2, align 4, !tbaa !18
  %i.ay = load float, ptr %3, align 4, !tbaa !18
  %i.az = fsub float %i.ay, %i.av
  store float %i.az, ptr %3, align 4, !tbaa !18
  %i.ba = fmul float %i.n, %i.au                  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !18
  %i.bd = fadd float %i.bc, %i.ba
  store float %i.bd, ptr %i.bb, align 4, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !18
  %i.bg = fsub float %i.bf, %i.ba
  store float %i.bg, ptr %i.be, align 4, !tbaa !18
  %i.bh = fmul float %i.l, %i.au                  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !18
  %i.bk = fadd float %i.bj, %i.bh
  store float %i.bk, ptr %i.bi, align 4, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !18
  %i.bn = fsub float %i.bm, %i.bh
  store float %i.bn, ptr %i.bl, align 4, !tbaa !18
  %i.bo = fmul float %i.y, %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %i.bo
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZN12_GLOBAL__N_110low_angresIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfb(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, float noundef %6, ptr nofree noundef captures(none) %7, i1 noundef zeroext %8) unnamed_addr #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %5, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.f = fsub float 1.000000e+00, %6              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.06 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dv, %.loopexit ]
  %.0795 = phi i32 [ 0, %.lr.ph ], [ %.1, %.loopexit ]
  %.0804 = phi i32 [ 0, %.lr.ph ], [ %.181, %.loopexit ]
  %.0833 = phi i32 [ 0, %.lr.ph ], [ %.184, %.loopexit ] ; 4 uses
  %i.g = sext i32 %.0833 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = add nsw i32 %.0833, 3                    ; 3 uses
  %i.m = getelementptr i8, ptr %i.h, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds [12 x i8], ptr %3, i64 %i.o ; 3 uses
  %i.q = sext i32 %i.k to i64                     ; 2 uses
  %i.r = getelementptr inbounds [12 x i8], ptr %3, i64 %i.q ; 3 uses
  br i1 %.not.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !18
  %i.w = fsub float %i.t, %i.v
  %i.x = load <2 x float>, ptr %i.p, align 4, !tbaa !18
  %i.y = load <2 x float>, ptr %i.r, align 4, !tbaa !18
  %i.z = fsub <2 x float> %i.x, %i.y
  store <2 x float> %i.z, ptr %i.a, align 8, !tbaa !18
  store float %i.w, ptr %i.d, align 8, !tbaa !18
  br i1 %8, label %bb.e, label %bb.d

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread: ; preds = %bb.b
  %i.aa = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %5, ptr noundef %i.p, ptr noundef %i.r, ptr noundef nonnull %i.a) ; 0 uses
  br i1 %8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread
  %i.ab = sext i32 %i.l to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16 ; 2 uses
  %i.ae = add nsw i32 %.0833, 5
  %i.af = getelementptr i8, ptr %i.h, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ah
  %i.aj = sext i32 %i.ad to i64
  %i.ak = getelementptr inbounds [12 x i8], ptr %3, i64 %i.aj
  %i.al = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %5, ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef nonnull %i.b) ; 0 uses
  %i.am = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre11 = load float, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.an = sext i32 %i.l to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %1, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16 ; 2 uses
  %i.aq = add nsw i32 %.0833, 5
  %i.ar = getelementptr i8, ptr %i.h, i64 16
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [12 x i8], ptr %3, i64 %i.at ; 2 uses
  %i.av = sext i32 %i.ap to i64
  %i.aw = getelementptr inbounds [12 x i8], ptr %3, i64 %i.av ; 2 uses
  %i.ax = load <2 x float>, ptr %i.au, align 4, !tbaa !18
  %i.ay = load <2 x float>, ptr %i.aw, align 4, !tbaa !18
  %i.az = fsub <2 x float> %i.ax, %i.ay           ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !18
  %i.be = fsub float %i.bb, %i.bd                 ; 2 uses
  store <2 x float> %i.az, ptr %i.b, align 8, !tbaa !18
  store float %i.be, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  store <2 x float> zeroinitializer, ptr %i.b, align 8, !tbaa !18
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88: ; preds = %bb.d, %bb.c, %bb.e
  %i.bf = phi float [ 1.000000e+00, %bb.e ], [ %.pre11, %bb.c ], [ %i.be, %bb.d ] ; 6 uses
  %.184 = phi i32 [ %i.l, %bb.e ], [ %i.ae, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %.181 = phi i32 [ %.0804, %bb.e ], [ %i.ad, %bb.c ], [ %i.ap, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.0795, %bb.e ], [ %i.ag, %bb.c ], [ %i.as, %bb.d ] ; 2 uses
  %i.bg = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.am, %bb.c ], [ %i.az, %bb.d ] ; 5 uses
  %i.bh = load <2 x float>, ptr %i.a, align 8, !tbaa !18 ; 5 uses
  %i.bi = load float, ptr %i.d, align 8, !tbaa !18 ; 6 uses
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bk = fpext <2 x float> %i.bj to <2 x double> ; 4 uses
  %i.bl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bk, <2 x double> zeroinitializer)
  %i.bm = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.bn = fpext <2 x float> %i.bm to <2 x double> ; 4 uses
  %i.bo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bn, <2 x double> %i.bl)
  %i.bp = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bf, i64 1
  %i.br = fpext <2 x float> %i.bq to <2 x double> ; 4 uses
  %i.bs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.br, <2 x double> %i.bo) ; 2 uses
  %shift = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bs, %shift
  %i.bt = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bu = fcmp ogt double %i.bt, 0.000000e+00
  br i1 %i.bu, label %bb.f, label %_ZL9cos_anglePKfS0_.exit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88
  %i.bv = extractelement <2 x double> %i.bk, i64 0
  %i.bw = extractelement <2 x double> %i.bk, i64 1
  %i.bx = call double @llvm.fmuladd.f64(double %i.bv, double %i.bw, double 0.000000e+00)
  %i.by = extractelement <2 x double> %i.bn, i64 0
  %i.bz = extractelement <2 x double> %i.bn, i64 1
  %i.ca = call double @llvm.fmuladd.f64(double %i.by, double %i.bz, double %i.bx)
  %i.cb = extractelement <2 x double> %i.br, i64 0
  %i.cc = extractelement <2 x double> %i.br, i64 1
  %i.cd = call double @llvm.fmuladd.f64(double %i.cb, double %i.cc, double %i.ca)
  %i.ce = call nnan double @llvm.sqrt.f64(double %i.bt)
  %i.cf = fdiv nnan double 1.000000e+00, %i.ce
  %i.cg = fmul double %i.cd, %i.cf
  %i.ch = fptrunc double %i.cg to float
  br label %_ZL9cos_anglePKfS0_.exit

_ZL9cos_anglePKfS0_.exit:                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88, %bb.f
  %.026.i = phi float [ %i.ch, %bb.f ], [ 1.000000e+00, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ] ; 3 uses
  %i.ci = fcmp ogt float %.026.i, 1.000000e+00
  %i.cj = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.cj, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.ci, float 1.000000e+00, float %..026.i ; 4 uses
  %i.ck = call noundef float @acosf(float noundef %.027.i) #23
  %i.cl = sext i32 %i.i to i64
  %i.cm = getelementptr inbounds [48 x i8], ptr %2, i64 %i.cl ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !15 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !15 ; 2 uses
  %i.cr = load float, ptr %i.cm, align 4, !tbaa !15 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !15 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !15
  %i.cw = fmul float %6, %i.ct
  %i.cx = call float @llvm.fmuladd.f32(float %i.f, float %i.cr, float %i.cw)
  %i.cy = fsub float %i.ct, %i.cr
  %i.cz = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cy, i64 1
  %i.db = fpext <2 x float> %i.da to <2 x double>
  %i.dc = fmul <2 x double> %i.db, splat (double f0x3F91DF46A2529D39)
  %i.dd = fptrunc <2 x double> %i.dc to <2 x float> ; 2 uses
  %i.de = fmul float %6, %i.cq
  %i.df = call float @llvm.fmuladd.f32(float %i.f, float %i.co, float %i.de) ; 3 uses
  %i.dg = sitofp i32 %i.cv to float               ; 2 uses
  %i.dh = extractelement <2 x float> %i.dd, i64 0
  %i.di = fsub float %i.ck, %i.dh
  %i.dj = fmul float %i.di, %i.dg                 ; 2 uses
  %i.dk = call noundef float @sinf(float noundef %i.dj) #23 ; 2 uses
  %i.dl = call noundef float @cosf(float noundef %i.dj) #23
  %i.dm = fsub float 1.000000e+00, %i.dl          ; 2 uses
  %i.dn = fmul float %i.df, %i.dm
  %i.do = fsub float %i.cq, %i.co
  %i.dp = extractelement <2 x float> %i.dd, i64 1
  %i.dq = fmul float %i.df, %i.dp
  %i.dr = fmul float %i.dk, %i.dq
  %i.ds = call noundef float @llvm.fmuladd.f32(float %i.do, float %i.dm, float %i.dr)
  %i.dt = load float, ptr %7, align 4, !tbaa !18
  %i.du = fadd float %i.dt, %i.ds
  store float %i.du, ptr %7, align 4, !tbaa !18
  %i.dv = fadd float %.06, %i.dn                  ; 2 uses
  %i.dw = fmul float %.027.i, %.027.i             ; 2 uses
  %i.dx = fcmp olt float %i.dw, 1.000000e+00
  br i1 %i.dx, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZL9cos_anglePKfS0_.exit
  %i.dy = fmul float %i.df, %i.dg
  %i.dz = fneg float %i.dk
  %i.ea = fmul float %i.dy, %i.dz
  %i.eb = fsub float 1.000000e+00, %i.dw
  %i.ec = call noundef float @sqrtf(float noundef %i.eb) #23
  %i.ed = fmul <2 x float> %i.bm, %i.bm
  %i.ee = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bj, <2 x float> %i.ed) ; 2 uses
  %9 = extractelement <2 x float> %i.ee, i64 0
  %10 = call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %9) ; 2 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 1
  %11 = call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.ef) ; 2 uses
  %i.eg = fmul float %10, %11
  %i.eh = call float @llvm.sqrt.f32(float %i.eg)
  %i.ei = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.eh, i64 1
  %i.ek = fdiv <2 x float> splat (float 1.000000e+00), %i.ej ; 2 uses
  %i.el = extractelement <2 x float> %i.ek, i64 0
  %i.em = fmul float %i.ea, %i.el                 ; 2 uses
  %i.en = fmul float %.027.i, %i.em               ; 2 uses
  %i.eo = extractelement <2 x float> %i.ek, i64 1
  %i.ep = fmul float %i.eo, %i.em                 ; 5 uses
  %i.eq = fdiv float %i.en, %10                   ; 4 uses
  %i.er = getelementptr inbounds [16 x i8], ptr %4, i64 %i.q ; 6 uses
  %i.es = getelementptr inbounds [16 x i8], ptr %4, i64 %i.o ; 5 uses
  br i1 %8, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.g
  %i.et = sext i32 %.1 to i64                     ; 2 uses
  %i.eu = getelementptr inbounds [16 x i8], ptr %4, i64 %i.et ; 2 uses
  %i.ev = sext i32 %.181 to i64
  %i.ew = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ev ; 3 uses
  %i.ex = fdiv float %i.en, %11                   ; 2 uses
  %i.ey = fneg <2 x float> %i.bh
  %i.ez = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.fa, %i.ey
  %i.fc = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.bg, <2 x float> %i.fb) ; 2 uses
  %i.ff = load <2 x float>, ptr %i.er, align 4, !tbaa !18
  %i.fg = fadd <2 x float> %i.ff, %i.fe
  store <2 x float> %i.fg, ptr %i.er, align 4, !tbaa !18
  %i.fh = load <2 x float>, ptr %i.es, align 4, !tbaa !18
  %i.fi = fsub <2 x float> %i.fh, %i.fe
  store <2 x float> %i.fi, ptr %i.es, align 4, !tbaa !18
  %i.fj = fneg <2 x float> %i.bg
  %i.fk = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fl, %i.fj
  %i.fn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.bh, <2 x float> %i.fm) ; 2 uses
  %i.fo = load <2 x float>, ptr %i.ew, align 4, !tbaa !18
  %i.fp = fadd <2 x float> %i.fn, %i.fo
  store <2 x float> %i.fp, ptr %i.ew, align 4, !tbaa !18
  %i.fq = load <2 x float>, ptr %i.eu, align 4, !tbaa !18
  %i.fr = fsub <2 x float> %i.fq, %i.fn
  store <2 x float> %i.fr, ptr %i.eu, align 4, !tbaa !18
  %i.fs = fneg float %i.bi
  %i.ft = fmul float %i.eq, %i.fs
  %i.fu = call float @llvm.fmuladd.f32(float %i.ep, float %i.bf, float %i.ft) ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !18
  %i.fx = fadd float %i.fw, %i.fu
  store float %i.fx, ptr %i.fv, align 4, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !18
  %i.ga = fsub float %i.fz, %i.fu
  store float %i.ga, ptr %i.fy, align 4, !tbaa !18
  %i.gb = fneg float %i.bf
  %i.gc = fmul float %i.ex, %i.gb
  %i.gd = call float @llvm.fmuladd.f32(float %i.ep, float %i.bi, float %i.gc) ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !18
  %i.gg = fadd float %i.gd, %i.gf
  store float %i.gg, ptr %i.ge, align 4, !tbaa !18
  br label %.loopexit.sink.split

.split.us.preheader:                              ; preds = %bb.g
  %i.gh = fneg <2 x float> %i.bh
  %i.gi = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = fmul <2 x float> %i.gj, %i.gh
  %i.gl = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.bg, <2 x float> %i.gk) ; 2 uses
  %i.go = load <2 x float>, ptr %i.er, align 4, !tbaa !18
  %i.gp = fadd <2 x float> %i.go, %i.gn
  store <2 x float> %i.gp, ptr %i.er, align 4, !tbaa !18
  %i.gq = load <2 x float>, ptr %i.es, align 4, !tbaa !18
  %i.gr = fsub <2 x float> %i.gq, %i.gn
  store <2 x float> %i.gr, ptr %i.es, align 4, !tbaa !18
  %i.gs = fneg float %i.bi
  %i.gt = fmul float %i.eq, %i.gs
  %i.gu = call float @llvm.fmuladd.f32(float %i.ep, float %i.bf, float %i.gt) ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !18
  %i.gx = fadd float %i.gw, %i.gu
  store float %i.gx, ptr %i.gv, align 4, !tbaa !18
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.split.us.preheader, %.split.preheader
  %i.gy = phi i64 [ %i.et, %.split.preheader ], [ %i.o, %.split.us.preheader ]
  %.sink17 = phi float [ %i.gd, %.split.preheader ], [ %i.gu, %.split.us.preheader ]
  %i.gz = getelementptr inbounds [16 x i8], ptr %4, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !18
  %i.hc = fsub float %i.hb, %.sink17
  store float %i.hc, ptr %i.ha, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %_ZL9cos_anglePKfS0_.exit
  %i.hd = icmp slt i32 %.184, %0
  br i1 %i.hd, label %bb.b, label %._crit_edge, !llvm.loop !168

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dv, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_Z10do_dih_fupIL18BondedKernelFlavor1EEviiiifPfS1_S1_S1_S1_PA4_fPA3_fPK5t_pbcPA3_Kfiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = load float, ptr %8, align 4, !tbaa !18   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !18 ; 3 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !18 ; 3 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e) ; 2 uses
  %i.i = load float, ptr %9, align 4, !tbaa !18   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !18 ; 3 uses
  %i.l = fmul float %i.k, %i.k
  %i.m = tail call float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !18 ; 3 uses
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.m) ; 2 uses
  %i.q = load float, ptr %6, align 4, !tbaa !18   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !18 ; 4 uses
  %i.t = fmul float %i.s, %i.s
  %i.u = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !18 ; 4 uses
  %i.x = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.u) ; 3 uses
  %i.y = fmul float %i.x, f0x34000000             ; 2 uses
  %i.z = fcmp ogt float %i.h, %i.y
  %i.aa = fcmp ogt float %i.p, %i.y
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt = tail call float @llvm.sqrt.f32(float %i.x)
  %i.ab = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.ac = fmul float %i.ab, %i.ab                 ; 2 uses
  %i.ad = fmul float %i.x, %i.ab                  ; 2 uses
  %i.ae = fneg float %4
  %i.af = fmul float %i.ad, %i.ae
  %i.ag = fdiv float %i.af, %i.h                  ; 3 uses
  %i.ah = fmul float %i.a, %i.ag                  ; 3 uses
  %i.ai = fmul float %i.c, %i.ag                  ; 3 uses
  %i.aj = fmul float %i.g, %i.ag                  ; 3 uses
  %i.ak = fmul float %4, %i.ad
  %i.al = fdiv float %i.ak, %i.p                  ; 3 uses
  %i.am = fmul float %i.i, %i.al                  ; 3 uses
  %i.an = fmul float %i.k, %i.al                  ; 3 uses
  %i.ao = fmul float %i.o, %i.al                  ; 3 uses
  %i.ap = load float, ptr %5, align 4, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !18
  %i.as = fmul float %i.s, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.q, float %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !18
  %i.aw = tail call noundef float @llvm.fmuladd.f32(float %i.av, float %i.w, float %i.at)
  %i.ax = fmul float %i.ac, %i.aw                 ; 3 uses
  %i.ay = load float, ptr %7, align 4, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !18
  %i.bb = fmul float %i.s, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.q, float %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !18
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.w, float %i.bc)
  %i.bg = fmul float %i.ac, %i.bf                 ; 3 uses
  %i.bh = fmul float %i.ah, %i.ax
  %i.bi = fmul float %i.ai, %i.ax
  %i.bj = fmul float %i.aj, %i.ax
  %i.bk = fmul float %i.am, %i.bg
  %i.bl = fmul float %i.an, %i.bg
  %i.bm = fmul float %i.ao, %i.bg
  %i.bn = fsub float %i.bh, %i.bk                 ; 2 uses
  %i.bo = fsub float %i.bi, %i.bl                 ; 2 uses
  %i.bp = fsub float %i.bj, %i.bm                 ; 2 uses
  %i.bq = fsub float %i.ah, %i.bn
  %i.br = fsub float %i.ai, %i.bo
  %i.bs = fsub float %i.aj, %i.bp
  %i.bt = fadd float %i.am, %i.bn
  %i.bu = fadd float %i.an, %i.bo
  %i.bv = fadd float %i.ao, %i.bp
  %i.bw = sext i32 %0 to i64
  %i.bx = getelementptr inbounds [16 x i8], ptr %10, i64 %i.bw ; 4 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !18
  %i.bz = fadd float %i.ah, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !18
  %i.cc = fadd float %i.ai, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !18
  %i.cf = fadd float %i.aj, %i.ce
  store float %i.bz, ptr %i.bx, align 4, !tbaa !18
  store float %i.cc, ptr %i.ca, align 4, !tbaa !18
  store float %i.cf, ptr %i.cd, align 4, !tbaa !18
  %i.cg = sext i32 %1 to i64
  %i.ch = getelementptr inbounds [16 x i8], ptr %10, i64 %i.cg ; 4 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !18
  %i.cj = fsub float %i.ci, %i.bq
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !18
  %i.cm = fsub float %i.cl, %i.br
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !18
  %i.cp = fsub float %i.co, %i.bs
  store float %i.cj, ptr %i.ch, align 4, !tbaa !18
  store float %i.cm, ptr %i.ck, align 4, !tbaa !18
  store float %i.cp, ptr %i.cn, align 4, !tbaa !18
  %i.cq = sext i32 %2 to i64
end_hunk_6
begin_hunk_7_@_Z10do_dih_fupIL18BondedKernelFlavor1EEviiiifPfS1_S1_S1_S1_PA4_fPA3_fPK5t_pbcPA3_Kfiii:bb.a
  store float %i.dg, ptr %i.de, align 4, !tbaa !18
  store float %i.dj, ptr %i.dh, align 4, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor1EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef %4, float noundef %5, float noundef %6) unnamed_addr #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) ; 0 uses
  %i.c = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %.phi.trans.insert4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre5 = load float, ptr %.phi.trans.insert4, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load <2 x float>, ptr %0, align 4, !tbaa !18
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !18
  %i.f = fsub <2 x float> %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !18
  %i.k = fsub float %i.h, %i.j
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit: ; preds = %bb.b, %bb.c
  %i.l = phi float [ %.pre5, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  %i.m = phi <2 x float> [ %i.c, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 1   ; 3 uses
  %i.o = fmul float %i.n, %i.n
  %i.p = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  %i.q = call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.o)
  %i.r = call noundef float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.q)
  %sqrt = call float @llvm.sqrt.f32(float %i.r)
  %i.s = fdiv float 1.000000e+00, %sqrt           ; 3 uses
  %i.t = fdiv float %6, %i.s                      ; 3 uses
  %i.u = fpext float %5 to double
  %i.v = fmul double %i.u, f0x40615DEF44DEAD3D
  %i.w = fpext float %i.s to double               ; 2 uses
  %i.x = fmul double %i.v, %i.w
  %i.y = fptrunc double %i.x to float             ; 3 uses
  %i.z = fneg float %i.t
  %i.aa = call noundef float @expf(float noundef %i.z) #23
  %i.ab = fpext float %i.t to double
  %i.ac = call double @llvm.fmuladd.f64(double %i.ab, double 5.000000e-01, double 1.000000e+00)
  %i.ad = fpext float %i.aa to double             ; 2 uses
  %i.ae = fneg double %i.ac
  %i.af = call double @llvm.fmuladd.f64(double %i.ae, double %i.ad, double 1.000000e+00)
  %i.ag = fptrunc double %i.af to float           ; 2 uses
  %i.ah = fmul float %i.s, %i.y
  %i.ai = fmul float %i.ah, %i.ag
  %i.aj = fpext float %i.ai to double
  %i.ak = fpext float %i.y to double
  %i.al = fmul double %i.ak, 5.000000e-01
  %i.am = fpext float %6 to double
  %i.an = fmul double %i.al, %i.am
  %i.ao = fadd float %i.t, 1.000000e+00
  %i.ap = fpext float %i.ao to double
  %i.aq = fneg double %i.ad
  %i.ar = fmul double %i.an, %i.aq
  %i.as = call double @llvm.fmuladd.f64(double %i.ar, double %i.ap, double %i.aj)
  %i.at = fmul double %i.as, %i.w
  %i.au = fptrunc double %i.at to float           ; 3 uses
  %i.av = fmul float %i.p, %i.au                  ; 2 uses
  %i.aw = load float, ptr %2, align 4, !tbaa !18
  %i.ax = fadd float %i.aw, %i.av
  store float %i.ax, ptr %2, align 4, !tbaa !18
  %i.ay = load float, ptr %3, align 4, !tbaa !18
  %i.az = fsub float %i.ay, %i.av
  store float %i.az, ptr %3, align 4, !tbaa !18
  %i.ba = fmul float %i.n, %i.au                  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !18
  %i.bd = fadd float %i.bc, %i.ba
  store float %i.bd, ptr %i.bb, align 4, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !18
  %i.bg = fsub float %i.bf, %i.ba
  store float %i.bg, ptr %i.be, align 4, !tbaa !18
  %i.bh = fmul float %i.l, %i.au                  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !18
  %i.bk = fadd float %i.bj, %i.bh
  store float %i.bk, ptr %i.bi, align 4, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !18
  %i.bn = fsub float %i.bm, %i.bh
  store float %i.bn, ptr %i.bl, align 4, !tbaa !18
  %i.bo = fmul float %i.y, %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %i.bo
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZN12_GLOBAL__N_110low_angresIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfb(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, float noundef %6, ptr nofree noundef captures(none) %7, i1 noundef zeroext %8) unnamed_addr #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %5, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.f = fsub float 1.000000e+00, %6              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.06 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dv, %.loopexit ]
  %.0795 = phi i32 [ 0, %.lr.ph ], [ %.1, %.loopexit ]
  %.0804 = phi i32 [ 0, %.lr.ph ], [ %.181, %.loopexit ]
  %.0833 = phi i32 [ 0, %.lr.ph ], [ %.184, %.loopexit ] ; 4 uses
  %i.g = sext i32 %.0833 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = add nsw i32 %.0833, 3                    ; 3 uses
  %i.m = getelementptr i8, ptr %i.h, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds [12 x i8], ptr %3, i64 %i.o ; 3 uses
  %i.q = sext i32 %i.k to i64                     ; 2 uses
  %i.r = getelementptr inbounds [12 x i8], ptr %3, i64 %i.q ; 3 uses
  br i1 %.not.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !18
  %i.w = fsub float %i.t, %i.v
  %i.x = load <2 x float>, ptr %i.p, align 4, !tbaa !18
  %i.y = load <2 x float>, ptr %i.r, align 4, !tbaa !18
  %i.z = fsub <2 x float> %i.x, %i.y
  store <2 x float> %i.z, ptr %i.a, align 8, !tbaa !18
  store float %i.w, ptr %i.d, align 8, !tbaa !18
  br i1 %8, label %bb.e, label %bb.d

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread: ; preds = %bb.b
  %i.aa = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %5, ptr noundef %i.p, ptr noundef %i.r, ptr noundef nonnull %i.a) ; 0 uses
  br i1 %8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread
  %i.ab = sext i32 %i.l to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16 ; 2 uses
  %i.ae = add nsw i32 %.0833, 5
  %i.af = getelementptr i8, ptr %i.h, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ah
  %i.aj = sext i32 %i.ad to i64
  %i.ak = getelementptr inbounds [12 x i8], ptr %3, i64 %i.aj
  %i.al = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %5, ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef nonnull %i.b) ; 0 uses
  %i.am = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre11 = load float, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.an = sext i32 %i.l to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %1, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16 ; 2 uses
  %i.aq = add nsw i32 %.0833, 5
  %i.ar = getelementptr i8, ptr %i.h, i64 16
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [12 x i8], ptr %3, i64 %i.at ; 2 uses
  %i.av = sext i32 %i.ap to i64
  %i.aw = getelementptr inbounds [12 x i8], ptr %3, i64 %i.av ; 2 uses
  %i.ax = load <2 x float>, ptr %i.au, align 4, !tbaa !18
  %i.ay = load <2 x float>, ptr %i.aw, align 4, !tbaa !18
  %i.az = fsub <2 x float> %i.ax, %i.ay           ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !18
  %i.be = fsub float %i.bb, %i.bd                 ; 2 uses
  store <2 x float> %i.az, ptr %i.b, align 8, !tbaa !18
  store float %i.be, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  store <2 x float> zeroinitializer, ptr %i.b, align 8, !tbaa !18
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88: ; preds = %bb.d, %bb.c, %bb.e
  %i.bf = phi float [ 1.000000e+00, %bb.e ], [ %.pre11, %bb.c ], [ %i.be, %bb.d ] ; 6 uses
  %.184 = phi i32 [ %i.l, %bb.e ], [ %i.ae, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %.181 = phi i32 [ %.0804, %bb.e ], [ %i.ad, %bb.c ], [ %i.ap, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.0795, %bb.e ], [ %i.ag, %bb.c ], [ %i.as, %bb.d ] ; 2 uses
  %i.bg = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.am, %bb.c ], [ %i.az, %bb.d ] ; 5 uses
  %i.bh = load <2 x float>, ptr %i.a, align 8, !tbaa !18 ; 5 uses
  %i.bi = load float, ptr %i.d, align 8, !tbaa !18 ; 6 uses
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bk = fpext <2 x float> %i.bj to <2 x double> ; 4 uses
  %i.bl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bk, <2 x double> zeroinitializer)
  %i.bm = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.bn = fpext <2 x float> %i.bm to <2 x double> ; 4 uses
  %i.bo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bn, <2 x double> %i.bl)
  %i.bp = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bf, i64 1
  %i.br = fpext <2 x float> %i.bq to <2 x double> ; 4 uses
  %i.bs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.br, <2 x double> %i.bo) ; 2 uses
  %shift = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bs, %shift
  %i.bt = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bu = fcmp ogt double %i.bt, 0.000000e+00
  br i1 %i.bu, label %bb.f, label %_ZL9cos_anglePKfS0_.exit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88
  %i.bv = extractelement <2 x double> %i.bk, i64 0
  %i.bw = extractelement <2 x double> %i.bk, i64 1
  %i.bx = call double @llvm.fmuladd.f64(double %i.bv, double %i.bw, double 0.000000e+00)
  %i.by = extractelement <2 x double> %i.bn, i64 0
  %i.bz = extractelement <2 x double> %i.bn, i64 1
  %i.ca = call double @llvm.fmuladd.f64(double %i.by, double %i.bz, double %i.bx)
  %i.cb = extractelement <2 x double> %i.br, i64 0
  %i.cc = extractelement <2 x double> %i.br, i64 1
  %i.cd = call double @llvm.fmuladd.f64(double %i.cb, double %i.cc, double %i.ca)
  %i.ce = call nnan double @llvm.sqrt.f64(double %i.bt)
  %i.cf = fdiv nnan double 1.000000e+00, %i.ce
  %i.cg = fmul double %i.cd, %i.cf
  %i.ch = fptrunc double %i.cg to float
  br label %_ZL9cos_anglePKfS0_.exit

_ZL9cos_anglePKfS0_.exit:                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88, %bb.f
  %.026.i = phi float [ %i.ch, %bb.f ], [ 1.000000e+00, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ] ; 3 uses
  %i.ci = fcmp ogt float %.026.i, 1.000000e+00
  %i.cj = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.cj, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.ci, float 1.000000e+00, float %..026.i ; 4 uses
  %i.ck = call noundef float @acosf(float noundef %.027.i) #23
  %i.cl = sext i32 %i.i to i64
  %i.cm = getelementptr inbounds [48 x i8], ptr %2, i64 %i.cl ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !15 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !15 ; 2 uses
  %i.cr = load float, ptr %i.cm, align 4, !tbaa !15 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !15 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !15
  %i.cw = fmul float %6, %i.ct
  %i.cx = call float @llvm.fmuladd.f32(float %i.f, float %i.cr, float %i.cw)
  %i.cy = fsub float %i.ct, %i.cr
  %i.cz = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cy, i64 1
  %i.db = fpext <2 x float> %i.da to <2 x double>
  %i.dc = fmul <2 x double> %i.db, splat (double f0x3F91DF46A2529D39)
  %i.dd = fptrunc <2 x double> %i.dc to <2 x float> ; 2 uses
  %i.de = fmul float %6, %i.cq
  %i.df = call float @llvm.fmuladd.f32(float %i.f, float %i.co, float %i.de) ; 3 uses
  %i.dg = sitofp i32 %i.cv to float               ; 2 uses
  %i.dh = extractelement <2 x float> %i.dd, i64 0
  %i.di = fsub float %i.ck, %i.dh
  %i.dj = fmul float %i.di, %i.dg                 ; 2 uses
  %i.dk = call noundef float @sinf(float noundef %i.dj) #23 ; 2 uses
  %i.dl = call noundef float @cosf(float noundef %i.dj) #23
  %i.dm = fsub float 1.000000e+00, %i.dl          ; 2 uses
  %i.dn = fmul float %i.df, %i.dm
  %i.do = fsub float %i.cq, %i.co
  %i.dp = extractelement <2 x float> %i.dd, i64 1
  %i.dq = fmul float %i.df, %i.dp
  %i.dr = fmul float %i.dk, %i.dq
  %i.ds = call noundef float @llvm.fmuladd.f32(float %i.do, float %i.dm, float %i.dr)
  %i.dt = load float, ptr %7, align 4, !tbaa !18
  %i.du = fadd float %i.dt, %i.ds
  store float %i.du, ptr %7, align 4, !tbaa !18
  %i.dv = fadd float %.06, %i.dn                  ; 2 uses
  %i.dw = fmul float %.027.i, %.027.i             ; 2 uses
  %i.dx = fcmp olt float %i.dw, 1.000000e+00
  br i1 %i.dx, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZL9cos_anglePKfS0_.exit
  %i.dy = fmul float %i.df, %i.dg
  %i.dz = fneg float %i.dk
  %i.ea = fmul float %i.dy, %i.dz
  %i.eb = fsub float 1.000000e+00, %i.dw
  %i.ec = call noundef float @sqrtf(float noundef %i.eb) #23
  %i.ed = fmul <2 x float> %i.bm, %i.bm
  %i.ee = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bj, <2 x float> %i.ed) ; 2 uses
  %9 = extractelement <2 x float> %i.ee, i64 0
  %10 = call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %9) ; 2 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 1
  %11 = call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.ef) ; 2 uses
  %i.eg = fmul float %10, %11
  %i.eh = call float @llvm.sqrt.f32(float %i.eg)
  %i.ei = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.eh, i64 1
  %i.ek = fdiv <2 x float> splat (float 1.000000e+00), %i.ej ; 2 uses
  %i.el = extractelement <2 x float> %i.ek, i64 0
  %i.em = fmul float %i.ea, %i.el                 ; 2 uses
  %i.en = fmul float %.027.i, %i.em               ; 2 uses
  %i.eo = extractelement <2 x float> %i.ek, i64 1
  %i.ep = fmul float %i.eo, %i.em                 ; 5 uses
  %i.eq = fdiv float %i.en, %10                   ; 4 uses
  %i.er = getelementptr inbounds [16 x i8], ptr %4, i64 %i.q ; 6 uses
  %i.es = getelementptr inbounds [16 x i8], ptr %4, i64 %i.o ; 5 uses
  br i1 %8, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.g
  %i.et = sext i32 %.1 to i64                     ; 2 uses
  %i.eu = getelementptr inbounds [16 x i8], ptr %4, i64 %i.et ; 2 uses
  %i.ev = sext i32 %.181 to i64
  %i.ew = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ev ; 3 uses
  %i.ex = fdiv float %i.en, %11                   ; 2 uses
  %i.ey = fneg <2 x float> %i.bh
  %i.ez = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.fa, %i.ey
  %i.fc = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.bg, <2 x float> %i.fb) ; 2 uses
  %i.ff = load <2 x float>, ptr %i.er, align 4, !tbaa !18
  %i.fg = fadd <2 x float> %i.ff, %i.fe
  store <2 x float> %i.fg, ptr %i.er, align 4, !tbaa !18
  %i.fh = load <2 x float>, ptr %i.es, align 4, !tbaa !18
  %i.fi = fsub <2 x float> %i.fh, %i.fe
  store <2 x float> %i.fi, ptr %i.es, align 4, !tbaa !18
  %i.fj = fneg <2 x float> %i.bg
  %i.fk = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fl, %i.fj
  %i.fn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.bh, <2 x float> %i.fm) ; 2 uses
  %i.fo = load <2 x float>, ptr %i.ew, align 4, !tbaa !18
  %i.fp = fadd <2 x float> %i.fn, %i.fo
  store <2 x float> %i.fp, ptr %i.ew, align 4, !tbaa !18
  %i.fq = load <2 x float>, ptr %i.eu, align 4, !tbaa !18
  %i.fr = fsub <2 x float> %i.fq, %i.fn
  store <2 x float> %i.fr, ptr %i.eu, align 4, !tbaa !18
  %i.fs = fneg float %i.bi
  %i.ft = fmul float %i.eq, %i.fs
  %i.fu = call float @llvm.fmuladd.f32(float %i.ep, float %i.bf, float %i.ft) ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !18
  %i.fx = fadd float %i.fw, %i.fu
  store float %i.fx, ptr %i.fv, align 4, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !18
  %i.ga = fsub float %i.fz, %i.fu
  store float %i.ga, ptr %i.fy, align 4, !tbaa !18
  %i.gb = fneg float %i.bf
  %i.gc = fmul float %i.ex, %i.gb
  %i.gd = call float @llvm.fmuladd.f32(float %i.ep, float %i.bi, float %i.gc) ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !18
  %i.gg = fadd float %i.gd, %i.gf
  store float %i.gg, ptr %i.ge, align 4, !tbaa !18
  br label %.loopexit.sink.split

.split.us.preheader:                              ; preds = %bb.g
  %i.gh = fneg <2 x float> %i.bh
  %i.gi = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = fmul <2 x float> %i.gj, %i.gh
  %i.gl = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.bg, <2 x float> %i.gk) ; 2 uses
  %i.go = load <2 x float>, ptr %i.er, align 4, !tbaa !18
  %i.gp = fadd <2 x float> %i.go, %i.gn
  store <2 x float> %i.gp, ptr %i.er, align 4, !tbaa !18
  %i.gq = load <2 x float>, ptr %i.es, align 4, !tbaa !18
  %i.gr = fsub <2 x float> %i.gq, %i.gn
  store <2 x float> %i.gr, ptr %i.es, align 4, !tbaa !18
  %i.gs = fneg float %i.bi
  %i.gt = fmul float %i.eq, %i.gs
  %i.gu = call float @llvm.fmuladd.f32(float %i.ep, float %i.bf, float %i.gt) ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !18
  %i.gx = fadd float %i.gw, %i.gu
  store float %i.gx, ptr %i.gv, align 4, !tbaa !18
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.split.us.preheader, %.split.preheader
  %i.gy = phi i64 [ %i.et, %.split.preheader ], [ %i.o, %.split.us.preheader ]
  %.sink17 = phi float [ %i.gd, %.split.preheader ], [ %i.gu, %.split.us.preheader ]
  %i.gz = getelementptr inbounds [16 x i8], ptr %4, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !18
  %i.hc = fsub float %i.hb, %.sink17
  store float %i.hc, ptr %i.ha, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %_ZL9cos_anglePKfS0_.exit
  %i.hd = icmp slt i32 %.184, %0
  br i1 %i.hd, label %bb.b, label %._crit_edge, !llvm.loop !169

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dv, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z10do_dih_fupIL18BondedKernelFlavor2EEviiiifPfS1_S1_S1_S1_PA4_fPA3_fPK5t_pbcPA3_Kfiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load float, ptr %8, align 4, !tbaa !18   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !18 ; 3 uses
  %i.e = fmul float %i.d, %i.d
  %i.f = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !18 ; 3 uses
  %i.i = tail call noundef float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.f) ; 2 uses
  %i.j = load float, ptr %9, align 4, !tbaa !18   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !18 ; 3 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !18 ; 3 uses
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.n) ; 2 uses
  %i.r = load float, ptr %6, align 4, !tbaa !18   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !18 ; 4 uses
  %i.u = fmul float %i.t, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !18 ; 4 uses
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.v) ; 3 uses
  %i.z = fmul float %i.y, f0x34000000             ; 2 uses
  %i.aa = fcmp ogt float %i.i, %i.z
  %i.ab = fcmp ogt float %i.q, %i.z
  %or.cond = and i1 %i.aa, %i.ab
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %sqrt = tail call float @llvm.sqrt.f32(float %i.y)
  %i.ac = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.ad = fmul float %i.ac, %i.ac                 ; 2 uses
  %i.ae = fmul float %i.y, %i.ac                  ; 2 uses
  %i.af = fneg float %4
  %i.ag = fmul float %i.ae, %i.af
  %i.ah = fdiv float %i.ag, %i.i                  ; 3 uses
  %i.ai = fmul float %i.b, %i.ah                  ; 4 uses
  %i.aj = fmul float %i.d, %i.ah                  ; 4 uses
  %i.ak = fmul float %i.h, %i.ah                  ; 4 uses
  %i.al = fmul float %4, %i.ae
  %i.am = fdiv float %i.al, %i.q                  ; 3 uses
  %i.an = fmul float %i.j, %i.am                  ; 4 uses
  %i.ao = fmul float %i.l, %i.am                  ; 4 uses
  %i.ap = fmul float %i.p, %i.am                  ; 4 uses
  %i.aq = load float, ptr %5, align 4, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !18
  %i.at = fmul float %i.t, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.r, float %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = load float, ptr %i.av, align 4, !tbaa !18
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.aw, float %i.x, float %i.au)
  %i.ay = fmul float %i.ad, %i.ax                 ; 3 uses
  %i.az = load float, ptr %7, align 4, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !18
  %i.bc = fmul float %i.t, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.az, float %i.r, float %i.bc)
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !18
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.x, float %i.bd)
  %i.bh = fmul float %i.ad, %i.bg                 ; 3 uses
  %i.bi = fmul float %i.ai, %i.ay
  %i.bj = fmul float %i.aj, %i.ay
  %i.bk = fmul float %i.ak, %i.ay
  %i.bl = fmul float %i.an, %i.bh
  %i.bm = fmul float %i.ao, %i.bh
  %i.bn = fmul float %i.ap, %i.bh
  %i.bo = fsub float %i.bi, %i.bl                 ; 2 uses
  %i.bp = fsub float %i.bj, %i.bm                 ; 2 uses
  %i.bq = fsub float %i.bk, %i.bn                 ; 2 uses
  %i.br = fsub float %i.ai, %i.bo                 ; 2 uses
  %i.bs = fsub float %i.aj, %i.bp                 ; 2 uses
  %i.bt = fsub float %i.ak, %i.bq                 ; 2 uses
  %i.bu = fadd float %i.an, %i.bo                 ; 2 uses
  %i.bv = fadd float %i.ao, %i.bp                 ; 2 uses
  %i.bw = fadd float %i.ap, %i.bq                 ; 2 uses
  %i.bx = sext i32 %0 to i64
  %i.by = getelementptr inbounds [16 x i8], ptr %10, i64 %i.bx ; 4 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !18
  %i.ca = fadd float %i.ai, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !18
  %i.cd = fadd float %i.aj, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !18
  %i.cg = fadd float %i.ak, %i.cf
  store float %i.ca, ptr %i.by, align 4, !tbaa !18
  store float %i.cd, ptr %i.cb, align 4, !tbaa !18
  store float %i.cg, ptr %i.ce, align 4, !tbaa !18
  %i.ch = sext i32 %1 to i64                      ; 2 uses
  %i.ci = getelementptr inbounds [16 x i8], ptr %10, i64 %i.ch ; 4 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !18
  %i.ck = fsub float %i.cj, %i.br
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !18
  %i.cn = fsub float %i.cm, %i.bs
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !18
  %i.cq = fsub float %i.cp, %i.bt
  store float %i.ck, ptr %i.ci, align 4, !tbaa !18
  store float %i.cn, ptr %i.cl, align 4, !tbaa !18
  store float %i.cq, ptr %i.co, align 4, !tbaa !18
  %i.cr = sext i32 %2 to i64
  %i.cs = getelementptr inbounds [16 x i8], ptr %10, i64 %i.cr ; 4 uses
end_hunk_7
begin_hunk_8_@_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor2EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff:bb.a

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit: ; preds = %bb.b, %bb.c
  %i.m = phi float [ %.pre41, %bb.b ], [ %i.l, %bb.c ] ; 3 uses
  %.0.i = phi i64 [ %i.c, %bb.b ], [ 22, %bb.c ]
  %i.n = phi <2 x float> [ %i.d, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 1   ; 3 uses
  %i.p = fmul float %i.o, %i.o
  %i.q = extractelement <2 x float> %i.n, i64 0   ; 3 uses
  %i.r = call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.p)
  %i.s = call noundef float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.r)
  %sqrt = call float @llvm.sqrt.f32(float %i.s)
  %i.t = fdiv float 1.000000e+00, %sqrt           ; 3 uses
  %i.u = fdiv float %7, %i.t                      ; 3 uses
  %i.v = fpext float %5 to double
  %i.w = fmul double %i.v, f0x40615DEF44DEAD3D
  %i.x = fpext float %i.t to double               ; 2 uses
  %i.y = fmul double %i.w, %i.x
  %i.z = fptrunc double %i.y to float             ; 3 uses
  %i.aa = fneg float %i.u
  %i.ab = call noundef float @expf(float noundef %i.aa) #23
  %i.ac = fpext float %i.u to double
  %i.ad = call double @llvm.fmuladd.f64(double %i.ac, double 5.000000e-01, double 1.000000e+00)
  %i.ae = fpext float %i.ab to double             ; 2 uses
  %i.af = fneg double %i.ad
  %i.ag = call double @llvm.fmuladd.f64(double %i.af, double %i.ae, double 1.000000e+00)
  %i.ah = fptrunc double %i.ag to float           ; 2 uses
  %i.ai = fmul float %i.t, %i.z
  %i.aj = fmul float %i.ai, %i.ah
  %i.ak = fpext float %i.aj to double
  %i.al = fpext float %i.z to double
  %i.am = fmul double %i.al, 5.000000e-01
  %i.an = fpext float %7 to double
  %i.ao = fmul double %i.am, %i.an
  %i.ap = fadd float %i.u, 1.000000e+00
  %i.aq = fpext float %i.ap to double
  %i.ar = fneg double %i.ae
  %i.as = fmul double %i.ao, %i.ar
  %i.at = call double @llvm.fmuladd.f64(double %i.as, double %i.aq, double %i.ak)
  %i.au = fmul double %i.at, %i.x
  %i.av = fptrunc double %i.au to float           ; 3 uses
  %i.aw = getelementptr inbounds [12 x i8], ptr %6, i64 %.0.i ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 264 ; 2 uses
  %i.ay = fmul float %i.q, %i.av                  ; 4 uses
  %i.az = load float, ptr %2, align 4, !tbaa !18
  %i.ba = fadd float %i.az, %i.ay
  store float %i.ba, ptr %2, align 4, !tbaa !18
  %i.bb = load float, ptr %3, align 4, !tbaa !18
  %i.bc = fsub float %i.bb, %i.ay
  store float %i.bc, ptr %3, align 4, !tbaa !18
  %i.bd = load float, ptr %i.aw, align 4, !tbaa !18
  %i.be = fadd float %i.ay, %i.bd
  store float %i.be, ptr %i.aw, align 4, !tbaa !18
  %i.bf = load float, ptr %i.ax, align 4, !tbaa !18
  %i.bg = fsub float %i.bf, %i.ay
  store float %i.bg, ptr %i.ax, align 4, !tbaa !18
  %i.bh = fmul float %i.o, %i.av                  ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !18
  %i.bk = fadd float %i.bj, %i.bh
  store float %i.bk, ptr %i.bi, align 4, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !18
  %i.bn = fsub float %i.bm, %i.bh
  store float %i.bn, ptr %i.bl, align 4, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !18
  %i.bq = fadd float %i.bh, %i.bp
  store float %i.bq, ptr %i.bo, align 4, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 268 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !18
  %i.bt = fsub float %i.bs, %i.bh
  store float %i.bt, ptr %i.br, align 4, !tbaa !18
  %i.bu = fmul float %i.m, %i.av                  ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !18
  %i.bx = fadd float %i.bw, %i.bu
  store float %i.bx, ptr %i.bv, align 4, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !18
  %i.ca = fsub float %i.bz, %i.bu
  store float %i.ca, ptr %i.by, align 4, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !18
  %i.cd = fadd float %i.bu, %i.cc
  store float %i.cd, ptr %i.cb, align 4, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 272 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !18
  %i.cg = fsub float %i.cf, %i.bu
  store float %i.cg, ptr %i.ce, align 4, !tbaa !18
  %i.ch = fmul float %i.z, %i.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %i.ch
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZN12_GLOBAL__N_110low_angresIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfb(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, i1 noundef zeroext %9) unnamed_addr #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 7 uses
  %i.b = alloca [3 x float], align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = fsub float 1.000000e+00, %7              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.0.0 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.0.2, %bb.i ] ; 2 uses
  %.0113 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ea, %bb.i ]
  %.086112 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.i ]
  %.087111 = phi i32 [ 0, %.lr.ph ], [ %.188, %bb.i ]
  %.089110 = phi i32 [ 0, %.lr.ph ], [ %.190, %bb.i ]
  %.092109 = phi i32 [ 0, %.lr.ph ], [ %.193, %bb.i ] ; 4 uses
  %i.k = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ir, %bb.i ] ; 2 uses
  %i.l = sext i32 %.092109 to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %1, i64 %i.l ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = getelementptr i8, ptr %i.m, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16
  %i.q = add nsw i32 %.092109, 3                  ; 3 uses
  %i.r = getelementptr i8, ptr %i.m, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  %i.u = getelementptr inbounds [12 x i8], ptr %3, i64 %i.t ; 3 uses
  %i.v = sext i32 %i.p to i64                     ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %3, i64 %i.v ; 3 uses
  br i1 %.not.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !18
  %i.ab = fsub float %i.y, %i.aa
  %i.ac = load <2 x float>, ptr %i.u, align 4, !tbaa !18
  %i.ad = load <2 x float>, ptr %i.w, align 4, !tbaa !18
  %i.ae = fsub <2 x float> %i.ac, %i.ad
  store <2 x float> %i.ae, ptr %i.a, align 8, !tbaa !18
  store float %i.ab, ptr %i.e, align 8, !tbaa !18
  br i1 %9, label %bb.e, label %bb.d

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread: ; preds = %bb.b
  %i.af = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.u, ptr noundef %i.w, ptr noundef nonnull %i.a) ; 2 uses
  br i1 %9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread
  %i.ag = sext i32 %i.q to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16 ; 2 uses
  %i.aj = add nsw i32 %.092109, 5
  %i.ak = getelementptr i8, ptr %i.m, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !16 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [12 x i8], ptr %3, i64 %i.am
  %i.ao = sext i32 %i.ai to i64
  %i.ap = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ao
  %i.aq = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.an, ptr noundef %i.ap, ptr noundef nonnull %i.b)
  %.pre = load float, ptr %i.b, align 8, !tbaa !18
  %i.ar = load <2 x float>, ptr %i.f, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.as = sext i32 %i.q to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %1, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16 ; 2 uses
  %i.av = add nsw i32 %.092109, 5
  %i.aw = getelementptr i8, ptr %i.m, i64 16
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ay ; 2 uses
  %i.ba = sext i32 %i.au to i64
  %i.bb = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ba ; 2 uses
  %i.bc = load float, ptr %i.az, align 4, !tbaa !18
  %i.bd = load float, ptr %i.bb, align 4, !tbaa !18
  %i.be = fsub float %i.bc, %i.bd                 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = load <2 x float>, ptr %i.bf, align 4, !tbaa !18
  %i.bi = load <2 x float>, ptr %i.bg, align 4, !tbaa !18
  %i.bj = fsub <2 x float> %i.bh, %i.bi           ; 2 uses
  store float %i.be, ptr %i.b, align 8, !tbaa !18
  store <2 x float> %i.bj, ptr %i.f, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %.0.i102 = phi i32 [ %i.af, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread ], [ 22, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit ]
  store <2 x float> zeroinitializer, ptr %i.b, align 8, !tbaa !18
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97: ; preds = %bb.d, %bb.c, %bb.e
  %i.bk = phi float [ 0.000000e+00, %bb.e ], [ %.pre, %bb.c ], [ %i.be, %bb.d ] ; 6 uses
  %.0.i100 = phi i32 [ %.0.i102, %bb.e ], [ %i.af, %bb.c ], [ 22, %bb.d ]
  %.193 = phi i32 [ %i.q, %bb.e ], [ %i.aj, %bb.c ], [ %i.av, %bb.d ] ; 2 uses
  %.190 = phi i32 [ %.089110, %bb.e ], [ %i.ai, %bb.c ], [ %i.au, %bb.d ] ; 2 uses
  %.188 = phi i32 [ %.087111, %bb.e ], [ %i.al, %bb.c ], [ %i.ax, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.086112, %bb.e ], [ %i.aq, %bb.c ], [ 22, %bb.d ] ; 2 uses
  %i.bl = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.e ], [ %i.ar, %bb.c ], [ %i.bj, %bb.d ] ; 7 uses
  %i.bm = load float, ptr %i.a, align 8, !tbaa !18 ; 6 uses
  %i.bn = load <2 x float>, ptr %i.d, align 4, !tbaa !18 ; 7 uses
  %i.bo = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bk, i64 1
  %i.bq = fpext <2 x float> %i.bp to <2 x double> ; 4 uses
  %i.br = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bq, <2 x double> zeroinitializer)
  %i.bs = shufflevector <2 x float> %i.bn, <2 x float> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.bt = fpext <2 x float> %i.bs to <2 x double> ; 4 uses
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bt, <2 x double> %i.br)
  %i.bv = shufflevector <2 x float> %i.bn, <2 x float> %i.bl, <2 x i32> <i32 1, i32 3>
  %i.bw = fpext <2 x float> %i.bv to <2 x double> ; 4 uses
  %i.bx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.bw, <2 x double> %i.bu) ; 2 uses
  %shift = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bx, %shift
  %i.by = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bz = fcmp ogt double %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.f, label %_ZL9cos_anglePKfS0_.exit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97
  %i.ca = extractelement <2 x double> %i.bq, i64 0
  %i.cb = extractelement <2 x double> %i.bq, i64 1
  %i.cc = call double @llvm.fmuladd.f64(double %i.ca, double %i.cb, double 0.000000e+00)
  %i.cd = extractelement <2 x double> %i.bt, i64 0
  %i.ce = extractelement <2 x double> %i.bt, i64 1
  %i.cf = call double @llvm.fmuladd.f64(double %i.cd, double %i.ce, double %i.cc)
  %i.cg = extractelement <2 x double> %i.bw, i64 0
  %i.ch = extractelement <2 x double> %i.bw, i64 1
  %i.ci = call double @llvm.fmuladd.f64(double %i.cg, double %i.ch, double %i.cf)
  %i.cj = call nnan double @llvm.sqrt.f64(double %i.by)
  %i.ck = fdiv nnan double 1.000000e+00, %i.cj
  %i.cl = fmul double %i.ci, %i.ck
  %i.cm = fptrunc double %i.cl to float
  br label %_ZL9cos_anglePKfS0_.exit

_ZL9cos_anglePKfS0_.exit:                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97, %bb.f
  %.026.i = phi float [ %i.cm, %bb.f ], [ 1.000000e+00, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97 ] ; 3 uses
  %i.cn = fcmp ogt float %.026.i, 1.000000e+00
  %i.co = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.co, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.cn, float 1.000000e+00, float %..026.i ; 4 uses
  %i.cp = call noundef float @acosf(float noundef %.027.i) #23
  %i.cq = sext i32 %i.n to i64
  %i.cr = getelementptr inbounds [48 x i8], ptr %2, i64 %i.cq ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !15 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !15 ; 2 uses
  %i.cw = load float, ptr %i.cr, align 4, !tbaa !15 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !15 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !15
  %i.db = fmul float %7, %i.cy
  %i.dc = call float @llvm.fmuladd.f32(float %i.h, float %i.cw, float %i.db)
  %i.dd = fsub float %i.cy, %i.cw
  %i.de = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.dd, i64 1
  %i.dg = fpext <2 x float> %i.df to <2 x double>
  %i.dh = fmul <2 x double> %i.dg, splat (double f0x3F91DF46A2529D39)
  %i.di = fptrunc <2 x double> %i.dh to <2 x float> ; 2 uses
  %i.dj = fmul float %7, %i.cv
  %i.dk = call float @llvm.fmuladd.f32(float %i.h, float %i.ct, float %i.dj) ; 3 uses
  %i.dl = sitofp i32 %i.da to float               ; 2 uses
  %i.dm = extractelement <2 x float> %i.di, i64 0
  %i.dn = fsub float %i.cp, %i.dm
  %i.do = fmul float %i.dn, %i.dl                 ; 2 uses
  %i.dp = call noundef float @sinf(float noundef %i.do) #23 ; 2 uses
  %i.dq = call noundef float @cosf(float noundef %i.do) #23
  %i.dr = fsub float 1.000000e+00, %i.dq          ; 2 uses
  %i.ds = fmul float %i.dk, %i.dr
  %i.dt = fsub float %i.cv, %i.ct
  %i.du = extractelement <2 x float> %i.di, i64 1
  %i.dv = fmul float %i.dk, %i.du
  %i.dw = fmul float %i.dp, %i.dv
  %i.dx = call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.dr, float %i.dw)
  %i.dy = load float, ptr %8, align 4, !tbaa !18
  %i.dz = fadd float %i.dy, %i.dx
  store float %i.dz, ptr %8, align 4, !tbaa !18
  %i.ea = fadd float %.0113, %i.ds                ; 2 uses
  %i.eb = fmul float %.027.i, %.027.i             ; 2 uses
  %i.ec = fcmp olt float %i.eb, 1.000000e+00
  br i1 %i.ec, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZL9cos_anglePKfS0_.exit
  %i.ed = fmul float %i.dk, %i.dl
  %i.ee = fneg float %i.dp
  %i.ef = fmul float %i.ed, %i.ee
  %i.eg = fsub float 1.000000e+00, %i.eb
  %i.eh = call noundef float @sqrtf(float noundef %i.eg) #23
  %10 = extractelement <2 x float> %i.bn, i64 0   ; 2 uses
  %i.ei = fmul <2 x float> %i.bn, %i.bn
  %11 = extractelement <2 x float> %i.ei, i64 0
  %12 = call float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %11)
  %13 = extractelement <2 x float> %i.bn, i64 1   ; 4 uses
  %14 = call noundef float @llvm.fmuladd.f32(float %13, float %13, float %12) ; 2 uses
  %15 = extractelement <2 x float> %i.bl, i64 0   ; 2 uses
  %foldExtExtBinop132 = fmul <2 x float> %i.bl, %i.bl
  %i.ej = extractelement <2 x float> %foldExtExtBinop132, i64 0
  %16 = call float @llvm.fmuladd.f32(float %i.bk, float %i.bk, float %i.ej)
  %i.ek = extractelement <2 x float> %i.bl, i64 1 ; 4 uses
  %17 = call noundef float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %16) ; 2 uses
  %i.el = fmul float %14, %17
  %i.em = call float @llvm.sqrt.f32(float %i.el)
  %i.en = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.em, i64 1
  %i.ep = fdiv <2 x float> splat (float 1.000000e+00), %i.eo ; 2 uses
  %i.eq = extractelement <2 x float> %i.ep, i64 0
  %i.er = fmul float %i.ef, %i.eq                 ; 2 uses
  %i.es = fmul float %.027.i, %i.er               ; 2 uses
  %i.et = extractelement <2 x float> %i.ep, i64 1
  %i.eu = fmul float %i.et, %i.er                 ; 8 uses
  %i.ev = fdiv float %i.es, %14                   ; 6 uses
  %i.ew = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 6 uses
  %i.ex = getelementptr inbounds [16 x i8], ptr %4, i64 %i.t ; 5 uses
  br i1 %9, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.g
  %i.ey = sext i32 %.188 to i64                   ; 2 uses
  %i.ez = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ey ; 2 uses
  %i.fa = sext i32 %.190 to i64
  %i.fb = getelementptr inbounds [16 x i8], ptr %4, i64 %i.fa ; 3 uses
  %i.fc = fdiv float %i.es, %17                   ; 2 uses
  %i.fd = fneg float %i.bk
  %i.fe = fmul float %i.fc, %i.fd
  %i.ff = call float @llvm.fmuladd.f32(float %i.eu, float %i.bm, float %i.fe) ; 2 uses
  %i.fg = load <2 x float>, ptr %i.ew, align 4, !tbaa !18
  %i.fh = fneg float %i.bm
  %i.fi = fmul float %i.ev, %i.fh
  %i.fj = call float @llvm.fmuladd.f32(float %i.eu, float %i.bk, float %i.fi) ; 2 uses
  %i.fk = fneg float %10
  %i.fl = fmul float %i.ev, %i.fk
  %i.fm = call float @llvm.fmuladd.f32(float %i.eu, float %15, float %i.fl) ; 2 uses
  %i.fn = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %i.fm, i64 1 ; 2 uses
  %i.fp = fadd <2 x float> %i.fg, %i.fo
  store <2 x float> %i.fp, ptr %i.ew, align 4, !tbaa !18
  %i.fq = load <2 x float>, ptr %i.ex, align 4, !tbaa !18
  %i.fr = fsub <2 x float> %i.fq, %i.fo
  store <2 x float> %i.fr, ptr %i.ex, align 4, !tbaa !18
  %i.fs = fneg <2 x float> %i.bl
  %i.ft = fneg float %13
  %i.fu = fmul float %i.ev, %i.ft
  %i.fv = call float @llvm.fmuladd.f32(float %i.eu, float %i.ek, float %i.fu) ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !18
  %i.fy = fadd float %i.fx, %i.fv
  store float %i.fy, ptr %i.fw, align 4, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !18
  %i.gb = fsub float %i.ga, %i.fv
  store float %i.gb, ptr %i.fz, align 4, !tbaa !18
  %i.gc = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = fmul <2 x float> %i.gd, %i.fs
  %i.gf = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.bn, <2 x float> %i.ge) ; 3 uses
  %i.gi = load <2 x float>, ptr %i.fb, align 4, !tbaa !18
  %i.gj = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gk = insertelement <2 x float> %i.gj, float %i.ff, i64 0 ; 2 uses
  %i.gl = fadd <2 x float> %i.gk, %i.gi
  store <2 x float> %i.gl, ptr %i.fb, align 4, !tbaa !18
  %i.gm = load <2 x float>, ptr %i.ez, align 4, !tbaa !18
  %i.gn = fsub <2 x float> %i.gm, %i.gk
  store <2 x float> %i.gn, ptr %i.ez, align 4, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !18
  %i.gq = extractelement <2 x float> %i.gh, i64 1 ; 2 uses
  %i.gr = fadd float %i.gq, %i.gp
  store float %i.gr, ptr %i.go, align 4, !tbaa !18
  br label %.split108.us

.split.us.preheader:                              ; preds = %bb.g
  %i.gs = load <2 x float>, ptr %i.ew, align 4, !tbaa !18
  %i.gt = fneg float %i.bm
  %i.gu = fmul float %i.ev, %i.gt
  %i.gv = call float @llvm.fmuladd.f32(float %i.eu, float %i.bk, float %i.gu) ; 2 uses
  %i.gw = fneg float %10
  %i.gx = fmul float %i.ev, %i.gw
  %i.gy = call float @llvm.fmuladd.f32(float %i.eu, float %15, float %i.gx) ; 2 uses
  %i.gz = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.ha = insertelement <2 x float> %i.gz, float %i.gy, i64 1 ; 2 uses
  %i.hb = fadd <2 x float> %i.gs, %i.ha
  store <2 x float> %i.hb, ptr %i.ew, align 4, !tbaa !18
  %i.hc = load <2 x float>, ptr %i.ex, align 4, !tbaa !18
  %i.hd = fsub <2 x float> %i.hc, %i.ha
  store <2 x float> %i.hd, ptr %i.ex, align 4, !tbaa !18
  %i.he = fneg float %13
  %i.hf = fmul float %i.ev, %i.he
  %i.hg = call float @llvm.fmuladd.f32(float %i.eu, float %i.ek, float %i.hf) ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !18
  %i.hj = fadd float %i.hi, %i.hg
  store float %i.hj, ptr %i.hh, align 4, !tbaa !18
  br label %.split108.us

.split108.us:                                     ; preds = %.split.preheader, %.split.us.preheader
  %i.hk = phi i64 [ %i.ey, %.split.preheader ], [ %i.t, %.split.us.preheader ]
  %.sink126 = phi float [ %i.gq, %.split.preheader ], [ %i.hg, %.split.us.preheader ]
  %.sroa.8.0 = phi float [ %i.fv, %.split.preheader ], [ %i.hg, %.split.us.preheader ] ; 2 uses
  %.sroa.5118.0 = phi float [ %i.fm, %.split.preheader ], [ %i.gy, %.split.us.preheader ]
  %.sroa.0117.0 = phi float [ %i.fj, %.split.preheader ], [ %i.gv, %.split.us.preheader ]
  %.sroa.0.1 = phi float [ %i.ff, %.split.preheader ], [ %.sroa.0.0, %.split.us.preheader ] ; 3 uses
  %i.hl = phi <2 x float> [ %i.gh, %.split.preheader ], [ %i.k, %.split.us.preheader ] ; 4 uses
  %i.hm = getelementptr inbounds [16 x i8], ptr %4, i64 %i.hk
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !18
  %i.hp = fsub float %i.ho, %.sink126
  store float %i.hp, ptr %i.hn, align 4, !tbaa !18
  %i.hq = sext i32 %.0.i100 to i64
  %i.hr = getelementptr inbounds [12 x i8], ptr %5, i64 %i.hq ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !18
  %i.hu = fadd float %i.ht, %.sroa.8.0
  %i.hv = load <2 x float>, ptr %i.hr, align 4, !tbaa !18
  %i.hw = insertelement <2 x float> poison, float %.sroa.0117.0, i64 0
  %i.hx = insertelement <2 x float> %i.hw, float %.sroa.5118.0, i64 1 ; 2 uses
  %i.hy = fadd <2 x float> %i.hv, %i.hx
  store <2 x float> %i.hy, ptr %i.hr, align 4, !tbaa !18
  store float %i.hu, ptr %i.hs, align 4, !tbaa !18
  %i.hz = load float, ptr %i.j, align 4, !tbaa !18
  %i.ia = fsub float %i.hz, %.sroa.8.0
  %i.ib = load <2 x float>, ptr %i.i, align 4, !tbaa !18
  %i.ic = fsub <2 x float> %i.ib, %i.hx
  store <2 x float> %i.ic, ptr %i.i, align 4, !tbaa !18
  store float %i.ia, ptr %i.j, align 4, !tbaa !18
  br i1 %9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split108.us
  %i.id = sext i32 %.1 to i64
  %i.ie = getelementptr inbounds [12 x i8], ptr %5, i64 %i.id ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !18
  %i.ih = extractelement <2 x float> %i.hl, i64 1 ; 2 uses
  %i.ii = fadd float %i.ig, %i.ih
  %i.ij = load <2 x float>, ptr %i.ie, align 4, !tbaa !18
  %i.ik = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.il = insertelement <2 x float> %i.ik, float %.sroa.0.1, i64 0 ; 2 uses
  %i.im = fadd <2 x float> %i.ij, %i.il
  store <2 x float> %i.im, ptr %i.ie, align 4, !tbaa !18
  store float %i.ii, ptr %i.if, align 4, !tbaa !18
  %i.in = load float, ptr %i.j, align 4, !tbaa !18
  %i.io = fsub float %i.in, %i.ih
  %i.ip = load <2 x float>, ptr %i.i, align 4, !tbaa !18
  %i.iq = fsub <2 x float> %i.ip, %i.il
  store <2 x float> %i.iq, ptr %i.i, align 4, !tbaa !18
  store float %i.io, ptr %i.j, align 4, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %.split108.us, %bb.h, %_ZL9cos_anglePKfS0_.exit
  %.sroa.0.2 = phi float [ %.sroa.0.1, %.split108.us ], [ %.sroa.0.1, %bb.h ], [ %.sroa.0.0, %_ZL9cos_anglePKfS0_.exit ]
  %i.ir = phi <2 x float> [ %i.hl, %.split108.us ], [ %i.hl, %bb.h ], [ %i.k, %_ZL9cos_anglePKfS0_.exit ]
  %i.is = icmp slt i32 %.193, %0
  br i1 %i.is, label %bb.b, label %._crit_edge, !llvm.loop !170

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ea, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_Z10do_dih_fupIL18BondedKernelFlavor3EEviiiifPfS1_S1_S1_S1_PA4_fPA3_fPK5t_pbcPA3_Kfiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = load float, ptr %8, align 4, !tbaa !18   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !18 ; 3 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !18 ; 3 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e) ; 2 uses
  %i.i = load float, ptr %9, align 4, !tbaa !18   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !18 ; 3 uses
  %i.l = fmul float %i.k, %i.k
  %i.m = tail call float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !18 ; 3 uses
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.m) ; 2 uses
  %i.q = load float, ptr %6, align 4, !tbaa !18   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !18 ; 4 uses
  %i.t = fmul float %i.s, %i.s
  %i.u = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !18 ; 4 uses
  %i.x = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.u) ; 3 uses
  %i.y = fmul float %i.x, f0x34000000             ; 2 uses
  %i.z = fcmp ogt float %i.h, %i.y
  %i.aa = fcmp ogt float %i.p, %i.y
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt = tail call float @llvm.sqrt.f32(float %i.x)
  %i.ab = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.ac = fmul float %i.ab, %i.ab                 ; 2 uses
  %i.ad = fmul float %i.x, %i.ab                  ; 2 uses
  %i.ae = fneg float %4
  %i.af = fmul float %i.ad, %i.ae
  %i.ag = fdiv float %i.af, %i.h                  ; 3 uses
  %i.ah = fmul float %i.a, %i.ag                  ; 3 uses
  %i.ai = fmul float %i.c, %i.ag                  ; 3 uses
  %i.aj = fmul float %i.g, %i.ag                  ; 3 uses
  %i.ak = fmul float %4, %i.ad
  %i.al = fdiv float %i.ak, %i.p                  ; 3 uses
  %i.am = fmul float %i.i, %i.al                  ; 3 uses
  %i.an = fmul float %i.k, %i.al                  ; 3 uses
  %i.ao = fmul float %i.o, %i.al                  ; 3 uses
  %i.ap = load float, ptr %5, align 4, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !18
  %i.as = fmul float %i.s, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.q, float %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !18
  %i.aw = tail call noundef float @llvm.fmuladd.f32(float %i.av, float %i.w, float %i.at)
  %i.ax = fmul float %i.ac, %i.aw                 ; 3 uses
  %i.ay = load float, ptr %7, align 4, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !18
  %i.bb = fmul float %i.s, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.q, float %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !18
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.w, float %i.bc)
  %i.bg = fmul float %i.ac, %i.bf                 ; 3 uses
  %i.bh = fmul float %i.ah, %i.ax
  %i.bi = fmul float %i.ai, %i.ax
  %i.bj = fmul float %i.aj, %i.ax
  %i.bk = fmul float %i.am, %i.bg
  %i.bl = fmul float %i.an, %i.bg
  %i.bm = fmul float %i.ao, %i.bg
  %i.bn = fsub float %i.bh, %i.bk                 ; 2 uses
  %i.bo = fsub float %i.bi, %i.bl                 ; 2 uses
  %i.bp = fsub float %i.bj, %i.bm                 ; 2 uses
  %i.bq = fsub float %i.ah, %i.bn
  %i.br = fsub float %i.ai, %i.bo
  %i.bs = fsub float %i.aj, %i.bp
  %i.bt = fadd float %i.am, %i.bn
  %i.bu = fadd float %i.an, %i.bo
  %i.bv = fadd float %i.ao, %i.bp
  %i.bw = sext i32 %0 to i64
  %i.bx = getelementptr inbounds [16 x i8], ptr %10, i64 %i.bw ; 4 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !18
  %i.bz = fadd float %i.ah, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !18
  %i.cc = fadd float %i.ai, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !18
  %i.cf = fadd float %i.aj, %i.ce
  store float %i.bz, ptr %i.bx, align 4, !tbaa !18
  store float %i.cc, ptr %i.ca, align 4, !tbaa !18
  store float %i.cf, ptr %i.cd, align 4, !tbaa !18
  %i.cg = sext i32 %1 to i64
  %i.ch = getelementptr inbounds [16 x i8], ptr %10, i64 %i.cg ; 4 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !18
  %i.cj = fsub float %i.ci, %i.bq
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !18
  %i.cm = fsub float %i.cl, %i.br
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !18
  %i.cp = fsub float %i.co, %i.bs
  store float %i.cj, ptr %i.ch, align 4, !tbaa !18
  store float %i.cm, ptr %i.ck, align 4, !tbaa !18
  store float %i.cp, ptr %i.cn, align 4, !tbaa !18
  %i.cq = sext i32 %2 to i64
  %i.cr = getelementptr inbounds [16 x i8], ptr %10, i64 %i.cq ; 4 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !18
  %i.ct = fsub float %i.cs, %i.bt
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !18
  %i.cw = fsub float %i.cv, %i.bu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !18
  %i.cz = fsub float %i.cy, %i.bv
  store float %i.ct, ptr %i.cr, align 4, !tbaa !18
  store float %i.cw, ptr %i.cu, align 4, !tbaa !18
  store float %i.cz, ptr %i.cx, align 4, !tbaa !18
  %i.da = sext i32 %3 to i64
  %i.db = getelementptr inbounds [16 x i8], ptr %10, i64 %i.da ; 4 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !18
  %i.dd = fadd float %i.am, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !18
  %i.dg = fadd float %i.an, %i.df
end_hunk_8
begin_hunk_9_@_Z10do_dih_fupIL18BondedKernelFlavor3EEviiiifPfS1_S1_S1_S1_PA4_fPA3_fPK5t_pbcPA3_Kfiii:bb.a
  store float %i.dg, ptr %i.de, align 4, !tbaa !18
  store float %i.dj, ptr %i.dh, align 4, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor3EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef %4, float noundef %5, float noundef %6) unnamed_addr #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) ; 0 uses
  %i.c = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %.phi.trans.insert4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre5 = load float, ptr %.phi.trans.insert4, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load <2 x float>, ptr %0, align 4, !tbaa !18
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !18
  %i.f = fsub <2 x float> %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !18
  %i.k = fsub float %i.h, %i.j
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit: ; preds = %bb.b, %bb.c
  %i.l = phi float [ %.pre5, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  %i.m = phi <2 x float> [ %i.c, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 1   ; 3 uses
  %i.o = fmul float %i.n, %i.n
  %i.p = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  %i.q = call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.o)
  %i.r = call noundef float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.q)
  %sqrt = call float @llvm.sqrt.f32(float %i.r)
  %i.s = fdiv float 1.000000e+00, %sqrt           ; 3 uses
  %i.t = fdiv float %6, %i.s                      ; 3 uses
  %i.u = fpext float %5 to double
  %i.v = fmul double %i.u, f0x40615DEF44DEAD3D
  %i.w = fpext float %i.s to double               ; 2 uses
  %i.x = fmul double %i.v, %i.w
  %i.y = fptrunc double %i.x to float             ; 3 uses
  %i.z = fneg float %i.t
  %i.aa = call noundef float @expf(float noundef %i.z) #23
  %i.ab = fpext float %i.t to double
  %i.ac = call double @llvm.fmuladd.f64(double %i.ab, double 5.000000e-01, double 1.000000e+00)
  %i.ad = fpext float %i.aa to double             ; 2 uses
  %i.ae = fneg double %i.ac
  %i.af = call double @llvm.fmuladd.f64(double %i.ae, double %i.ad, double 1.000000e+00)
  %i.ag = fptrunc double %i.af to float           ; 2 uses
  %i.ah = fmul float %i.s, %i.y
  %i.ai = fmul float %i.ah, %i.ag
  %i.aj = fpext float %i.ai to double
  %i.ak = fpext float %i.y to double
  %i.al = fmul double %i.ak, 5.000000e-01
  %i.am = fpext float %6 to double
  %i.an = fmul double %i.al, %i.am
  %i.ao = fadd float %i.t, 1.000000e+00
  %i.ap = fpext float %i.ao to double
  %i.aq = fneg double %i.ad
  %i.ar = fmul double %i.an, %i.aq
  %i.as = call double @llvm.fmuladd.f64(double %i.ar, double %i.ap, double %i.aj)
  %i.at = fmul double %i.as, %i.w
  %i.au = fptrunc double %i.at to float           ; 3 uses
  %i.av = fmul float %i.p, %i.au                  ; 2 uses
  %i.aw = load float, ptr %2, align 4, !tbaa !18
  %i.ax = fadd float %i.aw, %i.av
  store float %i.ax, ptr %2, align 4, !tbaa !18
  %i.ay = load float, ptr %3, align 4, !tbaa !18
  %i.az = fsub float %i.ay, %i.av
  store float %i.az, ptr %3, align 4, !tbaa !18
  %i.ba = fmul float %i.n, %i.au                  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !18
  %i.bd = fadd float %i.bc, %i.ba
  store float %i.bd, ptr %i.bb, align 4, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !18
  %i.bg = fsub float %i.bf, %i.ba
  store float %i.bg, ptr %i.be, align 4, !tbaa !18
  %i.bh = fmul float %i.l, %i.au                  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !18
  %i.bk = fadd float %i.bj, %i.bh
  store float %i.bk, ptr %i.bi, align 4, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !18
  %i.bn = fsub float %i.bm, %i.bh
  store float %i.bn, ptr %i.bl, align 4, !tbaa !18
  %i.bo = fmul float %i.y, %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %i.bo
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZN12_GLOBAL__N_110low_angresIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfb(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, float noundef %6, ptr nofree noundef captures(none) %7, i1 noundef zeroext %8) unnamed_addr #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %5, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.f = fsub float 1.000000e+00, %6              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.06 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dv, %.loopexit ]
  %.0795 = phi i32 [ 0, %.lr.ph ], [ %.1, %.loopexit ]
  %.0804 = phi i32 [ 0, %.lr.ph ], [ %.181, %.loopexit ]
  %.0833 = phi i32 [ 0, %.lr.ph ], [ %.184, %.loopexit ] ; 4 uses
  %i.g = sext i32 %.0833 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = add nsw i32 %.0833, 3                    ; 3 uses
  %i.m = getelementptr i8, ptr %i.h, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds [12 x i8], ptr %3, i64 %i.o ; 3 uses
  %i.q = sext i32 %i.k to i64                     ; 2 uses
  %i.r = getelementptr inbounds [12 x i8], ptr %3, i64 %i.q ; 3 uses
  br i1 %.not.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !18
  %i.w = fsub float %i.t, %i.v
  %i.x = load <2 x float>, ptr %i.p, align 4, !tbaa !18
  %i.y = load <2 x float>, ptr %i.r, align 4, !tbaa !18
  %i.z = fsub <2 x float> %i.x, %i.y
  store <2 x float> %i.z, ptr %i.a, align 8, !tbaa !18
  store float %i.w, ptr %i.d, align 8, !tbaa !18
  br i1 %8, label %bb.e, label %bb.d

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread: ; preds = %bb.b
  %i.aa = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %5, ptr noundef %i.p, ptr noundef %i.r, ptr noundef nonnull %i.a) ; 0 uses
  br i1 %8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread
  %i.ab = sext i32 %i.l to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16 ; 2 uses
  %i.ae = add nsw i32 %.0833, 5
  %i.af = getelementptr i8, ptr %i.h, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ah
  %i.aj = sext i32 %i.ad to i64
  %i.ak = getelementptr inbounds [12 x i8], ptr %3, i64 %i.aj
  %i.al = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %5, ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef nonnull %i.b) ; 0 uses
  %i.am = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre11 = load float, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.an = sext i32 %i.l to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %1, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16 ; 2 uses
  %i.aq = add nsw i32 %.0833, 5
  %i.ar = getelementptr i8, ptr %i.h, i64 16
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [12 x i8], ptr %3, i64 %i.at ; 2 uses
  %i.av = sext i32 %i.ap to i64
  %i.aw = getelementptr inbounds [12 x i8], ptr %3, i64 %i.av ; 2 uses
  %i.ax = load <2 x float>, ptr %i.au, align 4, !tbaa !18
  %i.ay = load <2 x float>, ptr %i.aw, align 4, !tbaa !18
  %i.az = fsub <2 x float> %i.ax, %i.ay           ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !18
  %i.be = fsub float %i.bb, %i.bd                 ; 2 uses
  store <2 x float> %i.az, ptr %i.b, align 8, !tbaa !18
  store float %i.be, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  store <2 x float> zeroinitializer, ptr %i.b, align 8, !tbaa !18
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88: ; preds = %bb.d, %bb.c, %bb.e
  %i.bf = phi float [ 1.000000e+00, %bb.e ], [ %.pre11, %bb.c ], [ %i.be, %bb.d ] ; 6 uses
  %.184 = phi i32 [ %i.l, %bb.e ], [ %i.ae, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %.181 = phi i32 [ %.0804, %bb.e ], [ %i.ad, %bb.c ], [ %i.ap, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.0795, %bb.e ], [ %i.ag, %bb.c ], [ %i.as, %bb.d ] ; 2 uses
  %i.bg = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.am, %bb.c ], [ %i.az, %bb.d ] ; 5 uses
  %i.bh = load <2 x float>, ptr %i.a, align 8, !tbaa !18 ; 5 uses
  %i.bi = load float, ptr %i.d, align 8, !tbaa !18 ; 6 uses
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bk = fpext <2 x float> %i.bj to <2 x double> ; 4 uses
  %i.bl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bk, <2 x double> zeroinitializer)
  %i.bm = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.bn = fpext <2 x float> %i.bm to <2 x double> ; 4 uses
  %i.bo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bn, <2 x double> %i.bl)
  %i.bp = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bf, i64 1
  %i.br = fpext <2 x float> %i.bq to <2 x double> ; 4 uses
  %i.bs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.br, <2 x double> %i.bo) ; 2 uses
  %shift = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bs, %shift
  %i.bt = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bu = fcmp ogt double %i.bt, 0.000000e+00
  br i1 %i.bu, label %bb.f, label %_ZL9cos_anglePKfS0_.exit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88
  %i.bv = extractelement <2 x double> %i.bk, i64 0
  %i.bw = extractelement <2 x double> %i.bk, i64 1
  %i.bx = call double @llvm.fmuladd.f64(double %i.bv, double %i.bw, double 0.000000e+00)
  %i.by = extractelement <2 x double> %i.bn, i64 0
  %i.bz = extractelement <2 x double> %i.bn, i64 1
  %i.ca = call double @llvm.fmuladd.f64(double %i.by, double %i.bz, double %i.bx)
  %i.cb = extractelement <2 x double> %i.br, i64 0
  %i.cc = extractelement <2 x double> %i.br, i64 1
  %i.cd = call double @llvm.fmuladd.f64(double %i.cb, double %i.cc, double %i.ca)
  %i.ce = call nnan double @llvm.sqrt.f64(double %i.bt)
  %i.cf = fdiv nnan double 1.000000e+00, %i.ce
  %i.cg = fmul double %i.cd, %i.cf
  %i.ch = fptrunc double %i.cg to float
  br label %_ZL9cos_anglePKfS0_.exit

_ZL9cos_anglePKfS0_.exit:                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88, %bb.f
  %.026.i = phi float [ %i.ch, %bb.f ], [ 1.000000e+00, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ] ; 3 uses
  %i.ci = fcmp ogt float %.026.i, 1.000000e+00
  %i.cj = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.cj, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.ci, float 1.000000e+00, float %..026.i ; 4 uses
  %i.ck = call noundef float @acosf(float noundef %.027.i) #23
  %i.cl = sext i32 %i.i to i64
  %i.cm = getelementptr inbounds [48 x i8], ptr %2, i64 %i.cl ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !15 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !15 ; 2 uses
  %i.cr = load float, ptr %i.cm, align 4, !tbaa !15 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !15 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !15
  %i.cw = fmul float %6, %i.ct
  %i.cx = call float @llvm.fmuladd.f32(float %i.f, float %i.cr, float %i.cw)
  %i.cy = fsub float %i.ct, %i.cr
  %i.cz = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cy, i64 1
  %i.db = fpext <2 x float> %i.da to <2 x double>
  %i.dc = fmul <2 x double> %i.db, splat (double f0x3F91DF46A2529D39)
  %i.dd = fptrunc <2 x double> %i.dc to <2 x float> ; 2 uses
  %i.de = fmul float %6, %i.cq
  %i.df = call float @llvm.fmuladd.f32(float %i.f, float %i.co, float %i.de) ; 3 uses
  %i.dg = sitofp i32 %i.cv to float               ; 2 uses
  %i.dh = extractelement <2 x float> %i.dd, i64 0
  %i.di = fsub float %i.ck, %i.dh
  %i.dj = fmul float %i.di, %i.dg                 ; 2 uses
  %i.dk = call noundef float @sinf(float noundef %i.dj) #23 ; 2 uses
  %i.dl = call noundef float @cosf(float noundef %i.dj) #23
  %i.dm = fsub float 1.000000e+00, %i.dl          ; 2 uses
  %i.dn = fmul float %i.df, %i.dm
  %i.do = fsub float %i.cq, %i.co
  %i.dp = extractelement <2 x float> %i.dd, i64 1
  %i.dq = fmul float %i.df, %i.dp
  %i.dr = fmul float %i.dk, %i.dq
  %i.ds = call noundef float @llvm.fmuladd.f32(float %i.do, float %i.dm, float %i.dr)
  %i.dt = load float, ptr %7, align 4, !tbaa !18
  %i.du = fadd float %i.dt, %i.ds
  store float %i.du, ptr %7, align 4, !tbaa !18
  %i.dv = fadd float %.06, %i.dn                  ; 2 uses
  %i.dw = fmul float %.027.i, %.027.i             ; 2 uses
  %i.dx = fcmp olt float %i.dw, 1.000000e+00
  br i1 %i.dx, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZL9cos_anglePKfS0_.exit
  %i.dy = fmul float %i.df, %i.dg
  %i.dz = fneg float %i.dk
  %i.ea = fmul float %i.dy, %i.dz
  %i.eb = fsub float 1.000000e+00, %i.dw
  %i.ec = call noundef float @sqrtf(float noundef %i.eb) #23
  %i.ed = fmul <2 x float> %i.bm, %i.bm
  %i.ee = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bj, <2 x float> %i.ed) ; 2 uses
  %9 = extractelement <2 x float> %i.ee, i64 0
  %10 = call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %9) ; 2 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 1
  %11 = call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.ef) ; 2 uses
  %i.eg = fmul float %10, %11
  %i.eh = call float @llvm.sqrt.f32(float %i.eg)
  %i.ei = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.eh, i64 1
  %i.ek = fdiv <2 x float> splat (float 1.000000e+00), %i.ej ; 2 uses
  %i.el = extractelement <2 x float> %i.ek, i64 0
  %i.em = fmul float %i.ea, %i.el                 ; 2 uses
  %i.en = fmul float %.027.i, %i.em               ; 2 uses
  %i.eo = extractelement <2 x float> %i.ek, i64 1
  %i.ep = fmul float %i.eo, %i.em                 ; 5 uses
  %i.eq = fdiv float %i.en, %10                   ; 4 uses
  %i.er = getelementptr inbounds [16 x i8], ptr %4, i64 %i.q ; 6 uses
  %i.es = getelementptr inbounds [16 x i8], ptr %4, i64 %i.o ; 5 uses
  br i1 %8, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.g
  %i.et = sext i32 %.1 to i64                     ; 2 uses
  %i.eu = getelementptr inbounds [16 x i8], ptr %4, i64 %i.et ; 2 uses
  %i.ev = sext i32 %.181 to i64
  %i.ew = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ev ; 3 uses
  %i.ex = fdiv float %i.en, %11                   ; 2 uses
  %i.ey = fneg <2 x float> %i.bh
  %i.ez = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.fa, %i.ey
  %i.fc = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.bg, <2 x float> %i.fb) ; 2 uses
  %i.ff = load <2 x float>, ptr %i.er, align 4, !tbaa !18
  %i.fg = fadd <2 x float> %i.ff, %i.fe
  store <2 x float> %i.fg, ptr %i.er, align 4, !tbaa !18
  %i.fh = load <2 x float>, ptr %i.es, align 4, !tbaa !18
  %i.fi = fsub <2 x float> %i.fh, %i.fe
  store <2 x float> %i.fi, ptr %i.es, align 4, !tbaa !18
  %i.fj = fneg <2 x float> %i.bg
  %i.fk = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fl, %i.fj
  %i.fn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.bh, <2 x float> %i.fm) ; 2 uses
  %i.fo = load <2 x float>, ptr %i.ew, align 4, !tbaa !18
  %i.fp = fadd <2 x float> %i.fn, %i.fo
  store <2 x float> %i.fp, ptr %i.ew, align 4, !tbaa !18
  %i.fq = load <2 x float>, ptr %i.eu, align 4, !tbaa !18
  %i.fr = fsub <2 x float> %i.fq, %i.fn
  store <2 x float> %i.fr, ptr %i.eu, align 4, !tbaa !18
  %i.fs = fneg float %i.bi
  %i.ft = fmul float %i.eq, %i.fs
  %i.fu = call float @llvm.fmuladd.f32(float %i.ep, float %i.bf, float %i.ft) ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !18
  %i.fx = fadd float %i.fw, %i.fu
  store float %i.fx, ptr %i.fv, align 4, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !18
  %i.ga = fsub float %i.fz, %i.fu
  store float %i.ga, ptr %i.fy, align 4, !tbaa !18
  %i.gb = fneg float %i.bf
  %i.gc = fmul float %i.ex, %i.gb
  %i.gd = call float @llvm.fmuladd.f32(float %i.ep, float %i.bi, float %i.gc) ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !18
  %i.gg = fadd float %i.gd, %i.gf
  store float %i.gg, ptr %i.ge, align 4, !tbaa !18
  br label %.loopexit.sink.split

.split.us.preheader:                              ; preds = %bb.g
  %i.gh = fneg <2 x float> %i.bh
  %i.gi = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = fmul <2 x float> %i.gj, %i.gh
  %i.gl = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.bg, <2 x float> %i.gk) ; 2 uses
  %i.go = load <2 x float>, ptr %i.er, align 4, !tbaa !18
  %i.gp = fadd <2 x float> %i.go, %i.gn
  store <2 x float> %i.gp, ptr %i.er, align 4, !tbaa !18
  %i.gq = load <2 x float>, ptr %i.es, align 4, !tbaa !18
  %i.gr = fsub <2 x float> %i.gq, %i.gn
  store <2 x float> %i.gr, ptr %i.es, align 4, !tbaa !18
  %i.gs = fneg float %i.bi
  %i.gt = fmul float %i.eq, %i.gs
  %i.gu = call float @llvm.fmuladd.f32(float %i.ep, float %i.bf, float %i.gt) ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !18
  %i.gx = fadd float %i.gw, %i.gu
  store float %i.gx, ptr %i.gv, align 4, !tbaa !18
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.split.us.preheader, %.split.preheader
  %i.gy = phi i64 [ %i.et, %.split.preheader ], [ %i.o, %.split.us.preheader ]
  %.sink17 = phi float [ %i.gd, %.split.preheader ], [ %i.gu, %.split.us.preheader ]
  %i.gz = getelementptr inbounds [16 x i8], ptr %4, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !18
  %i.hc = fsub float %i.hb, %.sink17
  store float %i.hc, ptr %i.ha, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %_ZL9cos_anglePKfS0_.exit
  %i.hd = icmp slt i32 %.184, %0
  br i1 %i.hd, label %bb.b, label %._crit_edge, !llvm.loop !171

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dv, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_Z9nrnbIndexi(i32 noundef %0) local_unnamed_addr #20 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @_ZN12_GLOBAL__N_128c_bondedInteractionFunctionsIL18BondedKernelFlavor2EEE, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !172
  ret i32 %i.d
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_bonded.cpp() #21 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 16), ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 33, ptr %i.d, align 8, !tbaa !25
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_Z27c_bondedKernelFlavorStringsB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, align 8, !tbaa !14
  %i.f = load i64, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 16), align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.e, ptr noundef nonnull align 1 dereferenceable(33) @.str, i64 33, i1 false)
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 8), align 8, !tbaa !26
  %i.g = load ptr, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  store ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 32), align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 22, ptr %i.c, align 8, !tbaa !25
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 32), ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc15.i unwind label %bb.b ; 2 uses

.noexc15.i:                                       ; preds = %bb.a
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 32), align 8, !tbaa !14
  %i.j = load i64, ptr %i.c, align 8, !tbaa !25   ; 3 uses
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 48), align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.i, ptr noundef nonnull align 1 dereferenceable(22) @.str.1, i64 22, i1 false)
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 40), align 8, !tbaa !26
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 32), align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  store ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 64), align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 47, ptr %i.b, align 8, !tbaa !25
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 64), ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc19.i unwind label %bb.c ; 2 uses

.noexc19.i:                                       ; preds = %.noexc15.i
  store ptr %i.m, ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 64), align 8, !tbaa !14
  %i.n = load i64, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 80), align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.m, ptr noundef nonnull align 1 dereferenceable(47) @.str.2, i64 47, i1 false)
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 72), align 8, !tbaa !26
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 64), align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 0, ptr %i.p, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  store ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 96), align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 38, ptr %i.a, align 8, !tbaa !25
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 96), ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %__cxx_global_var_init.exit unwind label %bb.d ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.c:                                             ; preds = %.noexc15.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %.noexc19.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.29.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 64), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 32), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 96), %bb.d ]
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.r, %bb.b ], [ %i.t, %bb.d ]
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.e
  %i.u = phi ptr [ %.29.i, %bb.e ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14   ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.x, align 8, !tbaa !15
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ab = icmp eq ptr %i.v, @_Z27c_bondedKernelFlavorStringsB5cxx11
  br i1 %i.ab, label %bb.g, label %bb.f

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  resume { ptr, i32 } %.pn.pn.pn.i

__cxx_global_var_init.exit:                       ; preds = %.noexc19.i
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 96), align 8, !tbaa !14
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !25  ; 3 uses
  store i64 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 112), align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.q, ptr noundef nonnull align 1 dereferenceable(38) @.str.3, i64 38, i1 false)
  store i64 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 104), align 8, !tbaa !26
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Z27c_bondedKernelFlavorStringsB5cxx11, i64 96), align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.af = call i32 @__cxa_atexit(ptr nonnull @_ZN3gmx16EnumerationArrayI18BondedKernelFlavorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_4EED2Ev, ptr nonnull @_Z27c_bondedKernelFlavorStringsB5cxx11, ptr nonnull @__dso_handle) #23 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #7

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !12, i64 8, !5, i64 16}
!14 = !{!13, !10, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!"float", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 float", !9, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"_ZTSN12_GLOBAL__N_118BondedInteractionsE", !9, i64 0, !6, i64 8}
!24 = !{!11, !10, i64 0}
!25 = !{!12, !12, i64 0}
!26 = !{!13, !12, i64 8}
!27 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !9, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"p1 _ZTS13bondedtable_t", !9, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseI13bondedtable_tSaIS0_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!30, !29, i64 0}
!32 = !{!"double", !5, i64 0}
!33 = !{!32, !32, i64 0}
!34 = distinct !{!34, !22}
!35 = !{!"p1 _ZTS14gmx_cmapdata_t", !9, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!36, !35, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE12_Vector_implE", !36, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorI14gmx_cmapdata_tSaIS0_EE", !39, i64 0}
!41 = !{!"_ZTS10gmx_cmap_t", !6, i64 0, !40, i64 8}
!42 = !{!41, !6, i64 0}
!43 = !{!23, !9, i64 0}
!44 = !{!"_ZTSN3gmx12ArrayRefIterIKfEE", !19, i64 0}
!45 = !{!44, !19, i64 0}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{!56, !22}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = distinct !{!59, !22}
!60 = distinct !{!60, !22}
!61 = distinct !{!61, !22}
!62 = distinct !{!62, !22}
!63 = distinct !{!63, !22}
!64 = distinct !{!64, !22}
!65 = distinct !{!65, !22}
!66 = distinct !{!66, !22}
!67 = distinct !{!67, !22}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !22}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, !22}
!74 = distinct !{!74, !22}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = distinct !{!78, !22}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22}
!82 = distinct !{!82, !22}
!83 = distinct !{!83, !22}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22}
!86 = distinct !{!86, !22}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !22}
!89 = distinct !{!89, !22}
!90 = distinct !{!90, !22}
!91 = distinct !{!91, !22}
!92 = distinct !{!92, !22}
!93 = distinct !{!93, !22}
!94 = distinct !{!94, !22}
!95 = distinct !{!95, !22}
!96 = distinct !{!96, !22}
!97 = distinct !{!97, !22}
!98 = distinct !{!98, !22}
!99 = distinct !{!99, !22}
!100 = distinct !{!100, !22}
!101 = distinct !{!101, !22}
!102 = distinct !{!102, !22}
!103 = distinct !{!103, !22}
!104 = distinct !{!104, !22}
!105 = distinct !{!105, !22}
!106 = distinct !{!106, !22}
!107 = distinct !{!107, !22}
!108 = distinct !{!108, !22}
!109 = distinct !{!109, !22}
!110 = distinct !{!110, !22}
!111 = distinct !{!111, !22}
!112 = distinct !{!112, !22}
!113 = distinct !{!113, !22}
!114 = distinct !{!114, !22}
!115 = distinct !{!115, !22}
!116 = distinct !{!116, !22}
!117 = distinct !{!117, !22}
!118 = distinct !{!118, !22}
!119 = distinct !{!119, !22}
!120 = distinct !{!120, !22}
!121 = distinct !{!121, !22}
!122 = distinct !{!122, !22}
!123 = distinct !{!123, !22}
!124 = distinct !{!124, !22}
!125 = distinct !{!125, !22}
!126 = distinct !{!126, !22}
!127 = distinct !{!127, !22}
!128 = distinct !{!128, !22}
!129 = distinct !{!129, !22}
!130 = distinct !{!130, !22}
!131 = distinct !{!131, !22}
!132 = distinct !{!132, !22}
!133 = distinct !{!133, !22}
!134 = distinct !{!134, !22}
!135 = distinct !{!135, !22}
!136 = distinct !{!136, !22}
!137 = distinct !{!137, !22}
!138 = distinct !{!138, !22}
!139 = distinct !{!139, !22}
!140 = distinct !{!140, !22}
!141 = distinct !{!141, !22}
!142 = distinct !{!142, !22}
!143 = distinct !{!143, !22}
!144 = distinct !{!144, !22}
!145 = distinct !{!145, !22}
!146 = distinct !{!146, !22}
!147 = distinct !{!147, !22}
!148 = distinct !{!148, !22}
!149 = distinct !{!149, !22}
!150 = distinct !{!150, !22}
!151 = distinct !{!151, !22}
end_hunk_9
