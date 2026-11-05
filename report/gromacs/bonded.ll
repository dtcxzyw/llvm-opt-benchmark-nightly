Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/bonded?download=true
inline.NumInlined: 1758
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumUnrolled: 100
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.gmx::EnumerationArray" = type { [4 x %"class.std::__cxx11::basic_string"] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
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
  %9 = fmul double %i.x, %i.x
  %10 = fmul double %i.z, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !18
  %i.ac = fpext float %i.ab to double             ; 3 uses
  %i.ad = extractelement <2 x float> %i.v, i64 1
  %i.ae = fpext float %i.ad to double             ; 3 uses
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %9)
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %10)
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !18
  %i.aj = fpext float %i.ai to double             ; 3 uses
  %i.ak = fpext float %i.u to double              ; 3 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %i.af)
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %i.ag)
  %i.an = fmul double %i.al, %i.am                ; 2 uses
  %i.ao = fcmp ogt double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.d, label %_ZL9cos_anglePKfS0_.exit

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit17
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.x, double %i.z, double 0.000000e+00)
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ae, double %i.ap)
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.ak, double %i.aq)
  %sqrt = tail call nnan double @llvm.sqrt.f64(double %i.an)
  %i.as = fdiv nnan double 1.000000e+00, %sqrt
  %i.at = fmul double %i.ar, %i.as
  %i.au = fptrunc double %i.at to float
  br label %_ZL9cos_anglePKfS0_.exit

_ZL9cos_anglePKfS0_.exit:                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit17, %bb.d
  %.026.i = phi float [ %i.au, %bb.d ], [ 1.000000e+00, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit17 ] ; 3 uses
  %i.av = fcmp ogt float %.026.i, 1.000000e+00
  %i.aw = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.aw, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.av, float 1.000000e+00, float %..026.i ; 2 uses
  store float %.027.i, ptr %6, align 4, !tbaa !18
  %i.ax = tail call noundef float @acosf(float noundef %.027.i) #23
  ret float %i.ax
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
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_111restranglesIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.aq = fsub float %i.ap, %i.af
  %i.ar = load <2 x float>, ptr %i.an, align 4, !tbaa !18
  %i.as = fsub <2 x float> %i.ar, %i.ai
  store <2 x float> %i.as, ptr %i.f, align 8, !tbaa !18
  store float %i.aq, ptr %i.k, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61: ; preds = %bb.c, %bb.d
  %i.at = phi i64 [ %i.z, %bb.c ], [ %i.am, %bb.d ]
  call void @_Z26compute_factors_restanglesiPK9t_iparamsPfS2_PdS3_S3_S2_(i32 noundef %i.m, ptr noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.au = load double, ptr %i.b, align 8, !tbaa !33 ; 4 uses
  %i.av = load double, ptr %i.c, align 8, !tbaa !33 ; 3 uses
  %i.aw = load double, ptr %i.d, align 8, !tbaa !33 ; 2 uses
  %i.ax = fneg double %i.aw                       ; 2 uses
  %i.ay = load float, ptr %i.j, align 8, !tbaa !18
  %i.az = fpext float %i.ay to double             ; 3 uses
  %i.ba = load float, ptr %i.k, align 8, !tbaa !18
  %i.bb = fpext float %i.ba to double             ; 3 uses
  %i.bc = fneg double %i.bb
  %i.bd = call double @llvm.fmuladd.f64(double %i.av, double %i.az, double %i.bc)
  %i.be = fmul double %i.au, %i.bd
  %i.bf = fptrunc double %i.be to float
  %i.bg = fneg double %i.az
  %i.bh = call double @llvm.fmuladd.f64(double %i.ax, double %i.bb, double %i.az)
  %i.bi = fmul double %i.au, %i.bh
  %i.bj = fptrunc double %i.bi to float
  %i.bk = load float, ptr %i.a, align 4, !tbaa !18
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.t ; 3 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 3 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %4, i64 %i.at ; 3 uses
  %i.bo = load <2 x float>, ptr %i.f, align 8, !tbaa !18
  %i.bp = fpext <2 x float> %i.bo to <2 x double> ; 3 uses
  %i.bq = load <2 x float>, ptr %i.e, align 8, !tbaa !18
  %i.br = fpext <2 x float> %i.bq to <2 x double> ; 3 uses
  %i.bs = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bp, <2 x double> %i.br)
  %i.bv = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bx = fmul <2 x double> %i.bw, %i.bu
  %i.by = fptrunc <2 x double> %i.bx to <2 x float>
  %i.bz = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.ca = fneg <2 x double> %i.bp
  %i.cb = insertelement <2 x double> poison, double %i.av, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.br, <2 x double> %i.ca)
  %i.ce = fmul <2 x double> %i.bw, %i.cd
  %i.cf = fptrunc <2 x double> %i.ce to <2 x float>
  %i.cg = fadd <2 x float> %i.bz, %i.cf
  store <2 x float> %i.cg, ptr %i.bl, align 4, !tbaa !18
  %i.ch = fadd double %i.aw, 1.000000e+00         ; 2 uses
  %i.ci = fadd double %i.av, 1.000000e+00         ; 2 uses
  %i.cj = fmul double %i.ci, %i.bg
  %i.ck = call double @llvm.fmuladd.f64(double %i.ch, double %i.bb, double %i.cj)
  %i.cl = fmul double %i.au, %i.ck
  %i.cm = fptrunc double %i.cl to float
  %i.cn = fneg <2 x double> %i.br
  %i.co = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.cp, %i.cn
  %i.cr = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.bp, <2 x double> %i.cq)
  %i.cu = fmul <2 x double> %i.bw, %i.ct
  %i.cv = fptrunc <2 x double> %i.cu to <2 x float>
  %i.cw = load <2 x float>, ptr %i.bm, align 4, !tbaa !18
  %i.cx = fadd <2 x float> %i.cw, %i.cv
  store <2 x float> %i.cx, ptr %i.bm, align 4, !tbaa !18
  %i.cy = load <2 x float>, ptr %i.bn, align 4, !tbaa !18
  %i.cz = fadd <2 x float> %i.cy, %i.by
  store <2 x float> %i.cz, ptr %i.bn, align 4, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !18
  %i.dc = fadd float %i.db, %i.bf
  store float %i.dc, ptr %i.da, align 4, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !18
  %i.df = fadd float %i.de, %i.cm
  store float %i.df, ptr %i.dd, align 4, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !18
  %i.di = fadd float %i.dh, %i.bj
  store float %i.di, ptr %i.dg, align 4, !tbaa !18
  %i.dj = fadd float %.065, %i.bk                 ; 2 uses
  %i.dk = trunc nuw i64 %indvars.iv.next to i32
  %i.dl = icmp sgt i32 %0, %i.dk
  br i1 %i.dl, label %bb.b, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dj, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_113linear_anglesIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = fsub float 1.000000e+00, %7              ; 2 uses
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ] ; 2 uses
  %.092 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dv, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16
  %i.i = getelementptr i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16   ; 2 uses
  %i.o = sext i32 %i.h to i64
  %i.p = getelementptr inbounds [48 x i8], ptr %2, i64 %i.o ; 4 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !15 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !15 ; 2 uses
  %i.t = fmul float %7, %i.s
  %i.u = call float @llvm.fmuladd.f32(float %i.c, float %i.q, float %i.t) ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !15 ; 2 uses
  %i.z = fmul float %7, %i.y
  %i.aa = call float @llvm.fmuladd.f32(float %i.c, float %i.w, float %i.z) ; 3 uses
  %i.ab = fsub float 1.000000e+00, %i.aa          ; 3 uses
  %i.ac = sext i32 %i.j to i64                    ; 2 uses
  %i.ad = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ac ; 3 uses
  %i.ae = sext i32 %i.l to i64                    ; 2 uses
  %i.af = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ae ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ad, ptr noundef %i.af, ptr noundef nonnull %i.a) ; 0 uses
  %i.ah = sext i32 %i.n to i64                    ; 2 uses
  %i.ai = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ah
  %i.aj = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ai, ptr noundef %i.af, ptr noundef nonnull %i.b) ; 0 uses
  %i.ak = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %i.al = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre99 = load float, ptr %i.e, align 8, !tbaa !18
  %.pre100 = load float, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

bb.d:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18 ; 2 uses
  %i.aq = fsub float %i.an, %i.ap                 ; 2 uses
  store float %i.aq, ptr %i.e, align 8, !tbaa !18
  %i.ar = sext i32 %i.n to i64                    ; 2 uses
  %i.as = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ar ; 2 uses
  %i.at = load <2 x float>, ptr %i.ad, align 4, !tbaa !18
  %i.au = load <2 x float>, ptr %i.af, align 4, !tbaa !18 ; 2 uses
  %i.av = fsub <2 x float> %i.at, %i.au           ; 2 uses
  store <2 x float> %i.av, ptr %i.a, align 8, !tbaa !18
  %i.aw = load <2 x float>, ptr %i.as, align 4, !tbaa !18
  %i.ax = fsub <2 x float> %i.aw, %i.au           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !18
  %i.ba = fsub float %i.az, %i.ap                 ; 2 uses
  store <2 x float> %i.ax, ptr %i.b, align 8, !tbaa !18
  store float %i.ba, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88: ; preds = %bb.c, %bb.d
  %i.bb = phi float [ %.pre100, %bb.c ], [ %i.ba, %bb.d ] ; 2 uses
  %i.bc = phi float [ %.pre99, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %i.bd = phi i64 [ %i.ah, %bb.c ], [ %i.ar, %bb.d ]
  %i.be = phi <2 x float> [ %i.ak, %bb.c ], [ %i.av, %bb.d ] ; 3 uses
  %i.bf = phi <2 x float> [ %i.al, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.bg = fneg float %i.aa                        ; 2 uses
  %i.bh = fmul float %i.u, %i.aa                  ; 2 uses
  %i.bi = fmul float %i.u, %i.ab                  ; 2 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ac ; 3 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ae ; 3 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bd ; 3 uses
  %i.bm = fneg <2 x float> %i.bf
  %i.bn = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bo, %i.bm
  %i.bq = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.be, <2 x float> %i.bp) ; 7 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.bs, %i.bs
  %14 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bu = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.bv, %i.bs           ; 2 uses
  %i.bx = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.by = call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %14)
  %i.bz = load <2 x float>, ptr %i.bj, align 4, !tbaa !18
  %i.ca = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x float> %i.cb, %i.bs           ; 2 uses
  %i.cd = fadd <2 x float> %i.bz, %i.cc
  store <2 x float> %i.cd, ptr %i.bj, align 4, !tbaa !18
  %i.ce = fadd <2 x float> %i.cc, %i.bw
  %i.cf = load <2 x float>, ptr %i.bk, align 4, !tbaa !18
  %i.cg = fsub <2 x float> %i.cf, %i.ce
  store <2 x float> %i.cg, ptr %i.bk, align 4, !tbaa !18
  %i.ch = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.ci = fadd <2 x float> %i.bw, %i.ch
  store <2 x float> %i.ci, ptr %i.bl, align 4, !tbaa !18
  %i.cj = fneg float %i.bb
  %i.ck = fmul float %i.ab, %i.cj
  %i.cl = call float @llvm.fmuladd.f32(float %i.bg, float %i.bc, float %i.ck) ; 5 uses
  %i.cm = call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.by)
  %i.cn = fmul float %i.bh, %i.cl                 ; 2 uses
  %i.co = fmul float %i.bi, %i.cl                 ; 2 uses
  %i.cp = fadd float %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !18
  %i.cs = fadd float %i.cr, %i.cn
  store float %i.cs, ptr %i.cq, align 4, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !18
  %i.cv = fsub float %i.cu, %i.cp
  store float %i.cv, ptr %i.ct, align 4, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !18
  %i.cy = fadd float %i.co, %i.cx
  store float %i.cy, ptr %i.cw, align 4, !tbaa !18
  %foldExtExtBinop.a = fsub <2 x float> %i.be, %i.bf
  %i.cz = extractelement <2 x float> %foldExtExtBinop.a, i64 0
  %foldExtExtBinop103 = fsub <2 x float> %i.be, %i.bf
  %i.da = fsub float %i.bc, %i.bb
  %i.db = fpext float %i.u to double
  %i.dc = fmul double %i.db, 5.000000e-01
  %i.dd = fpext float %i.cm to double             ; 2 uses
  %i.de = fmul double %i.dc, %i.dd
  %i.df = fptrunc double %i.de to float
  %i.dg = fsub float %i.s, %i.q
  %i.dh = fpext float %i.dg to double
  %i.di = fmul double %i.dh, 5.000000e-01
  %i.dj = fsub float %i.y, %i.w
  %i.dk = fmul float %i.u, %i.dj
  %foldExtExtBinop105 = fmul <2 x float> %foldExtExtBinop103, %i.bs
  %i.dl = extractelement <2 x float> %foldExtExtBinop105, i64 1
  %i.dm = call float @llvm.fmuladd.f32(float %i.bt, float %i.cz, float %i.dl)
  %i.dn = call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.da, float %i.dm)
  %i.do = fmul float %i.dk, %i.dn
  %i.dp = fpext float %i.do to double
  %i.dq = call double @llvm.fmuladd.f64(double %i.di, double %i.dd, double %i.dp)
  %i.dr = load float, ptr %8, align 4, !tbaa !18
  %i.ds = fpext float %i.dr to double
  %i.dt = fadd double %i.dq, %i.ds
  %i.du = fptrunc double %i.dt to float
  store float %i.du, ptr %8, align 4, !tbaa !18
  %i.dv = fadd float %.092, %i.df                 ; 2 uses
  %i.dw = trunc nuw i64 %indvars.iv.next to i32
  %i.dx = icmp sgt i32 %0, %i.dw
  br i1 %i.dx, label %bb.b, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dv, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_115cross_bond_bondIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62 ] ; 2 uses
  %.066 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.da, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62 ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr i8, ptr %i.f, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16   ; 2 uses
  %i.n = sext i32 %i.g to i64
  %i.o = getelementptr inbounds [48 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.p = load <2 x float>, ptr %i.o, align 4, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !15 ; 2 uses
  %i.s = sext i32 %i.i to i64                     ; 2 uses
  %i.t = getelementptr inbounds [12 x i8], ptr %3, i64 %i.s ; 3 uses
  %i.u = sext i32 %i.k to i64                     ; 2 uses
  %i.v = getelementptr inbounds [12 x i8], ptr %3, i64 %i.u ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.t, ptr noundef %i.v, ptr noundef nonnull %i.a) ; 0 uses
  %i.x = sext i32 %i.m to i64                     ; 2 uses
  %i.y = getelementptr inbounds [12 x i8], ptr %3, i64 %i.x
  %i.z = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.y, ptr noundef %i.v, ptr noundef nonnull %i.b) ; 0 uses
  %i.aa = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %.pre73 = load float, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre76 = load float, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %.pre73, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %.pre76, i64 1
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62

bb.d:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !18
  %i.ai = sext i32 %i.m to i64                    ; 2 uses
  %i.aj = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ai ; 2 uses
  %i.ak = load <2 x float>, ptr %i.v, align 4, !tbaa !18 ; 2 uses
  %i.al = load <2 x float>, ptr %i.t, align 4, !tbaa !18
  %i.am = fsub <2 x float> %i.al, %i.ak           ; 2 uses
  store <2 x float> %i.am, ptr %i.a, align 8, !tbaa !18
  %i.an = load <2 x float>, ptr %i.aj, align 4, !tbaa !18
  %i.ao = fsub <2 x float> %i.an, %i.ak           ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !18
  %i.ar = insertelement <2 x float> poison, float %i.af, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.aq, i64 1
  %i.at = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fsub <2 x float> %i.as, %i.au           ; 3 uses
  %i.aw = extractelement <2 x float> %i.av, i64 1 ; 2 uses
  %i.ax = extractelement <2 x float> %i.av, i64 0 ; 2 uses
  store float %i.ax, ptr %i.d, align 8, !tbaa !18
  store <2 x float> %i.ao, ptr %i.b, align 8, !tbaa !18
  store float %i.aw, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62: ; preds = %bb.c, %bb.d
  %i.ay = phi float [ %.pre76, %bb.c ], [ %i.aw, %bb.d ]
  %i.az = phi float [ %.pre73, %bb.c ], [ %i.ax, %bb.d ]
  %i.ba = phi i64 [ %i.x, %bb.c ], [ %i.ai, %bb.d ]
  %i.bb = phi <2 x float> [ %i.ab, %bb.c ], [ %i.ao, %bb.d ] ; 3 uses
  %i.bc = phi <2 x float> [ %i.aa, %bb.c ], [ %i.am, %bb.d ] ; 3 uses
  %i.bd = phi <2 x float> [ %i.ad, %bb.c ], [ %i.av, %bb.d ] ; 2 uses
  %i.be = shufflevector <2 x float> %i.bc, <2 x float> %i.bb, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bf = fmul <2 x float> %i.be, %i.be
  %i.bg = shufflevector <2 x float> %i.bc, <2 x float> %i.bb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bg, <2 x float> %i.bf)
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bd, <2 x float> %i.bh)
  %i.bj = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bi) ; 3 uses
  %i.bk = fsub <2 x float> %i.bj, %i.p            ; 2 uses
  %i.bl = fneg float %i.r                         ; 2 uses
  %i.bm = extractelement <2 x float> %i.bk, i64 1 ; 2 uses
  %i.bn = fmul float %i.bm, %i.bl
  %i.bo = extractelement <2 x float> %i.bj, i64 0
  %i.bp = fdiv float %i.bn, %i.bo                 ; 2 uses
  %i.bq = fmul float %i.az, %i.bp                 ; 2 uses
  %i.br = extractelement <2 x float> %i.bk, i64 0 ; 2 uses
  %i.bs = fmul float %i.br, %i.bl
  %i.bt = extractelement <2 x float> %i.bj, i64 1
  %i.bu = fdiv float %i.bs, %i.bt                 ; 2 uses
  %i.bv = fmul float %i.ay, %i.bu                 ; 2 uses
  %i.bw = getelementptr inbounds [16 x i8], ptr %4, i64 %i.s ; 3 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %4, i64 %i.u ; 3 uses
  %i.by = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ba ; 3 uses
  %i.bz = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.bb, %i.ca           ; 2 uses
  %i.cc = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.bc, %i.cd           ; 2 uses
  %i.cf = fneg <2 x float> %i.ce
  %i.cg = load <2 x float>, ptr %i.bw, align 4, !tbaa !18
  %i.ch = fadd <2 x float> %i.ce, %i.cg
  store <2 x float> %i.ch, ptr %i.bw, align 4, !tbaa !18
  %i.ci = load <2 x float>, ptr %i.bx, align 4, !tbaa !18
  %i.cj = fsub <2 x float> %i.cf, %i.cb
  %i.ck = fadd <2 x float> %i.cj, %i.ci
  store <2 x float> %i.ck, ptr %i.bx, align 4, !tbaa !18
  %i.cl = load <2 x float>, ptr %i.by, align 4, !tbaa !18
  %i.cm = fadd <2 x float> %i.cb, %i.cl
  store <2 x float> %i.cm, ptr %i.by, align 4, !tbaa !18
  %i.cn = fneg float %i.bq
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_111restranglesIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.aq = fsub float %i.ap, %i.af
  %i.ar = load <2 x float>, ptr %i.an, align 4, !tbaa !18
  %i.as = fsub <2 x float> %i.ar, %i.ai
  store <2 x float> %i.as, ptr %i.f, align 8, !tbaa !18
  store float %i.aq, ptr %i.k, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61: ; preds = %bb.c, %bb.d
  %i.at = phi i64 [ %i.z, %bb.c ], [ %i.am, %bb.d ]
  call void @_Z26compute_factors_restanglesiPK9t_iparamsPfS2_PdS3_S3_S2_(i32 noundef %i.m, ptr noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.au = load double, ptr %i.b, align 8, !tbaa !33 ; 4 uses
  %i.av = load double, ptr %i.c, align 8, !tbaa !33 ; 3 uses
  %i.aw = load double, ptr %i.d, align 8, !tbaa !33 ; 2 uses
  %i.ax = fneg double %i.aw                       ; 2 uses
  %i.ay = load float, ptr %i.j, align 8, !tbaa !18
  %i.az = fpext float %i.ay to double             ; 3 uses
  %i.ba = load float, ptr %i.k, align 8, !tbaa !18
  %i.bb = fpext float %i.ba to double             ; 3 uses
  %i.bc = fneg double %i.bb
  %i.bd = call double @llvm.fmuladd.f64(double %i.av, double %i.az, double %i.bc)
  %i.be = fmul double %i.au, %i.bd
  %i.bf = fptrunc double %i.be to float
  %i.bg = fneg double %i.az
  %i.bh = call double @llvm.fmuladd.f64(double %i.ax, double %i.bb, double %i.az)
  %i.bi = fmul double %i.au, %i.bh
  %i.bj = fptrunc double %i.bi to float
  %i.bk = load float, ptr %i.a, align 4, !tbaa !18
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.t ; 3 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 3 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %4, i64 %i.at ; 3 uses
  %i.bo = load <2 x float>, ptr %i.f, align 8, !tbaa !18
  %i.bp = fpext <2 x float> %i.bo to <2 x double> ; 3 uses
  %i.bq = load <2 x float>, ptr %i.e, align 8, !tbaa !18
  %i.br = fpext <2 x float> %i.bq to <2 x double> ; 3 uses
  %i.bs = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bp, <2 x double> %i.br)
  %i.bv = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bx = fmul <2 x double> %i.bw, %i.bu
  %i.by = fptrunc <2 x double> %i.bx to <2 x float>
  %i.bz = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.ca = fneg <2 x double> %i.bp
  %i.cb = insertelement <2 x double> poison, double %i.av, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.br, <2 x double> %i.ca)
  %i.ce = fmul <2 x double> %i.bw, %i.cd
  %i.cf = fptrunc <2 x double> %i.ce to <2 x float>
  %i.cg = fadd <2 x float> %i.bz, %i.cf
  store <2 x float> %i.cg, ptr %i.bl, align 4, !tbaa !18
  %i.ch = fadd double %i.aw, 1.000000e+00         ; 2 uses
  %i.ci = fadd double %i.av, 1.000000e+00         ; 2 uses
  %i.cj = fmul double %i.ci, %i.bg
  %i.ck = call double @llvm.fmuladd.f64(double %i.ch, double %i.bb, double %i.cj)
  %i.cl = fmul double %i.au, %i.ck
  %i.cm = fptrunc double %i.cl to float
  %i.cn = fneg <2 x double> %i.br
  %i.co = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.cp, %i.cn
  %i.cr = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.bp, <2 x double> %i.cq)
  %i.cu = fmul <2 x double> %i.bw, %i.ct
  %i.cv = fptrunc <2 x double> %i.cu to <2 x float>
  %i.cw = load <2 x float>, ptr %i.bm, align 4, !tbaa !18
  %i.cx = fadd <2 x float> %i.cw, %i.cv
  store <2 x float> %i.cx, ptr %i.bm, align 4, !tbaa !18
  %i.cy = load <2 x float>, ptr %i.bn, align 4, !tbaa !18
  %i.cz = fadd <2 x float> %i.cy, %i.by
  store <2 x float> %i.cz, ptr %i.bn, align 4, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !18
  %i.dc = fadd float %i.db, %i.bf
  store float %i.dc, ptr %i.da, align 4, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !18
  %i.df = fadd float %i.de, %i.cm
  store float %i.df, ptr %i.dd, align 4, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !18
  %i.di = fadd float %i.dh, %i.bj
  store float %i.di, ptr %i.dg, align 4, !tbaa !18
  %i.dj = fadd float %.065, %i.bk                 ; 2 uses
  %i.dk = trunc nuw i64 %indvars.iv.next to i32
  %i.dl = icmp sgt i32 %0, %i.dk
  br i1 %i.dl, label %bb.b, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dj, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_113linear_anglesIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = fsub float 1.000000e+00, %7              ; 2 uses
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ] ; 2 uses
  %.092 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dv, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16
  %i.i = getelementptr i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16   ; 2 uses
  %i.o = sext i32 %i.h to i64
  %i.p = getelementptr inbounds [48 x i8], ptr %2, i64 %i.o ; 4 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !15 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !15 ; 2 uses
  %i.t = fmul float %7, %i.s
  %i.u = call float @llvm.fmuladd.f32(float %i.c, float %i.q, float %i.t) ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !15 ; 2 uses
  %i.z = fmul float %7, %i.y
  %i.aa = call float @llvm.fmuladd.f32(float %i.c, float %i.w, float %i.z) ; 3 uses
  %i.ab = fsub float 1.000000e+00, %i.aa          ; 3 uses
  %i.ac = sext i32 %i.j to i64                    ; 2 uses
  %i.ad = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ac ; 3 uses
  %i.ae = sext i32 %i.l to i64                    ; 2 uses
  %i.af = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ae ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ad, ptr noundef %i.af, ptr noundef nonnull %i.a) ; 0 uses
  %i.ah = sext i32 %i.n to i64                    ; 2 uses
  %i.ai = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ah
  %i.aj = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ai, ptr noundef %i.af, ptr noundef nonnull %i.b) ; 0 uses
  %i.ak = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %i.al = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre99 = load float, ptr %i.e, align 8, !tbaa !18
  %.pre100 = load float, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

bb.d:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18 ; 2 uses
  %i.aq = fsub float %i.an, %i.ap                 ; 2 uses
  store float %i.aq, ptr %i.e, align 8, !tbaa !18
  %i.ar = sext i32 %i.n to i64                    ; 2 uses
  %i.as = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ar ; 2 uses
  %i.at = load <2 x float>, ptr %i.ad, align 4, !tbaa !18
  %i.au = load <2 x float>, ptr %i.af, align 4, !tbaa !18 ; 2 uses
  %i.av = fsub <2 x float> %i.at, %i.au           ; 2 uses
  store <2 x float> %i.av, ptr %i.a, align 8, !tbaa !18
  %i.aw = load <2 x float>, ptr %i.as, align 4, !tbaa !18
  %i.ax = fsub <2 x float> %i.aw, %i.au           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !18
  %i.ba = fsub float %i.az, %i.ap                 ; 2 uses
  store <2 x float> %i.ax, ptr %i.b, align 8, !tbaa !18
  store float %i.ba, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88: ; preds = %bb.c, %bb.d
  %i.bb = phi float [ %.pre100, %bb.c ], [ %i.ba, %bb.d ] ; 2 uses
  %i.bc = phi float [ %.pre99, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %i.bd = phi i64 [ %i.ah, %bb.c ], [ %i.ar, %bb.d ]
  %i.be = phi <2 x float> [ %i.ak, %bb.c ], [ %i.av, %bb.d ] ; 3 uses
  %i.bf = phi <2 x float> [ %i.al, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.bg = fneg float %i.aa                        ; 2 uses
  %i.bh = fmul float %i.u, %i.aa                  ; 2 uses
  %i.bi = fmul float %i.u, %i.ab                  ; 2 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ac ; 3 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ae ; 3 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bd ; 3 uses
  %i.bm = fneg <2 x float> %i.bf
  %i.bn = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bo, %i.bm
  %i.bq = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.be, <2 x float> %i.bp) ; 7 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.bs, %i.bs
  %14 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bu = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.bv, %i.bs           ; 2 uses
  %i.bx = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.by = call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %14)
  %i.bz = load <2 x float>, ptr %i.bj, align 4, !tbaa !18
  %i.ca = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x float> %i.cb, %i.bs           ; 2 uses
  %i.cd = fadd <2 x float> %i.bz, %i.cc
  store <2 x float> %i.cd, ptr %i.bj, align 4, !tbaa !18
  %i.ce = fadd <2 x float> %i.cc, %i.bw
  %i.cf = load <2 x float>, ptr %i.bk, align 4, !tbaa !18
  %i.cg = fsub <2 x float> %i.cf, %i.ce
  store <2 x float> %i.cg, ptr %i.bk, align 4, !tbaa !18
  %i.ch = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.ci = fadd <2 x float> %i.bw, %i.ch
  store <2 x float> %i.ci, ptr %i.bl, align 4, !tbaa !18
  %i.cj = fneg float %i.bb
  %i.ck = fmul float %i.ab, %i.cj
  %i.cl = call float @llvm.fmuladd.f32(float %i.bg, float %i.bc, float %i.ck) ; 5 uses
  %i.cm = call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.by)
  %i.cn = fmul float %i.bh, %i.cl                 ; 2 uses
  %i.co = fmul float %i.bi, %i.cl                 ; 2 uses
  %i.cp = fadd float %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !18
  %i.cs = fadd float %i.cr, %i.cn
  store float %i.cs, ptr %i.cq, align 4, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !18
  %i.cv = fsub float %i.cu, %i.cp
  store float %i.cv, ptr %i.ct, align 4, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !18
  %i.cy = fadd float %i.co, %i.cx
  store float %i.cy, ptr %i.cw, align 4, !tbaa !18
  %foldExtExtBinop.a = fsub <2 x float> %i.be, %i.bf
  %i.cz = extractelement <2 x float> %foldExtExtBinop.a, i64 0
  %foldExtExtBinop103 = fsub <2 x float> %i.be, %i.bf
  %i.da = fsub float %i.bc, %i.bb
  %i.db = fpext float %i.u to double
  %i.dc = fmul double %i.db, 5.000000e-01
  %i.dd = fpext float %i.cm to double             ; 2 uses
  %i.de = fmul double %i.dc, %i.dd
  %i.df = fptrunc double %i.de to float
  %i.dg = fsub float %i.s, %i.q
  %i.dh = fpext float %i.dg to double
  %i.di = fmul double %i.dh, 5.000000e-01
  %i.dj = fsub float %i.y, %i.w
  %i.dk = fmul float %i.u, %i.dj
  %foldExtExtBinop105 = fmul <2 x float> %foldExtExtBinop103, %i.bs
  %i.dl = extractelement <2 x float> %foldExtExtBinop105, i64 1
  %i.dm = call float @llvm.fmuladd.f32(float %i.bt, float %i.cz, float %i.dl)
  %i.dn = call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.da, float %i.dm)
  %i.do = fmul float %i.dk, %i.dn
  %i.dp = fpext float %i.do to double
  %i.dq = call double @llvm.fmuladd.f64(double %i.di, double %i.dd, double %i.dp)
  %i.dr = load float, ptr %8, align 4, !tbaa !18
  %i.ds = fpext float %i.dr to double
  %i.dt = fadd double %i.dq, %i.ds
  %i.du = fptrunc double %i.dt to float
  store float %i.du, ptr %8, align 4, !tbaa !18
  %i.dv = fadd float %.092, %i.df                 ; 2 uses
  %i.dw = trunc nuw i64 %indvars.iv.next to i32
  %i.dx = icmp sgt i32 %0, %i.dw
  br i1 %i.dx, label %bb.b, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dv, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_115cross_bond_bondIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62 ] ; 2 uses
  %.066 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.da, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62 ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr i8, ptr %i.f, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16   ; 2 uses
  %i.n = sext i32 %i.g to i64
  %i.o = getelementptr inbounds [48 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.p = load <2 x float>, ptr %i.o, align 4, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !15 ; 2 uses
  %i.s = sext i32 %i.i to i64                     ; 2 uses
  %i.t = getelementptr inbounds [12 x i8], ptr %3, i64 %i.s ; 3 uses
  %i.u = sext i32 %i.k to i64                     ; 2 uses
  %i.v = getelementptr inbounds [12 x i8], ptr %3, i64 %i.u ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.t, ptr noundef %i.v, ptr noundef nonnull %i.a) ; 0 uses
  %i.x = sext i32 %i.m to i64                     ; 2 uses
  %i.y = getelementptr inbounds [12 x i8], ptr %3, i64 %i.x
  %i.z = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.y, ptr noundef %i.v, ptr noundef nonnull %i.b) ; 0 uses
  %i.aa = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %.pre73 = load float, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre76 = load float, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %.pre73, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %.pre76, i64 1
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62

bb.d:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !18
  %i.ai = sext i32 %i.m to i64                    ; 2 uses
  %i.aj = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ai ; 2 uses
  %i.ak = load <2 x float>, ptr %i.v, align 4, !tbaa !18 ; 2 uses
  %i.al = load <2 x float>, ptr %i.t, align 4, !tbaa !18
  %i.am = fsub <2 x float> %i.al, %i.ak           ; 2 uses
  store <2 x float> %i.am, ptr %i.a, align 8, !tbaa !18
  %i.an = load <2 x float>, ptr %i.aj, align 4, !tbaa !18
  %i.ao = fsub <2 x float> %i.an, %i.ak           ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !18
  %i.ar = insertelement <2 x float> poison, float %i.af, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.aq, i64 1
  %i.at = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fsub <2 x float> %i.as, %i.au           ; 3 uses
  %i.aw = extractelement <2 x float> %i.av, i64 1 ; 2 uses
  %i.ax = extractelement <2 x float> %i.av, i64 0 ; 2 uses
  store float %i.ax, ptr %i.d, align 8, !tbaa !18
  store <2 x float> %i.ao, ptr %i.b, align 8, !tbaa !18
  store float %i.aw, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62: ; preds = %bb.c, %bb.d
  %i.ay = phi float [ %.pre76, %bb.c ], [ %i.aw, %bb.d ]
  %i.az = phi float [ %.pre73, %bb.c ], [ %i.ax, %bb.d ]
  %i.ba = phi i64 [ %i.x, %bb.c ], [ %i.ai, %bb.d ]
  %i.bb = phi <2 x float> [ %i.ab, %bb.c ], [ %i.ao, %bb.d ] ; 3 uses
  %i.bc = phi <2 x float> [ %i.aa, %bb.c ], [ %i.am, %bb.d ] ; 3 uses
  %i.bd = phi <2 x float> [ %i.ad, %bb.c ], [ %i.av, %bb.d ] ; 2 uses
  %i.be = shufflevector <2 x float> %i.bc, <2 x float> %i.bb, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bf = fmul <2 x float> %i.be, %i.be
  %i.bg = shufflevector <2 x float> %i.bc, <2 x float> %i.bb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bg, <2 x float> %i.bf)
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bd, <2 x float> %i.bh)
  %i.bj = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bi) ; 3 uses
  %i.bk = fsub <2 x float> %i.bj, %i.p            ; 2 uses
  %i.bl = fneg float %i.r                         ; 2 uses
  %i.bm = extractelement <2 x float> %i.bk, i64 1 ; 2 uses
  %i.bn = fmul float %i.bm, %i.bl
  %i.bo = extractelement <2 x float> %i.bj, i64 0
  %i.bp = fdiv float %i.bn, %i.bo                 ; 2 uses
  %i.bq = fmul float %i.az, %i.bp                 ; 2 uses
  %i.br = extractelement <2 x float> %i.bk, i64 0 ; 2 uses
  %i.bs = fmul float %i.br, %i.bl
  %i.bt = extractelement <2 x float> %i.bj, i64 1
  %i.bu = fdiv float %i.bs, %i.bt                 ; 2 uses
  %i.bv = fmul float %i.ay, %i.bu                 ; 2 uses
  %i.bw = getelementptr inbounds [16 x i8], ptr %4, i64 %i.s ; 3 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %4, i64 %i.u ; 3 uses
  %i.by = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ba ; 3 uses
  %i.bz = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.bb, %i.ca           ; 2 uses
  %i.cc = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.bc, %i.cd           ; 2 uses
  %i.cf = fneg <2 x float> %i.ce
  %i.cg = load <2 x float>, ptr %i.bw, align 4, !tbaa !18
  %i.ch = fadd <2 x float> %i.ce, %i.cg
  store <2 x float> %i.ch, ptr %i.bw, align 4, !tbaa !18
  %i.ci = load <2 x float>, ptr %i.bx, align 4, !tbaa !18
  %i.cj = fsub <2 x float> %i.cf, %i.cb
  %i.ck = fadd <2 x float> %i.cj, %i.ci
  store <2 x float> %i.ck, ptr %i.bx, align 4, !tbaa !18
  %i.cl = load <2 x float>, ptr %i.by, align 4, !tbaa !18
  %i.cm = fadd <2 x float> %i.cb, %i.cl
  store <2 x float> %i.cm, ptr %i.by, align 4, !tbaa !18
  %i.cn = fneg float %i.bq
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_111restranglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.bq = getelementptr inbounds [16 x i8], ptr %4, i64 %i.x ; 3 uses
  %i.br = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ax ; 3 uses
  %i.bs = load <2 x float>, ptr %i.f, align 8, !tbaa !18
  %i.bt = fpext <2 x float> %i.bs to <2 x double> ; 3 uses
  %i.bu = load <2 x float>, ptr %i.e, align 8, !tbaa !18
  %i.bv = fpext <2 x float> %i.bu to <2 x double> ; 3 uses
  %i.bw = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bt, <2 x double> %i.bv)
  %i.bz = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cb = fmul <2 x double> %i.ca, %i.by
  %i.cc = fptrunc <2 x double> %i.cb to <2 x float> ; 2 uses
  %i.cd = load <2 x float>, ptr %i.bp, align 4, !tbaa !18
  %i.ce = fneg <2 x double> %i.bt
  %i.cf = insertelement <2 x double> poison, double %i.az, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.bv, <2 x double> %i.ce)
  %i.ci = fmul <2 x double> %i.ca, %i.ch
  %i.cj = fptrunc <2 x double> %i.ci to <2 x float> ; 2 uses
  %i.ck = fadd <2 x float> %i.cd, %i.cj
  store <2 x float> %i.ck, ptr %i.bp, align 4, !tbaa !18
  %i.cl = fadd double %i.ba, 1.000000e+00         ; 2 uses
  %i.cm = fadd double %i.az, 1.000000e+00         ; 2 uses
  %i.cn = fmul double %i.cm, %i.bk
  %i.co = call double @llvm.fmuladd.f64(double %i.cl, double %i.bf, double %i.cn)
  %i.cp = fmul double %i.ay, %i.co
  %i.cq = fptrunc double %i.cp to float           ; 2 uses
  %i.cr = fneg <2 x double> %i.bv
  %i.cs = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x double> %i.ct, %i.cr
  %i.cv = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.bt, <2 x double> %i.cu)
  %i.cy = fmul <2 x double> %i.ca, %i.cx
  %i.cz = fptrunc <2 x double> %i.cy to <2 x float> ; 2 uses
  %i.da = load <2 x float>, ptr %i.bq, align 4, !tbaa !18
  %i.db = fadd <2 x float> %i.da, %i.cz
  store <2 x float> %i.db, ptr %i.bq, align 4, !tbaa !18
  %i.dc = load <2 x float>, ptr %i.br, align 4, !tbaa !18
  %i.dd = fadd <2 x float> %i.dc, %i.cc
  store <2 x float> %i.dd, ptr %i.br, align 4, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !18
  %i.dg = fadd float %i.df, %i.bj
  store float %i.dg, ptr %i.de, align 4, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !18
  %i.dj = fadd float %i.di, %i.cq
  store float %i.dj, ptr %i.dh, align 4, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !18
  %i.dm = fadd float %i.dl, %i.bn
  store float %i.dm, ptr %i.dk, align 4, !tbaa !18
  %i.dn = fadd float %.076, %i.bo                 ; 2 uses
  %i.do = getelementptr inbounds [12 x i8], ptr %5, i64 %.0.i6871 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !18
  %i.dr = fadd float %i.dq, %i.bj
  %i.ds = load <2 x float>, ptr %i.do, align 4, !tbaa !18
  %i.dt = fadd <2 x float> %i.ds, %i.cj
  store <2 x float> %i.dt, ptr %i.do, align 4, !tbaa !18
  store float %i.dr, ptr %i.dp, align 4, !tbaa !18
  %i.du = load float, ptr %i.m, align 4, !tbaa !18
  %i.dv = fadd float %i.du, %i.cq
  %i.dw = load <2 x float>, ptr %i.l, align 4, !tbaa !18
  %i.dx = fadd <2 x float> %i.dw, %i.cz
  store <2 x float> %i.dx, ptr %i.l, align 4, !tbaa !18
  store float %i.dv, ptr %i.m, align 4, !tbaa !18
  %i.dy = getelementptr inbounds [12 x i8], ptr %5, i64 %.0.i65 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !18
  %i.eb = fadd float %i.ea, %i.bn
  %i.ec = load <2 x float>, ptr %i.dy, align 4, !tbaa !18
  %i.ed = fadd <2 x float> %i.ec, %i.cc
  store <2 x float> %i.ed, ptr %i.dy, align 4, !tbaa !18
  store float %i.eb, ptr %i.dz, align 4, !tbaa !18
  %i.ee = trunc nuw i64 %indvars.iv.next to i32
  %i.ef = icmp sgt i32 %0, %i.ee
  br i1 %i.ef, label %bb.b, label %._crit_edge, !llvm.loop !115

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit66, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dn, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_113linear_anglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = fsub float 1.000000e+00, %7              ; 2 uses
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit93
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit93 ] ; 2 uses
  %.0100 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dz, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit93 ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = getelementptr i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %i.q = sext i32 %i.j to i64
  %i.r = getelementptr inbounds [48 x i8], ptr %2, i64 %i.q ; 4 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !15 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !15 ; 2 uses
  %i.v = fmul float %7, %i.u
  %i.w = call float @llvm.fmuladd.f32(float %i.c, float %i.s, float %i.v) ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !15 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !15 ; 2 uses
  %i.ab = fmul float %7, %i.aa
  %i.ac = call float @llvm.fmuladd.f32(float %i.c, float %i.y, float %i.ab) ; 3 uses
  %i.ad = fsub float 1.000000e+00, %i.ac          ; 3 uses
  %i.ae = sext i32 %i.l to i64                    ; 2 uses
  %i.af = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ae ; 3 uses
  %i.ag = sext i32 %i.n to i64                    ; 2 uses
  %i.ah = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ag ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef nonnull %i.a)
  %i.aj = sext i32 %i.p to i64                    ; 2 uses
  %i.ak = getelementptr inbounds [12 x i8], ptr %3, i64 %i.aj
  %i.al = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ak, ptr noundef %i.ah, ptr noundef nonnull %i.b)
  %i.am = sext i32 %i.ai to i64
  %i.an = sext i32 %i.al to i64
  %i.ao = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %i.ap = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre116 = load float, ptr %i.e, align 8, !tbaa !18
  %.pre117 = load float, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit93

bb.d:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !18 ; 2 uses
  %i.au = fsub float %i.ar, %i.at                 ; 2 uses
  store float %i.au, ptr %i.e, align 8, !tbaa !18
  %i.av = sext i32 %i.p to i64                    ; 2 uses
  %i.aw = getelementptr inbounds [12 x i8], ptr %3, i64 %i.av ; 2 uses
  %i.ax = load <2 x float>, ptr %i.af, align 4, !tbaa !18
  %i.ay = load <2 x float>, ptr %i.ah, align 4, !tbaa !18 ; 2 uses
  %i.az = fsub <2 x float> %i.ax, %i.ay           ; 2 uses
  store <2 x float> %i.az, ptr %i.a, align 8, !tbaa !18
  %i.ba = load <2 x float>, ptr %i.aw, align 4, !tbaa !18
  %i.bb = fsub <2 x float> %i.ba, %i.ay           ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !18
  %i.be = fsub float %i.bd, %i.at                 ; 2 uses
  store <2 x float> %i.bb, ptr %i.b, align 8, !tbaa !18
  store float %i.be, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit93

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit93: ; preds = %bb.c, %bb.d
  %i.bf = phi float [ %.pre117, %bb.c ], [ %i.be, %bb.d ] ; 2 uses
  %i.bg = phi float [ %.pre116, %bb.c ], [ %i.au, %bb.d ] ; 2 uses
  %i.bh = phi i64 [ %i.aj, %bb.c ], [ %i.av, %bb.d ]
  %.0.i95 = phi i64 [ %i.am, %bb.c ], [ 22, %bb.d ]
  %.0.i92 = phi i64 [ %i.an, %bb.c ], [ 22, %bb.d ]
  %i.bi = phi <2 x float> [ %i.ao, %bb.c ], [ %i.az, %bb.d ] ; 3 uses
  %i.bj = phi <2 x float> [ %i.ap, %bb.c ], [ %i.bb, %bb.d ] ; 3 uses
  %i.bk = fneg float %i.ac                        ; 2 uses
  %i.bl = fmul float %i.w, %i.ac                  ; 2 uses
  %i.bm = fmul float %i.w, %i.ad                  ; 2 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ae ; 3 uses
  %i.bo = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ag ; 3 uses
  %i.bp = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bh ; 3 uses
  %i.bq = fneg <2 x float> %i.bj
  %i.br = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.bs, %i.bq
  %i.bu = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bi, <2 x float> %i.bt) ; 7 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.bw, %i.bw
  %14 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.by = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x float> %i.bz, %i.bw           ; 3 uses
  %i.cb = extractelement <2 x float> %i.bw, i64 1 ; 2 uses
  %i.cc = call float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %14)
  %i.cd = load <2 x float>, ptr %i.bn, align 4, !tbaa !18
  %i.ce = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.cf, %i.bw           ; 3 uses
  %i.ch = fadd <2 x float> %i.cg, %i.cd
  store <2 x float> %i.ch, ptr %i.bn, align 4, !tbaa !18
  %i.ci = fadd <2 x float> %i.cg, %i.ca           ; 2 uses
  %i.cj = load <2 x float>, ptr %i.bo, align 4, !tbaa !18
  %i.ck = fsub <2 x float> %i.cj, %i.ci
  store <2 x float> %i.ck, ptr %i.bo, align 4, !tbaa !18
  %i.cl = load <2 x float>, ptr %i.bp, align 4, !tbaa !18
  %i.cm = fadd <2 x float> %i.ca, %i.cl
  store <2 x float> %i.cm, ptr %i.bp, align 4, !tbaa !18
  %i.cn = fneg float %i.bf
  %i.co = fmul float %i.ad, %i.cn
  %i.cp = call float @llvm.fmuladd.f32(float %i.bk, float %i.bg, float %i.co) ; 5 uses
  %i.cq = call float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %i.cc)
  %i.cr = fmul float %i.bl, %i.cp                 ; 3 uses
  %i.cs = fmul float %i.bm, %i.cp                 ; 3 uses
  %i.ct = fadd float %i.cr, %i.cs                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !18
  %i.cw = fadd float %i.cr, %i.cv
  store float %i.cw, ptr %i.cu, align 4, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !18
  %i.cz = fsub float %i.cy, %i.ct
  store float %i.cz, ptr %i.cx, align 4, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !18
  %i.dc = fadd float %i.cs, %i.db
  store float %i.dc, ptr %i.da, align 4, !tbaa !18
  %foldExtExtBinop.a = fsub <2 x float> %i.bi, %i.bj
  %i.dd = extractelement <2 x float> %foldExtExtBinop.a, i64 0
  %foldExtExtBinop120 = fsub <2 x float> %i.bi, %i.bj
  %i.de = fsub float %i.bg, %i.bf
  %i.df = fpext float %i.w to double
  %i.dg = fmul double %i.df, 5.000000e-01
  %i.dh = fpext float %i.cq to double             ; 2 uses
  %i.di = fmul double %i.dg, %i.dh
  %i.dj = fptrunc double %i.di to float
  %i.dk = fsub float %i.u, %i.s
  %i.dl = fpext float %i.dk to double
  %i.dm = fmul double %i.dl, 5.000000e-01
  %i.dn = fsub float %i.aa, %i.y
  %i.do = fmul float %i.w, %i.dn
  %foldExtExtBinop122 = fmul <2 x float> %foldExtExtBinop120, %i.bw
  %i.dp = extractelement <2 x float> %foldExtExtBinop122, i64 1
  %i.dq = call float @llvm.fmuladd.f32(float %i.bx, float %i.dd, float %i.dp)
  %i.dr = call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.de, float %i.dq)
  %i.ds = fmul float %i.do, %i.dr
  %i.dt = fpext float %i.ds to double
  %i.du = call double @llvm.fmuladd.f64(double %i.dm, double %i.dh, double %i.dt)
  %i.dv = load float, ptr %8, align 4, !tbaa !18
  %i.dw = fpext float %i.dv to double
  %i.dx = fadd double %i.du, %i.dw
  %i.dy = fptrunc double %i.dx to float
  store float %i.dy, ptr %8, align 4, !tbaa !18
  %i.dz = fadd float %.0100, %i.dj                ; 2 uses
  %i.ea = getelementptr inbounds [12 x i8], ptr %5, i64 %.0.i95 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !18
  %i.ed = fadd float %i.ec, %i.cr
  %i.ee = load <2 x float>, ptr %i.ea, align 4, !tbaa !18
  %i.ef = fadd <2 x float> %i.ee, %i.cg
  store <2 x float> %i.ef, ptr %i.ea, align 4, !tbaa !18
  store float %i.ed, ptr %i.eb, align 4, !tbaa !18
  %i.eg = load float, ptr %i.h, align 4, !tbaa !18
  %i.eh = fsub float %i.eg, %i.ct
  %i.ei = load <2 x float>, ptr %i.g, align 4, !tbaa !18
  %i.ej = fsub <2 x float> %i.ei, %i.ci
  store <2 x float> %i.ej, ptr %i.g, align 4, !tbaa !18
  store float %i.eh, ptr %i.h, align 4, !tbaa !18
  %i.ek = getelementptr inbounds [12 x i8], ptr %5, i64 %.0.i92 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !18
  %i.en = fadd float %i.em, %i.cs
  %i.eo = load <2 x float>, ptr %i.ek, align 4, !tbaa !18
  %i.ep = fadd <2 x float> %i.eo, %i.ca
  store <2 x float> %i.ep, ptr %i.ek, align 4, !tbaa !18
  store float %i.en, ptr %i.el, align 4, !tbaa !18
  %i.eq = trunc nuw i64 %indvars.iv.next to i32
  %i.er = icmp sgt i32 %0, %i.eq
  br i1 %i.er, label %bb.b, label %._crit_edge, !llvm.loop !116

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit93, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dz, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_115cross_bond_bondIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit67
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit67 ] ; 2 uses
  %.074 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.de, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit67 ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = getelementptr i8, ptr %i.h, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16   ; 2 uses
  %i.p = sext i32 %i.i to i64
  %i.q = getelementptr inbounds [48 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !15 ; 2 uses
  %i.u = sext i32 %i.k to i64                     ; 2 uses
  %i.v = getelementptr inbounds [12 x i8], ptr %3, i64 %i.u ; 3 uses
  %i.w = sext i32 %i.m to i64                     ; 2 uses
  %i.x = getelementptr inbounds [12 x i8], ptr %3, i64 %i.w ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.v, ptr noundef %i.x, ptr noundef nonnull %i.a)
  %i.z = sext i32 %i.o to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [12 x i8], ptr %3, i64 %i.z
  %i.ab = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.aa, ptr noundef %i.x, ptr noundef nonnull %i.b)
  %i.ac = sext i32 %i.y to i64
  %i.ad = sext i32 %i.ab to i64
  %i.ae = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %.pre84 = load float, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %i.af = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre87 = load float, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %.pre84, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %.pre87, i64 1
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit67

bb.d:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !18
  %i.am = sext i32 %i.o to i64                    ; 2 uses
  %i.an = getelementptr inbounds [12 x i8], ptr %3, i64 %i.am ; 2 uses
  %i.ao = load <2 x float>, ptr %i.x, align 4, !tbaa !18 ; 2 uses
  %i.ap = load <2 x float>, ptr %i.v, align 4, !tbaa !18
  %i.aq = fsub <2 x float> %i.ap, %i.ao           ; 2 uses
  store <2 x float> %i.aq, ptr %i.a, align 8, !tbaa !18
  %i.ar = load <2 x float>, ptr %i.an, align 4, !tbaa !18
  %i.as = fsub <2 x float> %i.ar, %i.ao           ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.au = load float, ptr %i.at, align 4, !tbaa !18
  %i.av = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.au, i64 1
  %i.ax = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fsub <2 x float> %i.aw, %i.ay           ; 3 uses
  %i.ba = extractelement <2 x float> %i.az, i64 1 ; 2 uses
  %i.bb = extractelement <2 x float> %i.az, i64 0 ; 2 uses
  store float %i.bb, ptr %i.d, align 8, !tbaa !18
  store <2 x float> %i.as, ptr %i.b, align 8, !tbaa !18
  store float %i.ba, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit67

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit67: ; preds = %bb.c, %bb.d
  %i.bc = phi float [ %.pre87, %bb.c ], [ %i.ba, %bb.d ]
  %i.bd = phi float [ %.pre84, %bb.c ], [ %i.bb, %bb.d ]
  %i.be = phi i64 [ %i.z, %bb.c ], [ %i.am, %bb.d ]
  %.0.i70 = phi i64 [ %i.ac, %bb.c ], [ 22, %bb.d ]
  %.0.i66 = phi i64 [ %i.ad, %bb.c ], [ 22, %bb.d ]
  %i.bf = phi <2 x float> [ %i.af, %bb.c ], [ %i.as, %bb.d ] ; 3 uses
  %i.bg = phi <2 x float> [ %i.ae, %bb.c ], [ %i.aq, %bb.d ] ; 3 uses
  %i.bh = phi <2 x float> [ %i.ah, %bb.c ], [ %i.az, %bb.d ] ; 2 uses
  %i.bi = shufflevector <2 x float> %i.bg, <2 x float> %i.bf, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bj = fmul <2 x float> %i.bi, %i.bi
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> %i.bf, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bk, <2 x float> %i.bj)
  %i.bm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bh, <2 x float> %i.bl)
  %i.bn = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bm) ; 3 uses
  %i.bo = fsub <2 x float> %i.bn, %i.r            ; 2 uses
  %i.bp = fneg float %i.t                         ; 2 uses
  %i.bq = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.br = fmul float %i.bq, %i.bp
  %i.bs = extractelement <2 x float> %i.bn, i64 0
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_111restranglesIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.aq = fsub float %i.ap, %i.af
  %i.ar = load <2 x float>, ptr %i.an, align 4, !tbaa !18
  %i.as = fsub <2 x float> %i.ar, %i.ai
  store <2 x float> %i.as, ptr %i.f, align 8, !tbaa !18
  store float %i.aq, ptr %i.k, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61: ; preds = %bb.c, %bb.d
  %i.at = phi i64 [ %i.z, %bb.c ], [ %i.am, %bb.d ]
  call void @_Z26compute_factors_restanglesiPK9t_iparamsPfS2_PdS3_S3_S2_(i32 noundef %i.m, ptr noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.au = load double, ptr %i.b, align 8, !tbaa !33 ; 4 uses
  %i.av = load double, ptr %i.c, align 8, !tbaa !33 ; 3 uses
  %i.aw = load double, ptr %i.d, align 8, !tbaa !33 ; 2 uses
  %i.ax = fneg double %i.aw                       ; 2 uses
  %i.ay = load float, ptr %i.j, align 8, !tbaa !18
  %i.az = fpext float %i.ay to double             ; 3 uses
  %i.ba = load float, ptr %i.k, align 8, !tbaa !18
  %i.bb = fpext float %i.ba to double             ; 3 uses
  %i.bc = fneg double %i.bb
  %i.bd = call double @llvm.fmuladd.f64(double %i.av, double %i.az, double %i.bc)
  %i.be = fmul double %i.au, %i.bd
  %i.bf = fptrunc double %i.be to float
  %i.bg = fneg double %i.az
  %i.bh = call double @llvm.fmuladd.f64(double %i.ax, double %i.bb, double %i.az)
  %i.bi = fmul double %i.au, %i.bh
  %i.bj = fptrunc double %i.bi to float
  %i.bk = load float, ptr %i.a, align 4, !tbaa !18
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.t ; 3 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 3 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %4, i64 %i.at ; 3 uses
  %i.bo = load <2 x float>, ptr %i.f, align 8, !tbaa !18
  %i.bp = fpext <2 x float> %i.bo to <2 x double> ; 3 uses
  %i.bq = load <2 x float>, ptr %i.e, align 8, !tbaa !18
  %i.br = fpext <2 x float> %i.bq to <2 x double> ; 3 uses
  %i.bs = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bp, <2 x double> %i.br)
  %i.bv = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bx = fmul <2 x double> %i.bw, %i.bu
  %i.by = fptrunc <2 x double> %i.bx to <2 x float>
  %i.bz = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.ca = fneg <2 x double> %i.bp
  %i.cb = insertelement <2 x double> poison, double %i.av, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.br, <2 x double> %i.ca)
  %i.ce = fmul <2 x double> %i.bw, %i.cd
  %i.cf = fptrunc <2 x double> %i.ce to <2 x float>
  %i.cg = fadd <2 x float> %i.bz, %i.cf
  store <2 x float> %i.cg, ptr %i.bl, align 4, !tbaa !18
  %i.ch = fadd double %i.aw, 1.000000e+00         ; 2 uses
  %i.ci = fadd double %i.av, 1.000000e+00         ; 2 uses
  %i.cj = fmul double %i.ci, %i.bg
  %i.ck = call double @llvm.fmuladd.f64(double %i.ch, double %i.bb, double %i.cj)
  %i.cl = fmul double %i.au, %i.ck
  %i.cm = fptrunc double %i.cl to float
  %i.cn = fneg <2 x double> %i.br
  %i.co = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.cp, %i.cn
  %i.cr = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.bp, <2 x double> %i.cq)
  %i.cu = fmul <2 x double> %i.bw, %i.ct
  %i.cv = fptrunc <2 x double> %i.cu to <2 x float>
  %i.cw = load <2 x float>, ptr %i.bm, align 4, !tbaa !18
  %i.cx = fadd <2 x float> %i.cw, %i.cv
  store <2 x float> %i.cx, ptr %i.bm, align 4, !tbaa !18
  %i.cy = load <2 x float>, ptr %i.bn, align 4, !tbaa !18
  %i.cz = fadd <2 x float> %i.cy, %i.by
  store <2 x float> %i.cz, ptr %i.bn, align 4, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !18
  %i.dc = fadd float %i.db, %i.bf
  store float %i.dc, ptr %i.da, align 4, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !18
  %i.df = fadd float %i.de, %i.cm
  store float %i.df, ptr %i.dd, align 4, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !18
  %i.di = fadd float %i.dh, %i.bj
  store float %i.di, ptr %i.dg, align 4, !tbaa !18
  %i.dj = fadd float %.065, %i.bk                 ; 2 uses
  %i.dk = trunc nuw i64 %indvars.iv.next to i32
  %i.dl = icmp sgt i32 %0, %i.dk
  br i1 %i.dl, label %bb.b, label %._crit_edge, !llvm.loop !143

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dj, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_113linear_anglesIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = fsub float 1.000000e+00, %7              ; 2 uses
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ] ; 2 uses
  %.092 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dv, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16
  %i.i = getelementptr i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16   ; 2 uses
  %i.o = sext i32 %i.h to i64
  %i.p = getelementptr inbounds [48 x i8], ptr %2, i64 %i.o ; 4 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !15 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !15 ; 2 uses
  %i.t = fmul float %7, %i.s
  %i.u = call float @llvm.fmuladd.f32(float %i.c, float %i.q, float %i.t) ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !15 ; 2 uses
  %i.z = fmul float %7, %i.y
  %i.aa = call float @llvm.fmuladd.f32(float %i.c, float %i.w, float %i.z) ; 3 uses
  %i.ab = fsub float 1.000000e+00, %i.aa          ; 3 uses
  %i.ac = sext i32 %i.j to i64                    ; 2 uses
  %i.ad = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ac ; 3 uses
  %i.ae = sext i32 %i.l to i64                    ; 2 uses
  %i.af = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ae ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ad, ptr noundef %i.af, ptr noundef nonnull %i.a) ; 0 uses
  %i.ah = sext i32 %i.n to i64                    ; 2 uses
  %i.ai = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ah
  %i.aj = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ai, ptr noundef %i.af, ptr noundef nonnull %i.b) ; 0 uses
  %i.ak = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %i.al = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre99 = load float, ptr %i.e, align 8, !tbaa !18
  %.pre100 = load float, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

bb.d:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18 ; 2 uses
  %i.aq = fsub float %i.an, %i.ap                 ; 2 uses
  store float %i.aq, ptr %i.e, align 8, !tbaa !18
  %i.ar = sext i32 %i.n to i64                    ; 2 uses
  %i.as = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ar ; 2 uses
  %i.at = load <2 x float>, ptr %i.ad, align 4, !tbaa !18
  %i.au = load <2 x float>, ptr %i.af, align 4, !tbaa !18 ; 2 uses
  %i.av = fsub <2 x float> %i.at, %i.au           ; 2 uses
  store <2 x float> %i.av, ptr %i.a, align 8, !tbaa !18
  %i.aw = load <2 x float>, ptr %i.as, align 4, !tbaa !18
  %i.ax = fsub <2 x float> %i.aw, %i.au           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !18
  %i.ba = fsub float %i.az, %i.ap                 ; 2 uses
  store <2 x float> %i.ax, ptr %i.b, align 8, !tbaa !18
  store float %i.ba, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88: ; preds = %bb.c, %bb.d
  %i.bb = phi float [ %.pre100, %bb.c ], [ %i.ba, %bb.d ] ; 2 uses
  %i.bc = phi float [ %.pre99, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %i.bd = phi i64 [ %i.ah, %bb.c ], [ %i.ar, %bb.d ]
  %i.be = phi <2 x float> [ %i.ak, %bb.c ], [ %i.av, %bb.d ] ; 3 uses
  %i.bf = phi <2 x float> [ %i.al, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.bg = fneg float %i.aa                        ; 2 uses
  %i.bh = fmul float %i.u, %i.aa                  ; 2 uses
  %i.bi = fmul float %i.u, %i.ab                  ; 2 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ac ; 3 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ae ; 3 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bd ; 3 uses
  %i.bm = fneg <2 x float> %i.bf
  %i.bn = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bo, %i.bm
  %i.bq = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.be, <2 x float> %i.bp) ; 7 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.bs, %i.bs
  %14 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bu = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.bv, %i.bs           ; 2 uses
  %i.bx = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.by = call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %14)
  %i.bz = load <2 x float>, ptr %i.bj, align 4, !tbaa !18
  %i.ca = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x float> %i.cb, %i.bs           ; 2 uses
  %i.cd = fadd <2 x float> %i.bz, %i.cc
  store <2 x float> %i.cd, ptr %i.bj, align 4, !tbaa !18
  %i.ce = fadd <2 x float> %i.cc, %i.bw
  %i.cf = load <2 x float>, ptr %i.bk, align 4, !tbaa !18
  %i.cg = fsub <2 x float> %i.cf, %i.ce
  store <2 x float> %i.cg, ptr %i.bk, align 4, !tbaa !18
  %i.ch = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.ci = fadd <2 x float> %i.bw, %i.ch
  store <2 x float> %i.ci, ptr %i.bl, align 4, !tbaa !18
  %i.cj = fneg float %i.bb
  %i.ck = fmul float %i.ab, %i.cj
  %i.cl = call float @llvm.fmuladd.f32(float %i.bg, float %i.bc, float %i.ck) ; 5 uses
  %i.cm = call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.by)
  %i.cn = fmul float %i.bh, %i.cl                 ; 2 uses
  %i.co = fmul float %i.bi, %i.cl                 ; 2 uses
  %i.cp = fadd float %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !18
  %i.cs = fadd float %i.cr, %i.cn
  store float %i.cs, ptr %i.cq, align 4, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !18
  %i.cv = fsub float %i.cu, %i.cp
  store float %i.cv, ptr %i.ct, align 4, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !18
  %i.cy = fadd float %i.co, %i.cx
  store float %i.cy, ptr %i.cw, align 4, !tbaa !18
  %foldExtExtBinop.a = fsub <2 x float> %i.be, %i.bf
  %i.cz = extractelement <2 x float> %foldExtExtBinop.a, i64 0
  %foldExtExtBinop103 = fsub <2 x float> %i.be, %i.bf
  %i.da = fsub float %i.bc, %i.bb
  %i.db = fpext float %i.u to double
  %i.dc = fmul double %i.db, 5.000000e-01
  %i.dd = fpext float %i.cm to double             ; 2 uses
  %i.de = fmul double %i.dc, %i.dd
  %i.df = fptrunc double %i.de to float
  %i.dg = fsub float %i.s, %i.q
  %i.dh = fpext float %i.dg to double
  %i.di = fmul double %i.dh, 5.000000e-01
  %i.dj = fsub float %i.y, %i.w
  %i.dk = fmul float %i.u, %i.dj
  %foldExtExtBinop105 = fmul <2 x float> %foldExtExtBinop103, %i.bs
  %i.dl = extractelement <2 x float> %foldExtExtBinop105, i64 1
  %i.dm = call float @llvm.fmuladd.f32(float %i.bt, float %i.cz, float %i.dl)
  %i.dn = call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.da, float %i.dm)
  %i.do = fmul float %i.dk, %i.dn
  %i.dp = fpext float %i.do to double
  %i.dq = call double @llvm.fmuladd.f64(double %i.di, double %i.dd, double %i.dp)
  %i.dr = load float, ptr %8, align 4, !tbaa !18
  %i.ds = fpext float %i.dr to double
  %i.dt = fadd double %i.dq, %i.ds
  %i.du = fptrunc double %i.dt to float
  store float %i.du, ptr %8, align 4, !tbaa !18
  %i.dv = fadd float %.092, %i.df                 ; 2 uses
  %i.dw = trunc nuw i64 %indvars.iv.next to i32
  %i.dx = icmp sgt i32 %0, %i.dw
  br i1 %i.dx, label %bb.b, label %._crit_edge, !llvm.loop !144

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dv, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_115cross_bond_bondIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62 ] ; 2 uses
  %.066 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.da, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62 ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr i8, ptr %i.f, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16   ; 2 uses
  %i.n = sext i32 %i.g to i64
  %i.o = getelementptr inbounds [48 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.p = load <2 x float>, ptr %i.o, align 4, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !15 ; 2 uses
  %i.s = sext i32 %i.i to i64                     ; 2 uses
  %i.t = getelementptr inbounds [12 x i8], ptr %3, i64 %i.s ; 3 uses
  %i.u = sext i32 %i.k to i64                     ; 2 uses
  %i.v = getelementptr inbounds [12 x i8], ptr %3, i64 %i.u ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.t, ptr noundef %i.v, ptr noundef nonnull %i.a) ; 0 uses
  %i.x = sext i32 %i.m to i64                     ; 2 uses
  %i.y = getelementptr inbounds [12 x i8], ptr %3, i64 %i.x
  %i.z = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.y, ptr noundef %i.v, ptr noundef nonnull %i.b) ; 0 uses
  %i.aa = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %.pre73 = load float, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre76 = load float, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %.pre73, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %.pre76, i64 1
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62

bb.d:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !18
  %i.ai = sext i32 %i.m to i64                    ; 2 uses
  %i.aj = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ai ; 2 uses
  %i.ak = load <2 x float>, ptr %i.v, align 4, !tbaa !18 ; 2 uses
  %i.al = load <2 x float>, ptr %i.t, align 4, !tbaa !18
  %i.am = fsub <2 x float> %i.al, %i.ak           ; 2 uses
  store <2 x float> %i.am, ptr %i.a, align 8, !tbaa !18
  %i.an = load <2 x float>, ptr %i.aj, align 4, !tbaa !18
  %i.ao = fsub <2 x float> %i.an, %i.ak           ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !18
  %i.ar = insertelement <2 x float> poison, float %i.af, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.aq, i64 1
  %i.at = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fsub <2 x float> %i.as, %i.au           ; 3 uses
  %i.aw = extractelement <2 x float> %i.av, i64 1 ; 2 uses
  %i.ax = extractelement <2 x float> %i.av, i64 0 ; 2 uses
  store float %i.ax, ptr %i.d, align 8, !tbaa !18
  store <2 x float> %i.ao, ptr %i.b, align 8, !tbaa !18
  store float %i.aw, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit62: ; preds = %bb.c, %bb.d
  %i.ay = phi float [ %.pre76, %bb.c ], [ %i.aw, %bb.d ]
  %i.az = phi float [ %.pre73, %bb.c ], [ %i.ax, %bb.d ]
  %i.ba = phi i64 [ %i.x, %bb.c ], [ %i.ai, %bb.d ]
  %i.bb = phi <2 x float> [ %i.ab, %bb.c ], [ %i.ao, %bb.d ] ; 3 uses
  %i.bc = phi <2 x float> [ %i.aa, %bb.c ], [ %i.am, %bb.d ] ; 3 uses
  %i.bd = phi <2 x float> [ %i.ad, %bb.c ], [ %i.av, %bb.d ] ; 2 uses
  %i.be = shufflevector <2 x float> %i.bc, <2 x float> %i.bb, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bf = fmul <2 x float> %i.be, %i.be
  %i.bg = shufflevector <2 x float> %i.bc, <2 x float> %i.bb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bg, <2 x float> %i.bf)
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bd, <2 x float> %i.bh)
  %i.bj = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bi) ; 3 uses
  %i.bk = fsub <2 x float> %i.bj, %i.p            ; 2 uses
  %i.bl = fneg float %i.r                         ; 2 uses
  %i.bm = extractelement <2 x float> %i.bk, i64 1 ; 2 uses
  %i.bn = fmul float %i.bm, %i.bl
  %i.bo = extractelement <2 x float> %i.bj, i64 0
  %i.bp = fdiv float %i.bn, %i.bo                 ; 2 uses
  %i.bq = fmul float %i.az, %i.bp                 ; 2 uses
  %i.br = extractelement <2 x float> %i.bk, i64 0 ; 2 uses
  %i.bs = fmul float %i.br, %i.bl
  %i.bt = extractelement <2 x float> %i.bj, i64 1
  %i.bu = fdiv float %i.bs, %i.bt                 ; 2 uses
  %i.bv = fmul float %i.ay, %i.bu                 ; 2 uses
  %i.bw = getelementptr inbounds [16 x i8], ptr %4, i64 %i.s ; 3 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %4, i64 %i.u ; 3 uses
  %i.by = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ba ; 3 uses
  %i.bz = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.bb, %i.ca           ; 2 uses
  %i.cc = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.bc, %i.cd           ; 2 uses
  %i.cf = fneg <2 x float> %i.ce
  %i.cg = load <2 x float>, ptr %i.bw, align 4, !tbaa !18
  %i.ch = fadd <2 x float> %i.ce, %i.cg
  store <2 x float> %i.ch, ptr %i.bw, align 4, !tbaa !18
  %i.ci = load <2 x float>, ptr %i.bx, align 4, !tbaa !18
  %i.cj = fsub <2 x float> %i.cf, %i.cb
  %i.ck = fadd <2 x float> %i.cj, %i.ci
  store <2 x float> %i.ck, ptr %i.bx, align 4, !tbaa !18
  %i.cl = load <2 x float>, ptr %i.by, align 4, !tbaa !18
  %i.cm = fadd <2 x float> %i.cb, %i.cl
  store <2 x float> %i.cm, ptr %i.by, align 4, !tbaa !18
  %i.cn = fneg float %i.bq
end_hunk_4
begin_hunk_5_@_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE:bb.a
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !15
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

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
  %8 = fmul double %i.x, %i.x
  %9 = fmul double %i.z, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !18
  %i.ac = fpext float %i.ab to double             ; 3 uses
  %i.ad = extractelement <2 x float> %i.v, i64 1
  %i.ae = fpext float %i.ad to double             ; 3 uses
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %8)
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %9)
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !18
  %i.aj = fpext float %i.ai to double             ; 3 uses
  %i.ak = fpext float %i.u to double              ; 3 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %i.af)
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %i.ag)
  %i.an = fmul double %i.al, %i.am                ; 2 uses
  %i.ao = fcmp ogt double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.d, label %_ZL9cos_anglePKfS0_.exit

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit15
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.x, double %i.z, double 0.000000e+00)
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ae, double %i.ap)
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.ak, double %i.aq)
  %sqrt = tail call nnan double @llvm.sqrt.f64(double %i.an)
  %i.as = fdiv nnan double 1.000000e+00, %sqrt
  %i.at = fmul double %i.ar, %i.as
  %i.au = fptrunc double %i.at to float
  br label %_ZL9cos_anglePKfS0_.exit

_ZL9cos_anglePKfS0_.exit:                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit15, %bb.d
  %.026.i = phi float [ %i.au, %bb.d ], [ 1.000000e+00, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit15 ] ; 3 uses
  %i.av = fcmp ogt float %.026.i, 1.000000e+00
  %i.aw = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.aw, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.av, float 1.000000e+00, float %..026.i
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
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor0EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff:bb.a
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
  %.07 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dt, %.loopexit ]
  %.0796 = phi i32 [ 0, %.lr.ph ], [ %.1, %.loopexit ]
  %.0805 = phi i32 [ 0, %.lr.ph ], [ %.181, %.loopexit ]
  %.0834 = phi i32 [ 0, %.lr.ph ], [ %.184, %.loopexit ] ; 4 uses
  %i.g = sext i32 %.0834 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = add nsw i32 %.0834, 3                    ; 3 uses
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
  %i.ae = add nsw i32 %.0834, 5
  %i.af = getelementptr i8, ptr %i.h, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ah
  %i.aj = sext i32 %i.ad to i64
  %i.ak = getelementptr inbounds [12 x i8], ptr %3, i64 %i.aj
  %i.al = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %5, ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef nonnull %i.b) ; 0 uses
  %i.am = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre12 = load float, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.an = sext i32 %i.l to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %1, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16 ; 2 uses
  %i.aq = add nsw i32 %.0834, 5
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
  %i.bf = phi float [ 1.000000e+00, %bb.e ], [ %.pre12, %bb.c ], [ %i.be, %bb.d ] ; 6 uses
  %.184 = phi i32 [ %i.l, %bb.e ], [ %i.ae, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %.181 = phi i32 [ %.0805, %bb.e ], [ %i.ad, %bb.c ], [ %i.ap, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.0796, %bb.e ], [ %i.ag, %bb.c ], [ %i.as, %bb.d ] ; 2 uses
  %i.bg = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.am, %bb.c ], [ %i.az, %bb.d ] ; 5 uses
  %i.bh = load <2 x float>, ptr %i.a, align 8, !tbaa !18 ; 5 uses
  %i.bi = load float, ptr %i.d, align 8, !tbaa !18 ; 6 uses
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bk = fpext <2 x float> %i.bj to <2 x double> ; 4 uses
  %9 = fmul <2 x double> %i.bk, %i.bk
  %i.bl = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.bm = fpext <2 x float> %i.bl to <2 x double> ; 4 uses
  %i.bn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.bm, <2 x double> %9)
  %i.bo = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bf, i64 1
  %i.bq = fpext <2 x float> %i.bp to <2 x double> ; 4 uses
  %i.br = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bq, <2 x double> %i.bn) ; 2 uses
  %shift = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.br, %shift
  %i.bs = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bt = fcmp ogt double %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.f, label %_ZL9cos_anglePKfS0_.exit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88
  %i.bu = extractelement <2 x double> %i.bk, i64 0
  %i.bv = extractelement <2 x double> %i.bk, i64 1
  %i.bw = call double @llvm.fmuladd.f64(double %i.bu, double %i.bv, double 0.000000e+00)
  %i.bx = extractelement <2 x double> %i.bm, i64 0
  %i.by = extractelement <2 x double> %i.bm, i64 1
  %i.bz = call double @llvm.fmuladd.f64(double %i.bx, double %i.by, double %i.bw)
  %i.ca = extractelement <2 x double> %i.bq, i64 0
  %i.cb = extractelement <2 x double> %i.bq, i64 1
  %i.cc = call double @llvm.fmuladd.f64(double %i.ca, double %i.cb, double %i.bz)
  %sqrt = call nnan double @llvm.sqrt.f64(double %i.bs)
  %i.cd = fdiv nnan double 1.000000e+00, %sqrt
  %i.ce = fmul double %i.cc, %i.cd
  %i.cf = fptrunc double %i.ce to float
  br label %_ZL9cos_anglePKfS0_.exit

_ZL9cos_anglePKfS0_.exit:                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88, %bb.f
  %.026.i = phi float [ %i.cf, %bb.f ], [ 1.000000e+00, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ] ; 3 uses
  %i.cg = fcmp ogt float %.026.i, 1.000000e+00
  %i.ch = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.ch, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.cg, float 1.000000e+00, float %..026.i ; 4 uses
  %i.ci = call noundef float @acosf(float noundef %.027.i) #23
  %i.cj = sext i32 %i.i to i64
  %i.ck = getelementptr inbounds [48 x i8], ptr %2, i64 %i.cj ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !15 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.co = load float, ptr %i.cn, align 4, !tbaa !15 ; 2 uses
  %i.cp = load float, ptr %i.ck, align 4, !tbaa !15 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !15 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !15
  %i.cu = fmul float %6, %i.cr
  %i.cv = call float @llvm.fmuladd.f32(float %i.f, float %i.cp, float %i.cu)
  %i.cw = fsub float %i.cr, %i.cp
  %i.cx = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cw, i64 1
  %i.cz = fpext <2 x float> %i.cy to <2 x double>
  %i.da = fmul <2 x double> %i.cz, splat (double f0x3F91DF46A2529D39)
  %i.db = fptrunc <2 x double> %i.da to <2 x float> ; 2 uses
  %i.dc = fmul float %6, %i.co
  %i.dd = call float @llvm.fmuladd.f32(float %i.f, float %i.cm, float %i.dc) ; 3 uses
  %i.de = sitofp i32 %i.ct to float               ; 2 uses
  %i.df = extractelement <2 x float> %i.db, i64 0
  %i.dg = fsub float %i.ci, %i.df
  %i.dh = fmul float %i.dg, %i.de                 ; 2 uses
  %i.di = call noundef float @sinf(float noundef %i.dh) #23 ; 2 uses
  %i.dj = call noundef float @cosf(float noundef %i.dh) #23
  %i.dk = fsub float 1.000000e+00, %i.dj          ; 2 uses
  %i.dl = fmul float %i.dd, %i.dk
  %i.dm = fsub float %i.co, %i.cm
  %i.dn = extractelement <2 x float> %i.db, i64 1
  %i.do = fmul float %i.dd, %i.dn
  %i.dp = fmul float %i.di, %i.do
  %i.dq = call noundef float @llvm.fmuladd.f32(float %i.dm, float %i.dk, float %i.dp)
  %i.dr = load float, ptr %7, align 4, !tbaa !18
  %i.ds = fadd float %i.dr, %i.dq
  store float %i.ds, ptr %7, align 4, !tbaa !18
  %i.dt = fadd float %.07, %i.dl                  ; 2 uses
  %i.du = fmul float %.027.i, %.027.i             ; 2 uses
  %i.dv = fcmp olt float %i.du, 1.000000e+00
  br i1 %i.dv, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZL9cos_anglePKfS0_.exit
  %i.dw = fmul float %i.dd, %i.de
  %i.dx = fneg float %i.di
  %i.dy = fmul float %i.dw, %i.dx
  %i.dz = fsub float 1.000000e+00, %i.du
  %i.ea = call noundef float @sqrtf(float noundef %i.dz) #23
  %i.eb = fmul <2 x float> %i.bl, %i.bl
  %i.ec = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bj, <2 x float> %i.eb) ; 2 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 0
  %i.ee = call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %i.ed) ; 2 uses
  %i.ef = extractelement <2 x float> %i.ec, i64 1
  %i.eg = call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.ef) ; 2 uses
  %i.eh = fmul float %i.ee, %i.eg
  %sqrt2 = call float @llvm.sqrt.f32(float %i.eh)
  %i.ei = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %sqrt2, i64 1
  %i.ek = fdiv <2 x float> splat (float 1.000000e+00), %i.ej ; 2 uses
  %i.el = extractelement <2 x float> %i.ek, i64 0
  %i.em = fmul float %i.dy, %i.el                 ; 2 uses
  %i.en = fmul float %.027.i, %i.em               ; 2 uses
  %i.eo = extractelement <2 x float> %i.ek, i64 1
  %i.ep = fmul float %i.eo, %i.em                 ; 5 uses
  %i.eq = fdiv float %i.en, %i.ee                 ; 4 uses
  %i.er = getelementptr inbounds [16 x i8], ptr %4, i64 %i.q ; 6 uses
  %i.es = getelementptr inbounds [16 x i8], ptr %4, i64 %i.o ; 5 uses
  br i1 %8, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.g
  %i.et = sext i32 %.1 to i64                     ; 2 uses
  %i.eu = getelementptr inbounds [16 x i8], ptr %4, i64 %i.et ; 2 uses
  %i.ev = sext i32 %.181 to i64
  %i.ew = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ev ; 3 uses
  %i.ex = fdiv float %i.en, %i.eg                 ; 2 uses
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
  %.sink18 = phi float [ %i.gd, %.split.preheader ], [ %i.gu, %.split.us.preheader ]
  %i.gz = getelementptr inbounds [16 x i8], ptr %4, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !18
  %i.hc = fsub float %i.hb, %.sink18
  store float %i.hc, ptr %i.ha, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %_ZL9cos_anglePKfS0_.exit
  %i.hd = icmp slt i32 %.184, %0
  br i1 %i.hd, label %bb.b, label %._crit_edge, !llvm.loop !168

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dt, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor1EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff
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
  %.07 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dt, %.loopexit ]
  %.0796 = phi i32 [ 0, %.lr.ph ], [ %.1, %.loopexit ]
  %.0805 = phi i32 [ 0, %.lr.ph ], [ %.181, %.loopexit ]
  %.0834 = phi i32 [ 0, %.lr.ph ], [ %.184, %.loopexit ] ; 4 uses
  %i.g = sext i32 %.0834 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = add nsw i32 %.0834, 3                    ; 3 uses
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
  %i.ae = add nsw i32 %.0834, 5
  %i.af = getelementptr i8, ptr %i.h, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ah
  %i.aj = sext i32 %i.ad to i64
  %i.ak = getelementptr inbounds [12 x i8], ptr %3, i64 %i.aj
  %i.al = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %5, ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef nonnull %i.b) ; 0 uses
  %i.am = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre12 = load float, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.an = sext i32 %i.l to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %1, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16 ; 2 uses
  %i.aq = add nsw i32 %.0834, 5
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
  %i.bf = phi float [ 1.000000e+00, %bb.e ], [ %.pre12, %bb.c ], [ %i.be, %bb.d ] ; 6 uses
  %.184 = phi i32 [ %i.l, %bb.e ], [ %i.ae, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %.181 = phi i32 [ %.0805, %bb.e ], [ %i.ad, %bb.c ], [ %i.ap, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.0796, %bb.e ], [ %i.ag, %bb.c ], [ %i.as, %bb.d ] ; 2 uses
  %i.bg = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.am, %bb.c ], [ %i.az, %bb.d ] ; 5 uses
  %i.bh = load <2 x float>, ptr %i.a, align 8, !tbaa !18 ; 5 uses
  %i.bi = load float, ptr %i.d, align 8, !tbaa !18 ; 6 uses
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bk = fpext <2 x float> %i.bj to <2 x double> ; 4 uses
  %9 = fmul <2 x double> %i.bk, %i.bk
  %i.bl = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.bm = fpext <2 x float> %i.bl to <2 x double> ; 4 uses
  %i.bn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.bm, <2 x double> %9)
  %i.bo = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bf, i64 1
  %i.bq = fpext <2 x float> %i.bp to <2 x double> ; 4 uses
  %i.br = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bq, <2 x double> %i.bn) ; 2 uses
  %shift = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.br, %shift
  %i.bs = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bt = fcmp ogt double %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.f, label %_ZL9cos_anglePKfS0_.exit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88
  %i.bu = extractelement <2 x double> %i.bk, i64 0
  %i.bv = extractelement <2 x double> %i.bk, i64 1
  %i.bw = call double @llvm.fmuladd.f64(double %i.bu, double %i.bv, double 0.000000e+00)
  %i.bx = extractelement <2 x double> %i.bm, i64 0
  %i.by = extractelement <2 x double> %i.bm, i64 1
  %i.bz = call double @llvm.fmuladd.f64(double %i.bx, double %i.by, double %i.bw)
  %i.ca = extractelement <2 x double> %i.bq, i64 0
  %i.cb = extractelement <2 x double> %i.bq, i64 1
  %i.cc = call double @llvm.fmuladd.f64(double %i.ca, double %i.cb, double %i.bz)
  %sqrt = call nnan double @llvm.sqrt.f64(double %i.bs)
  %i.cd = fdiv nnan double 1.000000e+00, %sqrt
  %i.ce = fmul double %i.cc, %i.cd
  %i.cf = fptrunc double %i.ce to float
  br label %_ZL9cos_anglePKfS0_.exit

_ZL9cos_anglePKfS0_.exit:                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88, %bb.f
  %.026.i = phi float [ %i.cf, %bb.f ], [ 1.000000e+00, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ] ; 3 uses
  %i.cg = fcmp ogt float %.026.i, 1.000000e+00
  %i.ch = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.ch, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.cg, float 1.000000e+00, float %..026.i ; 4 uses
  %i.ci = call noundef float @acosf(float noundef %.027.i) #23
  %i.cj = sext i32 %i.i to i64
  %i.ck = getelementptr inbounds [48 x i8], ptr %2, i64 %i.cj ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !15 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.co = load float, ptr %i.cn, align 4, !tbaa !15 ; 2 uses
  %i.cp = load float, ptr %i.ck, align 4, !tbaa !15 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !15 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !15
  %i.cu = fmul float %6, %i.cr
  %i.cv = call float @llvm.fmuladd.f32(float %i.f, float %i.cp, float %i.cu)
  %i.cw = fsub float %i.cr, %i.cp
  %i.cx = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cw, i64 1
  %i.cz = fpext <2 x float> %i.cy to <2 x double>
  %i.da = fmul <2 x double> %i.cz, splat (double f0x3F91DF46A2529D39)
  %i.db = fptrunc <2 x double> %i.da to <2 x float> ; 2 uses
  %i.dc = fmul float %6, %i.co
  %i.dd = call float @llvm.fmuladd.f32(float %i.f, float %i.cm, float %i.dc) ; 3 uses
  %i.de = sitofp i32 %i.ct to float               ; 2 uses
  %i.df = extractelement <2 x float> %i.db, i64 0
  %i.dg = fsub float %i.ci, %i.df
  %i.dh = fmul float %i.dg, %i.de                 ; 2 uses
  %i.di = call noundef float @sinf(float noundef %i.dh) #23 ; 2 uses
  %i.dj = call noundef float @cosf(float noundef %i.dh) #23
  %i.dk = fsub float 1.000000e+00, %i.dj          ; 2 uses
  %i.dl = fmul float %i.dd, %i.dk
  %i.dm = fsub float %i.co, %i.cm
  %i.dn = extractelement <2 x float> %i.db, i64 1
  %i.do = fmul float %i.dd, %i.dn
  %i.dp = fmul float %i.di, %i.do
  %i.dq = call noundef float @llvm.fmuladd.f32(float %i.dm, float %i.dk, float %i.dp)
  %i.dr = load float, ptr %7, align 4, !tbaa !18
  %i.ds = fadd float %i.dr, %i.dq
  store float %i.ds, ptr %7, align 4, !tbaa !18
  %i.dt = fadd float %.07, %i.dl                  ; 2 uses
  %i.du = fmul float %.027.i, %.027.i             ; 2 uses
  %i.dv = fcmp olt float %i.du, 1.000000e+00
  br i1 %i.dv, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZL9cos_anglePKfS0_.exit
  %i.dw = fmul float %i.dd, %i.de
  %i.dx = fneg float %i.di
  %i.dy = fmul float %i.dw, %i.dx
  %i.dz = fsub float 1.000000e+00, %i.du
  %i.ea = call noundef float @sqrtf(float noundef %i.dz) #23
  %i.eb = fmul <2 x float> %i.bl, %i.bl
  %i.ec = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bj, <2 x float> %i.eb) ; 2 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 0
  %i.ee = call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %i.ed) ; 2 uses
  %i.ef = extractelement <2 x float> %i.ec, i64 1
  %i.eg = call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.ef) ; 2 uses
  %i.eh = fmul float %i.ee, %i.eg
  %sqrt2 = call float @llvm.sqrt.f32(float %i.eh)
  %i.ei = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %sqrt2, i64 1
  %i.ek = fdiv <2 x float> splat (float 1.000000e+00), %i.ej ; 2 uses
  %i.el = extractelement <2 x float> %i.ek, i64 0
  %i.em = fmul float %i.dy, %i.el                 ; 2 uses
  %i.en = fmul float %.027.i, %i.em               ; 2 uses
  %i.eo = extractelement <2 x float> %i.ek, i64 1
  %i.ep = fmul float %i.eo, %i.em                 ; 5 uses
  %i.eq = fdiv float %i.en, %i.ee                 ; 4 uses
  %i.er = getelementptr inbounds [16 x i8], ptr %4, i64 %i.q ; 6 uses
  %i.es = getelementptr inbounds [16 x i8], ptr %4, i64 %i.o ; 5 uses
  br i1 %8, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.g
  %i.et = sext i32 %.1 to i64                     ; 2 uses
  %i.eu = getelementptr inbounds [16 x i8], ptr %4, i64 %i.et ; 2 uses
  %i.ev = sext i32 %.181 to i64
  %i.ew = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ev ; 3 uses
  %i.ex = fdiv float %i.en, %i.eg                 ; 2 uses
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
  %.sink18 = phi float [ %i.gd, %.split.preheader ], [ %i.gu, %.split.us.preheader ]
  %i.gz = getelementptr inbounds [16 x i8], ptr %4, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !18
  %i.hc = fsub float %i.hb, %.sink18
  store float %i.hc, ptr %i.ha, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %_ZL9cos_anglePKfS0_.exit
  %i.hd = icmp slt i32 %.184, %0
  br i1 %i.hd, label %bb.b, label %._crit_edge, !llvm.loop !169

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dt, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
end_hunk_7
begin_hunk_8_@_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor2EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff:bb.a
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
  %.0114 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dy, %bb.i ]
  %.086113 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.i ]
  %.087112 = phi i32 [ 0, %.lr.ph ], [ %.188, %bb.i ]
  %.089111 = phi i32 [ 0, %.lr.ph ], [ %.190, %bb.i ]
  %.092110 = phi i32 [ 0, %.lr.ph ], [ %.193, %bb.i ] ; 4 uses
  %i.k = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.iv, %bb.i ] ; 2 uses
  %i.l = sext i32 %.092110 to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %1, i64 %i.l ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = getelementptr i8, ptr %i.m, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16
  %i.q = add nsw i32 %.092110, 3                  ; 3 uses
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
  %i.aj = add nsw i32 %.092110, 5
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
  %i.av = add nsw i32 %.092110, 5
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
  %.190 = phi i32 [ %.089111, %bb.e ], [ %i.ai, %bb.c ], [ %i.au, %bb.d ] ; 2 uses
  %.188 = phi i32 [ %.087112, %bb.e ], [ %i.al, %bb.c ], [ %i.ax, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.086113, %bb.e ], [ %i.aq, %bb.c ], [ 22, %bb.d ] ; 2 uses
  %i.bl = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.e ], [ %i.ar, %bb.c ], [ %i.bj, %bb.d ] ; 7 uses
  %i.bm = load float, ptr %i.a, align 8, !tbaa !18 ; 6 uses
  %i.bn = load <2 x float>, ptr %i.d, align 4, !tbaa !18 ; 7 uses
  %i.bo = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bk, i64 1
  %i.bq = fpext <2 x float> %i.bp to <2 x double> ; 4 uses
  %10 = fmul <2 x double> %i.bq, %i.bq
  %i.br = shufflevector <2 x float> %i.bn, <2 x float> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.bs = fpext <2 x float> %i.br to <2 x double> ; 4 uses
  %i.bt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.bs, <2 x double> %10)
  %i.bu = shufflevector <2 x float> %i.bn, <2 x float> %i.bl, <2 x i32> <i32 1, i32 3>
  %i.bv = fpext <2 x float> %i.bu to <2 x double> ; 4 uses
  %i.bw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bv, <2 x double> %i.bt) ; 2 uses
  %shift = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bw, %shift
  %i.bx = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.by = fcmp ogt double %i.bx, 0.000000e+00
  br i1 %i.by, label %bb.f, label %_ZL9cos_anglePKfS0_.exit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97
  %i.bz = extractelement <2 x double> %i.bq, i64 0
  %i.ca = extractelement <2 x double> %i.bq, i64 1
  %i.cb = call double @llvm.fmuladd.f64(double %i.bz, double %i.ca, double 0.000000e+00)
  %i.cc = extractelement <2 x double> %i.bs, i64 0
  %i.cd = extractelement <2 x double> %i.bs, i64 1
  %i.ce = call double @llvm.fmuladd.f64(double %i.cc, double %i.cd, double %i.cb)
  %i.cf = extractelement <2 x double> %i.bv, i64 0
  %i.cg = extractelement <2 x double> %i.bv, i64 1
  %i.ch = call double @llvm.fmuladd.f64(double %i.cf, double %i.cg, double %i.ce)
  %sqrt = call nnan double @llvm.sqrt.f64(double %i.bx)
  %i.ci = fdiv nnan double 1.000000e+00, %sqrt
  %i.cj = fmul double %i.ch, %i.ci
  %i.ck = fptrunc double %i.cj to float
  br label %_ZL9cos_anglePKfS0_.exit

_ZL9cos_anglePKfS0_.exit:                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97, %bb.f
  %.026.i = phi float [ %i.ck, %bb.f ], [ 1.000000e+00, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97 ] ; 3 uses
  %i.cl = fcmp ogt float %.026.i, 1.000000e+00
  %i.cm = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.cm, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.cl, float 1.000000e+00, float %..026.i ; 4 uses
  %i.cn = call noundef float @acosf(float noundef %.027.i) #23
  %i.co = sext i32 %i.n to i64
  %i.cp = getelementptr inbounds [48 x i8], ptr %2, i64 %i.co ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !15 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !15 ; 2 uses
  %i.cu = load float, ptr %i.cp, align 4, !tbaa !15 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !15
  %i.cz = fmul float %7, %i.cw
  %i.da = call float @llvm.fmuladd.f32(float %i.h, float %i.cu, float %i.cz)
  %i.db = fsub float %i.cw, %i.cu
  %i.dc = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %i.db, i64 1
  %i.de = fpext <2 x float> %i.dd to <2 x double>
  %i.df = fmul <2 x double> %i.de, splat (double f0x3F91DF46A2529D39)
  %i.dg = fptrunc <2 x double> %i.df to <2 x float> ; 2 uses
  %i.dh = fmul float %7, %i.ct
  %i.di = call float @llvm.fmuladd.f32(float %i.h, float %i.cr, float %i.dh) ; 3 uses
  %i.dj = sitofp i32 %i.cy to float               ; 2 uses
  %i.dk = extractelement <2 x float> %i.dg, i64 0
  %i.dl = fsub float %i.cn, %i.dk
  %i.dm = fmul float %i.dl, %i.dj                 ; 2 uses
  %i.dn = call noundef float @sinf(float noundef %i.dm) #23 ; 2 uses
  %i.do = call noundef float @cosf(float noundef %i.dm) #23
  %i.dp = fsub float 1.000000e+00, %i.do          ; 2 uses
  %i.dq = fmul float %i.di, %i.dp
  %i.dr = fsub float %i.ct, %i.cr
  %i.ds = extractelement <2 x float> %i.dg, i64 1
  %i.dt = fmul float %i.di, %i.ds
  %i.du = fmul float %i.dn, %i.dt
  %i.dv = call noundef float @llvm.fmuladd.f32(float %i.dr, float %i.dp, float %i.du)
  %i.dw = load float, ptr %8, align 4, !tbaa !18
  %i.dx = fadd float %i.dw, %i.dv
  store float %i.dx, ptr %8, align 4, !tbaa !18
  %i.dy = fadd float %.0114, %i.dq                ; 2 uses
  %i.dz = fmul float %.027.i, %.027.i             ; 2 uses
  %i.ea = fcmp olt float %i.dz, 1.000000e+00
  br i1 %i.ea, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZL9cos_anglePKfS0_.exit
  %i.eb = fmul float %i.di, %i.dj
  %i.ec = fneg float %i.dn
  %i.ed = fmul float %i.eb, %i.ec
  %i.ee = fsub float 1.000000e+00, %i.dz
  %i.ef = call noundef float @sqrtf(float noundef %i.ee) #23
  %i.eg = extractelement <2 x float> %i.bn, i64 0 ; 2 uses
  %foldExtExtBinop130 = fmul <2 x float> %i.bn, %i.bn
  %i.eh = extractelement <2 x float> %foldExtExtBinop130, i64 0
  %i.ei = call float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %i.eh)
  %i.ej = extractelement <2 x float> %i.bn, i64 1 ; 4 uses
  %i.ek = call noundef float @llvm.fmuladd.f32(float %i.ej, float %i.ej, float %i.ei) ; 2 uses
  %i.el = extractelement <2 x float> %i.bl, i64 0 ; 2 uses
  %foldExtExtBinop132 = fmul <2 x float> %i.bl, %i.bl
  %i.em = extractelement <2 x float> %foldExtExtBinop132, i64 0
  %i.en = call float @llvm.fmuladd.f32(float %i.bk, float %i.bk, float %i.em)
  %i.eo = extractelement <2 x float> %i.bl, i64 1 ; 4 uses
  %i.ep = call noundef float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %i.en) ; 2 uses
  %i.eq = fmul float %i.ek, %i.ep
  %sqrt106 = call float @llvm.sqrt.f32(float %i.eq)
  %i.er = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.es = insertelement <2 x float> %i.er, float %sqrt106, i64 1
  %i.et = fdiv <2 x float> splat (float 1.000000e+00), %i.es ; 2 uses
  %i.eu = extractelement <2 x float> %i.et, i64 0
  %i.ev = fmul float %i.ed, %i.eu                 ; 2 uses
  %i.ew = fmul float %.027.i, %i.ev               ; 2 uses
  %i.ex = extractelement <2 x float> %i.et, i64 1
  %i.ey = fmul float %i.ex, %i.ev                 ; 8 uses
  %i.ez = fdiv float %i.ew, %i.ek                 ; 6 uses
  %i.fa = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 6 uses
  %i.fb = getelementptr inbounds [16 x i8], ptr %4, i64 %i.t ; 5 uses
  br i1 %9, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.g
  %i.fc = sext i32 %.188 to i64                   ; 2 uses
  %i.fd = getelementptr inbounds [16 x i8], ptr %4, i64 %i.fc ; 2 uses
  %i.fe = sext i32 %.190 to i64
  %i.ff = getelementptr inbounds [16 x i8], ptr %4, i64 %i.fe ; 3 uses
  %i.fg = fdiv float %i.ew, %i.ep                 ; 2 uses
  %i.fh = fneg float %i.bk
  %i.fi = fmul float %i.fg, %i.fh
  %i.fj = call float @llvm.fmuladd.f32(float %i.ey, float %i.bm, float %i.fi) ; 2 uses
  %i.fk = load <2 x float>, ptr %i.fa, align 4, !tbaa !18
  %i.fl = fneg float %i.bm
  %i.fm = fmul float %i.ez, %i.fl
  %i.fn = call float @llvm.fmuladd.f32(float %i.ey, float %i.bk, float %i.fm) ; 2 uses
  %i.fo = fneg float %i.eg
  %i.fp = fmul float %i.ez, %i.fo
  %i.fq = call float @llvm.fmuladd.f32(float %i.ey, float %i.el, float %i.fp) ; 2 uses
  %i.fr = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.fs = insertelement <2 x float> %i.fr, float %i.fq, i64 1 ; 2 uses
  %i.ft = fadd <2 x float> %i.fk, %i.fs
  store <2 x float> %i.ft, ptr %i.fa, align 4, !tbaa !18
  %i.fu = load <2 x float>, ptr %i.fb, align 4, !tbaa !18
  %i.fv = fsub <2 x float> %i.fu, %i.fs
  store <2 x float> %i.fv, ptr %i.fb, align 4, !tbaa !18
  %i.fw = fneg <2 x float> %i.bl
  %i.fx = fneg float %i.ej
  %i.fy = fmul float %i.ez, %i.fx
  %i.fz = call float @llvm.fmuladd.f32(float %i.ey, float %i.eo, float %i.fy) ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !18
  %i.gc = fadd float %i.gb, %i.fz
  store float %i.gc, ptr %i.ga, align 4, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !18
  %i.gf = fsub float %i.ge, %i.fz
  store float %i.gf, ptr %i.gd, align 4, !tbaa !18
  %i.gg = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul <2 x float> %i.gh, %i.fw
  %i.gj = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.bn, <2 x float> %i.gi) ; 3 uses
  %i.gm = load <2 x float>, ptr %i.ff, align 4, !tbaa !18
  %i.gn = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.go = insertelement <2 x float> %i.gn, float %i.fj, i64 0 ; 2 uses
  %i.gp = fadd <2 x float> %i.go, %i.gm
  store <2 x float> %i.gp, ptr %i.ff, align 4, !tbaa !18
  %i.gq = load <2 x float>, ptr %i.fd, align 4, !tbaa !18
  %i.gr = fsub <2 x float> %i.gq, %i.go
  store <2 x float> %i.gr, ptr %i.fd, align 4, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !18
  %i.gu = extractelement <2 x float> %i.gl, i64 1 ; 2 uses
  %i.gv = fadd float %i.gu, %i.gt
  store float %i.gv, ptr %i.gs, align 4, !tbaa !18
  br label %.split109.us

.split.us.preheader:                              ; preds = %bb.g
  %i.gw = load <2 x float>, ptr %i.fa, align 4, !tbaa !18
  %i.gx = fneg float %i.bm
  %i.gy = fmul float %i.ez, %i.gx
  %i.gz = call float @llvm.fmuladd.f32(float %i.ey, float %i.bk, float %i.gy) ; 2 uses
  %i.ha = fneg float %i.eg
  %i.hb = fmul float %i.ez, %i.ha
  %i.hc = call float @llvm.fmuladd.f32(float %i.ey, float %i.el, float %i.hb) ; 2 uses
  %i.hd = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.he = insertelement <2 x float> %i.hd, float %i.hc, i64 1 ; 2 uses
  %i.hf = fadd <2 x float> %i.gw, %i.he
  store <2 x float> %i.hf, ptr %i.fa, align 4, !tbaa !18
  %i.hg = load <2 x float>, ptr %i.fb, align 4, !tbaa !18
  %i.hh = fsub <2 x float> %i.hg, %i.he
  store <2 x float> %i.hh, ptr %i.fb, align 4, !tbaa !18
  %i.hi = fneg float %i.ej
  %i.hj = fmul float %i.ez, %i.hi
  %i.hk = call float @llvm.fmuladd.f32(float %i.ey, float %i.eo, float %i.hj) ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !18
  %i.hn = fadd float %i.hm, %i.hk
  store float %i.hn, ptr %i.hl, align 4, !tbaa !18
  br label %.split109.us

.split109.us:                                     ; preds = %.split.preheader, %.split.us.preheader
  %i.ho = phi i64 [ %i.fc, %.split.preheader ], [ %i.t, %.split.us.preheader ]
  %.sink127 = phi float [ %i.gu, %.split.preheader ], [ %i.hk, %.split.us.preheader ]
  %.sroa.8.0 = phi float [ %i.fz, %.split.preheader ], [ %i.hk, %.split.us.preheader ] ; 2 uses
  %.sroa.5119.0 = phi float [ %i.fq, %.split.preheader ], [ %i.hc, %.split.us.preheader ]
  %.sroa.0118.0 = phi float [ %i.fn, %.split.preheader ], [ %i.gz, %.split.us.preheader ]
  %.sroa.0.1 = phi float [ %i.fj, %.split.preheader ], [ %.sroa.0.0, %.split.us.preheader ] ; 3 uses
  %i.hp = phi <2 x float> [ %i.gl, %.split.preheader ], [ %i.k, %.split.us.preheader ] ; 4 uses
  %i.hq = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ho
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor3EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff
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
  %.07 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dt, %.loopexit ]
  %.0796 = phi i32 [ 0, %.lr.ph ], [ %.1, %.loopexit ]
  %.0805 = phi i32 [ 0, %.lr.ph ], [ %.181, %.loopexit ]
  %.0834 = phi i32 [ 0, %.lr.ph ], [ %.184, %.loopexit ] ; 4 uses
  %i.g = sext i32 %.0834 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = add nsw i32 %.0834, 3                    ; 3 uses
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
  %i.ae = add nsw i32 %.0834, 5
  %i.af = getelementptr i8, ptr %i.h, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ah
  %i.aj = sext i32 %i.ad to i64
  %i.ak = getelementptr inbounds [12 x i8], ptr %3, i64 %i.aj
  %i.al = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %5, ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef nonnull %i.b) ; 0 uses
  %i.am = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre12 = load float, ptr %i.e, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.an = sext i32 %i.l to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %1, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16 ; 2 uses
  %i.aq = add nsw i32 %.0834, 5
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
  %i.bf = phi float [ 1.000000e+00, %bb.e ], [ %.pre12, %bb.c ], [ %i.be, %bb.d ] ; 6 uses
  %.184 = phi i32 [ %i.l, %bb.e ], [ %i.ae, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %.181 = phi i32 [ %.0805, %bb.e ], [ %i.ad, %bb.c ], [ %i.ap, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.0796, %bb.e ], [ %i.ag, %bb.c ], [ %i.as, %bb.d ] ; 2 uses
  %i.bg = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.am, %bb.c ], [ %i.az, %bb.d ] ; 5 uses
  %i.bh = load <2 x float>, ptr %i.a, align 8, !tbaa !18 ; 5 uses
  %i.bi = load float, ptr %i.d, align 8, !tbaa !18 ; 6 uses
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bk = fpext <2 x float> %i.bj to <2 x double> ; 4 uses
  %9 = fmul <2 x double> %i.bk, %i.bk
  %i.bl = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.bm = fpext <2 x float> %i.bl to <2 x double> ; 4 uses
  %i.bn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.bm, <2 x double> %9)
  %i.bo = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bf, i64 1
  %i.bq = fpext <2 x float> %i.bp to <2 x double> ; 4 uses
  %i.br = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bq, <2 x double> %i.bn) ; 2 uses
  %shift = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.br, %shift
  %i.bs = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bt = fcmp ogt double %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.f, label %_ZL9cos_anglePKfS0_.exit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88
  %i.bu = extractelement <2 x double> %i.bk, i64 0
  %i.bv = extractelement <2 x double> %i.bk, i64 1
  %i.bw = call double @llvm.fmuladd.f64(double %i.bu, double %i.bv, double 0.000000e+00)
  %i.bx = extractelement <2 x double> %i.bm, i64 0
  %i.by = extractelement <2 x double> %i.bm, i64 1
  %i.bz = call double @llvm.fmuladd.f64(double %i.bx, double %i.by, double %i.bw)
  %i.ca = extractelement <2 x double> %i.bq, i64 0
  %i.cb = extractelement <2 x double> %i.bq, i64 1
  %i.cc = call double @llvm.fmuladd.f64(double %i.ca, double %i.cb, double %i.bz)
  %sqrt = call nnan double @llvm.sqrt.f64(double %i.bs)
  %i.cd = fdiv nnan double 1.000000e+00, %sqrt
  %i.ce = fmul double %i.cc, %i.cd
  %i.cf = fptrunc double %i.ce to float
  br label %_ZL9cos_anglePKfS0_.exit

_ZL9cos_anglePKfS0_.exit:                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88, %bb.f
  %.026.i = phi float [ %i.cf, %bb.f ], [ 1.000000e+00, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ] ; 3 uses
  %i.cg = fcmp ogt float %.026.i, 1.000000e+00
  %i.ch = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.ch, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.cg, float 1.000000e+00, float %..026.i ; 4 uses
  %i.ci = call noundef float @acosf(float noundef %.027.i) #23
  %i.cj = sext i32 %i.i to i64
  %i.ck = getelementptr inbounds [48 x i8], ptr %2, i64 %i.cj ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !15 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.co = load float, ptr %i.cn, align 4, !tbaa !15 ; 2 uses
  %i.cp = load float, ptr %i.ck, align 4, !tbaa !15 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !15 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !15
  %i.cu = fmul float %6, %i.cr
  %i.cv = call float @llvm.fmuladd.f32(float %i.f, float %i.cp, float %i.cu)
  %i.cw = fsub float %i.cr, %i.cp
  %i.cx = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cw, i64 1
  %i.cz = fpext <2 x float> %i.cy to <2 x double>
  %i.da = fmul <2 x double> %i.cz, splat (double f0x3F91DF46A2529D39)
  %i.db = fptrunc <2 x double> %i.da to <2 x float> ; 2 uses
  %i.dc = fmul float %6, %i.co
  %i.dd = call float @llvm.fmuladd.f32(float %i.f, float %i.cm, float %i.dc) ; 3 uses
  %i.de = sitofp i32 %i.ct to float               ; 2 uses
  %i.df = extractelement <2 x float> %i.db, i64 0
  %i.dg = fsub float %i.ci, %i.df
  %i.dh = fmul float %i.dg, %i.de                 ; 2 uses
  %i.di = call noundef float @sinf(float noundef %i.dh) #23 ; 2 uses
  %i.dj = call noundef float @cosf(float noundef %i.dh) #23
  %i.dk = fsub float 1.000000e+00, %i.dj          ; 2 uses
  %i.dl = fmul float %i.dd, %i.dk
  %i.dm = fsub float %i.co, %i.cm
  %i.dn = extractelement <2 x float> %i.db, i64 1
  %i.do = fmul float %i.dd, %i.dn
  %i.dp = fmul float %i.di, %i.do
  %i.dq = call noundef float @llvm.fmuladd.f32(float %i.dm, float %i.dk, float %i.dp)
  %i.dr = load float, ptr %7, align 4, !tbaa !18
  %i.ds = fadd float %i.dr, %i.dq
  store float %i.ds, ptr %7, align 4, !tbaa !18
  %i.dt = fadd float %.07, %i.dl                  ; 2 uses
  %i.du = fmul float %.027.i, %.027.i             ; 2 uses
  %i.dv = fcmp olt float %i.du, 1.000000e+00
  br i1 %i.dv, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZL9cos_anglePKfS0_.exit
  %i.dw = fmul float %i.dd, %i.de
  %i.dx = fneg float %i.di
  %i.dy = fmul float %i.dw, %i.dx
  %i.dz = fsub float 1.000000e+00, %i.du
  %i.ea = call noundef float @sqrtf(float noundef %i.dz) #23
  %i.eb = fmul <2 x float> %i.bl, %i.bl
  %i.ec = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bj, <2 x float> %i.eb) ; 2 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 0
  %i.ee = call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %i.ed) ; 2 uses
  %i.ef = extractelement <2 x float> %i.ec, i64 1
  %i.eg = call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.ef) ; 2 uses
  %i.eh = fmul float %i.ee, %i.eg
  %sqrt2 = call float @llvm.sqrt.f32(float %i.eh)
  %i.ei = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %sqrt2, i64 1
  %i.ek = fdiv <2 x float> splat (float 1.000000e+00), %i.ej ; 2 uses
  %i.el = extractelement <2 x float> %i.ek, i64 0
  %i.em = fmul float %i.dy, %i.el                 ; 2 uses
  %i.en = fmul float %.027.i, %i.em               ; 2 uses
  %i.eo = extractelement <2 x float> %i.ek, i64 1
  %i.ep = fmul float %i.eo, %i.em                 ; 5 uses
  %i.eq = fdiv float %i.en, %i.ee                 ; 4 uses
  %i.er = getelementptr inbounds [16 x i8], ptr %4, i64 %i.q ; 6 uses
  %i.es = getelementptr inbounds [16 x i8], ptr %4, i64 %i.o ; 5 uses
  br i1 %8, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.g
  %i.et = sext i32 %.1 to i64                     ; 2 uses
  %i.eu = getelementptr inbounds [16 x i8], ptr %4, i64 %i.et ; 2 uses
  %i.ev = sext i32 %.181 to i64
  %i.ew = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ev ; 3 uses
  %i.ex = fdiv float %i.en, %i.eg                 ; 2 uses
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
  %.sink18 = phi float [ %i.gd, %.split.preheader ], [ %i.gu, %.split.us.preheader ]
  %i.gz = getelementptr inbounds [16 x i8], ptr %4, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !18
  %i.hc = fsub float %i.hb, %.sink18
  store float %i.hc, ptr %i.ha, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %_ZL9cos_anglePKfS0_.exit
  %i.hd = icmp slt i32 %.184, %0
  br i1 %i.hd, label %bb.b, label %._crit_edge, !llvm.loop !171

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dt, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
end_hunk_9
